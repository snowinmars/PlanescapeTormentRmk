// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGS1~

IF ~  NumTimesTalkedToLT(1)
~ THEN BEGIN 0 // from:
  SAY #1910 /* ~Der Mann blickt langsam auf, als du dich näherst. Er schaut dich an und grinst höhnisch. "Was zum Teufel bist du für einer?" Er rümpft die Nase. "Die Staubies vermissen wohl einen ihrer räudigen Hunde." Er lacht. "Ha! So was Häßliches wie du ist mir noch *nie* begegnet."~ */
  IF ~~ THEN REPLY #1911 /* ~"Dann guck mal in den Spiegel!"~ */ GOTO 1
  IF ~~ THEN REPLY #1912 /* ~"Halt' deine Zunge lieber ein wenig im Zaum, oder du findest sie gleich zu deinen Füßen wieder."~ */ GOTO 1
  IF ~~ THEN REPLY #1913 /* ~"Leb wohl."~ */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 11.0 11.1
  SAY #1914 /* ~Der Mann wirkt kurzweilig erstaunt, setzt dann wieder sein spöttisches Grinsen auf und befingert den Griff seiner Klinge. "Ich glaub, ich muß dich 'n bißchen bluten lassen, Herrschner."~ */
  IF ~~ THEN REPLY #1915 /* ~"Zieh die Klinge, und du wirst dir damit nur selbst den Tod bringen."~ */ GOTO 2
  IF ~~ THEN REPLY #1916 /* ~"Immer mit der Ruhe. Ich will vielleicht gar nicht mit dir kämpfen.~ */ GOTO 3
  IF ~~ THEN REPLY #1917 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1918 /* ~"Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1919 /* ~Er greift nach seiner Waffe. "Das werden wir ja seh'n, Herrschner... Das werden wir ja seh'n "~ */
  IF ~~ THEN REPLY #1945 /* ~"Ich habe dich gewarnt..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #1920 /* ~"Ach, was du nicht sagst." Er spuckt dir vor die Füße. "Hast du Suppe in deinen Adern, Dussel? Wäßriges, dünnes Feiglingsblut? Oder hast du dir das auch schon abzapfen lassen?"~ */
  IF ~~ THEN REPLY #1921 /* ~"Wenn ich mich recht erinnere, ist es deine Mutter, der das dünne, wässerige Blut von Feiglingen durch die Adern fließt... und nach meiner Rechnung heißt das, die Hälfte aller Stadtbastarde sind mit dir blutsverwandt."~ */ GOTO 4
  IF ~~ THEN REPLY #1922 /* ~"Laß uns lieber aufhören, bevor es Ärger gibt."~ */ GOTO 5
  IF ~~ THEN REPLY #1923 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1924 /* ~"Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1
  SAY #1925 /* ~Der Mann blinzelt, als müßte er erst verdauen, was du gesagt hast. Dann färbt sich sein Gesicht rot vor Wut. Er zieht seine Klinge und geht auf dich los.~ */
  IF ~~ THEN REPLY #1946 /* ~Verteidige Dich...~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #1926 /* ~"Immer schön langsam, Dussel, so leicht kommst du mir nicht davon. *Zahlen* sollst du für das Privileg, daß meine Klinge dich verschont."~ */
  IF ~~ THEN REPLY #1927 /* ~"Also gut. Wieviel?"~ */ GOTO 6
  IF ~~ THEN REPLY #1929 /* ~"Deine Mutter verlangt doch auch nichts. Warum dann du?"
~ */ GOTO 4
  IF ~~ THEN REPLY #1930 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1931 /* ~Geh einfach weg.~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #1932 /* ~"Gib mir einfach alles, was du bei dir hast. Das dürfte reichen." Er lacht. "Los, mach schon. Her damit."~ */
  IF ~~ THEN REPLY #1936 /* ~Gib ihm dein ganzes Geld.~ */ GOTO 10
  IF ~~ THEN REPLY #1937 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1938 /* ~Verschwinde.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY #1933 /* ~"Vielleicht solltest du dir nächstes Mal genauer überlegen, ob du dich auf ein Gespräch mit mir einlassen willst, du Krankheit zwischen der Mutter Lenden."~ */
  IF ~~ THEN REPLY #1939 /* ~"*Was* sagst du?"~ */ GOTO 9
  IF ~~ THEN REPLY #1940 /* ~Ignoriere ihn und geh.~ */ EXIT
  IF ~~ THEN REPLY #1941 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 3.3 5.3 6.2 11.2
  SAY #1934 /* ~"Na, dann geh' halt zurück zum Schlachter, Feigling." Er lacht.~ */
  IF ~~ THEN REPLY #1942 /* ~"*Was* sagst du?"~ */ GOTO 9
  IF ~~ THEN REPLY #1943 /* ~Ignoriere ihn und geh.~ */ EXIT
  IF ~~ THEN REPLY #1944 /* ~Greif' ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #1935 /* ~"Oh... ich bitte vielmals um Verzeihung, Schleifer... bist du taub?" Er sieht dich geringschätzig an. "Du Ärmster, hast wohl ein paar auf die Rübe bekommen?" Er untermalt seine Worte, indem er gegen seinen Kopf klopft. "Muß ich langsamer sprechen, Dussel?"~ */
  IF ~~ THEN REPLY #1947 /* ~Greif ihn an.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1948 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #1949 /* ~Er hält seine Hände hoch, als du nach dem Geld greifst. "Warte, Feigling, halt' das kurz für mich fest... ich nehm's gleich wieder, aber erst, wenn ich dich ausgeweidet habe." Er zieht seine Klinge und lächelt. "Ich fürchte, ich muß dich noch häßlicher machen als du bist."~ */
  IF ~~ THEN REPLY #1950 /* ~Verteidige Dich...~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #1951 /* ~"Hä?" Er grinst spöttisch. "Du schon wieder, Dussel? Suchst du Almosen? Bettel lieber woanders." Er schaut dich von oben bis unten an. "So was Häßliches wie du ist mir ja noch nie untergekommen."~ */
  IF ~~ THEN REPLY #1953 /* ~"Dann guck mal in den Spiegel!"
~ */ GOTO 1
  IF ~~ THEN REPLY #1954 /* ~"Halt' deine Zunge lieber ein wenig im Zaum, oder du findest sie gleich zu deinen Füßen wieder."~ */ GOTO 1
  IF ~~ THEN REPLY #1955 /* ~"Auf bald."~ */ GOTO 8
END
