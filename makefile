INCLUDE_PATH = -IC:\msys64\mingw64\include\SDL2
LIB_PATH = -LC:\msys64\mingw64\lib
LIBS = -lmingw32 -lSDL2main -lSDL2
FLAGS = -w -Wl,-subsystem,windows
SDL = $(INCLUDE_PATH) $(LIB_PATH) $(LIBS) $(FLAGS)

all: $(EXE_FILES)

run%: $(BIN_DIR)/%.exe
	./$<

clean:
	rm -f $(EXE_FILES)

.PHONY: all clean
.PHONY: run-%
