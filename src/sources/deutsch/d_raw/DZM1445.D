// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1445.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1445~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46756 /* ~Die Haut dieser Leiche ist mit Pocken übersät. Ihre Ohren, die Nasenspitze und Teile ihrer Finger sind abgefault... Der Mann mußt einer entsetzlichen Krankheit zum Opfer gefallen sein. Auf seiner Stirn ist die Nummer "1445" eintätowiert, und seine Lippen sind fest zusammengenäht.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #46757 /* ~"Und... hast du was Interessantes bemerkt?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #46760 /* ~"Und... hast du was Interessantes bemerkt?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #46761 /* ~"Ich weiß genau, daß du kein Zombie bist. Darauf fällt bei dir keiner rein."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46762 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #46765 /* ~"War schön, mit dir zu reden. Wiedersehen."~ */ EXIT
  IF ~~ THEN REPLY #46766 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #46758 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #46759 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #46763 /* ~Die Leiche gibt keine Antwort. Es scheint, als wäre sie zu weit im Jenseits, um deine Fragen zu beantworten.~ */
  IF ~~ THEN REPLY #46764 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
