1 DIM F(4)
2 PRINT TAB(31);"FUR TRADER"
4 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
6 PRINT: PRINT: PRINT
15 GOSUB 1091
16 LET I=600
17 PRINT "DO YOU WISH TO TRADE FURS?"
18 GOSUB 1402
19 IF B$="YES" THEN 100
20 IF B$="YES " THEN 100
21 STOP
100 PRINT
101 PRINT "YOU HAVE $";I " SAVINGS."
102 PRINT "AND 190 FURS TO BEGIN THE EXPEDITION."
261 LET E1=INT((.15*RND(1)+.95)*10^2+.5)/10^2
262 LET B1=INT((.25*RND(1)+1.00)*10^2+.5)/10^2
300 PRINT
301 PRINT "YOUR 190 FURS ARE DISTRIBUTED AMONG THE FOLLOWING"
302 PRINT "KINDS OF PELTS: MINK, BEAVER, ERMINE AND FOX."
310 GOSUB 1430
315 RESTORE
330 FOR J=1 TO 4
332 READ B$
333 PRINT
335 PRINT "HOW MANY ";B$;" PELTS DO YOU HAVE";
338 INPUT F(J)
340 LET F(0)=F(1)+F(2)+F(3)+F(4)
342 IF F(0)=190 THEN 1100
344 IF F(0)>190 THEN 500
348 NEXT J
350 GOTO 1100
500 PRINT
501 PRINT "YOU MAY NOT HAVE THAT MANY FURS."
502 PRINT "DO NOT TRY TO CHEAT.  I CAN ADD."
503 PRINT "YOU MUST START AGAIN."
504 GOTO 15
508 PRINT
511 PRINT "DO YOU WANT TO TRADE FURS NEXT YEAR?"
513 GOTO 18
1091 PRINT "YOU ARE THE LEADER OF A FRENCH FUR TRADING EXPEDITION IN "
1092 PRINT "1776 LEAVING THE LAKE ONTARIO AREA TO SELL FURS AND GET"
1093 PRINT "SUPPLIES FOR THE NEXT YEAR.  YOU HAVE A CHOICE OF THREE"
1094 PRINT "FORTS AT WHICH YOU MAY TRADE.  THE COST OF SUPPLIES"
1095 PRINT "AND THE AMOUNT YOU RECEIVE FOR YOUR FURS WILL DEPEND"
1096 PRINT "ON THE FORT THAT YOU CHOOSE."
1099 RETURN
1100 PRINT "YOU MAY TRADE YOUR FURS AT FORT 1, FORT 2,"
1102 PRINT "OR FORT 3.  FORT 1 IS FORT HOCHELAGA (MONTREAL)"
1103 PRINT "AND IS UNDER THE PROTECTION OF THE FRENCH ARMY."
1104 PRINT "FORT 2 IS FORT STADACONA (QUEBEC) AND IS UNDER THE"
1105 PRINT "PROTECTION OF THE FRENCH ARMY.  HOWEVER, YOU MUST"
1106 PRINT "MAKE A PORTAGE AND CROSS THE LACHINE RAPIDS."
1108 PRINT "FORT 3 IS FORT NEW YORK AND IS UNDER DUTCH CONTROL."
1109 PRINT "YOU MUST CROSS THROUGH IROQUOIS LAND."
1110 PRINT "ANSWER 1, 2, OR 3."
1111 INPUT B
1112 IF B=1 THEN 1120
1113 IF B=2 THEN 1135
1115 IF B=3 THEN 1147
1116 GOTO 1110
1120 PRINT "YOU HAVE CHOSEN THE EASIEST ROUTE.  HOWEVER, THE FORT"
1121 PRINT "IS FAR FROM ANY SEAPORT.  THE VALUE"
1122 PRINT "YOU RECEIVE FOR YOUR FURS WILL BE LOW AND THE COST"
1123 PRINT "OF SUPPLIES HIGHER THAN AT FORTS STADACONA OR NEW YORK."
1125 GOSUB 1400
1129 IF B$="YES" THEN 1110
1130 GOTO 1160
1135 PRINT "YOU HAVE CHOSEN A HARD ROUTE.  IT IS, IN COMPARSION,"
1136 PRINT "HARDER THAN THE ROUTE TO HOCHELAGA BUT EASIER THAN"
1137 PRINT "THE ROUTE TO NEW YORK.  YOU WILL RECEIVE AN AVERAGE VALUE"
1138 PRINT "FOR YOUR FURS AND THE COST OF YOUR SUPPLIES WILL BE AVERAGE."
1141 GOSUB 1400
1144 IF B$="YES" THEN 1110
1145 GOTO 1198
1147 PRINT "YOU HAVE CHOSEN THE MOST DIFFICULT ROUTE.  AT"
1148 PRINT "FORT NEW YORK YOU WILL RECEIVE THE HIGHEST VALUE"
1149 PRINT "FOR YOUR FURS.  THE COST OF YOUR SUPPLIES"
1150 PRINT "WILL BE LOWER THAN AT ALL THE OTHER FORTS."
1152 GOSUB 1400
1155 IF B$="YES" THEN 1110
1156 GOTO 1250
1160 LET I=I-160
1169 PRINT
1174 LET M1=INT((.2*RND(1)+.7)*10^2+.5)/10^2
1175 LET E1=INT((.2*RND(1)+.65)*10^2+.5)/10^2
1176 LET B1=INT((.2*RND(1)+.75)*10^2+.5)/10^2
1177 LET D1=INT((.2*RND(1)+.8)*10^2+.5)/10^2
1180 PRINT "SUPPLIES AT FORT HOCHELAGA COST $150.00."
1181 PRINT "YOUR TRAVEL EXPENSES TO HOCHELAGA WERE $10.00."
1190 GOTO 1410
1198 LET I=I-140
1201 PRINT
1205 LET M1=INT((.3*RND(1)+.85)*10^2+.5)/10^2
1206 LET E1=INT((.15*RND(1)+.8)*10^2+.5)/10^2
1207 LET B1=INT((.2*RND(1)+.9)*10^2+.5)/10^2
1209 LET P=INT(10*RND(1))+1
1210 IF P<=2 THEN 1216
1212 IF P<=6 THEN 1224
1213 IF P<=8 THEN 1226
1215 IF P<=10 THEN 1235
1216 LET F(2)=0
1218 PRINT "YOUR BEAVER WERE TOO HEAVY TO CARRY ACROSS"
1219 PRINT "THE PORTAGE.  YOU HAD TO LEAVE THE PELTS, BUT FOUND"
1220 PRINT "THEM STOLEN WHEN YOU RETURNED."
1221 GOSUB 1244
1222 GOTO 1414
1224 PRINT "YOU ARRIVED SAFELY AT FORT STADACONA."
1225 GOTO 1239
1226 GOSUB 1430
1230 PRINT "YOUR CANOE UPSET IN THE LACHINE RAPIDS.  YOU"
1231 PRINT "LOST ALL YOUR FURS."
1232 GOSUB 1244
1233 GOTO 1418
1235 LET F(4)=0
1237 PRINT "YOUR FOX PELTS WERE NOT CURED PROPERLY."
1238 PRINT "NO ONE WILL BUY THEM."
1239 GOSUB 1244
1240 GOTO 1410
1244 PRINT "SUPPLIES AT FORT STADACONA COST $125.00."
1246 PRINT "YOUR TRAVEL EXPENSES TO STADACONA WERE $15.00."
1248 RETURN
1250 LET I=I-105
1254 PRINT
1260 LET M1=INT((.15*RND(1)+1.05)*10^2+.5)/10^2
1263 LET D1=INT((.25*RND(1)+1.1)*10^2+.5)/10^2
1270 LET P=INT(10*RND(1))+1
1271 IF P<=2 THEN 1281
1272 IF P<=6 THEN 1291
1273 IF P<=8 THEN 1295
1274 IF P<=10 THEN 1306
1281 PRINT "YOU WERE ATTACKED BY A PARTY OF IROQUOIS."
1282 PRINT "ALL PEOPLE IN YOUR TRADING GROUP WERE"
1283 PRINT "KILLED.  THIS ENDS THE GAME."
1284 STOP
1291 PRINT "YOU WERE LUCKY.  YOU ARRIVED SAFELY"
1292 PRINT "AT FORT NEW YORK."
1293 GOTO 1311
1295 GOSUB 1430
1300 PRINT "YOU NARROWLY ESCAPED AN IROQUOIS RAIDING PARTY."
1301 PRINT "HOWEVER, YOU HAD TO LEAVE ALL YOUR FURS BEHIND."
1303 GOSUB 1320
1304 GOTO 1418
1306 LET B1=B1/2
1307 LET M1=M1/2
1308 PRINT "YOUR MINK AND BEAVER WERE DAMAGED ON YOUR TRIP."
1309 PRINT "YOU RECEIVE ONLY HALF THE CURRENT PRICE FOR THESE FURS."
1311 GOSUB 1320
1312 GOTO 1410
1320 PRINT "SUPPLIES AT NEW YORK COST $80.00."
1321 PRINT "YOUR TRAVEL EXPENSES TO NEW YORK WERE $25.00."
1322 RETURN
1400 PRINT "DO YOU WANT TO TRADE AT ANOTHER FORT?"
1402 PRINT "ANSWER YES OR NO",
1403 INPUT B$
1404 RETURN
1410 PRINT
1412 PRINT "YOUR BEAVER SOLD FOR $";B1*F(2);
1414 PRINT "YOUR FOX SOLD FOR $";D1*F(4)
1416 PRINT "YOUR ERMINE SOLD FOR $";E1*F(3);
1417 PRINT "YOUR MINK SOLD FOR $";M1*F(1)
1418 LET I=M1*F(1)+B1*F(2)+E1*F(3)+D1*F(4)+I
1420 PRINT
1422 PRINT "YOU NOW HAVE $";I;" INCLUDING YOUR PREVIOUS SAVINGS"
1425 GOTO 508
1430 FOR J=1 TO 4
1432 LET F(J)=0
1434 NEXT J
1436 RETURN
2000 DATA "MINK","BEAVER","ERMINE","FOX"
2046 END
