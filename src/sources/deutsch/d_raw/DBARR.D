// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2835 /* ~Der Wachposten schaut dich mit einer Mischung aus Furcht und Verachtung an, aber er beeilt sich, dir das Tor zu öffnen. Er meidet deinen Blick, als du an ihm vorübergehst.
~ */
  IF ~~ THEN REPLY #2836 /* ~"Krönung des Morgens, Kerls!"~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #19865 /* ~Der Wächter richtet sich auf. "Hast du, was Pharod will, Dussel?"~ */
  IF ~~ THEN REPLY #19866 /* ~"Ja."~ */ GOTO 2
  IF ~~ THEN REPLY #19867 /* ~"Noch nicht."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19868 /* ~"Zeig's mir, Dussel, und ich mach das Tor auf. Aber nicht vorher, verstanden?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #19869 /* ~Zeig's ihm.~ */ GOTO 4
  IF ~~ THEN REPLY #19870 /* ~"Okay, ich hab's nicht. Aber ich hab' hier was anderes, das dich interessieren könnte."~ */ GOTO 5
  IF ~~ THEN REPLY #19871 /* ~"Ich denke nicht. Ich komme wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #19872 /* ~"Wenn du's nicht hast, warum verschwendest du dann meine Zeit?" Der Wächter gluckst vor sich hin.~ */
  IF ~~ THEN REPLY #19873 /* ~"Ich hab's zwar nicht, aber ich hab' was anderes, was dich interessieren könnte..."~ */ GOTO 5
  IF ~~ THEN REPLY #19874 /* ~"Wie du meinst. Also dann, Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #19875 /* ~"In Ordnung. Komm wieder rein."~ */
  IF ~~ THEN REPLY #19876 /* ~"Danke."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #19877 /* ~"Ach ja? Was könnte das sein?"~ */
  IF ~~ THEN REPLY #19878 /* ~"Klimper. Was sagst du zu einer Münze?"~ */ GOTO 7
  IF ~~ THEN REPLY #19879 /* ~"Klimper. Wie würden dir zehn Münzen gefallen?"~ */ GOTO 8
  IF ~~ THEN REPLY #19880 /* ~"Klimper. Was würdest du zu fünfundzwanzig Kupferstücken sagen?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19881 /* ~"Klimper. Was würdest du zu fünfzig Kupferstücken sagen?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19882 /* ~"Klimper. Was würdest du zu fünfzig Kupferstücken sagen?"~ */ GOTO 11
  IF ~~ THEN REPLY #19883 /* ~"Klimper. Was würdest du zu hundert Kupferstücken sagen?"~ */ GOTO 12
  IF ~~ THEN REPLY #19884 /* ~"Wenn ich's mir recht überlege, nichts."~ */ GOTO 6
  IF ~~ THEN REPLY #19885 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.6
  SAY #19886 /* ~"Dann kommst du nicht wieder rein, Dussel." Er spuckt dir vor die Füße.~ */
  IF ~~ THEN REPLY #19887 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #19888 /* ~Er lächelt schief. "Du beleidigst mich gerade, Dussel. Versuch's noch mal."~ */
  IF ~~ THEN REPLY #19889 /* ~"Okay. Wie würden dir zehn Münzen gefallen?"~ */ GOTO 8
  IF ~~ THEN REPLY #19890 /* ~"Okay. Wie wär's mit fünfundzwanzig Münzen?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19892 /* ~"Okay. Was würdest du zu fünfzig Kupferstücken sagen?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19893 /* ~"Okay. Was würdest du zu fünfzig Kupferstücken sagen?"~ */ GOTO 11
  IF ~~ THEN REPLY #19895 /* ~"Okay. Was würdest du zu hundert Kupferstücken sagen?"~ */ GOTO 12
  IF ~~ THEN REPLY #19896 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #19899 /* ~"Glaube nicht..."~ */
  IF ~~ THEN REPLY #19900 /* ~"Okay. Was würdest du zu fünfundzwanzig Münzen sagen?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19901 /* ~"Okay. Was würdest du zu fünfzig Kupferstücken sagen?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19902 /* ~"Okay. Was würdest du zu fünfzig Kupferstücken sagen?"~ */ GOTO 11
  IF ~~ THEN REPLY #19903 /* ~"Okay. Was würdest du zu hundert Kupferstücken sagen?"~ */ GOTO 12
  IF ~~ THEN REPLY #19904 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 7.1 8.0
  SAY #19905 /* ~"Hört sich schon besser an, Dussel, aber es reicht noch nicht ganz."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19906 /* ~"Okay. Was würdest du zu fünfzig Kupferstücken sagen?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19907 /* ~"Okay. Was würdest du zu fünfzig Kupferstücken sagen?"~ */ GOTO 11
  IF ~~ THEN REPLY #19908 /* ~"Okay. Was würdest du zu hundert Kupferstücken sagen?"~ */ GOTO 12
  IF ~~ THEN REPLY #19909 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3 7.2 8.1 9.0 25.1
  SAY #19910 /* ~Ein Lächeln verzerrt sein häßliches Gesicht. "Das ist gut genug. Reich's durch, und ich mach das Tor auf."~ */
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19911 /* ~"Ich hab' wohl nicht genug."~ */ GOTO 14
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19912 /* ~Gib ihm fünfzig Münzen. "Da hast du. Genau, wie wir vereinbart haben."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19913 /* ~Gib ihm vierzig Münzen. "Da hast du. Genau, wie wir vereinbart haben."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19914 /* ~Laß ihn danach greifen. "Greif zu, und es gehört dir."~ */ GOTO 15
  IF ~~ THEN REPLY #19915 /* ~"Vergiß es. Ich geh zurück zu den Katakomben."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.4 7.3 8.2 9.1
  SAY #19916 /* ~Er rechnet und antwortet dann: "Nein. Wenn du rein willst, mußt du schon mehr bieten."~ */
  IF ~~ THEN REPLY #19917 /* ~"In Ordnung. Was würdest du zu hundert sagen?"~ */ GOTO 12
  IF ~~ THEN REPLY #19918 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.5 7.4 8.3 9.2 11.0 26.1
  SAY #19919 /* ~"In Ordnung. Das geht klar. Reich's durch, und ich öffne das Tor."
