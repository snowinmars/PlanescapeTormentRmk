// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRADDO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRADDO~

IF ~  Global("Craddock","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22870 /* ~Du siehst einen riesenhaften Mann, der sich mit gerunzelter Stirn, zusammengepreßten Lippen und zusammengekniffenen Augen die Gegend anschaut. Sein leichter Buckel sieht aus, als trage er eine schwere Last mit sich herum. Seine Klamotten stinken nach Schweiß und Schmutz.~ */
  IF ~~ THEN REPLY #22893 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #22894 /* ~Ignoriere den Mann und sieh dich ein wenig auf dem Marktplatz um.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22871 /* ~Der Mann schaut zu dir hinunter, und seine Stirn legt sich in Falten. "Hey! Was schnüffelst du hier herum?"~ */
  IF ~~ THEN REPLY #22895 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22896 /* ~"Bist du Craddock?"~ */ GOTO 3
  IF ~~ THEN REPLY #22897 /* ~"Egal. Verzeih, daß ich dich belästigt habe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #22872 /* ~Er grunzt. "Ich habe keine Zeit für Bettler und Hunde. Und jetzt verschwinde!"~ */
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22898 /* ~"Du Craddock?"~ */ GOTO 3
  IF ~~ THEN REPLY #22900 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #22873 /* ~"Vielleicht..." Er betrachtet eingehend dein Gesicht, als ob er versucht, sich an dich zu erinnern. "Und wenn schon, was geht's dich an?"~ */
  IF ~~ THEN REPLY #22901 /* ~"Ich bringe eine Botschaft von Baen, dem Sender. Sie lautet: 'Die Lieferung muß am dritten Tag in Verdammnis sein, oder eine Strafe wird fällig.'"~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",2)
SetGlobal("Craddock","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #22902 /* ~"Egal. Ich hab' dich mit jemandem verwechselt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22874 /* ~"Zum *Teufel!* Was sind das bloß für *Idioten*. Glauben die, wir können hexen?! Na schön - deine Botschaft hat die richtigen Ohren gefunden, wem das auch immer nützen mag!"~ */
  IF ~~ THEN REPLY #22903 /* ~"Wo liegt das Problem?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0
  SAY #22875 /* ~"Schau dich doch um!" Craddock nickt den Arbeitern auf dem Marktplatz zu und macht ein mürrisches Gesicht. "Diese Bummelanten und Schwachköpfe kommen nicht zu Potte, und nun soll das Ganze doppelt so schnell fertig sein!"~ */
  IF ~~ THEN REPLY #22906 /* ~"Brauchst du Hilfe?"~ */ GOTO 6
  IF ~~ THEN REPLY #22907 /* ~"Das tut mir leid. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #22876 /* ~"Ich sag dir, was ich brauche - daß sich alle meine Leute hier bei der Arbeit blicken lassen! Jhelai hab' ich schon seit heut' morgen nicht mehr gesehen, und ich brauch ihn jetzt und hier."~ */
  IF ~~ THEN REPLY #22908 /* ~"Jhelai? Wo ist er hingegangen?"~ */ GOTO 7
  IF ~~ THEN REPLY #22909 /* ~"Das tut mir leid. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #22877 /* ~"Dieser Idiot aus dem Stock ist wahrscheinlich irgendwo sturzbesoffen da draußen bei der Schwelenden Leiche, obwohl er uns hier helfen soll. Dieser Taugenichts..."~ */
  IF ~~ THEN REPLY #22910 /* ~"Ich könnte ihn für dich finden."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #22911 /* ~"Ich könnte ihn für dich suchen. Gegen ein gewisses Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22912 /* ~"Das tut mir leid. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #22878 /* ~"Oh, das würdest du tun, echt?" Craddock zwinkert dir zu. "Und warum würdest das tun?"~ */
  IF ~~ THEN REPLY #22914 /* ~"Du brauchst meine Hilfe, was? Es sieht nicht so aus, als ob du die Zeit hättest, selbst nach ihm zu suchen, und die Arbeit muß getan werden."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #22916 /* ~"Also, ich könnte ihn für dich finden, aber nicht für umsonst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22915 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 8.1
  SAY #22879 /* ~Craddock schweigt einen Moment lang und nickt dann. "Genau... du findest Jhelai, du sagst ihm, daß der faule Fusler seinen Hintern hierher bewegen soll. Ich zahl dir auch was dafür..." Er runzelt die Stirn. "...*wenn* du ihn gefunden hast. Und jetzt zisch los!"~ */
  IF ~~ THEN REPLY #22917 /* ~"Du hast gesagt, er wäre vielleicht in der Schwelenden Leiche? Wo ist das?"~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~Craddock vermißt einen seiner Arbeiter, einen Trunkenbold namens Jhelai. Er sagt, er wandere höchstwahrscheinlich durch die Straßen vor der Bar "Zur Schwelenden Leiche". ~ */ GOTO 10
  IF ~~ THEN REPLY #22918 /* ~"Gut, dann geh ich mal los und such ihn. Leb wohl."~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~Craddock vermißt einen seiner Arbeiter, einen Trunkenbold namens Jhelai. Er sagt, er wandere höchstwahrscheinlich durch die Straßen vor der Bar "Zur Schwelenden Leiche". ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22880 /* ~Südöstlich von hier - Geh durch das Südost-Tor und dann ungefähr einen Häuserblock nach Osten. Da draußen hängt ein ganzer Haufen Trunkenbolde herum. Kannst du gar nicht verfehlen. Jhelai ist bestimmt irgendwo da zu finden."~ */
  IF ~~ THEN REPLY #22919 /* ~"Gut, dann geh ich mal los und such ihn. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("Craddock","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #22881 /* ~Du triffst auf Craddock. Seine Miene hat sich noch mehr verfinstert, seit du ihn zum ersten Mal gesehen hast... Er schaut so grimmig drein, daß sein Gesicht kurz davor ist, in zwei Teile zu zerfallen.~ */
  IF ~  Global("Craddock_Quest","GLOBAL",0)
~ THEN REPLY #22920 /* ~"Baens Botschaft scheint dich verärgert zu haben. Warum?"~ */ GOTO 5
  IF ~  Global("Craddock_Quest","GLOBAL",2)
~ THEN REPLY #22921 /* ~"Ich hab' Jhelai gefunden."~ */ GOTO 12
  IF ~  Global("Craddock_Quest","GLOBAL",3)
~ THEN REPLY #22922 /* ~"Ich könnte ein wenig aushelfen, wenn du jemanden brauchst, jetzt, wo Jhelai weg ist."~ */ GOTO 16
  IF ~~ THEN REPLY #22923 /* ~Laß Craddock in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #22882 /* ~"Stimmt das?" Craddock schaut umher. "Wo *ist* er denn?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22924 /* ~Wahrheit: "Er meinte, daß du 'einpacken' sollst, daß du ein 'mieser Straßenköter' wärst, und daß er sich 'nicht länger für dich abrackern wird'."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ JOURNAL #22699 /* ~Ich habe Jhelais Nachricht an Craddock weitergegeben, Wort für Wort... Craddock war nicht gerade glücklich über die Nachricht. Jhelai könnte seine Worte bereuen, wenn er wieder nüchtern ist.~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22946 /* ~Wahrheit: "Er meinte, daß du 'einpacken' sollst, daß du ein 'mieser Straßenköter' wärst, und daß er sich 'nicht länger für dich abrackern wird'."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22701 /* ~Ich habe Jhelais Nachricht an Craddock weitergegeben, Wort für Wort... Craddock war nicht gerade glücklich über die Nachricht - tatsächlich war er so unglücklich, daß Morte einen ganzen neuen Wortschatz an Beleidigungen in sein Repertoire aufnehmen konnte.

~ */ GOTO 13
  IF ~~ THEN REPLY #22947 /* ~Lüge: "Er hat gesagt... äh, daß ich für ihn einspringen soll."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Craddock_1","GLOBALLaw",-1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22702 /* ~Ich habe Jhelai gefunden und dann Craddock gesagt, dass ich für ihn einspringen würde... Craddock schien zunächst skeptisch, aber dann stimmte er zu.~ */ GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #22883 /* ~Craddocks Gesicht läuft puterrot an, und er knurrt vor sich hin. "Verflucht sei sein Name! Möge alles Übel der Ebenen ihn auf all seinen Wegen heimsuchen..." Ein ganzer Strom von Verwünschungen, Drohungen und Spekulationen über Jhelais Herkunft ergießt sich aus Craddocks Mund... richtig furchterregend.~ */
  IF ~~ THEN REPLY #22950 /* ~"Weißt du, ich könnte für ihn einspringen, wenn du Hilfe brauchst."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22951 /* ~"Ich brauche Arbeit für einen Tag. Ich werde Jhelais Aufgaben erledigen, wenn ich dafür auch seinen Lohn bekomme."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22948 /* ~"Also, das war die Botschaft. Wenn's weiter nichts gibt, hätte ich jetzt ganz gern mein Geld..."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22952 /* ~"Ähm... mach dir keine Sorgen wegen des Lohns für die Suche. Ich muß los. Leb wohl."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22953 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #22884 /* ~Craddocks Gesicht läuft puterrot an, und er knurrt vor sich hin. "Verflucht sei sein Name! Möge alles Übel der Ebenen ihn auf all seinen Wegen heimsuchen..." Ein ganzer Strom von Verwünschungen, Drohungen und Spekulationen über Jhelais Herkunft ergießt sich aus Craddocks Mund...~ */
  IF ~~ THEN EXTERN ~DMORTE~ 227
END

IF ~~ THEN BEGIN 15 // from:
  SAY #22885 /* ~Craddock beschließt seine Haßtirade mit einem Grunzen. "Verdammt... dieser Jhelai..."~ */
  IF ~~ THEN REPLY #22954 /* ~"Weißt du, ich könnte für ihn einspringen, wenn du Hilfe brauchst."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22955 /* ~"Ich brauche Arbeit für einen Tag. Ich werde Jhelais Aufgaben erledigen, wenn ich dafür auch seinen Lohn bekomme."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22956 /* ~"Also, das war die Botschaft. Wenn es weiter nichts gibt, hätte ich jetzt gern mein Geld."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22958 /* ~"Ähm... mach dir keine Sorgen wegen des Lohns für die Suche. Ich muß los. Leb wohl."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22960 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.2 12.2 13.0 13.1 15.0 15.1 20.0 20.1
  SAY #22886 /* ~Craddock betrachtet dich einen Moment lang aufmerksam. "Du? Ha! Du könntest doch nicht..." Plötzlich verstummt er. "Tja... vielleicht kannste ja doch. Das ist harte Arbeit, und kein Trinken unter meiner Aufsicht..."~ */
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #22962 /* ~"Verstanden... machen wir uns an die Arbeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(10)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,STR)
CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #22963 /* ~"Verstanden... machen wir uns an die Arbeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(20)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #22964 /* ~"Verstanden... machen wir uns an die Arbeit."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(30)
~ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #22887 /* ~Die Arbeit dauert lange, doch am Ende der Schicht bist du überhaupt nicht müde. Als du fertig bist, grunzt Craddock dich an. "Du hast gute Arbeit geleistet... hier ist dein Lohn." Er wirft dir eine Handvoll Münzen hin. "Jetzt zisch ab! Wir haben keine Verwendung mehr für dich."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22965 /* ~"Was ist mit dem Lohn dafür, daß ich Jhelais Botschaft übermittelt habe?"~ */ GOTO 21
  IF ~~ THEN REPLY #22966 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #22888 /* ~Die Arbeit dauert lange, doch am Ende der Schicht bist du überhaupt nicht müde... Die anderen Arbeiter sind ziemlich davon beeindruckt, wie schnell du arbeitest und wieviel Gewicht du tragen kannst. Als du fertig bist, grunzt Craddock dich an. "Du hast Schultern wie ein Bariaur, ehrlich! Du bist zweimal so viel wert wie Jhelai... Hier ist dein Lohn." Er wirft dir eine Handvoll Münzen hin: insgesamt zwanzig Kupfermünzen. "Jetzt zisch ab! Wir haben keine Verwendung mehr für dich."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22967 /* ~"Was ist mit dem Lohn dafür, daß ich Jhelais Botschaft übermittelt habe?"~ */ GOTO 21
  IF ~~ THEN REPLY #22968 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #22889 /* ~Die Arbeit dauert lange, aber am Ende der Schicht bist du nicht im geringsten müde. Die anderen Arbeiter sind erstaunt darüber, wie schnell du arbeitest und wieviel Gewicht du tragen kannst. Craddock grunzt bei deiner Rückkehr. "Du hast die Schultern eines Thokola, echt. Bist dreimal so viel wert wie Jhelai. Hier ist dein Lohn." Er wirft dir eine Handvoll Münzen hin... insgesamt dreißig Kupferstücke. "Und jetzt komm in die Socken. Wir haben hier keine Verwendung mehr für dich."
~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22969 /* ~"Was ist mit dem Lohn dafür, daß ich Jhelais Botschaft übermittelt habe?"~ */ GOTO 21
  IF ~~ THEN REPLY #22970 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.2 15.2
  SAY #22890 /* ~Craddock grunzt, faßt in seinen Geldbeutel und wirft dir eine Handvoll Münzen hin. "Jetzt zisch ab! Und wenn du Jhelai siehst, dann sag ihm, daß er ein toter Mann ist!"~ */
  IF ~~ THEN REPLY #22971 /* ~"Weißt du, ich könnte für ihn einspringen, wenn du Hilfe brauchst."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22972 /* ~"Ich brauche Arbeit für einen Tag. Ich werde Jhelais Aufgaben erledigen, wenn ich dafür auch seinen Lohn bekomme."~ */ GOTO 16
  IF ~~ THEN REPLY #22973 /* ~"Ich werd dran denken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0 18.0 19.0
  SAY #22891 /* ~Craddock grunzt, faßt in seinen Geldbeutel und zählt dann zehn Kupfermünzen ab, die er dir hinwirft. "Da hast du deinen Lohn! Jetzt zisch ab!"~ */
  IF ~~ THEN REPLY #22974 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ EXIT
END
