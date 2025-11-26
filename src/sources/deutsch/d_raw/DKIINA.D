// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2921 /* ~Die kalten Augen dieser Frau sind voller Haß. "*Wisse*, daß du mir meine Verwandten gestohlen hast. *Wisse*, daß du *leiden* wirst." Ihre Hände beginnen, glühende Spuren in die Luft zu zeichnen.~ */
  IF ~~ THEN REPLY #2922 /* ~"Was meinst du?"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43584 /* ~Kämpfe.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43585 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #43586 /* ~Diese Frau hat eine gelbliche Haut und strenge Gesichtszüge. Ihr Körper ist voller Tätowierungen. An einer Seite trägt sie eine lange Klinge. Ihre Augen sind wie zwei kleine schwarze Perlen. Sie folgen deinen Bewegungen, als du näherkommst.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43587 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ GOTO 3
  IF ~~ THEN REPLY #43588 /* ~"Sei gegrüßt."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43589 /* ~"Kennst du die Festung Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43590 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #43591 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 3
  IF ~~ THEN REPLY #43592 /* ~"Verzeihung. Ich hab dich mit jemandem verwechselt. Leb wohl."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #43593 /* ~Diese Frau hat eine gelbliche Haut und strenge Gesichtszüge. Ihr Körper ist voller Tätowierungen. An einer Seite trägt sie eine lange Klinge. Ihre Augen sind wie zwei kleine schwarze Perlen. Sie folgen deinen Bewegungen, als du näherkommst.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43594 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ GOTO 3
  IF ~~ THEN REPLY #43595 /* ~"Sei gegrüßt."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43596 /* ~"Kennst du die Festung Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43597 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #43598 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 3
  IF ~~ THEN REPLY #43599 /* ~"Verzeihung. Ich hab dich mit jemandem verwechselt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.3 1.4 2.0 2.1 2.3 2.4
  SAY #43600 /* ~"Das Volk... *kennt* dich als Freund. Aber ich *kenne* dich noch nicht. Ich kann dir nicht helfen."~ */
  IF ~~ THEN REPLY #43601 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 4
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43602 /* ~"Kennst du die Festung Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43603 /* ~"Dann vielleicht ein andermal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43604 /* ~Sie starrt dich mit funkelnden Augen an. "Höre meine Worte und *wisse*, was ich denke: Ich kann dir nicht helfen. Geh."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43605 /* ~"Kennst du die Festung Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43606 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 5 // from:
  SAY #43607 /* ~"Ich *kenne* dich nicht. *Wisse*, daß ich keine Worte für dich habe."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43608 /* ~"Kennst du die Festung Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43609 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #43610 /* ~"Ich *kenne* dich nicht. *Wisse*, daß ich keine Worte für dich habe."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43611 /* ~"Kennst du die Festung Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43612 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 3.1 4.0 5.0 6.0 23.2 24.2
  SAY #43613 /* ~Sie zuckt leicht zusammen. "Woher *kennst* du diesen Namen?"~ */
  IF ~~ THEN REPLY #43614 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 8
  IF ~~ THEN REPLY #43615 /* ~"Hab ich auf der Straße aufgeschnappt."~ */ GOTO 9
  IF ~~ THEN REPLY #43616 /* ~"Vergiß es."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0 10.0
  SAY #43617 /* ~Ihre Augen wandern über dein Gesicht. Du spürst förmlich, wie sich dich beobachtet. "*Wisse*, daß die Githzerai dir dankbar sind und es immer sein werden. Über Haldar geht die Sonne unter, Reisender - ich muß mein Volk warnen."~ */
  IF ~~ THEN REPLY #43618 /* ~"Dann alles Gute. Leb wohl."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~Ich hab einer der Githzerai von dem geplanten Angriff der Githyanki auf die Festung Vristigor erzählt. Sie eilte davon.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 7.2
  SAY #43619 /* ~Ihr Blick wird hart. "Sag mir, woher du das weißt."~ */
  IF ~~ THEN REPLY #43620 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 8
  IF ~~ THEN REPLY #43621 /* ~"Verrat ich nicht."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #43622 /* ~"Vilquars Auge soll auf dich fallen, wenn du es mir nicht sagst!"~ */
  IF ~~ THEN REPLY #43623 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 8
  IF ~~ THEN REPLY #43624 /* ~"Weshalb sollte ich dir das verraten?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #43625 /* ~Mit zischenden Geräuschen und kreisenden Bewegungen malt sie blau leuchtende Linien in die Luft...~ */
  IF ~~ THEN REPLY #43626 /* ~Kämpfe.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43627 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #5 ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #43628 /* ~Diese Frau hat eine gelbliche Haut und strenge Gesichtszüge. Ihr Körper ist voller Tätowierungen. An einer Seite trägt sie eine lange Klinge. Ihre Augen sind wie zwei kleine schwarze Perlen. Sie folgen deinen Bewegungen, als du näherkommst. "Zerchais Geschlecht verneigt sich vor dir. Ich *weiß* um deine Weisheit und deine Hilfe. Sag mir, was ich für dich tun kann."~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43629 /* ~"Und der Reisende freut sich. Ich hoffe, du kannst mir ein paar Fragen beantworten."~ */ GOTO 13
  IF ~~ THEN REPLY #43630 /* ~"Ich hätte da ein paar Fragen, die du hoffentlich beantworten kannst."~ */ GOTO 13
  IF ~~ THEN REPLY #43631 /* ~"Wer bist du?"~ */ GOTO 14
  IF ~~ THEN REPLY #43632 /* ~"Verzeihung. Ich hab dich mit jemandem verwechselt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 16.0 17.1 19.0 20.0 21.0 22.0
  SAY #43633 /* ~"Sag, was du denkst. Ich höre."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43634 /* ~"Was kannst du mir über den Unterschied zwischen Githyanki und Githzerai sagen?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43635 /* ~"Was kannst du mir über den Unterschied zwischen Githyanki und Githzerai sagen?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43636 /* ~"Kannst du mir ein paar Redewendungen der Githzerai beibringen?"~ */ GOTO 18
  IF ~~ THEN REPLY #43637 /* ~"Kannst du mir die Lehre des Zerthimon nahebringen?"~ */ GOTO 22
  IF ~~ THEN REPLY #43638 /* ~"Momentan habe ich keine weiteren Fragen. Danke, daß du dir Zeit für mich genommen hast."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #43639 /* ~"Ich bin Kii'na, ein *Zerth*. Ich bringe den Menschen die Lehre des Zerthimon bei und begleite das 'Volk' auf seinem Schicksalsweg."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43640 /* ~"Was kannst du mir über den Unterschied zwischen Githyanki und Githzerai sagen?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43641 /* ~"Was kannst du mir über den Unterschied zwischen Githyanki und Githzerai sagen?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43642 /* ~"Kannst du mir ein paar Redewendungen der Githzerai beibringen?"~ */ GOTO 18
  IF ~~ THEN REPLY #43643 /* ~"Kannst du mir die Lehre des Zerthimon nahebringen?"~ */ GOTO 22
  IF ~~ THEN REPLY #43644 /* ~"Momentan habe ich keine weiteren Fragen. Danke, daß du dir Zeit für mich genommen hast."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 13.4 14.4
  SAY #43645 /* ~"Über Haldar geht die Sonne unter, Reisender. Du bist wie Elezpah auf dem Berge, mutig und standhaft."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
