// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ594.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ594~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35018 /* ~Powłóczący nogami trup kobiety wpatruje się w ciebie nic nie widzącym wzrokiem. Jego skóra jest cieniutka, niemal przezroczysta... wygląda tak, jakby ktoś oblepił jego szkielet warstwą pajęczyny. Na czole, wydrapany węglem, ma numer "594".~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35019 /* ~"Więc jak... masz jakieś plany na później?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35036 /* ~"Więc jak... masz jakieś plany na później?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35037 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35038 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35043 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXTERN ~DMORTE~ 334
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35044 /* ~Zostaw truposza w spokoju.~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35045 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35046 /* ~Zostaw truposza w spokoju.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35047 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35048 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35020 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35021 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35034 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35035 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35039 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35040 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 334
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35041 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35042 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35049 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
END
