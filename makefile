.PHONY : all edit papers read clean tidy

all: TARGET=all
edit: TARGET=edit
papers: TARGET=papers
read: TARGET=read
clean: TARGET=clean
tidy: TARGET=tidy

all edit papers read clean tidy :
	@exec $(MAKE) -C src $(TARGET)


