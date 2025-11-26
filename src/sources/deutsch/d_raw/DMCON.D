// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60874 /* ~Du siehst ein mechanisches Wesen mit kränklich gelber Hautfarbe an einem Arm. Obwohl es sich unverkennbar um ein Konstrukt handelt, hat es sehr lebendige Gesichtszüge, die dich finster anblicken.~ */
  IF ~~ THEN REPLY #60875 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #60876 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60877 /* ~Mit surrendem Getriebe verengen sich seine Augen zu schmalen Schlitzen, während es dich weiter anstarrt. Plötzlich schlägt es sich mit beiden Armen auf die Brust, wobei sein Brustwürfel kräftig scheppert, und springt ein paarmal auf und ab. Schließlich bleibt es stehen und gafft dich an. "Huh!"~ */
  IF ~~ THEN REPLY #60878 /* ~"Was sollte denn das bewirken?"~ */ GOTO 2
  IF ~~ THEN REPLY #60879 /* ~"Wer bist du?"~ */ GOTO 5
  IF ~~ THEN REPLY #60880 /* ~"Was bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #60881 /* ~"Was machst du da?"~ */ GOTO 7
  IF ~~ THEN REPLY #60882 /* ~"Für so was hab ich wirklich keine Zeit. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60883 /* ~Es sieht dich verwirrt an, richtet sich auf und kratzt sich am Kopf. "Das sollte eine Angstreaktion hervorrufen. Ist es gelungen?"~ */
  IF ~~ THEN REPLY #60884 /* ~"Nö."~ */ GOTO 3
  IF ~~ THEN REPLY #60885 /* ~"Ja, es war wirklich meisterhaft."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60886 /* ~Es seufzt und schaut einen Moment weg. "Tut mir leid, das zu hören. Ich hatte gehofft, meine Lebenserwartung soweit zu erhöhen, daß ich noch ein paar Extratreffer bei dir lande. Nun ja..." Es greift dich an.~ */
  IF ~~ THEN REPLY #60887 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #60888 /* ~Es lächelt und nickt. "Großartig. Ich werde diese Technik als für die zukünftige Anwendung geeignet registrieren." Es greift dich an.~ */
  IF ~~ THEN REPLY #60889 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #60890 /* ~"Ich bin dein Todfeind." Es greift dich an.~ */
  IF ~~ THEN REPLY #60891 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60892 /* ~"Ich bin ein mittleres Kampfkonstrukt. Meine derzeitigen Funktionen sind: durchschnittliche Kampfleistung, durchschnittliche Intelligenz und mittelmäßige Beherrschung meiner Vorzugswaffe." Es greift dich an.~ */
  IF ~~ THEN REPLY #60893 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60894 /* ~"Ich werte dich gerade aus, um deine Schwachpunkte festzustellen." Das Konstrukt hält inne. "Ich habe meine Auswertung abgeschlossen und werde dich jetzt ohne Gnade angreifen." Es greift dich an.~ */
  IF ~~ THEN REPLY #60895 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY #60896 /* ~"Du wagst es, meine Aufmerksamkeit auf dich zu ziehen, und fertigst mich dann einfach so ab? Nicht mit mir!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60897 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60898 /* ~Du siehst ein mechanisches Wesen mit kränklich gelber Hautfarbe an einem Arm. Obwohl es sich unverkennbar um ein Konstrukt handelt, hat es sehr lebendige Gesichtszüge, die dich finster anblicken.~ */
  IF ~~ THEN REPLY #60899 /* ~"Sei gegrüßt."~ */ GOTO 10
  IF ~~ THEN REPLY #60900 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60901 /* ~Es sieht dich mit einem übertriebenen Grinsen an und betrachtet dich eingehend. Schließlich stößt es ein heiseres, monotones Lachen aus. "Ist das etwa das Beste, was sie schicken können? Ha! Die Narren tun mir leid." Es gafft dich weiter an.~ */
  IF ~~ THEN REPLY #60903 /* ~"Das Beste, das WER schicken kann?"~ */ GOTO 11
  IF ~~ THEN REPLY #60904 /* ~"Wer bist du?"~ */ GOTO 12
  IF ~~ THEN REPLY #60905 /* ~"Was bist du?"~ */ GOTO 13
  IF ~~ THEN REPLY #60906 /* ~"Was tust du da?"~ */ GOTO 14
  IF ~~ THEN REPLY #60907 /* ~"Ich muß jetzt los. Auf Wiedersehen."~ */ GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60908 /* ~Es wirft den Kopf zurück und lacht auf. "Ha! Ha! Dein kläglicher Versuch, Unwissenheit zu heucheln, wird dich nicht retten. Dein Schicksal ist besiegelt, Dummkopf!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60909 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60910 /* ~"Ich habe keine Identität, ich bin nur ein namenloses Stück Kanonenfutter, das dir beim Durchstreifen dieser Hallen in den Weg gestellt wurde." Es greift dich an.~ */
  IF ~~ THEN REPLY #60911 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #60912 /* ~Es hält einen Moment inne und kratzt sich am Kopf. "Ich bin das Monster, das dich zu Tode prügeln wird... es sei denn, du tötest mich zuerst." Es greift dich an.~ */
  IF ~~ THEN REPLY #60915 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #60916 /* ~"Ich nehme eine selbstsichere und überlegene Haltung an, um dir ein Gefühl der Unzulänglichkeit zu geben. Wenn es gelingt, wird mir dies den Sieg sichern in dem Kampf, den ich nun gleich anfange." Es greift dich an.~ */
  IF ~~ THEN REPLY #60917 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #60918 /* ~"Ha! Glaubst du vielleicht, du könntest meinem Zorn entrinnen, indem du mich einfach so gleichgültig abfertigst? Falsch gedacht!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60919 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 16 // from:
  SAY #60920 /* ~Du siehst ein mechanisches Wesen mit kränklich gelber Hautfarbe an einem Arm. Obwohl es sich unverkennbar um ein Konstrukt handelt, hat es sehr lebendige Gesichtszüge, die dich finster anblicken.~ */
  IF ~~ THEN REPLY #60921 /* ~"Sei gegrüßt."~ */ GOTO 17
  IF ~~ THEN REPLY #60922 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60923 /* ~"Sei auch du gegrüßt." Es sieht dich ausdruckslos an.~ */
  IF ~~ THEN REPLY #60924 /* ~"Wer bist du?"~ */ GOTO 18
  IF ~~ THEN REPLY #60926 /* ~"Was bist du?"~ */ GOTO 19
  IF ~~ THEN REPLY #60927 /* ~"Was machst du da?"~ */ GOTO 20
  IF ~~ THEN REPLY #60928 /* ~"Ich muß jetzt weiter, Wiedersehen."~ */ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60929 /* ~Es überlegt einen Moment und zuckt dann mit den Achseln. "Ich weiß es nicht. " Es runzelt die Stirn. "Ich glaube, ich habe eigentlich nie gewußt, wer ich bin. Mir scheint meine Identität, mein Zweck in diesem Leben irgendwie bedeutungslos. Ich fühle mich so verloren... allein... Mir ist danach zumute,... meinen Frust an irgend jemandem oder irgend etwas auszulassen..." Es greift dich an.~ */
  IF ~~ THEN REPLY #60930 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #60931 /* ~Es runzelt die Stirn. "Ich bin bloß eine Figur in irgendeinem grausamen Spiel. Ich habe keine Identität, kein Leben, und jetzt kommst du daher und fängst an, mich mit deinen blödsinnigen Fragen zu nerven. Ich hasse das Leben, ich hasse dich." Es greift dich an.~ */
  IF ~~ THEN REPLY #60932 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY #60933 /* ~Es sieht dich verächtlich an. "Ich warte darauf, daß wir mit diesem sinnlosen Palaver fertig sind, damit ich dich zusammenschlagen kann." Es starrt dich böse an.~ */
  IF ~~ THEN REPLY #60934 /* ~"Warum willst du das tun?~ */ GOTO 21
  IF ~~ THEN REPLY #60935 /* ~Greif das Wesen an.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60937 /* ~Es zuckt mit den Schultern. "Das Skript, das mir momentan zugeteilt ist, bietet keine Alternativvorschläge. Sobald dieser Satz beendet ist, werde ich einen Kampf mit dir anfangen." Es greift dich an.~ */
  IF ~~ THEN REPLY #60938 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #60939 /* ~"Ja, Wiedersehen. Aber bevor du gehst, gestatte mir, den Frust abzureagieren, den deine Gegenwart bei mir verursacht hat."~ */
  IF ~~ THEN REPLY #60941 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