~ THEN REPLY #43646 /* ~"Ich habe an Torygs Tafel gespeist. Leb wohl." ("Ich bin dankbar.")~ */ EXIT
  IF ~~ THEN REPLY #43647 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF WEIGHT #6 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #43648 /* ~"Sei gegrüßt, Schwert-Schwinger."~ */
  IF ~~ THEN REPLY #43649 /* ~"Sei gegrüßt. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #43650 /* ~"Sei gegrüßt, Kii'na, und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 14.1
  SAY #43651 /* ~Sie schaut dich mit *harten* Augen an. "Gith war eine große Kriegerin, die unser Volk aus der Gefangenschaft der *Illithiden* befreit hat. Zerthimon war ihr Leutnant. Als die beiden unser Volk befreit hatten, griff Gith Zerthimon in den Verfluchten Ebenen an. Worte wurden gewechselt, Schwerter wurden gezückt - und aus einem Volk wurden zwei. Die Anhänger der Schlampe Gith nannten sich Githyanki. Diejenigen unter uns, die Zerthimons Pfad beschritten, blieben dem Volk treu und nannten sich fortan Githzerai." ~ */
  IF ~~ THEN REPLY #43652 /* ~"Und deshalb habt ihr einen solchen Haß aufeinander?"~ */ JOURNAL #39486 /* ~Ich hab entdeckt, daß die Rivalität zwischen den Githzerai und den Githyanki aus einem gemeinsamen Erbe herrührt - beide hassen, was aus dem anderen geworden ist. Schon komisch, wie zwei Dinge, die denselben Ursprung haben, so gegensätzlich sein können.~ */ GOTO 20
  IF ~~ THEN REPLY #43653 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ JOURNAL #39486 /* ~Ich hab entdeckt, daß die Rivalität zwischen den Githzerai und den Githyanki aus einem gemeinsamen Erbe herrührt - beide hassen, was aus dem anderen geworden ist. Schon komisch, wie zwei Dinge, die denselben Ursprung haben, so gegensätzlich sein können.~ */ GOTO 13
  IF ~~ THEN REPLY #43654 /* ~"Danke. Leb wohl."~ */ JOURNAL #39486 /* ~Ich hab entdeckt, daß die Rivalität zwischen den Githzerai und den Githyanki aus einem gemeinsamen Erbe herrührt - beide hassen, was aus dem anderen geworden ist. Schon komisch, wie zwei Dinge, die denselben Ursprung haben, so gegensätzlich sein können.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 14.2
  SAY #43655 /* ~"Die Sprache der Githzerai beruht auf unserer Geschichte. Alles wird für uns Geschichte: Dabei bedienen wir uns des kraftvollen Instruments der Metapher, die unser Volk zu Heldentaten inspiriert und ihre Herzen rein und gütig bleiben läßt. Wenn wir von Torygs Tafel sprechen, so denken wir an Torygs Gastfreundschaft und seinen guten Willen. Wenn wir von Selqants Herzen sprechen, denken wir an das lüsterne und grausame Wesen Selqants. Verstehst du?"~ */
  IF ~~ THEN REPLY #43656 /* ~"Ja."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Kii'na, der Zerth, hat mir viel von der Sprache der Githzerai beigebracht. Sie scheint auf Metaphern, Allegorien und Erzählungen aus der Geschichte der Githzerai zu beruhen.~ */ GOTO 21
  IF ~~ THEN REPLY #43657 /* ~"Nein."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #43658 /* ~"Dann kann ich dich nichts weiter lehren."~ */
  IF ~~ THEN REPLY #43659 /* ~"Gut. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #43660 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #43661 /* ~"Unsere beiden Völker sind wie der Esel von Penansk - störrisch, blind und lästig. Die Githyanki sind zusätzlich noch grausam. Sie hassen uns, weil wir in Bereiche vorgedrungen sind, die sie nicht verstehen."~ */
  IF ~~ THEN REPLY #43662 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #43663 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0
  SAY #43664 /* ~Deine Einweihung beginnt:
