SUBDIRS = \
	1-masses-combined-in-series-and-in-parallel \
	2-increasing-momentum-or-charge \
	3-mechanical-electrical-analogies \
	4-increasing-magnetic-flux \
	5-increasing-electromagnet-force \
	6-inductor-properties

.PHONY : $(SUBDIRS) recurse

all: TARGET=all
edit: TARGET=edit
papers: TARGET=paper
read: TARGET=read
clean: TARGET=clean
tidy: TARGET=tidy

recurse all edit papers read clean tidy : $(SUBDIRS)

$(SUBDIRS):
	@exec $(MAKE) -C $@ $(TARGET)


