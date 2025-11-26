// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_03~

IF ~  !Global("S_Stone","AR0603",3)
!Global("S_Stone","AR0603",10)
~ THEN BEGIN 0 // from:
  SAY #34214 /* ~Dies ist ein ungewöhnlicher violetter Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47414 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",3)
~ THEN BEGIN 1 // from:
  SAY #47415 /* ~Dies ist der violette Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Tödliche Langeweile' eingeschlossen.~ */
  IF ~~ THEN REPLY #47428 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47429 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47417 /* ~Die Erfahrung kann nur ein paar Minuten lang dauern, doch es scheinen *Stunden* zu vergehen... In einer langen, langweiligen Vorlesung im trockensten und staubigsten Saal der Universität von Chalm in Sigil. Dein Blick schweift durch den riesigen Saal in der Hoffnung, jemanden zu entdecken, dem man ein Gesicht ziehen kann. Doch die anderen Studenten schlafen entweder oder starren lustlos in den Raum. Du läßt deine Schreibfeder fallen, hebst sie wieder auf und läßt sie erneut fallen... nur um dich irgendwie zu beschäftigen. Du erwägst schon, sie dir ins Auge zu stechen, nur um zu sehen, ob deine Sinne noch nicht völlig von der unglaublichen Langeweile betäubt worden sind....~ */
  IF ~  Global("Sensation03","AR0603",0)
~ THEN REPLY #47418 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation03","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation03","AR0603",1)
~ THEN REPLY #47419 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",10)
~ THEN BEGIN 3 // from:
  SAY #47420 /* ~Dies ist der violette Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Bittere Abscheu' eingeschlossen.~ */
  IF ~~ THEN REPLY #47421 /* ~Beginn die Erfahrung.~ */ GOTO 4
  IF ~~ THEN REPLY #47422 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47423 /* ~Mit giftigen Tränen des Schmerzes in deinen engen gelben Augen sammelst du die zerfledderten Überreste deiner kleinen, schuppigen roten Flügel vom Boden auf. Du ziehst dich gedemütigt aus Grobas Arbeitszimmer zurück und beißt deine nadelartigen Zähne hinter geschlossenen Lippen zusammen. Du bist zwar nur ein Spinagon - der geringste unter den Teufeln - aber das ist noch lange kein Grund für ein Grubenscheusal, dir deine Flügel auszureißen, nur weil ihm die Botschaft nicht paßt, die du ihm überbracht hast! Was wird dein Gelugon-Meister jetzt tun? Er kann bestimmt nicht mit Groba sprechen. Und was ist ein Spinagon ohne seine Flügel? Du wirst vielleicht wegen 'Inkompetenz' in die Flammengrube geworfen! Rache zu nehmen steht außer Frage, und du kannst nicht viel mehr tun als deine geballten Fäuste zu schwingen und Groba zu hassen, hassen, *HASSEN*, und zwar mit allem, was dein kleines schwarzes Teufelherz an Abscheu aufzubringen vermag...~ */
  IF ~  Global("Sensation10","AR0603",0)
~ THEN REPLY #47424 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation10","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation10","AR0603",1)
~ THEN REPLY #47425 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47426 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47427 /* ~Geh weg.~ */ EXIT
END
