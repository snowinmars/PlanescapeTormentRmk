// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAWAIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAWAIT~

IF ~  Global("Await","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1788 /* ~Vor dir steht ein junger Staubmensch mit Stoppeln auf dem Kinn und dunklen Ringen unter den Augen. Er starrt mit ernster Miene an die Wand.~ */
  IF ~~ THEN REPLY #14076 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Await","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #14077 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  Global("Await","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #1789 /* ~Du siehst Den-Tod-Erwartend. Er scheint dich nicht wahrzunehmen.~ */
  IF ~~ THEN REPLY #14078 /* ~"Sei gegrüßt."~ */ GOTO 3
  IF ~~ THEN REPLY #14079 /* ~Ignoriere ihn und geh vorbei.
~ */ EXIT
END

IF ~  Global("Await","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #14007 /* ~Als du näherkommst, dreht sich Den-Tod-Erwartend zu dir um. "Nochmals, sei gegrüßt." Auf seinem Gesicht zeigt sich ein leichtes Lächeln. "Danke für deine Hilfe."~ */
  IF ~~ THEN REPLY #14080 /* ~"War mir ein Vergnügen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #14008 /* ~Der Staubmensch sieht nicht auf. Er starrt geradeaus, als ob er etwas weit, weit hinter den Wänden der Bar sehen könnte.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",0)
~ THEN REPLY #14081 /* ~"Kann ich dich vielleicht was fragen?"~ */ DO ~SetGlobal("Morte_Await_Quip_1","GLOBAL",1)
~ GOTO 4
  IF ~  NearbyDialog("DMorte")
Global("Morte_Await_Quip_1","GLOBAL",1)
~ THEN REPLY #14082 /* ~"Kann ich dich vielleicht was fragen?"~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #14083 /* ~"Kann ich dich vielleicht was fragen?"~ */ GOTO 5
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14084 /* ~"Auf bald."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14085 /* ~"Auf bald."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14086 /* ~"Auf bald."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14087 /* ~"Auf bald."~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14009 /* ~Der Staubmensch antwortet nicht. Er starrt weiter in die Ferne.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 168
END

IF ~~ THEN BEGIN 5 // from: 3.1 3.2
  SAY #14010 /* ~Der Staubmensch antwortet nicht. Er starrt weiter in die Ferne.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",1)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14088 /* ~"Auf bald, dann."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14089 /* ~"Auf bald, dann."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14090 /* ~"Auf bald, dann."~ */ GOTO 6
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14091 /* ~"Auf bald, dann."~ */ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 3.3 3.4 3.5 5.0 5.1 5.2
  SAY #14011 /* ~Als du dich umdrehst, um zu gehen, spricht der Staubmensch plötzlich, und seine Stime ist nur ein Murmeln - du mußt dich richtig anstrengen, um seine Worte zu hören. Du *glaubst*, daß er etwas über einen Vertrag gesagt hat.~ */
  IF ~~ THEN REPLY #14092 /* ~"Was hast du gesagt?"~ */ GOTO 7
  IF ~~ THEN REPLY #14093 /* ~Ignoriere ihn und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14012 /* ~Der Staubmensch dreht sich zu dir, sein Gesicht versteinert, seine Augen tot. "Warum hast du den Todesvertrag unterschrieben?"~ */
  IF ~~ THEN REPLY #14094 /* ~Wahrheit: "Ich brauchte das Geld."~ */ GOTO 8
  IF ~~ THEN REPLY #14095 /* ~Wahrheit: "Ich wollte sehen, ob es meine Erinnerungen wachruft."~ */ GOTO 9
  IF ~~ THEN REPLY #14096 /* ~Wahrheit: "Also, angesichts der Tatsache, daß ich und der Tod uns nichts mehr zu sagen haben, habe ich gedacht, ich hätte nichts zu verlieren."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #14097 /* ~Wahrheit: "Ehrlich gesagt, ich weiß es nicht."~ */ GOTO 11
  IF ~~ THEN REPLY #14098 /* ~"Was geht dich das an?"~ */ GOTO 16
  IF ~~ THEN REPLY #14099 /* ~"Das geht dich nichts an. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14013 /* ~Er sieht angewidert aus. "Klimper. Das hätte ich mir denken können."~ */
  IF ~~ THEN REPLY #14100 /* ~"Warum sollte ich es getan haben?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #14014 /* ~"Erinnerungen wachruft?" Er runzelt die Stirn. "Und dich an nichts als dieses Leben erinnern, das du hinter dir gelassen hast?"~ */
  IF ~~ THEN REPLY #14101 /* ~"Warum sollte ich es getan haben?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #14015 /* ~Er sieht dich mit einem seltsamen Gesichtsausdruck an. "Was meinst du?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14102 /* ~"Ich habe gesehen, was nach dem Tod kommt."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14103 /* ~"Ich weiß nicht. Ich muß noch sehen, was nach dem Tode kommt, und mich daran erinnern. Vielleicht könnte ich ja davon erzählen, wenn ich noch einmal sterbe."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14104 /* ~"Ich bin schon mal gestorben. Aber ich erinnere mich nicht richtig daran."~ */ GOTO 59
  IF ~~ THEN REPLY #14105 /* ~"Ich tu's halt. Nenn's Ahnung."~ */ GOTO 57
  IF ~~ THEN REPLY #14106 /* ~"Na, egal. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #14016 /* ~Der Staubmensch räuspert sich hörbar. "Und da hast du deine Leiche völlig gedankenlos und bedenkenlos verkauft... einfach so. Hast du nach nichts anderem gesucht?"~ */
  IF ~~ THEN REPLY #14107 /* ~"Zum Beispiel...?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0 11.0
  SAY #14017 /* ~"Für eine Erlösung? Eine Erlösung von dieser Existenz. Hör mal... du hast doch sicher die Leichen gesehen, die durch die Straßen Sigils wandeln?" Er seufzt. "Hirnlos, unfähig, Schmerz oder Wut oder die Last der Jahre zu fühlen... das ist der Wahre Tod, der hier umhergeht. Das ist Vollkommenheit."~ */
  IF ~~ THEN REPLY #14108 /* ~"Warum sollte irgendjemand so was wollen?"~ */ GOTO 13
  IF ~~ THEN REPLY #14109 /* ~"'Vollkommenheit?' Schließ ab! Das ist nichts als verrottendes Fleisch."~ */ GOTO 14
  IF ~~ THEN REPLY #14110 /* ~"Du bist nicht alt, nur unwissend. Du hast dein Leben vor dir, ohne ständig nach dem Tod Ausschau zu halten. Der Tod wird dich schon noch früh genug holen - also lebe, so lange du's noch kannst."
~ */ GOTO 24
  IF ~~ THEN REPLY #14111 /* ~"Vielleicht - das kann ich nicht sagen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #14018 /* ~"Ich würde es - die Erlösung ist das, was ich anstrebe. Die Leere. Nie wieder Schmerz und Leiden."~ */
  IF ~~ THEN REPLY #14112 /* ~"Du möchtest sterben?"~ */ GOTO 22
  IF ~~ THEN REPLY #14113 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #14019 /* ~"*Wirklich*? Du siehst nur die Oberfläche, ich sehe die Erlösung von Schmerz und Elend."~ */
  IF ~~ THEN REPLY #14114 /* ~"Du möchtest sterben?"~ */ GOTO 22
  IF ~~ THEN REPLY #14115 /* ~"Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.6 5.3
  SAY #14020 /* ~Als du dich zum Gehen umdrehst, spricht der Staubmensch plötzlich mit einer kaum wahrzunehmenden, murmelnden Stimme - du mußt dich anstregen, um die Worte zu hören. Du *glaubst*, daß er etwas über jemanden gesagt hat, der sterben möchte.~ */
  IF ~~ THEN REPLY #14116 /* ~"Was hast du gesagt?"~ */ GOTO 16
  IF ~~ THEN REPLY #14117 /* ~Ignoriere ihn und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.4 15.0
  SAY #14021 /* ~Der Gesichtsausdruck des Jungen ist unbeweglich. "Möchtest du sterben?"~ */
  IF ~~ THEN REPLY #14118 /* ~Wahrheit: "Nein. Du?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",1)
~ GOTO 19
  IF ~~ THEN REPLY #14120 /* ~Wahrheit: "Ja. Du auch?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #14121 /* ~Lüge: "Ja. Du auch?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_3","GLOBALLaw",-1)
SetGlobal("Await_Die_Answer","GLOBAL",4)
~ GOTO 18
  IF ~~ THEN REPLY #14122 /* ~"Ich weiß es wirklich nicht. Willst *du* sterben?"~ */ DO ~SetGlobal("Await_Die_Answer","GLOBAL",5)
~ GOTO 22
  IF ~~ THEN REPLY #14123 /* ~"Willst du mir *drohen*, Junge?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #14124 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.4
  SAY #14022 /* ~Er blinzelt. "Ja... ja, will ich. Warum, wirst du mich töten?" Er versteift sich, als ob er einen Entschluß gefaßt hätte. "Na, mach schon, mir ist es egal."~ */
  IF ~~ THEN REPLY #14125 /* ~"Wenn dies dein Wunsch ist, werde ich ihn dir erfüllen... mach dich bereit zum Sterben."~ */ DO ~Help()
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14126 /* ~"Du *willst* sterben?"~ */ GOTO 22
  IF ~~ THEN REPLY #14127 /* ~"Mir ist es auch egal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2
  SAY #14023 /* ~"Ja..." Er sieht dich prüfend an. "Warum möchtest du sterben?"~ */
  IF ~~ THEN REPLY #14128 /* ~Wahrheit: "Wofür lohnt es sich schon zu leben? Ich bin gefangen in dieser Stadt voller Ungeheuer und Monster und kann mich nicht im geringsten erinnern, wie oder warum ich hierhergekommen bin. Ich bin ein Fremder - in dieser Stadt und gegenüber mir selbst. Das Leben hat keinen Wert für mich."~ */ GOTO 20
  IF ~~ THEN REPLY #14129 /* ~Wahrheit: "Weil es mir verwehrt ist. Deshalb strebe ich danach."
~ */ GOTO 20
  IF ~~ THEN REPLY #14130 /* ~Wahrheit: "Da fehlt etwas... in mir drin. Ich stehe hier und rede mit dir, und trotzdem fühle ich mich hohl. Was ich auch tue, ich werde dieses Gefühl nicht los. Ich denke, da wäre der Tod schon besser."~ */ GOTO 20
  IF ~~ THEN REPLY #14131 /* ~Wahrheit: "Ich denke, daß ich möglicherweise im Tod etwas lerne, was mich das Leben nicht lehren konnte."~ */ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",3)
~ THEN REPLY #14132 /* ~Wahrheit: "Ich habe gelogen, als ich gesagt habe, ich wolle sterben. Wer will das schon? Du etwa?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_7","GLOBALLaw",-2)
~ GOTO 20
  IF ~  Global("Await_Die_Answer","GLOBAL",4)
~ THEN REPLY #14133 /* ~Wahrheit: "Ich habe gelogen, als ich gesagt habe, ich wolle sterben. Wer will das schon? Du etwa?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_2","GLOBALLaw",1)
~ GOTO 20
  IF ~~ THEN REPLY #14282 /* ~"Ich will das nicht mit dir diskutieren. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #14024 /* ~"Ja..." Er sieht dich prüfend an. "Warum möchtest du leben?"~ */
  IF ~~ THEN REPLY #14134 /* ~Wahrheit: "Ich will's eben."~ */ GOTO 20
  IF ~~ THEN REPLY #14135 /* ~Wahrheit: "Überlebensinstinkt. Ich *will* leben."~ */ GOTO 20
  IF ~~ THEN REPLY #14136 /* ~Wahrheit: "Ich will noch nicht der Vergessenheit angehören. Ich finde es *viel* besser, am Leben zu sein."~ */ GOTO 20
  IF ~~ THEN REPLY #14137 /* ~Wahrheit: "Ich brauche noch die Antworten auf bestimmte Fragen, bevor ich bereit bin, mich vom Leben zu verabschieden. Ich möchte herausfinden, wer ich bin."~ */ GOTO 20
  IF ~~ THEN REPLY #14138 /* ~"Ich weiß nicht."~ */ GOTO 21
  IF ~~ THEN REPLY #14139 /* ~"Ich will das nicht mit dir diskutieren. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0 18.1 18.2 18.3 18.4 18.5 19.0 19.1 19.2 19.3
  SAY #14025 /* ~Der Staubmensch hört dir stumm zu. Als du fertig gesprochen hast, antwortet er nicht, sondern sieht dich nur an. Er sieht so aus, als ob er nachdenkt.~ */
  IF ~~ THEN REPLY #14140 /* ~"Willst du sterben? Fragst du deshalb?"~ */ GOTO 22
  IF ~~ THEN REPLY #14141 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.4
  SAY #14026 /* ~Der Staubmensch sieht nach unten und verstummt. "Dann haben wir nichts zu bereden... weder jetzt noch irgendwann. Lebewohl."~ */
  IF ~~ THEN REPLY #14142 /* ~"Bevor ich gehe... warum willst du sterben?"~ */ GOTO 23
  IF ~~ THEN REPLY #14143 /* ~"Na dann leb wohl."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 14.0 16.3 17.1 20.0
  SAY #14027 /* ~"Ja."
~ */
  IF ~~ THEN REPLY #14144 /* ~"Warum willst du sterben?"~ */ GOTO 23
  IF ~~ THEN REPLY #14145 /* ~"Warum willst du denn nicht leben?"~ */ GOTO 24
  IF ~~ THEN REPLY #14146 /* ~"Warum hast du dich dann noch nicht umgebracht?"~ */ GOTO 42
  IF ~~ THEN REPLY #14147 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 44.1 45.2 55.0 56.1 62.2
  SAY #14028 /* ~"Diese Existenz... diese Existenz macht das Leben zur Farce. Ich möchte bei dieser Farce nicht länger mitmachen." Er verzieht angewidert das Gesicht. "Warum sollte irgend jemand in dieser elenden Stadt im Zentrum eines Multiversums bleiben wollen, das sich von Schmerz und Haß nährt? Der Tod... ist still... und tröstend."~ */
  IF ~~ THEN REPLY #14148 /* ~"Das Leben ist ganz bestimmt nicht so schlecht, wie du es hier darstellst."~ */ GOTO 24
  IF ~~ THEN REPLY #14149 /* ~"Das sind ja düstere Ansichten... das Leben hat doch viel mehr zu bieten als Haß und Leid."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Await_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #14150 /* ~"Warum hast du dich dann noch nicht umgebracht?"~ */ GOTO 42
  IF ~~ THEN REPLY #14151 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.2 22.1 23.0 23.1
  SAY #14029 /* ~"Das soll *Leben* sein?" Er entblößt seine Zähne, und seine Hände verkrampfen sich. "Diese Existenz.... diese Existenz macht das Leben zur *Farce*. Ich möchte bei dieser Farce nicht länger mitmachen. Der Tod... ist still... und tröstend."~ */
  IF ~~ THEN REPLY #14152 /* ~"Glaub mir, das ist er nicht."~ */ GOTO 25
  IF ~~ THEN REPLY #14153 /* ~"Vielleicht nach dem ersten Tod."~ */ GOTO 58
  IF ~~ THEN REPLY #14154 /* ~"Warum hast du dich dann noch nicht umgebracht?"~ */ GOTO 42
  IF ~~ THEN REPLY #14155 /* ~"Wenn dieses Leben dir nichts mehr bieten kann, solltest du ihm ein Ende bereiten."~ */ GOTO 42
  IF ~~ THEN REPLY #14156 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14030 /* ~Der Junge scheint durch die Bemerkung verärgert zu sein. "Und woher willst du das wissen?"~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14157 /* ~"Ich habe gesehen, was nach dem Tod kommt."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14158 /* ~"Ich weiß nicht. Ich muß noch sehen, was nach dem Tode kommt, und mich daran erinnern. Vielleicht könnte ich ja davon erzählen, wenn ich noch einmal sterbe."~ */ GOTO 59
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14159 /* ~"Ich denke, ich bin früher schon mal gestorben. Ich erinnere mich allerdings nicht sehr genau daran."~ */ GOTO 59
  IF ~~ THEN REPLY #14160 /* ~"Ich weiß es halt. Nenn's Ahnung."~ */ GOTO 57
  IF ~~ THEN REPLY #14161 /* ~"Na, egal. Ich muß mich verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 10.0 25.0 57.2 58.3
  SAY #14031 /* ~Der Junge starrt dich an. "Du sprichst ehrlich." Er sieht dich erstaunt an. "Was ist dort? Was hast du gesehen?"~ */
  IF ~~ THEN REPLY #14162 /* ~Wahrheit: "Ich lag auf einer Insel, die auf einem Meer großer Dunkelheit trieb. Die Insel bestand aus Schattensteinen... doch diese Steine waren *keine* Steine, denn sie flüsterten und wisperten mir zu in einer Sprache, die ich nicht verstand. Keine Stille, kein Trost, und die Kälte gräbt sich ins Fleisch und versinkt in den Knochen."~ */ GOTO 31
  IF ~~ THEN REPLY #14163 /* ~"Ich werde davon nicht mehr sprechen. Ich habe sowieso schon zuviel gesagt."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #14032 /* ~"Du *mußt* es mir sagen! Ich muß es wissen!"~ */
  IF ~~ THEN REPLY #14164 /* ~Wahrheit: "Ich lag auf einer Insel, die auf einem Meer großer Dunkelheit trieb. Die Insel bestand aus Schattensteinen... doch diese Steine waren *keine* Steine, denn sie flüsterten und wisperten mir zu in einer Sprache, die ich nicht verstand. Keine Stille, kein Trost, und die Kälte gräbt sich ins Fleisch und versinkt in den Knochen."~ */ GOTO 31
  IF ~~ THEN REPLY #14165 /* ~"Ich werd dir nichts erzählen."~ */ GOTO 28
  IF ~~ THEN REPLY #14166 /* ~"Ich will nicht darüber reden. Leb wohl."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #14033 /* ~"Du mußt es mir sagen!" Er ballt seine Hand zur Faust. "Was *willst* du von mir dafür?!"~ */
  IF ~~ THEN REPLY #14167 /* ~"Ich würde dich bitten zu leben."~ */ GOTO 29
  IF ~~ THEN REPLY #14168 /* ~"Ich geb nichts, und ich will auch nichts von dir. Leb wohl."~ */ GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14034 /* ~"Ihr macht Euch über mich lustig, Herr. Ihr haltet mich mit meinen Fragen zum Narren..."~ */
  IF ~~ THEN REPLY #14169 /* ~"*Du* bist hier der Narr, daß du dein Leben so leichtfertig wegwerfen willst. Was für eine Beleidigung der Toten und der Lebenden."~ */ GOTO 30
  IF ~~ THEN REPLY #14170 /* ~"Wir haben uns nichts weiter zu sagen. Leb wohl."~ */ GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14035 /* ~"Sag mir, was du gesehen hast! Was ist der Wahre Tod?! Was hast du dort gesehen?" Seine Stimme wird lauter und eindringlicher, und das in solchem Maße, daß die Staubmenschen um euch herum ihre Köpfe zu euch drehen.~ */
  IF ~~ THEN REPLY #14171 /* ~Wahrheit: "Ich lag auf einer Insel, die auf einem Meer großer Dunkelheit trieb. Die Insel bestand aus Schattensteinen... doch diese Steine waren *keine* Steine, denn sie flüsterten und wisperten mir zu in einer Sprache, die ich nicht verstand. Keine Stille, kein Trost, und die Kälte gräbt sich ins Fleisch und versinkt in den Knochen."~ */ GOTO 31
  IF ~~ THEN REPLY #14172 /* ~Lüge: "Es ist die Vergessenheit. Dort gibt es nichts. Es ist eine Nicht-Existenz."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_2","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #14173 /* ~Lüge: "Es ist ein Ort großer Freuden, von himmlischer Schönheit. Ein Ort, an dem die Seele ihren Frieden findet."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_3","GLOBALGood",-1)
~ GOTO 35
  IF ~~ THEN REPLY #14174 /* ~"Ich werd es nicht sagen. Leb wohl."~ */ GOTO 36
END

IF ~~ THEN BEGIN 31 // from: 26.0 27.0 30.0
  SAY #14036 /* ~"Es gibt keinen Unterschied..." Er sieht auf den Boden und kaut mit einem seltsamen Ausdruck auf seinem Gesicht seine Lippen. "Nach dem Schatten dieser Existenz wartet noch mehr Leid. Es gibt keine Vergessenheit, keine Reinigung... nichts ändert sich. Die Ebenen drehen sich... und nichts wird sich jemals ändern."~ */
  IF ~~ THEN REPLY #14175 /* ~"Bis auf dich. Du kannst dich noch ändern."~ */ GOTO 32
  IF ~~ THEN REPLY #14176 /* ~"Wenn du das glaubst, wird es wohl wahr sein."~ */ GOTO 33
  IF ~~ THEN REPLY #14177 /* ~"Ich möchte mich verabschieden. Leb wohl."~ */ GOTO 36
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #14037 /* ~Er sagt abschätzig: "Nein, ich hab's versucht. Mehrmals."~ */
  IF ~~ THEN REPLY #14178 /* ~"Wenn du das glaubst, wird es wohl wahr sein."~ */ GOTO 33
  IF ~~ THEN REPLY #14179 /* ~"Dann gibt es nichts weiter zu sagen. Ich werde jetzt gehen."~ */ GOTO 36
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #14038 /* ~"Das ist mehr als ein Glaube, das ist die Wahrheit." Sein Blick verdüstert sich. "Hast du diese Stadt gesehen? Sie verrottet, und alles in ihr verrottet mit ihr... es gibt keine Hoffnung, nichts, wonach man *streben* könnte. Alles ist mit Dunkelheit und Schatten befleckt."~ */
  IF ~~ THEN REPLY #14180 /* ~"Was ist mit deinen Ansichten als Staubmensch? Ist dies denn kein erstrebenswertes Ziel?"~ */ GOTO 37
  IF ~~ THEN REPLY #14181 /* ~"Dann gibt es nichts weiter zu sagen. Ich werde jetzt gehen."~ */ GOTO 36
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #14039 /* ~"Wie ich vermutet habe." Er seufzt. "Dann wird es ein besserer Ort als dieser sein. Und da ich sterben muß, um ihn zu erreichen..." Er sieht dich an. "Wirst du mir helfen zu sterben?"~ */
  IF ~~ THEN REPLY #14182 /* ~"Nein."~ */ GOTO 43
  IF ~~ THEN REPLY #14183 /* ~"Ja."~ */ GOTO 44
  IF ~~ THEN REPLY #14184 /* ~"Schwer zu sagen... wieviel?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14185 /* ~"Wenn es dir an Überzeugung fehlt, dich selbst zu töten, werd ich dir das nicht abnehmen."~ */ GOTO 55
  IF ~~ THEN REPLY #14186 /* ~"Nein... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 30.2
  SAY #14040 /* ~Der Staubmensch lächelt kurz, dann verdüstert sich sein Gesicht wieder. "Dann *muß* ich sterben." Er sieht dich hoffnungsvoll an. "Wirst du mir helfen?"~ */
  IF ~~ THEN REPLY #14187 /* ~"Nein."~ */ GOTO 43
  IF ~~ THEN REPLY #14188 /* ~"Ja."~ */ GOTO 44
  IF ~~ THEN REPLY #14189 /* ~"Schwer zu sagen... wieviel?"
~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14190 /* ~"Wenn es dir an Überzeugung fehlt, dich selbst zu töten, werd ich dir das nicht abnehmen."~ */ GOTO 55
  IF ~~ THEN REPLY #14191 /* ~"Nein... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.1 30.3 31.2 32.1 33.1
  SAY #14041 /* ~Er starrt dich einen Moment lang an, öffnet seinen Mund und schließt ihn wieder "Dann geh. Wir werden nicht mehr miteinander reden."~ */
  IF ~~ THEN REPLY #14192 /* ~Geh.~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.0
  SAY #14042 /* ~Er nickt. "Die Philosophie der Staubmenschen ist ein würdiges Ziel. Sonst wäre ich kein Staubmensch geworden."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14193 /* ~"Dann befolge dies: Du bist zu sehr bestrebt, die Vergessenheit zu erlangen. Nach den Lehrsätzen der Staubmenschen wird dich das Bestreben, den Wahren Tod zu erlangen, auf ewig davon fernhalten."
~ */ GOTO 38
  IF ~~ THEN REPLY #14194 /* ~"Warum konzentrierst du dich dann nicht mehr auf die Glaubenssätze der Staubmenschen? Vielleicht ist dieses Leben ja voller Schmerz und Elend, aber wenn du dich auf deinen Glauben konzentrierst und auf die Dinge, die dir wichtig sind, sollte dies dir helfen, damit umzugehen."~ */ GOTO 40
  IF ~~ THEN REPLY #14195 /* ~"Dann gibt es nichts weiter zu sagen. Ich werde jetzt gehen."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #14043 /* ~Er knurrt. "Du klingst wie einer der Adlaten... sie hören einfach nie auf, mich zu *belehren*..."~ */
  IF ~~ THEN REPLY #14196 /* ~"Und es ist richtig, daß sie das tun - sie haben nur deinen Todeswunsch im Herzen. Wenn du den Wahren Tod erlangen möchtest, mußt du zuvor das Leben hier meistern, egal, wie schmerzlich und mühselig es dir scheint. Es ist eine Chance, und du bist noch jung. Vielleicht gibt sich dieses Streben nach dem Tod, wenn du mehr von diesem Leben siehst."~ */ GOTO 39
  IF ~~ THEN REPLY #14197 /* ~"Dann will ich dich nicht länger belehren. Leb wohl."~ */ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #14044 /* ~"Aber wie..." Er wirkt verwirrt. "Wie soll ich damit umgehen?"~ */
  IF ~~ THEN REPLY #14198 /* ~"Versuch einfach, so gut wie möglich zu leben. Sieh dieses Leben, so beschwerlich es auch sein mag, als Chance. Du bist noch jung. Vielleicht legt sich dieses Streben nach dem Tod, wenn du mehr von diesem Leben siehst."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14199 /* ~"Du mußt dieses Leben ertragen. Dadurch wirst du lernen, Schmerz und Leid über dich ergehen zu lassen. Und bald schon werden sie dir nichts mehr anhaben können, und du wirst anfangen, wahre Fortschritte auf deinem Weg zum Wahren Tod und zur Vergessenheit zu machen."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14200 /* ~"Das hängt von dir ab. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #14045 /* ~"Vielleicht..." Er denkt über deine Worte nach. "Vielleicht hast du recht. Aber... manchmal ist es schwer, den Schmerz dieses Lebens zu ignorieren. Wie soll ich denn damit umgehen?"~ */
  IF ~~ THEN REPLY #14201 /* ~"Versuch einfach, so gut wie möglich zu leben. Sieh dieses Leben, so beschwerlich es auch sein mag, als Chance. Du bist noch jung. Vielleicht legt sich dieses Streben nach dem Tod, wenn du mehr von diesem Leben siehst."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #14202 /* ~"Du mußt dieses Leben ertragen. Dadurch wirst du lernen, Schmerz und Leid über dich ergehen zu lassen. Und bald schon werden sie dir nichts mehr anhaben können, und du wirst anfangen, wahre Fortschritte auf deinem Weg zum Wahren Tod und zur Vergessenheit zu machen."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",2)
~ GOTO 41
  IF ~~ THEN REPLY #14203 /* ~"Wir verbringen unser gesamtes Leben damit zu lernen, wie man stirbt. Nur du selbst kannst diese Frage beantworten."~ */ DO ~SetGlobal("Await_Deal_Answer","GLOBAL",3)
~ GOTO 41
  IF ~~ THEN REPLY #14204 /* ~"Das hängt von dir ab. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0 39.1 40.0 40.1 40.2 69.0
  SAY #14046 /* ~Der Junge verstummt und denkt nach. Schließlich wendet er sich wieder dir zu. "Eure Worte sind gewichtig, Herr... und eröffnen mir eine neue Perspektive. Ich werde tun, was Ihr gesagt habt."~ */
  IF ~~ THEN REPLY #14205 /* ~"Das ist alles, worum ich dich bitte... lebe, werd alt und lerne. Leb wohl."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.2 23.2 24.2 24.3
  SAY #14047 /* ~"Ich habe mich nach einem Weg umgesehen, mein Leben zu beenden. Wirst du mich töten?"~ */
  IF ~~ THEN REPLY #14206 /* ~"Nein."~ */ GOTO 43
  IF ~~ THEN REPLY #14207 /* ~"Ja."~ */ GOTO 44
  IF ~~ THEN REPLY #14208 /* ~"Schwer zu sagen... wieviel?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Await_4","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #14209 /* ~"Wenn es dir an Überzeugung fehlt, dich selbst zu töten, werd ich dir das nicht abnehmen."~ */ GOTO 55
  IF ~~ THEN REPLY #14210 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 34.0 35.0 38.1 42.0 44.2 45.3 55.1 56.2
  SAY #14048 /* ~"Also gut. Laß mich allein. Wir werden nicht mehr miteinander sprechen."~ */
  IF ~~ THEN REPLY #14211 /* ~"Na dann leb wohl."~ */ DO ~SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 34.1 35.1 42.1
  SAY #14049 /* ~Er seufzt erleichtert und zieht dann einen kleinen Beutel aus seiner Robe.
Er macht *klink*, als er ihn vor dir hinlegt. "Tu es jetzt. Ich kann nicht mehr länger warten."~ */
  IF ~~ THEN REPLY #14212 /* ~"In Ordnung... schließ deine Augen."~ */ GOTO 45
  IF ~~ THEN REPLY #14213 /* ~"Warte... ich will dein Geld nicht. Ich will wissen, warum du sterben willst."~ */ GOTO 23
  IF ~~ THEN REPLY #14214 /* ~"Das werd ich nicht tun. Leb wohl."~ */ GOTO 43
END

IF ~~ THEN BEGIN 45 // from: 44.0 56.0
  SAY #14050 /* ~Er schließt seine Augen.~ */
  IF ~~ THEN REPLY #14215 /* ~Leg deine Hände um seinen Hals und erwürge ihn.~ */ GOTO 47
  IF ~~ THEN REPLY #14216 /* ~Nimm das Geld und geh leise.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_5","GLOBALGood",-1)
~ GOTO 46
  IF ~~ THEN REPLY #14217 /* ~"Behalt dein Geld. Ich will wissen, warum du sterben willst."~ */ GOTO 23
  IF ~~ THEN REPLY #14218 /* ~"Das werd ich nicht tun. Leb wohl."~ */ GOTO 43
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #14051 /* ~Du hebst den Beutel leise auf und gehst lautlos - im Säckchen scheinen fünfzig Kupferstücke zu sein. Der Staubmensch bleibt still sitzen, als du weggehst, die Augen geschlossen, und bewegt sich nicht.~ */
  IF ~~ THEN REPLY #14219 /* ~"Der Inhalt dieses Beutels ist der Preis, den du für deine Dummheit bezahlen mußt. Leb wohl..."~ */ DO ~GivePartyGold(50)
SetGlobal("Await","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0
  SAY #14052 /* ~Du legst deine Hände um seinen Hals und drückst langsam zu. Er schnappt erstickt nach Luft, und seine Augen öffnen sich weit - mit einem bittendem Ausdruck beginnt er, an deinen Händen zu zerren.~ */
  IF ~~ THEN REPLY #14220 /* ~Brich ihm das Genick.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
IncrementGlobalOnceEx("GLOBALChaotic_Await_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Await_6","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #14221 /* ~Laß ihn los.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #14053 /* ~Du willst ihn eigentlich erwürgen, aber plötzlich ziehst du deine Hände von seinem Hals zurück, ohne es eigentlich vorzuhaben. Den-Tod-Erwartend atmet tief ein - und sieht so aus, als wolle er dir danken, daß du aufgehört hast - als du deine Hände um seine Schläfen schließt und seinen Kopf scharf nach links drehst. Es gibt ein *Knacken*, und der Junge fällt dir schlaff in die Arme.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14222 /* ~"Man sieht sich in anderen Gefilden, Staubie..."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 49
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #14223 /* ~"Man sieht sich in anderen Gefilden, Staubie..."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14054 /* ~Zu deiner Überraschung scheint diese Handlung instinktiv zu sein, als hättest du das schon viele Male getan. Mit diesem Gedanken regt sich eine vage Erinnerung, die jedoch nicht stark genug ist, um an die Oberfläche zu gelangen.~ */
  IF ~~ THEN REPLY #14224 /* ~Laß die Leiche auf den Boden fallen.~ */ DO ~GiveExperience(Protagonist,250)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 48.1 49.0
  SAY #14055 /* ~Als die Leiche zu Boden fällt, geht plötzlich ein lautes, brüllendes Geräusch durch die Bar...~ */
  IF ~~ THEN REPLY #14225 /* ~"Ah-oh..."~ */ DO ~Help()
Kill(Myself)
Deactivate(Myself)
GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.1
  SAY #14056 /* ~Du läßt ihn los... und zu deinem Unbehagen mußt du feststellen, daß du dies widerwillig tust. Der Junge schnappt nach Luft und hustet heftig.~ */
  IF ~~ THEN REPLY #14226 /* ~"Du hast deine Meinung geändert?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14057 /* ~Der Junge nickt schwach.~ */
  IF ~~ THEN REPLY #14227 /* ~"Hör zu... wenn du das nächste Mal 'sterben' willst, dann solltest du dir lieber todsicher sein, weil der nächste Typ vielleicht nicht aufhört, wenn du ihn darum bittest. Und jetzt hör auf, über das Leben zu jammern, wenn du's doch ganz eindeutig noch nicht aufgeben willst."~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #14058 /* ~Der Junge sieht dich einen Moment lang stumm an, dann nickt er langsam und reibt sich den Hals.~ */
  IF ~~ THEN REPLY #14228 /* ~"Ich behalte das Geld, als Lohn für diese Lehre."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Await_6","GLOBALLaw",-1)
GivePartyGold(50)
~ GOTO 54
  IF ~~ THEN REPLY #14229 /* ~"Ich habe meinen Teil der Abmachung nicht erfüllt, also behalt dein Geld."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Await_1","GLOBALLaw",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1
  SAY #14059 /* ~Der Junge nickt nochmals und kommt schließlich wieder zu Atem. "Also... gut. Danke... Herr. Daß Ihr mir eine... neue Perspektive eröffnet habt."~ */
  IF ~~ THEN REPLY #14230 /* ~"Bedank dich nicht, sondern *lebe*. Es beleidigt die Toten, wenn du das Leben mißachtest. Leb wohl."~ */ DO ~SetGlobal("Await","GLOBAL",2)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 34.3 35.3 42.3
  SAY #14060 /* ~"Das ist keine Frage der Überzeugung..."~ */
  IF ~~ THEN REPLY #14231 /* ~"Dann muß es etwas anderes sein. Also frage ich dich: Was ist es, das dir das Leben so verhaßt macht?"~ */ GOTO 23
  IF ~~ THEN REPLY #14232 /* ~"Oh doch. Würdest du wirklich sterben wollen, hättest du schon lang einen Weg gefunden, dieses Ziel zu erreichen. Verschwende unsere Zeit nicht länger mit diesem unnützen Geschwätz. Leb wohl."~ */ GOTO 43
END

IF ~~ THEN BEGIN 56 // from: 34.2 35.2 42.2
  SAY #14061 /* ~Er wirft einen kleinen Beutel auf den Tisch. "In diesem Beutel ist alles, was ich habe. Fünfzig Kupfermünzen. Töte mich, und sie gehört dir."~ */
  IF ~~ THEN REPLY #14233 /* ~"In Ordnung... schließ deine Augen."~ */ GOTO 45
  IF ~~ THEN REPLY #14234 /* ~"Warte... ich will dein Geld nicht. Ich will wissen, warum du sterben willst."~ */ GOTO 23
  IF ~~ THEN REPLY #14235 /* ~"Das werd ich nicht tun. Leb wohl."~ */ GOTO 43
END

IF ~~ THEN BEGIN 57 // from: 10.3 25.3
  SAY #14062 /* ~Der Staubmensch sieht dich verächtlich an. "Das ist wenig überzeugend."~ */
  IF ~~ THEN REPLY #14236 /* ~"Dann versuch doch, mich umzubringen. Mal sehen, was dann passiert."~ */ GOTO 62
  IF ~~ THEN REPLY #14237 /* ~"Ich kann es beweisen."~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14238 /* ~"Ich habe gesehen, was nach dem Tod kommt."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14239 /* ~"Ich weiß nicht. Ich muß noch sehen, was nach dem Tode kommt, und mich daran erinnern. Vielleicht könnte ich ja davon erzählen, wenn ich noch einmal sterbe."~ */ GOTO 59
  IF ~~ THEN REPLY #14240 /* ~"Ich denke, der einzige, der hier lügt, bist du. Und zwar belügst du dich selbst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 24.1
  SAY #14063 /* ~Der Staubmensch blinzelt und lächelt dann höhnisch. "Der erste Tod? Was denn, bist du wiederauferstanden?"~ */
  IF ~~ THEN REPLY #14241 /* ~"Wiederauferstanden?"~ */ GOTO 60
  IF ~~ THEN REPLY #14242 /* ~"Dann versuch doch, mich umzubringen. Mal sehen, was dann passiert."~ */ GOTO 62
  IF ~~ THEN REPLY #14243 /* ~"Soll ich's dir zeigen?"~ */ GOTO 63
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14244 /* ~"Ich habe gesehen, was nach dem Tod kommt."~ */ GOTO 26
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14245 /* ~"Ich weiß nicht. Ich muß noch sehen, was nach dem Tode kommt, und mich daran erinnern. Vielleicht könnte ich ja davon erzählen, wenn ich noch einmal sterbe."~ */ GOTO 59
  IF ~~ THEN REPLY #14246 /* ~"Sollte ich jemals sterben und mich daran erinnern, werde ich zurückkehren und dir davon erzählen. Dann kannst du selbst beurteilen, ob ich gelogen habe. Leb wohl."~ */ GOTO 59
  IF ~~ THEN REPLY #14247 /* ~"Ich denke, der einzige, der hier lügt, bist du. Und zwar belügst du dich selbst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1 10.2 25.1 25.2 57.3 58.4 58.5
  SAY #14064 /* ~Der Staubmensch blinzelt und lächelt dann höhnisch. "Du lügst. Niemand kann mehr als einmal sterben... es sei denn, irgendwelche großen Mächte lassen einen wiederauferstehen."~ */
  IF ~~ THEN REPLY #14248 /* ~"Wiederauferstehen?"~ */ GOTO 60
  IF ~~ THEN REPLY #14249 /* ~"Dann versuch doch, mich umzubringen. Mal sehen, was dann passiert."~ */ GOTO 62
  IF ~~ THEN REPLY #14250 /* ~"Soll ich's dir zeigen?"~ */ GOTO 63
  IF ~~ THEN REPLY #14251 /* ~"Sollte ich jemals sterben und mich daran erinnern, werde ich zurückkehren und dir davon erzählen. Dann kannst du selbst beurteilen, ob ich gelogen habe. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #14252 /* ~"Ich denke, der einzige, der hier lügt, bist du. Und zwar belügst du dich selbst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 59.0 62.1
  SAY #14065 /* ~"Wiederauferstehen... wieder zum Leben erweckt werden... dafür ist eine wirklich starke Magie erforderlich."~ */
  IF ~~ THEN REPLY #14253 /* ~"Wer würde solche Macht besitzen?"~ */ GOTO 61
  IF ~~ THEN REPLY #14254 /* ~"Du glaubst nicht, daß ich sterben kann? Dann versuch doch, mich zu töten. Mal seh'n, was dann passiert."~ */ GOTO 62
  IF ~~ THEN REPLY #14255 /* ~"Du glaubst nicht, daß ich sterben kann? Ich werd's dir beweisen."~ */ GOTO 63
  IF ~~ THEN REPLY #14256 /* ~"Sollte ich jemals sterben und mich daran erinnern, werde ich zurückkehren und dir davon erzählen. Dann kannst du selbst beurteilen, ob ich gelogen habe. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #14257 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #14066 /* ~"Ein mächtiger Zauberer oder Priester... oder eine der Mächte... aber niemand, den ich kenne." Er runzelt die Stirn. "Und ich glaube auch nicht, daß du irgend jemanden kennst, der so mächtig ist."~ */
  IF ~~ THEN REPLY #14258 /* ~"Du glaubst nicht, daß ich sterben kann? Dann versuch doch, mich zu töten. Mal seh'n, was dann passiert."~ */ GOTO 62
  IF ~~ THEN REPLY #14259 /* ~"Du glaubst nicht, daß ich sterben kann? Ich werd's dir beweisen."~ */ GOTO 63
  IF ~~ THEN REPLY #14260 /* ~"Sollte ich jemals sterben und mich daran erinnern, werde ich zurückkehren und dir davon erzählen. Dann kannst du selbst beurteilen, ob ich gelogen habe. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #14261 /* ~"Ich denke, der einzige, der hier lügt, bist du. Und zwar belügst du dich selbst. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 57.0 58.1 59.1 60.1 61.0
  SAY #14067 /* ~Er sieht dich skeptisch an. "Nein, das werde ich nicht, selbst, wenn ich den Drang dazu verspüre."~ */
  IF ~~ THEN REPLY #14262 /* ~"Dann werde ich dich zwingen, mir zuzusehen: Ich werde dir zeigen, was der Tod bringt."~ */ GOTO 63
  IF ~~ THEN REPLY #14263 /* ~"Ach vergiß es. Was hast'n vorhin gemeint mit 'wiederauferstanden'?'"~ */ GOTO 60
  IF ~~ THEN REPLY #14264 /* ~"Wenn Du bei allen deinen Handlungen ängstlich und zögerlich bist, bezweifle ich, daß dieses Leben dir viel Freude bereiten wird."~ */ GOTO 23
  IF ~~ THEN REPLY #14265 /* ~"Genug davon. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 57.1 58.2 59.2 60.2 61.1 62.0
  SAY #14068 /* ~"Was... meinst du?" Er sieht so aus, als wolle er sich wegdrehen, könnte es aber nicht tun. "Das kannst du nicht ernst meinen..."~ */
  IF ~~ THEN REPLY #14266 /* ~Nimm deine Hände und verdreh dir den Hals.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Death","GLOBAL",1)
~ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #14069 /* ~Du kannst langsam wieder sehen... dein Tod hat sich diesmal anders angefühlt. Du siehst Den-Tod-Erwartend über dir stehen... er sieht entsetzt und fasziniert aus. Er hat dich auf einen Stuhl gesetzt und sieht ängstlich zu den anderen Gästen der Bar hinüber... sie scheinen aber nichts bemerkt zu haben, oder sie haben dich für einen Betrunkenen gehalten.~ */
  IF ~~ THEN REPLY #14267 /* ~"Na, überzeugt?"~ */ GOTO 66
END

IF ~~ THEN BEGIN 65 // from:
  SAY #14070 /* ~"Du bist übergeschnappt." Er sieht sich deine Wunden an. "Du kannst nicht gestorben sein, du bist nur verwundet worden."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 64.0
  SAY #14071 /* ~"Bist... bist du einer der wandelnden Toten?"~ */
  IF ~~ THEN REPLY #14268 /* ~"Nein."~ */ GOTO 67
  IF ~~ THEN REPLY #14269 /* ~"Ja."~ */ GOTO 68
  IF ~~ THEN REPLY #14270 /* ~"Keine Ahnung."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #14072 /* ~"Was bist du denn dann?"~ */
  IF ~~ THEN REPLY #14271 /* ~"Ich weiß nicht. Aber ich sterbe und werde wiedergeboren."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 66.1 67.0
  SAY #14073 /* ~"Und trotzdem... du denkst noch, fühlst noch?"~ */
  IF ~~ THEN REPLY #14272 /* ~"Ja."~ */ GOTO 69
  IF ~~ THEN REPLY #14273 /* ~"Ja, aber da... da ist eine Leere. Irgendwas fehlt, und es nagt an dir und läßt dich nie zur Ruhe kommen."
~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.0 68.1
  SAY #14074 /* ~"Tot zu sein... und *immer* noch zu denken und fühlen?! Wird das Leid einen denn niemals verlassen?" Der Gedanke scheint ihn zu entsetzen. "Dann ist nicht einmal der Tod eine Erlösung."~ */
  IF ~~ THEN REPLY #14274 /* ~"In der Tat. Vielleicht solltest du dich nicht so übereilt von diesem Leben trennen, ohne zu wissen, was dir das nächste bringt."~ */ GOTO 41
END

IF ~  Global("Await","GLOBAL",3)
~ THEN BEGIN 70 // from:
  SAY #61496 /* ~Den-Tod-Erwartend ignoriert dich, er vermeidet jeden Augenkontakt.~ */
  IF ~~ THEN REPLY #61497 /* ~Geh weg.~ */ EXIT
END