~ */
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19920 /* ~"Ich hab' wohl nicht genug."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19921 /* ~Gib ihm hundert Münzen. "Da hast du. Genau, wie wir vereinbart haben."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19922 /* ~Gib ihm neunzig Münzen. "Da hast du. Genau, wie wir vereinbart haben."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19923 /* ~Laß ihn danach greifen. "Greif zu, und es gehört dir."~ */ GOTO 16
  IF ~~ THEN REPLY #19924 /* ~"Vergiß es. Ich geh zurück zu den Katakomben."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 10.2 12.1 12.2 15.4 15.5 16.5 16.6
  SAY #19925 /* ~Er hebt es an, Münzen gleiten durch seine Finger, und er sagt: "Fühlt sich an, als sei's genug." Er öffnet das Tor.~ */
  IF ~~ THEN REPLY #19926 /* ~"Also dann, leb wohl für's erste."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 12.0 15.6 16.4 21.0 25.0 26.0
  SAY #19927 /* ~"Zu schade. Wir sehen uns wieder, wenn du genug hast. Vorher kommst du nicht durch." Er dreht sich weg.~ */
  IF ~~ THEN REPLY #19928 /* ~"Also gut..."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #19929 /* ~Er greift durch das Tor nach den Münzen, die du ihm hinhältst.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19930 /* ~Greif seinen Arm und halte ihn fest.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19931 /* ~Greif seinen Arm und halte ihn fest.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19932 /* ~Greif seinen Arm und halte ihn fest.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19933 /* ~Greif seinen Arm und halte ihn fest.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19934 /* ~Gib ihm fünfzig Münzen. "Da hast du. Genau, wie wir vereinbart haben."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19935 /* ~Gib ihm vierzig Münzen. "Da hast du. Genau, wie wir vereinbart haben."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19936 /* ~"Ich hab' wohl nicht genug."~ */ GOTO 14
  IF ~~ THEN REPLY #19937 /* ~"Vergiß es. Ich geh wieder runter."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #19938 /* ~Er greift durch das Tor nach den Münzen, die du ihm hinhältst.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19939 /* ~Greif seinen Arm und halte ihn fest.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19940 /* ~Greif seinen Arm und halte ihn fest.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19941 /* ~Greif seinen Arm und halte ihn fest.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19942 /* ~Greif seinen Arm und halte ihn fest.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19943 /* ~"Ich hab' wohl nicht genug."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19944 /* ~Gib ihm hundert Münzen. "Da hast du. Genau, wie wir vereinbart haben."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19945 /* ~Gib ihm neunzig Münzen. "Da hast du. Genau, wie wir vereinbart haben."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19946 /* ~"Vergiß es. Ich geh zurück zu den Katakomben."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 16.0
  SAY #19947 /* ~Geschickt drückst du seinen Arm gegen das Tor und verdrehst ihn. Der Wächter schreit vor Schmerzen, als sein Schultergelenk knirscht.~ */
  IF ~~ THEN REPLY #19948 /* ~"Laß mich rein, oder ich brech ihn dir."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19949 /* ~Laß ihn los."Laß mich jetzt rein, oder ich mach Hackfleisch aus dir. Wir haben deine Spielchen satt."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 15.1 15.2 16.1 16.2
  SAY #19950 /* ~Als er nach den Münzen greift, faßt du seinen Arm. Er versucht, sich aus deinem Griff zu befreien, aber schließlich schaffst du es, den Arm gegen das Tor zu drücken und ihn zu verdrehen. Dein Gegenüber ringt vor Schmerzen nach Luft.~ */
  IF ~~ THEN REPLY #19951 /* ~"Laß mich rein, oder ich brech ihn dir."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19952 /* ~Laß ihn los."Laß mich jetzt rein, oder ich mach Hackfleisch aus dir. Wir haben deine Spielchen satt."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 15.3 16.3
  SAY #6783 /* ~Als er nach den Münzen greift, versuchst du, seinen Arm zu fassen. Er reißt seinen Arm schnell zurück hinter das Tor und brüllt: "Dafür bezahlst du doppelt, Abschaum! Geh mir aus den Augen!" Er dreht sich von dir weg.~ */
  IF ~~ THEN REPLY #6844 /* ~"Also dann, leb wohl..."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.1 18.0 18.1
  SAY #19953 /* ~Er öffnet schnell das Tor, bevor du deine Drohung wahr machst und hält sich weit außerhalb deiner Reichweite, während du durch das Tor gehst.~ */
  IF ~~ THEN REPLY #19954 /* ~"Wenn du mir noch einmal dumm kommst, können sie deine Gebeine aus drei verschiedenen Krypten zusammensuchen. Verstanden? Gut."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19955 /* ~"Wieder was dazugelernt, was? Das nächste Mal ein wenig mehr Respekt. Leb wohl."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  Global("No_Pin","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #19956 /* ~Der Wächter starrt dich drohend an. "Es wird dich zweihundert kosten, wenn du hier durch willst, Dussel. Und keine dummen Spielchen!"~ */
  IF ~~ THEN REPLY #19957 /* ~"Soviel hab' ich nicht."~ */ GOTO 14
  IF ~  PartyGoldGT(199)
