# Makefile to install the 'apnd' program

# Paths
INSTALL_DIR := /usr/local/bin
SCRIPT_NAME := apnd
SCRIPT_SRC  := $(SCRIPT_NAME).sh
SCRIPT_DEST := $(INSTALL_DIR)/$(SCRIPT_NAME)

# Targets
.PHONY: all install uninstall clean

all:
	@echo "Use 'make install' to install the program or 'make uninstall' to remove it."

install:
	@echo "Installing $(SCRIPT_NAME) to $(INSTALL_DIR)..."
	@chmod +x $(SCRIPT_SRC)
	@sudo cp $(SCRIPT_SRC) $(SCRIPT_DEST)
	@echo "$(SCRIPT_NAME) has been installed to $(SCRIPT_DEST)."

uninstall:
	@echo "Uninstalling $(SCRIPT_NAME)..."
	@sudo rm -f $(SCRIPT_DEST)
	@echo "$(SCRIPT_NAME) has been removed from $(INSTALL_DIR)."

clean:
	@echo "Cleaning up..."
	@echo "Nothing to clean!"
