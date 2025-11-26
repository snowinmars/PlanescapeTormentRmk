// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIGNUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DIGNUS~

IF ~  Global("Ignus","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2846 /* ~Dieses knisternde, lodernde Wesen dreht sich langsam über einem Eisenrost im Boden der Bar. Es mag einst ein Mensch gewesen sein, doch seine verkohlte Haut hat ihn bis zur Unkenntlichkeit entstellt. Die Flammen umschlingen seinen Körper wie ein Kranz und verbrennen die letzten noch erhaltenen Fleischfetzen, die daraufhin in Blasen schmelzen und wie Wachs am Skelett des Wesens herunter rinnen.~ */
  IF ~~ THEN REPLY #16198 /* ~"Sei gegrüßt...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~~ THEN REPLY #16200 /* ~Schau dir die schwelende Leiche genau an.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16201 /* ~"Hmmm. Ich frage mich, ob diese Karaffe des Endlosen Wassers irgendwas tut... ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16210 /* ~Laß die Finger von dem Ding.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #2847 /* ~Das Ding antwortet nicht. Es windet sich langsam in den Flammen - es lebt, aber seine ganze *Wahrnehmung* scheint auf das Feuer konzentriert. Seine Haut ist eine Flamme, sein Herz ist eine Flamme, und irgendeine entfernte Windung deines Gehirns sagt dir, daß dieses Wesen *gefährlich* ist.~ */
  IF ~~ THEN REPLY #16212 /* ~Schau dir die Kreatur genau an.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16213 /* ~"Hmmm. Ich frage mich, ob diese Karaffe des Endlosen Wassers irgendwas tut... ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16214 /* ~Laß die Finger von dem Ding.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #16199 /* ~Die Hitze, die dieses... Wesen... umgibt, ist unglaublich. Zu deiner Überraschung ist der Eisenrost, über dem das Wesen schwebt, von der Hitze schon ganz verbogen. Zuerst dachtest du, die Hitze käme aus dem Eisenrost... doch jetzt bemerkst du, daß sie von dem Wesen selbst ausgeht. Du siehst, wie sich auf seinem Körper Asche bildet, die langsam zur Decke emporsteigt.~ */
  IF ~~ THEN REPLY #16215 /* ~"Sei gegrüßt...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16216 /* ~"Hmmm. Ich frage mich, ob diese Karaffe des Endlosen Wassers irgendwas tut... ?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16217 /* ~Laß die Finger von dem Ding.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #16202 /* ~Du neigst die Karaffe über den Rost und gießt Wasser aus. Ein kleines Rinnsal eisblauen Wassers fließt heraus und berührt die Flammen, die heftig zu zischen und zu dampfen beginnen... wie als Reaktion auf diese Herausforderung scheint sich die Karaffe nach vorne zu *strecken*, fällt auf den Rost und zerbricht!~ */
  IF ~~ THEN REPLY #16218 /* ~"Bei den Höllen... ?!"~ */ DO ~DestroyPartyItem("Decant2",TRUE)
AddexperienceParty(5000)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16203 /* ~Zischender Dampf und ein heftiges Knistern kommt aus dem Rost, legt sich wie eine Schicht um dich und zwingt dich, die Ohren zuzuhalten und wegzulaufen... Plötzlich hörst du gellende Schreie, die sich anhören, als würden hundert Häuser auf einmal verbrennen und die Menschen darin um ihr Leben schreien, doch ihre Schreie werden unterbrochen von dem Donnern der Flammen und dem Geräusch schmelzenden Fleisches...~ */
  IF ~~ THEN REPLY #16219 /* ~Halte deine Ohren zu, um das Geräusch nicht zu hören.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16204 /* ~Als du dir die Ohren zuhältst, spürst du etwas Klebriges an deinen Händen. Es fühlt sich an wie geschmolzener Käse oder Kerzenwachs... Es ist Blut aus deinen Ohren, die dem Geräusch nicht mehr standhalten! Als du deine Hände wieder wegnimmst, siehst du Fleischfetzen und Blut daran hängen...~ */
  IF ~~ THEN REPLY #16220 /* ~Versuche, aus der Bar herauszukommen.
~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #16205 /* ~Du willst aus der Bar rennen, nur um diesem Geräusch zu entkommen. Doch plötzlich wird alles still, bis auf ein Flackern und Knistern aus dem Rost. Du drehst dich um - auf dem Rost liegt die Karaffe des Endlosen Wassers, die nur noch aus Dampf und Scherben besteht. Darüber schwebt das Wesen, aus dessen Körper noch immer Flammen schlagen. Es starrt dich an. Seine Augen scheinen zwei Fackeln...~ */
  IF ~~ THEN REPLY #16221 /* ~"Ich *kenne* dich..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16206 /* ~Das Gesicht des Wesens bricht auf, und von seinem Kiefer pellt sich verbranntes Fleisch weg, damit es sprechen kann. "*Jaaaaa...*" Seine Stimme knistert, brennt und prasselt durch die Brust des Wesens, und bei jedem Wort fliegen Stückchen von Asche und Staub aus seinem Mund und driften in der Luft. Du kannst den Anblick kaum ertragen - der lodernde Glanz, der das Ding umgibt, ist schrecklich anzusehen.~ [IGN116] */
  IF ~~ THEN REPLY #16222 /* ~"Ignus..."~ */ DO ~SetGlobal("Ignus_Free","GLOBAL",1)
SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #16207 /* ~*"Ssssooo..."* Das Wesen schwebt auf dich zu. Die Luft flimmert vor Hitze. *"Ich habe ssso lange geschlafen... dassss Feuer knissssterte in meinen Träumen..."* Daraufhin lodern die Flammen um Ignus' Hals, und eine Feuerzunge schießt hinter seinen schwarzen Zähnen hervor. *"Ich bin ganzzz dein... bissss der Tod unssss beide holt... "*~ [IGN004C] */
  IF ~~ THEN REPLY #48406 /* ~"Wir werden sehen..."~ */ EXIT
END

IF ~  Global("Ignus","GLOBAL",1)
!InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #16208 /* ~Als du näherkommst, dreht sich das Wesen zu dir um. Die Luft flimmert vor Hitze. *"Ich habe ssso lange geschlafen... dassss Feuer knissssterte in meinen Träumen... "*~ [IGN004B] */
  IF ~~ THEN REPLY #16223 /* ~"Sei gegrüßt, Ignus. Willst du mit mir reisen?"~ */ DO ~SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #52781 /* ~"Halte deine Träume fest, Ignus... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16209 /* ~Daraufhin lodern die Flammen um Ignus' Hals, und eine Feuerzunge schießt hinter seinen schwarzen Zähnen hervor. *"Ich bin ganzzz dein... bissss der Tod unssss beide holt... "*~ [IGN248] */
  IF ~~ THEN REPLY #52782 /* ~"Wir werden sehen..."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #16624 /* ~Ignus dreht sich langsam um und begegnet deinem Blick. "*Jaaaa?*"~ */
  IF ~  !Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16922 /* ~"Vergiß es, war 'ne blöde Idee. Ich hätte da ein paar Fragen, Der um die Bäume trauert..."~ */ EXTERN ~DMFTREE~ 28
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16923 /* ~"Siehst du diese Bäume, Ignus? Meinst du, du könntest in deinem Herzen einen Platz finden, um dich um sie zu *sorgen*?"~ */ GOTO 12
  IF ~~ THEN REPLY #16924 /* ~"Nichts. Ich weiß nicht, was ich gerade gedacht habe. Leb wohl, Der um die Bäume trauert."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #16625 /* ~Ignus dreht sich zu den Bäumen um, und die Luft um ihn herum wird innerhalb von Sekunden ungemütlich heiß. "*Jaaaaa... brrrennnnnennn...*"~ */
  IF ~~ THEN EXTERN ~DMFTREE~ 52
END

IF ~~ THEN BEGIN 13 // from:
  SAY #16626 /* ~Ignus lacht schrecklich. Züngelnde Flammen schlagen aus seinem Hals. "*Du ssstehssst zwissschen mir und dem Ding, dasss brennnt? Duuuu wirssst auch brennnnennn...*"~ */
  IF ~~ THEN REPLY #16925 /* ~"Ignus, warte..."~ */ DO ~Attack("MFTree")
~ EXIT
  IF ~~ THEN REPLY #16926 /* ~Laß ihn tun, was er will.~ */ DO ~Attack("MFTree")
IncrementGlobalOnceEx("GLOBALEvil_Mourns_3","GLOBALGood",-2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #33991 /* ~Als du dich ihm näherst, dreht sich Ignus um. Die Luft steht in der Hitze, die ihn umgibt. *"Iiiiich bin hier geblieben... mmmit meinen Gedanken inmitten der Fffflammen..."*~ [IGN247] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #33992 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61855 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61856 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61857 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61858 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61859 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61860 /* ~"Oh... Ich verstehe. Dann leb wohl."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 84.0 85.0
  SAY #33994 /* ~*"Ich sssstehe dir zu Diensten... bissss der Tod unsssss beide holt..."*~ [IGN248] */
  IF ~~ THEN REPLY #33995 /* ~"Na dann, laß uns gehen."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~  InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #33996 /* ~Flammen züngeln um Ignus Hals, und eine Zunge aus Flammen stößt hinter seinen geschwärzten Zähnen hervor. *"Jaaa...?"*~ [IGN249] */
  IF ~~ THEN REPLY #33997 /* ~"Ignus, was ist denn mit dir passiert, daß du so geworden bist?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57439 /* ~"Ignus... stimmt es, daß du die Gasse der Gefährlichen Ecken abgebrannt hast?"~ */ GOTO 36
  IF ~~ THEN REPLY #57440 /* ~"Was hast du in der Bar 'Zur schwelenden Leiche' gemacht?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57441 /* ~"Ignus, ich habe im Stock mit einem Geschichtenerzähler gesprochen, und er hat erzählt, daß dir jemand diese Dinge *beigebracht* hat... Wer?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(10000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57442 /* ~"Ignus, bist du SICHER, daß ich dein Lehrer war?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57443 /* ~"Ignus, deine 'Kunst'... kannst du mir etwas von deinem Wissen beibringen?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57444 /* ~"Ignus, deine 'Kunst'... Ich bin bereit zu leiden, um mehr zu lernen."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57445 /* ~"Ignus, deine 'Kunst'... Ich bin bereit zu leiden, um mehr zu lernen."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57446 /* ~"Ignus, wegen deiner Lehrzeit und der Qualen, die ich dir zugefügt habe... Es tut mir leid."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57447 /* ~"Nichts, Ignus. Ich wollte nur mal sehen, ob du noch da bist, sozusagen."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52561 /* ~"*Brennnnen...*"~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52562 /* ~"Und welche Foltern sehen deine Augen noch, Ravel?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52563 /* ~"Und welche Foltern sehen deine Augen noch, Ravel?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52564 /* ~"Und welche Foltern sehen deine Augen noch, Ravel?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52565 /* ~"Und welche Foltern sehen deine Augen noch, Ravel?"~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 18 // from:
  SAY #52566 /* ~"*Brennnnen...*"~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52567 /* ~"Ravel, du hast dich klar genug ausgedrückt. Jetzt reicht es mit d..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52568 /* ~"Ravel, du hast dich klar genug ausgedrückt. Jetzt reicht es mit d..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52569 /* ~"Ravel, du hast dich klar genug ausgedrückt. Jetzt reicht es mit d..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52570 /* ~"Ravel, du hast dich klar genug ausgedrückt. Jetzt reicht es mit d..."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 19 // from: 46.1
  SAY #54145 /* ~*" Ich gehorche dir... bissss dasss der Tod unsss BEIDE zzu sich holt......"*~ */
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54146 /* ~"Ich... verstehe. Grace?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54147 /* ~"Ich... verstehe. Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54148 /* ~"Ich... verstehe. Dak'kon?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("grace")
!InParty("annah")
NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54149 /* ~"Ich... verstehe. Dak'kon?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54150 /* ~"Ich... verstehe. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54151 /* ~"Ich... verstehe. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54152 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54153 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54154 /* ~"Also gut... Dann wollen wir mal sehen, was auf der anderen Seite des Portals liegt."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 31.2 33.2 34.3 35.1 39.1 40.2 45.1 46.2 47.3 48.3 49.2 51.1 63.2 64.2 65.4 68.2 72.2 73.3 77.2 81.2 82.2 83.2
  SAY #57448 /* ~*"HSSSS'SSSSS!"* Dein Herz setzt aus, als Ignus ein paar Meter in die Luft springt, seinen Kiefer aufreißt und aus ihm Feuer spuckt, das wie ein Schlangennest aussieht. *"SSCHLUSSSSSSS MIT DEM GEREDE UND DEN FRAGEN...!"* ~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57449 /* ~"Aber ich möchte von Flammen sprechen, Ignus, und von Feuern..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57450 /* ~"Aber ich möchte von Flammen sprechen, Ignus, und von Feuern..."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57451 /* ~"Aber ich möchte von Flammen sprechen, Ignus, und von Feuern..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57452 /* ~"Aber ich möchte von Flammen sprechen, Ignus, und von Feuern..."~ */ GOTO 27
  IF ~~ THEN REPLY #57453 /* ~"Du WIRST meine Fragen beantworten, Ignus. Ich habe dich freigelassen, und ich kann dich in deine Hölle zurückschicken."~ */ GOTO 21
  IF ~~ THEN REPLY #57454 /* ~"Dann vergiß es..."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.4
  SAY #57580 /* ~*"Du glaubsssst, DU kannst Ignussss in Ketten legen...?"* Die Flammen umwehen Ignus wie ein Mantel, dann fächern sie sich auf, als wollten sie dich liebkosen. *"Dich TÖTEN, dich in *Aschsche* verwandeln kann Ignusss... Im Moment folgt Ignusssss dir... aber Drohungen... Drohungen VERÄRGERN Ignusssss..."* ~ */
  IF ~~ THEN REPLY #57581 /* ~"In Wahrheit, Ignus, könntest du mich niemals aufhalten. Du könntest mich verbrennen, aber ich würde nicht aufgeben, bis du brennen würdest. Also *Schluß* mit den Drohungen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 22
  IF ~~ THEN REPLY #57582 /* ~"Das denkst *du*... Wir unterhalten uns später weiter, Ignus."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #57583 /* ~Ein Knistern ertönt in der Luft, und Ignus neigt leicht den Kopf, als würde er dich betrachten, dann zischt er: *"FLAMMEN werden dir die Unsssterblichkeit ausssbrennen... Du bisssst vor meinen Flammen nicht ssssicher..."*~ */
  IF ~~ THEN REPLY #57584 /* ~"Vielleicht verstehst du nicht, was Unsterblichkeit BEDEUTET, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
~ GOTO 23
  IF ~~ THEN REPLY #57585 /* ~"Woher wußtest du, daß ich unsterblich bin?"~ */ GOTO 23
  IF ~~ THEN REPLY #57586 /* ~"Das denkst *du*... Wir unterhalten uns später weiter, Ignus."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #57587 /* ~*"Du bisssst *NICHT* unsssterblich... Ignusssss kann dich TÖTEN... deine Aschsche in die Winde verssstreuen..."* Du siehst zu, wie er seine Arme ausbreitet, und eine HITZE entströmt ihm, die so gewaltig ist, daß du dir die Augen zuhalten mußt - es ertönt ein mächtiges GROLLEN, als Ignus die Luft um dich herum aufsaugt. ~ */
  IF ~~ THEN REPLY #57588 /* ~"Ignus! Hör au- "~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #57589 /* ~Als du Ignus zuzurufen versuchst, daß er aufhören soll, dreht sich die Hitzewelle plötzlich um und eine sengende *Hitze* hüllt dich ein. Du spürst, wie dein Fleisch zu schwelen beginnt, dann Rauch, dann beginnen die SCHMERZEN... du beißt die Zähne zusammen, und durch die Schmerzen hindurch vernimmst du Ignus' gackerndes, gackerndes Lachen... ~ */
  IF ~~ THEN REPLY #57590 /* ~"Ignus!"~ */ DO ~SetGlobal("Ignus_Kill_Nameless","GLOBAL",1)
~ JOURNAL #57591 /* ~Ignus ist beinahe völlig übergeschnappt, als ich mit ihm geredet habe. Ich hab seinen Wutanfall überlebt, aber diese elementare Macht, über die er verfügt... Ich denke, er hätte die Macht, mich zu töten... für immer.~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #57603 /* ~Als du seinen Namen noch einmal rufst, erstirbt die Hitze - als du die Hände von den Augen nimmst, siehst du, daß deine Haut ganz schwarz ist, wo Ignus sie verbrannt hat... und Ignus betrachtet dich hungrig. Du weißt mit Sicherheit, daß was auch immer Ignus *ist*, was für Kräfte er auch immer besitzt, er kann dich zerstören - wenn seine Flammen dich umbringen würden, bliebe nichts von dir übrig.~ */
  IF ~~ THEN REPLY #57605 /* ~"Ich hab GENUG von dir, Ignus... Vielleicht kannst du mich töten, vielleicht aber auch nicht - wir können das gern mal testen."~ */ GOTO 29
  IF ~~ THEN REPLY #57607 /* ~"Nun gut, Ignus. Wir unterhalten uns später, du und ich..."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 20.2
  SAY #57608 /* ~Dein Worte sind wie Öl... du siehst, wie sie Ignus' Augen füllen und die Flammen darin anfachen. *"Flammen?"* Ignus beugt sich leicht vor, die Hitze um ihn wird stärker, als hättest du sein Interesse geweckt. *"Sssssprich... Ignusss wird zuhören..."*~ */
  IF ~~ THEN REPLY #57609 /* ~"Ignus, was ist denn mit dir passiert, daß du so geworden bist?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57610 /* ~"Ignus... stimmt es, daß du die Gasse der Gefährlichen Ecken abgebrannt hast?"~ */ GOTO 36
  IF ~~ THEN REPLY #57612 /* ~"Was hast du in der Bar 'Zur schwelenden Leiche' gemacht?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57613 /* ~"Ignus, ich habe im Stock mit einem Geschichtenerzähler gesprochen, und er hat erzählt, daß dir jemand diese Dinge *beigebracht* hat... Wer?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57616 /* ~"Ignus, bist du SICHER, daß ich dein Lehrer war?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57619 /* ~"Ignus, deine 'Kunst'... kannst du mir etwas von deinem Wissen beibringen?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57624 /* ~"Ignus, deine 'Kunst'... Ich bin bereit zu leiden, um mehr zu lernen."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57628 /* ~"Ignus, deine 'Kunst'... Ich bin bereit zu leiden, um mehr zu lernen."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57630 /* ~"Ignus, wegen deiner Lehrzeit und der Qualen, die ich dir zugefügt habe... Es tut mir leid."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57633 /* ~"Wir reden später über Flammen, Ignus, nicht jetzt."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 20.1 20.3 28.0 31.1 33.1 34.2 35.0 39.0 40.1 45.0 47.2 48.2 49.1 51.0 63.1 64.1 65.3 68.1 72.1 73.2 77.1 81.1 82.1 83.1
  SAY #57636 /* ~*"Flammen...?"* Ignus' Stimme gackert, als sei er interessiert. *"Sssss'prich... Ignusss wird zuhören..."*~ */
  IF ~~ THEN REPLY #57637 /* ~"Ignus, was ist denn mit dir passiert, daß du so geworden bist?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57639 /* ~"Ignus... stimmt es, daß du die Gasse der Gefährlichen Ecken abgebrannt hast?"~ */ GOTO 36
  IF ~~ THEN REPLY #57641 /* ~"Was hast du in der Bar 'Zur schwelenden Leiche' gemacht?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57643 /* ~"Ignus, ich habe im Stock mit einem Geschichtenerzähler gesprochen, und er hat erzählt, daß dir jemand diese Dinge *beigebracht* hat... Wer?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57645 /* ~"Ignus, bist du SICHER, daß ich dein Lehrer war?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57648 /* ~"Ignus, deine 'Kunst'... kannst du mir etwas von deinem Wissen beibringen?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57650 /* ~"Ignus, deine 'Kunst'... Ich bin bereit zu leiden, um mehr zu lernen."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57654 /* ~"Ignus, deine 'Kunst'... Ich bin bereit zu leiden, um mehr zu lernen."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57656 /* ~"Ignus, wegen deiner Lehrzeit und der Qualen, die ich dir zugefügt habe... Es tut mir leid."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57658 /* ~"Ich habe keine Fragen mehr... mögen deine Träume voller Flammen sein, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 26.9 27.9
  SAY #57659 /* ~*"NEIN! SSSS'PRICH!"* Ignus brüllt, und die Luft um dich herum *verdreht* sich wieder vor Hitze. *"SPRICH VON FLAMMEN! SSS'PRICH VON DEM BRENNEN!"* ~ */
  IF ~~ THEN REPLY #57660 /* ~"Äh... nun gut. Ich hätte da noch ein paar Fragen... über Flammen..."~ */ GOTO 27
  IF ~~ THEN REPLY #57661 /* ~"Nein, Ignus... wir sprechen ein andermal darüber. Nicht jetzt!"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57662 /* ~"Ignus... hast du je ein brennendes Gebäude *gespürt*? Die Flammen umzüngeln die Balken, schwärzen das Holz darunter, während die Hitze die Farbe von der Wand schält, das Strohdach knistert, es riecht nach brennendem Stroh..."~ */ DO ~SetGlobal("Ignus_Calm_Tale","GLOBAL",1)
AddexperienceParty(1500)
SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57663 /* ~"Ignus... hast du je ein brennendes Gebäude *gespürt*? Die Flammen umzüngeln die Balken, schwärzen das Holz darunter, während die Hitze die Farbe von der Wand schält, das Strohdach knistert, es riecht nach brennendem Stroh..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.0 28.1 82.0
  SAY #57664 /* ~Ignus brüllt, ein schreckliches, *gellendes* Brüllen, und plötzlich umgibt ihn ein feuriges Strahlen - und seine Augen - seine Augen wirken wie Fenster zu einem anderen ORT. Er hebt die Hände, Flammen tanzen an ihnen entlang und wachsen, bis sie zwei riesige, lodernde Peitschen bilden. *"Du sollsssst BRENNEN!"*~ */
  IF ~~ THEN REPLY #57665 /* ~"Ignus, du hast es so *gewollt*..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3
  SAY #57666 /* ~Während du sprichst, ebbt das Knistern der Flammen um Ignus herum ab, als würden dir selbst die Flammen zuhören. Als du fertig bist, zischt Ignus sanft und die Flammen in seinen Augen haben sich beruhigt, als würde er in einer Erinnerung schwelgen. *"Jaaaaa...."*~ */
  IF ~~ THEN REPLY #57667 /* ~"Dann unterhalten wir uns später, Ignus... bleib in der Zwischenzeit ruhig."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.0 26.0 27.0
  SAY #57668 /* ~*"Ssssooo..."* Eine kleine Fleischtasche auf Ignus' Wange *bricht auf*, und der Inhalt läuft ihm als dampfendes Rinnsal den Kiefer hinunter. *"sssoooo... war Ignussss schschon immer..."*~ */
  IF ~~ THEN REPLY #57669 /* ~"Aber... Du siehst menschlich aus. Oder zumindest siehst du so aus, als wärst du einmal menschlich gewesen."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 32
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57670 /* ~"Ich möchte mehr über Feuer und Flammen sprechen..."~ */ GOTO 27
  IF ~~ THEN REPLY #57671 /* ~"Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57672 /* ~"Ich verstehe. Du und ich sprechen weiter darüber... später."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #57673 /* ~Ignus dreht sich und beugt seinen Kopf nach vorne, während sein Körper sich langsam über dem Boden dreht... die Wirkung ist wie ein feuriger Wirbelwind, heiße Winde entströmen seinem Körper und verzerren die Luft um ihn herum. *"Immer noch Ignusss... immer Ignusss..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57674 /* ~"Ich will mehr über Feu-"~ */ GOTO 33
  IF ~~ THEN REPLY #57675 /* ~"Dann vergiß es. Ich hatte noch eine andere Fra-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
  IF ~~ THEN REPLY #57676 /* ~"Ich verstehe. Na gut, das reicht f-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1 32.2
  SAY #57677 /* ~Als du den Mund öffnest, um zu sprechen, stürzt sich Ignus plötzlich auf dich - du bist gezwungen, deine Worte hinunterzuschlucken, als die Hitze seines Körpers dich umhüllt. *"Ignussss könntessst DU sein... Funken in Körpern, immer verssssuchen., aufzulodern..."*~ */
  IF ~~ THEN REPLY #57678 /* ~"'Funken in Körpern?' Was meinst du?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL1)
~ GOTO 34
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57679 /* ~"Ich möchte mehr über Feuer und Flammen sprechen..."~ */ GOTO 27
  IF ~~ THEN REPLY #57680 /* ~"Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57681 /* ~"Ich verstehe. Du und ich sprechen weiter darüber... später."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #57682 /* ~*"ALLE Dinge brennen... innnerlich..."* Ignus wirft seinen Kopf zurück und breitet die Arme aus. Spiralen aus Flammen und Hitze wandern seine Arme hinauf. *"Müssssen nur mit Flammen ENTZÜNDET werden, um Ignusssss zu werden... sssso könntessst DU... Ignussss gewesssen ssssein..."*~ */
  IF ~~ THEN REPLY #57683 /* ~"Wenn du versuchst, die Flammen in den Menschen anzufachen, dann erstickst du sie meistens."~ */ GOTO 35
  IF ~~ THEN REPLY #57684 /* ~"Dann... meinst du also. jeder hat das Potential, zu werden wie du, mit dem richtigen... Funken?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 35
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57685 /* ~"Ich möchte mehr über Feuer und Flammen sprechen..."~ */ GOTO 27
  IF ~~ THEN REPLY #57686 /* ~"Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57688 /* ~"Ich verstehe. Du und ich sprechen weiter darüber... später."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #57689 /* ~*"Jaaa..."* Ignus 'grinst' und neigt den Kopf zur Seite. Asche fällt von seinem Schädel und wird in den Flammenkranz aufgesogen, der ihn umgibt. ~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57690 /* ~"Ich möchte mehr über Feuer und Flammen sprechen..."~ */ GOTO 27
  IF ~~ THEN REPLY #57691 /* ~"Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57693 /* ~"Ich verstehe. Du und ich sprechen weiter darüber... später."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.1 26.1 27.1
  SAY #57694 /* ~Ignus' Gesicht teilt sich, das Fleisch um seine Mundwinkel springt auf und zerschmilzt dann zu verkohlten, leuchtend-roten und schwarzen Stücken. *"Jaaaaa... einen Traum wird Ignusss erzzzzählen..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57696 /* ~"Vielleicht später. Im Moment möchte ich lieber über Flamm-~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57697 /* ~"Äh... im Moment nicht. Ich hätte da noch eine Frag-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57698 /* ~"Ich habe genug gehört. Wir reden sp-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1 36.2
  SAY #57700 /* ~Eine Flut von Flammen entströmt Ignus, und du trittst einen Schritt zurück, die Luft *krümmt* sich in der Hitze. *"Sssstrassssen in der Nacht... ssssso kalt... Ignussss VERBRENNT die Häussser, die Bewohner... Alle RENNEN weg vor Ignussss, die Flammen, und die Häussser waren wie Flammen... Schschreie, als die Bewohner zu Fackeln wurden..."*~ */
  IF ~~ THEN REPLY #57701 /* ~"Ich habe genug gehört, Ign-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
  IF ~~ THEN REPLY #57703 /* ~Höre ruhig zu und warte, bis er mit seinem Geschimpfe aufhört.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #57704 /* ~*"Häuser alsss SSSKELETTE... Ecken, Leichen alssss Ssssskelette... rrrot und orrrange und schwarrrz, die Flammen breiten sich aussss, ssstreicheln... sssolche LICHTER..."*~ */
  IF ~~ THEN REPLY #57706 /* ~"Ignus, ich habe GENUG gehört -"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
  IF ~~ THEN REPLY #57707 /* ~Höre ruhig zu und warte, bis er mit seinem Geschimpfe aufhört.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #57709 /* ~*"Sss..."* Ignus' Zorn erstirbt, der ihn umgebende Flammenkranz ebbt etwas ab. Er scheint in Gedanken zu sein - vielleicht schwelgt er in Erinnerungen. *"Ssss... und Ignussss hatte Spasssss..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57710 /* ~"Ich möchte mehr über Feuer und Flammen sprechen..."~ */ GOTO 27
  IF ~~ THEN REPLY #57712 /* ~"Ich habe noch andere Fragen an dich, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57713 /* ~"Verstehe. Wir sprechen später darüber, du und ich..."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 16.2 26.2 27.2
  SAY #57714 /* ~Zunächst glaubst du nicht, daß Ignus dich gehört hat. Doch dann verdunkeln sich plötzlich die Feuer in seinen Augen, und er gibt ein leises Zischen von sich. Schlacke und Asche tanzen um seinen Kiefer herum. *"Ignusss... wusssste... einssst NICHTSSSS von Flammen..."*~ */
  IF ~~ THEN REPLY #57717 /* ~"Ja?"~ */ GOTO 41
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57718 /* ~"Ich möchte mehr über Feuer und Flammen sprechen..."~ */ GOTO 27
  IF ~~ THEN REPLY #57719 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57723 /* ~"Macht nichts, Ignus. Wir unterhalten uns ein andermal wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #57725 /* ~*"Einssst... wussssste... Ignussss... NICHTS von Flammen... hat kleine Feuer entfacht, winzige Flammen, winziges Flackern... kleine Flämmchen..."* Ignus zischt wieder, Asche und feurige Stäubchen schweben um die Ruine seines Kiefers. *"Die Feuer wuchssssen... Ignussss legte Feuer in ihren Strasssssen... und entfachte die Feuer der Wut in ihren Herzen..."* ~ */
  IF ~~ THEN REPLY #57726 /* ~"Ja?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57727 /* ~"Ich möchte mehr über Feuer und Flammen sprechen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57729 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57730 /* ~"Macht nichts, Ignus. Wir unterhalten uns ein andermal wieder."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 41.2 41.3
  SAY #57733 /* ~Du sprichst, aber Ignus scheint dich nicht zu hören... er scheint woanders zu sein, als würde durch seine Worte eine Erinnerung wach werden... Gegen deinen Willen beginnst du, ihm zuzuhören.~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #57734 /* ~*"Sie haben verssssucht, Ignus zu bestrafen, die kleinen Fliegen aus dem Stock. Ssssie wollten Ignusss BRENNEN sehen, nachdem Ignusss ihre Strasssen angezündet hatte... winzige Zauberlinge, Heckenzauberer, Runenstreuer... Winzige Zauberfunken kamen, um Ignusss zu bestrafen, weil er ihre Liebssssten verletzt hatte... Sie verurteilten Ignusssss dazu zu VERBRENNEN, machten aus Ignussss eine FACKEL, eine spuckende FLAMME, die brannte und brannte... Dassss wäre GERECHTIGKEIT, sssagten ssssie..."*~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #57736 /* ~*"Gerechtigkeit..."* Du siehst fassungslos zu, wie Ignus sich langsam wieder zu drehen beginnt, wie damals auf dem Rost in der 'Schwelenden Leiche'. *"...aber es war keine Ssstrafe... da sind ssso viele Flammen und Schmerzen, dassss ich KEINE Schmerzen sssspüre... Da ist LICHT und HITZE, und dasssss Fleisch rinnt alsssss TALG über meine Knochen... und zum erssssten Mal... ist Ignusss ZUFRIEDEN..."~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #57738 /* ~Ignus hört auf zu rotieren, und sein Blick fällt auf dich. Dabei flackern die Feuer in seinen Augen wieder auf, und ein verkohltes Grinsen spaltet sein Gesicht, das Fleisch knistert und blubbert, als es schmilzt und über sein Gesicht läuft. Ignus trägt das Gesicht der Hölle, der Flammen, und sein nächster Satz klingt wie ein Todesurteil, nicht nur für dich, sondern für jeden, überall. *"Wenn die Ebenen brennen und allessss Leben zu Fackeln wird, dann wird Ignusss endlich.... Frieden finden..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57739 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57740 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57741 /* ~Überlaß Ignus seinen Gedanken an Flammen...~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 16.3 26.3 27.3
  SAY #57743 /* ~*"Du weissst von Erkenntnissssen und von Lehren..."* Flammen zucken wie kleine Vulkane aus Ignus' Mund, auf gräßliche Weise sieht es aus, als würde er lachen. *"Du hassssst IMMER Ignusss gelehrt... Ignusss' MEISSSSTER, das *warssst* du."*~ */
  IF ~~ THEN REPLY #57744 /* ~"Ich? Bist du *sicher*...?"~ */ JOURNAL #57592 /* ~Ignus behauptet, ich sei sein Herr, derjenige, der ihn in der 'Kunst' unterwiesen habe. Er sagt, nur aus diesem Grund gehorcht er mir.~ */ GOTO 47
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57745 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 19
  IF ~~ THEN REPLY #57747 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57748 /* ~"Vergiß es, Ignus... Wir reden später darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 16.4 26.4 27.4 46.0
  SAY #57751 /* ~Ignus' Stimme wird *leiser*, und das Knistern der Flammen erstirbt. *"Jaaaaa... dasssss isssst der einzige Grund... warum Ignussss dir... GEHORCHT..."* Flammen umzingeln ihn in einer knisternden Spirale. *"Bis der TOD uns beide holt... Deine Worte an MICH... an deinen Schüler IGNUSSSS... Ignusss hat esss NICHT vergesssssen... Meisssster..."*~ */
  IF ~~ THEN REPLY #57753 /* ~"Ignus... Es muß eine Weile her sein, daß du diese Kunst gelernt hast... Bist du ganz sicher, daß ich es war?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 48
  IF ~~ THEN REPLY #57754 /* ~"Ignus, wenn ich dein 'Meister' war, kannst du dich dann irgendwie an mich erinnern?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57755 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57757 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57759 /* ~"Vergiß es, Ignus... Wir unterhalten uns später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #57760 /* ~*"Jaaaaa...."* Ignus gackert. *"Jaaaaa... das Gessssicht hat sich verändert... aber du hast Ignussss Vieles gelehrt..."*~ */
  IF ~~ THEN REPLY #57761 /* ~"Wenn mein Gesicht sich verändert hat, woher weißt du es dann?"~ */ GOTO 49
  IF ~~ THEN REPLY #57763 /* ~"Ignus... Das hier ist wichtig. Kannst du dich irgendwie an mich erinnern?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57764 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57765 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57766 /* ~"Vergiß es, Ignus... Wir sprechen später noch mal darüber."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #57768 /* ~*"In allen Dingen... winzige Flammen... der FUNKE, die Flammen, EGAL, völlig egal,  wie die Haut ausssssieht. Haut kann bluten... Haut kann brennen... aber die INNERE Flamme bleibt..."* ~ */
  IF ~~ THEN REPLY #57769 /* ~"Ignus... Das hier ist wichtig. Kannst du dich irgendwie an mich erinnern?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57771 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57773 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57775 /* ~"Vergiß es, Ignus... Wir unterhalten uns später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.1 48.1 49.0
  SAY #57776 /* ~Ignus zischt... und für einen Augenblick flackern seine *Gesichtszüge*. Zuerst denkst du, es sind die Flammen, aber das ist es nicht. Es ist das Aufflackern der *Erinnerung*....~ */
  IF ~~ THEN REPLY #57777 /* ~Laß der Erinnerung freien Lauf.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 52
  IF ~~ THEN REPLY #57778 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 61.1 62.0 62.1 62.2
  SAY #57779 /* ~Deine Sicht klärt sich, die Erinnerung löst sich auf wie Rauch. Ignus schwebt über dir, den Kopf zur Seite geneigt, und ein wahnsinniges, geschwärztes Grinsen zieht sich über sein Gesicht... *"Meisssster... Ignusssss hat deine Lehren NICHT vergesssssen..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57780 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57781 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57782 /* ~"Vergiß es, Ignus... Wir unterhalten uns später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.0
  SAY #57783 /* ~Das Knistern von Ignus' Flammen läßt nach, wird immer schwächer, während die verkohlten Knochen von Ignus' Körper sich zusammenfalten und sich in sich selbst drehen, bis die Glieder regungslos daliegen, zu einem Stoß Holz in einem riesigen, eisernen Kamin geworden sind... Du starrst in ein Feuer, das hell in einem Gewölbe brennt. Das Feuer knistert und spuckt Glut auf den Steinboden, Asche steigt von dem Kamin auf. Ganz schwach, aus der Dunkelheit hinter dir, hörst du etwas atmen.~ */
  IF ~~ THEN REPLY #57784 /* ~Erinnerung: "Ich *höre* dich... Tritt in das Licht."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #57785 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #57786 /* ~Du hörst das Schlurfen von Sandalen, und ein zarter junger Mann tritt an den Rand des Kaminfeuers. In seinen großen, schwarzen Augen spiegeln sich die Flammen. Er ist nervös - du kannst hören, wie seine Muskeln zittern, seine Stimme zittert, gerade genug, um deine Verärgerung noch zu steigern. "Vergebt mir die Störung, Meister. Ich..."~ */
  IF ~~ THEN REPLY #57787 /* ~Erinnerung: "Du bist *bereits* eingedrungen, Bittsteller. Das hast du mit Absicht getan. Ich werde dich jetzt anhören, und dann überläßt du mich wieder meinen Gedanken."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #57788 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #57789 /* ~Der Junge holt tief Luft und sieht in das Feuer. "Meister, ich... ich habe letzte Nacht wieder von Flammen geträumt... sie fühlten sich echt an, und Ihr habt gesagt, wir sollten zu Euch kommen, wenn..."~ */
  IF ~~ THEN REPLY #57790 /* ~Erinnerung: "Es war ein *Traum*, sonst nichts. Geh jetzt." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 55
  IF ~~ THEN REPLY #57791 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #57792 /* ~Der Junge rührt sich nicht, seine Augenbrauen ziehen sich zusammen, und langsam zeigt er seine Hände. Das Fleisch um seine Finger... schwarz, verbrannt. ~ */
  IF ~~ THEN REPLY #57793 /* ~Erinnerung: "Wie hast du dir die Hände verbrannt, Bittsteller?" ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 56
  IF ~~ THEN REPLY #57794 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #57795 /* ~"Ich bin aufgewacht und meine Hände fühlten sich wie Asche an." Der Junge sieht dir in die Augen. Er zittert immer noch leicht, aber in seiner Stimme klingt ein Eifer, der dich verärgert. "Ich habe geträumt, ich würde über der Erde schweben, und der Boden und der Himmel waren wie Feuer. Die Welt war so hell, daß es... weh tat, sie anzusehen, Meister. Und als ich aufgewacht bin, da waren meine Hände... verbrannt, als hätte ich eine Flamme in den Händen gehalten."~ */
  IF ~~ THEN REPLY #57796 /* ~Erinnerung: "Du lügst, Bittsteller. Du bist mit einer Geschichte zu mir gekommen, und jetzt läufst du Gefahr, mich zu *verärgern*." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 57
  IF ~~ THEN REPLY #57797 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #57798 /* ~"Nein, Meister..." Auf dem Gesicht des Jungen glänzt der Angstschweiß. "Nein, bei meinem Leben, das tue ich nicht!"~ */
  IF ~~ THEN REPLY #57799 /* ~Erinnerung: "Du hast dich mit einer Kerze verbrannt, Bittsteller. Oder deine Hand in einen der Scheiterhaufen im Gewölbe der Ströme gehalten. Und jetzt kommst du an und sagst, ein Traum hätte dich verbrannt. Ich habe deine Lügen satt."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #57800 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #57801 /* ~Der Junge verstummt, und zu deiner Überraschung verzieht sich sein Gesicht vor Ärger. "Nein. Ich lüge nicht. Es war der *Traum*, der mich verbrannt hat, Meister, wie Ihr es gesagt habt, wenn wir die Kraft spüren würden. Das waren *Eure* Worte, und ich kam, um sie Euch zu *wiederholen* und zu sagen, daß sie *wahr* sind." Er hält seine Hände hoch. "Seht, Meister..."~ */
  IF ~~ THEN REPLY #57802 /* ~Erinnerung: Ergreife seine Hände.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 59
  IF ~~ THEN REPLY #57803 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #57804 /* ~Bevor der Junge reagieren kann, schnellt deine Hand - die vergleichsweise riesig ist - hervor und zerdrückt in ihrer Faust seine verbrannte Hand. Der Junge schreit auf, das Echo hallt in dem Gewölbe wider. Mit einem Knurren schleuderst du ihn vor dem Kamin auf den Boden, und es ertönt ein lautes *Krachen*, als seine Knie auf den Steinplatten aufschlagen.~ */
  IF ~~ THEN REPLY #57805 /* ~Erinnerung: "Sieh in diese Flammen, Bittsteller! Hebe deinen Kopf und sieh!" ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 60
  IF ~~ THEN REPLY #57806 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #57807 /* ~Der Junge zittert vor Schmerzen in seinen Knien... Du siehst, wie ihm Tränen in die Augen steigen, als er seinen Kopf hebt und in den Kamin sieht. Die Flammen umgeben sein Gesicht mit einem roten, kargen Schein...~ */
  IF ~~ THEN REPLY #57808 /* ~Erinnerung: "Ist es *das*, was du erlangen willst, Bittsteller? Ist es das Formen von Flammen, das dein Herz berührt? Wisse, daß Flammen dich verbrennen können, und wenn du ihre Macht erlernen willst, dann mußt du ihre Berührung erdulden."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 61
  IF ~~ THEN REPLY #57809 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #57810 /* ~Der Junge starrt stumm in die Flammen. Er scheint wie versteinert. Seine Tränen sind in der Hitze getrocknet, und er zittert nicht mehr. Er ist völlig auf die Flammen konzentriert. Er HÖRT dir nicht zu, und du spürst, wie die Wut in dir hochsteigt.~ */
  IF ~~ THEN REPLY #57811 /* ~Erinnerung: "Wenn es das ist, was dich so sehr verzehrt, daß du meine Meditation *störst*, dann werde ich dich das Formen von Flammen lehren, Bittsteller." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #57812 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #57814 /* ~Deine Hand schnellt vor und umgreift das Handgelenk des Jungen. Er heult auf, als du ihn näher an den Kamin zerrst und seine Hand in die Kohlen steckst. Du hörst es knistern, dann zischt das verbrannte Fleisch, und seine *Schreie* sind fürchterlich, doch - ~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #57815 /* ~Erinnerung: "Um zu lernen, mußt du *leiden*, Bittsteller. Du mußt es zulassen, daß die Macht, die du verwenden willst, dich selbst verbrennen wird. Kenne diese Qual, und du wirst wissen, wie du sie gegen deine Feinde einsetzt."~ */ DO ~SetGlobal("Memory_Ignus_Taught","GLOBAL",1)
GiveExperience(Protagonist,10000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ JOURNAL #57818 /* ~Als ich Ignus über seinen 'Lehrer' zur Rede gestellt habe, konnte ich mich plötzlich ganz deutlich an etwas erinnern: Anscheinend war zu einem bestimmten Zeitpunkt in der Vergangenheit... *ich* derjenige, der Ignus in der 'Kunst' unterwies, obwohl ich glaube, daß Ignus daraus die falschen Lehren gezogen hat.~ */ GOTO 51
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57816 /* ~Erinnerung: "Um zu lernen, mußt du *leiden*, Bittsteller. Du mußt es zulassen, daß die Macht, die du verwenden willst, dich selbst verbrennen wird. Kenne diese Qual, und du wirst wissen, wie du sie gegen deine Feinde einsetzt."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
  IF ~~ THEN REPLY #57817 /* ~Mach dich von der Erinnerung frei.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 63 // from: 16.5 26.5 27.5
  SAY #57819 /* ~*"Ssss... Ignussss wwussste einmal *viel*... jetzt nicht mehr... Ignussss brennt... leidet... und lernt dadurch..."* Eine winzige Flamme schießt aus seinem Mund, als würde er lachen, und ein Schwall Glut blubbert hervor. *"Leiden... lernen..."*~ */
  IF ~~ THEN REPLY #57820 /* ~"Ich bin gewillt, für solches Wissen zu leiden..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57821 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57822 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57823 /* ~"Vielleicht ein andermal, Ignus... Wir unterhalten uns später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #57824 /* ~Als du gerade die Worte sprechen willst, spürst du ein seltsames Gefühl in deinem Hinterkopf... Und plötzlich bist du dir sicher, daß das Wissen, das Ignus dir vermitteln will, dich auf Dauer verwunden wird... Aber du weißt nicht, *woher* du das weißt.~ */
  IF ~~ THEN REPLY #57825 /* ~Wiederhole: Ich bin gewillt, für solches Wissen zu leiden..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57826 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57827 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57828 /* ~"Vielleicht ein andermal, Ignus... Wir unterhalten uns später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 16.6 26.6 27.6 64.0 68.0
  SAY #57829 /* ~*"Leiden...?"* Flammen lodern eifrig um Ignus' Mund herum, in Spiralen kringeln sie sich um die geschmolzene Ruine seines Gesichts. *"Brrrrennen? Stücke des Sssselbsssst werden weggebrannt...sssss... Ignusss... Ignusss kann dich noch *VIELES* lehren."*~ */
  IF ~  Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57830 /* ~"Ich möchte lernen, Ignus... Kannst du mir etwas von dieser Kunst beibringen?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",1)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 66
  IF ~  Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57831 /* ~"Ich möchte lernen, Ignus... Kannst du mir etwas von dieser Kunst beibringen?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",2)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 69
  IF ~  GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57832 /* ~"Ich möchte lernen, Ignus... Kannst du mir etwas von dieser Kunst beibringen?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57833 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57834 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57835 /* ~"Vielleicht ein andermal, Ignus... Wir unterhalten uns später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #57836 /* ~*"Wo einmal Flammen brannten, da kann man ssssie wieder hinschicken..."* Bevor du reagieren kannst, schnellen Ignus' Klauen hervor, ergreifen deinen Finger, und VERBRENNEN ihn mit einem gierigen *hssssss*, und durch den stechenden Schmerz schließt du deine Augen und SCHREIST...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,1)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
GiveExperience(Protagonist,6000)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #57837 /* ~Du zwingst dich, die Augen zu öffnen, und erblickst die brennende Masse deiner Hand, wo Ignus sie berührt hat... Er schwebt über dir, gleichgültig, hält deinen Finger, und *bricht* dann die Spitze ab. Nur der Stumpf bleibt übrig. Er *zischt*,  Schlacke und Asche entströmen seinem Mund, und er schnippt dir die verkohlten Überreste deines Fingers zu.~ */
  IF ~~ THEN REPLY #57838 /* ~"Erhkk... was... hast... du... getan...?"~ */ DO ~GiveItemCreate("Ignus01",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57839 /* ~Ignus hat mich etwas seines Wissens über die 'Kunst' *gelehrt*, indem er meinen Finger abgebrochen, das Fleisch abgebrannt und ihn mir dann zurückgegeben hat... Er denkt wohl, daß ich wüßte, was damit zu tun sei. Diese Tortur kann nicht gut für meine Gesundheit gewesen sein, obwohl ich glaube, daß meine Widerstandsfähigkeit gegen Feuer zugenommen hat. Trotz dieser Quälerei scheint mein Finger nachzuwachsen, so daß meine Kampf- oder Zauberfähigkeiten keinen Schaden davongetragen haben sollten.~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #57840 /* ~*"Lernen..."* Ignus gackert, der Klang schmerzt dich nun in den Ohren. *"Um zu lernen, mussss man leiden."*~ */
  IF ~~ THEN REPLY #57841 /* ~"Ich ... möchte... mehr lernen..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57842 /* ~"Ich ... wollte... mehr über... Flammen und Feuer sprechen, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57843 /* ~"Ich... verstehe. Ich ... hätte noch mehr Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57844 /* ~"Genug... Ignus... Wir werden uns später wieder unterhalten."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #57845 /* ~*"Jaaaaa..."* Bevor du reagieren kannst, schnellt Ignus' Klaue hervor, umgreift deine linke Hand, und mit einem irren Gackern und einem gierigen *Zischen* verbrennt er sie. Durch die stechenden Schmerzen schließt du die Augen und SCHREIST...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,3)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,5)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,5)
GiveExperience(Protagonist,12000)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #57846 /* ~Du zwingst dich, die Augen zu öffnen und erblickst die brennende Masse deiner Hand, wo Ignus sie berührt hat... nur ein verkohlter *Stumpf* ist übrig. Er zuckt, und Blut strömt von ihm herunter. Ignus scheint deinen Schmerz nicht zu bemerken - seine Aufmerksamkeit gilt ganz deiner abgetrennten Hand, die er in seinen Klauen hält und wie eine Trophäe bewundert. ~ */
  IF ~~ THEN REPLY #57847 /* ~"Ig... nus... gib... mir... meine... Hand... ZURÜCK..."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #57848 /* ~Ignus ignoriert dich. Du beobachtest, wie Flammen aus seiner Hand deine abgetrennte Hand wie einen Kranz umzingeln und wie ein Bildhauer langsam das restliche Fleisch verbrennen, bis nur der verkohlte Knochen übrigbleibt. Er gibt ein langgezogenes, tiefes *Zischen* von sich und wirft dir dann das Skelett deiner Hand zu... Du kannst es mit deiner heilen Hand auffangen. Du stellst fest, daß das Fleisch deiner abgetrennten Hand sich neu bildet, langsam und schmerzlich... Es sieht aus, als würde es nachwachsen. ~ */
  IF ~~ THEN REPLY #57849 /* ~"Was hast... du getan..."~ */ DO ~GiveItemCreate("Ignus04",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57850 /* ~Ignus hat mich etwas seines Wissens über die 'Kunst' *gelehrt*, indem er meine HAND angezündet und das Fleisch runtergebrannt hat, und sie mir dann zurückgegeben hat... Er denkt wohl, daß ich wüßte, was damit zu tun sei. Diese Tortur kann nicht gut für meine Gesundheit gewesen sein, obwohl ich glaube, daß meine Widerstandsfähigkeit gegen Feuer zugenommen hat. Trotz dieser Quälerei scheint meine Hand nachzuwachsen, so daß meine Kampf- oder Zauberfähigkeiten keinen Schaden davontragen sollten.~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #57851 /* ~*"Lernen..."* Ignus gackert, der Klang schmerzt dich nun in den Ohren. *"Um zu lernen, mussss man leiden."*~ */
  IF ~~ THEN REPLY #57852 /* ~"Ich ... möchte... mehr lernen..."~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57853 /* ~"Ich ... wollte... mehr über... Flammen und Feuer sprechen, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57854 /* ~"Ich... verstehe. Ich ... hätte noch mehr Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57855 /* ~"Genug... Ignus... Wir werden uns später wieder unterhalten."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 16.7 26.7 27.7 65.2 72.0 77.0 83.0
  SAY #57856 /* ~*"Ssssss...* Ignus schwingt sich in die Luft und hinterläßt eine zischende Flammenspur. *"Nicht mehr! Stücke des Selbst werden weggebrannt... sssss... Ignusss... doch Ignusss lehrt nicht mehr das Teilen..."*~ */
  IF ~  PartyHasItem("Eyeball")
Global("Ignus_Teach","GLOBAL",2)
~ THEN REPLY #57857 /* ~"Du brauchst Teile von mir, um mich zu unterrichten? Wie wär's mit meinem Augapfel?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",3)
GiveExperience(Protagonist,12000)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 74
  IF ~  PartyHasItem("Intest")
~ THEN REPLY #57858 /* ~"Du brauchst Teile von mir, um mich zu unterrichten? Wie wär's mit meinen Gedärmen?"~ */ DO ~DestroyPartyItem("Intest",TRUE)
GiveExperience(Protagonist,24000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 78
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57859 /* ~"Nun gut. Ich wollte noch etwas über Flammen und Feuer reden, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57860 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57861 /* ~"Dann vergiß es, Ignus... Wir unterhalten uns später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #57862 /* ~Ignus greift erneut an, sein Finger wie ein Speer... aber er zielt nicht auf das Auge, das du herausnehmen kannst, sondern er spießt dein ANDERES Auge auf. Einen Momant lang spürst du keine Schmerzen, dann *schreist* du, als Ignus Flammen in deine Augenhöhle spuckt. Sie scheinen sich in deinen Schädel zu fressen... Das Zischen von verbranntem Fleisch steigt dir in die Nase, und Rauch vernebelt deine Sicht... ~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,2)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #57863 /* ~Du zwingst dich, durch deine blutige Sicht hindurch deine Augen zu öffnen - doch nur ein Auge öffnet sich. Du kannst Ignus kaum erkennen, der vor dir in der Luft schwebt, seine Hände halten eine kleine Feuerkugel - dein Auge, scheinbar unberührt von der Hitze. Während du zusiehst, bedeckt seine Hand das Auge, und du spürst zum zweiten Mal einen brennenden Schmerz in der Augenhöhle...~ */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #57864 /* ~Und plötzlich, selbst durch den stechenden Schmerz, kannst du wieder richtig sehen. Ignus öffnet seine Hand, und darin erblickst du die zerstörte Masse deines Auges, kaum zu erkennen... doch... dein Auge sitzt noch in seiner Höhle. Er gackert, und mit seinem flammenden Atem steigt das Auge aus seiner Hand auf und schwebt zu dir hinüber, wie Asche in der Luft. ~ */
  IF ~~ THEN REPLY #57865 /* ~Nimm den Augapfel... deinen Augapfel...~ */ DO ~GiveItemCreate("Ignus02",Protagonist,1,0,0)
~ JOURNAL #57866 /* ~Ignus hat mich etwas seines Wissens über die 'Kunst' *gelehrt*, indem er mir mein Auge verbrüht und es mir dann zurückgegeben hat... Er denkt wohl, daß ich wüßte, was damit zu tun sei. Diese Tortur kann nicht gut für meine Gesundheit gewesen sein, obwohl ich glaube, daß meine Widerstandsfähigkeit gegen Feuer zugenommen hat. Manchmal wünschte ich, Ignus würde statt solcher Quälereien ein paar von diesen VERDAMMTEN SCHRIFTROLLEN nutzen... Zumindest kann ich mit meinem Auge noch sehen.~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #57867 /* ~Winzige Flammen schlängeln sich aus Ignus' zerstörten Augenhöhlen und steigen über seinen verkohlten Schädel empor. *"Mehr lernen..."* Die beiden Flammenzungen schweben um ihn herum und lodern dann in seinen Händen zu Fackeln auf. *"Mehr leiden..."*~ */
  IF ~~ THEN REPLY #57868 /* ~"Ich bin bereit, für mehr Wissen zu leiden... Kannst du mich noch mehr lehren?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57869 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57870 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57871 /* ~"Danke, Ignus... schätze ich mal. Wir werden und später wieder unterhalten."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 73.1
  SAY #57872 /* ~Ignus neigt seinen Kopf, als du deine Eingeweide emporhältst, dann stürzt er sich plötzlich darauf und entreißt sie dir. Er hält sie zwischen seinen Händen gespannt, wie ein Seil, und zischt vor sich hin. Du siehst, wie deine Gedärme zu dampfen beginnen, als er sie hält. Dann werden sie langsam schwarz, und du spürst einen dumpfen, bohrenden Schmerz in deinem Unterleib...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #57873 /* ~Ignus fängt an, deine Gedärme abzuwickeln, Elle um Elle, und während er jeden Teil aus der Hand fallen läßt, beginnen diese um ihn zu rotieren wie eine Spirale, in einem langsamen Muster, und jeder Abschnitt wird von seinen Flammen geröstet. Es sieht fast wie ein Tanz aus, wie die Flammen die Eingeweide berühren und sie langsam verbrennen, bis sie aussehen wie eine lange Schnur aus verkohltem Fleisch...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #57874 /* ~Das Brennen in deinem Unterleib läßt dich zusammenzucken, aber es ist nichts gegen die Schmerzen, die du gefühlt hast, als Ignus deine anderen Körperteile verbrannt hat. Du siehst zu, wie deine brennenden Gedärme sich in Ignus Flammen drehen, bis sie plötzlich aufflackern und in Ignus Hände fallen. Er *zischt* und wirft sie dir zu. *"VIEL Kraft in den Organen eines Unsterblichen..."*~ */
  IF ~~ THEN REPLY #57875 /* ~Nimm die verkohlten Eingeweide...~ */ DO ~GiveItemCreate("Ignus03",Protagonist,1,0,0)
~ JOURNAL #57876 /* ~Ignus hat mich etwas seines Wissens über die 'Kunst' *gelehrt*, indem er mir meine Eingeweide verkohlt und sie mir dann zurückgegeben hat... Er denkt wohl, daß ich wüßte, was damit zu tun sei. Im Gegensatz zu den anderen Torturen scheine ich nicht allzu sehr gelitten zu haben, als Ignus meine Eingeweide mit seinen Flammen 'behandelt' hat.~ */ GOTO 83
END

IF ~~ THEN BEGIN 81 // from: 16.8 26.8 27.8
  SAY #57877 /* ~*"Flammen... keine... Qualen..."* Ignus dreht sich langsam weg, er dreht sich über der Erde. Vielleicht hat er dich gehört, aber du weißt nicht, ob die Worte irgendeine *Bedeutung* für ihn haben...~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57878 /* ~"Bist du sicher, Bittsteller?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 82
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57879 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57880 /* ~"Zumindest hab ich's versucht. Ich hätte noch ein paar Fragen an dich, Ignus..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57881 /* ~"Nun ja, wie dem auch sei... Es tut mir leid, daß du so geendet bist... Wir reden später weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #57882 /* ~Ignus hält sofort an und stürzt sich auf dich, *neue* Flammen brechen aus seiner Brust und seinem Kopf hervor in einer fürchterlichen, knisternden Masse... Wie ein Nest brennender Schlangen, die plötzlich aus Verstecken an Ignus' Körper hervorbrechen. *"Bittssssteller isssst Ignussssss NICHT MEHR...! Sssssag noch einmal sssso etwassss, und Ignusssss wird dich VERBRENNEN!"*~ */
  IF ~~ THEN REPLY #57883 /* ~"Versuch es, *Bittsteller*. Es sieht so aus, als müßte ich dich an deine Stellung erinnern."~ */ GOTO 29
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57884 /* ~"Dann vergiß es. Ich wollte noch ein bißchen über Flammen und Feuer reden, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57885 /* ~"Verstanden... Ich hätte noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57886 /* ~"Dann vergiß es, Ignus... Wir unterhalten uns später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.0
  SAY #57887 /* ~Du hältst deine verkohlten Eingeweide in deinen Händen. Sie sehen aus wie ein schwarzes Seil. Ignus schwebt über dir, winzige Aschestäubchen schweben um seinen brennenden, ausgemergelten Körper.~ */
  IF ~~ THEN REPLY #57888 /* ~"Ich bin bereit, für mehr Wissen zu leiden... Kannst du mich noch mehr lehren?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57889 /* ~"Ich hätte mich gerne noch etwas über Feuer und Flammen unterhalten, Ignus..."~ */ GOTO 27
  IF ~~ THEN REPLY #57890 /* ~"Ich... verstehe. Ich hätte da noch ein paar Fragen..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57891 /* ~"Danke, Ignus... Wir reden später weiter."~ */ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",1)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 84 // from:
  SAY #61827 /* ~Flammen züngeln um Ignus Hals und tanzen um den Rand seines Schädels. Seine verkohlten Lippen öffnen sich, und er spricht knisternd. "Ich... warte."~ [IGN148] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61828 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61829 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61830 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61831 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61832 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61833 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61834 /* ~"Oh... Ich verstehe. Dann leb wohl."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",2)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 85 // from:
  SAY #61835 /* ~Ignus gibt ein langgezogenes, knisterndes Zischen von sich, als du näherkommst."Ich warte darauf, den Pfad des Feuersssss zu gehen."~ [IGN149] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61836 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61837 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61838 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61839 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61840 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61841 /* ~"Ignus, ich brauche deine Hilfe."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61842 /* ~"Oh... Ich verstehe. Dann leb wohl."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 14.1 84.1 85.1
  SAY #61843 /* ~Es ist das Knistern und Ploppen von verschmorendem Fleisch zu hören, dann gibt Ignus ein langes, tiefes Zischen von sich. "Wie du wünschsssst."~ [IGN106] */
  IF ~~ THEN REPLY #61844 /* ~"Gehn wir."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 14.2 84.2 85.2
  SAY #61845 /* ~Ignus Zähne klappern und ein Strom von glühender Kohle ergießt sich aus seinem Mund. "Feuer werden durch die Strasssssen fegen."~ [IGN077] */
  IF ~~ THEN REPLY #61846 /* ~"Gehn wir."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 14.3 84.3 85.3
  SAY #61847 /* ~Ascheflocken schweben aus Ignus Mund, während er nickt. "Ignusssss gehorcht..."~ [IGN101] */
  IF ~~ THEN REPLY #61848 /* ~"Gehn wir."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 14.4 84.4 85.4
  SAY #61849 /* ~Ignus' Stimme ist leise, und die Flammen um die Reste seines Gesichts werden dunkler, während er spricht. "Ich werde den Pfad des Feuerssss mit dir gehen."~ [IGN151] */
  IF ~~ THEN REPLY #61850 /* ~"Gehn wir."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 14.5 84.5 85.5
  SAY #61851 /* ~Eine Flammenzunge schießt wie die Zunge einer Schlange aus Ignus Mund hervor. Sie löst sich in zischenden Rauch auf und läßt nur kleine Ascheflocken zurück. "Jaaa."~ [IGN191A] */
  IF ~~ THEN REPLY #61852 /* ~"Gehn wir."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",3)
~ THEN BEGIN 91 // from:
  SAY #68216 /* ~Ignus rührt sich, die Luft um ihn flimmert leicht, gerade genug, um ihn zum Leben zu erwecken.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68218 /* ~"Erhebe dich, Ignus. Ich brauche dich."~ */ DO ~SetGlobal("Fortress_Ignus","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 92
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68387 /* ~ERHEBE DICH, IGNUS. ~ */ GOTO 93
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #68217 /* ~Flammen und Hitze zucken empor, Ignus steigt auf, und die Luft *biegt* sich von den heißen Strömen aus seinem Körper. Er sieht dich an, seine Augen sehen aus wie Höllentore. "*Ich gehöre dir... bis ans Ende unserer Tage*."~ [IGN248] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68219 /* ~"Dieser Tag mag heute gekommen sein, Ignus..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68220 /* ~"Dieser Tag mag heute gekommen sein, Ignus..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68221 /* ~"Dieser Tag mag heute gekommen sein, Ignus..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68243 /* ~"Dieser Tag mag heute gekommen sein, Ignus..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",1)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68441 /* ~"Dieser Tag mag heute gekommen sein, Ignus..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #68388 /* ~Flammen und Hitze zucken empor, Ignus steigt auf, und die Luft *biegt* sich von den heißen Strömen aus seinem Körper. Er wendet sich dir zu, seine Augen wie Höllentore, und er stößt ein tiefes, anhaltendes Fauchen aus. Doch das Zischen hat nichts Bedrohliches, nur eine Wachsamkeit, eine Vorsicht, die du noch nie zuvor gehört hast.~ */
  IF ~~ THEN REPLY #68389 /* ~ICH WERDE NICHT MEHR LANGE HIER BLEIBEN, IGNUS. ICH BRINGE DICH ZURÜCK NACH SIGIL, WENN DU WILLST.~ */ GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #68390 /* ~Ignus starrt dich an. Sein Ausdruck ist hinter den Ruinen seines Gesichts nicht zu deuten. Und plötzlich weißt du, was Ignus wünscht.  ~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68391 /* ~ICH SCHICKE DICH ZUR FEUEREBENE, IGNUS. DORT SOLLST DU IN DIE FLAMMENHIMMEL AUFSTEIGEN, UND ALLE KREATUREN SOLLEN DEIN HERZ KENNEN. IN EWIGEN FLAMMEN SOLLST DU LEBEN, WIE ES DEINE BESTIMMUNG IST.~ */ GOTO 95
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68422 /* ~ICH SCHICKE DICH ZUR FEUEREBENE, IGNUS. DORT SOLLST DU IN DIE FLAMMENHIMMEL AUFSTEIGEN, UND ALLE KREATUREN SOLLEN DEIN HERZ KENNEN. IN EWIGEN FLAMMEN SOLLST DU LEBEN, WIE ES DEINE BESTIMMUNG IST.~ */ GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #68392 /* ~Ignus schwebt und schweigt für einen Augenblick, und als er spricht, klingt seine Stimme wie die eines... anderen, eines Kindes, eines Schülers, jemand, den du vor langer Zeit kanntest, in einer anderen Inkarnation. "Meister, vergib mir... Ich habe deine Lehren verraten."~ [IGN254] */
  IF ~~ THEN REPLY #68393 /* ~ICH LEHRTE DICH EINST DAS LEIDEN, IGNUS, UND ICH HABE DICH VERRATEN. JETZT WERDE ICH DICH ZU EINEM ORT DES FRIEDENS SCHICKEN, AN DEM DEIN HERZ FREI SEIN WIRD.~ */ GOTO 96
  IF ~~ THEN REPLY #68394 /* ~ES GAB VIEL VERRAT, IGNUS. ICH VERGEBE DIR.~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 95.1
  SAY #68395 /* ~Ignus sagt nichts dazu und verbeugt sich ganz leicht. Die Flammen lodern um seine Hülle. Aschewölkchen umwehen ihn wie winzige Laubblätter.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68396 /* ~LEB WOHL, IGNUS.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68397 /* ~LEB WOHL, IGNUS.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
~ THEN REPLY #68467 /* ~LEB WOHL, IGNUS.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",4)
~ THEN BEGIN 97 // from:
  SAY #68418 /* ~Ignus ist wie ein tosendes Inferno, Flammensäulen schießen aus seinem Körper wie Wellen in einem tobenden Ozean. *"Brennnnnne...."*~ [IGN090A] */
  IF ~~ THEN REPLY #68419 /* ~"Halte den Druck aufrecht, Ignus... Gib ihm keine Chance, sich zu konzentrieren."~ */ EXIT
END
