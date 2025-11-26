// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DELI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #31866 /* ~Der Mann mit den schlitzförmigen Augen und scharfen Gesichtszügen beobachtet seine Umgebung mit leicht desinteressiertem Blick. Gelegentlich schaut er nach unten und pult an seinen Fingernägeln. Obwohl er in Seide und Samt gehüllt ist, sieht er unangenehm und mehr als ein bißchen gefährlich aus.~ */
  IF ~~ THEN REPLY #31937 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #31938 /* ~Laß den Mann in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2911 /* ~Der Mann schaut in deine Richtung. Seine Augen sind dunkle Schlitze, wie dünne Stichwunden unter seinen Augenbrauen. Seine Stimme ist trotz seiner schlanken Figur tief und rauh. "Zieh Leine."~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31939 /* ~"Gleich. Bist du Eli Sonnenhut?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31940 /* ~"Gleich. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #31941 /* ~"Wenn ich du wäre, würde ich meine Klappe nicht so weit aufreißen."~ */ GOTO 3
  IF ~~ THEN REPLY #31942 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 21.1
  SAY #31868 /* ~"Glaubst du, daß ich hier durch den Bezirk laufe, um von Fremden angequatscht zu werden? Zieh Leine."~ */
  IF ~  CheckStatGT(Protagonist,8,CHR)
~ THEN REPLY #31943 /* ~"Warum *bist* du dann hier? Um mürrisch aus der Wäsche zu gucken?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,9,CHR)
~ THEN REPLY #31944 /* ~"Warum *bist* du dann hier? Um mürrisch aus der Wäsche zu gucken?"~ */ GOTO 3
  IF ~~ THEN REPLY #31945 /* ~"Wenn ich du wäre, würde ich meine Klappe nicht so weit aufreißen."~ */ GOTO 3
  IF ~~ THEN REPLY #31946 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 2.2
  SAY #31870 /* ~Er ignoriert dich ganz offensichtlich.~ */
  IF ~~ THEN REPLY #31947 /* ~Schnapp ihn und schüttle ihn ein bißchen hin und her, um ihn zum Antworten zu bewegen.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31948 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #31871 /* ~"He." Er bleibt einen Moment stehen, dann zeigt sich ein schiefes Lächeln auf seinem Gesicht. "Gute Antwort." Er mustert dich kurz. "Ich bin Lehrer in der Städtischen Festhalle. Mein Name ist Sonnenhut, Eli Sonnenhut. Als Späherveteran unterrichte ich die Kunst der Täuschung."~ */
  IF ~~ THEN REPLY #31949 /* ~"Meinst du damit Diebstahl?"~ */ GOTO 5
  IF ~~ THEN REPLY #31950 /* ~"Könntest du mich unterrichten?"~ */ GOTO 6
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65427 /* ~"Du bist der Lehrer der Festhallendiebe? Hör zu... Qui-Sai will mich nicht zum Krieger ausbilden. Er sagt, ich könne nur die Waffe des Gegners stehlen und ihn wehrlos machen. Was meinst du?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #65428 /* ~"Du bist der Lehrer der Festhallendiebe? Hör zu... Qui-Sai will mich nicht zum Krieger ausbilden... Er sagt, ich könne mich vor den Feinden verstecken und dadurch unverwundbar werden. Was meinst du?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31951 /* ~"Aha. Leb wohl, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 20.2
  SAY #28796 /* ~Seine Lippen verziehen sich zu einem empörten Grinsen. "Immer heißt es *Diebe* und *Diebstahl*! Fünf Touren habe ich als Aufklärer im Krieg der Lügen hinter mich gebracht. Späher ist mein Titel... *Späher*. Ich lehre List und Spionierkunst, nicht den gemeinen Diebstahl."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31952 /* ~"Entschuldigung. Ich wollte dich nicht beleidigen. Könntest du mich unterrichten?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31953 /* ~"Könntest du mich trotzdem unterrichten?"~ */ GOTO 11
  IF ~~ THEN REPLY #31954 /* ~"Aha. Leb wohl, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 22.3
  SAY #31872 /* ~Eli runzelt mürrisch die Stirn. "Ich weiß nicht so recht. Ich habe eigentlich erstmal die Nase voll, mickrige Taschendiebe und neugierige Sinnsaten auszubilden." Mehr zu sich selbst murmelt er: "Weiß auch nicht, warum ich mich überhaupt mal darauf eingelassen habe."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31955 /* ~"Vielleicht wolltest du anderen, daß du sie unterrichtest, damit zeigen, was du alles kannst."~ */ GOTO 7
  IF ~~ THEN REPLY #31956 /* ~"Was könnte ich tun, damit du mich doch unterrichtest?"~ */ GOTO 12
  IF ~~ THEN REPLY #31957 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31873 /* ~"Hmm..."~ */
  IF ~~ THEN REPLY #31958 /* ~"Außerdem hast du ihnen damit bewiesen, daß du kein gewöhnlicher Dieb bist, sondern ein Späher und ein Spion, ja, ein Meister der Täuschung."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31883 /* ~Eli nickt, während er über das nachdenkt, was du gesagt hast. "Ja... ich kann es nicht leugnen. Aber es ist schon traurig, wenn man es so betrachtet."~ */
  IF ~~ THEN REPLY #31959 /* ~"Das würde ich nicht sagen. Leute wie du werden oft mißverstanden und mit Wegelagerern und Straßenräubern in einen Topf geworfen. Es ist doch gut, wenn man falsche Vorstellungen korrigieren kann."~ */ GOTO 10
  IF ~~ THEN REPLY #31960 /* ~"Du hast recht, das ist sehr traurig."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #31884 /* ~Seine Augenbrauen schnellen vor Überraschung in die Höhe. Dann runzelt er sie voller Wut. "Du suchst wohl Streit? Geh im Schatten der Dame spielen, Dussel. Zieh Leine!"~ */
  IF ~~ THEN REPLY #31961 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #31885 /* ~"He! Du hast schon wieder recht." Er boxt dich freundschaftlich in die Schulter. "Danke, Vollblut." Plötzlich blickt er in die Ferne. "Nun... ich habe schon genug Zeit verschwendet. Ich geh zurück zur Festhalle. Wenn du immer noch Unterricht haben willst, findest du mich dort."
