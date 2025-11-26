// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28158 /* ~Tato atraktivní mladá žena se zaujetím sleduje dvojici herců při představení.~ */
  IF ~~ THEN REPLY #28164 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #28165 /* ~Odejdi od ženy.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28159 /* ~Žena se k tobě otočila, ale herci stále udržují většinu její pozornosti. Mluví šeptem: "Vítej. Díval jsi se dlouho? Ten nalevo není špatný, ale jeho partner by měl ještě něco natrénovat, ne?"~ */
  IF ~~ THEN REPLY #28166 /* ~"Nejsem si jistý, opravdu."~ */ GOTO 2
  IF ~~ THEN REPLY #28167 /* ~"Ano, je slabý herec."~ */ GOTO 2
  IF ~~ THEN REPLY #28168 /* ~"Ne, myslím si, že je dobrý herec."~ */ GOTO 2
  IF ~~ THEN REPLY #28169 /* ~"To není důležité... Mám nějaké otázky..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28160 /* ~Žena pouze přikývla a opět začala se zaujetím sledovat herce.~ */
  IF ~~ THEN REPLY #28170 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #28171 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28161 /* ~Zamračila se a promluvila tichým hlasem: "Prosím, buď zdvořilejší: užívám si představení. Sbohem."~ */
  IF ~~ THEN REPLY #28172 /* ~"Jenom pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #28173 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28162 /* ~Stále mluví tichým hlasem, ale používá výhružnější tón: "Žádám tě, aby ses ztišil nebo opustil toto místo, jinak mě donutíš zavolat stráže."~ */
  IF ~~ THEN REPLY #28174 /* ~"Dobrá, zavolej je."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28175 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28163 /* ~Žena přikývla na pozdrav, ale naznačuje ti, abys byl tiše.~ */
  IF ~~ THEN REPLY #28176 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #68100 /* ~Odejdi.~ */ EXIT
END
