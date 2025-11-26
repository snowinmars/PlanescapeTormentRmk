// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFORGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFORGE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #5086 /* ~Przygotowujesz się, by ponownie unieść młot...~ */
  IF ~~ THEN REPLY #5087 /* ~"O co chodzi?"~ */ EXTERN ~FSMITH~ 17
END

IF WEIGHT #2 /* Triggers after states #: 46 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY #5088 /* ~Podchodzisz do kuźni. Żar jest niesamowity. Co robisz?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5089 /* ~Użyj kuźni.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5090 /* ~Użyj kuźni.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5091 /* ~Użyj kuźni.~ */ GOTO 3
  IF ~~ THEN REPLY #5092 /* ~Cofnij się.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 46.0
  SAY #5093 /* ~Żar od płomieni jest zbyt duży, nawet jak na twoją twardą skórę. Ogień zaczyna cię parzyć.~ */
  IF ~~ THEN REPLY #5094 /* ~Użyj kuźni.~ */ GOTO 4
  IF ~~ THEN REPLY #5095 /* ~Cofnij się.~ */ DO ~Damage(Protagonist,LOWER,5)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 1.2 46.1 46.2
  SAY #5096 /* ~Ogień wydziela niesamowitą ilość gorąca, ale dzięki twojej ochronie jesteś w stanie wytrzymać to nie odnosząc obrażeń. Czy chcesz pracować w kuźni?~ */
  IF ~~ THEN REPLY #5097 /* ~Tak.~ */ GOTO 25
  IF ~~ THEN REPLY #5098 /* ~Nie.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5099 /* ~Płomienie znowu parzą ci skórę. Co chciałbyś zrobić najpierw?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5100 /* ~Przygotuj szczypce.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5101 /* ~Uderz młotem w kowadło.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5102 /* ~Podnieś rudę.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5103 /* ~Podnieś rudę szczypcami i przytrzymaj w płomieniach kuźni.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 8
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5104 /* ~Umieść rudę na kowadle i zacznij kuć.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5105 /* ~Odejdź od kuźni.~ */ DO ~Damage(Protagonist,LOWER,10)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5106 /* ~Giń. Żar jest zbyt silny.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #5107 /* ~Trzymasz mocno szczypce, podczas gdy żar od kuźni sprawia, iż na twojej skórze pojawiają się bąble. Co chcesz teraz uczynić?~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5108 /* ~Uderz młotem w kowadło.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5109 /* ~Podnieś rudę szczypcami i przytrzymaj w płomieniach.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5110 /* ~Umieść rudę na kowadle i zacznij kuć.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5111 /* ~Odejdź od kuźni.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5112 /* ~Giń. Żar jest zbyt silny.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 6.1 7.0
  SAY #5113 /* ~Uderzasz kilka razy w puste kowadło, posyłając w obojętne niebiosa brzęk metalu o metal, a żar od kuźni dalej cię parzy. Co teraz?~ */
  IF ~  PartyHasItem("Tongs")
