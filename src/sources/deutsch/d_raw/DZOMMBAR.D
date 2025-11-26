// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2583 /* ~Der Zombie starrt dich mit leerem Blick an. Seine Lippen sind zugenäht, und verschiedene Körperstellen sind mehrfach umwickelt. Der Leiche entströmt ein leichter Alkoholgeruch.~ */
  IF ~~ THEN REPLY #2587 /* ~"Na... irgendwas Interessantes passiert hier in der Gegend?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2588 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #2589 /* ~"Es war nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #2591 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2584 /* ~Der Zombie starrt dich weiter an.~ */
  IF ~~ THEN REPLY #2590 /* ~"Also gut. "Nett, sich mit dir zu unterhalten. Leb wohl."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2585 /* ~Der Zombie reagiert nicht. Er scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können.~ */
  IF ~~ THEN REPLY #2586 /* ~"Dann leb wohl."~ */ EXIT
END
