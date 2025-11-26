// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1508.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1508~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46745 /* ~Die Stirn dieser äußerst muskulösen Leiche ist eine einzige Narbenlandschaft. Sie sieht aus, als hätte die Leiche ihre Gegner zu Lebzeiten mit dem Kopf totgeschlagen. Auf der Stirn ist mit einem roten Faden die Nummer "1508" eingenäht. Ihr Mund ist mit einer groben schwarzen Faser zusammengenäht. Die Leiche riecht leicht nach Balsamierungsöl.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #46746 /* ~"Und... hast du was Interessantes bemerkt?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #46749 /* ~"Und... hast du was Interessantes bemerkt?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #46750 /* ~"Ich weiß genau, daß du kein Zombie bist. Darauf fällt bei dir keiner rein."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46751 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #46754 /* ~"War schön, mit dir zu reden. Wiedersehen."~ */ EXIT
  IF ~~ THEN REPLY #46755 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #46747 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #46748 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #46752 /* ~Die Leiche gibt keine Antwort. Es scheint, als wäre sie zu weit im Jenseits, um deine Fragen zu beantworten.~ */
  IF ~~ THEN REPLY #46753 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
