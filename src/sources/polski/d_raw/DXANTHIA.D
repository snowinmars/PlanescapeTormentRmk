// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANTHIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANTHIA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51104 /* ~Widzisz młodą, urodziwą kobietę, odzianą w kosztowne szaty. Jej skóra pozbawiona jest żółtego odcienia, typowego dla mieszkańców tej dzielnicy. Kobieta z niejakim zainteresowaniem obserwuje trzy stwory, znajdujące się w pobliżu.~ */
  IF ~~ THEN REPLY #51105 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #51106 /* ~Nie zwracaj na nią uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51107 /* ~Kobieta odwraca się do ciebie i na jej twarz wstępuje natychmiast grymaśna mina. "Tak? Czegóż chcesz?"~ */
  IF ~~ THEN REPLY #51108 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51109 /* ~"Niczego, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 7.1 8.1 9.1 10.1 12.1 13.0 14.1 15.0
  SAY #51110 /* ~"Dobra." Kobieta wygląda na mocno poirytowaną.~ */
  IF ~~ THEN REPLY #51111 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #51112 /* ~"Co tutaj robisz?"~ */ GOTO 4
  IF ~~ THEN REPLY #51113 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 14
  IF ~~ THEN REPLY #51114 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51115 /* ~"Mam na imię Xantia." Mierzy cię długim spojrzeniem od stóp do głów, a potem marszczy brwi. "Czy jeszcze czegoś chcesz?"~ */
  IF ~~ THEN REPLY #51116 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51117 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #51118 /* ~"Zaraz będzie tutaj walka i mam zamiar ją sobie obejrzeć." Jej usta wykrzywiają się w okrutnym uśmiechu. "Powinna być ciekawa."~ */
  IF ~~ THEN REPLY #51119 /* ~"Walka?"~ */ GOTO 5
  IF ~~ THEN REPLY #51120 /* ~"Ach tak. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #51121 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #51122 /* ~"Tak. Widzisz tutaj tych trzech tokolów?" Pokazuje palcem na trzy potężne, imponujące muskulaturą stwory. "Mają zamiar ubić abiszai." Prycha śmiechem. "Głupie niedorajdy."~ */
  IF ~~ THEN REPLY #51123 /* ~"Mówiono mi coś o abiszai. Co to takiego?"~ */ GOTO 6
  IF ~~ THEN REPLY #51124 /* ~"Ci tokolowie wyglądają mi na takich, co potrafią o siebie zadbać."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51125 /* ~"To stwór pochodzący z Niższych Sfer, zdaje się, że rasy baatezu..." Kobieta marszczy brwi w zamyśleniu. "Tak czy siak, abiszai mają wredne usposobienie, ostre pazury i umieją posługiwać się magią. Są bardzo niebezpieczne..."~ */
  IF ~~ THEN REPLY #51126 /* ~"Ci tokolowie wyglądają na takich, co potrafią o siebie zadbać."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #51127 /* ~"Zazwyczaj na takie pytanie odpowiadam twierdząco, tokolowie są bowiem niezwykle potężnymi wojownikami..." Kobieta uśmiecha się przebiegle i pochyla się, aby szepnąć ci coś na ucho. "Ale jest coś, czego oni nie wiedzą..."~ */
  IF ~~ THEN REPLY #51128 /* ~"A cóż to takiego?"~ */ DO ~SetGlobal("Know_Xanthia_Plan","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #51129 /* ~"Ach tak. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #51130 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51131 /* ~"Abiszai można pokonać jedynie za pomocą magii." Kobieta śmieje się z cicha. "Wszyscy tokolowie padną trupem, nie mam co do tego żadnych wątpliwości." Kobieta prostuje się i znowu zaczyna bacznie obserwować poczynania tokolów.~ */
  IF ~~ THEN REPLY #51132 /* ~"A skąd wiesz, że można je pokonać tylko z pomocą magii?"~ */ GOTO 9
  IF ~~ THEN REPLY #51133 /* ~"Ach tak. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #51134 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51135 /* ~Kobieta posyła ci rozeźlone spojrzenie. "Mój mąż jest bardzo wysoko postawioną osobistością w Harmonium. Strażnicy z Harmonium są szkoleni w rozprawianiu się z rozmaitymi stworami, również abiszai." Odwraca spojrzenie. "Stąd też wiem takie rzeczy. Mój mąż mi o tym powiedział."~ */
  IF ~~ THEN REPLY #51136 /* ~"Więc dlaczego nie ostrzeżesz tych tokolów?"~ */ GOTO 10
  IF ~~ THEN REPLY #51137 /* ~"Ach tak. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #51138 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51139 /* ~"A niby dlaczego miałabym to robić?" Kobieta uśmiecha się diabolicznie. "Przecież to ja wpadłam na pomysł zorganizowania tej walki."~ */
  IF ~~ THEN REPLY #51140 /* ~"Dlaczego?"~ */ GOTO 11
  IF ~~ THEN REPLY #51141 /* ~"Ach tak. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #51142 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51143 /* ~"Mój mąż próbuje polepszyć swój kontakt z podwładnymi, pijając z nimi w miejscowych gospodach. Ubiegłego wieczoru uparł się, abym mu w takim wypadzie towarzyszyła. Były tam też te trzy niedorajdy. Siedzieli i przechwalali się swoimi umiejętnościami wojennymi. Naturalnie byli schlani jak świnie. Kiedy opuszczali gospodę, jeden z nich potknął się i wywalił na stół, przy którym siedziałam." Kobieta milknie.~ */
  IF ~~ THEN REPLY #51144 /* ~"Nie przerywaj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51145 /* ~Kobieta krzywi się ze złością. "Rozlał na mnie wszystkie napoje i zniszczył mi bardzo kosztowną suknię wieczorową. Więc, kiedy ten kretyn próbował wybełkotać przeprosiny, powiedziałam surowo, że przyjmę je jedynie wówczas, kiedy udowodni, że jest czcigodnym wojownikiem. A czcigodny wojownik, to dla mnie ktoś, kto potrafi pokonać w walce wręcz abiszai."~ */
  IF ~~ THEN REPLY #51146 /* ~"Wysyłasz ich na pewną śmierć za to, że zniszczyli ci suknię?"~ */ JOURNAL #67304 /* ~W Niższej Dzielnicy spotkałem niewiastę o imieniu Xanthia. Xanthia jest bardzo wściekła, ponieważ ostatnio trzej pijani thokolowie zniszczyli jej wieczorową suknię. W odruchu zemsty, Xanthia rozkazała im zgładzić abiszai w walce wręcz, bo jeżeli tego nie zrobią, nigdy nie przyjmie ich przeprosin, a to okryje ich imiona niesławą. Tymczasem abiszai, według słów Xantii, można pokonać jedynie za pomocą magii albo magicznego oręża. Thokolowie oczywiście nie mają ani jednego, ani drugiego, toteż Xanthia z niecierpliwością oczekuje na rozpoczęcie walki, w której, ku jej zadowoleniu, thokolowie niewątpliwie poniosą śmierć. Może powinienem ich ostrzec?~ */ GOTO 13
  IF ~~ THEN REPLY #51147 /* ~"Ach tak. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #51148 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51149 /* ~"Oczywiście nie rozumiesz wagi tego wydarzenia." Kobieta spogląda na ciebie jakbyś był dzieckiem cierpiącym na szczególnie ciężki przypadek kretynizmu. "Zostałam znieważona i upokorzona w obecności mojego męża i jego podwładnych!" Wygląda na naprawdę wściekłą.~ */
  IF ~~ THEN REPLY #51150 /* ~"Ach tak. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #51151 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #51152 /* ~"Nic..." Patrzy przed siebie z niesmakiem. "Gdyby nie ta walka, żadna siła by mnie tutaj nie zawlokła."~ */
  IF ~~ THEN REPLY #51153 /* ~"Walka?"~ */ GOTO 5
  IF ~~ THEN REPLY #51154 /* ~"Ach tak. Mam kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #51155 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 15 // from:
  SAY #51156 /* ~Widzisz Xantię. Posyła ci znudzone spojrzenie. "Przyszedłeś, żeby znowu mnie wyprowadzać z równowagi?"~ */
  IF ~~ THEN REPLY #51157 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51158 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #51159 /* ~Widzisz Xantię. Posyła ci spojrzenie pełne nieskrywanej nienawiści. "Ostrzegłeś tych łotrów, co?"~ */
  IF ~~ THEN REPLY #51160 /* ~"Tak. Zrobiłem to, co uważałem za słuszne."~ */ DO ~AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #51161 /* ~"Naprawdę nie wiem, o czym mówisz."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51162 /* ~Kobieta powoli kiwa głową. "Nie zapomnę ci tej zniewagi. Miłego dnia życzę!" Odwraca się do ciebie plecami i odchodzi.~ */
  IF ~~ THEN REPLY #51163 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #51164 /* ~Kobieta uśmiecha się złowieszczo. "Bardzo dobrze, baw się dalej w te swoje fortele. Ale wiedz, trepie, że nie zwykłam puszczać w niepamięć żadnej zniewagi. Miłego dnia życzę!" Odwraca się do ciebie plecami i odchodzi.~ */
  IF ~~ THEN REPLY #51165 /* ~Odejdź.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 19 // from:
  SAY #64167 /* ~Widzisz Xanthię. Kiedy podchodzisz, posyła ci znudzone spojrzenie. "Cóż... Widziałam, jak rozmawiałeś z tym prostakiem Thorpem. Ostrzegłeś go może?"~ */
  IF ~  !Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #64168 /* ~"Nie. Zdecydowałem się razem z tobą poczekać na tę zabawę."~ */ GOTO 20
  IF ~  Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #68127 /* ~"Nie śmiałbym czegoś takiego zrobić. Szczególnie teraz, po tak miłym podarku."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64169 /* ~Xanthia wybucha śmiechem i patrzy na ciebie z rozbawieniem. "Jak miło z twojej strony! Będzie mi bardzo przyjemnie, jeżeli zechcesz mi towarzyszyć." Na chwilę pogrąża się w rozmyślaniach, a potem wyjmuje sakiewkę. "Proszę... To za to, że okazałeś delikatność i nie zepsułeś zabawy wytwornej damie." Wręcza ci sakiewkę.~ */
  IF ~~ THEN REPLY #64170 /* ~"Dziękuję, Xanthio. Żegnaj."~ */ DO ~SetGlobal("Xanthia_Rewarded","GLOBAL",1)
AddexperienceParty(500)
GivePartyGold(500)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #68128 /* ~Xanthia wybucha śmiechem i patrzy na ciebie z rozbawieniem. "Jak miło z twojej strony!..." W chwilę później traci zainteresowanie twoją osobą.~ */
  IF ~~ THEN REPLY #68129 /* ~"Żegnaj."~ */ EXIT
END
