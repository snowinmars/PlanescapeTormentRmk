// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3200 /* ~Diese älter wirkende Edelfrau grüßt dich mit einer eleganten Verbeugung. "Sehr erfreut, mein Herr. Darf ich es wagen, Euch mitzuteilen, bevor Ihr mich irgend etwas fragt, daß ich hier Kundin bin, nicht eine der Schülerinnen."~ */
  IF ~~ THEN REPLY #3201 /* ~"Du bist eine Kundin?"~ */ GOTO 3
  IF ~~ THEN REPLY #40085 /* ~"Aha. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #40086 /* ~"Ich bin eigentlich nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40087 /* ~Die Edelfrau verbeugt sich anmutig, als du dich ihr näherst. "Schön, Euch wiederzutreffen, mein Herr."~ */
  IF ~~ THEN REPLY #40088 /* ~"Ja, sei gegrüßt. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #40089 /* ~"Schön, dich zu treffen. Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.0 4.2 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.2 13.1 14.0
  SAY #40090 /* ~Die Frau nickt. "Natürlich."~ */
  IF ~~ THEN REPLY #40091 /* ~"Du hast gesagt, daß du hier eine Kundin bist?"~ */ GOTO 3
  IF ~~ THEN REPLY #40092 /* ~"Was machst du hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #40093 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40094 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ GOTO 6
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40095 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ GOTO 7
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40096 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 8
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40097 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 9
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40098 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 10
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40099 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 11
  IF ~~ THEN REPLY #40100 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 12.0
  SAY #40101 /* ~Sie nickt. "Das ist richtig, junger Herr. Ich bin hier eines Abends hergekommen, um mit eigenen Augen zu sehen, warum mein Ehemann ständig diesen Ort besuchte... Ich habe mich schnell mit einigen der Prositituierten angefreundet, und so bin ich nun hier! Nicht nur Männer haben Freude an einer gute Unterhaltung, wißt Ihr."~ */
  IF ~~ THEN REPLY #40102 /* ~"Das ist wahr. Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40103 /* ~"Das denke ich mal so. Wie auch immer, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #40104 /* ~"Das Bordell ist eine Schule, die von Grace, der Gefallenen, eingerichtet wurde... Sie unterrichtet Schülerinnen, die Mitglieder der Gesellschaft der Empfindung werden möchten, in der hohen Kunst der Sprache und Kommunikation. Wenn das, was ich gehört habe, richtig ist, trägt das Bordell sich selbst mittels Spenden wohlhabender Besuchern."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40105 /* ~"Grace, die Gefallene?"~ */ GOTO 14
  IF ~~ THEN REPLY #40106 /* ~"Erzähl mir was über die Gesellschaft der Empfindung."~ */ GOTO 5
  IF ~~ THEN REPLY #40107 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40108 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #40109 /* ~Die Frau sieht dich seltsam an, aber nur kurz. "Sicher habt Ihr schon von ihnen gehört, oder? Sinnsaten? Das ist ein Bund, der glaubt, daß Erfahrungen der Schlüssel zum Verständnis des Multiversums sind. Der Sitz dieses Bundes, die Städtische Festhalle, ist ganz nah... Geht hier raus, nach links, und dann nochmal links. Ihr werdet dort viele antreffen, die nur allzu willig sind, über die Gesellschaft der Empfindung zu sprechen."~ */
  IF ~~ THEN REPLY #40110 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40111 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #40112 /* ~"Ich kenne sie nicht... Und ich kann mich nicht an ihren Namen erinnern. Ich habe mir sagen lassen, daß sie sich nicht verständlich machen kann, also habe ich nie versucht, mit ihr zu sprechen."~ */
  IF ~~ THEN REPLY #40113 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40114 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 13.0
  SAY #40115 /* ~"Ravel? Ich kenne niemenden, der Ravel heißt, und noch weniger weiß ich, ob das Kesais Mutter sein könnte. Kesai selbst hat mir aber erzählt, sie sei eine Waise, und daß ihr Vater, ein Halbscheusal, sie hier in Sigil gelassen hat, damit sie hier aufwächst."~ */
  IF ~~ THEN REPLY #40116 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40117 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #40118 /* ~"Nein, weiß ich nicht. Vivian hat's damit aber schon ne ganze Weile - sie ist völlig verärgert! Ich würde es nur zu gern sehen, daß sie ihn zurückbekommt, denn sie spricht zur Zeit kaum von etwas anderem."~ */
  IF ~~ THEN REPLY #40119 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40120 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.6
  SAY #40121 /* ~Die Frau runzelt scharf die Stirn. "Oh, ich mag diese Marissa nicht sonderlich. Sie hat eine wirklich unangenehme Veranlagung! Und was ihren Schleier betrifft, nein - von dem weiß ich nichts."~ */
  IF ~~ THEN REPLY #40122 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40123 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.7
  SAY #40124 /* ~"Ravel... Rätselschön..." Sie spricht den Namen langsam aus, als ob sie ihn noch nie zuvor ausgeprochen hat. "Ich muß zugeben, daß ich nichts über sie weiß."~ */
  IF ~~ THEN REPLY #40125 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40126 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.8
  SAY #40127 /* ~"Soweit ich weiß, gibt es hier nur neun Prostituierte... Und ich bin ziemlich sicher, daß ich mit allen gesprochen habe. Vielleicht gibt es ja ein neues Mädchen, das ich noch nicht getroffen habe...?"~ */
  IF ~~ THEN REPLY #40128 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40129 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.1
  SAY #40130 /* ~"Ich bin nur vorbeigekommen, um mit ein paar Freunden zu sprechen, das ist alles. Ich bin eine der wenigen weiblichen Gäste des Bordells zum Befriedigen Intellektueller Lüste."~ */
  IF ~~ THEN REPLY #40131 /* ~"Du bist eine Kundin?"~ */ GOTO 3
  IF ~~ THEN REPLY #40132 /* ~"Kannst du mir irgendeine empfehlen, mit der ich sprechen sollte?"~ */ GOTO 13
  IF ~~ THEN REPLY #40133 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40134 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #40135 /* ~"Das hängt davon ab, mit was für einer Person Ihr sprechen möchtet, mein Herr. Ich - tja, ich bin mit Vivian und Kesai-Serris befreundet, und manchmal plaudere ich ein wenig mit dieser lieben kleinen Sonnenfliege Nenny."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #40136 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ GOTO 7
  IF ~~ THEN REPLY #40137 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40138 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.0
  SAY #40139 /* ~"Ja... Die Prostituierten nennen sie Meisterin Grace. Sie begrüßt in der Regel die Gäste im Foyer des Bordells... Ihr könnt sie dort ja aufsuchen, wenn Ihr mit ihr reden möchtet."~ */
  IF ~~ THEN REPLY #40140 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 2
  IF ~~ THEN REPLY #40141 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
