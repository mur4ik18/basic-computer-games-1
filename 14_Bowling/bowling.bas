10 PRINT TAB(34);"BOWL"
20 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
30 PRINT:PRINT:PRINT
270 DIM C(15),A(100,6)
360 PRINT "WELCOME TO THE ALLEY"
450 PRINT "BRING YOUR FRIENDS"
540 PRINT "OKAY LET'S FIRST GET ACQUAINTED"
630 PRINT ""
720 PRINT "THE INSTRUCTIONS (Y/N)"
810 INPUT Z$
900 IF Z$="Y" THEN 990
960 IF Z$="N" THEN 1530
990 PRINT "THE GAME OF BOWLING TAKES MIND AND SKILL.DURING THE GAME"
1080 PRINT "THE COMPUTER WILL KEEP SCORE.YOU MAY COMPETE WITH"
1170 PRINT "OTHER PLAYERS[UP TO FOUR].YOU WILL BE PLAYING TEN FRAMES"
1260 PRINT "ON THE PIN DIAGRAM 'O' MEANS THE PIN IS DOWN...'+' MEANS THE"
1350 PRINT "PIN IS STANDING.AFTER THE GAME THE COMPUTER WILL SHOW YOUR"
1440 PRINT "SCORES ."
1530 PRINT "FIRST OF ALL...HOW MANY ARE PLAYING";
1620 INPUT R
1710 PRINT
1800 PRINT "VERY GOOD..."
1890 FOR I=1 TO 100: FOR J=1 TO 6: A(I,J)=0: NEXT J: NEXT I
1980 F=1
2070 FOR P=1 TO R
2160 M=0
2250 B=1
2340 M=0: Q=0
2430 FOR I=1 TO 15: C(I)=0: NEXT I
2520 REM ARK BALL GENERATOR USING MOD '15' SYSTEM
2610 PRINT "TYPE ROLL TO GET THE BALL GOING."
2700 INPUT N$
2790 K=0: D=0
2880 FOR I=1 TO 20
2970 X=INT(RND(1)*100)
3060 FOR J=1 TO 10
3150 IF X<15*J THEN 3330
3240 NEXT J
3330 C(15*J-X)=1
3420 NEXT I
3510 REM ARK PIN DIAGRAM
3600 PRINT "PLAYER:"P;"FRAME:";F"BALL:"B
3690 FOR I=0 TO 3
3780 PRINT
3870 FOR J=1 TO 4-I
3960 K=K+1
4050 IF C(K)=1 THEN 4320
4140 PRINT TAB(I);"+ ";
4230 GOTO 4410
4320 PRINT TAB(I);"O ";
4410 NEXT J
4500 NEXT I
4590 PRINT ""
4680 REM ARK ROLL ANALYSIS
4770 FOR I=1 TO 10
4860 D=D+C(I)
4950 NEXT I
5040 IF D-M <> 0 THEN 5220
5130 PRINT "GUTTER!!"
5220 IF B<>1 OR D<>10 THEN 5490
5310 PRINT "STRIKE!!!!!"
5400 Q=3
5490 IF B<>2 OR D<>10 THEN 5760
5580 PRINT "SPARE!!!!"
5670 Q=2
5760 IF B<>2 OR D>=10 THEN 6030
5850 PRINT "ERROR!!!"
5940 Q=1
6030 IF B<>1 OR D>=10 THEN 6210
6120 PRINT "ROLL YOUR 2ND BALL"
6210 REM ARK STORAGE OF THE SCORES
6300 PRINT
6390 A(F*P,B)=D
6480 IF B=2 THEN 7020
6570 B=2
6660 M=D
6750 IF Q=3 THEN 6210
6840 A(F*P,B)=D-M
6930 IF Q=0 THEN 2520
7020 A(F*P,3)=Q
7110 NEXT P
7200 F=F+1
7290 IF F<11 THEN 2070
7295 PRINT "FRAMES"
7380 FOR I=1 TO 10
7470 PRINT I;
7560 NEXT I
7650 PRINT
7740 FOR P=1 TO R
7830 FOR I=1 TO 3
7920 FOR J=1 TO 10
8010 PRINT A(J*P,I);
8100 NEXT J
8105 PRINT
8190 NEXT I
8280 PRINT
8370 NEXT P
8460 PRINT "DO YOU WANT ANOTHER GAME"
8550 INPUT A$
8640 IF LEFT$(A$,1)="Y" THEN 2610
8730 END
