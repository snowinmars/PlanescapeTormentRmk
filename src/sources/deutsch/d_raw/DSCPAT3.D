// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #10900 /* ~Dieser Mann hat schütteres Haar und einen zynischen Gesichtsausdruck. Er spricht abgehackt und betont jedes Wort klar und deutlich. "Was willst du, Schleifer?"~ */
  IF ~~ THEN REPLY #10901 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10902 /* ~"Ich suche ein Journal."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10903 /* ~"Ich suche einen Typen namens Pharod. Er ist Sammler von Beruf. Du hast ihn nicht zufällig gesehen oder von ihm gehört?"~ */ GOTO 8
  IF ~~ THEN REPLY #10904 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10905 /* ~"Wer brennt denn da vorne beim Eingang?"~ */ GOTO 5
  IF ~~ THEN REPLY #10906 /* ~"Du und deine Freundin, was habt ihr da grade über Sigil gesagt?"~ */ GOTO 6
  IF ~~ THEN REPLY #10907 /* ~"Nichts. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #10908 /* ~"Gerade jetzt, wo sie und ich ein weiteres, angeregtes Gespräch beginnen wollten." Seine Stimme ist voller Sarkasmus. "Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #10909 /* ~"Ich wollt' dir noch ein paar Fragen stellen."~ */ GOTO 7
  IF ~~ THEN REPLY #10910 /* ~"Nichts. Vergiß es einfach."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 7.0
  SAY #10911 /* ~"Ich bin Cilaen Eisenzeh. Ich sag dir auch gleich weshalb -mein bekloppter Bruder hat mir mal einen ziemlich schweren Felsbrocken auf die Füße fallenlassen und meine Zehen zerquetscht. Deshalb habe ich jetzt Eisenzehen. Zufrieden?"~ */
  IF ~~ THEN REPLY #10912 /* ~"Ja. Nehme ich mal an. Beantworte mir noch ein paar andere Fragen, ja?"~ */ GOTO 7
  IF ~~ THEN REPLY #10913 /* ~"Mehr oder weniger. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 7.1
  SAY #10914 /* ~"Ich habe keins gesehen. Jedenfalls keins, das mir besonders aufgefallen wäre. Falls es nicht allzu wertvoll war, kannst du dein Glück ja mal auf der Müllhalde am anderen Ende des Stocks versuchen. Ich verstehe deine Verzweiflung. Journale sind die Essenz unserer Identität. Sie erinnern uns an unsere Vergangenheit und helfen uns, Pläne für die zukunft zu schmieden. Ich habe auch eines und glaube, es hat einen besseren Menschen aus mir gemacht," sagt er selbstzufrieden.~ */
  IF ~~ THEN REPLY #10915 /* ~"Da hast du verdammt recht. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10916 /* ~"In den Müll-Labyrinthen? Danke auch."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 7.3
  SAY #10917 /* ~"Das ist die Schwelende Leiche. Ich hab' meine kleine, planlose Materier-Cousine hierher gebracht, damit sie das Aussehen, den Geruch und die Laute der Schönen von Sigil kennenlernt. Aber bisher scheint sie nichts besonders beeindruckt zu haben."~ */
  IF ~~ THEN REPLY #10918 /* ~"Ich verstehe auch warum. Kannst du mir noch was anderes sagen?"~ */ GOTO 7
  IF ~~ THEN REPLY #10919 /* ~"Wirklich? Merkwürdig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 7.4
  SAY #10920 /* ~"Der Pechvogel heißt angeblich Ignus. Er hat einen Teil des Stocks abgefackelt, bevor man ihn geschnappt und bestraft hat. Sie haben ihn zu einem Durchgang zur Feuerebene gemacht, und nun dient er als Attraktion zur Belustigung der Gäste. Besonders lustig finde ich das Spektakel zwar nicht, aber auf jeden Fall sehr interessant."~ */
  IF ~~ THEN REPLY #10921 /* ~"Auf jeden Fall. Kannst du mir noch was anderes sagen?"~ */ GOTO 7
  IF ~~ THEN REPLY #10922 /* ~"Ja, stimmt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 7.5
  SAY #10923 /* ~"Ach. Meine *Cousine* (er betont das Wort so, als wolle er ausdrücken, daß man sich seine Verwandtschaft nicht aussuchen kann) ist erst vor kurzem aus ihrer hinterwäldlerischen Heimat auf der Materiellen Ebene hierher gekommen. Mein Onkel, ein angesehener Zauberer, wollte, daß sie hier ihren Horizont erweitert. Jetzt glaubt sie, *dies* sei der Mittelpunkt des Multiversums und somit furchtbar wichtig. Doch ich, der ich mein ganzes Leben hier verbracht habe, weiß es besser - die Mächte und die in den Ebenen Geborenen nehmen uns überhaupt nicht wahr - genau wie die Menschen, die den Eichhörnchen in ihrem Stadtpark keine Beachtung schenken. Es ist einfach nicht wichtig, und je früher die Menschen merken, daß sie nicht wichtig sind, desto besser ist es für sie."~ */
  IF ~~ THEN REPLY #10924 /* ~"Wirklich? Hmm. Dazu muß ich mir wirklich mal ihre Rechtfertigung anhören. Könntest du mir in der Zwischenzeit noch ein paar Fragen beantworten?"~ */ GOTO 7
  IF ~~ THEN REPLY #10925 /* ~"Faszinierend. Vielen Dank und leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from: 1.0 2.0 3.0 4.0 5.0 6.0 8.1 9.0
  SAY #10926 /* ~"Was möchtest du wissen?"~ */
  IF ~~ THEN REPLY #10927 /* ~"Wer bist du?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10928 /* ~"Ich suche nach einem Journal."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10929 /* ~"Ich suche einen Sammler namens Pharod. Du hast ihn nicht zufällig gesehen oder von ihm gehört?"~ */ GOTO 8
  IF ~~ THEN REPLY #10930 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10931 /* ~"Wer brennt denn da vorne beim Eingang?"~ */ GOTO 5
  IF ~~ THEN REPLY #10932 /* ~"Du und deine Freundin, was habt ihr da grade über Sigil gesagt?"~ */ GOTO 6
  IF ~~ THEN REPLY #10933 /* ~"Nichts. Schönen Tag noch."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 7.2
  SAY #10934 /* ~"Einem Sammler? Einer von diesen üblen Totenschleppern? Mit denen habe ich nichts zu tun. Falscher Bezirk, wirklich. Nein, den Namen habe ich nie gehört."~ */
  IF ~~ THEN REPLY #10935 /* ~"Und welcher IST dein Bezirk?"~ */ GOTO 9
  IF ~~ THEN REPLY #10936 /* ~"Da ist nicht sehr hilfreich. Vielleicht kannst du mir ein paar Fragen beantworten?"~ */ GOTO 7
  IF ~~ THEN REPLY #10937 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #10938 /* ~"Ich lebe mit meinem Onkel im Bezirk der Dame. Dort leben die besseren Leute, wenn ich das mal so sagen darf. Nicht das Gesindel, das sich hier herumtreibt. Hierher zu kommen, bedeutet EINDEUTIG eine Verschlechterung. Ich kann nicht gerade behaupten, daß es mir hier gefällt, aber mir wurde beigebracht, daß man im Leben jede Gelegenheit ergreifen sollte, um Erfahrungen zu sammeln. Und genau dazu bin ich hier."~ */
  IF ~~ THEN REPLY #10939 /* ~"Der Bezirk der Dame, was? Nun gut. Beantworte mir ein paar Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #10940 /* ~"Wie du meinst. Auf bald."~ */ EXIT
END
