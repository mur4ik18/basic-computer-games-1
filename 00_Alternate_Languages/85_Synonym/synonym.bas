2 PRINT TAB(33);"SYNONYM"
4 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
6 PRINT: PRINT: PRINT
10 DIM R$(5),W$(10),L(30),R(30)
20 R$(1)="RIGHT": R$(2)="CORRECT": R$(3)="FINE": R$(4)="GOOD!"
30 R$(5)="CHECK"
70 C=0
90 PRINT "A SYNONYM OF A WORD MEANS ANOTHER WORD IN THE ENGLISH"
100 PRINT "LANGUAGE WHICH HAS THE SAME OR VERY NEARLY THE SAME";
110 PRINT " MEANING."
130 PRINT "I CHOOSE A WORD -- YOU TYPE A SYNONYM."
140 PRINT "IF YOU CAN'T THINK OF A SYNONYM, TYPE THE WORD 'HELP'"
145 PRINT "AND I WILL TELL YOU A SYNONYM.": PRINT
150 RESTORE: C=C+1: READ N
160 IF C>N THEN 420
170 N1=INT(RND(1)*N+1)
174 IF R(N1)=1 THEN 170
176 R(N1)=1
180 FOR I=1 TO N1
190 READ N2
200 FOR J=1 TO N2
210 READ W$(J)
220 NEXT J
230 NEXT I
232 FOR J=1 TO N2: L(J)=J: NEXT J
235 L(0)=N2: G=1: PRINT
237 L(G)=L(L(0)): L(0)=N2-1: PRINT
240 PRINT "     WHAT IS A SYNONYM OF ";W$(G);: INPUT A$
250 IF A$="HELP" THEN 340
260 FOR K=1 TO N2
270 IF G=K THEN 290
280 IF A$=W$(K) THEN 320
290 NEXT K
300 PRINT "     TRY AGAIN.": GOTO 240
320 PRINT R$(INT(RND(1)*5+1)): GOTO 150
340 G1=INT(RND(1)*L(0)+1)
360 PRINT "**** A SYNONYM OF ";W$(G);" IS ";W$(L(G1));".": PRINT
370 L(G1)=L(L(0)): L(0)=L(0)-1: GOTO 240
420 PRINT: PRINT "SYNONYM DRILL COMPLETED.": GOTO 999
500 DATA 10
510 DATA 5,"FIRST","START","BEGINNING","ONSET","INITIAL"
520 DATA 5,"SIMILAR","ALIKE","SAME","LIKE","RESEMBLING"
530 DATA 5,"MODEL","PATTERN","PROTOTYPE","STANDARD","CRITERION"
540 DATA 5,"SMALL","INSIGNIFICANT","LITTLE","TINY","MINUTE"
550 DATA 6,"STOP","HALT","STAY","ARREST","CHECK","STANDSTILL"
560 DATA 6,"HOUSE","DWELLING","RESIDENCE","DOMICILE","LODGING"
565 DATA "HABITATION"
570 DATA 7,"PIT","HOLE","HOLLOW","WELL","GULF","CHASM","ABYSS"
580 DATA 7,"PUSH","SHOVE","THRUST","PROD","POKE","BUTT","PRESS"
590 DATA 6,"RED","ROUGE","SCARLET","CRIMSON","FLAME","RUBY"
600 DATA 7,"PAIN","SUFFERING","HURT","MISERY","DISTRESS","ACHE"
605 DATA "DISCOMFORT"
999 END
