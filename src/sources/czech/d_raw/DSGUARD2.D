// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37939 /* ~Vidíš strážného Harmonických. Odhání tě od sebe. "Jdi pryč, občane. Není tu nic k vidění."~ */
  IF ~~ THEN REPLY #37944 /* ~"Dobrý den."~ */ GOTO 1
  IF ~~ THEN REPLY #37945 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37940 /* ~Mračí se na tebe. "Kterému slovu z *jdi pryč* jsi nerozuměl?" Vraždí tě pohledem. "Tady není nic k vidění, zmiz."~ */
  IF ~~ THEN REPLY #37946 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #37947 /* ~"Fajn, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37941 /* ~S výsměchem v očích. "Ach tak, ty máš otázky. Tak to je něco jiného..." Podívá se na tebe. "Hele, nemám čas na žádné otázky. Jdi pryč."~ */
  IF ~~ THEN REPLY #37948 /* ~"Nebude to trvat dlouho."~ */ GOTO 3
  IF ~~ THEN REPLY #37949 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37942 /* ~"Nemám žádný čas, který bych ti chtěl věnovat, občane. Jdi pryč." Odhání tě.~ */
  IF ~~ THEN REPLY #37950 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37943 /* ~Vidíš strážného Harmonických. Mračí se na tebe." Nemám čas na blbosti, občane. Jdi pryč."~ */
  IF ~~ THEN REPLY #37951 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37952 /* ~"Sbohem."~ */ EXIT
END