!HPLT(Protagonist,1)
~ THEN REPLY #5114 /* ~Przygotuj szczypce.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5115 /* ~Uderz młotem w kowadło.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5116 /* ~Podnieś rudę.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5117 /* ~Podnieś rudę szczypcami i przytrzymaj w płomieniach kuźni.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5118 /* ~Umieść rudę na kowadle i zacznij kuć.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5119 /* ~Odejdź od kuźni.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5120 /* ~Giń. Żar jest zbyt silny.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2
  SAY #5121 /* ~Trzymasz w dłoniach grudę rudy. Tu, gdzie stoisz, żar od kuźni jest prawie na tyle silny, by roztopić żelazo - z pewnością z twoją skórą dzieją się bardzo bolesne rzeczy. Co teraz?~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5122 /* ~Uderz młotem w kowadło.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5123 /* ~Przytrzymaj rudę szczypcami w płomieniach kuźni.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5124 /* ~Umieść rudę na kowadle i zacznij kuć.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5125 /* ~Trzymając rudę w dłoniach, włóż ją do ognia.~ */ GOTO 10
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5126 /* ~Odejdź od kuźni.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5146 /* ~Giń. Żar jest zbyt silny.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.1 6.3 7.1
  SAY #5147 /* ~Ruda szybko mięknie i po chwili można zacząć nad nią pracować. Twoja skóra pokryta jest mnóstwem bąbli.~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5148 /* ~Połóż miękką rudę na kowadle i nadaj jej kształt.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ GOTO 11
  IF ~  !PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5149 /* ~Mój młot! Zapomniałem zabrać młota, by móc nad tym pracować! Zaraz wracam!~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5150 /* ~Odejdź od kuźni.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5151 /* ~Giń. Żar jest zbyt silny.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 5.2 6.4 7.2
  SAY #5152 /* ~Kładziesz zimną rudę na kowadle i uderzasz w nią młotem. Rozbijasz ją na mniejsze, bezużyteczne grudki. Płomienie z kuźni wygrywają na twojej skórze symfonię bólu.~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5153 /* ~Odejdź od kuźni.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5154 /* ~Giń. Żar jest przytłaczający.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY #5155 /* ~Ból od płomieni jest zadziwiający. Ruda mięknie w twoich dłoniach jak glina, powietrze wypełnia smród palonego ciała. Żelazo stapia się z twoją dłonią, a ty mdlejesz z bólu.~ */
  IF ~~ THEN REPLY #5156 /* ~Zrobione.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.3 13.3 14.3
  SAY #5157 /* ~Co chciałbyś wykuć?~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5158 /* ~Coś małego i niebezpiecznego: stiletto!~ */ GOTO 12
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5159 /* ~Młot dwuręczny.~ */ GOTO 13
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5160 /* ~Topór bojowy.~ */ GOTO 14
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5162 /* ~Nic. Żar jest przytłaczający.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #5163 /* ~Stiletto... szybka, łatwa broń - i taka, która znacznie szybciej uwolni cię od tego piekielnego bólu. Czy jesteś pewien, że chcesz wykuć stiletto?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5164 /* ~Tak.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5165 /* ~Tak.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5166 /* ~Tak.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 18
  IF ~~ THEN REPLY #5167 /* ~Nie, raczej wykuję coś innego.~ */ GOTO 11
  IF ~~ THEN REPLY #5168 /* ~Nie, jak na razie koniec z kuciem.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #5169 /* ~Młot - niewiele pracy, co pozwoli ci szybko uciec od płomieni kuźni. Czy jesteś pewien, że chcesz młot?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5170 /* ~Tak.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5171 /* ~Tak.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5172 /* ~Tak.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 21
  IF ~~ THEN REPLY #5173 /* ~Nie, raczej wykuję coś innego.~ */ GOTO 11
  IF ~~ THEN REPLY #5174 /* ~Nie, jak na razie koniec z kuciem.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #5175 /* ~Zrobienie topora potrwa chwilę, a w tym czasie płomienie pożrą twoje ciało. Czy jesteś pewien?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5176 /* ~Tak.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5177 /* ~Tak.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 23
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5178 /* ~Tak.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 24
  IF ~~ THEN REPLY #5179 /* ~Nie, raczej wykuję coś innego.~ */ GOTO 11
  IF ~~ THEN REPLY #5180 /* ~Nie, jak na razie koniec z kuciem.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #5188 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0
  SAY #5189 /* ~Krytycznie spoglądasz na swoją pracę - nie jest to dobrze wykonana broń, ale przynajmniej coś udało ci się zrobić.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5194 /* ~To musi wystarczyć, aby zdać test.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5195 /* ~Sądzę, że jest to użyteczne...~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5196 /* ~Niewielka pociecha. Żar jest przytłaczający. Przynajmniej ta próba Bogowców została ukończona.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5197 /* ~Niewielka pociecha. Żar jest przytłaczający.~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
