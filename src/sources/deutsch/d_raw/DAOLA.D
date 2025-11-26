// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAOLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAOLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 3 2 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45487 /* ~"Willkommen in der Kathedrale von Aoskar. Bist du hier, um gemeinsam mit mir Aoskar zu huldigen? Du kannst sein zweiter Jünger werden." Er beginnt, dir eine endlose Litanei über den Segen der Jüngerschaft Aoskars vorzutragen.~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60902 /* ~"Ich suche Rat wegen einer Kiste und einem Scheusal."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45488 /* ~"Ich suche Rat wegen einer Kiste und einem Scheusal."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45489 /* ~"Warum hat Aoskar sonst keine Jünger?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45490 /* ~"Erzähl mir mehr über Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45491 /* ~"Ich bin interessiert, ein Jünger Aoskars zu werden."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45492 /* ~"Vielleicht ein andermal. Leb wohl"~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 2 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45493 /* ~"Die verlorene Seele ist wieder da. Laß uns Aoskar danken und deine Rückkehr feiern. Ich nehm an, du hast nochmal über den Beitritt zu meiner Gemeinde nachgedacht."~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60951 /* ~"Ich suche Rat über ein Kästchen und einen Dämonen."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45494 /* ~"Ich suche Rat über ein Kästchen und einen Dämonen."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45495 /* ~"Was denn für eine Gemeinde? Außer dir seh ich hier keinen."~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45497 /* ~"Erzähl mir mehr über Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45498 /* ~"Ich bin interessiert, ein Jünger Aoskars zu werden."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45499 /* ~"Vielleicht ein andermal. Leb wohl."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 2 // from:
  SAY #45500 /* ~"Möge Aoskar dich auf deinem Weg beschützen. Was kann ich für dich tun?"~ */
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45501 /* ~"Ich möchte diesen Edelstein kaufen, den du von Moridors Kästchen genommen hast."~ */ GOTO 13
  IF ~~ THEN REPLY #45503 /* ~"Erzähl mir mehr über Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45504 /* ~"Warum hat Aoskar sonst keine Jünger?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45506 /* ~"Ich bin interessiert, ein Jünger Aoskars zu werden."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45507 /* ~"Was ist passiert? Zuerst soll ich Jünger werden, und dann werd ich plötzlich in eine Art 'Irrgang' gesteckt." ~ */ GOTO 17
  IF ~~ THEN REPLY #45509 /* ~"Vorerst nichts. Leb wohl."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Disciple","Global",1)
~ THEN BEGIN 3 // from:
  SAY #45511 /* ~"Du bist wieder da! Entschuldige meine Verwunderung, aber du bist nun mal der erste Jünger, der jemals wieder zurückgekehrt ist. Die meisten scheinen einfach zu verschwinden. Was kann ich für dich tun?"~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60964 /* ~"Ich suche Rat über ein Kästchen und einen Dämonen."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45599 /* ~"Ich suche Rat über ein Kästchen und einen Dämonen."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45600 /* ~"Ich möchte diesen Edelstein kaufen, den du von Moridors Kästchen genommen hast."~ */ GOTO 13
  IF ~~ THEN REPLY #45601 /* ~"Erzähl mir mehr über Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45602 /* ~"Was ist passiert? Zuerst soll ich Jünger werden, und dann werd ich plötzlich in eine Art 'Irrgang' gesteckt." ~ */ GOTO 17
  IF ~~ THEN REPLY #45603 /* ~"Vorerst nichts. Leb wohl."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shutup","Global",1)
