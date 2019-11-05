INCLUDE_INSTALL_PATH=/usr/local/include
LIBRARY_INSTALL_PATH=/usr/local/lib

LIBRARY_NAME=galgo


all:


setup:


development:
	@rm -rf $(INCLUDE_INSTALL_PATH)/$(LIBRARY_NAME)
	@ln -s $(shell pwd)/src $(INCLUDE_INSTALL_PATH)/$(LIBRARY_NAME)

install:
	rm -rf $(INCLUDE_INSTALL_PATH)/$(LIBRARY_NAME)
	mkdir -p $(INCLUDE_INSTALL_PATH)/$(LIBRARY_NAME)
	cp -R ./src/*.hpp $(INCLUDE_INSTALL_PATH)/$(LIBRARY_NAME)


uninstall:
	@rm -rf $(INCLUDE_INSTALL_PATH)/$(LIBRARY_NAME)


clean:
	