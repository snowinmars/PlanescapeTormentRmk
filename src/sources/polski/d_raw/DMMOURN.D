// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMMOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMMOURN~

IF ~  Global("Widow_Pissed","AR0200",0)
~ THEN BEGIN 0 // from:
  SAY #34081 /* ~Ta staruszka roztacza wokół siebie atmosferę wielkiego smutku, jakby to była czarna opończa, którą chce się otulić. Kiedy na nią patrzysz, z jej ust wymyka się smutne westchnienie.~ */
  IF ~~ THEN REPLY #34082 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #34083 /* ~Zostaw tę kobietę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34084 /* ~Kobieta spogląda na twoją twarz, wysilając swe oczy, aby cię lepiej dojrzeć. "Wybacz mi, młody śmiałku, ale jestem starą kobietą, a mój wzrok nie jest już najlepszy... czy ja cię skądś nie znam?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #34085 /* ~"Nie."~ */ GOTO 2
  IF ~~ THEN REPLY #34086 /* ~"Może tak, ale ja nie znam ciebie."~ */ GOTO 2
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #34087 /* ~"Mogliśmy się kiedyś spotkać. To wszystko."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34088 /* ~Kobieta zastanawia się przez chwilę nad twoją odpowiedzią, a potem przytakuje. "W takim razie, czego ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #34089 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #34090 /* ~"Nie, nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34091 /* ~"Pytań?" Na jej twarzy pojawia się strach. "Och, nie... jesteś 'poszukiwaczem przygód', prawda? Chcesz znać moje imię, zawód i inne takie, co? Nic z tego! Precz z moich oczu!"~ */
  IF ~~ THEN REPLY #34092 /* ~"Nie szukam przygód."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34093 /* ~"Nie, nie jestem... przynajmniej..."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34094 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #34095 /* ~"Knebel!" Staruszka wykonuje uciszający gest palcem. "Widziałam już, jak Grabarze wypisali na swoim Kamieniu Pamiątkowym imiona mojego męża, niech jego dusza będzie przeklęta, syna i obu moich córek. Wszyscy oni byli 'poszukiwaczami przygód'! Sama kiedyś wymachiwałam mieczem, to poznam takiego, jak go spotkam!" Staruszka wpada w gniew, a kiedy na ciebie krzyczy, krew napływa jej do twarzy, a z ust wylatują małe kropelki śliny.~ */
  IF ~~ THEN REPLY #34096 /* ~Pozwól jej skończyć.~ */ GOTO 5
  IF ~~ THEN REPLY #34097 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34098 /* ~"Założę się, że masz *wiele* przeklętych pytań!" Kobieta zaczyna przedrzeźniać twój sposób bycia: "Witaj, mam do ciebie kilka pytań... co wiesz o tym miejscu? Kim jest Pani Bólu? Szukam magicznej Podwiązki z Cennego Kruszcu, może ją widziałaś? Może wiesz, gdzie leży portal do 2817. Sfery? A może wiesz, gdzie mam szukać Świętego, Ognistego, Mrożącego Młota Ranienia, Powracania i w dodatku Miotającego Pioruny z twojego Tyłka?" Kobieta spluwa. "To wszystko bzdury! Przez to możesz się tylko dostać do Księgi Umarłych! Powinnam cię skopać po tyłku za to, że denerwujesz starą kobietę! Teraz ruszaj stąd i zostaw mnie w spokoju!"~ */
  IF ~~ THEN REPLY #34099 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Widow_Pissed","AR0200",1)
~ THEN BEGIN 6 // from:
  SAY #34100 /* ~Kiedy staruszka wpatruje się w twoją twarz, na jej twarzy pojawia się gniew. "Nie, nie, nie! Jeszcze raz nie! Nie będę z tobą rozmawiała, ty draniu! *DRANIU*!"~ */
  IF ~~ THEN REPLY #34101 /* ~Odejdź.~ */ EXIT
END
