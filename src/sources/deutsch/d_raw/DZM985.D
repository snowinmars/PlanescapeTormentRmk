// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM985.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM985~

IF ~  Global("Topple_985","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45515 /* ~Diese Leiche - "985" - ist auf der Stelle stehengeblieben; nach dem Zustand ihres linken Beins zu urteilen, hat sich die Leichenfäule schon durch das Knie gefressen. Die Leiche schwankt dauernd hin und her, immer kurz davor, das Gleichgewicht zu verlieren. ~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #45516 /* ~Gib der Leiche einen Schubs.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_ZM985_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_ZM985_1","GLOBALGood",-1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ EXTERN ~DMORTE~ 482
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #45517 /* ~Gib der Leiche einen Schubs.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_ZM985_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_ZM985_1","GLOBALGood",-1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 3
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #45518 /* ~Versuche, die Leiche zu stabilisieren.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_ZM985_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_ZM985_1","GLOBALGood",1)
~ GOTO 4
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #45519 /* ~Versuche, die Leiche zu stabilisieren.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_ZM985_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_ZM985_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45520 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45521 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #45522 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #45523 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 5.0 5.1 5.2
  SAY #45524 /* ~Die Leiche starrt wahrnehmungslos geradeaus. Man sieht ihr nicht an, ob sie dich gehört hat.~ */
  IF ~~ THEN REPLY #45525 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5 5.3
  SAY #45526 /* ~Die Leiche rührt sich nicht. Sie sieht so aus, als sei sie schon ein bißchen zu weit hinüber, um deine Fragen zu beantworten.~ */
  IF ~~ THEN REPLY #45527 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 6.0
  SAY #45528 /* ~Im linken Bein der Leiche *knackt* es plötzlich, und sie fällt sie um wie ein abgesägter Baum. Ihr Torso prallt auf dem Straßenpflaster auf und platzt auf wie eine verfaulte Melone. Heraus läuft eine dreckige, blutige Brühe. Zu deiner Überraschung scheint niemand bemerkt zu haben, daß die Leiche umgekippt ist... Noch seltsamer ist, daß das linke Bein noch kurz aufrecht stehen bleibt, als würde es strammstehen. Als es umfällt, macht es einen *dumpfen* Schlag.~ */
  IF ~~ THEN DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
CreateItem("Limb985",1,0,0)
SetGlobal("Topple_985","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #45530 /* ~Du greifst nach dem linken Arm der Leiche, um sie zu stabilisieren. Doch plötzlich schwankt sie nach rechts, so daß du im Endeffekt eher an ihr zerrst, als daß du sie ruhig hältst...~ */
  IF ~~ THEN DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ EXTERN ~DMORTE~ 482
END

IF ~  GlobalGT("Topple_985","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #45531 /* ~Es scheint, als hätte jemand den linken Arm und das linke Bein der Leiche durch Ersatzteile von anderen Leichen ersetzt. Das linke Bein ist kürzer als das rechte, aber wenigstens steht sie jetzt.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45532 /* ~"Tut mir leid, daß ich dich vorhin umgeschubst habe. War keine Absicht."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45533 /* ~"Tut mir leid, daß ich dich vorhin umgeschubst habe. War keine Absicht."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45534 /* ~"Ich weiß, daß du kein Zombie bist, verstehst du. Du führst hier keinen an der Nase herum."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45535 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #45536 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #45537 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3
  SAY #45538 /* ~Du greifst nach dem linken Arm der Leiche, um sie zu stabilisieren. Doch plötzlich schwankt sie nach rechts, so daß du im Endeffekt eher an ihr zerrst, als daß du sie ruhig hältst...~ */
  IF ~~ THEN REPLY #45539 /* ~"Ah-oh..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #64205 /* ~Als du die verwesten Überreste der Leiche betrachtest, stellst du fest, daß ihr linker Arm unversehrt zu sein scheint - er hat sich bei dem Sturz vom Körper gelöst und scheint von der Verwesung nicht betroffen zu sein, die den Rest des Körpers befallen hat.~ */
  IF ~~ THEN REPLY #64206 /* ~"Hmmm. Ich frage mich, ob ich für diesen Arm Verwendung hätte..."~ */ EXIT
END
