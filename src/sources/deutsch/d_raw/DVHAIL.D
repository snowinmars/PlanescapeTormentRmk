// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVHAIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DVHAIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #2848 /* ~Vhailor steht stumm und unbeweglich da. Wäre da nicht das rote Blitzen in seinen Augen, könnte man meinen, daß er eine Statue sei.~ */
  IF ~~ THEN REPLY #2849 /* ~"Ich komm einfach später wieder, wenn diese klotzige Rüstung hier vielleicht was sagen kann."~ */ EXIT
  IF ~~ THEN REPLY #33998 /* ~"Vhailor... na los, beweg dich! Wir haben zu tun. Es ist so manches Unrecht begangen worden, das vergolten werden muß."~ */ DO ~SetGlobal("Vhailor","GLOBAL",2)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16635 /* ~Vhailor steht wortlos und regungslos da. Wären da nicht die flackernden roten Lichter seiner Augen, könnte man meinen, daß er eine Statue sei.~ */
  IF ~~ THEN REPLY #17003 /* ~"...Vhailor? Hast du mich gehört?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16636 /* ~Vhailors Stimme hallt schließlich aus seinem leeren Helm: *Der Zustand des Baums ist für mich irrelevant. Sein Tod ist weder gerecht noch ungerecht - er 'ist' einfach.*~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #17004 /* ~"Okay. Morte? Was meinst du?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #17005 /* ~"Okay. Annah? Könntest du?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #17006 /* ~"Okay. Danke. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #17007 /* ~"Okay. Grace, könntest du drüber nachdenken?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #17008 /* ~"Okay. Dak'kon, könntest du diesem Mann helfen?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #17009 /* ~"Okay. Dak'kon: Hilf diesem Mann."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #17010 /* ~"Okay. Nordom, meinst du, du könntest helfen?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~~ THEN REPLY #17011 /* ~"Okay. Ich hätte da ein paar Fragen, Der um die Bäume trauert..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17012 /* ~"Na gut, Vhailor. Leb wohl, Der um die Bäume trauert."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #30529 /* ~Als du Jannis an die Gurgel willst, hörst du das Rasseln einer Rüstung und Vhailor geht mit erhobener Axt auf dich los. *UNRECHT*.~ */
  IF ~~ THEN REPLY #30530 /* ~"Verdammt...!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #30531 /* ~Vhailor bewegt sich, als du dein Geständnis ablegst und hebt seine Axt. Er greift aber nicht an. Er *wartet*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 40
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30532 /* ~Vhailor eilt heran, als Jannis nach den Wachen ruft. Er geht mit erhobener Axt auf dich los. *UNRECHT*.~ */
  IF ~~ THEN REPLY #30533 /* ~"Verdammt...!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #30534 /* ~Vhailor bewegt sich, als du dein Geständnis ablegst und hebt seine Axt. Er greift aber nicht an. Er *wartet*.
~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 76
END

