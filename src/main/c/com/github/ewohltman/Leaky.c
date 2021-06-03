#include <jni.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "Leaky.h"

JNIEXPORT void JNICALL
Java_com_github_ewohltman_Leaky_leak(JNIEnv *env, jobject obj) {
    void *ptr;

    while (1) {
        ptr = malloc(sizeof(char));
        if (ptr == NULL) {
            perror("malloc");
            return;
        }
    }

    return;
}
