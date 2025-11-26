// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR6~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38107 /* ~Nedá se s tím nic dělat. Vzpomínky jsou pryč, možná se nikdy nevrátí. S každou smrtí ztrácím část sebe... ~ */
  IF ~~ THEN REPLY #53738 /* ~Pokračuj.~ */ GOTO 1
  IF ~~ THEN REPLY #53739 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53740 /* ~Jak může být někdo nesmrtelný a přece zemřít?~ */
  IF ~~ THEN REPLY #53741 /* ~Pokračuj.~ */ GOTO 2
  IF ~~ THEN REPLY #53742 /* ~Odvrať se od nápisu.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53743 /* ~Řekl mi, že má mysl slábne každou smrtí. Zeptal jsem se ho, jak je to možné, ale nedokázal odpovědět. Nebyl k ničemu. Vykoupal jsem ho v krvi, takže už žádná další inkarnace nebude mít nic z jeho zbytečnosti.~ */
  IF ~  Global("Inscr_6","GLOBAL",0)
~ THEN REPLY #53744 /* ~Prozkoumej panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53745 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53746 /* ~Rytiny jsou hrubé, v porovnáním s vysokou kvalitou samotného panelu. Při bližším ohledání jsi získal pocit, že by se dal panel zatlačit do zdi.~ */
  IF ~~ THEN REPLY #53747 /* ~Zatlač na panel.~ */ DO ~SetGlobal("Inscr_6","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53748 /* ~Nechej panel být.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53749 /* ~Panel hladce zajel do zdi. Ze sarkofágu za tebou slyšíš cvaknutí.~ */
  IF ~~ THEN REPLY #53750 /* ~Odvrať se od nápisu.~ */ EXIT
END
