app.exe:main.o big2.o  big3.o  fact.o  fibonacci.o num_sort.o  pallindrome.o  reverse.o  sum2.o
	gcc -o app.exe main.o big2.o  big3.o  fact.o  fibonacci.o num_sort.o  pallindrome.o  reverse.o  sum2.o
main.o:main.c
	gcc -c main.c
big2.o:big2.c
	gcc -c big2.c
big3.o:big3.c
	gcc -c big3.c
fact.o:fact.c
	gcc -c fact.c
fibonacci.o:fibonacci.c
	gcc -c fibonacci.c
num_sort.o:num_sort.c
	gcc -c num_sort.c
pallindrome.o:pallindrome.c
	gcc -c pallindrome.c
reverse.o:reverse.c
	gcc -c reverse.c
sum2.o:sum2.c
	gcc -c sum2.c

