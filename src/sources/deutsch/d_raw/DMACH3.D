// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMACH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMACH3~

IF ~  Global("Machine_3","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64340 /* ~Diese alte Maschine sieht aus wie ein vergessenes Kriegsrelikt. Der größte Teil der Maschine ist mit Staub bedeckt, nur nicht die seltsame Tafel mit den Hebeln an der Vorderseite. Seltsamerweise weist der Boden um die Tafel herum Spuren auf, als wäre 'in letzter Zeit' jemand darauf gegangen - vielleicht in den letzten Jahren.~ */
  IF ~  Global("Machine","GLOBAL",3)
~ THEN REPLY #64341 /* ~Stürze dich auf die Schalttafel und dann auf den Hebel mit dem #X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalGT("Machine","GLOBAL",0)
GlobalLT("Machine","GLOBAL",3)
~ THEN REPLY #64347 /* ~Stürze dich auf die Schalttafel und dann auf den Hebel mit dem #X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Machine","GLOBAL",0)
~ THEN REPLY #64352 /* ~Untersuche die Tafel.~ */ GOTO 4
  IF ~~ THEN REPLY #64361 /* ~Laß die Maschine in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64342 /* ~Schnell findest du den Hebel mit dem 'X' und betätigst ihn. Er gibt leicht unter deinen Händen nach und löst sich dann in Nebel auf - du atmest tief ein, aber anders als zuvor.... passiert diesmal nichts.~ */
  IF ~~ THEN JOURNAL #64260 /* ~Als ich den Hebel des vierten Reliktes zog, schien er etwas in den Gewölben der Festung zu öffnen... vielleicht den Weg nach draußen? Ich muß danach suchen und sehen, daß ich endlich hier rauskomme...~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64343 /* ~In der Ferne hörst du ein Donnergrollen, als ob sich *etwas* gerade geöffnet hätte, und ein heulender Wind pfeift durch die Gewölbe. Als du versuchst herauszufinden, woher das Geräusch kam, bemerkst du plötzlich, daß du dich auflöst und mit dem Wind eins wirst.~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64344 /* ~"*Also,* was geht hier vor sich...?!"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64345 /* ~"*Also,* was geht hier vor sich...?!"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64346 /* ~"*Also,* was geht hier vor sich...?!"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64348 /* ~Schnell findest du den Hebel mit dem 'X' und betätigst ihn. Er gibt leicht unter deinen Händen nach und löst sich dann in Nebel auf - du atmest tief ein, und wieder überfällt dich ein Schwindel, während die Wände um dich herum zu verblassen beginnen.~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64349 /* ~"Wohin gehe ich j-"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64350 /* ~"Wohin gehe ich j-"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64351 /* ~"Wohin gehe ich j-"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64353 /* ~An der Tafel befinden sich eine Reihe von Zahnrädern und Hebeln - neben jedem befindet sich eine Reihe von Kratzspuren, die aussehen, als wären sie hastig mit einem Dolch eingeritzt worden. Einige tragen keine Zeichen, einige sind mit einem einzigen Strich versehen, und einer trägt ein 'X.' Ohne zu wissen warum, ist dir klar, daß der 'X'-Hebel dir dabei helfen wird, diesen Ort zu verlassen.~ */
  IF ~  Global("Clock_1","GLOBAL",1)
~ THEN REPLY #64354 /* ~Betätige den Hebel mit dem #X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64238 /* ~Ich habe eine seltsame Maschine in der Festung gefunden - Sie sah aus wie eine Art Kanone, aber ich habe den Verdacht, daß es eine Art 'Torhaus' oder ein Verschließmechanismus für die Festung ist. Als ich daran zog, wurde ich zu einem anderen isolierten Abschnitt der Festung transportiert - einem Balkon mit Blick auf die Hauptgallerie. Ich weiß, daß ich irgendwie die anderen Maschinen finden und sie aktivieren muß - Wenn ich mich nach den Anleitungen, die in die Uhr geritzt waren, richten kann, mußte bereits eine meiner früheren Inkarnationen diesen Spießrutenlauf mitmachen.
~ */ GOTO 5
  IF ~  Global("Clock_1","GLOBAL",0)
~ THEN REPLY #64359 /* ~Betätige den Hebel mit dem #X.'~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64239 /* ~Ich habe eine seltsame Maschine in der Festung gefunden - Sie sah aus wie eine Art Kanone, aber ich habe den Verdacht, daß es eine Art 'Torhaus' oder ein Verschließmechanismus für die Festung ist. Als ich daran zog, wurde ich zu einem anderen isolierten Abschnitt der Festung transportiert - einem Balkon mit Blick auf die Hauptgallerie. Ich weiß, daß ich irgendwie die anderen Maschinen finden und sie aktivieren muß. Ich weiß nicht warum, aber ich habe das seltsame Gefühl, daß ich dies alles schon einmal getan habe.~ */ GOTO 5
  IF ~~ THEN REPLY #64360 /* ~Laß die Maschine in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #64355 /* ~Er gibt unter deinen Händen leicht nach, und zu deiner Überraschung löst er sich in Nebel auf... der überträgt sich auf deine Hand, die auch zu verschwinden beginnt, dann dein Arm, dann überfällt dich ein Schwindel, und die Wände um dich herum beginnen zu verblassen...~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64356 /* ~"W-"~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64357 /* ~"W-"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64358 /* ~"W-"~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~  Global("Machine_3","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #64362 /* ~Diese alte Maschine sieht aus wie ein vergessenes Kriegsrelikt. Der größte Teil der Maschine ist mit Staub bedeckt, nur nicht die seltsame Tafel mit den Hebeln an der Vorderseite. Von dem Hebel, den du zuerst betätigt hast, ist nichts mehr zu sehen - er ist verschwunden, als hätte es ihn nie gegeben. ~ */
  IF ~~ THEN REPLY #64363 /* ~Laß die Maschine in Ruhe.~ */ EXIT
END
