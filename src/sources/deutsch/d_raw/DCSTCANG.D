// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3172 /* ~Du siehst einen jungen Mann, der mürrisch aus der Wäsche schaut. Er murmelt vor sich hin und wirkt besorgt.~ */
  IF ~~ THEN REPLY #3173 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #13708 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13709 /* ~Zuerst glaubst du, er hätte dich nicht gehört, aber dann dreht er den Kopf und sieht dich kurz an. Dann dreht er sich wieder weg. "Ich kenn dich nicht, Dussel, und ich will dich nicht kennen. Geh weg, dann muß ich dir auch nicht wehtun."~ */
  IF ~~ THEN REPLY #13710 /* ~"Schau, ich will dir nur ein paar Fragen stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #13711 /* ~"Du bedrohst den Falschen, du Dummkopf. Beantworte einfach meine Fragen, sonst muß ich dir bessere Manieren beibringen."~ */ GOTO 3
  IF ~~ THEN REPLY #13712 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13713 /* ~"Gut. Ich geh dann."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13714 /* ~Er dreht seinen Kopf, um dich anzusehen, und sein Gesicht ist vor Wut rot angelaufen. Er spricht zwischen zusammengebissenen Zähnen. "Fragen? Seh ich vielleicht aus wie der Weise vom Ort, Dussel? Geh mir aus den Augen, bevor ich dich noch um ein paar Narben bereichere."~ */
  IF ~~ THEN REPLY #13715 /* ~"Du bedrohst den Falschen, du Dummkopf. Beantworte einfach meine Fragen, sonst muß ich dir bessere Manieren beibringen."~ */ GOTO 3
  IF ~~ THEN REPLY #13716 /* ~"Das wollen wir doch mal sehen."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13717 /* ~"Gut, ich geh dann mal."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #13718 /* ~Er wirbelt herum, und sein Gesicht ist rot vor Wut. Er scheint etwas sagen zu wollen, hält dann aber inne und sieht dich genauer an. Als er die vielen Narben wahrnimmt, die deinen Körper bedecken, scheint seine Wut der Furcht zu weichen. "Äh... Entschuldigung, Schleifer. Welches Dunkel willste denn finden?"~ */
  IF ~~ THEN REPLY #13719 /* ~"Ich suche nach einem Deva. Mir wurde gesagt, daß ich ihn hier finden könnte."~ */ GOTO 4
  IF ~~ THEN REPLY #13720 /* ~"Was gibt's für Neuigkeiten in der Gegend?"~ */ GOTO 5
  IF ~~ THEN REPLY #13721 /* ~"Erzähl mir was über Verdammnis."~ */ GOTO 6
  IF ~~ THEN REPLY #13722 /* ~"Ach, egal."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #13723 /* ~Er runzelt gedankenverloren die Stirn und sieht dann einen Moment lang weg von dir. "Falsche Torstadt, Schleifer. Devas kommen hier nicht vorbei, jedenfalls nicht, soweit ich das gehört hab'."~ */
  IF ~~ THEN REPLY #13724 /* ~"In Ordnung. Dann ein paar andere Fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #13725 /* ~"Danke. Man sieht sich."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 7.1
  SAY #13726 /* ~"Kann ich dir nicht sagen. Ich versuch, meine Nase aus den Angelegenheiten anderer rauszuhalten. So kann ein Schleifer länger und besser leben." Er macht eine Pause und sieht etwas nervös aus. "Ich will dich ja nicht beleidigen... aber du solltest das besser auch so halten."~ */
  IF ~~ THEN REPLY #13727 /* ~"Ich werd's mir merken. Erzähl mir jetzt aber noch etwas anderes."~ */ GOTO 7
  IF ~~ THEN REPLY #13728 /* ~"Komisch... ich kann mich nicht erinnern, dich um Rat gefragt zu haben. Noch so'n Ausrutscher könnte dich teuer zu stehen kommen."~ */ GOTO 8
  IF ~~ THEN REPLY #13729 /* ~"Vielen Dank für deinen Rat. Man sieht sich."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 7.2
  SAY #13730 /* ~Er schnaubt und sieht sich einen Moment lang um, bevor er antwortet. "Das heißt hier nicht grundlos Verdammnis, Schleifer. Dieser Ort ist ein Gefängnis für alle Schlucker, die ihr Leben nicht im Griff haben. Das traurige Dunkel der ganzen Sache ist, daß die meisten Dussel nicht mal wissen, daß sie hier Gefangene sind."~ */
  IF ~~ THEN REPLY #13731 /* ~"Ein Gefängnis?"~ */ GOTO 9
  IF ~~ THEN REPLY #13732 /* ~"Verstehe. Eine andere Frage."~ */ GOTO 7
  IF ~~ THEN REPLY #13733 /* ~"Nun, vielen Dank für die Informationen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.1 8.0 9.0
  SAY #13734 /* ~"Sicher. Was willste denn wissen?"~ */
  IF ~~ THEN REPLY #13735 /* ~"Ich suche nach einem Deva. Mir wurde gesagt, daß ich ihn hier finden könnte."~ */ GOTO 4
  IF ~~ THEN REPLY #13736 /* ~"Was gibt's für Neuigkeiten in der Gegend?"~ */ GOTO 5
  IF ~~ THEN REPLY #13737 /* ~"Erzähl mir was über Verdammnis."~ */ GOTO 6
  IF ~~ THEN REPLY #13738 /* ~"Ach, egal."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #13739 /* ~Sein Gesicht läuft schon wieder rot an, während er noch um Selbstbeherrschung ringt. "Sorry, wird nicht wieder vorkommen. Du, äh, wolltest noch was?"~ */
  IF ~~ THEN REPLY #13740 /* ~"Ja, ich hab' ein paar Fragen an dich."~ */ GOTO 7
  IF ~~ THEN REPLY #13741 /* ~"Nein, das wäre alles."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #13742 /* ~Er sieht sich um und lehnt sich ein wenig näher zu dir herüber. "Ja, auf den ersten Blick kann man es nicht sehen, aber Verdammnis ist definitiv 'n Gefängnis. Versuch doch mal, abzuhauen, dann siehste schon, was ich meine. Wenn du keinen wirklich guten Grund hast oder eine Art, wie es dir gelingen kann, kommst du durch die Stadttore nicht durch." Er macht eine Pause und sieht sich nochmals um. "Mehr kann ich nicht sagen."~ */
  IF ~~ THEN REPLY #13743 /* ~"Hmm. Laß mich dich was anderes fragen."~ */ GOTO 7
  IF ~~ THEN REPLY #13744 /* ~"Danke. Man sieht sich."~ */ EXIT
END
