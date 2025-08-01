# Compiler and flags
CC       = gcc
CFLAGS   = -Wall -O2 $(shell pkg-config --cflags igraph)
LDFLAGS  = $(shell pkg-config --libs igraph)

# Windows executable extension
EXE      = .exe

# Directories
SRCDIR   = src
BUILDDIR = build
TARGET   = cluster_degree_betweenness

# Sources
SRC      = $(wildcard $(SRCDIR)/*.c)
OBJ      = $(patsubst $(SRCDIR)/%.c,$(BUILDDIR)/%.o,$(SRC))

.PHONY: all clean

all: $(TARGET)

# Link executable
$(TARGET): $(OBJ)
	@mkdir -p bin
	$(CC) $(CFLAGS) -o bin/$(TARGET)$(EXE) $^ $(LDFLAGS)

# Compile .c to .o
$(BUILDDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(BUILDDIR) bin

# Debug target to show variables
debug:
	@echo "SRC: $(SRC)"
	@echo "OBJ: $(OBJ)"
	@echo "CFLAGS: $(CFLAGS)"
	@echo "LDFLAGS: $(LDFLAGS)"