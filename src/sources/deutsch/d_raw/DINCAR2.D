// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR2~

IF ~~ THEN BEGIN 0 // from:
  SAY #52685 /* ~"Vielleicht... Vielleicht werdet ihr TROTZDEM sterben. Vergeßt NIE, daß ich euch DIEBE BEOBACHTE, euch MÖRDER - MÖRDER ALLESAMT, alle DREI von euch..."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #59901 /* ~"Ihr seid alle DIEBE... Ihr tragt MEINEN Körper... MEINEN Körper, und ihr werdet ihn ZURÜCKGEBEN!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 3
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #63713 /* ~Der Mann vor dir gleicht dir, aber sein Rücken ist gebeugt, als hätte er ständig Angst, geschlagen zu werden. Er sieht dich argwöhnisch an, und als du dich näherst, zischt er und seine Hände verkrampfen sich, als wolle er dich erwürgen. Seine Arme sind schrecklich verätzt und vernarbt, als wären sie in Säure getaucht worden - und sein linker Arm sieht so aus, als hinge er an einem Faden.~ */
  IF ~~ THEN REPLY #63714 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Paranoid_Incarnation","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #63715 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63716 /* ~"WISSE, daß du hier NICHT lange existieren wirst, du DIEB!" Spucke sprüht aus seinem Mund, und sein Gesicht verzerrt sich zu einem wahnsinnigen Grinsen. IRRGÄNGE, REUE UND TOD sind alles, was es HIER GIBT..."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 55
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63717 /* ~"Was meinst du?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63718 /* ~"DIEB!" Die Hände der Inkarnation verdrehen sich, als wollten sie sich gegenseitig erwürgen. "Ich werde spüren, wie deine Halswirbel in meinen Fingern ZERBRECHEN... gib meinen KÖRPER zurück! Er wendet sich dir zu. "DIEB! Du trägst meinen Körper wie einen MANTEL, und du machst mir SCHANDE..."~ */
  IF ~~ THEN REPLY #63719 /* ~"Ich bin kein Dieb. Ich habe dir nichts gestohlen."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #63720 /* ~"Du bist ein DIEB!" Die Hände der Inkarnation verdrehen sich, als wären sie um deinen Hals geschlungen. "Ich werde spüren, wie deine Halswirbel in meinen Fingern ZERBRECHEN.... gib meinen KÖRPER zurück. Du trägst meinen Körper wie einen MANTEL, und du machst mir SCHANDE.~ */
  IF ~~ THEN REPLY #63721 /* ~"Ich bin kein Dieb. Ich habe dir nichts gestohlen."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #63722 /* ~"DU HAST ALLES GESTOHLEN. ICH BIN AUF DEN STRASSEN DER RINGSTADT ERWACHT, UND ALLE, DIE MICH SAHEN, KANNTEN MICH!" ~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63723 /* ~Er holt röchelnd Luft. "Alles was du getan hattest, alle, die du verletzt hattest - sie alle warteten auf mich, gaben mir die Schuld, taten mir weh, bis ich die Stimmen nicht mehr AUSHIELT..." Seine Finger greifen in die Luft. "Und da mußte ich sie zum SCHWEIGEN bringen."~ */
  IF ~  Global("Pstone","GLOBAL",0)
~ THEN REPLY #63724 /* ~"Du bist derjenige, der dieses dodekaedrische Journal angefertigt hat, der Gefangene, nicht wahr?"~ */ GOTO 9
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63725 /* ~"Du bist derjenige, der die Falle in dem Sinnesstein für mich gelegt hat, nicht wahr? Und das dodekaedrische Journal mit den Fallen?"~ */ GOTO 9
  IF ~  Global("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63726 /* ~"Du bist derjenige, den die Dame in die Irrgänge geschickt hat, nicht wahr? Ich habe dein Journal gefunden, und das andere, das dodekaedrische mit den Fallen."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",1)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63727 /* ~Du bist derjenige... der all diese Leute erwürgt hat, nicht wahr? Ich habe dein Journal im Irrgang der Dame gefunden... und das andere Journal, das dodekaedrische mit den Fallen, habe ich auch gefunden."~ */ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Maze_Journal","GLOBAL",0)
