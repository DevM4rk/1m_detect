all : 1m_detect

1m_detect : main.o
	g++ -o 1m_detect main.o -lnetfilter_queue

main.o : main.c
	g++ -c -o main.o main.c

clean :
	rm -f 1m_detect *.o

