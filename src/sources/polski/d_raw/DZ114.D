// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ114.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ114~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34986 /* ~Ten trup kobiety przestaje człapać na twój widok. Dostrzegasz numer "114" wygrawerowany na jej czole. Usta ma zaszyte, ale nici powoli obluzowują się i z ust dolatują cichutkie jęki.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34987 /* ~"Więc jak... masz jakieś plany na później?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35004 /* ~"Więc jak... masz jakieś plany na później?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35005 /* ~"Przecież wiem, że nie jesteś zombie. Nikogo nie oszukasz."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35006 /* ~Posłuż się swoją umiejętnością Gadaj-Kości-Opowieści.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35011 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXTERN ~DMORTE~ 330
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35012 /* ~Zostaw truposza w spokoju.~ */ EXTERN ~DMORTE~ 330
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35013 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35014 /* ~Zostaw truposza w spokoju.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35015 /* ~"Miło było z tobą pogadać. Żegnaj."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35016 /* ~Zostaw truposza w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34988 /* ~Trup wciąż się w ciebie wpatruje.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #34989 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 330
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35002 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35003 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35007 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35008 /* ~"A zatem żegnaj."~ */ EXTERN ~DMORTE~ 330
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35009 /* ~"A zatem żegnaj."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35010 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35017 /* ~Trup nie odpowiada. Wygląda na to, że jest w zbyt daleko posuniętym stadium rozkładu, aby odpowiedzieć na twoje pytania.~ */
END