Global("Pstone","GLOBAL",0)
~ THEN REPLY #63729 /* ~"Du bist derjenige, der... all diese Leute erwürgt hat, stimmt's? Und das Journal mit den Fallen für mich hinterlassen hat, das dodekaedrische."~ */ GOTO 9
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63730 /* ~"Du bist derjenige, der den Sprachforscher, Fin, getötet hat, stimmt's? Dann hast du das zwölfflächige Journal in der Sprache der Uyo geschrieben."~ */ GOTO 9
END

IF ~  Global("Paranoid_Incarnation","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #63731 /* ~Diese verrückte Inkarnation sieht dich argwöhnisch an, und als du dich näherst, zischt er und seine Hände verkrampfen sich, als wolle er dich erwürgen. Seine Arme sind schrecklich verätzt und vernarbt, als wären sie in Säure getaucht worden - und sein linker Arm sieht so aus, als hinge er an einem Faden.~ */
  IF ~~ THEN REPLY #63732 /* ~"Ich würde gerne ein paar Dinge wissen."~ */ GOTO 9
  IF ~~ THEN REPLY #63733 /* ~Beachte die verrückte Inkarnation nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 7.2 7.3 7.4 7.5 8.0 10.0 11.1 12.1 14.0 15.0 16.0 17.0 18.3 19.2 20.0 21.1 22.0 26.0
  SAY #63734 /* ~Er schielt dich mißtrauisch aus einem Auge an. - es scheint so, als ob schon dein Anblick im Unbehagen bereitet.~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63735 /* ~"Damit ich diesen Ort verlassen kann, mußt du wieder ein Teil von mir werden. Wirst du das tun?"~ */ GOTO 18
  IF ~  GlobalGT("Know_Iannis_Fire_Responsible","GLOBAL",0)
~ THEN REPLY #63736 /* ~"Du bist derjenige, der Iannis' Erbe angezündet hat, nicht wahr? Du hast versucht, mein Erbe zu zerstören?"~ */ GOTO 10
  IF ~  Global("Pstone","GLOBAL",1)
~ THEN REPLY #63737 /* ~"Die Falle des Sinnessteins - du bist es, der sie für mich gelegt hat, stimmt's?"~ */ GOTO 11
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #63738 /* ~"Bist du derjenige, der all die Leute in Sigil erwürgt hat?"~ */ GOTO 14
  IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN REPLY #63739 /* ~"Du bist die Inkarnation, die die Dame in die Irrgänge geschickt hat, oder? Ich habe dein Journal im Irrgang der Dame gefunden."~ */ GOTO 15
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63740 /* ~"Du bist verantwortlich für den Mord an dem Sprachforscher Fin, nicht wahr?~ */ GOTO 16
  IF ~~ THEN REPLY #63741 /* ~"Was ist mit deinem Arm passiert?"~ */ GOTO 17
  IF ~~ THEN REPLY #63742 /* ~"Weißt du, wie ich hier rauskomme?"~ */ GOTO 20
  IF ~~ THEN REPLY #63743 /* ~"Was weißt du über die anderen Inkarnationen?"~ */ GOTO 21
  IF ~  OR(2)
CheckStatGT(Protagonist,15,INT)
GlobalGT("P_Journal","GLOBAL",3)
Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63744 /* ~Sprache der Uyo: (Unterhalten wir uns privat, nur wir beide)~ */ GOTO 23
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63745 /* ~Sprache der Uyo: (Unterhalten wir uns privat, nur wir beide)~ */ GOTO 25
  IF ~  GlobalGT("Choke","GLOBAL",0)
GlobalLT("Choke","GLOBAL",6)
~ THEN REPLY #63746 /* ~Umschließe seinen Hals mit den Händen und erwürge ihn.~ */ GOTO 30
  IF ~  GlobalGT("Choke","GLOBAL",5)
~ THEN REPLY #63747 /* ~Umschließe seinen Hals mit den Händen und erwürge ihn.~ */ GOTO 38
  IF ~~ THEN REPLY #63748 /* ~"Vergiß es. Wir unterhalten uns später weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #63749 /* ~"Ich habe die falschen Papiere VERBRANNT, ja. NOCH MEHR Lügen, , Lügen über meine FALSCHEN LEBEN..." ~ */
  IF ~~ THEN REPLY #63750 /* ~"Es gibt andere Dinge, die ich wissen will."~ */ GOTO 9
  IF ~~ THEN REPLY #63751 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #63752 /* ~"Ja..." Er lächelt böse. "Einfache Falle. Falle für jemanden, der nicht sterben kann. - GEDANKEN-Falle."~ */
  IF ~~ THEN REPLY #63753 /* ~"Eigentlich war es leicht, zu entwischen."~ */ GOTO 12
  IF ~~ THEN REPLY #63754 /* ~"Es gibt andere Dinge, die ich wissen will."~ */ GOTO 9
  IF ~~ THEN REPLY #63755 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #63756 /* ~Das Lächeln friert auf dem Gesicht der Inkarnation ein. "Du LÜGST!"~ */
  IF ~~ THEN REPLY #63757 /* ~"Nein, es war erbärmlich einfach. Ich konnte mühelos entkommen."~ */ GOTO 13
  IF ~~ THEN REPLY #63758 /* ~"Vielleicht. Es gibt noch ein paar Dinge, die ich gerne wüßte."~ */ GOTO 9
  IF ~~ THEN REPLY #63759 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63760 /* ~"DU LÜGENDER DIEB!" Seine Augen funkeln wie Feuer und du siehst, wie er seinen linken Arm ergreift... er *zieht* daran, und die Naht an der Schulter beginnt aufzureißen...~ */
  IF ~~ THEN REPLY #63761 /* ~"Was - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SmallWait(1)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63762 /* ~Seine Augen wandern zu den schwarzen Steinen, als würde er sich an etwas erinnern - etwas Unangenehmes. Er beginnt leicht zu zittern. "Sie haben behauptet, sie kennen mich. Mußte sie zum SCHWEIGEN bringen, ihnen den Mund stopfen. Anklagend Immer ANKLAGEND..."~ */
  IF ~~ THEN REPLY #63763 /* ~"Ich verstehe... Ich würde gerne noch etwas Anderes wissen."~ */ GOTO 9
  IF ~~ THEN REPLY #63764 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.4
  SAY #63765 /* ~"Einfache Flucht, einfache Falle, habe ihren Irrgang mit Leichtigkeit durchbrochen, hab ich. Ich hätte ihn enger machen können, tödlicher." Er lächelt. "Sie hatte keine Ahnung, womit sie MICH hätte fangen können."~ */
  IF ~~ THEN REPLY #63766 /* ~"Es scheint so. Es gibt noch ein paar Dinge, die ich gerne wüßte."~ */ GOTO 9
  IF ~~ THEN REPLY #63767 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63768 /* ~"Da..." Er scheint einen Moment lang verwirrt zu sein. "Da waren VIELE, die ich getötet habe. Da waren viele, die zum Schweigen gebracht werden mußten."~ */
  IF ~~ THEN REPLY #63769 /* ~"Ich verstehe... Ich würde gerne noch etwas Anderes wissen."~ */ GOTO 9
  IF ~~ THEN REPLY #63770 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.6
  SAY #63771 /* ~Er blickt einen Moment lang auf seinen Arm hinunter, dann sieht er wieder auf und lächelt. "Ist immer wieder ABGEFALLEN... also mußte ich ihn wieder annähen."~ */
  IF ~~ THEN REPLY #63772 /* ~"Es gibt ein paar Dinge, die ich gerne wüßte."~ */ GOTO 9
  IF ~~ THEN REPLY #63773 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0
  SAY #63774 /* ~"Eher würde ich STERBEN."~ */
  IF ~~ THEN REPLY #63775 /* ~"Der Tod tut es auch. Aber ich gebe dir eine Chance."~ */ GOTO 19
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63776 /* ~"Dann mach dich auf deinen Tod gefaßt."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63777 /* ~"Dann mach dich auf deinen Tod gefaßt."~ */ GOTO 34
  IF ~~ THEN REPLY #63778 /* ~"Es gibt ein paar Dinge, die ich gerne wüßte."~ */ GOTO 9
  IF ~~ THEN REPLY #63779 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63780 /* ~"NIEMALS." Er spuckt das letzte Wort aus: "DIEB."~ */
  IF ~  GlobalGT("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63781 /* ~"Dann mach dich auf deinen Tod gefaßt."~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Uyo_Paranoid","GLOBAL",0)
~ THEN REPLY #63782 /* ~"Dann mach dich auf deinen Tod gefaßt."~ */ GOTO 34
  IF ~~ THEN REPLY #63783 /* ~"Es gibt ein paar Dinge, die ich gerne wüßte."~ */ GOTO 9
  IF ~~ THEN REPLY #63784 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.7
  SAY #63785 /* ~"Ich werde es dir NIE sagen. Und du wirst NIE weggehen...." Er lächelt. "Es ist RUHIG hier. FRIEDLICH."~ */
  IF ~~ THEN REPLY #63786 /* ~"In Ordnung.... Ich würde gern noch ein paar andere Dinge wissen."~ */ GOTO 9
  IF ~~ THEN REPLY #63787 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.8
  SAY #63788 /* ~"DIEBE. Sie sind DIEBE - sie alle. Und DIEBE werden STERBEN."~ */
  IF ~  NearbyDialog("Dincar1")
~ THEN EXTERN ~DINCAR1~ 56
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63789 /* ~"Es gibt ein paar Dinge, die ich gerne wüßte."~ */ GOTO 9
  IF ~  !NearbyDialog("Dincar1")
~ THEN REPLY #63790 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63791 /* ~"Du bist der DIEB! Du hast meinen Körper und mein Leben gestohlen! Und DIEBE werden STERBEN!"~ */
  IF ~~ THEN REPLY #63792 /* ~"Es gibt andere Dinge, die ich wissen will."~ */ GOTO 9
  IF ~~ THEN REPLY #63793 /* ~"Wir unterhalten uns noch... später."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 9.9
  SAY #63794 /* ~Als du die Sprache der Uyo sprichst, weiten sich die Augen der Inkarnation, und sie starrt dich an. Nach einem Moment des Schweigens antwortet sie in derselben Sprache. (Nur ich kenne die Sprache der Uyo. Wieso kennst du sie?)~ */
  IF ~~ THEN REPLY #63795 /* ~(Du hast recht: Du bist der einzige, der die Sprache der Uyo spricht. Wenn ich also die Sprache der Uyo spreche, dann muß ich du sein.)~ */ DO ~SetAnimState("Incar2",ANIM_MIMESTAND)
~ GOTO 24
  IF ~~ THEN REPLY #63796 /* ~(Vergiß es. Wir sprechen später darüber. Warte, bis ich wiederkomme.)~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63797 /* ~Er schweigt und starrt dich an. ~ */
  IF ~~ THEN REPLY #63798 /* ~(Es sind diese anderen, die nicht du sind, denn sie sprechen nicht die Sprache der Uyo.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",1)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 9.10 24.0
  SAY #63799 /* ~Er nickt... langsam. (Ich höre dich.)~ */
  IF ~  Global("Know_Merge","GLOBAL",0)
~ THEN REPLY #63800 /* ~(Wenn ich zuschlage, dann hilf mir. Wir werden diese Diebe umbringen, dann haben wir endlich Frieden.)~ */ DO ~SetGlobal("Uyo_Paranoid","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63801 /* ~(Dieser Ort verzerrt die Wahrnehmung - wir sind beide du, und wir müssen jetzt eins werden.)~ */ GOTO 27
  IF ~~ THEN REPLY #63802 /* ~(Wir sprechen noch miteinander, du und ich. Warte auf mich.)~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #63803 /* ~(Ich werde zuschlagen, wenn du zuschlägst.)~ */
  IF ~~ THEN REPLY #63804 /* ~"Es gibt noch andere Dinge, die ich gerne wüßte..."~ */ GOTO 9
  IF ~~ THEN REPLY #63805 /* ~(Wir sprechen noch miteinander, du und ich. Warte auf mich.)~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #63806 /* ~Er sieht verängstigt aus. "Ich..." Zu deiner Überraschung spricht er jetzt wieder normal. Die verschiedenen Tonfälle seiner Stimme sind verschwunden. Sie ist ruhig, gelassen, und fast wie deine eigene. "Ich... will nicht mehr so leben."~ */
  IF ~~ THEN REPLY #63807 /* ~(Das mußt du nicht mehr. Alle Schmerzen, alle Sorgen und alle Qualen deiner Existenz: Ich werde sie alle hinwegwischen.)~ */ GOTO 28
  IF ~~ THEN REPLY #63808 /* ~(Du hast viel gelitten. Du wurdest in eine Welt geboren, wo nichts einen Sinn ergab, wo Fremde behaupteten, sie würden dich kennen, sie machten dich für Dinge verantwortlich, von denen du nichts wußtest, und sie versuchten, dich zu verletzen.)~ */ GOTO 28
  IF ~~ THEN REPLY #63809 /* ~(Wir sprechen noch miteinander, du und ich. Warte auf mich.)~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #63810 /* ~Er sieht dich an - und du beobachtest, wie die Inkarnation ihren verrückten Glanz verliert und die Augen fast wie deine werden. "Ja..."~ */
  IF ~~ THEN REPLY #63811 /* ~(Jetzt werde ich dich schützen. Du wirst endlich Frieden kennen. Denn das ist alles, was du je wolltest, nicht wahr?)~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #63812 /* ~Die Inkarnation entspannt sich bei deinen Worten, seine Augen werden ruhiger, als er in die deinen blickt. Du vernimmst ein leises Flüstern, und er fällt auf die schwarzen Steine - als er zusammenbricht, verspürst du ein seltsames, kribbelndes Gefühl im Hinterkopf...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 30 // from: 9.11
  SAY #63813 /* ~Mit blitzartiger Geschwindigkeit schießen deine Arme hervor und schließen sich um seinen Hals - die Inkarnation läßt einen überraschten Schrei vernehmen, als du deine Hände *zusammendrückst*. Er knurrt, dann schießen mit einem heimtückischen Blick seine Hände hervor, umschließen deinen Hals und beginnen zu *drehen.* ~ */
  IF ~  CheckStatGT(Protagonist,20,STR)
~ THEN REPLY #63814 /* ~"Ich... werde... dir... ein ENDE bereiten..."~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatLT(Protagonist,21,STR)
~ THEN REPLY #63815 /* ~"Ich... werde... dir... ein ENDE bereiten..."~ */ GOTO 32
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #63816 /* ~"Ich... werde... dir... ein ENDE bereiten..."~ */ GOTO 33
  IF ~~ THEN REPLY #63817 /* ~Ergib dich, laß ihn deinen Hals brechen.~ */ GOTO 42
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63818 /* ~Während deine Hände *drücken, * quellen die Augen der Inkarnation hervor, und er läßt deinen Hals los. Er krallt sich in deine Hände und versucht sie wegzuziehen, aber er ist zu schwach. ~ */
  IF ~~ THEN REPLY #63819 /* ~"Du hast die Wahl. Entweder du stirbst jetzt durch meine Hand, oder du verschmilzt mit mir und betest, daß du eine Chance hast, in meinem Geist zu überleben."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63820 /* ~Sprache der Uyo: (Das ist für Fins Tod.)~ */ GOTO 39
  IF ~~ THEN REPLY #63821 /* ~"Jetzt werden wir deinem kläglichen Dasein ein Ende setzen..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #63822 /* ~Während deine Hände *drücken,* verengen sich die Augen der Inkarnation, und seine Finger graben sich tief in deinen Hals - ihr seid beide gleich stark, und keiner scheint den anderen besiegen zu können. Es sieht aus, als käme es darauf an, wer es länger aushalten kann... ~ */
  IF ~  CheckStatGT(Protagonist,20,CON)
~ THEN REPLY #63823 /* ~Harre aus...~ */ GOTO 35
  IF ~  CheckStatLT(Protagonist,21,CON)
~ THEN REPLY #63824 /* ~Harre aus...~ */ GOTO 36
  IF ~~ THEN REPLY #63825 /* ~Versuche, dich aus dem Griff zu befreien.~ */ GOTO 37
  IF ~~ THEN REPLY #63826 /* ~Ergib dich, laß ihn deinen Hals brechen.~ */ GOTO 42
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #63827 /* ~Während deine Hände *drücken,* verzieht die Inkarnation den Mund langsam zu einem bösartigen Lächeln, und seine Finger graben sich in deinen Hals - und du stellst fest, wie wahnsinnig *stark* diese Inkarnation ist - innerhalb von Sekunden wird er sämtliches Leben aus dir gequetscht haben.~ */
  IF ~~ THEN REPLY #63828 /* ~Versuche, dich aus dem Griff zu befreien.~ */ GOTO 37
  IF ~~ THEN REPLY #63829 /* ~Ergib dich, laß ihn deinen Hals brechen.~ */ GOTO 42
END

IF ~~ THEN BEGIN 34 // from: 18.1 18.2 19.0 19.1
  SAY #63830 /* ~Seine Augen lodern wie Feuer, und du siehst, wie er seinen linken Arm ergreift... und daran *zieht,* so daß die Naht an der Schulter aufgeht...~ */
  IF ~~ THEN REPLY #63831 /* ~"Was - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #63832 /* ~Nach einer Ewigkeit spürst du, wie die Inkarnation deinen Hals zu schütteln versucht und ihn betastet, als suchte sie nach einer Schwachstelle... aber sie  findet keine. Du kannst zusehen, wie seine Augen sich vor Angst weiten. Er nimmt die Hände von deinem Hals und krallt sie in deine Arme um sie wegzuziehen, aber er ist zu schwach.~ */
  IF ~~ THEN REPLY #63833 /* ~"Du hast die Wahl. Entweder du stirbst jetzt durch meine Hand, oder du verschmilzt mit mir und betest, daß du eine Chance hast, in meinem Geist zu überleben."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63834 /* ~Sprache der Uyo: (Das ist für Fins Tod.)~ */ GOTO 39
  IF ~~ THEN REPLY #63835 /* ~"Jetzt werden wir dir eine Ende setzen..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #63836 /* ~Du drückst weiter zu und versuchst verzweifelt, ihm standzuhalten, und plötzlich wird dir klar, daß der Wahnsinn, der diese Inkarnation befallen hat, ihr Stärke und Ausdauer verleiht, die dir überlegen sind. Wenn du weiterkämpfst, wird sie dich besiegen.~ */
  IF ~~ THEN REPLY #63837 /* ~Versuche, dich aus dem Griff zu befreien.~ */ GOTO 37
  IF ~~ THEN REPLY #63838 /* ~Ergib dich, laß ihn deinen Hals brechen.~ */ GOTO 42
END

IF ~~ THEN BEGIN 37 // from: 32.2 33.0 36.0
  SAY #63839 /* ~Du stürzt dich plötzlich nach rechts, bringst ihn aus dem Gleichgewicht und entwindest dich seinem Griff. Seine Augen leuchten wie Feuer, und du siehst, wie er seinen rechten Arm ergreift... daran *zieht,* und die Naht an der Schulter platzt auf und löst sich langsam auf...~ */
  IF ~~ THEN REPLY #63840 /* ~"Was - ?"~ */ DO ~Polymorph(Nameless_One_Severed_Arm)
SetAnimState(Myself,ANIM_MISC1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.12
  SAY #63841 /* ~Mit blitzartiger Geschwindigkeit schießen deine Arme hervor und schließen sich um seinen Hals - die Inkarnation läßt einen überraschten Schrei vernehmen, als du deine Hände *zusammendrückst*. Er krallt sich in deine Hände und versucht, sie wegzuziehen, aber er ist zu schwach. ~ */
  IF ~~ THEN REPLY #63842 /* ~"Du hast die Wahl. Entweder du stirbst jetzt durch meine Hand, oder du verschmilzt mit mir und betest, daß du eine Chance hast, in meinem Geist zu überleben."~ */ GOTO 40
  IF ~  GlobalGT("Murdered_Fin","GLOBAL",0)
~ THEN REPLY #63843 /* ~Sprache der Uyo: (Das ist für Fins Tod.)~ */ GOTO 39
  IF ~~ THEN REPLY #63844 /* ~"Jetzt werden wir dir eine Ende setzen..."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 31.1 31.2 35.1 35.2 38.1 38.2
  SAY #63845 /* ~Du drehst seinen Kopf heftig nach links - es erklingt ein lautes *Knacken,* wie Tausende von Hälsen, die gebrochen werden, und die Inkarnation fällt schlaff in deine Arme. Du läßt ihn los, und als er auf die schwarzen Steine fällt - als er stirbt, spürst du ein seltsames Gefühl in deinem Hinterkopf, das dich erschauern läßt, und du weißt, daß es mit der Inkarnation aus ist.~ */
  IF ~~ THEN REPLY #63846 /* ~"Leb wohl..."~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.0 35.0 38.0
  SAY #63847 /* ~Er starrt dich haßerfüllt mit zusammengebissenen Zähnen an, aber nach einer Weile wird sein Gesichtsausdruck finster, und er sackt zusammen. Du vernimmst ein ganz leises Flüstern, als er auf die schwarzen Steine fällt - als er zusammenbricht, spürst du ein seltsames Gefühl in deinem Hinterkopf...~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
GiveExperience(Protagonist,64000)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
FullHeal(Protagonist)
Kill(Myself)
Deactivate(Myself)
~ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 29.0 40.0
  SAY #63848 /* ~Eine FLUT von Erinnerungen, Stärke und Gefühle stürzen auf dich ein - Du reißt dich zusammen, dir ist einen Augenblick lang schwindlig, dann siehst du wieder klar, und bist wieder du selbst.~ */
  IF ~~ THEN REPLY #63849 /* ~"Leb wohl..."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 30.3 32.3 33.1 36.1
  SAY #63850 /* ~Als sich dein Blick durch den Todesgriff der Inkarnation verdunkelt, läßt der Schmerz nach - und weicht der langsamen, kriechenden Kälte des Vergessens. Du spürst, wie deine Persönlichkeit zerfällt, Stück für Stück, und plötzlich - bist du nicht mehr.~ */
  IF ~~ THEN REPLY #63851 /* ~Dunkelheit umgibt dich...~ */ DO ~SetGlobal("Game_Over","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #63852 /* ~"Diese FRAU - dieser GEIST?!" Die Augen des buckligen Mannes flackern vor Zorn auf, und Spucke sprüht aus seinem Mund. "Sie hat mich jahrelang GEQUÄLT, hat mich verfolgt, mich gehaßt, und DU WARST DERJENIGE, DER SIE GETÖTET HAT?!"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 30
END

IF ~~ THEN BEGIN 44 // from:
  SAY #63853 /* ~"Wertlos!" Die zweite Inkarnation bricht in ein wieherndes Lachen aus, das aber eher schadenfroh als verrückt klingt. "Es war LEICHT, die Falle dieses Kindes zu zerschlagen. Ich habe sie gefunden... und VERÄNDERT. Um es SCHWIERIGER zu machen. Ich habe die INSCHRIFTEN vertauscht."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 58
END
