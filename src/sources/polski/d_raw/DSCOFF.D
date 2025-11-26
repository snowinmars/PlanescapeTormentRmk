// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCOFF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCOFF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3032 /* ~Widzisz przed sobą chudego mężczyznę, który, zgarbiony nad biurkiem, pisze coś na kawałku papieru. Jego rzednące włosy są upięte z tyłu w kok, a na zakrzywionym nosie siedzą okulary w cienkiej oprawce. Jego wiek jest trudny do określenia, może ma dwadzieścia lat, ale równie dobrze można by powiedzieć, że ma czterdzieści. Kiedy się do ciebie odzywa, nawet nie podnosi na ciebie wzroku. "Czego chcesz? Tylko szybko."~ */
  IF ~  Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #3033 /* ~"Kim jesteś?"~ */ GOTO 1
  IF ~~ THEN REPLY #61601 /* ~"Co tu robisz?"~ */ GOTO 3
  IF ~~ THEN REPLY #65168 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65169 /* ~"Zginęła mi czaszka."~ */ GOTO 4
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65170 /* ~"Miasto musi spłonąć."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~~ THEN REPLY #65172 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65203 /* ~"Giltspur poprosił mnie, żebym dostarczył ci tę ulotkę. Masz ją wydrukować w stu egzemplarzach."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~~ THEN REPLY #66220 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65181 /* ~"Mam na imię Penn, trepie. A twoje pytanie jest przy okazji odpowiedzią na moje: nie miałeś bladego pojęcia, że to jest drukarnia, zanim tu wlazłeś, a teraz wziąłeś sobie za punkt honoru, żeby tracić i swój i mój czas."~ */
  IF ~~ THEN REPLY #65200 /* ~"Co tu drukujesz?"~ */ GOTO 2
  IF ~~ THEN REPLY #65201 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65202 /* ~"Dobrze. Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 12.1
  SAY #65182 /* ~"Księgi. Pamflety. Ulotki. Słowa. Listy. Wszystko." Po chwili mężczyzna dodaje. "Choć nigdy nie wydrukuję żadnych sprośności, ani nie wypełnię żadnych twoich perwersyjnych zachcianek."~ */
  IF ~~ THEN REPLY #65236 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65237 /* ~"Dobrze. Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 0.2 12.2
  SAY #65183 /* ~Mężczyzna obrzuca cię przenikliwym spojrzeniem i przestaje pisać. "Czyżbyś był aż tak tępy? To drukarnia. Drukuję tu różne rzeczy. Wystarczy się rozejrzeć wkoło."~ */
  IF ~~ THEN REPLY #65238 /* ~"Co tu drukujesz?"~ */ GOTO 2
  IF ~~ THEN REPLY #65239 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65240 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 12.4
  SAY #65184 /* ~Mężczyzna parska. "Z mojego punktu widzenia też na to wygląda."~ */
  IF ~~ THEN REPLY #65241 /* ~"Nie mów do mnie takim tonem, albo tego pożałujesz."~ */ GOTO 14
  IF ~~ THEN REPLY #65242 /* ~"Mówię poważnie. Ukradziono mi jednego z moich towarzyszy."~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #65243 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65244 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.6 12.5
  SAY #65185 /* ~Mężczyzna bierze od ciebie ulotkę, przygląda się jej, po czym mówi. "Zrobię ją dla niego później. Idź mu powiedz." Potem odwraca się z powrotem do swojego biurka.~ */
  IF ~~ THEN REPLY #65245 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65248 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #65186 /* ~"W takim razie popytaj o Lotara, Pana Kości. Ludzie powiadają, że ma całą biblioteczkę czaszek. Ale nie wiem, gdzie go szukać, a nawet gdybym wiedział, to bym ci nie powiedział - Lotar wie o magii więcej, niż niektóre trepy mogą sobie wyobrazić, a ja nie mam zamiaru ściągać na siebie jego gniewu." Mężczyzna odwraca się z powrotem do swoich dokumentów. "Teraz wynoś się stąd."~ */
  IF ~~ THEN REPLY #65246 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65249 /* ~"Nie mów do mnie takim tonem, przyjacielu."~ */ GOTO 14
  IF ~~ THEN REPLY #65250 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.4 12.6
  SAY #65187 /* ~"Co to? Co powiedziałeś? To nie ma dla mnie żadnego znaczenia."~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65251 /* ~"Powiedziałem: Miasto musi spłonąć."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65252 /* ~"Przysyła mnie Bedai-Lin."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65253 /* ~"Mniejsza z tym. Żegnaj."~ */ GOTO 20
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65254 /* ~"Powiedziałem: Miasto musi spłonąć."~ */ GOTO 21
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65255 /* ~"Przysyła mnie Bedai-Lin."~ */ GOTO 22
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65256 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #65188 /* ~.~ */
  IF ~~ THEN REPLY #65247 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65257 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 12.8
  SAY #65189 /* ~"List miłosny, co? Dobrze. Ale to cię będzie kosztowało. Powiedzmy... ech... sto miedziaków. Wygląda na to, że strasznie ci na tym zależy."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65258 /* ~"Proszę."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #65259 /* ~"Nie dałbyś mi zniżki?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #65260 /* ~"Nie dałbyś mi zniżki?"~ */ GOTO 16
  IF ~~ THEN REPLY #65261 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 12.3
  SAY #65190 /* ~Mężczyzna bierze od ciebie kartkę, rzuca na nią okiem, a potem zwija w kulkę, która natychmiast zamienia się w popiół. Następnie spogląda na ciebie znacząco. "Wygląda na to, że ktoś szkaluje moje imię. Chciałeś czegoś?"~ */
  IF ~~ THEN REPLY #65262 /* ~"Czy nie martwi cię to, że jesteś tak oczerniany?"~ */ GOTO 17
  IF ~~ THEN REPLY #65263 /* ~"Chcę przystąpić do waszej grupy."~ */ GOTO 18
  IF ~~ THEN REPLY #65264 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65265 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 15.0 16.0
  SAY #65191 /* ~Mężczyzna bierze od ciebie pieniądze, zastanawia się nad czymś przez chwilę, a potem wyjmuje z szuflady perfumowaną kartkę papieru. Potem, używając kwiecistego i eleganckiego pisma, kreśli na niej kilka nic nie znaczących zdań o miłości. "To wystarczy, na pewno."~ */
  IF ~~ THEN REPLY #65266 /* ~"Tak. Mam jeszcze parę innych pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65267 /* ~"Tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.5 1.1 2.0 3.1 4.2 5.0 6.0 8.0 10.2 11.0 15.1 16.1 17.1 18.0 19.0 21.0 22.0 25.0 32.0 77.2 78.0 79.1
  SAY #65192 /* ~"Czy one mają coś wspólnego z moją pracą?"~ */
  IF ~~ THEN REPLY #65268 /* ~"Hmmm, nie..."~ */ GOTO 13
  IF ~~ THEN REPLY #65269 /* ~"Co tu drukujesz?"~ */ GOTO 2
  IF ~~ THEN REPLY #65270 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~  PartyHasItem("PenNote")
