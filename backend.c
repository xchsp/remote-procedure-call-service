#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include "a1_lib.h"
#include "message.h"
#define BUFSIZE  3072
//

int addInts(int a, int b) {
    return a + b;
}

int multiplyInts(int a, int b) {
    return a * b;
}

float divideFloats(float a, float b) {
    return a / b;
}

unsigned int sleepServer(int x) {
    return sleep(x);
}

uint64_t factorial(int x) {
    uint64_t result = 1;
    while (x > 0) {
        result *= x;
        x -= 1;
    }
    return result;
}

char* process_request(struct message *msg, char *response) {
    if(strcmp(msg ->command, "add")==0) {
        int sum = addInts(msg->arg1, msg->arg2);
        sprintf(response, "%d", sum);
    } else if (strcmp(msg ->command, "multiply")== 0 ) {
        int product = multiplyInts(msg->arg1, msg->arg2);
        sprintf(response, "%d", product);
    } else if ( strcmp(msg->command, "divide") == 0 ) {
        float numerator = (float)msg->arg1;
        float denominator = (float)msg->arg2;
        if (denominator == 0) {
            strcpy(response, "Cannot divide by 0\n");
        } else {
            sprintf(response, "%f", divideFloats(numerator, denominator));
        }
    } else if ( strcmp(msg->command, "sleep") == 0 ) {
        int time = msg->arg1;
        unsigned int slept = sleepServer(time);
        if (slept != 0) {
            fprintf(stderr, "Sleep command failed\n");
        }
        sprintf(response, "sleep %d", time);
    } else if ( strcmp(msg->command, "factorial") == 0 ) {
        sprintf(response, "%lu", factorial(msg->arg1));
    } else {
        sprintf(response, "Invalid command! %s", msg -> command);
    }

    return response;
}



int main(void) {
    pid_t pids[10];
    int rvals[10];
    int count=0;
  int sockfd, clientfd;
  char msg[BUFSIZE];
  char response[BUFSIZE];
  int shutdownsignal = 0;
  if (create_server("127.0.0.1", 4444, &sockfd) < 0) {
    fprintf(stderr, "oh no\n");
    return -1;
  }
  while(1)  {
      if (accept_connection(sockfd, &clientfd) < 0) {
          fprintf(stderr, "oh no\n");
          return -1;
      } else {
          printf("accepted connection from client %d\n", clientfd);
      }
      printf("accepted connection from client %d\n", clientfd);
      sleep(2);
      for (int i = 0; i < 10; i++) {
          waitpid(pids[i], &rvals[i], 1);
          printf("Testing %d: %d\n", i, WEXITSTATUS(rvals[i]));
          if (WEXITSTATUS(rvals[i]) == 3) {
              printf("Shutdown signal received.\n");
              exit(0);
          }
      }
//      if (WEXITSTATUS(rval) == 3) {
//          printf("Shutdown signal received.");
//          exit(0);
//      }
      pids[count] = fork(); // return 0 if in the child process, >0 if it's the parent process, parent will go on to else
      if(pids[count] == 0) { // in the child process
//          close(sockfd);

          while (1) {
              memset(msg, 0, sizeof(msg));
              ssize_t byte_count = recv_message(clientfd, msg, BUFSIZE);

              if (byte_count <= 0) {
                  exit(1);
              }
              struct message *parsed_msg = (struct message *) msg;
              printf("Command: %s", parsed_msg->command);
              if (strcmp(parsed_msg->command, "shutdown\n")!=0) {
                  printf("it's not shutdown, moving on... \n");
                  process_request(parsed_msg, response);
                  send_message(clientfd, response, sizeof(response));
              } else {
                  printf("it is a shutdown!!!");
                  sprintf(response, "shutting down...");
                  send_message(clientfd, response, sizeof(response));
                  puts("child exited");
//                  shutdownsignal = 1;
                  return 3;
              }
          }
      } else {
              sleep(1);
              waitpid(pids[count], &rvals[count], 1);
              printf("parent pid = %d\n",pids[count]);
              printf("Return from child\n");
              count++;
      }
  }
}





