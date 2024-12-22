DESTDIR=.
PROG=piedrapapeltijera
TARNAME=$(PROG)-1.0.tar.gz

all: $(PROG)

$(PROG): $(PROG).cc
	g++ $(PROG).cc -o $@

install: $(PROG)
	mkdir -p $(DESTDIR)/usr/bin
	cp $(PROG) $(DESTDIR)/usr/bin/

clean:
	rm -f *~ $(PROG) *.o

tar: $(PROG)
	tar -czvf $(TARNAME) $(PROG) $(PROG).cc makefile

.PHONY: clean install all tar
