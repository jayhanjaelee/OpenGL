CC = c++
CXXFLAGS = -std=c++17 -Wall -Wno-deprecated -Wno-deprecated-declarations
CXXFLAGS += -g

BUILD_DIR = ./bin
CPP_SOURCES = ./src/*.cpp

INCLUDE := -I./Dependencies/GLFW/include
INCLUDE += -I./Dependencies/GLEW/include
INCLUDE += -framework Cocoa -framework OpenGL -framework IOKit

LIBS := -L./Dependencies/GLFW/lib-x86_64 -lglfw3
LIBS += -L./Dependencies/GLEW/lib-x86_64 -lGLEW

TARGET = app

build:
	$(CC) $(CXXFLAGS) $(CPP_SOURCES) -o $(BUILD_DIR)/$(TARGET) $(INCLUDE) $(LIBS)

.PHONY: clean

clean:
	rm $(BUILD_DIR)/$(TARGET)
