10 CPUSPEED 100
20 REM stuff goes here
100 SCREEN 14:PALETTE 2
110 maxx=PSIZE(0)-1:maxy=PSIZE(1)-1
115 maxsprx=maxx-32:maxspry=maxy-32
120 cntx=INT(maxx/2):cnty=INT(maxy/2)
129 'cl variables are RGB values for text
130 cl1=255:cl2=128:cl3=8
150 GOSUB &spritemovementvalues
155 GOSUB &initialspritepositions
160 GOSUB &loadsprites
165 GOSUB &spritesfirststand
189 'text color
190 COLOR RGB(cl1,cl2,cl3)
297 '
298 'main loop
299 '
300 WHILE INKEY$=""
310   tm=TICK()
328   '
330   IF tm<TICK()+100 THEN GOSUB &test0
350   IF tm<tmtst0 AND tm<tmtst0+100 THEN GOSUB &test1
370   IF tm<tmtst1 AND tm<tmtst1+125 THEN GOSUB &test2
390   IF tm<tmtst2 AND tm<tmtst2+125 THEN GOSUB &test3
410   IF tm<tmtst3 AND tm<tmtst3+125 THEN GOSUB &test4
430   IF tm<tmtst4 AND tm<tmtst4+125 THEN GOSUB &test5
450   IF tm<tmtst5 AND tm<tmtst5+125 THEN GOSUB &test6
470   IF tm<tmtst6 AND tm<tmtst6+125 THEN GOSUB &test7
990   VSYNC
1000 WEND
1100 SCREEN 13:END
1800 '
1801 'this is a spacer
1802 '
1803 '
2000 &loadsprites
2010 LOAD IMAGE "ship0.png" AS SPRITE 0
2015 LOAD IMAGE "ship1.png" AS SPRITE 1
2020 LOAD IMAGE "ship2.png" AS SPRITE 2
2025 LOAD IMAGE "ship3.png" AS SPRITE 3
2030 LOAD IMAGE "ship4.png" AS SPRITE 4
2035 LOAD IMAGE "ship5.png" AS SPRITE 5
2040 LOAD IMAGE "ship6.png" AS SPRITE 6
2045 LOAD IMAGE "ship7.png" AS SPRITE 7
2060 FOR lp=0 TO 7
2065   SPRITE lp ON SIZE 32,32
2070 NEXT lp
2100 RETURN
2180 '
2181 'this is a spacer
2182 '
2200 &spritemovementvalues
2205 DIM xf(7),yf(7)
2210 FOR lp=0 TO 7
2215   r1=RND(6)+1
2220   r2=RND(6)+1
2225   r3=RND(3)+1
2230   r4=r2/r3
2235   xf(lp)=r1
2240   yf(lp)=r4
2250 NEXT lp
2260 RETURN
2280 '
2281 'this is a spacer
2282 '
2300 &initialspritepositions
2305 DIM spx(7),spy(7)
2310 FOR lp=0 TO 7
2320   r1=RND(maxsprx)+1
2325   r2=RND(maxspry)+1
2330   spx(lp)=r1
2335   spy(lp)=r2
2340 NEXT lp
2350 RETURN
2480 '
2481 'this is a spacer
2482 '
2500 &spritesfirststand
2510 FOR lp=0 TO 7
2520   MOVE SPRITE lp TO spx(lp),spy(lp)
2540 NEXT lp
2550 RETURN
4800 '
4801 '
4802 'this is a spacer
4803 '
5000 &test0
5005 tmtst0=TICK()
5010 tst0=tst0+1
5015 spx(0)=spx(0)+xf(0)
5020 spy(0)=spy(0)+yf(0)
5025 IF spx(0)<1 OR spx(0)>maxsprx THEN xf(0)=-xf(0)
5030 IF spy(0)<1 OR spy(0)>maxspry THEN yf(0)=-yf(0)
5035 MOVE SPRITE 0 TO spx(0),spy(0)
5045 LOCATE 0,0
5050 ?"Test 0 = ";tst0
5060 RETURN
5100 '
5101 'this is a spacer
5102 '
5200 &test1
5205 tmtst1=TICK()
5210 tst1=tst1+1
5215 spx(1)=spx(1)+xf(1)
5220 spy(1)=spy(1)+yf(1)
5225 IF spx(1)<1 OR spx(1)>maxsprx THEN xf(1)=-xf(1)
5230 IF spy(1)<1 OR spy(1)>maxspry THEN yf(1)=-yf(1)
5240 MOVE SPRITE 1 TO spx(1),spy(1)
5245 LOCATE 0,1
5250 ?"Test 1 = ";tst1
5260 RETURN
5300 '
5301 'this is a spacer
5302 '
5400 &test2
5405 tmtst2=TICK()
5410 tst2=tst2+1
5415 spx(2)=spx(2)+xf(2)
5420 spy(2)=spy(2)+yf(2)
5425 IF spx(2)<1 OR spx(2)>maxsprx THEN xf(2)=-xf(2)
5430 IF spy(2)<1 OR spy(2)>maxspry THEN yf(2)=-yf(2)
5440 MOVE SPRITE 2 TO spx(2),spy(2)
5445 LOCATE 0,2
5450 ?"Test 2 = ";tst2
5460 RETURN
5500 '
5501 'this is a spacer
5502 '
5600 &test3
5605 tmtst3=TICK()
5610 tst3=tst3+1
5615 spx(3)=spx(3)+xf(3)
5620 spy(3)=spy(3)+yf(3)
5625 IF spx(3)<1 OR spx(3)>maxsprx THEN xf(3)=-xf(3)
5630 IF spy(3)<1 OR spy(3)>maxspry THEN yf(3)=-yf(3)
5640 MOVE SPRITE 3 TO spx(3),spy(3)
5645 LOCATE 0,3
5650 ?"Test 3 = ";tst3
5660 RETURN
5700 '
5701 'this is a spacer
5702 '
5800 &test4
5805 tmtst4=TICK()
5810 tst4=tst4+1
5815 spx(4)=spx(4)+xf(4)
5820 spy(4)=spy(4)+yf(4)
5825 IF spx(4)<1 OR spx(4)>maxsprx THEN xf(4)=-xf(4)
5830 IF spy(4)<1 OR spy(4)>maxspry THEN yf(4)=-yf(4)
5840 MOVE SPRITE 4 TO spx(4),spy(4)
5845 LOCATE 0,4
5850 ?"Test 4 = ";tst4
5860 RETURN
5900 '
5901 'this is a spacer
5902 '
6000 &test5
6005 tmtst5=TICK()
6010 tst5=tst5+1
6015 spx(5)=spx(5)+xf(5)
6020 spy(5)=spy(5)+yf(5)
6025 IF spx(5)<1 OR spx(5)>maxsprx THEN xf(5)=-xf(5)
6030 IF spy(5)<1 OR spy(5)>maxspry THEN yf(5)=-yf(5)
6040 MOVE SPRITE 5 TO spx(5),spy(5)
6045 LOCATE 0,5
6050 ?"Test 5 = ";tst5
6060 RETURN
6100 '
6101 'this is a spacer
6102 '
6200 &test6
6205 tmtst6=TICK()
6210 tst6=tst6+1
6215 spx(6)=spx(6)+xf(6)
6220 spy(6)=spy(6)+yf(6)
6225 IF spx(6)<1 OR spx(6)>maxsprx THEN xf(6)=-xf(6)
6230 IF spy(6)<1 OR spy(6)>maxspry THEN yf(6)=-yf(6)
6240 MOVE SPRITE 6 TO spx(6),spy(6)
6245 LOCATE 0,6
6250 ?"Test 6 = ";tst6
6260 RETURN
6300 '
6301 'this is a spacer
6302 '
6400 &test7
6405 tmtst7=TICK()
6410 tst7=tst7+1
6415 spx(7)=spx(7)+xf(7)
6420 spy(7)=spy(7)+yf(7)
6425 IF spx(7)<1 OR spx(7)>maxsprx THEN xf(7)=-xf(7)
6430 IF spy(7)<1 OR spy(7)>maxspry THEN yf(7)=-yf(7)
6440 MOVE SPRITE 7 TO spx(7),spy(7)
6445 LOCATE 0,7
6450 ?"Test 7 = ";tst7
6460 RETURN