~ THEN REPLY #19958 /* ~"In Ordnung. Da hast du."~ */ DO ~TakePartyGold(200)
~ GOTO 22
  IF ~~ THEN REPLY #19959 /* ~"Dann vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #19960 /* ~Er nimmt das Geld und zählt es sorgfältig. Als er sich schließlich davon überzeugt hat, daß du auch nicht eine Münze unterschlagen hast, öffnet er dir das Tor. "Vergiß nicht, Dussel... hier wieder rauszukommen kostet dich noch mal das gleiche!"
~ */
  IF ~~ THEN REPLY #19961 /* ~"Jaja, wie du meinst."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19962 /* ~"Ich werd mehr als genug haben, da bin ich mir sicher."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
!Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #19963 /* ~Der Wächter richtet sich leicht auf. "Hast du genug Geld für den Wegzoll?"~ */
  IF ~~ THEN REPLY #19965 /* ~"Wegzoll? Wieviel?"~ */ GOTO 25
  IF ~~ THEN REPLY #19966 /* ~"Ich wußte nicht, daß man hier Wegzoll zahlen muß."~ */ GOTO 24
  IF ~~ THEN REPLY #19967 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #19964 /* ~"Viele Leute wissen nichts davon, aber es gibt ihn."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19968 /* ~"Um wieviel handelt es sich?"~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19969 /* ~"Um wieviel handelt es sich?"~ */ GOTO 26
  IF ~~ THEN REPLY #19970 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #19971 /* ~"Für dich? Fünfzig Münzen."~ */
  IF ~~ THEN REPLY #19972 /* ~"Fünfzig? Ich weiß nicht, ob ich soviel zahlen möchte."~ */ GOTO 14
  IF ~~ THEN REPLY #19973 /* ~"Ich denke, das kann ich zahlen."~ */ GOTO 10
  IF ~~ THEN REPLY #19974 /* ~"Dann vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #19975 /* ~"Für dich? Hundert Münzen."