~ THEN REPLY #65271 /* ~"Czy to ty napisałeś tę wiadomość, którą znalazłem w Kostnicy?"~ */ DO ~DestroyPartyItem("PenNote",TRUE)
~ GOTO 10
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65272 /* ~"Zginęła mi czaszka."~ */ GOTO 4
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65273 /* ~"Giltspur poprosił mnie, żebym dostarczył ci tę ulotkę. Masz ją wydrukować w stu egzemplarzach."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 5
  IF ~  GlobalGT("Smuggle","GLOBAL",4)
!Global("Know_Penn","AR0509",1)
~ THEN REPLY #65274 /* ~"Tak. Miasto musi spłonąć."~ */ DO ~SetGlobal("Know_Penn","AR0509",1)
~ GOTO 7
  IF ~  Global("Know_Penn","AR0509",1)
~ THEN REPLY #65275 /* ~"Miasto musi spłonąć."~ */ GOTO 23
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65276 /* ~"Chciałbym, żebyś napisał dla mnie list miłosny."~ */ GOTO 9
  IF ~~ THEN REPLY #65300 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65193 /* ~"W takim razie tracisz swój i mój czas. Żegnam." Mężczyzna odwraca się z powrotem do swojego biurka.~ */
  IF ~~ THEN REPLY #65280 /* ~"Nie próbuj mnie ignorować."~ */ GOTO 14
  IF ~~ THEN REPLY #65281 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0 6.1 13.0 18.1 19.1 32.1 77.0 79.0
  SAY #65194 /* ~Mężczyzna wykonuje ruch ręką... i spostrzegasz, że stoisz przed jego warsztatem.~ */
  IF ~~ THEN REPLY #65282 /* ~"Co się..."~ */ DO ~IncrementGlobal("Penn_Out","GLOBAL",1)
TeleportParty("AR0500",[3348.1081],10)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.1
  SAY #65195 /* ~"Dobrze. Siedemdziesiąt pięć miedziaków. Możesz się zgodzić albo nie."~ */
  IF ~  PartyGoldGT(74)
~ THEN REPLY #65283 /* ~"Zgoda."~ */ DO ~TakePartyGold(75)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65284 /* ~"Nie zgadzam się. Mam jeszcze parę innych pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65285 /* ~"Nie zgadzam się. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.2
  SAY #65196 /* ~Mężczyzna wybucha salwą śmiechu, po czym szybko poważnieje. "Nie sądzę, przyjacielu. Sto miedziaków albo nic z tego."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #65286 /* ~"Proszę."~ */ DO ~TakePartyGold(100)
GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 11
  IF ~~ THEN REPLY #65287 /* ~"W takim razie zapomnij o tym. Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65288 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #65197 /* ~"Dlaczego miałbym być? To tylko konkurencja z Sigil. Poza tym, chyba dobrze wiem, kto to może być, i przygotowałem dla niego małą niespodziankę."~ */
  IF ~~ THEN REPLY #65289 /* ~"Czy mogę ci jakoś pomóc?"~ */ GOTO 19
  IF ~~ THEN REPLY #65290 /* ~"W porządku. W takim razie mam jeszcze parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65291 /* ~"Wspaniale. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.1
  SAY #65198 /* ~Mężczyzna spogląda na ciebie ciężkim wzrokiem. "Jestem pewny, że pomyliłeś mnie z kimś innym. Masz dla mnie jakieś zlecenie, czy mam cię wyrzucić?"~ */
  IF ~~ THEN REPLY #65292 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65293 /* ~"Będziesz mnie musiał wyrzucić."~ */ GOTO 14
  IF ~~ THEN REPLY #65294 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #65199 /* ~"Czy naprawdę jesteś taki głupi, na jakiego wyglądasz? Oczywiście, że nie."~ */
  IF ~~ THEN REPLY #65295 /* ~"W takim razie w porządku. Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65296 /* ~"Nie mów do mnie takim tonem."~ */ GOTO 14
  IF ~~ THEN REPLY #65297 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.0 7.1 7.2
  SAY #65204 /* ~"Słyszałem o tobie." Mężczyzna spogląda na ciebie świdrującym wzrokiem. "Jeśli Bedai-Lin przysłała cię do mnie, to znaczy, że chcesz do nas przystać. Mam rację?"~ */
  IF ~~ THEN REPLY #65298 /* ~"Tak."~ */ GOTO 31
  IF ~~ THEN REPLY #65299 /* ~"Nie bardzo."~ */ GOTO 32
END

IF ~~ THEN BEGIN 21 // from: 7.3
  SAY #65205 /* ~"To dokładnie nic dla mnie nie znaczy. No, może tyle, że zwracasz uwagę na bzdurne gadanie kogoś, kto ma kompletnego bzika. Chcesz czegoś?"~ */
  IF ~~ THEN REPLY #65301 /* ~"Tak. Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65302 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.4
  SAY #65206 /* ~"Kto? Bedai-Lin? Czy tak się teraz nazywa ta okropna jędza?" Mężczyzna wydaje z siebie ciężkie westchnienie. "To moja była zazdrosna kochanka. Ciągle próbuje mnie wsadzić do więzienia pod różnymi pretekstami. Ale nigdy jej się nie udało mnie na niczym złapać." Potem znowu się uspokaja. "Czy chciałeś ode mnie coś jeszcze?"~ */
  IF ~~ THEN REPLY #65303 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65304 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7
  SAY #65207 /* ~"Tak, tak, już to raz mówiłeś. Co masz na myśli?"~ */
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65305 /* ~"Dlaczego Bedai-Lin przysłała mnie do ciebie, żebym ci to powiedział, jeśli to nic nie znaczy?"~ */ GOTO 25
  IF ~  Global("Lawful_Vaxis_3","GLOBAL",0)
