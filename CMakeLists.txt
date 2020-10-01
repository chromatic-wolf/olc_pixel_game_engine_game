cmake_minimum_required(VERSION 3.5)

project(pixelGameEngine LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCE
   ${SOURCE}
   ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/player.cpp

   PARENT_SCOPE
)
set(HEADERS
   ${HEADERS}
   ${CMAKE_CURRENT_SOURCE_DIR}/olcPixelGameEngine.h
   ${CMAKE_CURRENT_SOURCE_DIR}/player.h
   ${CMAKE_CURRENT_SOURCE_DIR}/stb_image.h

   PARENT_SCOPE
)



aux_source_directory(. SOURCE)

add_executable(${PROJECT_NAME} ${SOURCE} ${HEADERS})

IF (WIN32)
#make sure to use msvc compiler still cant get mingw to work may need a
#updated version
#set(CMAKE_CXX_FLAGS "/02")






ELSE()
set(CMAKE_CXX_FLAGS "-O3 -Wall -Wextra")

find_package(X11 REQUIRED)
target_link_libraries(${PROJECT_NAME} X11)

find_package(OpenGL REQUIRED)
target_link_libraries(${PROJECT_NAME} OpenGL::GL)

find_package(Threads REQUIRED)
target_link_libraries(${PROJECT_NAME} Threads::Threads)

find_package(PNG REQUIRED)
target_link_libraries(${PROJECT_NAME} png)

target_link_libraries(${PROJECT_NAME} stdc++fs)
ENDIF()




