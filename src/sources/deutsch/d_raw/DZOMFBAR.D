// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2574 /* ~Die weibliche Leiche ist mit einem schweren Hemd aus Sackleinen bekleidet, das voller Wein- und Essensflecken ist. Ihre Lippen sind zugenäht, und ihre Arme und Beine sind mehrfach umwickelt. Die Bandagen scheinen in Konservierungsstoffen getränkt zu sein, um den Körper frisch zu halten... mit den Ergebnis, daß die Leiche zwar nicht faul, dafür aber ebenso ekelhaft nach Essig riecht.~ */
  IF ~~ THEN REPLY #2575 /* ~"Na... hast du nachher schon was vor?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2576 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2577 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXTERN ~DMORTE~ 120
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2578 /* ~Laß die Leiche in Ruhe.~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7047 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXIT
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7048 /* ~Laß die Leiche in Ruhe.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7049 /* ~"War richtig nett, sich mit dir zu unterhalten. Leb wohl."
~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7050 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2579 /* ~Der Zombie starrt dich weiter an.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2580 /* ~"Also gut. "Nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7051 /* ~"Also gut. "Nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7052 /* ~"Also gut. "Nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2581 /* ~Der Zombie reagiert nicht. Er scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #2582 /* ~Laß die Leiche in Ruhe.~ */ EXTERN ~DMORTE~ 120
  IF ~  Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",1)
~ THEN REPLY #7053 /* ~Laß die Leiche in Ruhe.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
Global("Morte_Zombie_Female_Bar_Quip","GLOBAL",0)
~ THEN REPLY #7054 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
