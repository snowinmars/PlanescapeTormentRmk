// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNESTOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DNESTOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30119 /* ~Widzisz podstarzałego mężczyznę ubranego w poplamione ziemią i zniszczone szaty, który nerwowo chodzi tam i z powrotem. Jego brudne, siwe włosy spadają na ramiona poplątanymi strąkami, a poszarpana broda, pełna grudek ziemi i zaschniętej krwi, sięga poniżej pasa. Co chwilę mężczyzna zatrzymuje się i wali naokoło pięściami, mrucząc coś do siebie i przeklinając, jakby atakował go jakiś niewidzialny napastnik. Wygląda na to, że nie zauważył twojego przybycia.~ */
  IF ~~ THEN REPLY #30133 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #30134 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #30120 /* ~Starzec zatrzymuje się i spogląda na ciebie nerwowo. "Widelec? Widelec? Widelec? Nie mogę wrócić do domu bez mojego widelca."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30135 /* ~"Słuchaj... Arlo chce, żebym się ciebie pozbył, więc będziesz musiał sobie iść."~ */ GOTO 5
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30136 /* ~"Twojego... widelca?"~ */ GOTO 6
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30137 /* ~"Czy to o tym widelcu wspominałeś?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30138 /* ~"Nic takiego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #30121 /* ~Na dźwięk twego głosu stary świr obraca się do ciebie. Spostrzegasz, że jego oczy prawie wychodzą z orbit. Przygląda ci się przez chwilę, po czym powraca do swojego zawodzenia. "Nie! Nie! Nieeeeeeee! To nie ty... hu hu! Ale już wkrótce... tak, już wkrótce."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30139 /* ~"Czy to ciebie nazywają Nestorem?"~ */ GOTO 3
  IF ~~ THEN REPLY #30140 /* ~"Ee... z kim rozmawiasz?"~ */ GOTO 3
  IF ~~ THEN REPLY #30141 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #30122 /* ~Starzec nie zwraca uwagi na twoją obecność. "Hu hu hu! Przyjdziesz. Tak... Przyjdziesz. A stary Nestor będzie czekał!"~ */
  IF ~~ THEN REPLY #30142 /* ~"Dobrze się czujesz?"~ */ GOTO 5
  IF ~~ THEN REPLY #30143 /* ~"Czekasz? Niby na kogo?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30144 /* ~"Słuchaj... Arlo chce, żebym się ciebie pozbył, więc będziesz musiał sobie iść."~ */ GOTO 5
  IF ~~ THEN REPLY #30145 /* ~"Nic takiego. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #30123 /* ~"Czekał, tak..." Mężczyzna nagle pada na podłogę, jakby zmęczenie wzięło nad nim górę. "Długo czekałem... czekałem." Bierze głęboki wdech i z energicznie wstaje z powrotem na nogi. "Będę czekał w nieskończoność, jeśli będzie trzeba! Słyszysz mnie?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30146 /* ~"Słuchaj... Arlo chce, żebym się ciebie pozbył, więc będziesz musiał sobie iść."~ */ GOTO 5
  IF ~~ THEN REPLY #30147 /* ~"Wszystko w porządku?"~ */ GOTO 5
  IF ~~ THEN REPLY #30148 /* ~"Hmm... W takim razie zostawię cię w spokoju. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 3.0 3.2 4.0 4.1
  SAY #30124 /* ~"Nieeeeee!" Twarz Nestora purpurowieje, a jego całe ciało zaczyna drżeć. "Mój widelec! Nie ruszę się stąd bez mojego widelca! Hu hu! Widelca, widelca!"~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30149 /* ~"Twojego... widelca?"~ */ GOTO 6
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30150 /* ~"Wystarczy tych krzyków, starcze. Zaraz sobie pójdziesz... albo po dobroci albo..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #30151 /* ~"Widzę, że w ten sposób do niczego nie dojdziemy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 11.0
  SAY #30125 /* ~"Widelec? Widelec! Widelec! Nie wrócę do domu bez mojego widelca!" Furia Nestora osiąga zenit. Mężczyzna zaczyna gwałtownie podskakiwać, potem nagle się zatrzymuje, zniża głowę i rusza jak szalony w kierunku dużej, drewnianej szafki, która stoi przy ścianie hotelu. Siła uderzenia odrzuca go na ziemię. Po chwili wstaje. Z wyrazu twarzy widać, że jest oszołomiony. "Przepadł. Ukradli go. Nie wrócę do domu bez mojego widelca."~ */
  IF ~~ THEN REPLY #30152 /* ~"Mówisz, że ci go ukradziono? Kto to zrobił?"~ */ GOTO 7
  IF ~~ THEN REPLY #30153 /* ~"Widzę, że w ten sposób do niczego nie dojdziemy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30126 /* ~Nestor długo się w ciebie wpatruje, a potem zaczyna nerwowo przeglądać kieszenie swojego brudnego ubrania. Po chwili wyciąga coś, co wygląda jak odcięte ucho. Sądząc po kolorze i smrodzie, można wywnioskować, że stary bzik nosił je w kieszeni już od jakiegoś czasu. "Masz mój widelec, prawda? Prawda? Hu hu!" Przysuwa ucho do swoich ust, jakby to do niego mówił. "Zwróć mi mój widelec!"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30154 /* ~"A odejdziesz stąd, jeśli znajdę twój widelec?"~ */ GOTO 8
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30155 /* ~"Może będę w stanie ci pomóc."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nestor_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #30156 /* ~"Ee... Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30127 /* ~"Będę czekał! Czekał Czekał. Hu! Hu!" Mężczyzna gwałtownie potrząsa uchem krzycząc do niego. "Aż przyniesiesz mi go z powrotem! Wtedy będę mógł wrócić do domu!"~ */
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30157 /* ~"Czy to o tym widelcu mówiłeś?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30158 /* ~"Dobrze. W takim razie znajdę dla ciebie ten widelec. Bywaj."~ */ DO ~SetGlobal("Nestor_Quest","GLOBAL",1)
~ JOURNAL #29868 /* ~Zgodziłem się pomóc Nestorowi, pomyleńcowi z Zajazdu, znaleźć jego widelec. Biedny skurl jest chyba całkiem obłąkany, gdyż w kieszeni nosi odcięte ucho, do którego czasem przemawia. Nie zaszkodzi poszukać mu tego widelca.~ */ EXIT
  IF ~~ THEN REPLY #30159 /* ~"Mniejsza z tym. Mam ciekawsze rzeczy do roboty niż szukanie sztućców dla szaleńca. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #30128 /* ~"Nieeee! Nie mogę wrócić do domu bez mojego widelca!" Mężczyzna odsuwa się od ciebie sapiąc i zagryzając zęby jak zwierzę zapędzone w zasadzkę.~ */
  IF ~~ THEN REPLY #30160 /* ~Złap go.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_2","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #30161 /* ~"Słuchaj, nie chcę cię skrzywdzić... ale *musisz* sobie stąd iść."~ */ GOTO 11
  IF ~~ THEN REPLY #30162 /* ~"W takim razie rób co chcesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30129 /* ~Wyciągasz rękę, aby go złapać, ale staruszek jest zadziwiająco szybki jak na swój wiek. Zanim masz czas go uchwycić, wywija ci się i zatapia zęby w twojej wyciągniętej ręce. Wyjąc z bólu, szybko cofasz rękę.~ */
  IF ~~ THEN REPLY #30163 /* ~"Dobrze. W takim razie zajmiemy się tym inaczej..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30164 /* ~"Słuchaj, nie chcę cię skrzywdzić... ale *musisz* sobie stąd iść."~ */ GOTO 11
  IF ~~ THEN REPLY #30165 /* ~"W takim razie rób co chcesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1
  SAY #30130 /* ~Nestor trochę się uspokaja. Wygląda, jakby za chwilę z jego oczu miały popłynąć łzy. "Nie mogę wrócić do domu. Nie mogę. Nie mogę. Nie mogę. Nie bez widelca."~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30166 /* ~"Twój... widelec?"~ */ GOTO 6
  IF ~~ THEN REPLY #30167 /* ~"Widzę, że w ten sposób do niczego nie dojdziemy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.2 8.0
  SAY #30131 /* ~Nestor pośpiesznie porywa widelec. "Mój widelec? Mój widelec! Widelec! Widelec! Hu! Hu!" Podskakuje w podnieceniu wymachując widelcem nad głową, jakby odprawiał jakiś rytuał. "Teraz mogę wrócić do domu! Żegnaj! Hu! Hu!"~ */
  IF ~~ THEN REPLY #30168 /* ~"Żegnaj, Nestorze."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #30132 /* ~Nestor obraca się by odejść, ale potem, jakby coś sobie przypomniał, odwraca się do ciebie i wręcza ci kawałek czegoś miękkiego i gumowatego: odcięte ucho. Po bliższym przyjrzeniu się temu kawałkowi ciała, zauważasz, że ciągle dynda na nim kolczyk.~ */
  IF ~~ THEN REPLY #30169 /* ~Schowaj kolczyk i wyrzuć gnijący kawałek mięsa.~ */ DO ~GiveItemCreate("ObEar",Protagonist,1,0,0)
SetGlobal("Nestor_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #28825 /* ~Zwróciłem Nestorowi jego widelec. Okazało się, że jest to swego rodzaju klucz do portalu. Kiedy go odzyskał, Nestor mógł wrócić do miejsca skąd pochodził. Zastanawiam się jak długo ten biedny skurl był uwięziony w Sigil bez możlwości powrotu.~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #61633 /* ~Nestor zupełnie nie zwraca na ciebie uwagi. Jego wzrok jest utkwiony w szafce z tyłu pomieszczenia.~ */
  IF ~~ THEN REPLY #61634 /* ~Odejdź.~ */ EXIT
END
