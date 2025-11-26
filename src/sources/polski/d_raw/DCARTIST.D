// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARTIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARTIST~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51717 /* ~Ta atrakcyjna, blada dziewczyna uśmiecha się do ciebie, gestem wskazując księgę pełną szkiców wykonanych węglem. "Witaj, dobry panie. Nazywam się Ullana. Jestem z zawodu artystką i chętnie naszkicuję cię za jedyne pięć miedziaków. Może być to portret poważny albo karykatura."~ */
  IF ~~ THEN REPLY #51718 /* ~"Nie, dzięki. Żegnaj."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51719 /* ~"Witaj ponownie, dobry panie. Czy narysować ci portret? Zapewniam cię, że wynik cię zadowoli..."~ */
  IF ~~ THEN REPLY #51720 /* ~"Nie teraz, dzięki. Żegnaj."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51721 /* ~Uśmiecha się, ale nieco smutno. "Zatem żegnaj. Proszę, nie wahaj się wrócić, jeśli zmienisz zdanie."~ */
  IF ~~ THEN REPLY #51722 /* ~Odejdź.~ */ EXIT
END
