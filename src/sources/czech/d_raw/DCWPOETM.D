// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28210 /* ~Tento gentleman se zaujetím sleduje postaršího básníka, který recituje.~ */
  IF ~~ THEN REPLY #28211 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #28212 /* ~Odejdi od muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28213 /* ~Muž se k tobě otočil, ale básník stále udržuje většinu jeho pozornosti. Mluví šeptem: "Tebe taky zdravím." Na chvíli se odmlčel a pak zašeptal: "Není to nejnádhernější poezie jakou jsem kdy slyšel, ale jistě to není tak hrozné, co?"~ */
  IF ~~ THEN REPLY #28214 /* ~"Nejsem si jistý, opravdu."~ */ GOTO 2
  IF ~~ THEN REPLY #28215 /* ~"Ano, je slabý básník."~ */ GOTO 2
  IF ~~ THEN REPLY #28216 /* ~"Ne, myslím si, že je dobrý básník."~ */ GOTO 2
  IF ~~ THEN REPLY #28217 /* ~"Na tom nezáleží... Mám nějaké otázky..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28218 /* ~"Hmmm." Muž přikývl a dál sledoval starého básníka.~ */
  IF ~~ THEN REPLY #28219 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #28220 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28221 /* ~Zamračil se na tebe a promluvil tichým hlasem: "Ne, ne teď. Poslouchám jeho poezii. Sbohem."~ */
  IF ~~ THEN REPLY #28222 /* ~"Jen pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #28223 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28224 /* ~Stále mluví tichým hlasem, ale používá výhružnější tón: "Buď tiše nebo odejdi, dokud nebudu donucen svolat stráže."~ */
  IF ~~ THEN REPLY #28225 /* ~"Dobrá, zavolej je."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28226 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28227 /* ~Muž kývl na pozdrav, ale naznačuje ti, abys byl tiše.~ */
  IF ~~ THEN REPLY #28228 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #68103 /* ~Odejdi.~ */ EXIT
END
