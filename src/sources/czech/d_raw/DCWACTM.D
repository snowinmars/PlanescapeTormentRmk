// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28177 /* ~Tento gentleman se zaujetím sleduje dvojici herců při představení.~ */
  IF ~~ THEN REPLY #28178 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #28193 /* ~Odejdi od muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28179 /* ~Muž se k tobě otočil, ale herci stále udržují většinu jeho pozornosti. Mluví šeptem: "Ano, zdravím. Co na ně říkáš? Ten napravo není špatný, ale jeho partner by měl ještě něco natrénovat, ne?"~ */
  IF ~~ THEN REPLY #28180 /* ~"Nejsem si jistý, opravdu."~ */ GOTO 2
  IF ~~ THEN REPLY #28190 /* ~"Ano, je slabý herec."~ */ GOTO 2
  IF ~~ THEN REPLY #28191 /* ~"Ne, myslím si, že je dobrý herec."~ */ GOTO 2
  IF ~~ THEN REPLY #28192 /* ~"Na tom nezáleží... Mám nějaké otázky..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28181 /* ~"Hmmm." Muž opět začal se zaujetím sledovat herce.~ */
  IF ~~ THEN REPLY #28182 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #28189 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28183 /* ~Zamračil se na tebe a promluvil tichým hlasem: "Teď ne, sleduji jejich představení. Sbohem."~ */
  IF ~~ THEN REPLY #28184 /* ~"Jen pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #28188 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28185 /* ~Stále mluví tichým hlasem, ale používá výhružnější tón: "Ne. Nechej mě na pokoji, jinak mě donutíš zavolat stráže, aby tě odsud vyvedly."~ */
  IF ~~ THEN REPLY #28186 /* ~"Dobrá, zavolej je."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28187 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28194 /* ~Muž přikývl na pozdrav, ale naznačuje ti, abys byl tiše.~ */
  IF ~~ THEN REPLY #28195 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #68101 /* ~Odejdi.~ */ EXIT
END
