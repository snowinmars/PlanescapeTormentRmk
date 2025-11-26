// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGORT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51179 /* ~Velké stvoření se tyčí do výšky devíti stop. Ohromné svaly obalují masivní kostru. Vypadá to, že se baví s dvěma dalšími stvoření stejného druhu vedle něj.~ */
  IF ~~ THEN REPLY #51180 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #51181 /* ~Ignoruj stvoření.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51182 /* ~Po tvém pozdravu se otočil a podíval se dolů na tebe. Zatvářil se zmateně. "Gort zdravíš jeden malej."~ */
  IF ~~ THEN REPLY #51183 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51184 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51185 /* ~Omluvně se na tebe podíval a zavrtěl hlavou. "Gort mluvíš tahle řeč moc blbě. Promiň, ty mluvíš Thorp." Ukázal na thokolu vedle sebe.~ */
  IF ~~ THEN REPLY #51186 /* ~"Dobře, děkuju ti."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51187 /* ~Vidíš Gorta. Podíval se dolů a usmál se. "Gort zase zdravíš jeden malej."~ */
  IF ~~ THEN REPLY #51188 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51189 /* ~"To nic, sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51190 /* ~Vidíš Gorta. Naklonil se k tobě. "Gort zdravíš, kamrád. Gort děkuješ malej kamarád zá život, co malej zachránil pro Gort." ~ */
  IF ~~ THEN REPLY #51191 /* ~Odejdi.~ */ EXIT
END
