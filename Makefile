CC = c++
CXXFLAGS = -std=c++17 -Wall -Wno-deprecated -Wno-deprecated-declarations

BUILD_DIR = ./bin
C_FILES = ./src/*.cpp

APP_INCLUDES := -IDependencies/include/ -framework Cocoa -framework OpenGL -framework IOKit
APP_LINKERS := -L./Dependencies/lib-x86_64 -lglfw3

APP_NAME = Application

build:
	$(CC) $(C_FILES) -o $(BUILD_DIR)/$(APP_NAME) $(APP_INCLUDES) $(APP_LINKERS)

.PHONY: clean
