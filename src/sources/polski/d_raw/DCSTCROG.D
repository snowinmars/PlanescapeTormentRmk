// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCROG~

IF ~  !Global("Curst_Rogue_Paid","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #10037 /* ~Dostrzegasz mężczyznę wyglądającego na złodzieja. Gdy mu się tak przyglądasz, nasuwają ci się myśli, że być może obserwuje pobliski budynek.~ */
  IF ~~ THEN REPLY #10038 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #10039 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10040 /* ~Okazuje się być na tyle życzliwym, by odwzajemnić twoje powitanie. "I tobie życzę miłego dnia." Odwraca się i zaczyna odchodzić.~ */
  IF ~~ THEN REPLY #10041 /* ~"Jedna chwila, proszę. Chciałbym ci zadać pytanie."~ */ GOTO 2
  IF ~~ THEN REPLY #10042 /* ~Pozwól mu odejść.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10043 /* ~Zatrzymuje się i odwraca się w twoją stronę, obdarzając cię życzliwym uśmiechem. "Oczywiście. Jak mogę ci pomóc?" Dostrzegasz, że jego zwisające ramiona układają się mu po bokach trochę nienaturalnie. Twoje wyćwiczone oko podpowiada ci, iż najprawdopodobniej jest on gotowy, by sięgnąć po ukrytą broń.~ */
  IF ~~ THEN REPLY #10044 /* ~"Po prostu obserwowałeś tamten budynek?"~ */ GOTO 3
  IF ~~ THEN REPLY #10045 /* ~"Szukam devy. Powiedziano mi, że jest w Klątwie."~ */ GOTO 9
  IF ~~ THEN REPLY #10046 /* ~"Nieważne."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10047 /* ~Spogląda na ciebie zdziwiony. "Ależ nie, prawdę mówiąc nie robiłem tego. Po co? Jest tam coś godnego uwagi?" Odwraca się i zaczyna badać budynek, który mu wskazałeś.~ */
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #10048 /* ~"Daj spokój. Głupi nie jestem. Chcesz się włamać!"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #10049 /* ~"Z pewnością."~ */ EXTERN ~DANNAH~ 78
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #10050 /* ~"Mniejsza z tym, przyznaję się do pomyłki. Mam jednak pytanie do ciebie. Szukam devy, który podobno przebywa w mieście."~ */ GOTO 9
  IF ~~ THEN REPLY #10051 /* ~"Wybacz, przyznaję się do pomyłki. Muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10052 /* ~Spogląda na ciebie i zdaje się obliczać, na ile się możesz cenić. Następnie wykonuje dłońmi zręczny gest i rzuca ci niewinne spojrzenie. Przypatrując się mu dostrzegasz błysk monet w jego rękawie. "Zapewniam cię, że jesteś w błędzie, przyjacielu. Po prostu spaceruję sobie dla przyjemności w tak przepiękny dzień."~ */
  IF ~~ THEN REPLY #10053 /* ~"Tak. Muszę ci przyznać rację. Przyjmij me przeprosiny... przyjacielu."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #10054 /* ~"Nie. Jestem prawie pewien, że to właśnie robiłeś."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10055 /* ~Postępuje do przodu i klepie cię po przyjacielsku po plecach. Kiedy kończy, czujesz, że twoja sakiewka zyskała na wadze. "Teraz się już rozstaniemy, przyjacielu. Póki się znów nie spotkamy."~ */
  IF ~~ THEN REPLY #10056 /* ~"Żegnaj."~ */ DO ~GivePartyGold(25)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #10057 /* ~Spogląda na ciebie z ukosa. "W takim razie powinienem... podwoić środki, by cię mimo wszystko przekonać. Wiedz jednak, że dalej się już nie posunę, by cię przekupić." Następuje kolejny zręczny gest i w obu jego rękawach dostrzegasz błysk monet.~ */
  IF ~~ THEN REPLY #10058 /* ~"Ależ tak. Najpewniej tylko spacerowałeś sobie dla przyjemności, jak sam przyznałeś."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10059 /* ~"Nie. Wiem, co widziałem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10060 /* ~Postępuje do przodu i klepie cię po przyjacielsku po plecach. Kiedy kończy, czujesz, że twoja sakiewka zyskała na wadze. "Teraz się już rozstaniemy, przyjacielu. Póki się znów nie spotkamy."~ */
  IF ~~ THEN REPLY #10061 /* ~"Żegnaj."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #10062 /* ~Spogląda na ciebie krzywo, po czym wykonuje ruch obiema rękami. Błysk monet zostaje zastąpiony przez błysk stali. "Przykro mi, że nie udało się nam dogadać."~ */
  IF ~~ THEN REPLY #10063 /* ~"Nie aż tak przykro, jak będzie ci za chwilę."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.2 11.1
  SAY #10064 /* ~Obrzuca cię pełnym zdziwienia spojrzeniem. "Prawdę mówiąc... uważam, że to dość niezwykłe. To nie jest miejsce, gdzie można spotkać devę. Gdyby to jednak była prawda, powinieneś zasięgnąć języka w gospodzie 'Brama Zdrajców'. Sądzę, że handlują takim typem informacji, jakich szukasz."~ */
  IF ~~ THEN REPLY #10065 /* ~"Dzięki. Zrobię tak."~ */ EXIT
  IF ~~ THEN REPLY #10066 /* ~"Gdzie szukać tego miejsca?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #10067 /* ~"Przykro mi, przyjacielu. Nigdy tam osobiście nie byłem, tak więc nie wiem dokładnie. Ale to gdzieś w pobliżu. Rozejrzyj się wokół."~ */
  IF ~~ THEN REPLY #10068 /* ~"Dziękuję i żegnam."~ */ EXIT
END

IF ~  Global("Curst_rogue_paid","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #10069 /* ~Twoje ponowne przybycie trochę niepokoi złodziejaszka. "Niech mnie, jeśli to nie mój stary przyjaciel. Czyżby kolejna wizyta? Doceniam twą uprzejmość, ale staram się tu pracować, rozumiesz."~ */
  IF ~~ THEN REPLY #10070 /* ~"Jestem tu dla pieniędzy, a nie pogaduszek."~ */ GOTO 12
  IF ~~ THEN REPLY #10072 /* ~"Szukam devy. Słyszałem, że jest w Klątwie."~ */ GOTO 9
  IF ~~ THEN REPLY #10073 /* ~"Wybacz, że niepokoję. Pomyślałem po prostu, że się przywitam."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #10071 /* ~Spogląda na ciebie groźnie i zaczyna mówić pełnym powagi tonem. "Słuchaj, przyjacielu. Udało ci się mnie przyłapać, a ja - tak jak to załatwiają między sobą profesjonaliści - zapłaciłem ci za puszczenie mnie wolno. Zostawmy więc tak tę sprawę i pozostańmy przyjaciółmi."~ */
  IF ~~ THEN REPLY #10074 /* ~"W porządku. Muszę już iść."~ */ EXIT
  IF ~~ THEN REPLY #10075 /* ~"Nie sądzę. Dawaj trochę brzdęku albo cię zadenuncjuję."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #10076 /* ~"Przykro mi, że nie udało się nam dogadać."~ */
  IF ~~ THEN REPLY #10077 /* ~"Nie aż tak przykro, jak będzie ci za chwilę."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
