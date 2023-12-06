SRC_DIR := src
BIN_DIR := bin

SFML := -sfml-graphics -sfml-window -sfml-system -sfml-audio -box2d

CPP_FILES := $(wildcard $(SRC_DIR)/*.cpp)

EXE_FILES := $(patsubst $(SRC_DIR)/%.cpp,$(BIN_DIR)/%.exe,$(CPP_FILES))

$(BIN_DIR)/%.exe: $(SRC_DIR)/%.cpp
	g++ $< -o $@ $(SFML) -Iinclude

all: $(EXE_FILES)

run%: $(BIN_DIR)/%.exe
	./$<

clean:
	rm -f $(EXE_FILES)

.PHONY: all clean
.PHONY: run-%
