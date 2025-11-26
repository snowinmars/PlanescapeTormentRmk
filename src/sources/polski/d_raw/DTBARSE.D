// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTBARSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTBARSE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
Global("Slavers","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #48096 /* ~Widzisz wymizerowanego, ponurego człowieka o surowej, pomarszczonej i ogorzałej twarzy i podkrążonych oczach. Kiedy dostrzega cię, podnosi się. "Witaj w 'Bramie Zdrajców'. Jestem Plugawy Bars, właściciel zajazdu."~ */
  IF ~~ THEN REPLY #48097 /* ~"Co się stało?"~ */ GOTO 1
  IF ~~ THEN REPLY #48098 /* ~"A cóż to za dziwaczne imię?"~ */ GOTO 2
  IF ~~ THEN REPLY #48101 /* ~"Co tutaj sprzedajesz?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48107 /* ~"Muszę się gdzieś zatrzymać."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48108 /* ~"Gratulacje. Żegnaj."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #48109 /* ~"To się stało, że moja córka została porwana przez łowców niewolników, a teraz to miejsce nie utrzyma się pod ciężarem opłat i pewnikiem stracę moją gospodę na rzecz któregoś z bogatych cwaniaków z pierwszego kręgu." Spogląda na ciebie uważniej. "Ty jesteś tym facetem, który pytał o devę, prawda? Wiesz, co ci powiem? Jeśli ty mi pomożesz, ja pomogę tobie."~ */
  IF ~~ THEN REPLY #48110 /* ~"Co wiesz o devie?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #48111 /* ~"Czego więc żądasz ode mnie?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48112 /* ~"Pomówmy o tym później. Teraz mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #48113 /* ~"Pozwól, niechaj się nad tym zastanowię. Zobaczymy się później. Bywaj zdrów."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #48114 /* ~Mężczyzna patrzy z wściekłością "Bars to moje prawdziwe imię, trepie. Przydomek 'Plugawy' dodano mi później, po tym, jak kilku byłych przyjaciół zaczęło rozpuszczać bezpodstawne pogłoski na mój temat." Twoje pytanie najwyraźniej rozzłościło go nie na żarty. "A tak w ogóle, to czegóż ty chcesz do cholery? Łowca przygód z ciebie, czy co?"~ */
  IF ~~ THEN REPLY #48116 /* ~"A co? Coś się stało?"~ */ GOTO 1
  IF ~~ THEN REPLY #48117 /* ~"Chciałbym zadać ci kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #48118 /* ~"Co tutaj sprzedajesz?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48119 /* ~"Szukam kwatery."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #48120 /* ~"Gratulacje. Żegnaj."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.4 7.1
  SAY #48125 /* ~Uśmiecha się przebiegle. "Szukasz go, prawda? Mogę ci rzec, że on jest ukryty głęboko pod więzieniem. Mogę ci też powiedzieć, jak się tam dostać, i to innym sposobem niż dać się aresztować albo próbować przekupstwa. Zresztą w tych dwóch ostatnich przypadkach i tak byś do niego nie dotarł."~ */
  IF ~~ THEN REPLY #48127 /* ~"Co miałbym w zamian uczynić?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.0 7.3 8.0 12.0 13.0 14.1
  SAY #48128 /* ~"Co chcesz wiedzieć?"~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #48129 /* ~"Dlaczego to miasto jest tak opustoszałe?"~ */ JOURNAL #47843 /* ~Plugawy Bars, karczmarz w gospodzie "Brama Zdrajców" powiedział mi, że ojcowie miasta zaczęli ostatnio rozszerzać więzienie i odkryli devę, uwięzionego pod ziemią w kamiennej kuli. Oczywiście nie uwolnili go; zabrali tylko jego miecz i użyli go do zasilania cel więźniów.~ */ GOTO 7
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #48130 /* ~"Dlaczego to miasto jest tak opustoszałe?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ JOURNAL #47843 /* ~Plugawy Bars, karczmarz w gospodzie "Brama Zdrajców" powiedział mi, że ojcowie miasta zaczęli ostatnio rozszerzać więzienie i odkryli devę, uwięzionego pod ziemią w kamiennej kuli. Oczywiście nie uwolnili go; zabrali tylko jego miecz i użyli go do zasilania cel więźniów.~ */ GOTO 7
  IF ~~ THEN REPLY #48131 /* ~"Co możesz powiedzieć mi o tym miejscu?"~ */ GOTO 8
  IF ~  Global("Slavers","GLOBAL",1)
Global("Curst_Key","GLOBAL",0)
~ THEN REPLY #48132 /* ~"Chcesz więc, by coś dla ciebie załatwić. Co mam zrobić?"~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #48133 /* ~"Co wiesz o devie?"~ */ GOTO 3
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48134 /* ~"Co tutaj sprzedajesz?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48135 /* ~"Wydaję mi się, że nic. Żegnaj."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48135 /* ~"Wydaję mi się, że nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.0 4.3 6.0
  SAY #48136 /* ~"Idź i porozmawiaj z Marquezem. To były członek Harmonium. On wiele wie o łowcach niewolników. Marquez ma pierwszą część klucza, który otworzy ci drogę do odnalezienia devy. Klucz ten składa się z pięciu części, lecz nie jest to klucz w sensie materialnym. Kiedy skompletujesz wszystkie fragmenty klucza, przyjdziesz do mnie, a wówczas pozwolę ci skorzystać z mojej wiedzy. Ale póki co skoncentruj się na poszukiwaniach fragmentów klucza. Aby je zdobyć, będziesz musiał spełnić polecenia poszczególnych kluczników."~ */
  IF ~~ THEN REPLY #48137 /* ~"Pozwól, niechaj się nad tym zastanowię. A teraz mam jeszcze kilka pytań."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Plugawy Bars poprosił mnie, abym ocalił jego córkę z rąk łowców niewolników. Powiedział, żebym porozmawiał na ten temat z Marquezem, oficerem Harmonium, bawiącym w jego gospodzie.~ */ GOTO 4
  IF ~~ THEN REPLY #48138 /* ~"Nie zrobię tego."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ JOURNAL #68074 /* ~Plugawy Bars poprosił mnie, abym ocalił jego córkę z rąk łowców niewolników. Powiedział, żebym porozmawiał na ten temat z Marquezem, oficerem Harmonium, bawiącym w jego gospodzie.~ */ GOTO 9
  IF ~~ THEN REPLY #48139 /* ~"Dobrze, zrobię to."~ */ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 0.2 0.3 0.4 1.3 2.2 2.3 2.4 4.6 7.4 8.1 12.1 13.1
  SAY #48140 /* ~"Posłuchaj... Do diaska! Nie zwykłem nigdy prosić o cokolwiek obcego przybysza, ale sądzę, że jeśli ty mi pomożesz, jak mogę pomóc tobie." Mężczyzna mówi dalej w pośpiechu. "Moja córka została porwana i ma być wystawiona na sprzedaż. Jeżeli nie będę miał jej przy sobie do pomocy, stracę tę gospodę. A mam informacje, które na pewno uznasz za wielce wartościowe... No co? Coś za coś, przysługa za przysługę? Wchodzisz w to?"~ */
  IF ~~ THEN REPLY #48141 /* ~"Co mam zrobić?"~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Plugawy Bars poprosił mnie, abym ocalił jego córkę z rąk łowców niewolników. Powiedział, żebym porozmawiał na ten temat z Marquezem, oficerem Harmonium, bawiącym w jego gospodzie.~ */ GOTO 5
  IF ~~ THEN REPLY #48142 /* ~"Zapomnij. Na razie nie mam czasu."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #48143 /* ~"He, he... Mnóstwo kłopotów, jak zwykle. Wszystko zaczęło się od wiercenia dziur w ziemi dla powiększenia więzienia. Wtedy znaleziono tego devę, złożonego w wielkim obsydianowym kloszu, przytwierdzonym łańcuchami do posadzki. Zabrano devie jego miecz i zaczęto używać jego mocy do utrzymywania przestępców w klatkach. Długo debatowano nad tym, co też uczynić z tym niebianinem, i wydzierano sobie włosy z głów, próbując wykoncypować, jakiż też użytek można zrobić z takiego znaleziska, i jak użyć go przeciw nieprzyjaciołom... I wtedy właśnie uderzyła zaraza."~ */
  IF ~~ THEN REPLY #48144 /* ~"Zaraza?"~ */ JOURNAL #48160 /* ~Plugawy Bars powiedział mi, że Klątwa jest sparaliżowana z powodu zarazy, która nawiedziła miasto niedługo po tym, jak władze miejskie otworzyły więzienie devy.~ */ GOTO 12
  IF ~~ THEN REPLY #48145 /* ~"Co wiesz o devie?"~ */ GOTO 3
  IF ~~ THEN REPLY #48146 /* ~"Dlaczego deva został uwięziony?"~ */ GOTO 13
  IF ~~ THEN REPLY #48147 /* ~"Mam jeszcze kilka innych pytań."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48148 /* ~"Dzięki. Żegnaj."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48159 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #48161 /* ~"Chcesz usłyszeć o tym miejscu? To siedlisko plotek i kalumnii! Nikt tu nie ufa nikomu. Nikt nikomu nie śpieszy z pomocą, chyba że widzi w tym jakiś interes. Każdy nienawidzi każdego i każdy szuka na każdego haka. Ktoś taki, jak ty... Jesteś wymarzonym celem dla wszystkich z nich, bo nie znasz mechanizmów, która rządzą tym miejscem. Toteż jasne jest jak słońce, że samodzielnie sobie tutaj nie poradzisz."~ */
  IF ~~ THEN REPLY #48162 /* ~"Mam jeszcze kilka innych pytań."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48163 /* ~"Dzięki. Żegnaj."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48164 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",6)
~ THEN BEGIN 9 // from: 5.1 6.1 14.0
  SAY #48165 /* ~"Jeśli ty nie oddasz mi przysługi, wówczas i ja ci nie pomogę. Wynocha stąd."~ */
  IF ~~ THEN REPLY #48166 /* ~"Nie. Co tutaj sprzedajesz?"~ */ GOTO 11
  IF ~~ THEN REPLY #48167 /* ~"Nie. Szukam kwatery."~ */ GOTO 11
  IF ~~ THEN REPLY #48168 /* ~"Zmieniłem zdanie. Pomogę ci."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #48169 /* ~"Zatem odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 9.2
  SAY #48170 /* ~"Marquez powie ci, co masz robić, a kiedy skończysz, skieruje cię do następnej osoby, która ma klucz."~ */
  IF ~~ THEN REPLY #48171 /* ~"Żegnaj."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",1)
~ JOURNAL #68074 /* ~Plugawy Bars poprosił mnie, abym ocalił jego córkę z rąk łowców niewolników. Powiedział, żebym porozmawiał na ten temat z Marquezem, oficerem Harmonium, bawiącym w jego gospodzie.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.1
  SAY #48172 /* ~"Dostaniesz to tylko wtedy, jeśli zdołasz mnie zabić - a jeżeli to uczynisz, to nigdzie nie zajdziesz w tym mieście. Będziesz tu spalony, trepie. Nie żartuję. Nigdy stąd nie wyjdziesz."~ */
  IF ~~ THEN REPLY #48173 /* ~Mimo wszystko zabij go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #48174 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0
  SAY #48175 /* ~"Otóż to. Coś, co utrzymuje lud w pokorze. Coś, co czyni ludzi zapatrzonymi w siebie i nieprzyjemnymi, a przy tym i zbyt słabymi, aby mogli swój stan odmienić. Straże zamknęły tę część miasta i doprawdy wiele im nie potrzeba. W dzisiejszych czasach człowiek trafia do lochów pod byle pretekstem. Nie wiem, jak się tutaj dostałeś, ale nie wydostaniesz się stąd, dopóki nie znajdziesz portalu."~ */
  IF ~~ THEN REPLY #48176 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48177 /* ~"Dzięki. Żegnaj."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48178 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2
  SAY #48179 /* ~Mężczyzna patrzy na ciebie, jakby podejrzewał, że stroisz sobie z niego żarty. "Powiedziałem przecież, że oni znaleźli go pogrzebanego w ziemi, czy nie? Znaczy to, że nie mam pojęcia, jak on się tam znalazł... Żałuję, że nie jestem na tyle potężny, abym mógł schwytać devę w pułapkę. Do tego potrzeba wiele siły."~ */
  IF ~~ THEN REPLY #48180 /* ~"Dobrze więc, odpowiedz na kilka moich pytań."~ */ GOTO 4
  IF ~  Global("Slavers","GLOBAL",0)
~ THEN REPLY #48181 /* ~"Dzięki. Żegnaj."~ */ DO ~SetGlobal("Slavers","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48182 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 18 19 17 15 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Slavers","GLOBAL",6)
~ THEN BEGIN 14 // from:
  SAY #48183 /* ~W jego oczach pojawia się niezręcznie maskowany niepokój, kiedy wypowiada to pytanie: "Czy dowiedziałeś się już czegoś o mojej córce? Tak bardzo się o nią martwię. Jeśli dowiesz się czegoś o niej, powiedz o wszystkim Marquezowi."~ */
  IF ~  Global("Slavers","GLOBAL",1)
~ THEN REPLY #48184 /* ~"Nie zamierzam jej szukać."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 9
  IF ~~ THEN REPLY #48185 /* ~"Jeszcze nie. Mam kilka pytań."~ */ GOTO 4
  IF ~~ THEN REPLY #48186 /* ~"Jeszcze nie. Co tutaj sprzedajesz?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48187 /* ~"Jeszcze nie. Najpierw chciałbym znaleźć tutaj kwaterę."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
!Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #48188 /* ~"Tak. Powinna tutaj niebawem wrócić. Pójdę teraz porozmawiać z Marquezem. Żegnaj."~ */ EXIT
  IF ~  Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66863 /* ~"Zginęła, kiedy próbowałem ją uratować. Pójdę teraz porozmawiać z Marquezem."~ */ DO ~SetGlobal("Slavers","GLOBAL",7)
~ EXIT
  IF ~~ THEN REPLY #66864 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
Global("Slavers","GLOBAL",7)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
~ THEN BEGIN 15 // from:
  SAY #48189 /* ~W jego oczach mieszka nieukojony ból. "Czego chcesz, śmiałku?"~ */
  IF ~~ THEN REPLY #48190 /* ~"O co chodzi z tym kluczem?"~ */ GOTO 16
  IF ~~ THEN REPLY #48191 /* ~"Co tutaj sprzedajesz?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48192 /* ~"Szukam kwatery."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48193 /* ~"Niczego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #48194 /* ~"To klucz, ale to nie klucz w sensie materialnym, jeśli wiesz, co mam na myśli. Kiedy zbierzesz wszystkie klucze, przyjdź i powiedz mi o tym, a moja pamięć odblokuje się. Do tego czasu, niechaj pozostanie to tajemnicą. Musisz spełnić życzenia kluczników. Czy to wszystko, czego chciałeś?"~ */
  IF ~~ THEN REPLY #48195 /* ~"Co tutaj sprzedajesz?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48196 /* ~"Szukam kwatery."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48197 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
GlobalGT("Curst_Key","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #48198 /* ~"Czy poczyniłeś jakieś postępy w sprawie tego klucza? Twoja mina zdaje się tego raczej nie potwierdzać. Przyłóż się do tego, a na wyniki nie będziesz musiał długo czekać."~ */
  IF ~~ THEN REPLY #48199 /* ~"O co chodzi z tym kluczem?"~ */ GOTO 16
  IF ~~ THEN REPLY #48200 /* ~"Co tutaj sprzedajesz?"~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48201 /* ~"Szukam kwatery."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48202 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
Global("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #48203 /* ~"Musisz wypełnić jeszcze jedno zadanie. Widzisz tego pijanego łotra Chek'kę Plute'a? Ubij go dla mnie." Podnosi głos "Hej, Chek'ka! Śmierć idzie po ciebie!"~ */
  IF ~~ THEN EXTERN ~DCHEKKA~ 4
END

IF WEIGHT #3 ~  Global("Curst_Key","GLOBAL",6)
GlobalGT("Slavers","GLOBAL",5)
GlobalGT("Chekka_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #48204 /* ~"Teraz, kiedy żeś już zabił tego pijanicę, brama stoi przed tobą otworem. Czyś gotowy na to, by w nią wejść? Nie będzie już odwrotu, drzwi zostaną zamknięte, zakratowane i zabezpieczone zaklęciami, zaraz po tym, jak w nie wejdziesz. Czy to jest to, czego pragniesz?"~ */
  IF ~~ THEN REPLY #48205 /* ~"Jestem gotów."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48206 /* ~"Najpierw chciałbym odpocząć w gospodzie."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48207 /* ~"Najpierw chciałbym rzucić okiem na to, co tutaj sprzedajesz."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48208 /* ~"Jeszcze nie."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.3 21.3
  SAY #48209 /* ~"Więc wróć do mnie, kiedy będziesz się czuł na siłach."~ */
  IF ~~ THEN REPLY #48210 /* ~"Uczynię tak. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 ~  Global("Curst_Key","GLOBAL",6)
Global("Slavers","GLOBAL",5)
~ THEN BEGIN 21 // from:
  SAY #48211 /* ~"Gotowyś do wyjścia? Nie będzie już odwrotu, drzwi zostaną zamknięte, zakratowane i zabezpieczone zaklęciami, zaraz po tym, jak w nie wejdziesz. Czy to jest to, czego pragniesz?"~ */
  IF ~~ THEN REPLY #48212 /* ~"Jestem już gotowy."~ */ DO ~AddexperienceParty(175000)
TeleportParty("AR0708",[3947.2162],4)
~ EXIT
  IF ~~ THEN REPLY #48213 /* ~"Najpierw chciałbym odpocząć w gospodzie."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48214 /* ~"Najpierw chciałbym rzucić okiem na to, co tutaj sprzedajesz."~ */ DO ~StartStore("Barse",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #48215 /* ~"Jeszcze nie."~ */ GOTO 20
END
