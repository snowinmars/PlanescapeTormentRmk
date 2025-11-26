// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHSOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHSOL~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #2917 /* ~Mężczyzna ma bladożółtą skórę i spiczasto zakończone uszy. Jego oczy są jak małe, czarne kamienie i nosi misternie lakierowaną, miękką zbroję siatkową. Gdy podchodzisz obserwuje cię podejrzliwie, kładąc dłoń na rękojeści miecza. Nie odzywa się.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #2918 /* ~"Witaj, dzierżący-miecz."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 2
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44575 /* ~"Witaj, czcigodny githyanki."~ */ GOTO 3
  IF ~~ THEN REPLY #44576 /* ~"Chciałbym, żebyś odpowiedział na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #44578 /* ~"Przepraszam, chyba nie o ciebie mi chodziło. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #44581 /* ~"Nie rozmawiam z kimś, kto nie pochodzi z ludu. Porozmawiaj z Yi'minnem, jeśli chcesz z nami pogadać." Nie spuszcza z ciebie wzroku.~ */
  IF ~~ THEN REPLY #44582 /* ~"Mam tylko kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #44584 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #44585 /* ~W oka mgnieniu wyciąga miecz. "Zwracasz się do mnie w stylu tych psów githzerai? Przeproś albo cię oćwiczę."~ */
  IF ~~ THEN REPLY #44587 /* ~"Przeprosić? Ciebie? Chyba nie."~ */ GOTO 4
  IF ~~ THEN REPLY #44589 /* ~"Przyjmij moje przeprosiny. Myślałem, że jesteś githzerai."~ */ GOTO 4
  IF ~~ THEN REPLY #44591 /* ~"Przyjmij moje przeprosiny."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #44592 /* ~Pochyla głowę, ale jego dłoń wciąż pozostaje na rękojeści miecza.~ */
  IF ~~ THEN REPLY #44593 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #44595 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 5.1 6.0
  SAY #44597 /* ~Z sykiem wciąganego powietrza atakuje!~ */
  IF ~~ THEN REPLY #44599 /* ~Walcz.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44600 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.0 3.0
  SAY #44602 /* ~"Nie odpowiadam na pytania. Jestem rycerzem githyanki. Przemawiam czynami. Porozmawiaj z Yi'minnem, albo nie rozmawiaj z githyanki."~ */
  IF ~~ THEN REPLY #44604 /* ~"Yi'minnem? Tak zrobię. Gdzie mogę go znaleźć?"~ */ GOTO 7
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44678 /* ~"Och, jesteś githyanki? Wydawało mi się, że bije od ciebie chorobliwy smród. A może to tylko zapach twej nędznej krwi."~ */ GOTO 4
  IF ~~ THEN REPLY #44679 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #44680 /* ~"Nie napinaj mojej cierpliwości. Odejdź. Natychmiast."~ */
  IF ~~ THEN REPLY #44681 /* ~"Mam tylko kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #44682 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #44683 /* ~Spogląda na ciebie obojętnie. "Sam go poszukaj. Idź już. Przestań wystawiać moją cierpliwość na próbę."~ */
  IF ~~ THEN REPLY #44684 /* ~"Żegnaj, więc."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
~ THEN BEGIN 8 // from:
  SAY #44685 /* ~Mężczyzna ma bladożółtą skórę i spiczasto zakończone uszy. Jego oczy są jak małe, czarne kamienie i nosi misternie lakierowaną miękką zbroję siatkową. Na widok Dak'kona chwyta miecz. "Psie githzerai! Chodź, posmakuj mego srebra!"~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 159
END

IF ~~ THEN BEGIN 9 // from:
  SAY #44686 /* ~"Stanąłbyś między nami, człowieku? Więc też umrzesz." Rzuca się w twoją stronę.~ */
  IF ~~ THEN REPLY #44687 /* ~Walcz.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44688 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44689 /* ~Obaj githowie rzucają się na siebie.~ */
  IF ~~ THEN REPLY #44690 /* ~Zaatakuj githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44691 /* ~Niech walczą.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
