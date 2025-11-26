// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36001 /* ~Vidíš mladou ženu. Mračí se a vypadá rozčíleně. Zašklebila se na tebe. "Co chceš?"~ */
  IF ~~ THEN REPLY #36002 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36003 /* ~Ignoruj ji.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36004 /* ~Zamračila se na tebe a dala si ruce na stehna. "Odpal, vole! Jdi na dlouhou procházku po krátký cestě."~ */
  IF ~~ THEN REPLY #36005 /* ~"Co to znamená?"~ */ GOTO 2
  IF ~~ THEN REPLY #36006 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #36007 /* ~"Máš problémy s vychováním."~ */ GOTO 4
  IF ~~ THEN REPLY #36008 /* ~"Fajn, asi půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36009 /* ~Vycenila zuby a udělal na tebe hrubé gesto. "To znamená, vypadni, magore! Nemám ti co říct." Vzdorně se na tebe dívá.~ */
  IF ~~ THEN REPLY #36010 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #36011 /* ~"Fajn, asi půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #36012 /* ~Zle se na tebe usmála. "A já mám pro tebe vodpověď... Vem si klacek a narvi si ho někam!" Ukázala ti další hrubé gesto.~ */
  IF ~~ THEN REPLY #36013 /* ~"Máš problémy s vychováním."~ */ GOTO 4
  IF ~~ THEN REPLY #36014 /* ~"Fajn, asi půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.0
  SAY #36015 /* ~Směje se. "Jó, a to jsem se eště ani nezahřála! Vraz si ho tam, kde slunce nesvítí!"~ */
  IF ~~ THEN REPLY #36016 /* ~"Fajn, asi půjdu. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #36017 /* ~Vidíš mladou ženu. Mračí se a vypadá rozčíleně. Zašklebila se na tebe. "Co chceš?"~ */
  IF ~~ THEN REPLY #36018 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #36019 /* ~"Nic, sbohem."~ */ EXIT
END