~ */
  IF ~~ THEN REPLY #19976 /* ~"Hundert? Ich weiß nicht, ob ich soviel zahlen will."~ */ GOTO 14
  IF ~~ THEN REPLY #19977 /* ~"Ich denke, das kann ich zahlen."~ */ GOTO 12
  IF ~~ THEN REPLY #19978 /* ~"Dann vergiß es."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 30.2 31.0 32.1 33.0 34.0 35.0 37.0 38.0
  SAY #19979 /* ~"Was willst du diesmal?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19980 /* ~"Pharod hat mir gestattet, die Katakomben zu betreten. Mach mir also das Tor auf."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19981 /* ~"Was befindet sich hinter dem Tor?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19982 /* ~"Was befindet sich hinter dem Tor?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19983 /* ~"Ich will wieder runter gehen."~ */ GOTO 36
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19984 /* ~"Was kannst du mir über das Gebiet dahinter erzählen?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19985 /* ~"Ich würde gern dort runter gelangen."~ */ GOTO 35
  IF ~~ THEN REPLY #19986 /* ~"Wer bist du?"~ */ GOTO 37
  IF ~~ THEN REPLY #19987 /* ~"Was machst du da?"~ */ GOTO 38
  IF ~~ THEN REPLY #19988 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 28 // from:
  SAY #19989 /* ~Du siehst einen massigen Menschen mit alten, geflickten Kleidern, der nach abgestandenem Bier riecht. Er ist wirklich riesig - es ist nicht zu übersehen, daß er wegen seiner Muskeln und nicht wegen seiner Intelligenz für diesen Job ausgewählt wurde. "Was willst du?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19990 /* ~"Pharod hat mir gestattet, die Katakomben zu betreten. Mach mir also das Tor auf."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19991 /* ~"Was befindet sich hinter dem Tor?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19992 /* ~"Was befindet sich hinter dem Tor?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19993 /* ~"Was kannst du mir über das Gebiet dahinter erzählen?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19994 /* ~"Ich würde gern dort runter gelangen."~ */ GOTO 35
  IF ~~ THEN REPLY #19995 /* ~"Wer bist du?"~ */ GOTO 37
  IF ~~ THEN REPLY #19996 /* ~"Was machst du da?"~ */ GOTO 38
  IF ~~ THEN REPLY #19997 /* ~"Nichts. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #19998 /* ~Er öffnet die Torflügel. "Dann mach hinne, Dussel, und verschwende nicht unsere Zeit."~ */
  IF ~~ THEN REPLY #19999 /* ~"Leb wohl."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 27.4 28.1 28.3
  SAY #20000 /* ~"Die Katakomben der Weinenden Steine. Viele Totenbüchler, viele Gruften zum Ausräumen."~ */
  IF ~~ THEN REPLY #20001 /* ~"Warum nennt man sie die Katakomben der Weinenden Steine?"~ */ GOTO 31
  IF ~~ THEN REPLY #20002 /* ~"Kannst du mir irgendwas Genaues darüber erzählen?"~ */ GOTO 32
  IF ~~ THEN REPLY #20003 /* ~"Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 27
  IF ~~ THEN REPLY #20004 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #20005 /* ~"Von oben tropft viel Wasser runter. Sieht aus, als ob die Mauern weinen. Deshalb der Name."~ */
  IF ~~ THEN REPLY #20006 /* ~"Ah, verstanden. Kannst du mir noch ein paar Fragen beantworten?"~ */ GOTO 27
  IF ~~ THEN REPLY #20007 /* ~"Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #20008 /* ~"Nicht viel. Bin selbst nur ein oder zwei mal da runter gegangen... meistens machen sich andere da unten auf die Suche nach Leichen. Gris hat am meisten geräubert, und wir glauben, daß er von irgendwas da unten gefangen und ins Totenbuch gesteckt wurde."
