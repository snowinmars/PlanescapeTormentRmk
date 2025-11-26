// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47907 /* ~Du triffst auf einen kräftigen jungen Mann. Er scheint gerade dabei zu sein, den Inhalt einiger Kisten in verschiedene Stände auf dem Markt einzuräumen. Er nickt, als er dich kommen sieht. "Guten Tag, Schleifer."~ */
  IF ~~ THEN REPLY #47908 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #47909 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47910 /* ~Er nickt erneut. "Womit kann ich dienen?"~ */
  IF ~~ THEN REPLY #47911 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #47912 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 6.1 8.0 9.0 10.0 11.0
  SAY #47913 /* ~"Nun denn." Er erwartet deine Fragen.~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47914 /* ~"Ich suche jemanden namens Lothar. Man nennt ihn auch den Herrn der Knochen..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47916 /* ~"Mir wurde ein Schädel gestohlen. Weißt du zufällig, wer so etwas tun würde?"~ */ GOTO 5
  IF ~~ THEN REPLY #47917 /* ~"Wo kann ich Waffen kaufen?"~ */ GOTO 8
  IF ~~ THEN REPLY #47918 /* ~"Wo kann ich magische Gegenstände kaufen?"~ */ GOTO 9
  IF ~~ THEN REPLY #47919 /* ~"Was kannst du mir über diesen Bezirk erzählen?"~ */ GOTO 10
  IF ~~ THEN REPLY #47920 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 7.0
  SAY #47915 /* ~Er schüttelt den Kopf. "Der Herr der Knochen... mag keine Besucher, Schleifer. Such ihn ruhig, aber du wirst ihn *nicht* finden."~ */
  IF ~~ THEN REPLY #47931 /* ~"Ja, das will ich..."~ */ GOTO 4
  IF ~~ THEN REPLY #47932 /* ~"Na gut. Ich frag dich etwas anderes..."~ */ GOTO 2
  IF ~~ THEN REPLY #47933 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47921 /* ~Er starrt dich einen Augenblick lang an und richtet seinen Blick dann auf deine vielen Narben. Er zuckt mit den Schultern, als er dir in die Augen schaut. "Geh vom Markt aus Richtung Süden und dann ein wenig nach Osten. Das zerfallene Haus. Mögen die Mächte mit dir sein, Schleifer." Er wendet sich ab und geht wieder an die Arbeit.~ */
  IF ~~ THEN REPLY #47922 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #47927 /* ~Er runzelt die Stirn und mustert dich von oben bis unten. "Nun... hat es irgendwas Besonderes mit diesem Schädel auf sich?"~ */
  IF ~~ THEN REPLY #47928 /* ~"Nein."~ */ GOTO 6
  IF ~~ THEN REPLY #47929 /* ~"Ja. Er konnte sprechen."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47930 /* ~Er zuckt mit den Achseln. "Dann versteh ich nicht, warum irgendjemand Interesse an ihm haben sollte."~ */
  IF ~~ THEN REPLY #47941 /* ~"Und wenn er sprechen könnte?"~ */ GOTO 7
  IF ~~ THEN REPLY #47942 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #47943 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #47934 /* ~Er sieht dich einen Moment lang an. "Ich würde sagen, das zeichnet ihn als etwas Besonderes aus. Ich will damit sagen, daß er dadurch das Interesse von Lothar, dem Herrn der Knochen, geweckt haben könnte."~ */
  IF ~~ THEN REPLY #47935 /* ~"Wo finde ich diesen Lothar?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47937 /* ~"Dann solltest du dich an Anze wenden. Er ist für gewöhnlich am Stand da drüben beim Ofen zu finden."~ */
  IF ~~ THEN REPLY #47938 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #47939 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #47944 /* ~"Dann mußt du dich an Aalek wenden. Der ist für gewöhnlich am hinteren Stand drüben beim Ofen zu finden."~ */
  IF ~~ THEN REPLY #47945 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #47946 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #47947 /* ~Er seufzt. "Es ist mein Zuhause... Ich kann mir keinen besseren Ort zum Leben vorstellen, und es gibt auch wirklich Schlimmeres." Er zuckt wieder mit den Achseln. "Wenn du Genaueres wissen willst, dann wende dich an Anzes Jungen Lazlo. Er ist normalerweise da drüben beim Ofen. Der Bursche ist immer für einen Plausch zu haben."~ */
  IF ~~ THEN REPLY #47948 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #47949 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #47950 /* ~Der Arbeiter schaut dich an und lächelt. "Hallo. Lange nicht gesehen. Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #47951 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #47952 /* ~"Nichts. Leb wohl."~ */ EXIT
END
