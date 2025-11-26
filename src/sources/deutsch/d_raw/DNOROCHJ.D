// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNOROCHJ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DNOROCHJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46511 /* ~Du siehst einen spindeldürren Mann in einer schmutzigen schwarzen Robe. Sein borstiges schwarzes Haar steht von seinem Totenschädel wie eine Dornenkrone ab, und seine fahle Haut spannt sich über seinen Schädel. Er blickt finster in seinen Trunk und murmelt etwas vor sich hin. ~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46526 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46527 /* ~"Norochj?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46528 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46512 /* ~Du siehst einen spindeldürren Staubmenschen in einer schmutzigen, schwarzen Robe. Sein borstiges, schwarzes Haar steht wie eine Dornenkrone von seinem Schädel ab, über den sich eine kalkweiße Haut spannt. Mit gerunzelter Stirn starrt er in sein Glas und nuschelt vor sich hin.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46529 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46530 /* ~"Norochj?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46531 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Norochj","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #46513 /* ~Du siehst Norochj. Er nimmt eine seiner haarigen Stacheln und kratzt sich damit im Gesicht. Du kannst nicht umhin zu denken, daß ihm Dreadlocks besser stehen würden.~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46532 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46533 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46534 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46535 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46536 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46537 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46538 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46539 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46540 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62892 /* ~"Ich habe die... Nicht-Staubmenschen-Frau gefunden. Sie ist zu sehr damit beschäftigt, tot zu sein, als daß sie noch einmal jemanden bestehlen würde."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62893 /* ~"Bekümmert dich irgendwas?"~ */ GOTO 5
  IF ~  Global("Norochj_Ad","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62894 /* ~"Ich bin hier wegen des Anschlags draußen."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62895 /* ~"Emoric hat mir gesagt, daß ich mit dir reden soll, Norochj."~ */ GOTO 12
  IF ~~ THEN REPLY #62896 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 0.1 1.0 1.1
  SAY #46514 /* ~Der Staubmensch schaut auf, blinzelt und mustert dich von Kopf bis Fuß. Er nimmt eine seiner stacheligen Haarsträhnen und zeigt damit auf sich. "Norochj. Eingeweihter. Staubmensch. Wächter."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",0)
~ THEN REPLY #46545 /* ~"Du siehst bekümmert aus... Norochj."~ */ GOTO 5
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46546 /* ~"Ich bin hier wegen des Anschlags draußen."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46547 /* ~"Emoric hat mir gesagt, daß ich mit dir reden soll."~ */ GOTO 12
  IF ~~ THEN REPLY #46548 /* ~"Kann ich dir ein paar Fragen stellen?"~ */ GOTO 4
  IF ~~ THEN REPLY #46549 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #46515 /* ~Norochj schüttelt den Kopf und starrt wieder in sein Glas.~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46550 /* ~"Stimmt irgendwas nicht? Du siehst bekümmert aus."~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46551 /* ~"Moment mal. Emoric hat mir gesagt, daß ich mit dir reden soll."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46609 /* ~"Ich bin hier wegen des Anschlags draußen."~ */ GOTO 6
  IF ~~ THEN REPLY #46610 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.10 3.0 4.0 9.10 10.10 11.10
  SAY #46516 /* ~Norochj zeichnet mit dem Finger seine Stirnfalten nach. "Bekümmert, ja."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46553 /* ~"Was hast du denn?"~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46554 /* ~"Emoric hat mir gesagt, daß ich mit dir reden soll."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46611 /* ~"Ich bin hier wegen des Anschlags draußen."~ */ GOTO 6
  IF ~~ THEN REPLY #46612 /* ~"Ich glaube nicht, daß ich dir bei deinen Problemen helfen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.11 3.1 4.2 5.0 5.2
  SAY #46517 /* ~Der Staubmensch mustert dich von Kopf bis Fuß. "Ich viele Sorgen. Kann dir helfen. Mausoleum erwacht, Tote gehen, Tote verstört, Staubmenschen böse. Du herausfinden, was Untote beunruhigt, ich Kupfermünzen zahlen."~ */
  IF ~~ THEN REPLY #46556 /* ~"Na gut. Wo ist dieses Mausoleum?"~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",1)
~ JOURNAL #17134 /* ~Norochj, ein Staubmensch, den ich in der Bar "Zum Staubfänger" getroffen habe, hat mir von einem Mausoleum erzählt, in dem die Toten wandeln. Er möchte, daß ich mir die Sache mal ansehe. Er sagt, der Eingang zum Mausoleum befinde sich nordwestlich des Staubmenschen-Denkmals vor der Leichenhalle. Er sagt, ich solle zum Torbogen dort gehen, mit dem rechten Zeigefinger einen Halbkreis über meinem Herzen beschreiben, und dann würde sich der Eingang öffnen. Wenn ich das Problem im Mausoleum finden und lösen kann, werde ich zu Norochj zurückkehren und es ihn wissen lassen.~ */ GOTO 13
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46557 /* ~"Nun, ich weiß nicht, ob ich dir dabei helfen kann. Emoric hat mich wegen einer anderen Sache zu dir geschickt."~ */ GOTO 12
  IF ~~ THEN REPLY #46558 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 12.0
  SAY #46518 /* ~Norochj nickt. "Ich ihn nicht finden. Wichtig für Staubmenschen."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46559 /* ~"Sei beruhigt - ich hab ihn schon gefunden. Er wird diesen Trick nicht noch mal probieren."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Glücklicherweise hab ich mich ja schon um Aschenmantel gekümmert, so daß ich die Belohnung einstreichen konnte.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46560 /* ~"Sei beruhigt - ich hab ihn schon gefunden. Er wird diesen Trick nicht noch mal probieren."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Glücklicherweise hab ich mich ja schon um Aschenmantel gekümmert, so daß ich die Belohnung einstreichen konnte.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46561 /* ~"Sei beruhigt - ich hab ihn schon gefunden. Er wird diesen Trick nicht noch mal probieren."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~Glücklicherweise hab ich mich ja schon um Aschenmantel gekümmert, so daß ich die Belohnung einstreichen konnte.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Dead("Ashman")
~ THEN REPLY #46562 /* ~"Sei beruhigt - ich hab ihn schon gefunden und seinem Elend ein Ende bereitet."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Glücklicherweise hab ich den alten Aschenmantel bereits umgelegt, also hab ich die Belohnung eingesackt.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Dead("Ashman")
~ THEN REPLY #46563 /* ~"Sei beruhigt - ich hab ihn schon gefunden und seinem Elend ein Ende bereitet."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~Glücklicherweise hab ich den alten Aschenmantel bereits umgelegt, also hab ich die Belohnung eingesackt.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Dead("Ashman")
~ THEN REPLY #62897 /* ~"Sei beruhigt - ich hab ihn schon gefunden und seinem Elend ein Ende bereitet."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ GOTO 9
  IF ~  Dead("Mochai")
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62898 /* ~"Keine Sorge - ich habe sie schon gefunden und von ihrem Elend erlöst."~ */ GOTO 15
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62899 /* ~"Ich könnte ihn für dich finden."~ */ GOTO 8
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62900 /* ~"Ich könnte ihn für dich finden... aber es kostet dich was."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Norochj_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #62901 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7 7.8
  SAY #46519 /* ~Norochj nickt wieder. "Du mir helfen, ich dir Kupfermünzen zahlen. Du finden Nicht-Staubmensch, mit ihm sprechen, dann zurückkommen. Norochj warten."~ */
  IF ~~ THEN REPLY #46568 /* ~"Na gut. Ich komm wieder, wenn ich diesen... 'Nicht-Staubmenschen' gefunden habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 2.5 2.8 7.2 7.5 9.2 9.5 9.8 10.2 10.5 10.8 11.2 11.5 11.8 15.2 15.5 16.2 16.5
  SAY #46520 /* ~Norochjs Sorgenfalten glätten sich bei deinen Worten. "Danke." Er holt einen kleinen Beutel aus seiner Robe hervor und überreicht ihn dir. "Hundert Kupfermünzen."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46569 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46570 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46571 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46572 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46573 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46574 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46575 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46576 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46577 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62902 /* ~"Ich habe die... Nicht-Staubmenschen-Frau gefunden. Sie ist zu sehr damit beschäftigt, tot zu sein, als daß sie noch einmal jemanden bestehlen würde."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62903 /* ~"Bekümmert dich sonst noch irgendwas?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #62904 /* ~"Übrigens, Emoric hat mich wegen einer anderen Sache zu dir geschickt."~ */ GOTO 12
  IF ~~ THEN REPLY #62905 /* ~"Danke... hat mich gefreut, daß ich helfen konnte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.4 2.7 7.1 7.4 9.1 9.4 9.7 10.1 10.4 10.7 11.1 11.4 11.7 15.1 15.4 16.1 16.4
  SAY #46521 /* ~Norochjs Sorgenfalten glätten sich bei deinen Worten. "Danke." Er holt einen kleinen Beutel aus seiner Robe hervor, den er dir überreicht. "Zweihundert Kupfermünzen."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46581 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46582 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46583 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46584 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46585 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46586 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46587 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46588 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46589 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62906 /* ~"Ich habe die... Nicht-Staubmenschen-Frau gefunden. Sie ist zu sehr damit beschäftigt, tot zu sein, als daß sie noch einmal jemanden bestehlen würde."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62911 /* ~"Bekümmert dich sonst noch irgendwas?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62912 /* ~"Übrigens, Emoric hat mich wegen einer anderen Sache zu dir geschickt."~ */ EXIT
  IF ~~ THEN REPLY #62913 /* ~"Danke... hat mich gefreut, daß ich helfen konnte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.0 2.3 2.6 7.0 7.3 9.0 9.3 9.6 10.0 10.3 10.6 11.0 11.3 11.6 15.0 15.3 16.0 16.3
  SAY #46522 /* ~Norochjs Sorgenfalten glätten sich bei deinen Worten. "Danke." Er holt einen großen Beutel aus seiner Robe hervor, den er dir überreicht. "Dreihundert Kupfermünzen. Und..." Er greift noch einmal in seine Robe, und wirft dir dann eine Verbandsrolle zu. "Du Bandagen mehr brauchen als ich." ~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46593 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46594 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46595 /* ~"Ich habe herausgefunden, was im Mausoleum los war. Die Toten schlafen wieder."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~Ich bin zu Norochj zurückgekehrt und habe ihm erzählt, daß ich das Problem im Mausoleum gelöst habe.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46596 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46597 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46598 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~Ich habe Aschenmantel gefunden und mit ihm abgerechnet, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46599 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46600 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46601 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er hat alle Hände damit zu tun, tot zu sein. Der wird keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~Ich habe Aschenmantel gefunden und umgelegt, also habe ich mir die Belohnung bei Norochj abgeholt.~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #64430 /* ~"Ich habe die... Nicht-Staubmenschen-Frau gefunden. Sie ist zu sehr damit beschäftigt, tot zu sein, als daß sie noch einmal jemanden bestehlen würde."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46602 /* ~"Bekümmert dich sonst noch irgendwas?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46603 /* ~"Übrigens, Emoric hat mich wegen einer anderen Sache zu dir geschickt."~ */ GOTO 12
  IF ~~ THEN REPLY #46604 /* ~"Danke... hat mich gefreut, daß ich helfen konnte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.12 3.2 4.1 5.1 6.1 9.11 11.11
  SAY #46523 /* ~"Emoric dich zu mir geschickt..." Er schaut dich kurz prüfend an. Dann seufzt er und deutet auf sich. "Norochj Staubmensch. Wächter. Dienen Staubmenschen, verteidigen Interessen von Staubmenschen, wahren *Ruf* von Staubmenschen." Der Mann seufzt wieder. "Viele Diebe im Stock. Ein Dieb tragen Robe wie Staubmensch, aber kein Staubmensch."~ */
  IF ~~ THEN REPLY #46605 /* ~"Da ist ein Dieb, der sich als Staubmensch verkleidet hat?"~ */ DO ~SetGlobal("Dustman_Pickpocket","GLOBAL",1)
~ JOURNAL #17075 /* ~Ich habe getan, worum Emoric mich gebeten hatte, und habe mit dem Staubmenschen Norochj gesprochen. Er hat Schwierigkeiten damit, einen Mann aufzuspüren, einen Dieb, der sich als Staubmensch verkleidet.~ */ GOTO 7
  IF ~~ THEN REPLY #46606 /* ~"Ich glaube nicht, daß ich dir helfen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #46524 /* ~Norochj nickt. "Mausoleum bei Staubmenschen-Denkmal. Du von schwarzem Denkmal nach Nordwesten gehen, dann zum Bogen, und mit dem Finger Halbkreis über Herz machen." Er bewegt den Zeigefinger seiner rechten Hand. "Du zum Mausoleum gehen."~ */
  IF ~~ THEN REPLY #46607 /* ~"Ich werde mich darum kümmern. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #46525 /* ~Norochj seufzt und zieht an einer seiner haarigen Stacheln. "Staubmenschen den Toten versprochen, Mausoleum nicht betreten. Nicht dürfen. Nur Nicht-Staubmenschen dürfen."~ */
  IF ~~ THEN REPLY #46608 /* ~"Ich werde mich darum kümmern. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.9 7.6 9.9 10.9 11.9
  SAY #61163 /* ~Norochj blinzelt dich einen Augenblick lang schweigend an. "Du finden Nicht-Staubmensch. Du *ihn* töten?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61164 /* ~"Der? Der wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61166 /* ~"Der? Der wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61167 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61168 /* ~"Äh, sicher, ich meinte *er.* Er wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61170 /* ~"Äh, sicher, ich meinte *er.* Er wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61171 /* ~"Äh, sicher, ich meinte *er.* Er wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61173 /* ~"Öh, nein, da war eine *Frau* in der Bar 'Zur Schwelenden Leiche', die kein Staubmensch war, und ich..."~ */ DO ~SetGlobal("Mochai_Norochj_Pickpocket","GLOBAL",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.6
  SAY #61174 /* ~"Nicht-Staubmensch nicht Frau. Nicht-Staubmensch ist ein Mann."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61175 /* ~"Der? Der wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61179 /* ~"Der? Der wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61180 /* ~"Ich hab den... Nicht-Staubmenschen gefunden. Er wird in dieser Stadt keinen mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61181 /* ~"Äh, sicher, ich meinte *er.* Er wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61182 /* ~"Äh, sicher, ich meinte *er.* Er wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61183 /* ~"Äh, sicher, ich meinte *er.* Er wird in dieser Stadt niemanden mehr beklauen."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61184 /* ~"Oh. Entschuldige meinen kläglichen Versuch, witzig zu sein. Wenn ich diesem... *Mann*... in der Verkleidung eines Staubmenschen zufällig begegnen sollte, werde ich es dich wissen lassen. Wiedersehen."~ */ EXIT
END
