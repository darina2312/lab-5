#pragma once

#include <vector>
#include "color.h"

using Image = std::vector<std::vector<Color>>;

Image SequentialBlur(const Image& input, int width, int height);
Image ParallelBlurThreads(const Image& input, int width, int height, int numThreads);
//Image ParallelBlurOpenMP(const Image& input, int width, int height);