~ THEN REPLY #65306 /* ~"Dlaczego Bedai-Lin przysłała mnie do ciebie?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #65208 /* ~"Jak myślisz, dlaczego, trepie? Pomogłeś jej sprowadzić nieszczęście na Bogowców. Myślała, że będziesz chciał zrobić coś więcej. Oferta ciągle jest otwarta. Chcesz ja czy nie?"~ */
  IF ~~ THEN REPLY #65307 /* ~"Nie teraz."~ */ GOTO 32
  IF ~~ THEN REPLY #65308 /* ~"Tak."~ */ GOTO 31
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #65209 /* ~"Stare waśnie i nieodwzajemnione żądze trzymają się bardzo długo. A tym bardziej obłąkanie." Ciężko ci wyobrazić sobie, żeby ktoś pałał żądzą do tego człowieka; obłąkanie wydaje się zdecydowanie bardziej realistyczną możliwością. "Chciałeś czegoś jeszcze?"~ */
  IF ~~ THEN REPLY #65309 /* ~"Tak, mam kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65310 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #65210 /* ~Penn spogląda na ciebie, kiedy wchodzisz do jego warsztatu. "Wynoś się stąd. I nie wracaj." Potem wykonuje ruch ręką i już za chwilę spostrzegasz, że jesteś na zewnątrz.~ */
  IF ~~ THEN REPLY #65311 /* ~"Co się dz..."~ */ DO ~TeleportParty("AR0500",[3348.1081],10)
