// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCROG~

IF ~  !Global("Curst_Rogue_Paid","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #10037 /* ~Du siehst eine zwielichtige Gestalt. Sie streunt scheinbar ziellos umher, doch du vermutest eine Absicht dahinter. Während du den Mann beobachtest, kommt dir der Gedanke, daß er womöglich ein Auge auf eines der umliegenden Gebäude wirft.~ */
  IF ~~ THEN REPLY #10038 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #10039 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10040 /* ~Er grüßt keineswegs unfreundlich zurück. "Auch dir einen guten Tag." Dann dreht er sich um und geht.~ */
  IF ~~ THEN REPLY #10041 /* ~"Nur einen Moment bitte. Ich wollte dir eine Frage stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #10042 /* ~Laß ihn gehen.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10043 /* ~Er hält an und dreht sich freundlich lächelnd zu dir um. "Gerne. Wie kann ich dir helfen?" Du bemerkst, daß seine Arme unnatürlich an seinem Körper herunterhängen. Dein geübtes Auge sagt dir, daß er bereit ist, eine verborgene Waffe zu zücken.~ */
  IF ~~ THEN REPLY #10044 /* ~"Beobachtest du grade das Gebäude dahinten?"~ */ GOTO 3
  IF ~~ THEN REPLY #10045 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, er sei in Verdammnis."~ */ GOTO 9
  IF ~~ THEN REPLY #10046 /* ~"Ach, egal."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10047 /* ~Er wirft dir einen erstaunten Blick zu. "Wie? Was? Natürlich nicht! Warum sollte ich? Was gibt's denn da?" Er dreht sich um und begutachtet das Gebäude, auf das du gezeigt hast.~ */
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #10048 /* ~"Komm schon. Ich bin doch nicht bescheuert. Klar kundschaftest du den Laden da aus!"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #10049 /* ~"Na sicher."~ */ EXTERN ~DANNAH~ 78
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #10050 /* ~"Schon gut, mein Fehler. Ich habe da aber eine Frage an dich. Ich suche nach einem Deva, der möglicherweise in der Stadt ist."~ */ GOTO 9
  IF ~~ THEN REPLY #10051 /* ~"Tschuldigung, mein Fehler. Ich muß weiter."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10052 /* ~Er scheint dich mit seinen Blicken abzuschätzen. Dann macht er eine geschickte Handbewegung und wirft dir einen unschuldigen Blick zu. Als du nach unten schaust, bemerkst du die glitzernden Münzen in seinem Ärmel. "Du irrst dich, mein Freund. Ich bin nur hier, um diesen schönen Tag an der frischen Luft zu genießen."~ */
  IF ~~ THEN REPLY #10053 /* ~"Ja, ich bin sicher, du hast recht. Bitte um Entschuldigung... Freund."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #10054 /* ~"Nein, ich bin mir sicher, daß du genau das getan hast."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10055 /* ~Er macht einen Schritt nach vorn und klopft dir wohlwollend auf die Schulter. Dabei merkst du, daß deine Geldbörse schwerer wird. "Dann leb wohl, mein Freund. Bis zum nächsten Mal."~ */
  IF ~~ THEN REPLY #10056 /* ~"Auf bald."~ */ DO ~GivePartyGold(25)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #10057 /* ~Er runzelt die Stirn. "Dann... dann muß ich wohl meinen Einsatz verdoppeln, um dich vom Gegenteil zu überzeugen. Sei dir jedoch bewußt, daß meine Geduld danach zu Ende sein wird." Er macht eine weitere, geschickte Handbewegung, und du siehst, wie in beiden Ärmeln blanke Münzen glitzern.~ */
  IF ~~ THEN REPLY #10058 /* ~"Nun ja. Ich bin mir sicher, daß du nur ein wenig spazierengegangen bist, ganz wie du gesagt hast."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10059 /* ~"Nein, ich weiß, was ich gesehen hab'."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10060 /* ~Er macht einen Schritt nach vorn und klopft dir wohlwollend auf die Schulter. Dabei merkst du, wie deine Geldbörse schwerer wird. "Dann leb wohl, mein Freund. Bis zum nächsten Mal."~ */
  IF ~~ THEN REPLY #10061 /* ~"Auf bald."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #10062 /* ~Er runzelt die Stirn und gestikuliert mit beiden Armen. Statt glitzerndem Gold siehst du nur noch glitzernden Stahl. "Schade, daß wir uns nicht einigen konnten."~ */
  IF ~~ THEN REPLY #10063 /* ~"Dir wird gleich noch was anderes leid tun."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.2 11.1
  SAY #10064 /* ~Er sieht dich überrascht an. "Wirklich? Wie merkwürdig. An einem Ort wie diesem würde man einen Deva nicht gerade vermuten. Aber wenn dies der Fall wäre, würde ich mich mal im Wirtshaus Zum Verrätertor erkundigen. Soviel ich weiß, kann man dort solche Auskünfte bekommen."~ */
  IF ~~ THEN REPLY #10065 /* ~"Danke, das werd' ich tun."~ */ EXIT
  IF ~~ THEN REPLY #10066 /* ~"Wo kann ich diesen Ort finden?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #10067 /* ~"Tut mir leid, mein Freund. Ich bin mir nicht ganz sicher, weil ich noch nie selbst dort war. Aber du bist in der richtigen Gegend. Sieh dich einfach um."~ */
  IF ~~ THEN REPLY #10068 /* ~"Meinen Dank und leb wohl."~ */ EXIT
END

IF ~  Global("Curst_rogue_paid","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #10069 /* ~Der Gauner ist nicht gerade glücklich, dich wiederzusehen. "Na, wenn das nicht mein alter Freund ist. Kommst du mich wieder besuchen? Wirklich sehr nett von dir, aber ich versuche hier zu arbeiten."~ */
  IF ~~ THEN REPLY #10070 /* ~"Ich kam wegen Geld, nicht für Unterhaltung."~ */ GOTO 12
  IF ~~ THEN REPLY #10072 /* ~"Ich suche nach einem Deva. Mir ist zu Ohren gekommen, daß einer in Verdammnis sein soll."~ */ GOTO 9
  IF ~~ THEN REPLY #10073 /* ~"Tut mir leid, wollte nicht stören; nur mal Hallo sagen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #10071 /* ~Er runzelt die Stirn und sagt mit ernster Stimme: "Hör mir mal gut zu, mein Freund. Du hast mich durchschaut, und ich hab' dich dafür bezahlt, daß du mich in Ruhe läßt, wie sich das für Profis gehört. Können wir es nicht dabei belassen und Freunde bleiben?"~ */
  IF ~~ THEN REPLY #10074 /* ~"Also gut. Dann geht ich lieber."~ */ EXIT
  IF ~~ THEN REPLY #10075 /* ~"Das glaub ich nicht. Gib mir ein bißchen Gold, oder ich leg dich um."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #10076 /* ~"Schade, daß wir uns nicht einigen konnten."~ */
  IF ~~ THEN REPLY #10077 /* ~"Dir wird gleich noch was anderes leid tun."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
