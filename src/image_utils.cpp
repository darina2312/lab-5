#include "image_utils.h"
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#include <stdexcept>

Image LoadImage(const std::string& path) {
    int width, height, channels;
    unsigned char* data = stbi_load(path.c_str(), &width, &height, &channels, 3);

    if (!data) {
        throw std::runtime_error("Failed to load image: " + path);
    }

    Image image(height, std::vector<Color>(width));

    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            int idx = (y * width + x) * 3;
            image[y][x] = Color(data[idx], data[idx+1], data[idx+2]);
        }
    }

    stbi_image_free(data);
    return image;
}