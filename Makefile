CSC=		/usr/local/bin/chicken-csc
#CSCFLAGS+=
CSCFLAGS+= -static -J
#CSCFLAGS+=	-static -L

all: c1 

read-tags: $@.scm
	$(CSC) $(CSCFLAGS) $@.scm

simple-cgi: $@.scm
	$(CSC) $(CSCFLAGS) $@.scm

deploy-cgi: simple-cgi
	cp simple-cgi /var/www/htdocs/simple-cgi.cgi

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
	rm -f c1 read-tags simple-cgi

.PHONY: clean all deploy-cgi 