~ */
  IF ~~ THEN REPLY #31962 /* ~"Dann vielleicht bis später, Eli. Leb wohl."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY #31886 /* ~"Nein... mir steht's im Moment bis hier, mickrige Taschendiebe und Möchtegern-Räuber auszubilden."~ */
  IF ~~ THEN REPLY #31963 /* ~"Was könnte ich tun, damit du mich doch unterrichtest?"~ */ GOTO 12
  IF ~~ THEN REPLY #31964 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 11.0
  SAY #31887 /* ~Er verzieht seine Lippen und blickt gen Himmel. "Hmm... alles Mögliche, wenn ich's mir so überlege." Er schaut dir geradewegs in die Augen. "Ich will's für dich aber einfach machen: gib mir Klimper. Du willst Unterricht, also berappst du. Ich werde der Dame was husten, noch mal einen Dussel kostenlos auszubilden!"~ */
  IF ~~ THEN REPLY #31965 /* ~"Wieviel willst du?"~ */ GOTO 13
  IF ~~ THEN REPLY #31966 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31888 /* ~Eli zuckt die Schultern. "Zum Teufel, wenn ich das wüßte. Fünfhundert Kupfermünzen. Ja. Das klingt vernünftig... Ich *bin* ein Späherveteran, weißt du... fünf Touren im Krieg der Lügen hab' ich abgeleistet! Das ist viel Erfahrung, die ich weitergeben kann..."~ */
  IF ~~ THEN REPLY #31971 /* ~"Abgemacht."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31972 /* ~"Ich geb dir dreihundert."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31973 /* ~"Ich geb dir dreihundert."~ */ GOTO 14
  IF ~~ THEN REPLY #31975 /* ~"Ich geb dir zweihundert."~ */ GOTO 15
  IF ~~ THEN REPLY #31978 /* ~"Vergiß es. Leb wohl."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.2 15.1
  SAY #31889 /* ~Er schüttelt den Kopf. "Nein. Fünfhundert will ich, fünfhundert bezahlst du."~ */
  IF ~~ THEN REPLY #31979 /* ~"Okay, abgemacht."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~~ THEN REPLY #31980 /* ~"Dann vergiß es. Leb wohl."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.3
  SAY #31890 /* ~Er verdreht die Augen. "Spinnst du, Dussel? Nein, zum Teufel! Fünfhundert und keine Münze weniger."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #31981 /* ~"Okay, ich geb dir dreihundert."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #31982 /* ~"Okay, ich geb dir dreihundert."~ */ GOTO 14
  IF ~~ THEN REPLY #31983 /* ~"Dann vergiß es. Leb wohl."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.4 14.1 15.2 17.1 23.1
  SAY #31891 /* ~"Falls du wiederkommst, kennst du ja den Preis: fünfhundert Kupfermünzen. Leb wohl, Schleifer."~ */
  IF ~~ THEN REPLY #31984 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 15.0
  SAY #31892 /* ~"Abgemacht." Ihr schlagt ein. "Hast du's dabei?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #31985 /* ~"Ja... bitte."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #31986 /* ~"Nein... "~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #31987 /* ~"Ja... bitte."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #31988 /* ~"Nein... "~ */ GOTO 19
  IF ~~ THEN REPLY #31989 /* ~"Eigentlich will ich jetzt noch nicht unterrichtet werden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.2 23.0 23.2
  SAY #31893 /* ~Er nimmt die Kupfermünzen und steckt sie in seine Tunika. "Komm zur Städtischen Festhalle. Dort erhältst du deinen Unterricht. Bis dann. Leb wohl, Schleifer."~ */
  IF ~~ THEN REPLY #31990 /* ~"Bis später, Eli. Leb wohl."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.3 23.3
  SAY #31894 /* ~"Falls du wiederkommst, kennst du ja den Preis: dreihundert Kupfermünzen. Leb wohl, Schleifer."~ */
  IF ~~ THEN REPLY #31991 /* ~"Leb wohl, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.0 21.0
  SAY #31895 /* ~Er grinst. "Ja, der bin ich..."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31992 /* ~"Qui-Sai will aus mir keinen Krieger machen... er sagt, ich könnte einfach die Waffe eines Gegners stehlen und ihn so wehrlos machen. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #31993 /* ~"Qui-Sai will mich immer noch nicht zum Krieger machen... er sagt, ich könnte mich vor Feinden verstecken und dadurch unverwundbar werden. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31994 /* ~"Könntest du mich zum Dieb machen?"~ */ GOTO 5
  IF ~~ THEN REPLY #31995 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedToGT(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #31896 /* ~Der Mann mit den schlitzförmigen Augen und scharfen Gesichtszügen beobachtet seine Umgebung mit leicht desinteressiertem Blick. Er sieht, wie du näherkommst, und wendet sich dir zu. "Latscht du immer noch hier rum?" Er runzelt die Stirn. "Was willst du?"~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31996 /* ~"Bist du vielleicht Eli Sonnenhut?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31997 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #31998 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #31899 /* ~Eli sieht, wie du näherkommst, aber sein Gesichtsausdruck ist nicht zu entschlüsseln. Du fragst dich, ob er dich durch seine schmalen, schwarzen Augen überhaupt sehen kann. "Hmm?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31999 /* ~"Qui-Sai will aus mir keinen Krieger machen... er sagt, ich könnte einfach die Waffe eines Gegners stehlen und ihn so wehrlos machen. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32000 /* ~"Qui-Sai will mich immer noch nicht zum Krieger machen... er sagt, ich könnte mich vor Feinden verstecken und dadurch unverwundbar werden. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"Eli... könntest du mich unterrichten?"~ */ GOTO 23
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"Eli... könntest du mich unterrichten?"~ */ GOTO 6
  IF ~~ THEN REPLY #32002 /* ~"Komm nur gerade zufällig vorbei. Leb wohl, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.2
  SAY #31903 /* ~"Hast du den Klimper?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #32003 /* ~"Alle fünhundert Kupfermünzen... hier, bitte."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #32004 /* ~"Nein... "~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #32005 /* ~"Alle dreihundert Kupfermünzen... hier, bitte."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #32006 /* ~"Nein... "~ */ GOTO 19
  IF ~~ THEN REPLY #32007 /* ~"Eigentlich will ich jetzt noch nicht unterrichtet werden. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31904 /* ~"Ich gehe jetzt zum Ausbildungsraum der Späher in der Städtischen Festhalle, Schleifer. Wenn du reden oder was lernen willst, findest du mich dort. Leb wohl."~ */
  IF ~~ THEN REPLY #32008 /* ~"Leb wohl, Eli."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #31906 /* ~"Hossa, sieh einer an, wer da ist!" Eli lächelt dich verschlagen an. "Willkommen in meinem Revier, Schleifer. Bist du bereit, mit dem Unterricht zu beginnen?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32009 /* ~"Nein. Qui-Sai will mich nicht zum Krieger machen... er sagt, ich könnte doch einfach die Waffe eines Gegners stehlen und dann ist er wehrlos. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32010 /* ~"Nein. Qui-Sai will mich immer noch nicht zum Krieger machen... er sagt, ich könnte mich vor Feinden verstecken und dadurch unverwundbar werden. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #32011 /* ~"Ja."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #32012 /* ~"Ja."~ */ GOTO 26
  IF ~~ THEN REPLY #32013 /* ~"Noch nicht, Eli. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.3 49.3
  SAY #31907 /* ~"Gut gut. Hier... versuch mal, mir das zu klauen, Schleifer." Er streckt den Arm aus. In seiner Hand liegt eine einzelne Kupfermünze.~ */
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32014 /* ~Reiß die Kupfermünze an dich.~ */ DO ~GiveGoldForce(1)
SetGlobal("Eli","GLOBAL",4)
~ GOTO 27
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32015 /* ~Schnapp dir die Münze.~ */ DO ~SetGlobal("Eli","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32016 /* ~Greif nach der Münze.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31908 /* ~Deine Hand schnellt vor und du reißt die Münze mit einer solchen Schnelligkeit an dich, daß du genauso überrumpelt bist wie Eli. "Meine Güte! Du bist schneller als man es vermuten würde, Schleifer..."~ */
  IF ~~ THEN REPLY #32017 /* ~"Danke."~ */ GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #31909 /* ~Du streckst deine Hand aus... aber Eli ist zu schnell. "Nicht schlecht, Schleifer. Wir werden weiterüben."~ */
  IF ~~ THEN REPLY #32018 /* ~"Na gut..."~ */ GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #31910 /* ~Du startest einen lachhaften Versuch, Eli die Münze aus der Hand zu reißen. Er runzelt die Stirn und schüttelt dann traurig den Kopf.~ */
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32019 /* ~"Was?"~ */ GOTO 30
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32020 /* ~"Was?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #31911 /* ~"Sorry, Schleifer... ich sage dir das wirklich nicht gerne, aber du bist einfach zu langsam, um in diesem Beruf was zu werden. Aber ich wünsche dir viel Glück bei was auch immer du sonst versuchst... leb wohl."~ */
  IF ~~ THEN REPLY #32021 /* ~"Oh... dann leb wohl, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #31912 /* ~"Sorry, Schleifer... ich sage dir das wirklich nicht gerne, aber du bist einfach zu langsam, um in diesem Beruf was zu werden. Hör zu: es wäre nicht richtig, wenn ich deinen Klimper annehmen würde, also hier... da hast du ihn zurück. Ich wünsche dir viel Glück bei was auch immer du sonst versuchst... leb wohl."~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
~ THEN REPLY #32022 /* ~"Oh... dann leb wohl, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(500)
~ EXIT
  IF ~  Global("CW_Thief_Train","AR0600",2)
~ THEN REPLY #32023 /* ~"Oh... dann leb wohl, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(300)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 40.0
  SAY #31913 /* ~"Der Unterricht kann beginnen, Schleifer. Ich werde dir die sechs grundlegenden Künste der Täuschung beibringen: wie man sich unbemerkt bewegt, wie man sich in Schatten verbirgt, das Knacken von Schlössern, Taschendiebstahl, das Erkennen und Entfernen von Fallen und wie man einen Feind überfällt, indem man ihn aus dem Hinterhalt angreift."~ */
  IF ~~ THEN REPLY #32024 /* ~"Erzähl weiter..."
~ */ GOTO 33
  IF ~~ THEN REPLY #32025 /* ~"Ich kenne die Grundlagen, Eli. Laß uns mit dem Unterricht beginnen."~ */ GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #31914 /* ~"Die Fähigkeit, sich geräuschlos, in Schatten verborgen zu bewegen, ist sehr nützlich. Viele Feinde kann man von vornherein vermeiden, wenn man sich aus ihrem Blickfeld hält. Außerdem hat der Späher durch den Angriff aus dem Hinterhalt einen großen Vorteil, wie ich später erklären werde. Aber vergiß nicht, Schleifer: ein Späher kann sich nicht verstecken, wenn der Feind ihn schon gesehen hat."
~ */
  IF ~~ THEN REPLY #32026 /* ~"Erzähl weiter..."~ */ GOTO 34
  IF ~~ THEN REPLY #32027 /* ~"Ich kenne die Grundlagen, Eli. Laß uns mit dem Unterricht beginnen."~ */ GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31915 /* ~"Oftmals wird ein Späher vor einem verschlossenen Portal stehen oder nicht an wichtige Gegenstände oder Dokumente herankommen, weil sie sich in verschlossenen Behältern befinden. Dann ist es sehr praktisch, Schlösser knacken zu können. Es ist jedoch ratsam, solche Schlösser immer auf Fallen zu untersuchen. Darüber komme ich später noch mal zurück."~ */
  IF ~~ THEN REPLY #32028 /* ~"Erzähl weiter..."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #31916 /* ~"Manchmal trägt ein Feind einen Gegenstand oder ein Dokument bei sich, daß für die Mission des Spähers unerläßlich ist. In solchen Fällen muß der Späher auf den Taschendiebstahl zurückgreifen. Er muß sich anschleichen und der Person das Objekt direkt entwenden. Ein Späher muß aber auch immer darauf vorbereitet sein, zu kämpfen oder zu fliehen, falls sein Versuch scheitert."~ */
  IF ~~ THEN REPLY #32029 /* ~"Erzähl weiter..."~ */ GOTO 36
  IF ~~ THEN REPLY #32030 /* ~"Ich kenne die Grundlagen, Eli. Laß uns mit dem Unterricht beginnen."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #31917 /* ~"Oftmals wird ein Späher in die Situation kommen, daß seine Feinde in Bereichen oder Behältern, die er durchqueren bzw. öffnen muß, Fallen aufgestellt haben. Solche Fallen sind immer gut versteckt. Der Späher muß sich dem Bereich oder Behälter vorsichtig nähern und sein Können einsetzen, um nach etwas Verdächtigem Ausschau zu halten. Hab' Geduld... manchmal kann es eine Weile dauern, bis man eine Falle erkennt."~ */
  IF ~~ THEN REPLY #32031 /* ~"Erzähl weiter..."~ */ GOTO 37
  IF ~~ THEN REPLY #32032 /* ~"Ich kenne die Grundlagen, Eli. Laß uns mit dem Unterricht beginnen."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31918 /* ~"Wenn ein Späher eine solche Falle *findet*, muß er sie entweder umgehen oder versuchen, sie unschädlich zu machen. Beim Zerlegen einer Falle muß er jedoch äußerste Vorsicht walten lassen, da immer die Gefahr besteht, daß die Falle durch seine Manipulation ausgelöst wird."~ */
  IF ~~ THEN REPLY #32033 /* ~"Erzähl weiter..."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #31919 /* ~"Zum Schluß werde ich dir den letzten Schachzug des Spähers beibringen... den Angriff aus dem Hinterhalt. Wenn ein Späher, der sich noch im Hinterhalt befindet, auf einen Feind trifft und diesen angreift, wird sein erster Schlag gezielter sein und den Feind wahrscheinlich *härter* treffen. In dem Maß, in dem der Späher erfahrener wird, wird er auch immer tödlicher, wenn er aus den Schatten zuschlägt. Aber vergiß nicht: Hat ein Späher erst einmal aus dem Hinterhalt angegriffen, hat er sich auch seinem Feind zu erkennen gegeben."~ */
  IF ~~ THEN REPLY #32034 /* ~"Okay. Dann laß uns mit dem Unterricht beginnen."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 32.1 33.1 35.1 36.1 38.0
  SAY #31920 /* ~Eli nickt. "Gut, Schleifer... zuerst mußt du dich entspannen. Du bist zu angespannt. Manchmal wirst du dich auf deinen Instinkt, auf dein Gefühl verlassen müssen..."

Und so beginnt deine Ausbildung zum Dieb.
~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32035 /* ~Lerne soviel wie nur irgend möglich.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Ich hab mich von einem Mann namens Eli Sonnenhut, dem Lehrmeister der Diebe - oder 'Späher', wie er sich ausdrückt - in der Städtischen Festhalle zum Dieb ausbilden lassen.~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #32036 /* ~Lerne soviel wie nur irgend möglich.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Ich hab mich von einem Mann namens Eli Sonnenhut, dem Lehrmeister der Diebe - oder 'Späher', wie er sich ausdrückt - in der Städtischen Festhalle zum Dieb ausbilden lassen.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32037 /* ~Lerne soviel wie nur irgend möglich.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Ich hab mich von einem Mann namens Eli Sonnenhut, dem Lehrmeister der Diebe - oder 'Späher', wie er sich ausdrückt - in der Städtischen Festhalle zum Dieb ausbilden lassen.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32038 /* ~Lerne soviel wie nur irgend möglich.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Ich hab mich von einem Mann namens Eli Sonnenhut, dem Lehrmeister der Diebe - oder 'Späher', wie er sich ausdrückt - in der Städtischen Festhalle zum Dieb ausbilden lassen.~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 27.0 28.0
  SAY #31921 /* ~Eli nickt. "Also, dir ist klar, daß du deinen derzeitigen Beruf aufgeben mußt, ja? Bist du dazu bereit?"~ */
  IF ~~ THEN REPLY #32039 /* ~"Ja."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 32
  IF ~~ THEN REPLY #32040 /* ~"Nein, aber vielleicht ein anderes Mal... Leb wohl, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0
  SAY #31922 /* ~Nach vielen Unterrichtsstunden nickt Eli dir zufrieden zu. "Ich muß sagen, Schleifer, ich bin noch nie jemandem begegnet, der so schnell lernt wie du. Man könnte fast meinen, daß du das nicht zum ersten Mal lernst!"~ */
  IF ~~ THEN REPLY #32041 /* ~"Ja, vielleicht habe ich's ja schon mal gelernt und nur wieder vergessen. Danke und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #31923 /* ~Nach vielen Unterrichtsstunden nickt Eli dir zufrieden zu. "Ich muß sagen, Schleifer, ich bin noch nie jemandem begegnet, der so schnell lernt wie du. Man könnte fast meinen, daß du das nicht zum ersten Mal lernst!" Während Eli spricht, wird dir plötzlich klar, daß du das *tatsächlich* schon mal gelernt hast... daß du zu einer Zeit all diese Fähigkeiten besessen hast, und daß du dich durch den Unterricht wieder daran erinnert hast.~ */
  IF ~~ THEN REPLY #32042 /* ~"Ja, vielleicht habe ich's ja schon mal gelernt und nur wieder vergessen. Danke und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 39.2 39.3
  SAY #31924 /* ~Nach vielen Unterrichtsstunden nickt Eli dir zufrieden zu. "Ich muß sagen, Schleifer, ich bin noch nie jemandem begegnet, der so schnell lernt wie du. Man könnte fast meinen, daß du das nicht zum ersten Mal lernst!" Während Eli spricht, wird dir plötzlich klar, daß du das *tatsächlich* schon mal gelernt hast... daß du zu einer Zeit all diese Fähigkeiten besessen hast.~ */
  IF ~~ THEN REPLY #32043 /* ~"Ja, vielleicht habe ich's ja schon mal gelernt und nur wieder vergessen. Danke und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #31925 /* ~Als verblaßte Erinnerungen an das Lauern in dunklen Gängen und das Umgehen von Fallen schärfer werden, kannst du dich an genug erinnern, um 'mehr' zu lernen als das, was Eli dir beigebracht hat.~ */
  IF ~~ THEN REPLY #32044 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 25.2 49.2
  SAY #31926 /* ~"Ich kann dir nicht viel beibringen, wenn du schon einmal unterrichtet worden bist, Schleifer. Aber wenn du vom Weg der Späher abgekommen bist, kann ich dich jederzeit wieder auf den rechten Weg zurückbringen."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32045 /* ~"Ich möchte die Kunst der Täuschung gern noch einmal lernen, Eli."~ */ GOTO 46
  IF ~~ THEN REPLY #32046 /* ~"Okay. Leb wohl, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #31927 /* ~"Dir ist doch klar, daß du deinen derzeitigen Beruf aufgeben mußt, oder? Bist du dazu bereit?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #32047 /* ~"Ja. Ich möchte kein Krieger mehr sein."~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #32048 /* ~"Ja. Ich möchte kein Magier mehr sein."~ */ GOTO 47
  IF ~~ THEN REPLY #32049 /* ~"Im Moment eigentlich nicht. Leb wohl, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #31928 /* ~"Gut! Laß uns mit dem Unterricht beginnen... und deine vernachlässigten Fähigkeiten wieder auf Vordermann bringen!"~ */
  IF ~~ THEN REPLY #32050 /* ~Erlerne wieder die Kunst des Diebstahls.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31929 /* ~"Du lernst schnell, Schleifer, das muß ich sagen." Er schaut dich neugierig aus den dunklen Schlitzen seiner Augen an, dann schüttelt er den Kopf. "Nun, das ist alles. Du bist jetzt wieder ein Dieb."~ */
  IF ~~ THEN REPLY #32051 /* ~"Danke, Eli. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",5)
~ THEN BEGIN 49 // from:
  SAY #31930 /* ~Eli hält inne und nickt dir zu. "Hallo, Schleifer. Brauchst du was?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32052 /* ~"Qui-Sai will aus mir keinen Krieger machen... er sagt, ich könnte einfach die Waffe eines Gegners stehlen und ihn so wehrlos machen. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32053 /* ~"Qui-Sai will mich immer noch nicht zum Krieger machen... er sagt, ich könnte mich vor Feinden verstecken und dadurch unverwundbar werden. Was meinst du dazu?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #64675 /* ~"Ja... Ich wollte versuchen, wieder mit dir zu trainieren."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #64676 /* ~"Ja... Ich wollte versuchen, wieder mit dir zu trainieren."~ */ GOTO 26
  IF ~~ THEN REPLY #32054 /* ~"Nö... komm nur gerade zufällig vorbei. Leb wohl, Eli."~ */ EXIT
END

IF WEIGHT #0 ~  Global("CW_PP_Eli","GLOBAL",1)
!Global("Eli","GLOBAL",4)
~ THEN BEGIN 50 // from:
  SAY #31931 /* ~Der Mann zeigt mit dem Finger auf dich. "Paß auf, was du da tust, Dussel... die meisten Vollblüter würden dich töten oder dafür die Dickschädel rufen. Jetzt zieh Leine, bevor ich's mir anders überlege und mein Schwert ziehe."~ */
  IF ~~ THEN REPLY #32055 /* ~"Dann zieh doch dein Schwert! Dann kann ich's dir wenigstens in den Schädel rammen!"~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32056 /* ~Geh.~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ EXIT
END

IF WEIGHT #1 ~  Global("CW_PP_Eli","GLOBAL",1)
Global("Eli","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #31932 /* ~Eli lacht scharf auf und schüttelt den Kopf. "Nicht schlecht, Schleifer... wirklich nicht schlecht."~ */
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",0)
~ THEN REPLY #32057 /* ~"Äh... danke."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
SetGlobal("CW_PP_Training","AR0601",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 52
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32058 /* ~"Ähh... danke."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",1)
~ THEN REPLY #32059 /* ~"Ähh... danke."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26793 /* ~"Deine Hände müssen flinker werden. Schnell rein in die Tasche und raus aus der Tasche ... Oder du wirst auf jeden Fall abgemurkst."~ */
  IF ~~ THEN REPLY #32060 /* ~"Danke, Eli. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1 51.2
  SAY #31934 /* ~"Schon gut... und jetzt hör auf, bevor du mich hier völlig annervst."
~ */
  IF ~~ THEN REPLY #32061 /* ~"Leb wohl, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.2 20.0 22.0 25.0 49.0
  SAY #31935 /* ~Er schüttelt den Kopf. "Das ist Blödsinn, Schleifer. Selbst ich muß zugeben, daß immer noch der Kampf ausgefochten werden muß. Sich alleine auf's Stehlen zu verlassen ist ein Fehler."~ */
  IF ~~ THEN REPLY #32062 /* ~"Danke, Eli. Leb wohl."~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
~ JOURNAL #66575 /* ~Qui-Sai hat abgelehnt, mich als Krieger zu trainieren, und behauptet, daß ein Dieb immer die Waffen seines Gegners stehlen und so einen Kampf vermeiden könnte. Ich habe aber mit Eli Sonnenhut, dem Lehrer für Diebe in der Städtischen Festhalle, gesprochen. Er hat mir erklärt, daß der Kampf trotzdem stattfinden wird und daß es ein Fehler ist, sich so auf den Diebstahl zu verlassen. Dann hat er mir erklärt, daß List und Verstecken nicht jeden Kampf vermeiden können, besonders deshalb nicht, weil man sich vor manchen Feinden nicht verstecken kann. Das sollte ein gutes Gegenargument für Qui-Sai sein.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 4.3 20.1 22.1 25.1 49.1
  SAY #31936 /* ~Er schüttelt den Kopf. "Kein Späher, nicht einmal ich selbst, beherrscht die List so gut. Und vor manchen Feinden kann man sich nicht verbergen. Der eigene Geruch oder allein schon die Gedanken verraten einen."~ */
  IF ~~ THEN REPLY #32063 /* ~"Danke, Eli. Leb wohl."~ */ JOURNAL #66576 /* ~Qui-Sai hat abgelehnt, mich als Krieger zu trainieren, und behauptet, daß ein Dieb sich immer verstecken und so unverwundbar werden könnte. Ich habe aber mit Eli Sonnenhut, dem Lehrer für Diebe in der Städtischen Festhalle, gesprochen. Er hat mir erklärt, daß List und Verstecken nicht jeden Kampf vermeiden können, besonders deshalb nicht, weil man sich vor manchen Feinden nicht verstecken kann. Das sollte ein gutes Gegenargument für Qui-Sai sein.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.0
  SAY #65166 /* ~"Warte: Wenn Qui-Sai tut, was ich glaube, dann läßt er dich damit nicht einfach davonkommen. Wenn er dich über das Verstecken und so etwas löchert, dann sag ihm, daß kein Späher - nicht einmal ich selbst - eine solch hochgradige List entwickelt hat. Und vor manchen Feinden kann man sich nicht verstecken. Dein Geruch oder deine bloßen Gedanken würden dich verraten."~ */
  IF ~~ THEN REPLY #65167 /* ~"Verstanden. Danke noch mal, und leb wohl."~ */ EXIT
END
