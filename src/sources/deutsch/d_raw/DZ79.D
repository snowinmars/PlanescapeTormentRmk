// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ79.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ79~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34942 /* ~Der fleischige Kopf der Leiche wurde eindeutig irgendwann abgetrennt und hastig wieder angenäht. Die verschiedenen Nähte - alle in verschiedenen Stadien der Auflösung - scheinen darauf hinzudeuten, daß der Kopf während seiner Arbeit ständig wieder abgerissen und erneut befestigt wird. Auf der Stirn ist die Zahl "79" eingeritzt, umgeben von einem gezackten Kreis, der offenbar ein Brandzeichen ist.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #34943 /* ~"Na... gibt's hier irgendwas Interessantes zu berichten?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #34946 /* ~Sieh dir den gezackten Kreis an.~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #34947 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #34948 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #34951 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #34952 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #34944 /* ~Die Leiche starrt dich weiter an.~ */
  IF ~~ THEN REPLY #34945 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #34949 /* ~Die Leiche reagiert nicht. Sie scheint schon zu weit hinüber zu sein, um irgendeine deiner Fragen beantworten zu können..~ */
  IF ~~ THEN REPLY #34950 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END
