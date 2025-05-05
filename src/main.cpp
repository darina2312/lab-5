#include "blur.h"
#include "image_utils.h"
#include "atomic_counter.h"
#include <iostream>
#include <chrono>

int main() {
    try {
        // Загрузка изображения
        const std::string imagePath = "/Users/a1111/Desktop/cat.jpg";
        std::cout << "Loading image from: " << imagePath << std::endl;

        Image image = LoadImage(imagePath);
        if (image.empty() || image[0].empty()) {
            throw std::runtime_error("Failed to load image or image is empty");
        }

        const int width = image[0].size();
        const int height = image.size();
        std::cout << "Image loaded. Dimensions: " << width << "x" << height << std::endl;

        // Последовательное размытие
        std::cout << "\nApplying sequential blur..." << std::endl;
        auto start = std::chrono::high_resolution_clock::now();
        Image seqBlur = SequentialBlur(image, width, height);
        auto end = std::chrono::high_resolution_clock::now();
        auto seqTime = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
        std::cout << "Sequential blur completed in " << seqTime.count() << " ms" << std::endl;

        // Параллельное размытие (потоки)
        const int numThreads = 4;
        std::cout << "\nApplying parallel blur (" << numThreads << " threads)..." << std::endl;
        start = std::chrono::high_resolution_clock::now();
        Image parBlur = ParallelBlurThreads(image, width, height, numThreads);
        end = std::chrono::high_resolution_clock::now();
        auto parTime = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
        std::cout << "Parallel blur completed in " << parTime.count() << " ms" << std::endl;
        std::cout << "Speedup: " << static_cast<double>(seqTime.count())/parTime.count() << "x" << std::endl;

        // Параллельное размытие (OpenMP)
        /*#ifdef USE_OPENMP
        std::cout << "\nApplying OpenMP blur..." << std::endl;
        start = std::chrono::high_resolution_clock::now();
        Image ompBlur = ParallelBlurOpenMP(image, width, height);
        end = std::chrono::high_resolution_clock::now();
        auto ompTime = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
        std::cout << "OpenMP blur completed in " << ompTime.count() << " ms" << std::endl;
        std::cout << "Speedup: " << static_cast<double>(seqTime.count())/ompTime.count() << "x" << std::endl;
        #endif*/

        // Тест atomic vs mutex
        std::cout << "\nRunning atomic vs mutex test..." << std::endl;
        TestAtomicVsMutex(1000000);

    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }

    return 0;
}