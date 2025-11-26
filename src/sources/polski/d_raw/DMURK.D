// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMURK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMURK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58784 /* ~Widzisz przed sobą kupca. Mężczyzna nie odznacza się niczym niezwykłym. Gdy do niego podchodzisz, uśmiecha się i kiwa głową.~ */
  IF ~~ THEN REPLY #58785 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58786 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58789 /* ~Mężczyzna kłania ci się nisko. "Ty też przyjmij moje pozdrowienia. Jestem Mrok, interesuje cię jakiś towar?"~ */
  IF ~~ THEN REPLY #58790 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58791 /* ~"Co masz do sprzedania?"~ */ GOTO 3
  IF ~~ THEN REPLY #58792 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58793 /* ~Kupiec kręci przecząco głową, po czym marszczy brwi. "Nie sprzedaję informacji. Jeśli chcesz tylko odpowiedzi na pytania, poszukaj gdzie indziej."~ */
  IF ~~ THEN REPLY #58794 /* ~"Dobrze. Co masz do sprzedania?"~ */ GOTO 3
  IF ~~ THEN REPLY #58795 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.0
  SAY #58796 /* ~Jego oczy zaczynają błyszczeć, a na twarzy pojawia się przebiegły uśmieszek. "No cóż... Tak się składa, że mam duży wybór rękawic i toporów. Jest tylko jedna rzecz lepsza od zrobienia z kogoś miazgi własnymi rękami - pocięcie go na drżące plasterki."~ */
  IF ~~ THEN REPLY #58797 /* ~"Pokaż mi, co masz do sprzedania."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58798 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #58799 /* ~Widzisz kupca o imieniu Mrok. Kłania ci się, gdy do niego podchodzisz. "Witaj jeszcze raz. Czym mogę służyć?"~ */
  IF ~~ THEN REPLY #58800 /* ~"Co masz do sprzedania?"~ */ GOTO 3
  IF ~~ THEN REPLY #58801 /* ~"Pokaż mi, co masz do sprzedania."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58802 /* ~"Żegnaj."~ */ EXIT
END