SetGlobal("Penn_Out","GLOBAL",2)
~ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
Global("AR0902_Visited","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #65211 /* ~"Witaj z powrotem." Penn nie odrywa wzroku od swoich dokumentów. "Ebb i jego chłopcy pomogli ci wydostać się z Klątwy?" Odnosisz wrażenie, że mężczyzna nie jest ani trochę zainteresowany odpowiedzią.~ */
  IF ~~ THEN REPLY #65312 /* ~"Tak. Mam do ciebie kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65313 /* ~"I to bardzo. Masz dla mnie jeszcze jakieś zadania?"~ */ GOTO 28
  IF ~~ THEN REPLY #65314 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #65212 /* ~"Nie teraz. Dam ci znać, jak się czegoś dowiem. Potrzebujesz jeszcze czegoś, czy po prostu przyszedłeś mi przeszkadzać?"~ */
  IF ~~ THEN REPLY #65315 /* ~"Mam kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65316 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN BEGIN 29 // from:
  SAY #65213 /* ~Jak zawsze, Penn wydaje się być bardzo zajęty pisaniem. "Chcesz, żeby ci coś napisać albo wydrukować? Jeśli tak, powiedz o co ci chodzi, to się do tego zabiorę. W przeciwnym wypadku, pogadaj z komórką w Skarbcu Dziewiątego Świata, a oni się tobą zajmą."~ */
  IF ~~ THEN REPLY #65317 /* ~"Mam tylko kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65318 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 28.0 29.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.1 69.2 70.4 71.1 72.1 73.1 74.1 75.1 76.1
  SAY #65214 /* ~"Streszczaj się. Jestem zajęty."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65319 /* ~"Szukam pewnej czaszki."~ */ GOTO 33
  IF ~  PartyHasItem("GiltBill")
Global("Gilt_Miss","GLOBAL",1)
~ THEN REPLY #65320 /* ~"Giltspur poprosił mnie, żebym dostarczył ci tę ulotkę. Masz ją wydrukować w stu egzemplarzach."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",2)
TakePartyItemNum("GiltBill",1)
~ GOTO 34
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #65323 /* ~"Chciałbym, żebyś napisał dla mnie list miłosny."~ */ GOTO 36
  IF ~~ THEN REPLY #65324 /* ~"Możesz jeszcze raz powtórzyć hasło do naszej komórki?"~ */ GOTO 37
  IF ~  Global("Penn_Task","AR0509",0)
~ THEN REPLY #65325 /* ~"Nad czym teraz pracujesz?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 38
  IF ~  Global("Penn_Task","AR0509",1)
~ THEN REPLY #65326 /* ~"Nad czym teraz pracujesz?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 39
  IF ~  Global("Penn_Task","AR0509",2)
~ THEN REPLY #65327 /* ~"Nad czym teraz pracujesz?"~ */ DO ~IncrementGlobal("Penn_Task","AR0509",1)
~ GOTO 40
  IF ~  Global("Penn_Task","AR0509",3)
~ THEN REPLY #65328 /* ~"Nad czym teraz pracujesz?"~ */ GOTO 41
  IF ~~ THEN REPLY #65329 /* ~"Chciałbym porozmawiać o rewolucji..."~ */ GOTO 42
  IF ~~ THEN REPLY #65330 /* ~"Chciałbym ci zadać parę pytań dotyczących organizacji..."~ */ GOTO 70
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #65429 /* ~"Leena chce, żebym udowodnił swoją przydatność."~ */ GOTO 71
  IF ~~ THEN REPLY #65430 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 20.0 24.1
  SAY #65215 /* ~"Czy wiesz, kim jesteśmy?"~ */
  IF ~~ THEN REPLY #65331 /* ~"Powiedz mi."~ */ GOTO 43
  IF ~~ THEN REPLY #65332 /* ~"Nie. Chcę tylko zostać członkiem. Jeśli wyznajecie destrukcję, to wchodzę w to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Penn_1","GLOBALLaw",-1)
~ GOTO 43
  IF ~  Global("Good_Vaxis_3","GLOBAL",1)
~ THEN REPLY #65333 /* ~"Jeśli coś cię łączy z Vaxisem, to należysz do Ligi Rewolucyjnej."~ */ GOTO 45
END

IF ~~ THEN BEGIN 32 // from: 20.1 24.0
  SAY #65216 /* ~"W takim razie nie rozumiem w ogóle, dlaczego ze mną rozmawiasz? Czego chcesz? Czekasz aż cię wyrzucę czy co?"~ */
  IF ~~ THEN REPLY #65334 /* ~"Nie, ale mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65335 /* ~"Tak. Wyrzuć mnie."~ */ GOTO 14
  IF ~~ THEN REPLY #65336 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.0
  SAY #65217 /* ~"Na twoim miejscu poszedłbym do zniszczonego domu w pobliżu lombardu. Wewnątrz poszukaj drabiny prowadzącej na dół. Zmów pacierz i zejdź po niej. Tam znajdziesz Lotara, ale lepiej nie próbuj go denerwować. On zbiera czaszki, a jeśli twoja mu się spodoba, to sobie ją weźmie. Nieważne co z ciebie za twardziel. Uważaj na siebie..." Mężczyzna spogląda na ciebie znad swoich dokumentów. "Chciałeś czegoś jeszcze?"~ */
  IF ~~ THEN REPLY #65337 /* ~"Chcę tylko, żebyś odpowiedział jeszcze na parę pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65338 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #65218 /* ~Mężczyzna bierze od ciebie ulotkę, rzuca na nią okiem i mówi: "Przygotuję to dla niego na później. Idź i mu to powiedz." Potem z powrotem pochyla się nad swoim biurkiem.~ */
  IF ~~ THEN REPLY #65339 /* ~"Mam jeszcze parę innych pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65340 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #65219 /* ~.~ */
  IF ~~ THEN REPLY #65341 /* ~"Chcę tylko, żebyś odpowiedział jeszcze na parę pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65342 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 30.2
  SAY #65220 /* ~"List miłosny, co? Niejasny i ognisty? Dobrze." Mężczyzna myśli przez chwilę, a potem wyjmuje z szuflady perfumowaną kartkę papieru. Potem, używając kwiecistego i eleganckiego pisma, kreśli na niej kilka nic nie znaczących zdań o miłości. "To wystarczy, na pewno."~ */
  IF ~~ THEN REPLY #65343 /* ~"Dziękuję. Mam jeszcze parę innych pytań..."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ GOTO 30
  IF ~~ THEN REPLY #65344 /* ~"Dziękuję. Żegnaj."~ */ DO ~GiveItemCreate("LoveLtr",Protagonist,1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 30.3
  SAY #65221 /* ~Mężczyzna spogląda na ciebie z ukosa, podnosząc głowę znad swoich dokumentów. "Hasło brzmi 'zaćmienie'. Pośpiesz się i zrób z niego użytek, zanim je zmienią."~ */
  IF ~~ THEN REPLY #65345 /* ~"Dziękuję. Mam jeszcze parę innych pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65346 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.4
  SAY #65222 /* ~"To stos pamfletów wymierzonych przeciwko Harmonium. Już wkrótce zaleją całą Niższą Dzielnicę." Mężczyzna nie przerywa pisania. "Niedługo to skończę i będę się mógł zająć czymś innym." Jego pióro wręcz lata nad papierem.~ */
  IF ~~ THEN REPLY #65347 /* ~"Dziękuję. Mam jeszcze parę innych pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65350 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.5
  SAY #65223 /* ~"To anonimowa petycja domagająca się prawdziwej reprezentacji w sądach, zamiast tych parodii prawa, którym wydają się hołdować Guwernaci." Tym razem jego wzrok zatrzymuje się na tobie dłużej, jakby zaczynał tracić cierpliwość.~ */
  IF ~~ THEN REPLY #65348 /* ~"Dziękuję. Mam jeszcze parę innych pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65351 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 30.6
  SAY #65224 /* ~"To ulotka, w której ktoś domaga się uwolnienia pewnych więźniów politycznych z miejskich więzień. Aresztowano ich bezpodstawnie za zbrodnie, które popełniła Liga Rewolucyjna, ale chociaż nie mam nic przeciwko męczennikom za słuszną sprawę..." Mężczyzna przerywa na chwilę i spogląda na ciebie, jakby chciał podkreślić to, co powie. "Choć doceniam męczenników, to nie lubię poświęcać niewinnych. Spróbuję ich uwolnić."~ */
  IF ~~ THEN REPLY #65349 /* ~"Dziękuję. Mam jeszcze parę innych pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65352 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 30.7
  SAY #65225 /* ~Mężczyzna przyciska jeszcze silniej swoje pióro, a potem spogląda na ciebie wściekłym wzrokiem. "Może byś tak przestał zadawać te głupie pytania i zabrał się do roboty albo czegoś w tym stylu?" Z jego piersi wydobywa się ostre westchnienie. "Jestem bardzo zajęty, więc możesz mnie pytać tylko o to, co robię. Już dzieci są mniej denerwujące od ciebie, bo przynajmniej mają na tyle rozumu, żeby przestać zadawać pytania o to, co robię, kiedy rzucę im groźne spojrzenie. Czego chciałeś?"~ */
  IF ~~ THEN REPLY #65353 /* ~"Dlaczego siedzisz tutaj zamiast zrobić coś pożytecznego?"~ */ GOTO 46
  IF ~~ THEN REPLY #65354 /* ~"Chcę tylko, żebyś odpowiedział jeszcze na parę pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65355 /* ~"Nic, jeśli dalej będziesz się tak zachowywał. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.8
  SAY #65226 /* ~"Zamiast rozmawiać o rewolucji, może byś tak wyniósł się stąd i coś w tej sprawie zrobił? Zabij kogoś z Harmonium, zarżnij jakiegoś Grabarza albo coś w tym stylu. Walcz ze starym porządkiem czynami, a nie słowami."~ */
  IF ~~ THEN REPLY #65356 /* ~"To dlaczego tu siedzisz, zamiast coś robić?"~ */ GOTO 46
  IF ~~ THEN REPLY #65357 /* ~"Dobrze, dobrze. Mam jeszcze parę pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65358 /* ~"Zgoda. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 31.0 31.1
  SAY #65227 /* ~"Należymy do Ligi Rewolucyjnej. Czy wiesz, o co walczymy?"~ */
  IF ~~ THEN REPLY #65359 /* ~"Tak."~ */ GOTO 44
  IF ~~ THEN REPLY #65360 /* ~"Nie."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1 45.0 45.1
  SAY #65228 /* ~"Walczymy o zburzenie starego porządku w Sigil. Nie zgadzamy się z pozostałymi ugrupowaniami. Jesteśmy frakcją, która tak naprawdę nie jest frakcją. Zorganizowaliśmy się w imię nieporządku. Niszczymy porządek po to, żeby inni mogli go odbudować - z większymi swobodami i lepszym życiem. Stary porządek stoi na naszej drodze, a stare frakcje utrzymują ludzi w ciemnocie."~ */
  IF ~~ THEN REPLY #65361 /* ~"Myślałem, że oni szukają prawdy."~ */ GOTO 48
  IF ~~ THEN REPLY #65362 /* ~"Dlaczego oni stoją na naszej drodze?"~ */ GOTO 47
  IF ~~ THEN REPLY #65363 /* ~"Tak, wiem. I zgadzam się z tobą. Trzeba coś zrobić."~ */ GOTO 50
END

IF ~~ THEN BEGIN 45 // from: 31.2
  SAY #65229 /* ~"Zgadłeś. I to za pierwszym razem. Czy wiesz o co walczymy?"~ */
  IF ~~ THEN REPLY #65364 /* ~"Tak."~ */ GOTO 44
  IF ~~ THEN REPLY #65365 /* ~"Nie."~ */ GOTO 44
END

IF ~~ THEN BEGIN 46 // from: 41.0 42.0
  SAY #65230 /* ~Jego ręka zatrzymuje się w pół ruchu. Na papier spada kropla atramentu. "co powiedziałeś?"~ */
  IF ~~ THEN REPLY #65378 /* ~"Pytałem, dlaczego ukrywasz się w swoim warsztacie, a nie robisz czegoś dla organizacji?"~ */ GOTO 54
  IF ~~ THEN REPLY #65379 /* ~"Nic. Mniejsza z tym."~ */ GOTO 54
END

IF ~~ THEN BEGIN 47 // from: 44.1
  SAY #65231 /* ~"To proste: Słudzy starego porządku robili co mogli, żeby nie dać innym poznać cienia wieloświata. Bo co by się stało, gdybyśmy wszyscy odkryli, jak *naprawdę* rzeczy się mają? Przecież to mogłoby zburzyć ich małe światki. Ci, którym się wydaje, że odkryli prawdę, od razu stwierdzają, że wszyscy inni muszą się mylić i powinno się ich zniszczyć. To zdecydowanie nie jest forum, na którym można wygłaszać swoje przekonania."~ */
  IF ~~ THEN REPLY #65380 /* ~"Czy nie wydaje ci się, że starają się jak mogą?"~ */ GOTO 49
  IF ~~ THEN REPLY #65381 /* ~"Czy oni nie szukają prawdy?"~ */ GOTO 48
  IF ~~ THEN REPLY #65382 /* ~"Zgadzam się z tobą w zupełności. Chcę wstąpić do twojej grupy."~ */ GOTO 50
  IF ~~ THEN REPLY #65383 /* ~"Wiesz co, to wszystko zalatuje mi trochę obłąkaniem. Zapomnij o tym."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 48 // from: 44.0 47.1
  SAY #65232 /* ~"Nie. Szukają czegoś, co potwierdziłoby ich przekonania i dzięki czemu mogliby się czuć lepsi. Łudzą się, że to znaleźli, i prześladują tych, którzy się z nimi nie zgadzają."~ */
  IF ~~ THEN REPLY #65384 /* ~"Skąd wiesz, że oni nie odnaleźli wielkiej Prawdy?"~ */ GOTO 51
  IF ~~ THEN REPLY #65385 /* ~"Skąd wiesz, że oni nie robią wszystkiego, co w ich mocy?"~ */ GOTO 49
  IF ~~ THEN REPLY #65386 /* ~"Zgadzam się. Zrobię wszystko, żeby im zaszkodzić."~ */ GOTO 50
  IF ~~ THEN REPLY #65387 /* ~"Myślę, że jesteś szalony. Kiszki mi się przewracają, kiedy słyszę to całe gadanie o rewolucji."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 49 // from: 47.0 48.1
  SAY #65233 /* ~"Sługom starego porządku nie zależy na odnalezieniu prawdy, ale na utrzymaniu władzy i bogactwa. Nie będziemy mogli się rozrastać i uczyć nowych rzeczy, jeśli nie zburzymy starego porządku."~ */
  IF ~~ THEN REPLY #65388 /* ~"Skąd wiesz, że oni nie odnaleźli wielkiej Prawdy?"~ */ GOTO 51
  IF ~~ THEN REPLY #65389 /* ~"Zgadzam się. Zrobię wszystko, żeby im zaszkodzić."~ */ GOTO 50
  IF ~~ THEN REPLY #65390 /* ~"Wydaje mi się, że mylisz dobro ze złem, a twoje teorie nie trzymają się kupy."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 50 // from: 44.2 47.2 48.2 49.1 51.1
  SAY #65234 /* ~"Jeśli naprawdę jesteś taki chętny, to przydzielę ci misję. Jeśli ją wypełnisz, to staniesz się jednym z nas."~ */
  IF ~~ THEN REPLY #65391 /* ~"Najpierw chciałbym ci zadać kilka pytań dotyczących struktury waszej organizacji."~ */ GOTO 58
  IF ~~ THEN REPLY #65392 /* ~"Jaka to misja?"~ */ GOTO 59
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #65235 /* ~"Bo wielu z nich jej nie odnalazło, nawet ich najwierniejsi członkowie. A ci, którzy znaleźli 'prawdę', nie potrafią wytworzyć w sobie wiary: Grabarze uważają, że wszyscy powinniśmy umrzeć. Czuciowcy twierdzą, że powinniśmy się oddać swoich żądzom, a Cień sam przyjdzie. Bogowcy nawet jeszcze nie znaleźć Wielkiego Cienia. Wierzą tylko w to, że 'trzeba próbować, a w końcu, pewnego dnia się uda'. Dlatego wykonują niewolniczą pracę w Kuźni, aż nie umrą."~ */
  IF ~~ THEN REPLY #65393 /* ~"Chyba przedstawiasz trochę wypaczony obraz ich przekonań."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #65394 /* ~"Trzeba ich zniszczyć. Do roboty."~ */ GOTO 50
END

IF ~~ THEN BEGIN 52 // from: 47.3 48.3 49.2 51.0 54.3 55.2 56.3 57.0 59.1 60.2
  SAY #65366 /* ~"Zatem nie pochwalasz naszych metod?" Spostrzegasz, że ręka mężczyzna zaczyna się lekko trząść.~ */
  IF ~~ THEN REPLY #65395 /* ~"Tylko żartowałem."~ */ GOTO 53
  IF ~~ THEN REPLY #65396 /* ~"Nie."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1
  SAY #65367 /* ~"Chyba powinieneś wyjść na zewnątrz i jeszcze raz zastanowić się nad twoimi przekonaniami." Mężczyzna wykonuje ruch trzęsącą się dłonią, a po chwili spostrzegasz, że znajdujesz się przed warsztatem.~ */
  IF ~~ THEN REPLY #65397 /* ~"Co się..."~ */ DO ~SetGlobal("Penn_Out","GLOBAL",2)
TeleportParty("AR0500",[3348.1081],10)
~ JOURNAL #65434 /* ~Najwidoczniej rozzłościłem Penna Szydercę, właściciela sklepu drukarskiego i Anarchistę w jednej osobie, kiedy powiedziałem mu, że nie zgadzam się z jego metodami. Teleportował mnie poza swój sklep i teraz jego drzwi są dla mnie zamknięte na głucho.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 46.0 46.1
  SAY #65368 /* ~"Każda rewolucja musi mieć przywódców, trepie. Każde powstanie ktoś musi przygotować. Wydaje ci się, że frakcje można zniszczyć za pomocą samego tylko chaosu? Do tego potrzeba czegoś więcej niż tylko ataków na oślep - trzeba wymyślić dobry i spójny plan. Trzeba spojrzeć prawdzie w oczy: jedni to miecze, inni to ręce, które kierują tymi mieczami, a jeszcze inni... jeszcze inni to mózgi, które wydają rozkazy rękom."~ */
  IF ~~ THEN REPLY #65398 /* ~"A kto ustanowił cię mózgiem?"~ */ GOTO 55
  IF ~~ THEN REPLY #65399 /* ~"Dlaczego wszyscy nie są równi?"~ */ GOTO 56
  IF ~~ THEN REPLY #65400 /* ~"W porządku. Nie trzeba się tak ekscytować."~ */ GOTO 57
  IF ~~ THEN REPLY #65401 /* ~"Wydaje mi się, że twoje teorie nie trzymają się kupy. Chyba nie powinieneś być dowódcą."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 55 // from: 54.0 60.0
  SAY #65369 /* ~"Zrobiłem to sam. Wyglądało na to, że nikt inny nie palił się do tej roboty. Niektórym trzeba powiedzieć, co mają robić. Inni sami przejmują inicjatywę w swoje ręce. Ja chcę coś robić, chcę wziąć na siebie winę za niepowodzenie, a potem, kiedy moje plany zostaną spełnione, mogę ustąpić. Zrezygnowałem z wszystkiego, na czym mi zależało, żeby poprowadzić ludzi ku lepszemu życiu. To chyba wystarczające kwalifikacje."~ */
  IF ~~ THEN REPLY #65402 /* ~"A może by tak sprawić, żeby wszyscy byli równi?"~ */ GOTO 56
  IF ~~ THEN REPLY #65403 /* ~"W porządku. Nie trzeba się tak ekscytować."~ */ GOTO 57
  IF ~~ THEN REPLY #65404 /* ~"Chyba musisz być pełny łajna tanar'ri, jeśli naprawdę wierzysz, że masz odpowiednie kwalifikacje do przywództwa."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 56 // from: 54.1 55.0 58.0 60.1
  SAY #65370 /* ~"W samej naturze tego typu rewolucji leży to, że nawet nasi ludzie *nie mogą* znać całej prawdy. Nasza organizacja jest podzielona na osobne komórki, które utrzymują minimalny kontakt z głową frakcji. Dzięki temu innym frakcjom jest trudniej nam zaszkodzić. Jeśli uda się im zniszczyć jedna komórkę, to już nie dotrą na następnej, chyba że będą mieli bardzo dużo szczęścia. Ludzie nie mogą być uważani za równych, dopóki nie wypełnimy swojej misji, albo dopóki nie udowodnią, że zasługują na nasze zaufanie."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65405 /* ~"Musisz często spotykać się z konfliktem interesów."~ */ GOTO 61
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65406 /* ~"Kto należy do twojej komórki? Ilu ona ma członków?"~ */ GOTO 62
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65407 /* ~"W jaki sposób dostajecie pomoc od innych komórek?"~ */ GOTO 63
  IF ~~ THEN REPLY #65408 /* ~"To bez sensu. Ta frakcja jest skazana na niepowodzenie."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65435 /* ~"Porozmawiajmy o organizacji..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 57 // from: 54.2 55.1
  SAY #65371 /* ~"Gdybyś sam porzucił wszystko, co masz, żeby służyć innym, to nie osądzał być mnie tak pochopnie. To praca, która wymaga poświęcenia i idealizmu, ale obawiam się, że ty straciłeś już te cechy." Mężczyzna zamyśla się na chwilę. Spostrzegasz, że jego ręka zaczyna lekko drżeć.~ */
  IF ~~ THEN REPLY #65409 /* ~"Osądzam cię, bo nie wiesz nic o poświęceniu, a ty i twoje kohorty bawią się tylko anarchią. Ta organizacja to łajno."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65410 /* ~"W porządku, rozluźnij się. Porozmawiajmy o twojej organizacji..."~ */ GOTO 58
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65436 /* ~"W porządku, rozluźnij się. Porozmawiajmy o organizacji..."~ */ GOTO 70
END

IF ~~ THEN BEGIN 58 // from: 50.0 57.1 61.0 62.1 63.1
  SAY #65372 /* ~"Co chciałbyś wiedzieć?"~ */
  IF ~~ THEN REPLY #65411 /* ~"Jaka jest struktura waszej organizacji?"~ */ GOTO 56
  IF ~~ THEN REPLY #65412 /* ~"Co to za misja, która mam dla was wypełnić?"~ */ GOTO 59
  IF ~~ THEN REPLY #65413 /* ~"Jaka jest struktura waszego chaosu?"~ */ GOTO 60
  IF ~~ THEN REPLY #65414 /* ~"W jaki sposób dostajecie pomoc od innych komórek?"~ */ GOTO 63
  IF ~~ THEN REPLY #65415 /* ~"Gdzie znajdują się wasze meliny?"~ */ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 50.1 58.1 61.1 62.0 63.0
  SAY #65373 /* ~"W Dzielnicy Urzędników, w Gmachu Rozrywki, znajdziesz kamiennego genasi o imieniu Qui-Sai. Jest dla nas bardzo groźny, choć sam o tym nie wie. Znajdź go i zniszcz. Kiedy już to zrobisz, wróć do mnie, a powiem ci o naszych melinach."~ */
  IF ~~ THEN REPLY #65416 /* ~"Wrócę tu."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",1)
~ JOURNAL #65431 /* ~Penn Szyderca poprosił mnie, abym zgładził dla niego kamiennego genasi Qui-Sai, przebywającego w Dzielnicy Urzędniczej, w Miejskim Gmachu Rozrywki. Zgodziłem się.~ */ EXIT
  IF ~~ THEN REPLY #65417 /* ~"Nie zrobię tego. Nie wolno zabijać ludzi."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #65432 /* ~Powiedziałem Pennowi, że nie zabiję genasiego Qui-Sai. Deklaracja ta nieco go zdenerwowała i wyrzucił mnie ze sklepu.~ */ GOTO 52
END

IF ~~ THEN BEGIN 60 // from: 58.2
  SAY #65374 /* ~"Każda rewolucja musi mieć przywódców. Każde powstanie ktoś musi przygotować. Wydaje ci się, że frakcje można zniszczyć za pomocą samego tylko chaosu? Do tego potrzeba czegoś więcej niż tylko ataków na oślep - trzeba wymyślić dobry i spójny plan. Trzeba spojrzeć prawdzie w oczy: jedni to miecze, inni to ręce, które kierują tymi mieczami, a jeszcze inni... jeszcze inni to mózgi, które wydają rozkazy rękom."~ */
  IF ~~ THEN REPLY #65418 /* ~"A kto ustanowił cię mózgiem?"~ */ GOTO 55
  IF ~~ THEN REPLY #65419 /* ~"Dlaczego wszyscy nie są równi?"~ */ GOTO 56
  IF ~~ THEN REPLY #65420 /* ~"Wydaje mi się, że twoje teorie nie trzymają się kupy. Chyba nie powinieneś być dowódcą."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 61 // from: 56.0
  SAY #65375 /* ~"Niestety tak. Ale to lepsze niż patrzenie, jak cała organizacja ginie na stosie albo pod katowskim toporem."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",0)
~ THEN REPLY #65421 /* ~"Opowiedz mi coś więcej."~ */ GOTO 58
  IF ~~ THEN REPLY #65422 /* ~"Co to za misja, która mam wypełnić?"~ */ GOTO 59
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #65437 /* ~"Opowiedz mi coś więcej."~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 56.1 58.4
  SAY #65376 /* ~"Powiem ci, kiedy powrócisz z misji."~ */
  IF ~~ THEN REPLY #65423 /* ~"Co to za misja?"~ */ GOTO 59
  IF ~~ THEN REPLY #65424 /* ~"Opowiedz mi coś więcej o organizacji."~ */ GOTO 58
END

IF ~~ THEN BEGIN 63 // from: 56.2 58.3
  SAY #65377 /* ~"Mamy dużą sieć informatorów. Wiemy, kiedy ktoś potrzebuje pomocy, a jeśli to jest zgodne z założeniami naszej organizacji, to ją zapewniamy."~ */
  IF ~~ THEN REPLY #65425 /* ~"Co to za misja, która mam wypełnić?"~ */ GOTO 59
  IF ~~ THEN REPLY #65426 /* ~"Opowiedz mi coś więcej o organizacji."~ */ GOTO 58
END

IF ~  Global("Waste_Quisai","GLOBAL",1)
~ THEN BEGIN 64 // from:
  SAY #65438 /* ~"No i co? Załatwiłeś już sprawę z genasi Qui-Saiem?"~ */
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #65454 /* ~"On nie żyje."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Powiadomiłem Penna Szydercę o uśmierceniu Qui-Sai. Był szczęśliwy, jak nigdy w życiu. Oczywiście przyjął mnie od razu do swojej komórki Ligi Rewolucyjnej i powiedział mi, jak znaleźć innych jej członków - w magazynie zwanym Kryptą Dziewiątego Świata. Wtajemniczył mnie również w hasło, jakie powinienem im podać. To 'zaćmienie'.~ */ GOTO 69
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65455 /* ~Kłamstwo: "On nie żyje."~ */ GOTO 65
  IF ~  Global("Quisai_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #65456 /* ~"Jeszcze nie."~ */ GOTO 66
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #66565 /* ~"On nie żyje."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Powiadomiłem Penna Szydercę o uśmierceniu Qui-Sai. Był szczęśliwy, jak nigdy w życiu. Oczywiście przyjął mnie od razu do swojej komórki Ligi Rewolucyjnej i powiedział mi, jak znaleźć innych jej członków - w magazynie zwanym Kryptą Dziewiątego Świata. Wtajemniczył mnie również w hasło, jakie powinienem im podać. To 'zaćmienie'.~ */ GOTO 69
  IF ~  GlobalGT("Quisai_DEAD_KAPUTZ","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66566 /* ~"On nie żyje."~ */ DO ~SetGlobal("Waste_QuiSai","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",1)
SetGlobal("Know_An_Pass","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
AddexperienceParty(16000)
~ JOURNAL #65433 /* ~Powiadomiłem Penna Szydercę o uśmierceniu Qui-Sai. Był szczęśliwy, jak nigdy w życiu. Oczywiście przyjął mnie od razu do swojej komórki Ligi Rewolucyjnej i powiedział mi, jak znaleźć innych jej członków - w magazynie zwanym Kryptą Dziewiątego Świata. Wtajemniczył mnie również w hasło, jakie powinienem im podać. To 'zaćmienie'.~ */ GOTO 69
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #65439 /* ~Penn spogląda na ciebie szyderczo, po czym odwraca się z powrotem do swojego biurka. "Nie uda ci się mnie okłamać... Wracaj i skończ swoje zadanie. I nie wracaj dopóki tego nie zrobisz."~ */
  IF ~~ THEN REPLY #65457 /* ~"A co by było, gdybym po prostu cię wsypał?"~ */ GOTO 67
  IF ~~ THEN REPLY #65458 /* ~"W porządku. Możesz wydrukować dla mnie parę dokumentów?"~ */ GOTO 68
  IF ~~ THEN REPLY #65459 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.2
  SAY #65440 /* ~"W takim razie się za to zabierz. Przez ciebie nie możemy wykonać swoich planów."~ */
  IF ~~ THEN REPLY #65460 /* ~"A co by było, gdybym po prostu cię wsypał?"~ */ GOTO 67
  IF ~~ THEN REPLY #65461 /* ~"W porządku. Możesz wydrukować dla mnie parę dokumentów?"~ */ GOTO 68
  IF ~~ THEN REPLY #65462 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0 68.0
  SAY #65441 /* ~"I co im powiesz? 'Zabiłem faktora Bogowców i wysadziłem ich machinę śmierci, a potem próbowałem wstąpić do Anarchistów, ale oni chcieli, żebym zabił jeszcze jedną osobę, a tego już nie mogłem zrobić. Aresztujcie ich! Jestem niewinny!' Przykro mi, trepie. Nie jesteś aż tak głupi, choć możesz być, jak załapiesz jeszcze parę guzów na głowie. A teraz ruszaj."~ */
  IF ~~ THEN REPLY #65463 /* ~"W porządku. Żegnaj."~ */ JOURNAL #65464 /* ~Spytałem Penna, co by zrobił, gdybym spróbował go wydać. On w zamian przytoczył parę przekonywujących argumentów. Myślę, że tym razem zostawię go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 65.1 66.1
  SAY #65442 /* ~Mężczyzna spogląda ci prosto w oczy. "Kiedy już pozbędziesz się genasi, wydrukujemy ci wszystko, co tylko zechcesz. Ale nie zawracaj mi głowy, dopóki tego nie zrobisz."~ */
  IF ~~ THEN REPLY #65465 /* ~"A co by było, gdybym po prostu cię wsypał?"~ */ GOTO 67
  IF ~~ THEN REPLY #65466 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 64.0 64.3 64.4
  SAY #65443 /* ~"Zatem udowodniłeś, że można na tobie polegać." Mężczyzna podaje ci swoją rękę. "Witaj w mojej komórce. Jeśli potrzebujesz odpoczynku, czarów albo innych zabawek, które by ci pomogły, porozmawiaj z Leeną albo Konallem. Znajdziesz ich w składzie o nazwie Skarbiec Dziewiątego Świata, zaraz za rogiem. Hasło to 'zaćmienie'. Czy masz jeszcze jakieś pytania?"~ */
  IF ~~ THEN REPLY #65467 /* ~"Opowiedz mi o organizacji..."~ */ GOTO 70
  IF ~~ THEN REPLY #65468 /* ~"Jakie są nasze plany?"~ */ GOTO 72
  IF ~~ THEN REPLY #65469 /* ~"Tak, ma do ciebie kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65470 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 30.9 56.4 57.2 61.2 69.0 71.0 72.0 73.0 74.0 75.0 75.2 76.0
  SAY #65444 /* ~"Co chciałbyś wiedzieć?"~ */
  IF ~~ THEN REPLY #65471 /* ~"Jaka jest struktura organizacji?"~ */ GOTO 73
  IF ~~ THEN REPLY #65472 /* ~"W jaki sposób dostajecie pomoc od innych komórek?"~ */ GOTO 74
  IF ~~ THEN REPLY #65473 /* ~"Gdzie są wasze meliny?"~ */ GOTO 75
  IF ~~ THEN REPLY #65474 /* ~"A jeśli będę potrzebować pomocy?"~ */ GOTO 76
  IF ~~ THEN REPLY #65475 /* ~"Mam jeszcze parę innych pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65476 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 30.10
  SAY #65445 /* ~"Mam taką nadzieję. I mam nadzieję, że ona chce, żebyś się pozbył tego Vortena. Już od dawna zawracała mi nim głowę."~ */
  IF ~~ THEN REPLY #65477 /* ~"Eee... rozumiem. Chcę ci zadać parę dotyczących organizacji..."~ */ GOTO 70
  IF ~~ THEN REPLY #65478 /* ~"Rozumiem. Mam jeszcze parę innych pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65479 /* ~"Och. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 69.1
  SAY #65446 /* ~"Dowiesz się już wkrótce. Na pewno. Mam nadzieję, że już niebawem zobaczysz zwieńczenie naszego dzieła. Ale na razie nie musisz się tym martwić."~ */
  IF ~~ THEN REPLY #65480 /* ~"W porządku. Opowiedz mi o organizacji."~ */ GOTO 70
  IF ~~ THEN REPLY #65481 /* ~"W porządku. Chcę ci zadać parę innych pytań."~ */ GOTO 30
  IF ~~ THEN REPLY #65482 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 70.0
  SAY #65447 /* ~"W samej naturze tego typu rewolucji leży to, że nawet nasi ludzie *nie mogą* znać całej prawdy. Nasza organizacja jest podzielona na osobne komórki, które utrzymują minimalny kontakt z głową frakcji. Dzięki temu innym frakcjom jest trudniej nam zaszkodzić. Jeśli uda się im zniszczyć jedna komórkę, to już nie dotrą na następnej, chyba że będą mieli bardzo dużo szczęścia. Ludzie nie mogą być uważani za równych, dopóki nie wypełnimy swojej misji, albo dopóki nie udowodnią, że zasługują na nasze zaufanie."~ */
  IF ~~ THEN REPLY #65483 /* ~"Mam jeszcze parę innych pytań dotyczących organizacji..."~ */ GOTO 70
  IF ~~ THEN REPLY #65484 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65485 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 70.1
  SAY #65448 /* ~"Nasza organizacja zbudowana jest na kształt sieci. Dzięki temu nie znamy nikogo, oprócz kilku kontaktów, a jeśli szykuje się jakaś robota, to wiadomość o niej dociera przez poszczególne komórki. Oczywiście, najpierw je sprawdzamy, a potem, w razie potrzeby, wysyłamy pomoc. Może się wydawać, że jest nas mało, ale nasza organizacja jest liczniejsza, niż się innym wydaje."~ */
  IF ~~ THEN REPLY #65486 /* ~"Mam jeszcze parę innych pytań dotyczących organizacji..."~ */ GOTO 70
  IF ~~ THEN REPLY #65487 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65488 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 70.2
  SAY #65449 /* ~"Nasza melina, jak już wspominałem, znajduje się w Skarbcu Dziewiątego Świata. Moi ludzie udają pracowników tego składu. Spotkaj się z Leeną i podaj jej hasło, a wszystko pójdzie dobrze."~ */
  IF ~~ THEN REPLY #65489 /* ~"Mam jeszcze parę innych pytań dotyczących organizacji..."~ */ GOTO 70
  IF ~~ THEN REPLY #65490 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65491 /* ~"Dziękuję. Żegnaj."~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 70.3
  SAY #65450 /* ~"Jeśli będziesz potrzebować pomocy, dowiemy się o tym. Jeśli będziemy mogli, niezwłocznie ci ją przyślemy. Nie szukaj jej. Ona poszuka ciebie. Nie martw się. Dbamy o członków swojej organizacji."~ */
  IF ~~ THEN REPLY #65492 /* ~"Mam jeszcze parę innych pytań dotyczących organizacji..."~ */ GOTO 70
  IF ~~ THEN REPLY #65493 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 30
  IF ~~ THEN REPLY #65494 /* ~"Dziękuję. Żegnaj."~ */ EXIT
END

IF ~  Global("Penn_Out","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #65451 /* ~"O rany. Znowu przychodzisz, żeby mnie straszyć?" Wygląda na to, że nie zrobiłeś na nim żadnego wrażenia.~ */
  IF ~~ THEN REPLY #65495 /* ~"Spróbuj jeszcze raz mnie tak przenieść, a cię zabiję."~ */ GOTO 14
  IF ~~ THEN REPLY #65496 /* ~"W jaki sposób mnie teleportowałeś?"~ */ GOTO 79
  IF ~~ THEN REPLY #65497 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65498 /* ~"Nie teraz. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 78 // from:
  SAY #65452 /* ~"A niech mnie, jeśli to nie sam pożeracz-czasu. Czy tym razem chodzi ci o coś konkretnego?"~ */
  IF ~~ THEN REPLY #65499 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65500 /* ~"Nie bardzo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY #65453 /* ~"To tajemnica. Chodzi ci o coś konkretnego, czy przyszedłeś tylko po to, żeby mi zawracać głowę?"~ */
  IF ~~ THEN REPLY #65501 /* ~"Przychodzę cię ostrzec, żebyś tego nigdy więcej nie robił."~ */ GOTO 14
  IF ~~ THEN REPLY #65502 /* ~"Mam do ciebie parę pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #65503 /* ~"Nie. Żegnaj."~ */ EXIT
END
