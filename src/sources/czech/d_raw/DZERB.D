// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZERB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZERB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51192 /* ~Velké stvoření se tyčí do výšky devíti stop. Ohromné svaly obalují masivní kostru. Vypadá to, že se baví s dvěma dalšími stvoření stejného druhu vedle něj.~ */
  IF ~~ THEN REPLY #51193 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #51194 /* ~Ignoruj stvoření.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51195 /* ~Po tvém pozdravu se otočil a chvíli se rozhlíží. Po chvíli pohlédl dolů a všiml si tě. Zatvářil se zmateně. "Co ty od Zerb chceš?"~ */
  IF ~~ THEN REPLY #51196 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51197 /* ~"Nic, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51198 /* ~Omluvně se na tebe podíval a zavrtěl hlavou. "Zerb nemluvíš jazyk. Promiň, ty mluvíš Thorp." Ukázal na thokolu vedle sebe.~ */
  IF ~~ THEN REPLY #51199 /* ~"Dobře, děkuju ti."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51200 /* ~Vidíš Zerba. Podíval se dolů a usmál se. "Zerb zase zdravíš tě."~ */
  IF ~~ THEN REPLY #51201 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #51202 /* ~"To nic, sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51203 /* ~Vidíš Zerba. Naklonil se k tobě. " Zerb zdravíš, kamrád. Zerb děkuješ zá život, co ty zachrániš." ~ */
  IF ~~ THEN REPLY #51204 /* ~Odejdi.~ */ EXIT
END
