// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER7~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17734 /* ~Ten młody mężczyzna - sprzedawca ubrań, z nerwowym uśmiechem na twarzy - woła do przechodniów. Chyba nie widzi, że tam stoisz.~ */
  IF ~~ THEN REPLY #17744 /* ~"Witaj..."~ */ GOTO 2
  IF ~~ THEN REPLY #17745 /* ~Zostaw kupca w spokoju.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17736 /* ~"Witaj znowu. Czy chcesz, uch, coś obejrzeć?"~ */
  IF ~~ THEN REPLY #17746 /* ~"Nie, nie potrzebuję ubrań. Ale mam parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #17747 /* ~"Nie, jestem tu przypadkowo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17737 /* ~"Och, jak mi miło... jak miło! Czy chcesz coś dzisiaj obejrzeć? Futra? Jedwabie? Bawełnę?"~ */
  IF ~~ THEN REPLY #17748 /* ~"Nic, nie potrzebuję ubrań. Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #17749 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17738 /* ~"Oczywiście, pytaj proszę. O co tylko chcesz." Próbując zrobić dobre wrażenie, uśmiecha się z obawą.~ */
  IF ~~ THEN REPLY #17750 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17751 /* ~"Szukam kogoś, kto nazywa się Farod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17752 /* ~"Szukam dziennika, który mi zginął."~ */ GOTO 4
  IF ~~ THEN REPLY #17753 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #17739 /* ~"Och!" Nagle wydaje się zawiedziony. "Ja... uch... no cóż, myślałem, że będziesz pytać... o ubrania."~ */
  IF ~~ THEN REPLY #17754 /* ~"Ubrania?"~ */ GOTO 5
  IF ~~ THEN REPLY #17755 /* ~"Nie. Odpowiesz na moje pytanie?"~ */ GOTO 6
  IF ~~ THEN REPLY #17756 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17741 /* ~Oczy kupca jaśnieją. "Tak, ubrania! Mam co tylko chcesz, mój przyjacielu... każdy rodzaj! Chcesz zobaczyć coś konkretnego?"~ */
  IF ~~ THEN REPLY #17757 /* ~"Nie, ale czy odpowiesz na moje pytanie?"~ */ GOTO 6
  IF ~~ THEN REPLY #17758 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #17742 /* ~Marszczy czoło, kiwając głową. "Uch... nie." Nagle, wydaje się, że na coś wpadł, pokazuje na zwoje tekstyliów: "Jakieś ubranie?"~ */
  IF ~~ THEN REPLY #17759 /* ~"Nie. Żegnaj."~ */ EXIT
END
