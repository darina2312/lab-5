#include "blur.h"
//#include <omp.h>
#include<thread>

Color CalculateBlur(const Image& img, int x, int y, int width, int height) {
    int sumR = 0, sumG = 0, sumB = 0;
    int count = 0;

    for (int dy = -2; dy <= 2; ++dy) {
        for (int dx = -2; dx <= 2; ++dx) {
            int nx = x + dx;
            int ny = y + dy;

            if (nx >= 0 && nx < width && ny >= 0 && ny < height) {
                sumR += img[ny][nx].r;
                sumG += img[ny][nx].g;
                sumB += img[ny][nx].b;
                count++;
            }
        }
    }

    return Color(
        static_cast<uint8_t>(sumR / count),
        static_cast<uint8_t>(sumG / count),
        static_cast<uint8_t>(sumB / count)
    );
}

Image SequentialBlur(const Image& input, int width, int height) {
    Image output(height, std::vector<Color>(width));

    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            output[y][x] = CalculateBlur(input, x, y, width, height);
        }
    }

    return output;
}

void PartBlur(const Image& input, Image& output, int width, int height, int fromY, int toY) {
    for (int y = fromY; y < toY; ++y) {
        for (int x = 0; x < width; ++x) {
            output[y][x] = CalculateBlur(input, x, y, width, height);
        }
    }
}

Image ParallelBlurThreads(const Image& input, int width, int height, int numThreads) {
    Image output(height, std::vector<Color>(width));
    std::vector<std::thread> threads;

    int rowsPerThread = height / numThreads;

    for (int i = 0; i < numThreads; ++i) {
        int fromY = i * rowsPerThread;
        int toY = (i == numThreads - 1) ? height : fromY + rowsPerThread;
        threads.push_back(std::thread(PartBlur, std::cref(input), std::ref(output), width, height, fromY, toY));
    }

    for (auto& thread : threads) {
        thread.join();
    }

    return output;
}

/*Image ParallelBlurOpenMP(const Image& input, int width, int height) {
    Image output(height, std::vector<Color>(width));

    #pragma omp parallel for
    for (int y = 0; y < height; ++y) {
        for (int x = 0; x < width; ++x) {
            output[y][x] = CalculateBlur(input, x, y, width, height);
        }
    }

    return output;
}*/