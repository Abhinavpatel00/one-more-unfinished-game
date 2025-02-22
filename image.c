#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include <stdio.h>

int main() {
    int width, height, channels;

    // Load image into memory
    unsigned char *image_data = stbi_load("arcade_platformerV2.png", &width, &height, &channels, 0);
    
    if (image_data == NULL) {
        printf("Error: Could not load image\n");
        return -1;
    }

    printf("Loaded image with dimensions: %d x %d, channels: %d\n", width, height, channels);
    
    // Process image_data here (e.g., render it, manipulate, etc.)

    // Free the memory when done
    stbi_image_free(image_data);

    return 0;
}

