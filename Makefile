CSC=	/usr/local/bin/chicken-csc
#CSCFLAGS+=	-static -L

all: c1 

c1: $@.o 
	${CSC} ${CSCFLAGS} $@.o -o $@

foo: $@.o bar.o 
	${CSC} $@.o bar.o -o $@

.SUFFIXES: .scm .o
.scm.o:
	${CSC} -c $<

clean:
	rm -f *.o *.so *.link *.import.scm *.out
	rm -f c1

.PHONY: clean all

