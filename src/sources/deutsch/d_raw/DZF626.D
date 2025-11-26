// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZF626.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZF626~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35050 /* ~Die linke Seite des Gesichts dieser Frau sieht so aus, als ob sie mit einer Keule eingeschlagen worden ist, und ihr Fleisch hängt in wunden, geschwollenen Klumpen über ihren kaputten Schädel. Die Zahl "626" ist kurz unter dem Auge auf die rechte Wange der Leiche gestickt worden.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35051 /* ~"Äh... Schlimme Wunde, die du da hast."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35068 /* ~"Äh... Schlimme Wunde, die du da hast."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35069 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35070 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35075 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXTERN ~DMORTE~ 338
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35076 /* ~Laß die Leiche in Ruhe.~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35077 /* ~Danke für die anregende Unterhaltung. Leb wohl.~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35078 /* ~Laß die Leiche in Ruhe.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35079 /* ~Es war nett, sich mit dir zu unterhalten. Leb wohl.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35080 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35052 /* ~Die Leiche starrt dich weiterhin mit ihrem einen guten Auge an.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35053 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35066 /* ~"Na dann leb wohl."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35067 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35071 /* ~Diese Leiche regt sich nicht. Sie sieht so aus, als sei sie bereits zu hinüber, um deine Fragen zu beantworten.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35072 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 338
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35073 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35074 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35081 /* ~Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
END
