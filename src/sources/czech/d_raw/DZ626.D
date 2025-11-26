// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ626.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ626~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35050 /* ~Levá část ženina obličeje vypadá jako po ráně palicí, maso jí z lebky visí ve zhmožděných, nateklých chumáčích. Do pravé tváře, těsně pod oko, jí někdo vyšil číslo "626".~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35051 /* ~"Uh... máš pěkně škaredou ránu."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35068 /* ~"Uh... máš pěkně škaredou ránu."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35069 /* ~"Vím, že nejsi zombie. Takhle nikoho neoblbneš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35070 /* ~Použij na mrtvole tvou dovednost Kosti-vyprávějte.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35075 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXTERN ~DMORTE~ 338
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35076 /* ~Nechej mrtvolu být.~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35077 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35078 /* ~Nechej mrtvolu být.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35079 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35080 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35052 /* ~Mrtvola se na tebe dál dívá svým jediným dobrým okem.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35053 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35066 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35067 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35071 /* ~Tělo se nehýbe. Asi už shnilo příliš.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35072 /* ~"Sbohem tedy."~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35073 /* ~"Sbohem tedy."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35074 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35081 /* ~Mrtvola neodpovídá. Asi už shnila příliš, aby byla schopná odpovídat na otázky.~ */
END