~ THEN BEGIN 4 // from:
  SAY #45604 /* ~Aola scheint tief in Trance zu sein. Dann und wann hörst du ihn Loblieder auf Aoskar singen.~ */
  IF ~~ THEN REPLY #45605 /* ~Leb wohl.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #45606 /* ~Du erklärst ihm dein Dilemma. Aola scheint kurz darüber nachzudenken, dann sagt er. "Ich, ein demütiger Jünger des großen Aoskar, kann dir wahrhaftig helfen. Doch zuerst mußt du mir dieses Kästchen geben."~ */
  IF ~~ THEN REPLY #45607 /* ~Gib ihm die Kiste.~ */ DO ~DestroyPartyItem("Dbox",TRUE)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45608 /* ~Aola legt Moridors Kästchen in einen pyramidenförmiges Drahtkäfig und murmelt ein Gebet an Aoskar. Das vertraute Schimmern eines Portals erhellt die Pyramidenseiten. Dann greift Aola mir nichts, dir nichts durch das Portal und klappt den Deckel von Moridors Kästchen auf.~ */
  IF ~~ THEN REPLY #45609 /* ~Weiter.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45610 /* ~Du schreist laut auf und versuchst, ihn zu stoppen - doch zu spät, denn schon beginnt sich das Kästchen aufzulösen. Ein ekelerregender Rauch steigt langsam im Pyramideninneren auf, und ein überwältigendes Angstgefühl erfüllt den Raum. Irgendwie schaffst du es nicht davonzurennen.~ */
  IF ~~ THEN REPLY #45611 /* ~Weiter.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45612 /* ~Sobald die Rauchschwaden die Seiten der Pyramide berühren, werden sie vom Luftwirbel der Portale eingesogen. Erst mit dem letzten Rauchschwaden läßt auch das Entsetzen nach. Aola lächelt dich an; er ist etwas nervös. "Bewundere die Macht Aoskars, des Hüters der Portale!"~ */
  IF ~~ THEN REPLY #45613 /* ~"Für ein so mächtiges Scheusal, das mit so vielen Zaubern gebannt werden mußte, wird es ein leichtes sein, hierher zurückzufinden. Und es wird keinen Geringeren suchen als dich..." ~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45615 /* ~"Daran hab ich schon gedacht. Wie du siehst, enthielt jede Pyramidenseite ein Portal, das zu einer anderen Ebene führte. Ich habe die Essenz des Scheusals quasi über das ganze Multiversum verteilt. Wußtest du, daß es Rassen gibt, die Dämonen als Delikatesse schätzen?" Er lacht leise vor sich hin. Dann steckt seine Hand in die Pyramide, durchwühlt die Asche des Kästchens und holt den Edelstein heraus, der daran befestigt war. "Er ist der Lohn für meine Dienste. Mit ihm werde ich meine wundervolle Kathedrale wiederaufbauen."~ */
  IF ~~ THEN REPLY #45617 /* ~"Behalt den Edelstein. Du hast ihn mehr als verdient. Leb wohl."~ */ DO ~SetGlobal("FedEx","Global",10)
SetGlobal("Shutup","Global",1)
CreateItem("DGem",1,0,0)
SetGlobal("Epsilon","Global",2)
AddexperienceParty(1000)
~ JOURNAL #60389 /* ~Moridors Kästchen hat dank der Hilfe des Priesters von Aoskar Ruhe gefunden. Als Bezahlung hat der Priester den Edelstein akzeptiert, der auf Moridors Kästchen befestigt war. Der Edelstein ist von außergewöhnlicher Qualität, ganz wie erwartet... Schließlich wurde er dazu verwendet, einen Dämonen festzuhalten.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.2 2.2 11.1
  SAY #45618 /* ~"Im Lauf der Jahre hab ich viele Jünger gehabt, doch leider ist keiner mehr da. Das ist ganz schön frustierend. Sobald sie eingeweiht sind, verschwinden sie auf Nimmerwiedersehn. Seit einiger Zeit wird gemunkelt, die Dame selbst sei schuld daran. Jedenfalls hat sich hier schon lang niemand mehr blicken lassen - du bist der erste seit langer Zeit." ~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45619 /* ~"Ich fürchte mich nicht. Ich möchte einer von Aoskars Jünger werden."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("Aoskar","Global",0)
~ THEN REPLY #45620 /* ~"Erzähl mir mehr über Aoskar."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45621 /* ~"Die Dame... Ich will ihr nicht in die Quere kommen. Ich geh dann lieber. Leb wohl."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.3 1.3 2.1 3.3 10.1
  SAY #45623 /* ~Aolas Stimme nimmt einen bewundernden Ton an. "Aoskar ist der Hüter der Portale. Aoskar ist der Herr der Portale, der Tore und der Möglichkeiten. Sigil, auch die Stadt der Tore genannt, war Aoskars Heimat, bis er eines Tages von dieser verfluchten Dame 'vertrieben' wurde. Nur noch wenige dort beten Aoskar an, weil die Dame es verbietet. Aber das wird sich ändern, sobald wir die Leute von der Größe Aoskars überzeugen, denn dem Willen des ganzen Volkes wird sich die Dame nicht widersetzen können!" ~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45624 /* ~"Ich möchte einer von Aoskars Jünger werden."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("One","Global",0)