IF ~~ THEN BEGIN 7 // from:
  SAY #30535 /* ~Vhailor bewegt sich, als du dein Geständnis ablegst und hebt seine Axt. Er greift aber nicht an. Er *wartet*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 77
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("Vhailor","GLOBAL",0)
!InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #33999 /* ~Vhailor steht wortlos und regungslos da. Wären da nicht die flackernden roten Lichter seiner Augen, könnte man meinen, daß er eine Statue sei.~ */
  IF ~  GlobalGT("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34000 /* ~"Vhailor, ich brauche deine Hilfe. Willst du mit mir ziehen?"~ */ DO ~ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 9
  IF ~  Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34001 /* ~"Vhailor, ich brauche deine Hilfe. Willst du mit mir ziehen?"~ */ GOTO 82
  IF ~~ THEN REPLY #56052 /* ~Laß Vhailor in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34002 /* ~*DAS WERDE ICH.*~ [VHA127] */
  IF ~~ THEN REPLY #34003 /* ~"Dann laß uns gehen."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 16 even though they appear after this state */
~  InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #34004 /* ~Vhailor steht wortlos und regungslos da. Wären da nicht die flackernden roten Lichter seiner Augen, könnte man meinen, daß er eine Statue sei.~ */
  IF ~~ THEN REPLY #34005 /* ~"Ich wollte dir ein paar Fragen stellen, Vhailor..."~ */ GOTO 35
  IF ~~ THEN REPLY #56053 /* ~Laß Vhailor in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #54088 /* ~*DU. DU bist es. Wie LANGE habe ich dich gejagt, Namenloser? Und wie lange habe ich NEBEN dir gestanden, bevor die TÄUSCHUNG aufgedeckt wurde?* Als er seine Axt hebt, beginnt pure *Kraft* durch ihn zu fließen. Seine Hingabe, seine unglaubliche Überzeugung verwandelt Vhailor in die Verkörperung der Gerechtigkeit. *Das SCHICKSAL hat mich in deine Nähe geführt, SCHULDIGER. Nun wird der GERECHTIGKEIT Genüge getan. Du wirst unter meiner Klinge FALLEN, Unsterblicher, selbst wenn ich in alle EWIGKEIT über deinen kämpfenden Überresten stehen muß.*~ */
  IF ~~ THEN REPLY #54089 /* ~Verteidige dich.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #54090 /* ~Versuch abzuhauen.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #54775 /* ~*In Euren Taten ist keine GERECHTIGKEIT, Deva. Diesmal werdet Ihr mich NICHT mit FALSCHEN Worten einsperren. Diesmal werdet Ihr VERURTEILT.* Vhailor geht mit gezückter Axt auf Trias zu.~ */
  IF ~~ THEN REPLY #54776 /* ~"Vhailor, hör auf!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54777 /* ~Greife Trias an.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 13 // from:
  SAY #54778 /* ~*Die Gerechtigkeit hat Euch LANGE gesucht, Deva. Für dieses VERBRECHEN werdet Ihr VERURTEILT.* Vhailor geht mit gezückter Axt auf Trias zu.~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailor, hör auf!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54780 /* ~Greife Trias an.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 14 // from:
  SAY #54781 /* ~*Der Deva darf NICHT frei sein. Egal, was du geschworen hast, nun muß GERECHTIGKEIT walten.*~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailor, hör auf!"~ */ EXTERN ~DTRIAS~ 113
  IF ~~ THEN REPLY #54782 /* ~Sieh zu.~ */ EXTERN ~DTRIAS~ 113
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54784 /* ~Greife den Deva trotz deines Schwurs an.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ EXTERN ~DTRIAS~ 113
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54785 /* ~Greif den Deva an.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ EXTERN ~DTRIAS~ 113
END

IF ~~ THEN BEGIN 15 // from:
  SAY #54859 /* ~Vhailors Antwort ist ein Schweigen. Als du dich umdrehst und ihn ansiehst, siehst du, wie sein Blick dich durchbohrt. Seine Augen flackern einen Augenblick, als würde er nachdenken. Plötzlich überfällt dich das schreckliche Gefühl, daß er dich genau taxiert, als suche er nach irgend etwas... einer Schwachstelle.~ */
  IF ~  NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54860 /* ~"Äh... Ignus?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54861 /* ~"Äh... Grace?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54862 /* ~"Äh... Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54863 /* ~"Äh... Dak'kon?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54864 /* ~"Äh... Dak'kon?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54865 /* ~"Äh... Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54866 /* ~"Äh... Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54867 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54868 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54869 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Vhailor","GLOBAL",0)
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #56054 /* ~Vor dir steht eine riesige, leere Rüstung - aber die Platten hängen in der Luft, als wären sie an einem unsichtbaren Körper befestigt. Rote Adern ziehen sich entlang der Metallgamaschen, und eine riesige Henkersaxt mit zwei Schneiden liegt in der Hand der Gestalt. Die Oberfläche der Rüstung ist mit Gravuren bedeckt, von denen die auffälligste eine purpurne Schlange mit gespreizten Flügeln ist. ~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56055 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56056 /* ~Untersuche die Rüstung. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56057 /* ~Untersuche die Axt.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56058 /* ~Untersuche den Helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56059 /* ~Laß die Rüstung in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.1 18.1 19.1 20.2 21.1
  SAY #56060 /* ~Die Rüstung wirkt vorsintflutlich, ebenso die Schulterteile: ein riesiger Kamm aus Klingen, die aus den Schulterplatten sprießen. Fast hättest du den Klingenkamm für eine Art Verzierung gehalten, aber er sieht zu schwer und zu gefährlich aus, um etwas anderes als eine zusätzliche Waffe auf einer ohnehin bedrohlichen Rüstung zu sein. Du stellst fest, daß die Rüstung zwar Kerben und andere Anzeichen von Kämpfen trägt, aber daß keine Spur von Rost oder Staub zu sehen ist .~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56061 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56062 /* ~Untersuche die Axt.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56063 /* ~Untersuche den Helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56064 /* ~Nimm die Rüstung.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56065 /* ~Laß die Rüstung in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1 19.2 20.3 21.2
  SAY #56067 /* ~Diese Doppelaxt erinnert dich an eine Henkersaxt. Der Kopf der Axt sieht wie eine blutrote Schlange mit gespreizten Flügeln aus, wobei die Flügel in den Schneiden der Axt auslaufen. Die Axt selbst ist *riesig*. Selbst wenn sie mit beiden Händen geführt wird, braucht es unglaubliche Kräfte, um sie effektiv einzusetzen. Dennoch liegt sie in dem körperlosen Handschuh der Rüstung, als hätte sie kein Gewicht.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56068 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56069 /* ~Untersuche die Rüstung. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56070 /* ~Untersuche den Helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56071 /* ~Nimm die Axt.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56072 /* ~Laß die Rüstung in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3 17.2 18.2 20.4 21.3
  SAY #56073 /* ~Der Helm sieht aus wie der Schädel irgendeiner Kreatur. Gebogene Metallzähne säumen die Unterkante der Gesichtsplatte und hängen ins Leere. Der Helm scheint in der Luft zu schweben, sein Inneres liegt im Schatten verborgen.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56074 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56075 /* ~Untersuche die Rüstung. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56076 /* ~Untersuche die Axt.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56077 /* ~Nimm den Helm.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56078 /* ~Laß die Rüstung in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 17.0 18.0 19.0
  SAY #56079 /* ~Du weißt nicht, woher der Name kam, aber du weißt, daß er zu der Rüstung *gehört*. Kaum hörbar flüsterst du ihn, aber er hallt in der Kammer seltsam nach. Die Luft bewegt sich leise, gerade genug, um ein kriechendes Gefühl durch deinen Schädel zu jagen und dein Herz zu einem Knoten verkrampfen zu lassen. ~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56080 /* ~Versuch dich zu erinnern, die Erinnerung wachzurufen.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,60000)
~ GOTO 21
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56081 /* ~Laß die Erinnerung wachwerden...~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 21
  IF ~~ THEN REPLY #56082 /* ~Untersuche die Rüstung. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56083 /* ~Untersuche die Axt.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56084 /* ~Untersuche den Helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56085 /* ~Laß die Rüstung in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #56086 /* ~Während du die Rüstung anstarrst, nehmen die Schatten unter dem Visier Form an... Sie verschmelzen zu den Gesichtszügen eines kräftigen Mannes mit ebenholzfarbener Haut. Seine Augen glühen wie Feuer, und er trägt zahlreiche Narben.... war das 'Vhailor', als er noch einen Körper besaß? Er kommt dir erschreckend bekannt vor... als Rüstung UND als Mensch aus Fleisch und Blut.~ */
  IF ~~ THEN REPLY #56087 /* ~"Vhailor... wach auf."~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 22
  IF ~~ THEN REPLY #56088 /* ~Untersuche die Rüstung. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56089 /* ~Untersuche die Axt.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56090 /* ~Untersuche den Helm.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56091 /* ~Laß die Rüstung in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #56092 /* ~Unter dem Helm erstrahlt plötzlich ein glühendes rotes Licht, das mit fast blendender Kraft hervorstrahlt. Du hältst dir die Augen zu. Als du wieder vorsichtig blinzelst, erblickst du zwei Glutherde im Schatten des Helms. ~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 17.3 18.3 19.3
  SAY #56093 /* ~Als du die Hand ausstreckst, erstrahlt unter dem Helm plötzlich ein glühendes rotes Licht, das mit fast blendender Kraft hervorstrahlt. Du hältst dir die Augen zu. Als du wieder vorsichtig blinzelst, erblickst du zwei Glutherde im Schatten des Helms. ~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0
  SAY #56094 /* ~*Ich bin ERWACHT.* ~ [VHA002] */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #56095 /* ~Die Stimme klingt gespenstisch, hohl und hallt in der Rüstung wieder. Es ist keine menschliche Stimme... Sie scheint eher mehr wie eine *Kraft* zu sein, eine Erscheinung. Sie klingt nicht wie etwas *Lebendiges*... oder etwas, das je gelebt hätte. ~ */
  IF ~~ THEN REPLY #56096 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Vhailor","GLOBAL",1)
~ JOURNAL #56097 /* ~Ich habe tief unten im Gefängnis von Verdammnis eine geisterhafte Rüstung getroffen... scheint schon 'ne ganze Weile da unten zu sein. Der Name des Wesens ist "Vhailor", und es sagt, es sei ein Gnadentöter, ein Diener der Gerechtigkeit.~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #56098 /* ~*Ich bin VHAILOR.* ~ */
  IF ~  NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56099 /* ~*"Was* bist du?"~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56100 /* ~*"Was* bist du?"~ */ GOTO 29
  IF ~  !NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56101 /* ~*"Was* bist du?"~ */ GOTO 28
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56102 /* ~*"Was* bist du?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #56103 /* ~*Ich bin ein GNADENTÖTER.* ~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY #56104 /* ~*Ich bin ein GNADENTÖTER.* ~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #56105 /* ~*Ich bin ein GNADENTÖTER.* ~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #56106 /* ~*Ich bin ein GNADENTÖTER.* ~ */
  IF ~~ THEN REPLY #56107 /* ~"Gnadentöter?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #56108 /* ~Als Vhailor das Wort 'Gnadentöter' ausspricht, erstarren Annah und Morte.~ */
  IF ~~ THEN REPLY #56109 /* ~"Gnadentöter?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 28.0
  SAY #56110 /* ~Als Vhailor das Wort 'Gnadentöter' ausspricht, erstarrt Annah und gibt ein leises, warnendes Zischen von sich.~ */
  IF ~~ THEN REPLY #56111 /* ~"Gnadentöter?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.0
  SAY #56112 /* ~Als Vhailor das Wort 'Gnadentöter' ausspricht, erstarrt Morte neben dir.~ */
  IF ~~ THEN REPLY #56113 /* ~"Gnadentöter?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.0 31.0 32.0 33.0 35.0
  SAY #56114 /* ~*Gnadentöter dienen der GERECHTIGKEIT. Gerechtigkeit REINIGT das Böse. Wenn ALLE geläutert wurden, erringt das Multiversum PERFEKTION.*~ */
  IF ~~ THEN REPLY #56115 /* ~"Warum werdet ihr Gnadentöter genannt?'"~ */ GOTO 36
  IF ~~ THEN REPLY #56116 /* ~"Wie dienst du der Gerechtigkeit?"~ */ GOTO 83
  IF ~~ THEN REPLY #56117 /* ~"Ich hätte ein paar Fragen an dich, Vhailor..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56118 /* ~"Ich... verstehe, Vhailor. Hier trennen sich unsere Wege."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56119 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 10.0 34.2 36.3 37.0 38.2 39.1 40.1 41.1 42.1 43.1 44.1 45.2 48.1 49.1 50.1 51.2 52.0 53.1 55.1 56.1 57.1 58.1 59.0 60.1 61.2 65.1 68.0 69.0 70.1 71.2 72.1 73.2 74.0 75.2 76.1 77.2 83.2 84.2 88.1 89.2 90.10 91.10 92.1 93.2 105.2 106.2 107.4 108.16 109.1 115.1 116.2 117.2 118.1 119.1 120.2 121.2 122.2 123.2 126.3 127.2 146.0 151.0
  SAY #56120 /* ~*FRAGE. Ich werde ANTWORTEN.*~ */
  IF ~~ THEN REPLY #56121 /* ~"Was sind Gnadentöter?"~ */ GOTO 34
  IF ~~ THEN REPLY #56122 /* ~"Du sagst, du dienst der Gerechtigkeit, Vhailor. Wie?"~ */ GOTO 83
  IF ~  Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56123 /* ~"Wie lange warst du eingesperrt?"~ */ GOTO 55
  IF ~  !Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56124 /* ~"Wie lang warst du unter Verdammnis eingesperrt?"~ */ GOTO 55
  IF ~~ THEN REPLY #56125 /* ~"Wie bist du gestorben?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 70
  IF ~  Global("Vhailor_Sight","GLOBAL",1)
~ THEN REPLY #56126 /* ~"Du sagst, du kannst die Herzen der Anderen sehen, Vhailor. Wie?"~ */ GOTO 90
  IF ~  Class(Protagonist,FIGHTER)
InParty("Vhail")
Global("Vhailor_Teach","GLOBAL",0)
~ THEN REPLY #56127 /* ~"Kannst du mir beibringen, wie man eine Axt verwendet, Vhailor?"~ */ GOTO 60
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56128 /* ~Lüge: "Ich suche auch nach Gerechtigkeit, Vhailor. Willst du mich begleiten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56129 /* ~Lüge: "Ich suche auch nach Gerechtigkeit, Vhailor. Willst du mich begleiten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 80
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56130 /* ~Wahrheit: "Ich suche auch nach Gerechtigkeit, Vhailor. Willst du mich begleiten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56131 /* ~Wahrheit: "Ich suche auch nach Gerechtigkeit, Vhailor. Willst du mich begleiten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 80
  IF ~  !InParty("Vhail")
~ THEN REPLY #56132 /* ~"Willst du mit mir reisen, Vhailor? Wir könnten deine Hilfe gebrauchen."~ */ GOTO 82
  IF ~  !InParty("Vhail")
~ THEN REPLY #56133 /* ~"Vergiß es, Vhailor. Hier trennen sich unsere Wege."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56134 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #56135 /* ~*Die Gnade ist ein Schild, den die SCHWACHEN verwenden. Gnade ist SCHWÄCHE. Gnade ist TOD. NIEMAND ist unschuldig. Gnadentöter bringen die Gnade und ihre HUREN um, wo auch immer sie sich aufhalten.*~ */
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56136 /* ~Wahrheit: "Endlich habe ich jemanden gefunden, der an dasselbe glaubt wie *ich*. Gnade untergräbt die Gerechtigkeit. Gnade *ist* Schwäche."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALEvil_Vhailor_1","GLOBALGood",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56137 /* ~Lüge: "Endlich habe ich jemanden gefunden, der an dasselbe glaubt wie *ich*. Gnade untergräbt die Gerechtigkeit. Gnade *ist* Schwäche."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_1","GLOBALLaw",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",2)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56138 /* ~Wahrheit: "Das sehe ich anders. Gnade ist Stärke - und manchmal kann selbst die Gerechtigkeit ungerecht sein, besonders, wenn sie zum Äußersten geht."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vhailor_1","GLOBALGood",1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",3)
~ GOTO 38
  IF ~~ THEN REPLY #56139 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56140 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56141 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #56142 /* ~*Bestrafung BRICHT Seelen. Sie macht sie würdig, der GERECHTIGKEIT zu dienen.*~ */
  IF ~~ THEN REPLY #56143 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56144 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56145 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY #56146 /* ~*GNADE nagt am Herzen der GERECHTIGKEIT. KEINER, der lebt, ist UNSCHULDIG.*~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56147 /* ~"Wie ist Gerechtigkeit *definiert*, Vhailor? Was IST sie eigentlich?"~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56148 /* ~"Deiner Aussage nach bist du aber auch nicht unschuldig. Müßtest *du * nicht bestraft werden?"~ */ GOTO 48
  IF ~~ THEN REPLY #56149 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56150 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56151 /* ~"Ich werde nicht mehr mit dir darüber diskutieren, Vhailor. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #56152 /* ~*GERECHTIGKEIT wird durch das GESETZ definiert.*~ */
  IF ~~ THEN REPLY #56153 /* ~"Und was ist das Gesetz, Vhailor?"~ */ GOTO 40
  IF ~~ THEN REPLY #56154 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56155 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56156 /* ~"Ich werde nicht mehr mit dir darüber diskutieren, Vhailor. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #56157 /* ~*Das GESETZ ist das Werkzeug, durch das der GERECHTIGKEIT Genüge getan wird.*~ */
  IF ~~ THEN REPLY #56158 /* ~"Und was bestimmt das Gesetz, Vhailor?"~ */ GOTO 41
  IF ~~ THEN REPLY #56159 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56160 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56161 /* ~"Ich werde nicht mehr mit dir darüber diskutieren, Vhailor. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #56162 /* ~*Das GESETZ wird durch GERECHTIGKEIT definiert.*~ */
  IF ~~ THEN REPLY #56163 /* ~"Da beißt sich die Katze in den Schwanz, Vhailor - das ist bedeutungslos. Du sagst, Gerechtigkeit wird durch das Gesetz definiert, das wiederum durch die Gerechtigkeit definiert wird."~ */ GOTO 42
  IF ~~ THEN REPLY #56164 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56165 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56166 /* ~"Ich werde nicht mehr mit dir darüber diskutieren, Vhailor. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #56167 /* ~*Das GESETZ - WIRD - durch GERECHTIGKEIT definiert.*~ */
  IF ~~ THEN REPLY #56168 /* ~"Normale Männer und Frauen machen die Gesetze, Vhailor - sind diese Gesetze 'gerecht'?"~ */ GOTO 43
  IF ~~ THEN REPLY #56169 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56170 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56171 /* ~"Ich werde nicht mehr mit dir darüber diskutieren, Vhailor. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #56172 /* ~*GESETZE sind GERECHT.*~ */
  IF ~~ THEN REPLY #56173 /* ~"Aber wenn diese Gesetze von normalen Männern und Frauen gemacht werden, die, wie du *selbst* gesagt hast, NICHT unschuldig sind, sind diese Gesetze dann nicht von ihnen beeinflußt?"~ */ GOTO 44
  IF ~~ THEN REPLY #56174 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56175 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56176 /* ~"Ich werde nicht mehr mit dir darüber diskutieren, Vhailor. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #56177 /* ~*KEINER, der lebt, ist UNSCHULDIG. Doch das GESETZ erhebt sich ÜBER Fleisch und Blut. AUS UNVOLLKOMMENHEIT KANN VOLLKOMMENHEIT ENTSTEHEN. UNGERECHTE GESETZE können VERBESSERT werden. VON IHREM BÖSEN BEFREIT WERDEN.*~ */
  IF ~~ THEN REPLY #56178 /* ~"Dann gibst du also zu, daß Gesetze nicht immer gerecht sind. Aber wenn genau diese Gesetze die Gerechtigkeit definieren, ist dann die *Gerechtigkeit* nicht auch fehlerhaft?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 45
  IF ~~ THEN REPLY #56179 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56180 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56181 /* ~"Ich werde nicht mehr mit dir darüber diskutieren, Vhailor. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #56182 /* ~Vhailor schweigt. ~ */
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56183 /* ~"Vhailor - es gibt KEINE Gerechtigkeit. Alles, was du im Namen der Gerechtigkeit tust, ist sinnlos - dein Leben ist sinnlos."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ JOURNAL #56188 /* ~Ich habe Vhailor davon überzeugt, daß sein Streben nach Gerechtigkeit bedeutungslos ist, da er an eine derartige Verstrickung von Recht und Gesetz glaube, daß, wenn das eine unvollkommen ist, es das andere auch sein müsse. Wäre er ein wenig schlauer gewesen, hätte er mir vielleicht Paroli bieten können, aber die Leidenschaften und Zwangvorstellungen, die ihn zu einem derart ruhelosen Geist haben werden lassen, haben auch seine Fähigkeit gemindert, über seine eigenen beschränkten Argumente hinwegzusehen. Als meine Worte endlich zu ihm durchgedrungen sind, haben seine Zweifel und sein Zögern ihn umgebracht... Er hat sozusagen 'den Geist aufgegeben'.~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56184 /* ~"Vhailor - es gibt KEINE Gerechtigkeit. Alles, was du im Namen der Gerechtigkeit tust, ist sinnlos - dein Leben ist sinnlos."~ */ GOTO 47
  IF ~~ THEN REPLY #56185 /* ~"Vergiß es, Vhailor. Ich hätte da noch ein paar Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56186 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56187 /* ~"Ich werde nicht mehr mit dir darüber diskutieren, Vhailor. Weiter geht's."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #56189 /* ~Deine Worte scheinen nachzuhallen und immer mehr an Stärke zu gewinnen. Die Glut in Vhailors Augen beginnt zu flackern - dann erlischt sie. Seine Rüstung fällt in sich zusammen, und die Metallplatten fallen mit einem *Krachen* zu Boden. Als sie aufprallen, wirbeln sie Staub auf... Asche- und Rostpartikel steigen von dem Metall auf, das vor deinen Augen altert, rostet und zerfällt. Was bleibt, sind ein paar zerbeulte Metallplatten als letztes Zeugnis von Vhailors Existenz.~ */
  IF ~~ THEN REPLY #56190 /* ~"Leb wohl, Vhailor."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #56191 /* ~Die Glut in Vhailors Augen beginnt zu flackern und LODERT dann auf. *Deine WORTE bedeuten mir NICHTS. Du versuchst, mich vom PFAD DER GERECHTIGKEIT ABZUBRINGEN.* Drohend hebt er seine Axt. *Ich werde dafür sorgen, daß du BESTRAFT wirst.*~ */
  IF ~~ THEN REPLY #56192 /* ~"Vhailor, warte! Tu das nicht!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #56193 /* ~"Nun gut, Vhailor. Wenn du kämpfen willst..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 38.1
  SAY #56194 /* ~*ICH DIENE DER GERECHTIGKEIT. WENN ICH VERSAGEN SOLLTE, WÜRDE ICH BESTRAFT WERDEN.*~ */
  IF ~~ THEN REPLY #56195 /* ~"Wenn du also je einen Kriminellen seiner Strafe entkommen lassen würdest, dann würdest du selbst bestraft werden?"~ */ GOTO 49
  IF ~~ THEN REPLY #56196 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56197 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56198 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #56199 /* ~*JA.*~ */
  IF ~~ THEN REPLY #56200 /* ~"Nun, während du unter Verdammnis gefangen gehalten wurdest, wurden Tausende... Hunderttausende... ja vielleicht Millionen von Verbrechern in den Ebenen geboren, lebten ihr Leben und starben. Du hattest *niemals* eine Möglichkeit, sie zu bestrafen. Kannst du wirklich allen Wesen im Multiversum Gerechtigkeit widerfahren lassen?"~ */ GOTO 50
  IF ~~ THEN REPLY #56201 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56202 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56203 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #56204 /* ~*Dann werde ich sie über den Tod HINAUS suchen und sie bestrafen.*~ */
  IF ~~ THEN REPLY #56205 /* ~"Wenn du das tust, dann kannst du die Lebenden nicht mehr bestrafen. Wofür entscheidest du dich, Vhailor?"~ */ GOTO 51
  IF ~~ THEN REPLY #56206 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56207 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56208 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #56209 /* ~*Dann werde ich meinen Kampf für die GERECHTIGKEIT auf der Ebene der LEBENDEN fortsetzen.*~ */
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56210 /* ~"Aber es gibt sehr viel mehr tote Verbrecher als lebende... und alles Lebende stirbt, oder nicht? Wenn du stirbst, dann kannst du sie alle erreichen."~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56211 /* ~"Aber es gibt sehr viel mehr tote Verbrecher als lebende... und alles Lebende stirbt, oder nicht? Wenn du stirbst, dann kannst du sie alle erreichen."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #56212 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56213 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56214 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #56217 /* ~*Deine Worte sind HOHL. Ihnen fehlt die ÜBERZEUGUNG. Sie riechen nach LÜGEN und TÄUSCHUNG. Ich werde dir nicht länger zuhören.*~ */
  IF ~~ THEN REPLY #56218 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56219 /* ~"Dann trennen sich hier unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56220 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #56221 /* ~Vhailor steht stumm da, seine Glutaugen funkeln unter dem Helm.~ */
  IF ~~ THEN REPLY #56222 /* ~"Suche sie bei den Toten, Vhailor - vielleicht werde ich dich eines Tages dort treffen."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ GOTO 54
  IF ~~ THEN REPLY #56223 /* ~"Vergiß, was ich gesagt habe, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56224 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56225 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #56226 /* ~Deine Worte scheinen nachzuhallen und immer mehr an Stärke zu gewinnen. Die Glut in Vhailors Augen beginnt zu flackern - dann erlischt sie. Seine Rüstung fällt in sich zusammen, und die Metallplatten fallen mit einem *Krachen* zu Boden. Als sie aufprallen, wirbeln sie Staub auf... Asche- und Rostpartikel steigen von dem Metall auf, das vor deinen Augen altert, rostet und zerfällt. Was bleibt, sind ein paar zerbeulte Metallplatten als letztes Zeugnis von Vhailors Existenz.~ */
  IF ~~ THEN REPLY #56227 /* ~"Ruh dich jetzt aus, Vhailor."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ JOURNAL #56228 /* ~Ich habe Vhailor davon überzeugt, daß er selbst sterben müsse, um alle Verbrecher und Übeltäter zu strafen. Meine Worte hinterließen eine tiefen Eindruck bei ihm - so tief, daß er im wahrsten Sinne des Wortes zum zweiten Mal gestorben ist, genau vor meinen Augen. Und seine Rüstung und Axt zerfielen zu Staub, als er 'den Geist aufgab'.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 35.2 35.3
  SAY #56229 /* ~*Die Zeit VERFLOG, als ich eingesperrt war. Zeit hat keine BEDEUTUNG. Nur GERECHTIGKEIT.*~ */
  IF ~~ THEN REPLY #56230 /* ~"Weißt du, *warum* du nach Verdammnis gekommen bist?"~ */ GOTO 56
  IF ~~ THEN REPLY #56231 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56232 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56233 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #56234 /* ~*Viel von meiner Reise ist verloren. Ich reiste auf der Suche nach VERRÄTERN. Sie haben mich gefunden und eingesperrt. Ein Akt des VERRATS.*~ */
  IF ~~ THEN REPLY #56235 /* ~"Was für Verräter?"~ */ GOTO 57
  IF ~~ THEN REPLY #56236 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56237 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56238 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #56239 /* ~*Curst ist eine STADT der VERRÄTER. Sie ist eine Stadt, die sich der GERECHTIGKEIT widersetzt. Ich bin gekommen, um sie zu LÄUTERN.*~ */
  IF ~~ THEN REPLY #56240 /* ~"Wie wurdest du eingesperrt?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #56241 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56242 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56243 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #56244 /* ~Vhailor steht eine Weile stumm da, seine Glutaugen flackern.~ */
  IF ~~ THEN REPLY #56245 /* ~"Vhailor? Weißt du noch, wie sie dich eingesperrt haben?"~ */ GOTO 59
  IF ~~ THEN REPLY #56246 /* ~"Vergiß, was ich gesagt habe, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56247 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56248 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #56249 /* ~*Ich WEISS es nicht.*~ */
  IF ~~ THEN REPLY #56250 /* ~"Nun gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56251 /* ~"Dann trennen sich hier unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56252 /* ~"Ach, vergiß es, Vhailor. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 35.6
  SAY #56253 /* ~*Es gibt nichts, was ich dich lehren kann. Es ist nicht die HAND, die eine Waffe führt. Es ist der WILLE.*~ */
  IF ~~ THEN REPLY #56254 /* ~"Was meinst du?"~ */ GOTO 61
  IF ~~ THEN REPLY #56255 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~~ THEN REPLY #56256 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #56257 /* ~*Wenn der WILLE stark ist, ist die KLINGE stark. Wenn die Sache GERECHT ist, SITZT der Schlag der Klinge. Wenn GNADE an deinem Herzen nagt, dann folgen ZWEIFEL, ZAUDERN, MITGEFÜHL. Die Klinge wird zu STAUB.*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56258 /* ~"Mein Wille ist stark, Vhailor. Meine Überzeugung verleiht meiner Klinge Stärke."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 62
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56259 /* ~"Mein Wille ist stark, Vhailor. Meine Überzeugung verleiht meiner Klinge Stärke."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 69
  IF ~~ THEN REPLY #56260 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~~ THEN REPLY #56261 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #56262 /* ~Vhailors Glutaugen heften sich auf dich. Es herrscht eine bedrückende Stille.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #56263 /* ~*Dein WILLE ist stark. Deine DISZIPLIN ist stark. Dein WILLE ist der Wille des GESETZES.*~ */
  IF ~~ THEN REPLY #56264 /* ~"Und wie -?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #56265 /* ~*WISSE DIES: Auf den GESAMTEN EBENEN gibt es NICHTS, was sich der Hand der GERECHTIGKEIT widersetzen kann, wenn sie sich gegen sie erhebt. Sie kann ARMEEN vernichten. Sie kann GÖTTER von ihrem Thron stürzen. Wenn deine Sache der GERECHTIGKEIT dient, dann wird die GERECHTIGKEIT dir ihre STÄRKE leihen.*~ */
  IF ~~ THEN REPLY #56266 /* ~"Verstehe."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #56267 /* ~*Du siehst es NICHT. NOCH nicht. Öffne deine Augen mir gegenüber, und du wirst die EBENEN mit den Augen der GERECHTIGKEIT SEHEN.*~ */
  IF ~~ THEN REPLY #56268 /* ~"Also gut... zeig mir, was du siehst."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 66
  IF ~~ THEN REPLY #56269 /* ~"Nein, Vhailor... Das will ich nicht sehen. Ich würde dir lieber noch ein paar Fragen stellen..."~ */ GOTO 35
  IF ~~ THEN REPLY #56270 /* ~"Ich glaube nicht, daß ich für das bereit bin, was du mir zeigen willst, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #56271 /* ~Du blickst in Vhailors Augen, die plötzlich AUFLODERN...~ */
  IF ~  GlobalLT("Law","GLOBAL",25)
~ THEN REPLY #56272 /* ~"W..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",1)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,1)
GiveExperience(Protagonist,90000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",24)
GlobalLT("Law","GLOBAL",35)
~ THEN REPLY #56273 /* ~"W..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",2)
PermanentStatChange(Protagonist,STR,RAISE,2)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,2)
GiveExperience(Protagonist,120000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",34)
~ THEN REPLY #56274 /* ~"W..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",3)
PermanentStatChange(Protagonist,STR,RAISE,3)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,3)
GiveExperience(Protagonist,150000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1 66.2
  SAY #56275 /* ~Die Flammen blenden dich einen Moment lang. Als du die Augen wieder öffnest, scheint alles viel SCHÄRFER zu sein, als hättest du einen neuen Blickwinkel gewonnen. Du fühlst dich irgendwie klarer, als könntest du jedes Ding durch bloßes Ansehen SPALTEN. ~ */
  IF ~~ THEN REPLY #56276 /* ~"Vhailor... ist das...?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #56277 /* ~*SIEH alle Dinge. SIEH ihre SCHWÄCHE. URTEILE über alle Dinge. Wenn die GNADE an ihren Herzen genagt hat, dann werden sie unter der GERECHTIGKEIT FALLEN. Dein WILLE gibt dir das RECHT. Deine DISZIPLIN gibt dir das RECHT.*~ */
  IF ~~ THEN REPLY #56278 /* ~"Ach so ist das... Ich... wollte dich noch etwas anderes fragen."~ */ GOTO 35
  IF ~~ THEN REPLY #56279 /* ~"Ich... verstehe. Laß uns... weitergehen."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.1
  SAY #56280 /* ~*Dein WILLE ist stark. Aber es fehlt dir an DISZIPLIN. Dein WILLE ist DEIN Wille, nicht der Wille des GESETZES. Ich kann dir nichts zeigen, was du ERKENNEN oder VERSTEHEN würdest.*~ */
  IF ~~ THEN REPLY #56281 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~~ THEN REPLY #56282 /* ~"Wenn das so ist... Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 35.4
  SAY #56283 /* ~Vhailors Glutaugen heften sich auf dich. Es herrscht eine bedrückende Stille.~ */
  IF ~~ THEN REPLY #56284 /* ~"Vhailor? Wie bist du gestorben?"~ */ GOTO 71
  IF ~~ THEN REPLY #56285 /* ~"Ach, vergiß es, Vhailor. Ich wollte dich noch was anderes fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56286 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56287 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #56288 /* ~*Ich LEBE.*~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #56289 /* ~"Nun ja, wenn man es so sehen will - aber was ist mit deinem Körper passiert?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56290 /* ~"Nun ja, wenn man es so sehen will - aber was ist mit deinem Körper passiert?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 72
  IF ~~ THEN REPLY #56291 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56292 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56293 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY #56294 /* ~Gerade als du etwas sagen willst, überkommt dich ein seltsames Gefühl, und du *weißt* plötzlich, daß Vhailor nicht bewußt ist, daß er tot ist. Aus irgend einem Grund hast du das Gefühl, daß diese Erkenntnis außerordentlich gefährlich werden kann.~ */
  IF ~~ THEN REPLY #56295 /* ~"Vhailor? Was ist mit deinem Körper passiert?"~ */ GOTO 73
  IF ~~ THEN REPLY #56296 /* ~"Ach, vergiß es, Vhailor. Ich wollte dich noch was anderes fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56297 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56298 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0 72.0
  SAY #56299 /* ~*Ich LEBE. Solange diese VERDAMMTEN noch BESTRAFT werden müssen, LEBE ich.*~ */
  IF ~~ THEN REPLY #56300 /* ~"Vhailor, du lebst nicht *wirklich*... Du bist ein Geist geworden, ein Gespenst."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56301 /* ~"FÜHLST du dich lebendig, Vhailor? Zieh deinen Handschuh aus und sieh, ob deine Augen Haut sehen. Schneide deinen Arm mit der Axt - blutet er? Und deine Augen - sie brennen wie Feuer, aber können sie weinen? Dein Geist ist noch da, Vhailor, aber du *lebst* nicht mehr."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 75
  IF ~~ THEN REPLY #56302 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56303 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56304 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56305 /* ~Es herrscht eine bedrückende, gefährliche Stille. Vhailor antwortet nicht.~ */
  IF ~~ THEN REPLY #56306 /* ~"Ach, vergiß es, Vhailor. Ich wollte dich noch was anderes fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56307 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56308 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 73.1
  SAY #56309 /* ~Einen Augenblick... nur einen Augenblick, flackern Vhailors Augen auf. ~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56310 /* ~"ERINNERST du dich überhaupt daran, wie du einst unter der Rüstung aussahst, Vhailor? Du warst einst ein Mensch aus Fleisch und Blut, warst lebendig und strebtest nach Gerechtigkeit. Aber dieser Mensch ist nun tot. Und nur die gepeinigte Hülle ist übrig."~ */ GOTO 76
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56311 /* ~"ERINNERST du dich überhaupt daran, wie du einst unter der Rüstung aussahst, Vhailor? Ich schon. Du warst einst ein Mensch aus Fleisch und Blut, mit dunkler Haut und Augen wie Feuer, und du hast für viel Gerechtigkeit gesorgt. Aber dieser Mensch ist nun tot. Und nur die gepeinigte Hülle ist übrig."~ */ GOTO 76
  IF ~~ THEN REPLY #56312 /* ~"Vergiß, was ich gesagt habe, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56313 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56314 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #56315 /* ~*Ich... erinnere mich.* Vhailors Augen flackern, diesmal ungleichmäßiger als zuvor. Er läßt die Axt fallen. *Diese Erinnerung ist... SCHWER zu beleben. Da war ein TOD... und ich habe mich VERÄNDERT. Dieser EINE bin ich nicht mehr. Was BIN ich dann?*~ */
  IF ~~ THEN REPLY #56316 /* ~"Ich weiß es nicht, Vhailor. Der Mann, der Vhailor war, ist tot... Du bist jetzt etwas anderes."~ */ GOTO 77
  IF ~~ THEN REPLY #56317 /* ~"Vergiß, was ich gesagt habe, Vhailor... Ich hätte noch andere Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56318 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56319 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #56320 /* ~*GERECHTIGKEIT war mein Daseinszweck. Das FLEISCH... das FLEISCH konnte nicht dauern. Aber der GERECHTIGKEIT mußte GEDIENT werden. Da war der Tod des Fleisches, aber der WILLE ließ nicht los... Es mußten noch MEHR bestraft werden. IMMER mehr. GERECHTIGKEIT... Der GERECHTIGKEIT wäre durch meinen TOD nicht Genüge getan worden."~ */
  IF ~~ THEN REPLY #56321 /* ~"Aber du BIST gestorben, Vhailor, vor langer Zeit. Und jetzt ist es Zeit, loszulassen."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56677 /* ~Ich habe Vhailor davon überzeugt, daß er nicht mehr am Leben ist. Meine Worte hinterließen eine tiefen Eindruck bei ihm - so tief, daß er im wahrsten Sinne des Wortes zum zweiten Mal gestorben ist, genau vor meinen Augen. Und seine Rüstung und Axt zerfielen zu Staub, als er 'den Geist aufgab'.~ */ GOTO 152
  IF ~~ THEN REPLY #56322 /* ~"Dann BELÜGST du dich selbst, wenn du denkst, daß du lebst. Du bist TOT, Vhailor. Was für einer GERECHTIGKEIT wird gedient, wenn der Diener der Gerechtigkeit sich selbst belügt?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56326 /* ~Ich habe Vhailor davon überzeugt, daß er nicht mehr am Leben ist und daß er seinen Kreuzzug der Gerechtigkeit aufgeben müsse. Meine Worte hinterließen eine tiefen Eindruck bei ihm - so tief, daß er im wahrsten Sinne des Wortes zum zweiten Mal gestorben ist, genau vor meinen Augen. Und seine Rüstung und Axt zerfielen zu Staub, als er 'den Geist aufgab'.~ */ GOTO 152
  IF ~~ THEN REPLY #56323 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56324 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56325 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 35.7 35.9 82.0 82.2 82.4
  SAY #56327 /* ~Vhailors Glutaugen heften sich auf dich. Es herrscht eine bedrückende Stille.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #56328 /* ~*Ich werde mich dir ANSCHLIESSEN. Gemeinsam werden wir der GERECHTIGKEIT dienen. Wo sich GNADE verbirgt, werden wir sie VERNICHTEN.*~ */
  IF ~~ THEN REPLY #56329 /* ~"Nun gut."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",1)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from: 35.8 35.10 82.1 82.3 82.5
  SAY #56330 /* ~Vhailors Glutaugen heften sich auf dich. Es herrscht eine bedrückende Stille.~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #56331 /* ~*Ich werde dich BEGLEITEN. Dein WILLE ist nicht sehr zuverlässig, aber ich werde dich GERECHTIGKEIT LEHREN. Ich werde dich LEHREN, wie man der GNADE den Garaus macht.*~ */
  IF ~~ THEN REPLY #56332 /* ~"Nun gut."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",2)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 8.1 35.11
  SAY #56333 /* ~*Sucht dein Herz GERECHTIGKEIT? Oder hat deine REISE keinen ZWECK?*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56334 /* ~Wahrheit: "Ich suche nach Gerechtigkeit, Vhailor. Willst du mich begleiten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56335 /* ~Wahrheit: "Ich suche nach Gerechtigkeit, Vhailor. Willst du mich begleiten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56336 /* ~Lüge: "Ich suche nach Gerechtigkeit, Vhailor. Willst du mich begleiten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56337 /* ~Lüge: "Ich suche nach Gerechtigkeit, Vhailor. Willst du mich begleiten?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56339 /* ~"Ich strebe nach Wissen über mich selbst, Vhailor, und wenn in diesem Wissen Gerechtigkeit liegen sollte, dann werde ich sie auch finden."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56340 /* ~"Ich strebe nach Wissen über mich selbst, Vhailor, und wenn in diesem Wissen Gerechtigkeit liegen sollte, dann werde ich sie auch finden."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
END

IF ~~ THEN BEGIN 83 // from: 34.1 35.1
  SAY #56338 /* ~*Die GERECHTIGKEIT verwendet Gnadentöter als ihre AUGEN. Die GERECHTIGKEIT verwendet Gnadentöter, um ihren WILLEN durchzusetzen. Wenn ein URTEIL ergeht, VERLEIHT sie uns ihre STÄRKE.*~ */
  IF ~~ THEN REPLY #56347 /* ~"Und woher weißt du, *wann* du Gerechtigkeit walten lassen mußt?"~ */ GOTO 89
  IF ~~ THEN REPLY #56348 /* ~"Stärke? Wie?"~ */ GOTO 84
  IF ~~ THEN REPLY #56349 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56350 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56351 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.1 89.1
  SAY #56341 /* ~*DIE STÄRKE der GERECHTIGKEIT beruht auf dem Schaden, den die UNGERECHTIGKEIT angerichtet hat.*~ */
  IF ~~ THEN REPLY #56342 /* ~"Also... je größer die Ungerechtigkeit - je schwerer das Verbrechen - desto mehr Stärke verleiht dir die 'Gerechtigkeit'?"~ */ GOTO 85
  IF ~~ THEN REPLY #56343 /* ~"Und woher weißt du, *wann* du Gerechtigkeit walten lassen mußt?"~ */ GOTO 89
  IF ~~ THEN REPLY #56344 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56345 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56346 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #56352 /* ~*Wenn die UNGERECHTIGKEIT groß genug ist, dann verleiht die GERECHTIGKEIT mir die STÄRKE, sie wiedergutzumachen. KEINER kann sich dagegen wehren. Sie SPRENGT alle Hindernisse. Sie ZERSTÖRT jeden Schild, ZERREISST jeden Zauber, und verleiht ihrem Diener die STÄRKE, ein URTEIL zu VERKÜNDEN.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ JOURNAL #56353 /* ~Vhailor ist mehr als nur ein rastloser Geist - er scheint die Gerechtigkeit zu verkörpern. Er hat mir erzählt, daß die Gerechtigkeit ihm Stärke gibt, um Ungerechtigkeiten zu sühnen - je größer die Ungerechtigkeit, desto mehr Stärke erhält er zu deren Sühne. Nach Vhailors Worten kann ihm die Gerechtigkeit genug Macht verleihen, um ganze Armeen zu schlagen... oder selbst Götter von ihrem Thron zu stürzen. Aus irgendeinem Grund weckten seine Worte eine verschwommene Erinnerung in mir - ich weiß, ich habe diese Worte schon einmal gehört, und so unglaublich das auch klingen mag, ich weiß, daß sie wahr sind.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #56354 /* ~Als Vhailor diese Worte ausspricht, überkommt dich ein seltsames Gefühl. Es ist so stark, daß du erschauderst. Du hast diese Worte schon einmal *gehört*, und du weißt, daß sie *wahr* sind.~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #56355 /* ~*WISSE DIES: Nichts auf den EBENEN kann sich der GERECHTIGKEIT in den Weg stellen, wenn sie sich gegen jemanden richtet. Sie kann ganze ARMEEN vernichten. Sie kann Götter von ihrem Thron stürzen. Wisse: Ich bin das Schicksal aller, die die Gerechtigkeit VERRATEN. Und das Schicksal trägt eine HENKERSAXT.*~ */
  IF ~~ THEN REPLY #56356 /* ~"Verstehe."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #56357 /* ~*NEIN, du siehst es NICHT.* Vhailors Augen brennen wie zwei Fackeln im Schatten seines Helmes. "BETE, daß du es NIE sehen wirst.*~ */
  IF ~~ THEN REPLY #56358 /* ~"Und woher weißt du, *wann* du Gerechtigkeit walten lassen mußt?"~ */ GOTO 89
  IF ~~ THEN REPLY #56359 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56360 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56361 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 83.0 84.1 88.0
  SAY #56362 /* ~*Die GERECHTIGKEIT sieht mit meinen Augen. Die AUGEN eines GNADENTÖTERS können die RISSE der SCHWÄCHE erkennen, die ANFÄLLIGKEIT, die Wunden der GNADE, die ein HERZ trägt. Wenn ich SEHE, erkenne ich die Schuldigen. Ich KENNE ihre FURCHT.*~ */
  IF ~~ THEN REPLY #56363 /* ~"Was siehst du, wenn du jemand anders ansiehst?"~ */ DO ~SetGlobal("Vhailor_Sight","GLOBAL",1)
~ GOTO 90
  IF ~~ THEN REPLY #56364 /* ~"Als du gesagt hast, die Gerechtigkeit würde dir 'Stärke' verleihen, was hast du da gemeint?"~ */ GOTO 84
  IF ~~ THEN REPLY #56365 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56366 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56367 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 35.5 89.0
  SAY #56368 /* ~*Über alles, was ich sehe, ergeht ein URTEIL. Ich kann das Herz und den Geist eines Anderen betrachten und KENNE ihn. Das Auge der GERECHTIGKEIT sieht durch MICH.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56369 /* ~"Was siehst du, wenn du Morte anblickst?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56370 /* ~"Was siehst du, wenn du Annah anblickst?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56371 /* ~"Was siehst du, wenn du Dak'kon anblickst?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56372 /* ~"Was siehst du, wenn du Grace, die Gefallene, anblickst?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56373 /* ~"Was siehst du, wenn du Grace, die Gefallene, anblickst?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56374 /* ~"Was siehst du, wenn du Nordom anblickst?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56375 /* ~"Was siehst du, wenn du Ignus anblickst?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56376 /* ~"Was siehst du, wenn du dich selbst anblickst?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56377 /* ~"Was siehst du, wenn du dich selbst anblickst?"~ */ GOTO 120
  IF ~~ THEN REPLY #56378 /* ~"Was siehst du, wenn du mich anblickst?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56379 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56380 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56381 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 92.0 93.1 105.1 106.1 107.0 108.15 109.0 115.0 116.1 117.1 118.0 119.0 120.1 121.1 122.1 123.1 126.2 127.1
  SAY #56382 /* ~*FRAGE.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56383 /* ~"Was siehst du, wenn du Morte anblickst?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56384 /* ~"Was siehst du, wenn du Annah anblickst?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56385 /* ~"Was siehst du, wenn du Dak'kon anblickst?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56386 /* ~"Was siehst du, wenn du Grace, die Gefallene, anblickst?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56387 /* ~"Was siehst du, wenn du Grace, die Gefallene, anblickst?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56388 /* ~"Was siehst du, wenn du Nordom anblickst?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56389 /* ~"Was siehst du, wenn du Ignus anblickst?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56390 /* ~"Was siehst du, wenn du dich selbst anblickst?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56391 /* ~"Was siehst du, wenn du dich selbst anblickst?"~ */ GOTO 120
  IF ~~ THEN REPLY #56392 /* ~"Was siehst du, wenn du mich anblickst?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56393 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56394 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56395 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.0 91.0
  SAY #56396 /* ~*Der Schädel weiß VIEL. Und doch weiß er NICHTS von der GERECHTIGKEIT. Viele mit einem Herzen wie seinem liegen nun in GEFÄNGNISSEN und GRÄBERN.*~ */
  IF ~~ THEN REPLY #56397 /* ~"Lass mich dich etwas über jemand anders fragen..."~ */ GOTO 91
  IF ~~ THEN REPLY #56398 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56399 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56400 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 90.1 91.1
  SAY #56401 /* ~*Der Tiefling trägt den MAKEL der Unteren Ebenen. Ihr Blut läßt keinen RAUM für Loyalität gegenüber der GERECHTIGKEIT. Sie versteht die GERECHTIGKEIT, doch sie IGNORIERT sie.* Vhailors Augen lodern wie Fackeln. *MICH wird sie nicht IGNORIEREN.*~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN DO ~SetGlobal("Annah_Accuse","GLOBAL",1)
~ EXTERN ~DANNAH~ 274
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56402 /* ~"Lass mich dich etwas über jemand anders fragen..."~ */ GOTO 91
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56403 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56404 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56405 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56406 /* ~Vhailors Augen lodern. *Tiefling, ANTWORTE mir: Hast du je eine UNGERECHTIGKEIT begangen?*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 275
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56407 /* ~*Die GERECHTIGKEIT gibt mir das RECHT.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 276
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56408 /* ~*Gnadentöter SIND Gerechtigkeit. Unsere Taten sind unfehlbar, TIEFLING.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 277
END

IF ~~ THEN BEGIN 97 // from:
  SAY #56410 /* ~*Zum LETZTEN Mal, Tiefling, hast du je eine Ungerechtigkeit begangen? Die VERWEIGERUNG einer Antwort ist ein SCHULDBEKENNTNIS.*~ */
  IF ~~ THEN REPLY #56411 /* ~"Vhailor, hör auf damit. Ich laß nicht zu, daß du sie verhörst."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 99
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #56412 /* ~Warte, was Annah sagt.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
MoraleDec("Grace",1)
~ EXTERN ~DGRACE~ 200
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #56413 /* ~Warte, was Annah sagt.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 278
END

IF ~~ THEN BEGIN 98 // from:
  SAY #56414 /* ~*Du hast dich GEWEIGERT, der GERECHTIGKEIT zu antworten. Ich werde dich bestrafen.*~ */
  IF ~~ THEN REPLY #56415 /* ~"Nein, das wirst du nicht. Du hast kein Recht dazu."~ */ GOTO 99
  IF ~~ THEN REPLY #56416 /* ~Warte ab, was passiert.~ */ DO ~LeaveParty()
Enemy()
Attack("Annah")
ChangeAIScript("MDKAnnah",DEFAULT)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 98.0 102.0
  SAY #56418 /* ~*Die GERECHTIGKEIT gibt mir das RECHT. Schuld UMGIBT sie wie ein Mantel.*~ */
  IF ~~ THEN REPLY #56419 /* ~"Ich habe gesagt, du sollst aufhören, Vhailor, und das hab' ich auch so gemeint."~ */ GOTO 103
END

IF ~~ THEN BEGIN 100 // from:
  SAY #56420 /* ~...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #56421 /* ~Sie hat UNGERECHTIGKEITEN begangen. Ich werde sie BESTRAFEN.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 201
END

IF ~~ THEN BEGIN 102 // from:
  SAY #56423 /* ~*Alle, die sich der GERECHTIGKEIT in den WEG stellen, werden VERURTEILT. Du hast dein Schicksal VERDIENT, SUKKUBUS.* ~ */
  IF ~~ THEN REPLY #56424 /* ~"Nein, das wirst du nicht. Du hast kein Recht dazu."~ */ GOTO 99
  IF ~~ THEN REPLY #56425 /* ~Warte ab, was passiert.~ */ DO ~LeaveParty()
Enemy()
Attack("Grace")
ChangeAIScript("MDKGrace",DEFAULT)
ForceAttack("Grace",Myself)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.0
  SAY #56426 /* ~*Die Hure, die sich GNADE nennt, zeigt sich. SCHWÄCHE hat dein Herz vergiftet.*~ */
  IF ~~ THEN REPLY #56427 /* ~"Das ist keine Gnade. Das ist mein *Auftrag*. Willst du meine Schwäche auf die Probe stellen, Vhailor?"~ */ GOTO 104
  IF ~~ THEN REPLY #56428 /* ~"Gnade ist keine Schwäche, Vhailor. Du läßt sie jetzt in Ruhe, oder du kriegst es mit mir zu tun."~ */ GOTO 104
  IF ~~ THEN REPLY #56429 /* ~"Hat sie das? Dann urteile über mich, Vhailor - und wenn du zu der Ansicht kommst, daß es mir an etwas mangelt, dann verurteile *mich*."~ */ GOTO 129
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #56430 /* ~*Alle, die sich der GERECHTIGKEIT in den WEG stellen, werden VERURTEILT. Vhailors Augen lodern auf, und er hebt seine Axt. *Du hast dein Schicksal VERDIENT.* ~ */
  IF ~~ THEN REPLY #56431 /* ~"Bereite dich auf deinen zweiten Tod vor, Vhailor..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 90.2 91.2
  SAY #56432 /* ~*Dem Herz dieses Githzerais fehlt das VORURTEIL, das Seinesgleichen vergiftet. Aber er lebt in KONFLIKT mit sich selbst, denn sein WORT ist sein WILLE und sein GESETZ. Wo andere Githzerai im Chaos gedeihen, da leidet dieser.*~ */
  IF ~~ THEN REPLY #56433 /* ~"Vorurteil? Was meinst du damit?"~ */ GOTO 106
  IF ~~ THEN REPLY #56434 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56435 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56436 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56437 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #56438 /* ~*Die Rasse der Githzerai ist voller VORURTEILE. Es gibt keinen Patz für VORURTEILE in den Augen der GERECHTIGKEIT.*~ */
  IF ~~ THEN REPLY #56439 /* ~"Was für Vorurteile?"~ */ GOTO 107
  IF ~~ THEN REPLY #56440 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56441 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56442 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56443 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #56444 /* ~*Durch ihre Natur BEEINFLUSSEN Vorurteile die Gerechtigkeit. Die Githzerai haben Vorurteile gegen die Githyanki, ihre Vettern, und gegen die Illithiden, die einst die BESITZER der Gith-Völker waren. Im Herzen der Githzerai brennt Haß für die Githyanki und die Illithiden.*~ */
  IF ~~ THEN REPLY #56445 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",1)
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56446 /* ~"Vorurteile beeinflussen die Gerechtigkeit, was? Und was ist mit dem, was du über Annah gesagt hast?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56447 /* ~"Vorurteile prägen die Gerechtigkeit, was? Und was ist mit dem, was du über Grace, die Gefallene, gesagt hast?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
~ THEN REPLY #56448 /* ~"Vorurteile prägen die Gerechtigkeit, was? Und was ist mit dem, was du über Annah und Grace, die Gefallene, gesagt hast?"~ */ GOTO 108
  IF ~~ THEN REPLY #56449 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56450 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56451 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.1 107.2 107.3
  SAY #56452 /* ~*Meine Worte entstammen KEINEM Vorurteil. Sie entstammen der BEOBACHTUNG und der ERINNERUNG.*~ */
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56453 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
GlobalGT("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56454 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
!NearbyDialog("Dannah")
~ THEN REPLY #56455 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56456 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
GlobalGT("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56457 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
!NearbyDialog("Dgrace")
~ THEN REPLY #56458 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #56459 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56460 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
MoraleInc("Grace",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56461 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("Dgrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56462 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56463 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56464 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56465 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56466 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56467 /* ~"Nun, ich denke, deine 'Beobachtungen' zeugen von Vorurteilen, Vhailor - du wirfst alle Scheusale in einen Topf. Vielleicht solltest du deine Beobachtungen mal überprüfen."~ */ GOTO 109
  IF ~~ THEN REPLY #56468 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56469 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56470 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56471 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 108.0 108.1 108.2 108.3 108.4 108.5 108.6 108.7 108.8 108.9 108.10 108.11 108.12 108.13 108.14
  SAY #56472 /* ~*Meine BEOBACHTUNGEN erfolgen durch die AUGEN DER GERECHTIGKEIT. Ich BEOBACHTE, dann HANDLE ich. Es wäre gut, wenn du dir das MERKST, wo du sonst schon alles vergißt.*~ */
  IF ~~ THEN REPLY #56473 /* ~"Lass mich dich etwas über jemand anders fragen..."~ */ GOTO 91
  IF ~~ THEN REPLY #56474 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56475 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56476 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 90.3 91.3
  SAY #56504 /* ~*TANAR-RI werden aus dem Chaos GEBOREN. Die GERECHTIGKEIT ist ihnen EGAL. Der SUKKUBUS kennt die GERECHTIGKEIT, aber sie hat sich von ihr abgewandt. GNADE hat ihr Herz VERGIFTET.*~ */
  IF ~~ THEN REPLY #56505 /* ~"Ich möchte dich etwas über jemand anders fra-~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56506 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Frag-" ~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56507 /* ~"Vergiß es, Vhailor. Laß uns-"~ */ EXTERN ~DGRACE~ 196
END

IF ~~ THEN BEGIN 111 // from:
  SAY #56508 /* ~Vhailors Augen funkeln. *GNADE nagt am HERZEN der GERECHTIGKEIT. GNADE verschlingt alles, was VOLLKOMMEN ist. MITLEID und VERGEBUNG sind die GIFTE DER GNADE.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 197
END

IF ~~ THEN BEGIN 112 // from:
  SAY #56509 /* ~*Du bist SCHWACH, SUKKUBUS. Du bist so SCHWACH wie alle deiner ART. So wie deine ART mit dem FLEISCH verführt, hat die GNADE dich VERFÜHRT. Du bist eine HURE DER GNADE. Du bist NICHTS.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 198
END

IF ~~ THEN BEGIN 113 // from:
  SAY #56510 /* ~Vhailors Augen lodern auf, als er Grace, die Gefallene, betrachtet. Die zwei glühenden Augen brennen wie Fackeln. Grace hält seinem Blick stand, ihre Augen blicken kristallklar und entschlossen.~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #56511 /* ~*Die WURZELN der SCHWÄCHE sind da. Du HÄLTST dich für STARK, aber die GNADE wird an den Wurzeln nagen. Sie wird deinen WILLEN VERZEHREN.* Vhailor ist einen Moment lang still, und seine nächsten Worte fallen wie ein Hammer. "*Doch... du hast ANDERE Schwächen in deinem HERZEN, SUKKUBUS. Das können MEINE Augen sehen. Du SORGST dich. Die SORGE macht dich SCHWACH.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 199
END

IF ~~ THEN BEGIN 115 // from: 90.4 91.4
  SAY #56512 /* ~*TANAR-RI werden aus dem Chaos GEBOREN. Die GERECHTIGKEIT ist ihnen EGAL. Der SUKKUBUS kennt die GERECHTIGKEIT, aber sie hat sich von ihr abgewandt. Die GNADE hat ihre Wurzeln in ihr Herz gelegt. Sie SORGT sich. Die SORGE macht sie SCHWACH.*~ */
  IF ~~ THEN REPLY #56513 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56514 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56515 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56516 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 90.6 91.6
  SAY #56517 /* ~*Ich sehe das Zeichen der GERECHTIGKEIT auf dem Zauberer.*~ */
  IF ~~ THEN REPLY #56518 /* ~"Willst du damit sagen, daß Ignus verurteilt worden ist?"~ */ GOTO 117
  IF ~~ THEN REPLY #56519 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56520 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56521 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56522 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #56523 /* ~*Die Flammen, die um ihn herum brennen, zeugen von GERECHTIGKEIT. Der Zauberer wurde BESTRAFT. Er lebt nicht mehr, sondern wurde ein TEIL der EBENEN. Sein Körper ist ein LEITER. Er hat kein HERZ. Er wurde VERURTEILT.*~ */
  IF ~~ THEN REPLY #56524 /* ~"Weißt du, warum Ignus nicht gestorben ist? Hätten diese Flammen ihn nicht umbringen müssen?"~ */ GOTO 118
  IF ~~ THEN REPLY #56525 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56526 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56527 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56528 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #56529 /* ~*Er LEBT nicht mehr. Er EXISTIERT nur noch. Das ist nicht das GLEICHE.*~ */
  IF ~~ THEN REPLY #56530 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56531 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56532 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56533 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 90.5 91.5
  SAY #56534 /* ~*Der MODRON spielt keine Rolle. Er kann Gerechtigkeit DEFINIEREN, aber er VERSTEHT sie nicht. Das ist nicht befriedigend, aber es REICHT.*~ */
  IF ~~ THEN REPLY #56535 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56536 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56537 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56538 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 90.7 90.8 91.7 91.8
  SAY #56539 /* ~*Ich bin VHAILOR. Ich bin ein GNADENTÖTER. Meine TATEN sind Ausdruck meines Herzens.*~ */
  IF ~~ THEN REPLY #56540 /* ~"Das hab' ich nicht gefragt."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 121
  IF ~~ THEN REPLY #56541 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56542 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56543 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56544 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #56545 /* ~Es tritt eine unangenehme Stille ein... Aber Vhailor unterbricht sie nicht. Seine Glutaugen halten deinem starren Blick ohne zu flackern stand.~ */
  IF ~~ THEN REPLY #56546 /* ~"Ich habe dich gefragt, was du siehst, wenn du dich selbst ansiehst. Was siehst du, wenn du über dich selbst urteilst, Vhailor?"~ */ GOTO 122
  IF ~~ THEN REPLY #56547 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56548 /* ~"Ach, vergiß es, Vhailor. Ich wollte dich noch was anderes fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56549 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56550 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #56551 /* ~*Ich URTEILE nicht über mich selbst. Ich bin ein GNADENTÖTER. Meine TATEN sind Ausdruck meines HERZENS. Mein WILLE ist der WILLE der GERECHTIGKEIT.*~ */
  IF ~~ THEN REPLY #56552 /* ~"Dann stehst du über der Gerechtigkeit?"~ */ GOTO 123
  IF ~~ THEN REPLY #56553 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56554 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56555 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56556 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #56557 /* ~*Ich DIENE der GERECHTIGKEIT. Ich stehe nicht ÜBER der Gerechtigkeit. NICHTS steht über der GERECHTIGKEIT.*~ */
  IF ~~ THEN REPLY #56558 /* ~"Dann schau dich mal selbst an, Vhailor. Was sehen die Augen der Gerechtigkeit, wenn sie ihren Diener anschaut?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 124
  IF ~~ THEN REPLY #56559 /* ~"Ich möchte dich etwas über jemand anders fragen."~ */ GOTO 91
  IF ~~ THEN REPLY #56560 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56561 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56562 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #56563 /* ~Die Glut in Vhailors Augen wird schwarz, und eine fürchterliche STILLE tritt ein.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #56564 /* ~Gerade, als du anfängst, dich zu fragen, wann Vhailors Augen wieder aufflackern, LODERT es auf, und du mußt dir die Augen zuhalten.~ */
  IF ~~ THEN REPLY #56565 /* ~"Vhailor..."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #56566 /* ~*Ich bin VHAILOR. Ich bin ein GNADENTÖTER. Meine TATEN sind Ausdruck meines HERZENS. Ich bin ein DIENER der GERECHTIGKEIT.*~ */
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #56567 /* ~"Aber... Vhailor, was hast du GESEHEN, als..."~ */ GOTO 128
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #56568 /* ~"Aber... Vhailor, was hast du GESEHEN, als..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 127
  IF ~~ THEN REPLY #56569 /* ~"Nun gut. Ich wollte dich noch etwas über jemand anders fragen..."~ */ GOTO 91
  IF ~~ THEN REPLY #56570 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56571 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56572 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY #56573 /* ~Bevor du etwas sagen kannst, spürst du, wie ein merkwürdiges Gefühl in deinem Hinterkopf hochkriecht und die Worte dir im Halse steckenbleiben... Du weißt, daß du das Thema meiden solltest, weil du sonst etwas in Vhailor weckst. Etwas Gefährliches.~ */
  IF ~~ THEN REPLY #56574 /* ~"Aber... Vhailor, was hast du GESEHEN, als du nach innen geblickt hast?"~ */ GOTO 128
  IF ~~ THEN REPLY #56575 /* ~"Vergiß es, Vhailor. Ich wollte dich noch etwas über jemand anders fragen..."~ */ GOTO 91
  IF ~~ THEN REPLY #56576 /* ~"In Ordnung, Vhailor. Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56577 /* ~"Hier trennen sich unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56578 /* ~"Schon gut, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.0 127.0
  SAY #56579 /* ~*AUF MICH IST VERLASS. WO GNADE LEBT, TÖTE ICH SIE. WO MITLEID DAS HERZ VERGIFTET, WERDE ICH ES SEINEN OPFERN AUSTREIBEN. WO LÜGNER UND VERRÄTER DER WAHRHEIT LÜGEN VERBREITEN, WERDE ICH IHRE LÜGEN MIT DER KLINGE DER GERECHTIGKEIT BEANTWORTEN.*~ */
  IF ~~ THEN REPLY #56580 /* ~"Aber ich habe *gefragt*..."~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 103.2 128.0
  SAY #56581 /* ~*WER BIST DU, DASS DU ES WAGST; EINEN DIENER DER GERECHTIGKEIT ANZUZWEIFELN? DU BIST NICHTS. DU BIST EINE HÜLLE. ICH WERDE NUN DEIN HERZ DURCHSUCHEN. WIR WERDEN SEHEN, OB DIR ETWAS FEHLT.*~ */
  IF ~~ THEN REPLY #56582 /* ~"Aber..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 90.9 91.9 129.0
  SAY #56583 /* ~Als Vhailors rotglühender Blick auf dich fällt, spürst du, wie er an deiner Haut zerrt, sie mit Blasen übersät und sie dann abschält - doch du spürst keinen Schmerz. Dir wird nur etwas schwindlig und du hast das Gefühl, daß du *ertrinkst*. Während seine Augen sich in dich brennen, regt sich in dir eine Erinnerung...~ */
  IF ~~ THEN REPLY #56584 /* ~Gib dich der Erinnerung hin.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 131
  IF ~~ THEN REPLY #56585 /* ~Schüttel die Erinnerung ab und bleibe in der Gegenwart.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #56586 /* ~Die brennenden roten Augen werden heller, bis sie dich fast blenden. Dann SIEHST du Vhailor an, aber wo zuvor leerer Raum war, ist nun *Fleisch* - ein vernarbter Mann mit ebenholzfarbener Haut funkelt dich unter seinem Helm hervor an, seine Augen leuchten wie Feuer. Die Rüstung schimmert, und sein Gesicht ist starr vor Zorn. Er ist *gekommen*, um dich zu holen.~ */
  IF ~~ THEN REPLY #56587 /* ~Echo: "Du hast mich gefunden, Vhailor. Du bist einen langen Weg gereist... Ich kann mir vorstellen, daß es nicht leicht war, mich zu finden."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 132
  IF ~~ THEN REPLY #56588 /* ~Schüttel die Erinnerung ab und bleibe in der Gegenwart.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #56589 /* ~"Die Gerechtigkeit hat mich zu dir geführt. Wo du gehst, hinterläßt du eine Spur des LEIDENS." Die Stimme des Mannes grollt, aber sie hallt nicht, nicht wie Vhailors gespenstische Stimme, sondern zeugt von Wut und Zorn und Fleisch und Blut. Er ist gefährlich, aber er ist kein Gespenst, sondern ein Mensch, und du hast schon viele solche Menschen besiegt. "Ich werde dich vor die Gerichte von Sigil bringen und dafür sorgen, daß du bestraft wirst. Wenn du dich weigerst, dann SAGE es, damit ich über dich urteilen kann."~ */
  IF ~~ THEN REPLY #56590 /* ~Echo: "Ich weigere mich. Urteile über mich... und dann urteile ich über dich."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 133
  IF ~~ THEN REPLY #56591 /* ~Schüttel die Erinnerung ab und bleibe in der Gegenwart.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #56592 /* ~"Über MICH urteilen?" Vhailors Augen *brennen*, und er umfaßt seine Axt fest. Die Muskeln in seinem Hals und seinem Arm spannen sich, als er beginnt, die Axt langsam und drohend zu schwingen. "Du hast kein RECHT, über mich zu urteilen."~ */
  IF ~~ THEN REPLY #56593 /* ~Echo: "Doch, das habe ich, Vhailor, denn ich kenne dein Herz - und meine Macht gibt mir das Recht, über dich zu urteilen. Aber ich werde nicht jetzt über dich urteilen: Du mußt in diesem Käfig bleiben, bis ich dich freilassen kann, damit du wieder durch die Ebenen ziehen kannst."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 134
  IF ~~ THEN REPLY #56594 /* ~Schüttel die Erinnerung ab und bleibe in der Gegenwart.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #56595 /* ~Als deine Inkarnation das Wort 'Käfig' ausspricht, richtet sich Vhailors Blick plötzlich auf die umgebenden Wände - es sind die Wände der Gefängniszelle von Verdammnis, wo du ihn gefunden hast, viele Jahre zuvor. *Viele* Jahre, genug für einen Mann, viele Tode zu sterben. Oder vielleicht auch nur einen. ~ */
  IF ~~ THEN REPLY #56596 /* ~Echo: "Ich bin dir bis jetzt entwischt, Vhailor... Was meinst du, warum ich dich *hier* treffen wollte? Hast du gedacht, ich würde mich ergeben? Oder ich wollte gegen dich kämpfen? Nein - das hier ist die Torstadt Verdammnis, Vhailor. Sie grenzt an die *Gefängnisebene* Carzeri, wo selbst *Götter* gefangen gehalten werden. Du bist mächtig, Vhailor, aber die Energien an diesem Ort erlauben es, daß selbst die Mächtigsten hier gefangen genommen werden können."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 135
  IF ~~ THEN REPLY #56597 /* ~Schüttel die Erinnerung ab und bleibe in der Gegenwart.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #56598 /* ~Vhailor dreht sich um, aber ein Teil des Feuers in seinen Augen ist erloschen. "Das ist *Verrat*."~ */
  IF ~~ THEN REPLY #56599 /* ~Echo: "Verrat zieht sich wie Adern durch diesen Ort, und es ist Verrat, der mir die Stärke für diesen Zauber verleiht - deshalb war ich gezwungen, dich hier in Verdammnis zu treffen. Ich kann diese Zelle verlassen, Vhailor, aber du kannst das erst, wenn ich dich holen komme. Dein Kreuzzug für die Gerechtigkeit ist wirklich bemerkenswert, aber er wird vergessen werden. Und in einiger Zeit wird die Gerechtigkeit vielleicht auch dich vergessen."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 136
  IF ~~ THEN REPLY #56600 /* ~Schüttel die Erinnerung ab und bleibe in der Gegenwart.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #56601 /* ~"Du versagst dir nicht nur selbst Gerechtigkeit, sondern weigerst dich auch, meinen *Kreuzzug* anzuerkennen..."~ */
  IF ~~ THEN REPLY #56602 /* ~Echo: "Ich kenne deine Mission. Aber sie wird wohl warten müssen, bis ich *meine* Mission erfüllt habe, und das ist schon das zweite Mal, daß du mich gefunden hast und versucht hast, über mich zu urteilen. Ich werde nicht zulassen, daß es noch ein drittes Mal passiert."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 137
  IF ~~ THEN REPLY #56603 /* ~Schüttel die Erinnerung ab und bleibe in der Gegenwart.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #56604 /* ~Vhailor sagt nichts - noch nie hast du so ENDGÜLTIG geklungen. Du verkündest ein schreckliches Urteil über ihn, ein Urteil, das überhaupt nicht gerecht ist.~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #56605 /* ~Echo: "Ich bin unsterblich, Vhailor - aber du bist... seltsam. Die Gerechtigkeit hat dich *berührt*, und diese Gerechtigkeit ist vielleicht mächtiger als das, was mich bei Kräften hält. Dennoch: Ich will nicht, daß du stirbst... Vielleicht brauche ich eines Tages jemanden, der die Macht hat, mich zu töten. Also bleibst du hier, bis ich dich holen komme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Caging_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,90000)
~ JOURNAL #56607 /* ~Ich konnte mich schwach an etwas erinnern... daran, daß ich derjenige war, der Vhailor unter Verdammnis eingekerkert hat. Er war hierhergekommen, um mich zu finden, und ich hatte die Zelle speziell für ihn gemacht, damit er mir nicht wieder über den Weg laufen würde. Abgesehen von der Tücke des Ganzen waren die Worte meiner früheren Inkarnation eigenartig - er meinte, daß er sich sicher sei, daß Vhailor so lange die Macht hätte, mich zu *töten*, wie die Gerechtigkeit seine Axt führe. Aus irgendeinem Grund habe ich das Gefühl, daß das stimmt. Aber warum hat ihn die Inkarnation dann nicht einfach um die Ecke gebracht? Gab es einen besonderen Grund, warum er ihn am Leben ließ?~ */ GOTO 138
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56606 /* ~Echo: "Ich bin unsterblich, Vhailor - aber du bist... seltsam. Die Gerechtigkeit hat dich *berührt*, und diese Gerechtigkeit ist vielleicht mächtiger als das, was mich bei Kräften hält. Dennoch: Ich will nicht, daß du stirbst... Vielleicht brauche ich eines Tages jemanden, der die Macht hat, mich zu töten. Also bleibst du hier, bis ich dich holen komme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 130.1 131.1 132.1 133.1 134.1 135.1 136.1 137.0 137.1
  SAY #56608 /* ~Die Erinnerung verblaßt, wird dunkel, und plötzlich steht dir wieder der gespenstische Vhailor gegenüber, seine Rüstung wieder leer, körperlos, hinter dem Visier nur die glühenden Augen. ~ */
  IF ~~ THEN REPLY #56609 /* ~"Vhailor...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #56610 /* ~*Über dich wird GEURTEILT werden.*~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #56611 /* ~"Nun gut..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 140
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #56612 /* ~"Nun gut..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #56614 /* ~Als Vhailors glühender Blick auf dich fällt, überkommt dich plötzlich ein merkwürdiges losgelöstes Gefühl, als würdest du aus deinem Körper heraustreten. In deinem Hinterkopf vernimmst du ein leises Flüstern, und plötzlich weißt du, daß, egal was Vhailor zu sehen *behauptet*, er nur das sehen wird, was du MÖCHTEST. Du weißt, daß er selbst auf die einfachste Täuschung hereinfallen wird - du bist für ihn ein Buch mit sieben Siegeln.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 139.1 140.0
  SAY #56618 /* ~*Hast du je einen anderen ERMORDET?*~ */
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56619 /* ~Lüge: "Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_3","GLOBALLaw",-1)
~ GOTO 147
  IF ~  Global("Murder","GLOBAL",0)
~ THEN REPLY #56620 /* ~Wahrheit: "Nein."~ */ GOTO 147
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56621 /* ~Wahrheit: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #56622 /* ~Wahrheit: "Ja... Es war meine Hand, aber nicht mein Geist, Vhailor. In einer meiner früheren Inkarnationen habe ich einen Mann namens Fin Andlye wegen des Wissens, das er besaß, ermordet."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56623 /* ~Wahrheit: "Vhailor, ich glaube, ich bin für den Tod von Tausenden verantwortlich... vielleicht von vielen Tausend... in den ganzen Ebenen. Die Schädelsäule hat gesagt, daß jedesmal, wenn ich sterbe, ein Anderer an meiner Stelle stirbt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56624 /* ~"Ich werde deine Fragen nicht beantworten, Vhailor, und mich auch nicht deinem Urteil unterwerfen."~ */ GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.5 147.5 148.15
  SAY #56625 /* ~*Wer der GERECHTIGKEIT nicht ANTWORTET, wird BESTRAFT.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56626 /* ~"Dann los, Vhailor - aber mach dich darauf gefaßt, ein zweites Mal zu sterben..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56627 /* ~"Dann los, Vhailor - aber mach dich darauf gefaßt, ein zweites Mal zu sterben..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56628 /* ~"Aber ich *bin* schon bestraft worden, Vhailor."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56629 /* ~"Aber ich *bin* schon bestraft worden, Vhailor."~ */ GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.2 142.3 149.2 149.3
  SAY #56630 /* ~Vhailor verstummt. *Ich werde von deiner BESTRAFUNG hören.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56631 /* ~"Was soll's, Vhailor. Ich bin es leid, mit dir zu diskutieren. Ich würde die Sache lieber mit Gewalt regeln."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56632 /* ~"Was soll's, Vhailor. Ich bin es leid, mit dir zu diskutieren. Ich würde die Sache lieber mit Gewalt regeln."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #56633 /* ~"Jedesmal, wenn ich sterbe, verliere ich mein Gedächtnis, Vhailor. Ich habe keine Ahnung von mir selbst, keine Ahnung, wer ich bin oder WAR, und ich trage tausend Narben an Geist und Körper von Wunden, an die ich mich nicht erinnern kann. Der Tod verschmäht mich, und ich fürchte, ich werde niemals Frieden finden."~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.2
  SAY #56634 /* ~Vhailor starrt dich an, seine Augen flackern hell. Du spürst denselben *Blick* auf dir wie zuvor, das Abschälen deiner Haut, während Vhailor dich seziert. Du spürst, wie dich Übelkeit und ein Gefühl des *Ertrinkens* überkommt, diesmal stärker als zuvor... bis dir fast völlig schwarz vor Augen wird...~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #56635 /* ~*Du bist BESTRAFT worden. Du trägst das Zeichen der GERECHTIGKEIT. Ich SEHE es auf deinem FLEISCH.*~ */
  IF ~~ THEN REPLY #56636 /* ~"Dann..."~ */ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #56637 /* ~*WISSE DIES: Es gibt VIEL, das NICHT in dir gesehen werden kann. Ich werde dich BEOBACHTEN. Du bist BESTRAFT worden. Aber das erspart dir nicht ZUKÜNFTIGE Strafen für VERBRECHEN, die du noch begehen wirst.*~ */
  IF ~~ THEN REPLY #56638 /* ~"Nun gut, Vhailor, betrachten wir die Sache als erledigt... zumindest im Moment. Ich wollte dich etwas fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56639 /* ~"Dann trennen sich hier unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56640 /* ~"Verstanden, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 147 // from: 141.0 141.1
  SAY #56641 /* ~*Hast du je eine UNGERECHTIGKEIT einem anderen gegenüber begangen?*~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56642 /* ~Lüge: "Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_4","GLOBALLaw",-1)
~ GOTO 148
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #56643 /* ~Wahrheit: "Nein."~ */ GOTO 148
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56644 /* ~Wahrheit: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56645 /* ~Wahrheit: "Ja... Es war meine Hand, aber nicht mein Geist, Vhailor. Es war ein anderer Mensch, der diesen Körper bewohnt hat."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56646 /* ~Wahrheit: "Vhailor, ich glaube, ich bin für den Tod von Tausenden verantwortlich... vielleicht von vielen Tausend... in den ganzen Ebenen. Die Schädelsäule hat gesagt, daß jedesmal, wenn ich sterbe, ein Anderer an meiner Stelle stirbt. Ich kenne keine größere Ungerechtigkeit."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56647 /* ~"Ich werde deine Fragen nicht beantworten, Vhailor, und mich auch nicht deinem Urteil unterwerfen."~ */ GOTO 142
END

IF ~~ THEN BEGIN 148 // from: 147.0 147.1
  SAY #56648 /* ~*Hast du je einem anderen UNRECHT getan?*~ */
  IF ~~ THEN REPLY #56649 /* ~Lüge: "Nein, das habe ich nicht. Ich habe in meinen ganzen Leben noch nie jemandem weh getan."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_5","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 150
  IF ~~ THEN REPLY #56650 /* ~Wahrheit: "Ja. Viele kamen durch meine Hand zu Schaden, Vhailor. Aber es war eine andere Person, die diesen Körper bewohnt hat."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("AR1900_Visited","GLOBAL",1)
~ THEN REPLY #56651 /* ~Wahrheit: "Ich habe der Dame der Schmerzen getrotzt, und sie hat mich in die Irrgänge geschickt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #56652 /* ~Wahrheit: "Eine meiner früheren Inkarnationen hat eine Frau namens Deionarra angelogen und ihr gesagt, er liebte sie, obwohl dies nicht stimmte. Daraufhin folgte sie ihm und fand den Tod."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #56653 /* ~Wahrheit: "Ich glaube, ich war verantwortlich für Tod Deionarras, der einzigen Tochter von Jannis, dem Advokaten."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #56654 /* ~Wahrheit: "Ich war verantwortlich für Deionarras Tod, der einzigen Tochter von Jannis, dem Advokaten."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #56655 /* ~Wahrheit: "Meine frühere Inkarnation hat in dem Wissen, daß ich unsterblich bin, einem Mann ein Versprechen, einen Eid abverlangt, daß er mir dienen würde bis zu meinem Tod. Ich habe sein Leben gestohlen, damit er mir diente. Sein Name war Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #56656 /* ~Wahrheit: "Ich habe eine junge Frau, Annah, in die Sklaverei verkauft."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #56657 /* ~Wahrheit: "Ich habe meinen Kameraden, Dak'kon, in die Sklaverei verkauft."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #56658 /* ~Wahrheit: "Ich habe meinen Kameraden, Nordom, in die Sklaverei verkauft."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #56659 /* ~Wahrheit: "Eine meiner früheren Inkarnationen lehrte Ignus, wie er anderen Schaden zufügen kann. Das legte den Grundstein für sein Leiden und das von anderen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #56660 /* ~Wahrheit: "Ich habe Morte verraten und ihn der Schädelsäule überlassen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #56661 /* ~Wahrheit: "Ich habe dem Multiversum selbst Unrecht angetan... Ich habe eine gefährliche Kreatur, Coaxmetall, aus dem Belagerungsturm befreit."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Fhjull_1","GLOBAL",1)
~ THEN REPLY #56662 /* ~Wahrheit: "Ich habe Fhjull für meinen eigenen Vorteil an die Schädelsäule verraten."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56663 /* ~Wahrheit: "Ich habe dir Unrecht angetan, Vhailor - Ich war derjenige, der dich unter Verdammnis eingesperrt hat."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~~ THEN REPLY #56664 /* ~"Ich werde deine Fragen nicht beantworten, Vhailor, und mich auch nicht deinem Urteil unterwerfen."~ */ GOTO 142
END

IF ~~ THEN BEGIN 149 // from: 141.2 141.3 141.4 147.2 147.3 147.4 148.1 148.2 148.3 148.4 148.5 148.6 148.7 148.8 148.9 148.10 148.11 148.12 148.13 148.14
  SAY #56665 /* ~*Du hast das Verbrechen ZUGEGEBEN.* Vhailors Augen lodern in seinem Helm auf, und du hast plötzlich das Gefühl, daß in dieser gespenstischen Rüstung eine schreckliche *Kraft* lauert. *Die SCHULDIGEN werden BESTRAFT.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56666 /* ~"Dann los, Vhailor - aber mach dich darauf gefaßt, ein zweites Mal zu sterben..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56667 /* ~"Dann los, Vhailor - aber mach dich darauf gefaßt, ein zweites Mal zu sterben..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56668 /* ~"Aber ich *bin* schon bestraft worden, Vhailor."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56669 /* ~"Aber ich *bin* schon bestraft worden, Vhailor."~ */ GOTO 143
END

IF ~~ THEN BEGIN 150 // from: 148.0
  SAY #56670 /* ~Vhailor starrt dich an, seine Augen flackern hell. Du spürst denselben *Blick* auf dir wie zuvor, das Abschälen deiner Haut, während Vhailor dich seziert. Du spürst, wie dich Übelkeit und ein Gefühl des *Ertrinkens* überkommt, diesmal stärker als zuvor... bis dir fast völlig schwarz vor Augen wird...~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #56671 /* ~*WISSE DIES: Es gibt VIEL, was in dir NICHT gesehen werden kann. Ich werde dich BEOBACHTEN. Du kannst meiner Bestrafung für zukünftige VERBRECHEN nicht ENTGEHEN.*~ */
  IF ~~ THEN REPLY #56672 /* ~"Nun gut, Vhailor, betrachten wir die Sache als erledigt... zumindest im Moment. Ich wollte dich etwas fragen..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56673 /* ~"Dann trennen sich hier unsere Wege, Vhailor. Leb wohl."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56674 /* ~"Verstanden, Vhailor. Gehen wir weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 152 // from: 77.0 77.1
  SAY #56675 /* ~Deine Worte scheinen nachzuhallen und immer mehr an Stärke zu gewinnen. Die Glut in Vhailors Augen beginnt zu flackern - dann erlischt sie. Seine Rüstung fällt in sich zusammen, und die Metallplatten fallen mit einem *Krachen* zu Boden. Als sie aufprallen, wirbeln sie Staub auf... Asche- und Rostpartikel steigen von dem Metall auf, das vor deinen Augen altert, rostet und zerfällt. Was bleibt, sind ein paar zerbeulte Metallplatten als letztes Zeugnis von Vhailors Existenz.~ */
  IF ~~ THEN REPLY #56676 /* ~"Ruh dich jetzt aus, Vhailor."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56883 /* ~*Dummheit ist ein Zeichen von SCHWÄCHE. Es liegt keine UNGERECHTIGKEIT darin, wenn einer, der seinen Vorteil sucht, ÜBERVORTEILT wird.*~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 42
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56892 /* ~*Selbst den SCHEUSALEN wird GERECHTIGKEIT widerfahren.*~ */
  IF ~~ THEN REPLY #56894 /* ~"Ja. Gehen wir."~ */ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #57391 /* ~Vhailor tritt plötzlich vor, seine Augen glühen. "Das ist *keine* Gerechtigkeit, sondern nur eine kindische *Verhöhnung* derselben. Es wird *keine* Hinrichtung geben, 'Richter'... es sei denn, Eure Taten zwingen mich, selbst der Gerechtigkeit zu dienen."~ */
  IF ~~ THEN EXTERN ~DJUDGE~ 2
END

IF ~~ THEN BEGIN 156 // from:
  SAY #57392 /* ~"Ihr werdet Euch in Zukunft in einer angemesseneren Weise verhalten, Richter. Sollte mir etwas Gegenteiliges zu Ohren kommen... komme ich *wieder*, und wenn ich tausende von Meilen zurücklegen muß. Strebt nach Gerechtigkeit in Eurem Herzen, und Ihr seid sicher. Lebt wohl."~ */
  IF ~~ THEN REPLY #57393 /* ~"Danke, Vhailor. Leb wohl, Richter."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #63704 /* ~"Die Gerechtigkeit ist *nicht* blind. *Ich* bin ihre Augen."~ [VHA255] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("Fortress_Vhailor","GLOBAL",3)
~ THEN BEGIN 158 // from:
  SAY #68222 /* ~Schon durch die kleinste Berührung deiner Macht scheint der Lebensfunken durch Vhailors Rüstung zu dringen. Es erhebt sich und nimmt wieder die Gestalt eines Mannes an. Als die Rüstung wieder vollständig ist, lodern zwei Flammen innerhalb des Helms. ~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68223 /* ~"Vhailor?"~ */ DO ~SetGlobal("Fortress_Vhailor","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 159
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68398 /* ~ERHEBE DICH, VHAILOR.~ */ GOTO 164
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY #68225 /* ~*Ich bin ERWACHT.*~ [VHA002] */
  IF ~~ THEN REPLY #68226 /* ~"Vhailor, hör zu: Eine große Ungerechtigkeit ist geschehen. Immer wenn ich sterben soll, stirbt jemand anders in den Ebenen an meiner Stelle. Das ist nun schon Hunderte, Tausende, vielleicht Hunderttausende von Malen passiert. Das Multiversum stirbt, damit ich leben kann."~ */ DO ~PermanentStatChange("Vhail",STR,RAISE,3)
PermanentStatChange("Vhail",DEX,SET,25)
PermanentStatChange("Vhail",CON,SET,25)
GiveExperience("Vhail",2000000)
~ GOTO 160
  IF ~~ THEN REPLY #68263 /* ~"Vhailor, ich brauche deine Hilfe. Meine Sterblichkeit trachtet uns nach dem Leben."~ */ GOTO 163
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #68227 /* ~Als du die Worte sprichst, scheint Vhailor zu *wachsen*, er wird größer, mehr eine Waffe als eine Rüstung. ~ */
  IF ~~ THEN REPLY #68228 /* ~"Ich kenne mein Verbrechen, und ich versuche alles, damit es sich nie wiederholt, aber das einzige Wesen, das diese Ungerechtigkeit stoppen könnte, *weigert* sich aus purem Eigennutz, dies zu tun."~ */ DO ~FullHealEx("Vhail")
~ GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY #68229 /* ~*DU GEHÖRST NUN ZU DEN VERDAMMTEN. SO WIE DER ANDERE. EURE SEELEN WERDEN VOM SCHWERT DER GERECHTIGKEIT ZERSCHLAGEN*.~ */
  IF ~~ THEN REPLY #68230 /* ~"Sehr gut, Vhailor... Aber ich muß erst zu diesem anderen gehen."~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #68231 /* ~*DAS WERDE ICH. DANN KEHRE ICH ZU EUCH ZURÜCK.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68232 /* ~"Sehr gut, Vhailor."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68233 /* ~"Sehr gut, Vhailor."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68244 /* ~"Sehr gut, Vhailor."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 163 // from: 159.1
  SAY #68264 /* ~*DANN WIRD DEINE STERBLICHKEIT STERBEN.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68265 /* ~"In Ordnung, Vhailor..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68266 /* ~"In Ordnung, Vhailor..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68267 /* ~"In Ordnung, Vhailor..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 164 // from: 158.1
  SAY #68399 /* ~Vhailors Helm wendet sich dir zu, seine Augen pulsieren wie zwei schlagende Herzen.~ */
  IF ~~ THEN REPLY #68400 /* ~VHAILOR, DIE HAND DER GERECHTIGKEIT IST SCHNELL, UND SIE KOMMT NUN, MICH ZU HOLEN. ICH WERDE NICHT MEHR SEHR LANGE HIER SEIN. ICH BRINGE DICH ZURÜCK NACH SIGIL, WENN DU WILLST.~ */ GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY #68401 /* ~*Welches VERBRECHEN hat dich der GERECHTIGKEIT zugeführt?*~ */
  IF ~~ THEN REPLY #68402 /* ~VIELE SIND GESTORBEN, DAMIT ICH LEBEN KONNTE, VHAILOR. DAS VERBRECHEN IST GROSS... UND DIE ZEIT UND DAS SCHICKSAL SIND IM AUGENBLICK HINTER MIR HER. ~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #68403 /* ~*LASS dich von meinen WORTEN tragen. GERECHTIGKEIT ist eine Lehrerin. AUS deiner BESTRAFUNG ziehe KRAFT. Durch Bestrafung wirst du PERFEKTION erlangen.*~ */
  IF ~~ THEN REPLY #68404 /* ~VIELLEICHT, VHAILOR. ICH WERDE ÜBER DEINE WORTE NACHDENKEN.~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #68405 /* ~*Sei dir GEWISS: Solltest du deiner Strafe entkommen, werde ich dich finden, NAMENLOSER.*~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY #68406 /* ~*Die Hand der Gerechtigkeit soll man nicht aufhalten.*~ [VHA010] */
  IF ~~ THEN REPLY #68407 /* ~ICH GLAUBE, WIR WERDEN UNS NIE WIEDERSEHEN, VHAILOR. ICH WERDE EINE ZEIT IN DEN HALLEN DER GERECHTIGKEIT LEBEN, UND DIESE ZEIT WIRD NICHT IN JAHREN GEMESSEN. LEB WOHL.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #4 ~  Global("Fortress_Vhailor","GLOBAL",4)
~ THEN BEGIN 169 // from:
  SAY #68420 /* ~*Die Hand der Gerechtigkeit soll man nicht aufhalten.*~ [VHA010] */
  IF ~~ THEN REPLY #68421 /* ~"Halte den Druck aufrecht, Vhailor... Gib ihm keine Chance, sich zu konzentrieren."~ */ EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY #106513 /* ~Vhailor wendet sich von Trias' Leiche ab, um dir ins Gesicht zu sehen. *Du bist BARMHERZIG und SCHWACH. STÄHLE dein HERZ, bevor sich diese Krankheit AUSBREITET.*~ [VHA013] */
  IF ~~ THEN REPLY #62707 /* ~"Reden wir ein anderes Mal darüber. Laß uns weitergehen."~ */ EXIT
END
