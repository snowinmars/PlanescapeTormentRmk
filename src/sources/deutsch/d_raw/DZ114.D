// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ114.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ114~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34986 /* ~Die Leiche dieser Frau hält in ihrem trottenden Gang inne, als du dich näherst. Du bemerkst, daß die Zahl "114" auf ihre Stirn geritzt ist. Ihr Mund ist zugenäht worden, aber die Fäden lösen sich langsam, und zwischen ihren Lippen dringt schwaches Stöhnen hervor.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34987 /* ~"Sag mal... hast du nachher schon was vor?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35004 /* ~"Sag mal... hast du nachher schon was vor?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35005 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35006 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35011 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXTERN ~DMORTE~ 330
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35012 /* ~Laß die Leiche in Ruhe.~ */ EXTERN ~DMORTE~ 330
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35013 /* ~Danke für die anregende Unterhaltung. Leb wohl.~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35014 /* ~Laß die Leiche in Ruhe.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35015 /* ~Es war nett, sich mit dir zu unterhalten. Leb wohl.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35016 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34988 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #34989 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 330
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35002 /* ~"Na dann leb wohl."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35003 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35007 /* ~Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35008 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 330
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35009 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35010 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35017 /* ~Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
END