~ THEN REPLY #45626 /* ~"Warum hat Aoskar sonst keine Jünger?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45629 /* ~"Die Dame... Ich will ihr nicht in die Quere kommen. Ich geh dann lieber. Leb wohl."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.4 1.4 2.3 10.0 11.0
  SAY #45631 /* ~"Wundervoll! Darum hat schon so lange keiner mehr gebeten." Aola läßt dich ein paar komplizierte Rituale vollführen. Dann sagt er: "Jetzt bist du ein Jünger Aoskars. Gehe hin und bringe den Bewohnern Sigils die frohe Botschaft, so daß alle vom Ruhm Aoskars erfahren!"~ */
  IF ~~ THEN REPLY #45634 /* ~Leb wohl.~ */ DO ~SetGlobal("Shutup","Global",1)
SetGlobal("Lady","Global",50)
SetGlobal("Disciple","Global",1)
SetGlobal("DMaze","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 3.2
  SAY #45635 /* ~"Glück für dich, daß ich noch keine Zeit hatte, sie zu verkaufen. Ich überlasse sie dir für den günstigen Preis von dreihundert Kupfermünzen."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45636 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldGT(99)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #61596 /* ~"Wie wär's mit einhundert Kupfermünzen?"~ */ GOTO 19
  IF ~  PartyGoldLT(300)
~ THEN REPLY #45638 /* ~"Soviel kann ich mir nicht leisten."~ */ GOTO 15
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45639 /* ~"Das ist ja Diebstahl... Das zahl ich nicht."~ */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.0 19.0
  SAY #45641 /* ~"Möge Aoskar, der Gott der Portale, Türen und 'Gelegenheit' dir gütig sein."~ */
  IF ~~ THEN REPLY #45643 /* ~Leb wohl.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2 19.1 19.2
  SAY #45645 /* ~"Das ist schade. Aber weniger ist leider nicht drin. Komm doch einfach wieder, nachdem du etwas Klimper verdient hast. Ich bin gern bereit, den Edelstein so lang für dich aufzuheben."~ */
  IF ~~ THEN REPLY #45646 /* ~Leb wohl.~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY #45648 /* ~"Ich brauche dringend Geld für den Wiederaufbau meiner Kathedrale. Willst du's dir nicht noch mal überlegen? Diese Summe ist das Mindeste, was ich auf dem Markt dafür bekommen würde."~ */
  IF ~~ THEN REPLY #45649 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("DGem",Protagonist)
~ GOTO 14
  IF ~~ THEN REPLY #45651 /* ~"Vergiß es."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.4
  SAY #45654 /* ~"Hört sich an, an wärst du durch irgendein Portal geschleust worden. Dazu sind nur erfahrene Jünger Aoskars und die Dame imstande. Vielleicht ist das ja die Erklärung für das Verschwinden all der anderen Jünger. Da muß ich mal drüber nachdenken. Bitte geh."~ */
  IF ~~ THEN REPLY #45657 /* ~Leb wohl.~ */ DO ~SetGlobal("DMaze","Global",2)
SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.0 1.0 3.0
  SAY #60914 /* ~Nachdem du dein Dilemma erklärt hast, untersucht Aola das Kästchen kurz und reicht es dir zurück. "Mir fällt nichts Ungewöhnliches an diesem Kästchen auf. Wenn du mich jetzt entschuldigst, ich habe zu tun."~ */
  IF ~~ THEN REPLY #60925 /* ~Leb wohl.~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #61597 /* ~"Ich weiß nicht, warum, aber ich mag dich. Ich überlasse dir den Edelstein für zweihundert und keine Kupfermünze weniger. Was meinst du?"~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #61598 /* ~"Das nehm ich."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(200)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldLT(200)
~ THEN REPLY #61600 /* ~"Soviel kann ich mir nicht leisten."~ */ GOTO 15
  IF ~~ THEN REPLY #61599 /* ~"Vergiß es."~ */ GOTO 15
END
