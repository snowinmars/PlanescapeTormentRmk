// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60952 /* ~Du siehst ein mechanisches Wesen mit blaßgrüner Haut. Zwar handelt es sich eindeutig um ein Konstrukt, doch seine Gesichtszüge sind sehr lebendig. Im Moment sieht es dich finster an.~ */
  IF ~~ THEN REPLY #60953 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #60954 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60955 /* ~"Grrrr", knurrt das Wesen dich an und macht eine Pause, um deine Reaktion einzuschätzen.~ */
  IF ~~ THEN REPLY #60956 /* ~"Soll mir das etwa Angst machen?"~ */ GOTO 2
  IF ~~ THEN REPLY #60957 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~~ THEN REPLY #60958 /* ~"Was bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #60959 /* ~"Was machst du da?"~ */ GOTO 7
  IF ~~ THEN REPLY #60960 /* ~"Dafür habe ich keine Zeit. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60961 /* ~Es sieht verwirrt aus. "Grrrr?" Es macht eine schwache Drohgebärde in deine Richtung.~ */
  IF ~~ THEN REPLY #60962 /* ~"Ich habe gefragt, ob mir das Angst machen soll."~ */ GOTO 3
  IF ~~ THEN REPLY #60963 /* ~"Dafür habe ich keine Zeit. Leb wohl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60965 /* ~Es starrt dich einen Moment lang an und denkt über deine Frage nach. "Ja. *Grrrr* ist ein Drohlaut. Ich habe ihn durch eine entsprechende Gebärde begleitet, um die Drohung zu verstärken. Angst ist die erwartungsgemäße Reaktion, die mir im folgenden Kampf einen Vorteil verschaffen wird." Es greift dich an.~ */
  IF ~~ THEN REPLY #60966 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #60967 /* ~Deine Frage scheint das Wesen völlig aus dem Gleichgewicht zu bringen. Es steht da und starrt dich schief an und weiß nicht recht, was es tun soll. "Ich bin ein Monster. Kämpfen wir nun?"~ */
  IF ~~ THEN REPLY #60968 /* ~"Du machst wohl Witze..."~ */ GOTO 5
  IF ~~ THEN REPLY #60969 /* ~Greif das Wesen an.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60970 /* ~Es starrt dich einen Moment lang weiter an. "Nein... Grrrr." Es greift dich an.~ */
  IF ~~ THEN REPLY #60971 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60972 /* ~"Ich bin ein leichtes Kampfkonstrukt. Meine Funktionen beinhalten derzeit: eingeschränkte Kampfleistung, niedrige Intelligenz und eine wirkungsarme Waffe, die ich mit wenig Geschick führen kann." Es greift dich an.~ */
  IF ~~ THEN REPLY #60973 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60975 /* ~Es starrt dich schief an und weiß nicht recht, was es tun soll. "Ich bin ein Verliesbewohner. Du bist in meinen persönlichen Lebensraum eingedrungen und mußt nun die Konsequenzen tragen. Daher starte ich einen ordnungsgemäßen Angriff in der folgenden Reihenfolge: *Grrrr*-Laut, Drohgebärde und Kampf." Es greift dich an.~ */
  IF ~~ THEN REPLY #60976 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.1
  SAY #60977 /* ~Das Wesen hebt die Arme und schwingt seine Waffe. "Siehe, wie meine Feinde vor mir fliehen. Höre die Klagen der Frauen. Der Sieg ist mein." Es greift dich an.~ */
  IF ~~ THEN REPLY #60978 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60979 /* ~Du siehst ein mechanisches Wesen mit blaßgrüner Haut. Zwar handelt es sich eindeutig um ein Konstrukt, doch seine Gesichtszüge sind sehr lebendig. Es sieht dich finster an.~ */
  IF ~~ THEN REPLY #60980 /* ~"Sei gegrüßt."~ */ GOTO 10
  IF ~~ THEN REPLY #60981 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60982 /* ~"Stirb im Namen des Bösen Zauberers!" Das Wesen schwingt seine Waffe nach dir.~ */
  IF ~~ THEN REPLY #60983 /* ~"Von was für einem Bösen Zauberer redest du da?"~ */ GOTO 11
  IF ~~ THEN REPLY #60984 /* ~"Wer bist du?"~ */ GOTO 12
  IF ~~ THEN REPLY #60985 /* ~"Was bist du?"~ */ GOTO 14
  IF ~~ THEN REPLY #60986 /* ~"Was machst du da?"~ */ GOTO 15
  IF ~~ THEN REPLY #60987 /* ~"Soll mir all das etwa Angst machen?"~ */ GOTO 16
  IF ~~ THEN REPLY #60988 /* ~"Dafür habe ich keine Zeit. Leb wohl."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60989 /* ~Das Wesen hört einen Moment auf, seine Waffe zu schwingen, um nachzudenken. "Öh... Von dem, der nicht existiert, bis du das Rubikon-Verlies-Konstrukt auf Schwierigkeitsstufe *schwer* setzt. Junge, dann kriegst du aber Probleme... Bis dahin, stirb im Namen des Bösen Zauberers!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60990 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60991 /* ~"Ich bin nur ein gesichtsloser Diener des Bösen, verurteilt, dich zu zerstören, oder selbst von dir zerstört zu werden!"~ */
  IF ~~ THEN REPLY #60992 /* ~"Das soll doch ein Witz sein, oder?"~ */ GOTO 13
  IF ~~ THEN REPLY #60993 /* ~Greif das Wesen an.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #60994 /* ~Das Gesicht der Kreatur stellt nacheinander mehrere Gefühle zur Schau und behält dann einen Ausdruck bei, der ihm angemessen erscheint. "Du machst dich über mich lustig! Stirb, elende Ausgeburt einer Humanoiden!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60995 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #60996 /* ~"Ich bin ein leichtes Kampfkonstrukt und darauf programmiert, alle Eindringlinge, zu töten, die es wagen, Rubikon herauszufordern!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60997 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #60998 /* ~"Ich halte mich an das Skript, das der Autor meinem Modell zugedacht hat. Gleich werde ich feindselig werden und dich entweder töten oder durch deine Hand sterben!" Es greift dich an.~ */
  IF ~~ THEN REPLY #60999 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4
  SAY #61000 /* ~Das Wesen hört auf, seine Waffe zu schwingen und denkt einen Augenblick nach. "Ja... Wenn man den Bösewicht erwähnt, sät man immer Angst in den Herzen der Massen, was den Held dazu veranlaßt, loszuziehen und viele Gefahren zu bestehen, bis er schließlich den Bösewicht durch einen Akt grenzenloser Dummheit besiegt." Es greift dich an.~ */
  IF ~~ THEN REPLY #61001 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.5
  SAY #61002 /* ~Das Wesen hebt die Arme und schwingt seine Waffe. "Sieh den Wurm in all meiner Macht und Herrlichkeit vor mir kauern. Fleh nicht um Gnade, Wurm, denn ich habe keine!" Es greift dich an.~ */
  IF ~~ THEN REPLY #61003 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 18 // from:
  SAY #61004 /* ~Du siehst ein mechanisches Wesen mit blaßgrüner Haut. Zwar handelt es sich eindeutig um ein Konstrukt, doch seine Gesichtszüge sind sehr lebendig. Im Moment sieht es dich finster an.~ */
  IF ~~ THEN REPLY #61005 /* ~"Sei gegrüßt."~ */ GOTO 19
  IF ~~ THEN REPLY #61006 /* ~Beachte das Wesen nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61007 /* ~Das Wesen sieht dich plötzlich nicht mehr finster an sondern setzt einen Ausdruck gespielten Entsetzens auf. "Iiiieeeh! Es ist der Held selbst, zweifellos gesandt, um den Bösewicht zu töten. Wehe mir, dem unglückseligen Konstrukt, das ausgerechnet bei seiner Ankunft Wachdienst hat!"~ */
  IF ~~ THEN REPLY #61008 /* ~"Was redest du da?"~ */ GOTO 20
  IF ~~ THEN REPLY #61009 /* ~"Wer bist du?"~ */ GOTO 21
  IF ~~ THEN REPLY #61010 /* ~"Was bist du?"~ */ GOTO 23
  IF ~~ THEN REPLY #61011 /* ~"Was machst du da?"~ */ GOTO 24
  IF ~~ THEN REPLY #61012 /* ~"Dafür habe ich keine Zeit. Leb wohl."~ */ GOTO 25
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61013 /* ~Das Wesen stemmt die Hände in die Hüften und sieht dich finster an. "Die Handlung, du Tölpel, halt dich an die Handlung. Wie soll ich wohl meine Rolle spielen, wenn du nicht mitmachst? Also, wo waren wir..." Es überlegt einen Augenblick. " Ah, ich weiß wieder, ich wollte dich gerade in die Mangel nehmen." Es greift dich an.~ */
  IF ~~ THEN REPLY #61014 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #61015 /* ~Das Wesen überlegt einen Augenblick und zuckt dann übertrieben mit den Achseln. "Dein unglückseliges Opfer?" Es macht sich bereit zum Angriff.~ */
  IF ~~ THEN REPLY #61016 /* ~"Ich kann nicht glauben, daß das wirklich passiert...."~ */ GOTO 22
  IF ~~ THEN REPLY #61017 /* ~Greif das Wesen an.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61018 /* ~"Tut es aber! Nimm das, Schurke!" Es greift dich an.~ */
  IF ~~ THEN REPLY #61019 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #61020 /* ~"Ich bin der Verliesbewohner, der dich vermöbeln wird!" Es greift dich an.~ */
  IF ~~ THEN REPLY #61021 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.3
  SAY #61022 /* ~Das Wesen lehnt sich zu dir herüber und flüstert: "Ich spiele gerade die Rolle des verängstigten Untertanen, der dem Held zum erstenmal begegnet." Dann richtet es sich auf und ruft mit angsterfüllter Stimme: "Zu den Waffen, Mitkonstrukte, wir müssen den Helden vernichten!" Es greift dich an.~ */
  IF ~~ THEN REPLY #61023 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.4
  SAY #61024 /* ~Das Wesen schenkt dir einen düsteren, hämischen Blick. "Nein, du Schlange. Du kannst dem Schrecken nicht entrinnen, der vor dir steht. Wenn jemand unbefugt irgendwo eindringt, so wie du, muß er den Preis dafür zahlen." Es greift dich an.~ */
  IF ~~ THEN REPLY #61025 /* ~Verteidige dich.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
