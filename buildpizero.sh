#!/bin/bash
g++ -o game main.cpp player.cpp -lX11 -lGL -lpthread -lpng -lstdc++fs -std=c++17 -march=armv6zk -mcpu=arm1176jzf-s -mtune=arm1176jzf-s -mfpu=vfp -mfloat-abi=hard