Ein weiser Mann "schrieb das Buch der Anarchen".
Um jemand des Verrates zu bezichtigen, erinnert man an "Vilquars Auge".
Über großzügige Menschen sagt man, ihre "Speisekammern sind leer".
Gebräuchliche Grußformeln lauten: "Sei gegrüßt, Schwert-Schwinger" und "Zerchais Geschlecht verneigt sich vor dir". Darauf erwidert man: "Und der Reisende freut sich".
Dein Gedächtnis wird mit vielen solchen Phrasen vollgestopft.
~ */
  IF ~~ THEN REPLY #43665 /* ~"Danke, Kii'na. Ich  hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #43666 /* ~"Danke, Kii'na. Die Sonne geht über Haldar unter." ("Das war sehr angenehm.")~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.3 14.3
  SAY #43667 /* ~"Ich kann nicht. Du bist zu gespalten, zu... menschlich. Du kannst die Lehre nicht *kennen*."~ */
  IF ~~ THEN REPLY #43668 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 13
  IF ~~ THEN REPLY #43669 /* ~"Danke, Kii'na. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #43670 /* ~Diese Frau hat eine gelbliche Haut und strenge Gesichtszüge. Ihr Körper ist voller Tätowierungen. An einer Seite trägt sie eine lange Klinge. Ihre Augen sind wie zwei kleine schwarze Perlen. Sie folgen deinen Bewegungen, als du näherkommst.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43671 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ GOTO 26
  IF ~~ THEN REPLY #43672 /* ~"Sei gegrüßt."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43673 /* ~"Kennst du die Festung Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43674 /* ~"Wer bist du?"~ */ GOTO 25
  IF ~~ THEN REPLY #43675 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 25
  IF ~~ THEN REPLY #43676 /* ~"Verzeihung. Ich hab dich mit jemandem verwechselt. Leb wohl."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #43677 /* ~Sie sieht gelassen zu, wie du näherkommst.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43678 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ GOTO 26
  IF ~~ THEN REPLY #43812 /* ~"Sei gegrüßt."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43813 /* ~"Kennst du die Festung Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43814 /* ~"Wer bist du?"~ */ GOTO 25
  IF ~~ THEN REPLY #43815 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 25
  IF ~~ THEN REPLY #43816 /* ~"Verzeihung. Ich hab dich mit jemandem verwechselt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.3 23.4 24.1 24.3 24.4
  SAY #43684 /* ~Sie läßt sich nicht aus der Ruhe bringen. "Ich... *kenne* dich nicht. Diese Begegnung kann keinem von uns nützlich sein. Leb wohl."~ */
  IF ~~ THEN REPLY #43685 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0 24.0
  SAY #43686 /* ~"Ich *kenne* dich nicht, und doch grüßt du mich wie mein Volk. Aber egal... Ich kann dir nicht helfen, Reisender. Leb wohl."~ */
  IF ~~ THEN REPLY #43687 /* ~"Das salzverkrustete Boot hißt die Segel."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 60 even though they appear after this state */
