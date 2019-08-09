CSC=		/usr/local/bin/chicken-csc
CSCFLAGS+=
#CSCFLAGS+=	-static 
#CSCFLAGS+=	-static -L

all: c1 

read-tags: $@.scm
	$(CSC) $(CSCFLAGS) $@.scm

#c1: $@.o ccode.o
c1: ccode.o $@.scm
	$(CSC) $(CSCFLAGS) ccode.o $@.scm

foo: $@.o bar.o 
	${CSC} $@.o bar.o -o $@

.SUFFIXES: .scm .o
.scm.o:
	${CSC} -c $<

clean:
	rm -f *.o *.so *.link *.import.scm *.out
	rm -f c1 read-tags

.PHONY: clean all

