// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFINAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DFINAM~

IF ~  NumTimesTalkedTo(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46116 /* ~Ten niski, uczony człowiek - nerwowo wykrzywia twarz - ogląda cię od stóp do głów. "Witaj, jestem Finam. Muszę pana prosić o wybaczenie, ale nie dbam zbytnio o gości - zaproszonych czy *innych* - więc jeśli nie masz do mnie żadnej sprawy, proszę cię byś wyszedł."~ */
  IF ~~ THEN REPLY #46117 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #46118 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Finam","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46119 /* ~Finam marszcząc brwi, przygląda się jak podchodzisz. "Zdecydowałeś się ponownie zaszczycić swą obecnością moje skromne progi? Czego tym razem ode mnie chcesz?"~ */
  IF ~~ THEN REPLY #46120 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #46121 /* ~"Nic, naprawdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #46122 /* ~"Sir, chciałbym abyś wiedział, że jestem uczonym, lingwistą. Z chęcią udzielę ci odpowiedzi na pytania dotyczące mych studiów - języka, ale w innych dziedzinach nie mogę ci pomóc."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46123 /* ~Otwórz dwunastościan na stronie z 'tekstem' i zapytaj czy potrafi go przetłumaczyć.~ */ GOTO 3
  IF ~~ THEN REPLY #46124 /* ~"W takim razie nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46125 /* ~Bierze w ręce rozłożoną dwunastościenną układankę i dokładnie ją bada. "Ten język jest od dawna martwy, praktycznie nikomu nie znany. Wydaje mi się, że mój ojciec - lingwista, jak ja - znał ten język i pewnie był jedynym człowiekiem w Sigil, który go rozumiał. Poznaję go z moich notatek, ale nie potrafię tego przetłumaczyć."~ */
  IF ~~ THEN REPLY #46126 /* ~"Masz może jeszcze te notatki?"~ */ GOTO 4
  IF ~~ THEN REPLY #46127 /* ~"Też ci dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46128 /* ~Finam potrząsa głową. "Nie przydadzą ci się, jeśli chcesz cokolwiek przetłumaczyć... Wydaje mi się, że te kilka woluminów, które odnosiły się do tego języka, zaginęło mniej więcej wtedy, gdy ojciec został zamordowany."~ */
  IF ~~ THEN REPLY #63620 /* ~"Mimo wszystko chciałbym je zobaczyć..."~ */ GOTO 8
  IF ~~ THEN REPLY #46129 /* ~"Twój ojciec został zamordowany?"~ */ GOTO 5
  IF ~~ THEN REPLY #46130 /* ~"Szkoda. Żegnaj, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 8.3 11.0 12.3 13.0
  SAY #46131 /* ~Finam kiwa głową. "Został uduszony. Wyszedł kogoś uczyć - nauczał wielu języków, by zdobyć fundusze na swe badania - znaleziono go martwego w bocznej komnacie Gmachu Rozrywki. Zabójcy nigdy nie odnaleziono. To było jakieś... może pięćdziesiąt lat temu. Byłem wtedy tylko dzieckiem."~ */
  IF ~~ THEN REPLY #46132 /* ~"Znał ten język i wykładał go?"~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #46133 /* ~"Szkoda. Żegnaj, Finam."~ */ DO ~SetGlobal("Finams_Father","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46134 /* ~"Gdyby żył na pewno by potrafił i zrobiłby to. Mój ojciec był uważany za wspaniałego nauczyciela." Finam smutno wzrusza ramionami. "Posiadam taką samą biegłość w językach, ale niestety brakuje mi cierpliwości do innych."~ */
  IF ~~ THEN REPLY #46135 /* ~"Został... złożony w Kostnicy?"~ */ JOURNAL #39478 /* ~Rozmawiałem z lingwistą, Finamem, o dziwnym tekście, który odkryłem w znalezionej przeze mnie dwunastościennej układance. Powiedział, że jego ojciec znał martwy język w którym sporządzono zapis, ale wiele lat temu został uduszony przez nieznanego zabójcę. Prochy ojca spoczywają w urnie w domu Finama. Może jest jakiś sposób, by poprzez prochy skontaktować się z jego ojcem, gdyż znalezienie kogoś innego, kto władałby tym zapomnianym językiem jest mało prawdopodobne.~ */ GOTO 7
  IF ~~ THEN REPLY #46136 /* ~"Żegnaj, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46137 /* ~"Nie... jego prochy spoczywają tutaj." Pokazuje stojąca na szafie, obok bukietu purpurowych kwiatów, urnę z brązu. "Dlaczego pytasz?" Na ustach Finama pojawia się drwiący uśmiech. "Jesteś nekroskopem? Rozmawiasz z umarłymi?" Nagle marszczy brwi. "Nie chcę już dłużej rozmawiać o tych rzeczach. Będzie musiał mi pan wybaczyć... żegnam, sir."~ */
  IF ~~ THEN REPLY #46138 /* ~"Żegnaj, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #49981 /* ~Fianm wzdycha z rozdrażnieniem. "Nie jestem pewien, gdzie teraz są, a w tej chwili szukam czegoś innego - mojego dziennika z wynikami badań. Może gdybym go odzyskał mógłbym znaleźć chwilkę czasu, by znaleźć dla ciebie te notatki."~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #49982 /* ~"Czy to ta książka?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Zwróciłem Finamowi Lingwiście jego dziennik badawczy.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49983 /* ~"Czy to ta książka?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Zwróciłem Finamowi Lingwiście jego dziennik badawczy.~ */ GOTO 10
  IF ~~ THEN REPLY #49984 /* ~"W takim razie pomogę ci go odnaleźć. Gdzie ostatnio go widziałeś?"~ */ DO ~SetGlobal("Finam","GLOBAL",1)
~ JOURNAL #49988 /* ~Podjąłem się odszukania dziennika badawczego Finama Lingwisty i zwrócenia go jego właścicielowi... W zamian za to spodziewam się, że Finam odstąpi mi notatki swojego ojca dotyczące języka zapisanego w dwunastościanie. Zdaje się, że Finam zostawił swój dziennik gdzieś w Przybytku Zaspokajania Żądz Intelektualnych.~ */ GOTO 11
  IF ~~ THEN REPLY #49985 /* ~"Powiedziałeś że twój ojciec został zamordowany?"~ */ GOTO 5
  IF ~~ THEN REPLY #49986 /* ~"Szkoda. Żegnaj, Finam."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #49989 /* ~Finam unosi brwi. "Tak, to on!" Bierze go od ciebie i zaczyna przetrząsać swoje kieszenie. "Proszę... notatki mojego ojca. Jesteśmy kwita? Dobrze. Teraz muszę przejrzeć moje notatki, więc jeśli możesz mi wybaczyć..."~ */
  IF ~~ THEN REPLY #49990 /* ~"Dzięki, Finam. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #49991 /* ~Wyjdź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 12.1
  SAY #49992 /* ~Finam unosi brwi. "Tak, to on!" Bierze go od ciebie i zaczyna przetrząsać swoje kieszenie. "Hmm... to dziwne, zniknęły. Przykro mi, ale wygląda na to, że ktoś umknął z notatkami mojego ojca. Ach, cóż... szkoda. Teraz muszę przejrzeć moje notatki, więc jeśli możesz mi wybaczyć..."~ */
  IF ~~ THEN REPLY #49993 /* ~"Nie martw się o to. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #49994 /* ~Wyjdź.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 12.2
  SAY #49995 /* ~"Ee... cóż... nie jestem pewien. To mogło być w... cóż, możliwe, że w jakiś sposób znalazł drogę do Przybytku Zaspokajania Żądz intelektualnych, ale jak mogło do tego dojść, nie wiem." Oczyszcza gardło i patrzy w bok.~ */
  IF ~~ THEN REPLY #49997 /* ~"Poszukam tam. Powiedziałeś, że twój ojciec został zamordowany?"~ */ GOTO 5
  IF ~~ THEN REPLY #49996 /* ~"W takim razie tam sprawdzę. Żegnaj."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #49998 /* ~Finam przerywa swe poszukiwania, by na ciebie spojrzeć. "Jakieś sukcesy w poszukiwaniach mojego dziennika?"~ */
  IF ~  PartyHasItem("FinBook")
HasItem("FinNote",Myself)
~ THEN REPLY #50000 /* ~"Czy to ta książka?"~ */ DO ~GiveItem("FinNote",Protagonist)
TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Zwróciłem Finamowi Lingwiście jego dziennik badawczy.~ */ GOTO 9
  IF ~  PartyHasItem("FinBook")
!HasItem("FinNote",Myself)
~ THEN REPLY #49999 /* ~"Czy to ta książka?"~ */ DO ~TakePartyItemNum("FinBook",1)
AddexperienceParty(25000)
SetGlobal("Finam","GLOBAL",2)
~ JOURNAL #49987 /* ~Zwróciłem Finamowi Lingwiście jego dziennik badawczy.~ */ GOTO 10
  IF ~~ THEN REPLY #50001 /* ~"Nie. Gdzie ostatnio go widziałeś?"~ */ GOTO 11
  IF ~~ THEN REPLY #50002 /* ~"Nie... ale wspomniałeś coś o tym, że twój ojciec został zamordowany?"~ */ GOTO 5
  IF ~~ THEN REPLY #50003 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~  Global("Finam","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #50004 /* ~Finam spogląda w twoją stronę, lekko rozdrażniony. "Teraz muszę przejrzeć moje notatki, więc jeśli możesz mi wybaczyć..."~ */
  IF ~~ THEN REPLY #50005 /* ~"Tylko jedno pytanie. Powiedziałeś że twój ojciec został zamordowany?"~ */ GOTO 5
  IF ~~ THEN REPLY #50006 /* ~"W takim razie żegnaj."~ */ EXIT
END
