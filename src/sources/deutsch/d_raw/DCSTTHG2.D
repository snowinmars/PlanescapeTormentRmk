// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTTHG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTTHG2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9902 /* ~Du siehst einen Mann in einer Rüstung, der ein Schwert an seiner Seite trägt. Er begutachtet dich mißtrauisch, als du näherkommst.~ */
  IF ~~ THEN REPLY #9903 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #9904 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9905 /* ~Er nickt dir zu und blickt sich dann rasch um. "Ebenfalls. Was willst du?"~ */
  IF ~~ THEN REPLY #9906 /* ~"Ich wollte dir ein paar Fragen stellen."~ */ GOTO 2
  IF ~~ THEN REPLY #9907 /* ~"Ach, egal."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #9908 /* ~"Ich bin neu in Verdammnis. Ich bezweifle, daß ich deine Fragen beantworten kann. Aber ich kann es ja mal versuchen."~ */
  IF ~~ THEN REPLY #9909 /* ~"Hast du was von einem Deva gehört, der in der Stadt sein soll?"~ */ GOTO 3
  IF ~~ THEN REPLY #9910 /* ~"Dürfte ich fragen, warum du in Verdammnis bist?"~ */ GOTO 5
  IF ~~ THEN REPLY #9911 /* ~"Ach, egal."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9912 /* ~Er macht ein erstauntes Gesicht. "Einen Deva. Nicht daß ich wüßte. Was sollte ein Deva hier zu suchen haben? Das ist doch völlig absurd."~ */
  IF ~~ THEN REPLY #9913 /* ~"Ja, nun gut... Warum bist du in Verdammnis?"~ */ GOTO 5
  IF ~~ THEN REPLY #9914 /* ~"Keine Ahnung. Ich muß gehen."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.2 6.1 7.0
  SAY #9915 /* ~"Na dann viel Glück. Leb wohl."~ */
  IF ~~ THEN REPLY #9916 /* ~"Dir auch."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #9917 /* ~"Ich bin Söldner. Ich habe gehört, in Verdammnis gäbe es Arbeit, deshalb bin ich hergekommen. Aber jetzt ist fast die ganze verdammte Stadt wegen der Pest abgeriegelt, und ich kann nicht dorthin, wo ich hin muß."~ */
  IF ~~ THEN REPLY #9918 /* ~"Was weißt Du über diese Pest?"~ */ GOTO 6
  IF ~~ THEN REPLY #9919 /* ~"Wo willst du denn hin?"~ */ GOTO 7
  IF ~~ THEN REPLY #9920 /* ~"Ich verstehe. Ich muß mich jetzt verabschieden."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #9921 /* ~Er zuckt mit den Achseln. "Nichts, wirklich nicht. Anscheinend kam sie über Nacht, konnte aber rasch eingedämmt werden, indem die verseuchten Gebiete abgeriegelt wurden." Er seufzt. "Wirklich verdammt unpraktisch. Jetzt kann ich meinen Kontaktmann nicht treffen."~ */
  IF ~~ THEN REPLY #9922 /* ~"Wo willst du denn hin?"~ */ GOTO 7
  IF ~~ THEN REPLY #9923 /* ~"Ich danke dir. Ich muß jetzt gehen."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #9924 /* ~"Zum Gevierteilten Mann. Ein Treffpunkt für Söldner, aber in diesen Teil der Stadt kannst du jetzt nicht gehen."~ */
  IF ~~ THEN REPLY #9925 /* ~"Ich verstehe. Ich muß mich jetzt auf den Weg machen."~ */ GOTO 4
END