Kill(Protagonist)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #5198 /* ~Wykułeś stiletto. Odchodzisz od płomieni, by podziwiać swoje dzieło.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5199 /* ~To jest stiletto. Wystarczy, aby przejść próbę.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5200 /* ~To jest stiletto. Wygląda ładnie i użytecznie.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5201 /* ~Żar jest zbyt przytłaczający. Próba zakończona, ale trzeba za to zapłacić.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5202 /* ~Żar jest zbyt przytłaczający. Trzeba za to zapłacić.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #5203 /* ~To dopiero ładny kawał roboty! Twoje stiletto jest nie tylko użyteczne, ale doskonale wyważone i wygląda groźnie. Dobra robota.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5204 /* ~Ten przedmiot będzie mi wiernie służyć. Z pewnością zrobi wrażenie na Keldorze! Czas wydostać się z tych płomieni.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5205 /* ~Ten przedmiot będzie mi wiernie służył w przyszłych próbach. Teraz muszę wydostać się z tych płomieni.~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5206 /* ~Żar jest zbyt przytłaczający.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5207 /* ~Żar jest zbyt przytłaczający. Nie mogę się ruszać... nie mogę oddychać...~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0
  SAY #5208 /* ~Młot, który wykułeś, wygląda mniej więcej tak, jakbyś po prostu znalazł kawał żelaza. W ostateczności może być.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5209 /* ~Jak dla mnie to wygląda całkiem nieźle. Teraz zaniosę go Keldorowi.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PSledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5210 /* ~Tyle kłopotu dla kawałka metalu? Moce nad nami! Po prostu się stąd zwinę.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5211 /* ~Żar jest przytłaczający. Przynajmniej próba została ukończona.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5212 /* ~Żar jest przytłaczający.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #5213 /* ~Spójrz! To młot dwuręczny... i wygląda podobnie do innych, jakie widziałeś.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5214 /* ~Świetnie. Keldorowi powinno to wystarczyć. Jak na razie koniec z kuciem.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5215 /* ~Dla mnie wystarczy. Czas rozpłatać kilka głów. Jak na razie koniec z kuciem.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5216 /* ~Żar jest przytłaczający. Przynajmniej próba została ukończona wraz z wykuciem młota.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5217 /* ~Żar jest przytłaczający.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #5218 /* ~No, to jest bardzo ładny młot dwuręczny... dobrze ukształtowany, wyważony i doskonale leży ci w dłoniach.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5219 /* ~Dobrze. Po prostu pokażę to Keldorowi... i może zatrzymam ten młot, aby zmiażdżyć kilka głów.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5220 /* ~Dobrze. To powinno się przydać.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5221 /* ~Moc kuźni jest przytłaczająca. Przynajmniej zakończył się test Bogowców, zdany z wyróżnieniem.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5222 /* ~Moc kuźni jest przytłaczająca.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0
  SAY #5223 /* ~To ma być topór? Wygląda bardziej jak młot, chociaż posiada ostre krawędzie, więc najlepiej nazwać go po prostu toporem i dać sobie spokój.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5224 /* ~Hmm. Cóż, spełnia to wymagania Keldora.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5225 /* ~Hmm. Może uda mi się sprzedać go na złom.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5226 /* ~Żar i siła piekła szalejącego w kuźni okazują się być nie do powstrzymania. Przynajmniej próba się skończyła.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5227 /* ~Żar i siła piekła szalejącego w kuźni okazują się być nie do powstrzymania.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #5228 /* ~To całkiem kompetentnie wykonane narzędzie. Nie przyniesie ci chwały, ale jest użyteczne i groźne.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5229 /* ~Wystarczająco dobre. Keldor z pewnością będzie to podziwiał.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5230 /* ~Kompetentnie wykonany, powinien wystarczyć - ta kompetencja mimo wszystko przecina skórę i miażdży kości.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5231 /* ~Duszący czarny dym i żar kuźni to zbyt wiele. Przynajmniej próba została ukończona.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5232 /* ~Duszący czarny dym i żar kuźni to zbyt wiele.~ */ DO ~IncrementGlobal("Forge","GLOBAL",1)