~  NearbyDialog("DDakkon")
Global("Dakkon_Know_Kiina","AR0500",0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #43688 /* ~Diese Frau hat einen gelblichen Teint und strenge Gesichtszüge. Ihr Körper ist voller Tätowierungen, und sie trägt eine lange Klinge an ihrer Seite. Ihre Augen sind wie zwei kleine schwarze Perlen. Als du näherkommst, folgen sie Dak'kons Bewegungen.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 133
END

IF WEIGHT #11 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 28 // from:
  SAY #43689 /* ~Die Zerth-Frau blickt Dak'kon finster an, als er mit dir zurückkommt. Sie kehrt dir den Rücken zu, als wolle sie Dak'kon herausfordern, die Tat zu vollbringen.~ */
  IF ~~ THEN REPLY #43690 /* ~"Dak'kon, stich sie ab."~ */ EXTERN ~DDAKKON~ 137
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43691 /* ~"Hör auf damit, Kii'na. Kennst du die Festung Vristigor?"~ */ GOTO 36
  IF ~~ THEN REPLY #43692 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #43693 /* ~Als du näherkommst, ignoriert sie dich völlig, genauso wie Dak'kons kleine Verbeugung. In schroffem Ton spricht sie ein paar Worte zu Dak'kon, die er ruhig und gelassen beantwortet. Das scheint sie nur noch rasender zu machen.~ */
  IF ~~ THEN REPLY #43694 /* ~"Dak'kon, würdest du mir das bitte übersetzen?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #43695 /* ~"Was hat sie gesagt?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43696 /* ~"Frag sie, ob sie die Festung Vristigor kennt."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 36
  IF ~~ THEN REPLY #43697 /* ~Warte.~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #43698 /* ~"Laß uns verschwinden."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from:
  SAY #43699 /* ~"Weshalb beleidigst du den Ungebrochenen Kreis von Zerthimon, indem du ihn gegen deine Überzeugung trägst? Du zählst nicht zum Volk, Verräter von Shrak'at'lor! Die Anarchen und die *Zerths* haben gesprochen, und ihre Worte werden befolgt. Es steht dir nicht zu, weder mir noch irgendeinem anderen *Zerth* deine Meinung zu sagen."~ */
  IF ~~ THEN DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ EXTERN ~DDAKKON~ 145
END

IF ~~ THEN BEGIN 31 // from: 29.4
  SAY #43700 /* ~Mit einer überkorrekten Verbeugung schneidet Dak'kon ihr das Wort ab. Sie dreht ihren Kopf weg.~ */
  IF ~~ THEN REPLY #43701 /* ~"Gehn wir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 29.1
  SAY #43702 /* ~"Er braucht dir meine Worte nicht zu übersetzen. Ich sag's dir selber: Du bist ein Mensch, der ein Gewand aus Blut und Narben trägt und nicht dafür geschaffen ist, die Worte Zerthimons zu hören. Doch er hat mich überredet, dich zuhören zu lassen. Ich möchte *wissen*, was du willst."~ */
  IF ~~ THEN REPLY #43703 /* ~"Ich hatte nur ein paar Fragen..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43704 /* ~"Kennst du die Festung Vristigor?"~ */ GOTO 36
  IF ~~ THEN REPLY #43705 /* ~"Ich will gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #43706 /* ~Sie macht ein amüsiertes und zugleich bestürztes Gesicht. "Ja, tu es, Dak'kon. Verlaß dich ganz auf deine verräterische Githyanki-Seele." Sie entblößt ihren Hals.~ */
  IF ~~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXTERN ~DDAKKON~ 138
END

IF ~~ THEN BEGIN 34 // from:
  SAY #43707 /* ~Sie spricht wieder mit Dak'kon. "Du stichst mich nieder für einen, der nicht zum 'Volk' gehört? Wiegen seine Worte schwerer als die einer *Zerth-Frau*? Du bist wahrlich verloren, Dak'kon. Wie konnte das passieren?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 139
END

IF ~~ THEN BEGIN 35 // from:
  SAY #43708 /* ~"Du bist vom rechten Pfad abgekommen, Dak'kon. Aber *wisse*, daß ich weiter hoffe, daß du deinen Weg wiederfindest. Du tust mir leid. Leb wohl."~ */
  IF ~~ THEN REPLY #43709 /* ~"Gehen wir, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.2 32.1
  SAY #43710 /* ~Sie schaut dich mit harten Augen an. "Woher *kennst* du diesen Namen?"~ */
  IF ~~ THEN REPLY #43711 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 37
  IF ~~ THEN REPLY #43712 /* ~"Hab ich auf der Straße aufgeschnappt."~ */ GOTO 38
  IF ~~ THEN REPLY #43713 /* ~"Vergiß es."~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0 38.0 41.4 42.2 52.4 55.2 60.1
  SAY #43714 /* ~"*Wisse*... *wisse*, daß ich dir... und diesem *Zerth* dankbar bin und es immer sein werde." Sie wendet sich Dak'kon zu. "*Wisse* aber auch, daß dies KEINE Wiedergutmachung für den Fall Shrak'at'lors sein kann. Das Urteil der Anarchen steht."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43715 /* ~"Ähm... Leb wohl."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
SetGlobal("Shrakatlor","GLOBAL",1)
EscapeArea()
~ JOURNAL #39489 /* ~Ich hab einer der Githzerai von dem geplanten Angriff der Githyanki auf die Festung Vristigor erzählt. Sie eilte davon.~ */ EXIT
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43716 /* ~"Ähm... Leb wohl."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~Ich hab einer der Githzerai von dem geplanten Angriff der Githyanki auf die Festung Vristigor erzählt. Sie eilte davon.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2
  SAY #43717 /* ~"Ich muß *wissen*, wo du diesen Namen gehört hast."~ */
  IF ~~ THEN REPLY #43718 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 37
  IF ~~ THEN REPLY #43719 /* ~"Hab ich mich nicht klar ausgedrückt? Ich verrat's dir nicht."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #43720 /* ~"Vilquars Auge!" Sie dreht sich zu Dak'kon um. "Bring ihn zum Reden!"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 140
END

IF ~~ THEN BEGIN 40 // from:
  SAY #43721 /* ~"Dann sollt ihr beide sterben." Mit ihren Händen schreibt sie Zaubersprüche in die Luft.~ */
  IF ~~ THEN REPLY #43722 /* ~Kämpfe.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43723 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.3
  SAY #43724 /* ~Nach einem kurzen heftigen Wortwechsel hört die Frau plötzlich auf, mit Dak'kon zu sprechen. "Ich werde dir nicht zuhören. Du wirst mir zuhören, Mensch. Ich *kenne* dich nicht, doch dein entstelltes Äußeres ist verspricht nichts Gutes. Dein Körper ist ein Buch aus Narben und Blut, und du gehst im Schatten eines Parias, der weder Zerthimon noch sich selbst *kennt*. Was willst du also?"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43725 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ GOTO 42
  IF ~~ THEN REPLY #43726 /* ~"Sei gegrüßt."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43727 /* ~"Schatten eines Parias? Wovon redest du?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43728 /* ~"Schatten eines Parias? Wovon redest du?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43729 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43730 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43731 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43732 /* ~"Kannst du mir die Sprache der Githzerai beibringen?"~ */ GOTO 56
  IF ~~ THEN REPLY #43733 /* ~"Kannst du mir die Lehre des Zerthimon nahebringen?"~ */ GOTO 59
  IF ~~ THEN REPLY #43734 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 52.0 52.1
  SAY #43735 /* ~Sie zischt wütend. "Spar dir deine Nettigkeiten. Der Morgen rückt näher - die Zeit drängt, Mensch. Ich möchte noch *wissen*, wie deine Frage lautet. Doch dann mußt du gehen."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43736 /* ~"Wie hast du das gemeint - ich würde im Schatten eines Parias gehen?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43737 /* ~"Wie hast du das gemeint - ich würde im Schatten eines Parias gehen?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43738 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43739 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43740 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43741 /* ~"Kannst du mir die Sprache der Githzerai beibringen?"~ */ GOTO 56
  IF ~~ THEN REPLY #43742 /* ~"Kannst du mir die Lehre des Zerthimon nahebringen?"~ */ GOTO 59
  IF ~~ THEN REPLY #43743 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.2 41.3 42.0 42.1 52.2 52.3 55.0 55.1 61.0 61.1
  SAY #43744 /* ~"Du begleitest einen Paria, ohne seine Geschichte zu *kennen*? Er hat dir seine Geschichte verschwiegen, wo er doch sonst so beredt ist? Frag ihn mal nach Shrak'at'lor, dem Verlust der mächtigen Festung an die Githyanki. Ich bin gespannt, was sein gespaltener Geist sich dazu einfallen läßt. Frag ihn, wie es kommt, daß er die Worte Zerthimons spricht, aber sein *Karach* wie Nebel ist."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 141
END

IF ~~ THEN BEGIN 44 // from:
  SAY #43745 /* ~"Es besteht kein Zweifel daran, wie Zerthimons Geist verkündet wird. In dieser Sache sind Generationen von *Zerths* wie Rrakmas Juwel, nämlich ungeteilter Meinung - während dein Standpunkt von einem gespaltenen Geist zeugt. Der Zweifel geht von dir aus; er ist das Echo deiner eigenen Ungläubigkeit."~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 142
END

IF ~~ THEN BEGIN 45 // from:
  SAY #43746 /* ~"Du sollst mit den Toten von Shrak'at'lor im wabernden Chaos ruhen, denn du siehst alles mit Vilquars Augen. Dein Geist ist gespalten, dein *Karach* schwach!"~ */
  IF ~~ THEN REPLY #43747 /* ~Stell dich zwischen die beiden und ihre Klingen.~ */ EXTERN ~DDAKKON~ 143
  IF ~~ THEN REPLY #43748 /* ~"Dak'kon, hör sofort damit auf."~ */ GOTO 48
  IF ~~ THEN REPLY #43749 /* ~"Laß das, Dak'kon."~ */ GOTO 48
  IF ~~ THEN REPLY #43750 /* ~Greif die Zerth-Frau an.~ */ EXTERN ~DDAKKON~ 143
END

IF ~~ THEN BEGIN 46 // from:
  SAY #43751 /* ~"Du Hund! Du verräterischer Githyanki!" Sie schwingt ihr Schwert!~ */
  IF ~~ THEN REPLY #43752 /* ~"Zeit zum Sterben, Kii'na."~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #43753 /* ~Die Klingen der beiden wirbeln umher und schlagen klirrend gegeneinander!~ */
  IF ~~ THEN DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2
  SAY #43754 /* ~Dak'kon senkt widerwillig seine Klinge. Kii'na starrt ihn kurz ungläubig an. Dann grinst sie breit. "Endlich die Wahrheit. Dein Geist ist nicht gespalten. Du bist ein *Sklave*... dieses Menschen. Er spricht mit der Autorität eines Anarchen, und du *hörst* auf ihn."~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",0)
~ EXTERN ~DDAKKON~ 144
END

IF ~~ THEN BEGIN 49 // from:
  SAY #43755 /* ~"Seine Worte wiegen schwerer als deine und haben die Form des Limbus. Ich werde dich nicht anhören, Dak'kon."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 146
END

IF ~~ THEN BEGIN 50 // from:
  SAY #43756 /* ~"Die Worte Zerthimons sind nicht für die Ohren eines Menschen bestimmt. Sie haben keinen geeinten Geist und verursachen Teilung, wo auch immer sie auftauchen. Dieser hier trägt ein Gewand aus Blut und Narben, und er reist in Gesellschaft eines Verräters. Falls du mich bitten solltest, ihn anzuhören, schlägt Vilquars Herz in deiner Brust."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 147
END

IF ~~ THEN BEGIN 51 // from:
  SAY #43757 /* ~"Ich werde ihn nicht anhören. Er wird mich anhören."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 148
END

IF ~~ THEN BEGIN 52 // from:
  SAY #43758 /* ~Die Gith-Frau dreht sich zu dir um. Ihre schwarzen Perlenaugen funkeln gefährlich. "Ich *kenne* dich nicht, doch dein entstelltes Äußeres verspricht nichts Gutes, Mensch. Dein Körper ist ein Buch aus Narben und Blut, und du gehst im Schatten eines Parias, der so tut, als spräche er im Namen Zerthimons. Sag mir, was du willst!"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43759 /* ~"Sei gegrüßt, Schwertkämpfer."~ */ GOTO 42
  IF ~~ THEN REPLY #43760 /* ~"Sei gegrüßt."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43761 /* ~"Schatten eines Parias? Wovon redest du?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43762 /* ~"Schatten eines Parias? Wovon redest du?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43763 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43764 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43765 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43766 /* ~"Kannst du mir die Sprache der Githzerai beibringen?"~ */ GOTO 56
  IF ~~ THEN REPLY #43767 /* ~"Kannst du mir die Lehre des Zerthimon nahebringen?"~ */ GOTO 59
  IF ~~ THEN REPLY #43768 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 41.5 41.6 42.3 42.4 52.5 52.6 55.3 55.4 61.2 61.3
  SAY #43769 /* ~Sie sieht Dak'kon mit *harten* Augen an. "Gith war eine große Kriegerin, die unser Volk aus der Gefangenschaft der *Illithiden* befreite. Zerthimon war ihr Leutnant. Als die beiden unser Volk befreit hatten, griff Gith Zerthimon in den Verfluchten Ebenen an. Worte wurden gewechselt, Schwerter wurden gezückt - und aus einem Volk wurden zwei. Die Anhänger der Schlampe Gith nannten sich Githyanki. Diejenigen von uns, die Zerthimons Pfad beschritten, blieben dem Volk treu und nannten sich fortan Githzerai. Unser Zorn gilt Giths Verrat." ~ */
  IF ~~ THEN REPLY #43770 /* ~"Und deshalb habt ihr einen solchen Haß aufeinander?"~ */ JOURNAL #39486 /* ~Ich hab entdeckt, daß die Rivalität zwischen den Githzerai und den Githyanki aus einem gemeinsamen Erbe herrührt - beide hassen, was aus dem anderen geworden ist. Schon komisch, wie zwei Dinge, die denselben Ursprung haben, so gegensätzlich sein können.~ */ GOTO 54
  IF ~~ THEN REPLY #43771 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ JOURNAL #39486 /* ~Ich hab entdeckt, daß die Rivalität zwischen den Githzerai und den Githyanki aus einem gemeinsamen Erbe herrührt - beide hassen, was aus dem anderen geworden ist. Schon komisch, wie zwei Dinge, die denselben Ursprung haben, so gegensätzlich sein können.~ */ GOTO 55
  IF ~~ THEN REPLY #43772 /* ~"Danke. Leb wohl."~ */ JOURNAL #39486 /* ~Ich hab entdeckt, daß die Rivalität zwischen den Githzerai und den Githyanki aus einem gemeinsamen Erbe herrührt - beide hassen, was aus dem anderen geworden ist. Schon komisch, wie zwei Dinge, die denselben Ursprung haben, so gegensätzlich sein können.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #43773 /* ~"Unsere beiden Völker sind wie der Esel von Penansk - störrisch, blind und lästig. Die Githyanki sind zusätzlich noch grausam. Sie hassen uns, weil wir in Bereiche vorgedrungen sind, die sie nicht verstehen."~ */
  IF ~~ THEN REPLY #43774 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 55
  IF ~~ THEN REPLY #43775 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.0 53.1 54.0 57.0 58.0 59.0 60.0
  SAY #43776 /* ~"Ach'alis Flut! Stell eine Frage, wenn du eine Antwort willst."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43777 /* ~"Wie hast du das gemeint - ich würde im Schatten eines Parias gehen?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43778 /* ~"Wie hast du das gemeint - ich würde im Schatten eines Parias gehen?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43779 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43780 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43781 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43782 /* ~"Kannst du mir die Sprache der Githzerai beibringen?"~ */ GOTO 56
  IF ~~ THEN REPLY #43783 /* ~"Kannst du mir die Lehre des Zerthimon nahebringen?"~ */ GOTO 59
  IF ~~ THEN REPLY #43784 /* ~"Ich habe keine weiteren Fragen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 41.7 42.5 52.7 55.5 61.4
  SAY #43785 /* ~"Wenn dein Reisegefährte sich nicht darum kümmert, werde ich dich aufklären. Die Sprache der Githzerai beruht auf unserer Geschichte. Alles wird für uns Geschichte: Dabei bedienen wir uns des kraftvollen Instruments der Metapher, die unser Volk zu Heldentaten inspiriert und sie vor Feigheit bewahrt. Wenn wir von Torygs Tafel sprechen, so denken wir an Torygs Gastfreundschaft und seinen guten Willen. Wenn wir von Selqants Herzen sprechen, denken wir an das lüsterne und grausame Wesen Selqants. Verstehst du?"~ */
  IF ~~ THEN REPLY #43786 /* ~"Ja."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Kii'na, der Zerth, hat mir viel von der Sprache der Githzerai beigebracht. Sie scheint auf Metaphern, Allegorien und Erzählungen aus der Geschichte der Githzerai zu beruhen.~ */ GOTO 57
  IF ~~ THEN REPLY #43787 /* ~"Nein."~ */ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #43788 /* ~Deine Einweihung geht weiter:
Ein weiser Mann "schrieb das Buch der Anarchen".
Um jemand des Verrates zu bezichtigen, erinnert man an "Vilquars Auge".
Über großzügige Menschen sagt man, ihre "Speisekammern sind leer".
Gebräuchliche Grußformeln lauten: "Sei gegrüßt, Schwert-Schwinger" und "Zerchais Geschlecht verneigt sich vor dir". Darauf erwidert man: "Und der Reisende freut sich".
Dein Gedächtnis wird mit vielen solchen Phrasen vollgestopft.
~ */
  IF ~~ THEN REPLY #43789 /* ~"Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 55
  IF ~~ THEN REPLY #43790 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43791 /* ~"Dann kann ich dir nicht weiterhelfen. Frag doch deinen Begleiter, was er davon hält."~ */
  IF ~~ THEN REPLY #43792 /* ~"Ich hätte nur noch ein paar Fragen..."~ */ GOTO 55
  IF ~~ THEN REPLY #43793 /* ~"Mal sehn, ob ich ihn dazu bewegen kann, denn aus dir wird man ja doch nicht schlau. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 41.8 42.6 52.8 55.6 61.5
  SAY #43794 /* ~Ihr Blick wird hart. "Du reist mit einem, der sich als *Zerth* ausgibt und mir hier Moralpredigten hält. Und dann verlangst du, daß ich dich in die Lehre Zerthimons einweihe? Frag *ihn* doch mal, ob er dazu bereit ist - ich bin es nämlich nicht!"~ */
  IF ~~ THEN REPLY #43798 /* ~"Beruhig dich und beantworte mir ein paar Fragen."~ */ GOTO 55
  IF ~~ THEN REPLY #43799 /* ~"Vielleicht werde ich das tun. Leb wohl."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
Global("Kiina_Speak","GLOBAL",1)
~ THEN BEGIN 60 // from:
  SAY #43800 /* ~"Bist du wieder hier, um mir auf die Nerven zu gehen? Was willst du diesmal?"~ */
  IF ~~ THEN REPLY #43801 /* ~"Ich möchte nur ein paar Fragen stellen..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43802 /* ~"Ein paar Githyanki planen in den nächsten acht Tagen einen Überfall auf die Festung. Sie sind sogar schon auf dem Weg dorthin."~ */ GOTO 37
  IF ~~ THEN REPLY #43803 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 61 // from:
  SAY #43804 /* ~Die Zerth-Frau verneigt sich widerwillig, als du sie ansprichst. "*Wisse*, daß deine Worte uns vor einer Tragödie bewahrt haben. Wir schwören den Eid der Goldenen Hand, Mensch. Deine Wahl des Reisegefährten war unglücklich..." Sie streift Dak'kon mit einem Blick. "Doch du hast dich als Freund unseres Volkes erwiesen. Ich werde dich anhören." Obwohl sie das sagt, scheint sie sich nur ungern mit dir abzugeben.~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43805 /* ~"Was kannst du mir über Dak'kon sagen?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43806 /* ~"Was kannst du mir über Dak'kon sagen?"~ */ GOTO 43
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43807 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43808 /* ~"Kannst du mir den Unterschied zwischen Githzerai und Githyanki erklären?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43809 /* ~"Kannst du mir die Sprache der Githzerai beibringen?"~ */ GOTO 56
  IF ~~ THEN REPLY #43810 /* ~"Kannst du mir die Lehre des Zerthimon nahebringen?"~ */ GOTO 59
  IF ~~ THEN REPLY #43811 /* ~"Ich habe keine weiteren Fragen. Leb wohl."~ */ EXIT
END
