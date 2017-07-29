q
main()
 n input,done
 f  d  q:done
 . r "Please enter a number: ",input
 . i input?.N s done=1
 . e  w !,"You must enter a number!"
 w !,$$bitcount(input),!
 q
bitcount(input)
 n neg,counter,loop
 i 'input q 0
 i input<0 d
 . s neg=1
 . s input=(input*-1)-1
 f loop=1:1:32 d
 . i input#2 s counter=counter+1
 . s input=input\2
 i neg q 32-counter
 q counter
