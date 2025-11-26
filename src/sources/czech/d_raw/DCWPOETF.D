// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28196 /* ~Tato atraktivní mladá žena se zaujetím sleduje postaršího básníka, který recituje.~ */
  IF ~~ THEN REPLY #28197 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #28653 /* ~Nechej ženu o samotě.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28198 /* ~Žena se k tobě otočila, ale básník stále udržuje většinu její pozornosti. Mluví šeptem: "Věřím, že budete tiše." Pokynula k básníkovi. "Určitě to není klasika, ale ten starý chlapík je působivý."~ */
  IF ~~ THEN REPLY #28199 /* ~"Nejsem si jistý, opravdu."~ */ GOTO 2
  IF ~~ THEN REPLY #28209 /* ~"Ano, je slabý básník."~ */ GOTO 2
  IF ~~ THEN REPLY #28654 /* ~"Ne, myslím že je skutečně dobrý básník."~ */ GOTO 2
  IF ~~ THEN REPLY #28655 /* ~"To nevadí... Mám pár otázek..."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28200 /* ~Žena pomalu přikývla, s očima upřenýma stále na básníka.~ */
  IF ~~ THEN REPLY #28201 /* ~"Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #28208 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #28202 /* ~Zamračila se na tebe a mluvila tichým hlasem: "Teď na to není čas. Prosím, respektuj básníka a buď tiše... sbohem."~ */
  IF ~~ THEN REPLY #28203 /* ~"Jen pár otázek..."~ */ GOTO 4
  IF ~~ THEN REPLY #28207 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28204 /* ~Stále mluví tichým hlasem, ale používá výhružnější tón: "Teď není vhodná doba ani místo na otázky. Nechej mě na pokoji nebo zavolám stráže."~ */
  IF ~~ THEN REPLY #28205 /* ~"Dobrá, zavolej je."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28206 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28650 /* ~Žena ti přikývla na pozdrav, ale naznačuje ti, abys zůstal potichu.~ */
  IF ~~ THEN REPLY #28656 /* ~"Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #68102 /* ~Odejdi.~ */ EXIT
END
