#include "atomic_counter.h"
#include <atomic>
#include <mutex>
#include <thread>
#include <chrono>
#include <iostream>

void IncMutex(int& counter, std::mutex& mtx, int iterations) {
    for (int j = 0; j < iterations; ++j) {
        std::lock_guard<std::mutex> lock(mtx);
        counter++;
    }
}

void IncAtomic(std::atomic<int>& counter, int iterations) {
    for (int j = 0; j < iterations; ++j) {
        counter++;
    }
}

void TestAtomicVsMutex(int iterations) {
    // Atomic test
    std::atomic<int> atomicCounter{0};
    auto atomicStart = std::chrono::high_resolution_clock::now();

    std::thread t1(IncAtomic, std::ref(atomicCounter), iterations);
    std::thread t2(IncAtomic, std::ref(atomicCounter), iterations);

    t1.join();
    t2.join();
    auto atomicEnd = std::chrono::high_resolution_clock::now();

    // Mutex test
    int mutexCounter = 0;
    std::mutex mtx;
    auto mutexStart = std::chrono::high_resolution_clock::now();

    std::thread t3(IncMutex, std::ref(mutexCounter), std::ref(mtx), iterations);
    std::thread t4(IncMutex, std::ref(mutexCounter), std::ref(mtx), iterations);

    t3.join();
    t4.join();
    auto mutexEnd = std::chrono::high_resolution_clock::now();

    // Results
    auto atomicTime = std::chrono::duration_cast<std::chrono::microseconds>(atomicEnd - atomicStart);
    auto mutexTime = std::chrono::duration_cast<std::chrono::microseconds>(mutexEnd - mutexStart);

    std::cout << "Atomic vs Mutex Test (" << iterations << " iterations):\n";
    std::cout << "Atomic result: " << atomicCounter << " (time: " << atomicTime.count() << " μs)\n";
    std::cout << "Mutex result: " << mutexCounter << " (time: " << mutexTime.count() << " μs)\n";
    std::cout << "Atomic is " << static_cast<double>(mutexTime.count())/atomicTime.count() << "x faster\n";
}