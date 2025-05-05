cmake_minimum_required(VERSION 3.10)
project(ImageBlur)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)



# Добавляем исполняемый файл
add_executable(blur_app
        src/main.cpp
        src/blur.cpp
        src/image_utils.cpp
        src/atomic_counter.cpp
        libs/omp.h
)

# Подключаем заголовочные файлы
target_include_directories(blur_app PRIVATE
        include
        libs/stb
)

