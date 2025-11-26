// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1072.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1072~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #35114 /* ~Der Geruch nach Formaldehyd, der von dieser Leiche ausgeht, ist besonders stark... Es riecht so, als sei es erst kürzlich angewendet worden, und das aus gutem Grund: Diese Leiche scheint sich in einem fortgeschrittenen Zustand der Verwesung zu befinden. Ihr Unterkiefer fehlt, und das Fleisch ist teilweise von ihrem Schädel geglitten, so daß die Zahl "1072" freigelegt ist, die in den Knochen gemeißelt wurde.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #35115 /* ~"Ich denke mal, diese hier hat auch schon mal bessere Zeiten gesehen..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #35132 /* ~"Ich denke mal, diese hier hat auch schon mal bessere Zeiten gesehen..."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #35133 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35134 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35139 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXTERN ~DMORTE~ 346
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35140 /* ~Laß die Leiche in Ruhe.~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35141 /* ~Danke für die anregende Unterhaltung. Leb wohl.~ */ EXIT
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35142 /* ~Laß die Leiche in Ruhe.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35143 /* ~Es war nett, sich mit dir zu unterhalten. Leb wohl.~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35144 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #35116 /* ~Die Leiche antwortet nicht auf deine Stimme, was teilweise daran liegen kann, daß sie keinen Unterkiefer hat. Entweder ist es das, oder sie hat einfach nichts zu sagen.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35117 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35130 /* ~"Na dann leb wohl."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35131 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #35135 /* ~Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.~ */
  IF ~  InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35136 /* ~"Dann leb wohl."~ */ EXTERN ~DMORTE~ 346
  IF ~  Global("Morte_Quip","GLOBAL",1)
~ THEN REPLY #35137 /* ~"Dann leb wohl."~ */ EXIT
  IF ~  !InParty("Morte")
Global("Morte_Quip","GLOBAL",0)
~ THEN REPLY #35138 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #35145 /* ~Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.~ */
END