GiveItemCreate("Ax",Protagonist,1,0,0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.2
  SAY #5233 /* ~Ten topór, gdyby go nieco ozdobić, mógłby znaleźć się w dłoniach najlepszych wojowników. Jest aż tak dobry.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5234 /* ~Zawsze wiedziałem, że to we mnie tkwi. Teraz pokazać to Keldorowi... i może wypróbować tę broń.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5235 /* ~Ten topór i ja spędzimy ze sobą wiele miłych chwil. Po prostu to czuję.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5236 /* ~To kawał dobrej roboty. Niestety, żar kuźni okazał się być zbyt silny, by móc go dłużej wytrzymać.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5237 /* ~Niestety, żar kuźni okazał się być zbyt silny, by móc go dłużej wytrzymać.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 3.0
  SAY #5238 /* ~Co chcesz zrobić najpierw?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5239 /* ~Przygotuj szczypce.~ */ GOTO 26
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5240 /* ~Uderz młotem w kowadło.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5241 /* ~Podnieś rudę.~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5242 /* ~Podnieś rudę szczypcami i przytrzymaj w płomieniach kuźni.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5243 /* ~Umieść rudę na kowadle i zacznij kuć.~ */ GOTO 30
  IF ~~ THEN REPLY #5244 /* ~Odejdź od kuźni.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #5249 /* ~Trzymasz mocno szczypce, a pot spływa z ciebie strumieniami. Co chcesz zrobić teraz?~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5250 /* ~Uderz młotem w kowadło.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5251 /* ~Podnieś rudę szczypcami i przytrzymaj w płomieniach.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5252 /* ~Umieść rudę na kowadle i zacznij kuć.~ */ GOTO 30
  IF ~~ THEN REPLY #5253 /* ~Odejdź od kuźni.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 27.1 28.0
  SAY #5254 /* ~Uderzasz kilka razy w puste kowadło, posyłając w obojętne niebiosa brzęk metalu o metal. Ciężka, gorąca praca - i okupiona potem. Co teraz?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5255 /* ~Przygotuj szczypce.~ */ GOTO 26
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5256 /* ~Uderz młotem w kowadło.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5257 /* ~Podnieś rudę.~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5258 /* ~Podnieś rudę szczypcami i przytrzymaj w płomieniach kuźni.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5259 /* ~Umieść rudę na kowadle i zacznij kuć.~ */ GOTO 30
  IF ~~ THEN REPLY #5260 /* ~Odejdź od kuźni.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 27.2
  SAY #5261 /* ~Trzymasz w dłoniach grudę rudy. Tu, gdzie stoisz, żar kuźni jest prawie na tyle silny, by roztopić żelazo - praktycznie parzy ci skórę. Dobrze, że jesteś chroniony przed ogniem. Co teraz?~ */
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5262 /* ~Uderz młotem w kowadło.~ */ GOTO 27
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5263 /* ~Przytrzymaj rudę szczypcami w płomieniach kuźni.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5264 /* ~Umieść rudę na kowadle i zacznij kuć.~ */ GOTO 30
  IF ~~ THEN REPLY #5265 /* ~Trzymając rudę w dłoniach, włóż ją do ognia.~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,64,RESISTFIRE)
~ THEN REPLY #5266 /* ~Trzymając rudę w dłoniach, włóż ją do ognia.~ */ GOTO 45
  IF ~~ THEN REPLY #5267 /* ~Odejdź od kuźni.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.1 27.3 28.1
  SAY #5268 /* ~Ruda szybko mięknie i po chwili można zacząć nad nią pracować. Twoje dłonie stają się śliskie od potu.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5269 /* ~Połóż miękką rudę na kowadle i nadaj jej kształt.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ GOTO 32
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #5270 /* ~Mój młot! Zapomniałem zabrać młota, by móc nad tym pracować! Zaraz wracam!~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~~ THEN REPLY #5271 /* ~Odejdź od kuźni.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.4 26.2 27.4 28.2
  SAY #5272 /* ~Kładziesz zimną rudę na kowadle i uderzasz w nią młotem. Rozbijasz ją na mniejsze, bezużyteczne grudki. Płomienie szaleją w pobliskiej kuźni, posyłając w niebo smród płonącego metalu.~ */
  IF ~~ THEN REPLY #5273 /* ~Odejdź od kuźni.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.3
  SAY #5274 /* ~Ból od płomieni jest niesamowity. Ruda mięknie w twoich dłoniach jak glina, powietrze wypełnia smród palonego ciała. Żelazo stapia się z twoją dłonią, a ty mdlejesz z bólu.~ */
  IF ~~ THEN REPLY #5276 /* ~Zemdlej.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 33.3 34.3 35.3
  SAY #5275 /* ~Co chciałbyś wykuć?~ */
  IF ~~ THEN REPLY #5277 /* ~Coś małego i niebezpiecznego: stiletto!~ */ GOTO 33
  IF ~~ THEN REPLY #5278 /* ~Młot dwuręczny.~ */ GOTO 34
  IF ~~ THEN REPLY #5279 /* ~Topór bojowy.~ */ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #5281 /* ~Stiletto... szybka, łatwa broń - i taka, która znacznie szybciej pozwoli ci opuścić to piekło. Czy jesteś pewien, że chcesz wykuć stiletto?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5282 /* ~Tak.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5283 /* ~Tak.~ */ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5284 /* ~Tak.~ */ GOTO 38
  IF ~~ THEN REPLY #5285 /* ~Nie, raczej wykuję coś innego.~ */ GOTO 32
  IF ~~ THEN REPLY #5286 /* ~Nie, jak na razie koniec z kuciem.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #5287 /* ~Młot - niewiele pracy, co pozwoli ci szybko uciec od tego gorąca. Czy jesteś pewien, że chcesz wykuć młot?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5288 /* ~Tak.~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5289 /* ~Tak.~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5290 /* ~Tak.~ */ GOTO 41
  IF ~~ THEN REPLY #5291 /* ~Nie, raczej wykuję coś innego.~ */ GOTO 32
  IF ~~ THEN REPLY #5292 /* ~Nie, jak na razie koniec z kuciem.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #5293 /* ~Zrobienie topora potrwa chwilę, podczas której będzie ci wybitnie nieprzyjemnie, ale przynajmniej nie spłoniesz. Czy jesteś pewien, że chcesz wykuć topór?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5294 /* ~Tak.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5295 /* ~Tak.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5296 /* ~Tak.~ */ GOTO 44
  IF ~~ THEN REPLY #5297 /* ~Nie, raczej wykuję coś innego.~ */ GOTO 32
  IF ~~ THEN REPLY #5298 /* ~Nie, jak na razie koniec z kuciem.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #5302 /* ~Krytycznie spoglądasz na swoją pracę - nie jest to dobrze wykonana broń, ale przynajmniej coś udało ci się zrobić.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5303 /* ~To musi wystarczyć, aby zdać test.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5304 /* ~Sądzę, że jest to użyteczne...~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.1
  SAY #5305 /* ~Wykułeś stiletto. Odchodzisz od płomieni, by podziwiać swoje dzieło.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5306 /* ~To jest stiletto. Wystarczy, aby przejść próbę.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5307 /* ~To jest stiletto. Wygląda ładnie i użytecznie.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2
  SAY #5308 /* ~To dopiero ładny kawał roboty! Twoje stiletto jest nie tylko użyteczne, ale doskonale wyważone i wygląda groźnie. Dobra robota.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5309 /* ~Ten przedmiot będzie mi wiernie służyć. Z pewnością zrobi wrażenie na Keldorze! Czas wydostać się z tych płomieni.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5310 /* ~Ten przedmiot będzie mi wiernie służył w przyszłych próbach. Teraz muszę wydostać się z tych płomieni.~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.0
  SAY #5311 /* ~Młot, który wykułeś, wygląda mniej więcej tak, jakbyś po prostu znalazł kawał żelaza. W ostateczności może być.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5313 /* ~Jak dla mnie to wygląda całkiem nieźle. Teraz zaniosę go Keldorowi.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5312 /* ~Tyle kłopotu dla kawałka metalu? Moce nad nami! Po prostu się stąd zwinę.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.1
  SAY #5314 /* ~Spójrz! To młot dwuręczny... i wygląda podobnie do innych, jakie widziałeś.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5315 /* ~Świetnie. Keldorowi powinno to wystarczyć. Jak na razie koniec z kuciem.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5316 /* ~Dla mnie wystarczy. Czas rozpłatać kilka głów. Jak na razie koniec z kuciem.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.2
  SAY #5317 /* ~No, to jest bardzo ładny młot dwuręczny... dobrze ukształtowany, wyważony i doskonale leży ci w dłoniach.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5318 /* ~Dobrze. Po prostu pokażę to Keldorowi... i może zatrzymam ten młot, aby zmiażdżyć kilka głów.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5319 /* ~Dobrze. To powinno się przydać.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 35.0
  SAY #5320 /* ~To ma być topór? Wygląda bardziej jak młot, chociaż posiada ostre krawędzie, więc najlepiej nazwać go po prostu toporem i dać sobie spokój.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5321 /* ~Hmm. Cóż, spełnia to wymagania Keldora.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5322 /* ~Hmm. Może uda mi się sprzedać to na złom.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 35.1
  SAY #5323 /* ~To całkiem kompetentnie wykonane narzędzie. Nie przyniesie ci chwały, ale jest użyteczne i groźne.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5324 /* ~Wystarczająco dobre. Keldor z pewnością będzie to podziwiał.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5325 /* ~Kompetentnie wykonany, powinien wystarczyć - ta kompetencja mimo wszystko przecina skórę i miażdży kości.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 35.2
  SAY #5326 /* ~Ten topór, gdyby go nieco ozdobić, mógłby znaleźć się w dłoniach najlepszych wojowników. Jest aż tak dobry.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5327 /* ~Zawsze wiedziałem, że to we mnie tkwi. Teraz pokazać to Keldorowi... i może wypróbować tę broń.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5328 /* ~Ten topór i ja spędzimy ze sobą wiele miłych chwil. Po prostu to czuję.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.4
  SAY #5329 /* ~Twoja wrodzona odporność na ogień pozwala ci trzymać rudę w płomieniach, aż w końcu żelazo mięknie i spływa ci pomiędzy palcami. Inni kowale w kuźni patrzą na ciebie z podziwem. Niestety, nie masz już rudy.~ */
  IF ~~ THEN REPLY #5330 /* ~Wyjdź.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("G_Test1","GLOBAL",0)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 46 // from:
  SAY #5331 /* ~Podchodzisz do kuźni. Żar jest niesamowity. Co robisz?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5332 /* ~Użyj kuźni.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5333 /* ~Użyj kuźni.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5334 /* ~Użyj kuźni.~ */ GOTO 3
  IF ~~ THEN REPLY #5335 /* ~Cofnij się.~ */ EXIT
END