~ */
  IF ~~ THEN REPLY #20009 /* ~"Gris?"~ */ GOTO 33
  IF ~~ THEN REPLY #20010 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 27
  IF ~~ THEN REPLY #20011 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #20012 /* ~"Ja, 'Gris, der Geier'. Er und zwei seiner Jungs sind vor ein paar Hochständen da runter gegangen, und danach hat sie keiner mehr gesehen. Wenn du seine Leiche findest, bring sie mit zurück." Er lächelt dich hinterhältig an. "Wir können sie für Klimper an die Staubies verkaufen."
~ */
  IF ~~ THEN REPLY #20013 /* ~"Ha. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 27
  IF ~~ THEN REPLY #20014 /* ~"Stimmt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.2 28.2
  SAY #20015 /* ~Der Wächter schaut dich einen Moment lang an und grinst höhnisch. "Das Schlafgemach deiner Mutter. Wir mußten das Tor schließlich geschlossen halten, weil der Verkehr einfach zuviel wurde, verstehste?" Er brüllt vor Lachen. "Zieh Leine, bevor du den Totenbüchlern da unten Gesellschaft leistest."~ */
  IF ~~ THEN REPLY #20016 /* ~"Beantworte mir nur noch ein paar Fragen..."~ */ GOTO 27
  IF ~~ THEN REPLY #20017 /* ~"Okay."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.5 28.4
  SAY #20018 /* ~Der Wächter wirft dir einen Blick zu, dann schüttelt er den Kopf. "Ja, ja... wir betteln alle, da runter gehen zu dürfen. Hör zu. Du bist definitiv nicht aus dieser Gegend. Zieh Leine."~ */
  IF ~~ THEN REPLY #20019 /* ~"Dann beantworte mir nur noch ein paar Fragen..."~ */ GOTO 27
  IF ~~ THEN REPLY #20020 /* ~"Gut."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 27.3
  SAY #20021 /* ~Er schaut dich an und öffnet wortlos das Tor.~ */
  IF ~~ THEN REPLY #20022 /* ~"Leb wohl."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 27.6 28.5
  SAY #20023 /* ~"Geht dich einen feuchten Kehricht an. Zieh Leine."~ */
  IF ~~ THEN REPLY #20024 /* ~"Beantworte mir zunächst die eine oder andere Frage..."~ */ GOTO 27
  IF ~~ THEN REPLY #20025 /* ~"Danke... mein Freund."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 27.7 28.6
  SAY #20026 /* ~"Wie sieht das wohl aus, was ich hier tue? Deine Unterwäsche waschen? Mach dich vom Acker, du blöder Dussel!"~ */
  IF ~~ THEN REPLY #20027 /* ~"Nur noch eine weitere Frage..."~ */ GOTO 27
  IF ~~ THEN REPLY #20028 /* ~"Ja ja."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Open_Door","AR0109",0)
~ THEN BEGIN 39 // from:
  SAY #56027 /* ~"Das Tor ist im Moment nicht verschlossen, ihr braucht mich also nicht zu stören."~ */
  IF ~~ THEN REPLY #56028 /* ~Geh weg.~ */ EXIT
END
