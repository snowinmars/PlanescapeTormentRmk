// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMOIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMOIRE~

IF ~  Global("Armoire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2879 /* ~Als du dich daran machst, den Schrank zu durchsuchen, entreißen sich seine Griffe plötzlich deinen Händen, und die Schubladen knallen zu. Ein verächtliches *hmph!* kommt aus dem Innern des Schranks...~ */
  IF ~~ THEN REPLY #2880 /* ~"Hallo?"~ */ DO ~SetGlobal("Armoire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42567 /* ~Geh einfach weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7235 /* ~"'Hallo', ganz recht." Der Schrank macht noch einmal *hmph*. "Und was haben wir hier? Einen Schurken auf der Suche nach gerüschter Damenunterwäsche, hmmmnn?"~ */
  IF ~~ THEN REPLY #42568 /* ~"Du *sprichst*?"~ */ GOTO 2
  IF ~~ THEN REPLY #42569 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #42570 /* ~"Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #42571 /* ~"Ich geh jetzt besser. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42532 /* ~"Aber ja? Warum nicht?"~ */
  IF ~~ THEN REPLY #42572 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #42573 /* ~"Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #42574 /* ~"Ich geh jetzt besser. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #42533 /* ~"Ich bin Luis. Und wer bist *du*? Du rücksichtsloser, ungehobelter Kerl, der du in anderer Leute Sachen herumkramst..."~ */
  IF ~~ THEN REPLY #42575 /* ~"Nimm's nicht persönlich. Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #42576 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 3.0
  SAY #42534 /* ~"Na gut, wenn du's genau wissen willst: Ich bin ein Schrank."~ */
  IF ~~ THEN REPLY #42577 /* ~"Aber *weshalb* lebst du als Schrank in diesem Bordell?"~ */ GOTO 5
  IF ~~ THEN REPLY #42578 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 12.0
  SAY #42535 /* ~"Wenn du nichts dagegen hast, bin ich ein Schrank geworden, weil ich genau das werden *wollte*, und *nicht* etwa, um den Damen beim Entkleiden zuzusehen oder um ihre weichen, duftenden Dessous in meine Schubladen aufzunehmen, damit ich mich an sie schmiegen kann. Derartige Unterstellungen sind eine Beleidigung für jemanden, der die Kunst der Magie praktiziert... Ich will einfach nur wissen, wie es sich *anfühlt*, ein Schrank zu sein, was man da so sieht, riecht und fühlt..."~ */
  IF ~~ THEN REPLY #42579 /* ~"Dann wissen es die Frauen also?"~ */ GOTO 6
  IF ~~ THEN REPLY #42580 /* ~"In Ordnung. Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #42581 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42536 /* ~"Na, klar doch. Und sie haben voll und ganz zugestimmt... Na ja, vielleicht nicht aus vollem Herzen. Aber solange sie in meiner Gegenwart kein Wort der Zustimmung oder Ablehnung *äußern* - da ihnen ja gar nicht bewußt ist, daß ich ein Schrank bin - ziehe ich es vor, daß sie mich überhaupt nicht wahrnehmen, und daher konnte ich der Sache bisher noch nicht auf den Grund gehen."~ */
  IF ~  CheckStatGT(Protagonist,14,DEX)
~ THEN REPLY #42582 /* ~"Ich hätt gern was dafür, daß ich dichthalten soll."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,DEX)
~ THEN REPLY #42583 /* ~"Ich hätt gern was dafür, daß ich dichthalten soll."~ */ GOTO 9
  IF ~~ THEN REPLY #42584 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #42585 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42537 /* ~"Na gut! Dann mach mal die dritte Schublade auf, du Schnösel." Als du deine Hand in die Schublade steckst, geht sie plötzlich mit einem heftigen Ruck zu. Du kannst deine Finger gerade noch rechtzeitig herausziehen.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #42538 /* ~"Ha, ha! Du Dummkopf! Du Idiot! Ich hab gesagt du sollst die Schublade aufmachen, und du greifst hinein..." Zur Untermalung seiner Worte schiebt er die Schublade noch einmal kräftig zu und schüttelt sich vor Lachen.~ */
  IF ~~ THEN REPLY #42586 /* ~"Ich werd es ihnen sofort erzählen."~ */ GOTO 11
  IF ~~ THEN REPLY #42587 /* ~"Ich mach gleich Kleinholz aus dir."~ */ GOTO 10
  IF ~~ THEN REPLY #42588 /* ~"Sehr witzig. Ich hätte da ein paar Fragen, Luis..."~ */ GOTO 12
  IF ~~ THEN REPLY #42589 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #42539 /* ~"Na gut! Dann mach mal die dritte Schublade auf, du Schnösel." Als du deine Hand in die Schublade steckst, geht sie mit einem heftigen Ruck zu und klemmt deine Finger ein. Ein stechender Schmerz fährt durch deine Hand, als du deine lädierten Finger zurückziehst.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1 11.0
  SAY #42540 /* ~"Gar *nichts* wirst du tun! Das weiß doch *jeder*, daß Gewalttaten im Bordell strengstens untersagt sind... Wer sich nicht dran hält, fliegt raus. Aber auch wenn dies *nicht* der Fall wäre, kannst du mir glauben, daß ich ein wahrer Meister der Kunst bin."~ */
  IF ~~ THEN REPLY #42590 /* ~"Na gut... Dann werd ich ihnen sogleich von dir erzählen."~ */ GOTO 11
  IF ~~ THEN REPLY #42591 /* ~"Naja, dann hätte ich ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #42592 /* ~"Na, wenn das so ist, dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.0
  SAY #42541 /* ~"Ich will dir mal was sagen: Ich gehe im Bordell schon lange ein und aus und weiß, was hier für Leute wohnen und was sie tun. Glaub mir, es ist völlig sinnlos, über mich zu reden. Du würdest nur eine potentielle Informationsquelle verlieren. Außerdem würde ich mich einfach aus dem Staub machen, falls jemand käme, um deine Aussage zu überprüfen. Dann würdest du ganz schön alt aussehen."~ */
  IF ~~ THEN REPLY #42593 /* ~"Vielleicht mach ich dann einfach Kleinholz aus dir."~ */ GOTO 10
  IF ~~ THEN REPLY #42594 /* ~"Verstehe. Dann hätte ich noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #42595 /* ~"Verstehe. Dann leb wohl, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 6.2 8.2 10.1 11.1 13.0 14.0 15.0 16.0 17.0 18.0 19.1 20.0 21.0 32.0
  SAY #42542 /* ~"Ja?"~ */
  IF ~~ THEN REPLY #42596 /* ~"Also... Weshalb lebst du als Schrank in diesem Bordell?"~ */ GOTO 5
  IF ~~ THEN REPLY #42597 /* ~"Könntest du wieder deine normale Form annehmen, wenn du wolltest?"~ */ GOTO 13
  IF ~~ THEN REPLY #42598 /* ~Kannst du mir etwas über diesen Ort erzählen?"~ */ GOTO 14
  IF ~  Global("Nenny_Hint2","AR0605",3)
~ THEN REPLY #42599 /* ~"Nenny hat mir gesagt, sie hätte einen Mann aus Kimasxi Natternzunges Zimmer kommen sehen... Ich glaube, das warst du, Luis."~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",4)
~ GOTO 36
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #42600 /* ~"Was kannst du mir über die schweigsame Prostituierte erzählen?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 15
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #42601 /* ~"Ich hab gehört, Kesai-Serris ist Ravels Tochter. Stimmt das?"~ */ GOTO 16
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #42602 /* ~"Ich bin auf der Suche nach Vivians Duft... Weißt du, wo er sein könnte?"~ */ GOTO 17
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #42603 /* ~"Ich suche Marissas Purpurschleier... Weißt du, wo er sein könnte?"~ */ GOTO 18
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42604 /* ~"Weißt du etwas über Ravel Rätselschön?"~ */ GOTO 19
  IF ~  GlobalGT("Vivian","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #42605 /* ~"Ich habe insgesamt mit neun Prostituierten gesprochen... Weißt du, wer oder wo die zehnte Schülerin ist?"~ */ GOTO 21
  IF ~~ THEN REPLY #42606 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #42543 /* ~Der Schrank scheint kurz darüber nachzudenken. "Ich habe nicht das geringste Bedürfnis, dir dieses Geheimnis zu verraten! Außerdem sehe ich momentan keinen Anlaß, weshalb ich mich zurückverwandeln sollte, denn ich habe das Gefühl, ein Schrank zu sein, noch gar nicht voll und ganz ausgekostet. Es ist eine komplexe Erfahrung, mit all der weichen Rüschenwäsche zu leben, die so wunderbar nach Frau duftet." Eine der Schubladen öffnet und schließt sich mit einem Quietschen. Das Geräusch soll einen wohligen Seufzer imitieren.~ */
  IF ~~ THEN REPLY #42607 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #42608 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #42544 /* ~"Ein Mann sollte das selbst herausfinden, anstatt es sich nur erzählen zu lassen... Schließlich würde dadurch das Vergnügen beträchtlich geschmälert. Ich gebe dir nur eine Auskunft, die du wahrscheinlich schon kennst: Wir sind hier im Bordell zum Befriedigen Intellektueller Lüste, wo die Prostituierten sich auf die Kunst der Sprache und der Kommunikation spezialisiert haben."~ */
  IF ~~ THEN REPLY #42609 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #42610 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.4
  SAY #42545 /* ~"Ja, Ecco. Sie kann nicht schon immer stumm gewesen sein, sonst hätte sie sich in der Zwischenzeit mit einer anderen Art der Kommunikation vertraut gemacht. Es muß erst vor kurzem geschehen sein."~ */
  IF ~~ THEN REPLY #42611 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #42612 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.5
  SAY #42546 /* ~"Ich würde nicht unbedingt behaupten, daß sie *Ravels* Tochter ist, aber eine Nachthexe *ist* sie allemal. Sieh dir nur ihre Haut, ihre Augen, ihre robuste Natur und ihre irrationale Fixierung auf die Träume anderer an... Das alles sind sichere Anzeichen. Daß sie sich noch nicht, wie alle anderen Nachthexen, in ein buckliges altes Weib verwandelt hat, liegt zweifellos daran, daß Kesai ihre wahre Natur immer entschieden abgelehnt hat."~ */
  IF ~~ THEN REPLY #42613 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #42614 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.6
  SAY #42547 /* ~"Meine Güte, ja... Ich *habe* davon gehört. Ein Jammer! Bist du je in den einzigartigen Genuß ihres Dufts gekommen?" Die Schubladen des Schranks scheinen vor Entzücken zu beben. "Ein einmaliges Vergnügen. Doch leider weiß ich nicht, wo man den Duft der guten Lady Vivian finden könnte."~ */
  IF ~~ THEN REPLY #42615 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #66529 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.7
  SAY #42548 /* ~"Soviel ich weiß, hat sie früher immer einen purpurroten Schleier getragen, den sie jedoch unlängst mit auf ihre Kammer genommen und dunkel eingefärbt hat. Die Gründe dafür kenne ich nicht. Der Schleier ist also verschwunden?"~ */
  IF ~~ THEN REPLY #42616 /* ~"Ja. Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #42617 /* ~"So ist es, Luis. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.8
  SAY #42549 /* ~"Niemand, der sich eine Zeitlang in Sigil niedergelassen hat, tut das nicht. Aber was genau willst du über sie wissen?"~ */
  IF ~~ THEN REPLY #42618 /* ~"Ich muß sie finden."~ */ GOTO 20
  IF ~~ THEN REPLY #42619 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #42620 /* ~"Vergiß einfach, daß ich nach ihr gefragt habe. Leb wohl, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42550 /* ~"Du mußt ja komplett verrückt sein... 'Total überschnappt' wäre wohl die gängige Bezeichnung. Ravel wurde vor langer Zeit aus Sigil verbannt, und wenn sie noch nicht tot ist, dann wirst *du* dir wünschen, tot zu sein, falls du sie je findest. Angeblich hat sie bisher alle verschlungen, die ihr nachgeschlichen sind, und dieselbe tödliche Ehre würde sicher auch dir zuteil werden. Laß die Finger davon."~ */
  IF ~~ THEN REPLY #42621 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #42622 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.9
  SAY #42551 /* ~"Es gibt keinen zehnten Lehrling! Was redest du da für einen Müll?"~ */
  IF ~~ THEN REPLY #42623 /* ~"Vergiß es. Ich hätte da noch eine andere Frage..."~ */ GOTO 12
  IF ~~ THEN REPLY #42624 /* ~"Vergiß es, Luis. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 35.0 36.0
  SAY #42552 /* ~Es gelingt dir, das Tuch, einen durchsichtigen, purpurroten Schleier, aus dem Schrank zu ziehen. Als du es einsteckst, bemerkst du, daß es mit einem leichten, exotischen und äußerst angenehmen Duft parfümiert ist.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 27.0 31.0
  SAY #42553 /* ~"Verdammt! Du Lump! Du dreckiger Mistkerl! Gib mir das *auf der Stelle* zurück! Es gehört dir nicht! Das ist ein höchst persönliches Kleidungsstück einer Dame dieses Etablissements, und sie wäre nicht begeistert, wenn sie herausfinden würde, daß du in ihren persönlichen Sachen herumwühlst!"~ */
  IF ~~ THEN REPLY #42625 /* ~"Oh, aber du darfst das, du perverse Holzkiste?"~ */ GOTO 24
  IF ~~ THEN REPLY #42626 /* ~"Ja, ja... Leb wohl, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42554 /* ~"Ich bin längst noch nicht so kriminell und bösartig wie du! Ich versuche lediglich, neue Erfahrungen zu gewinnen, die zur Entwicklung meiner Persönlichkeit beitragen."~ */
  IF ~~ THEN REPLY #42627 /* ~"Ja, ja... Leb wohl, Luis."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 35.1 36.1
  SAY #42555 /* ~Du bist einfach nicht schnell genug, um Luis das purpurrote Tuch zu entreißen... Bei der Sache riskierst du höchstens ein paar eingeklemmte Finger.~ */
  IF ~~ THEN REPLY #42628 /* ~"Gib mir dieses purpurrote Tuch."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42629 /* ~Zieh die Schublade auf, um dir das Tuch zu holen.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42630 /* ~Zieh die Schublade auf, um dir das Tuch zu holen.~ */ GOTO 28
  IF ~~ THEN REPLY #42631 /* ~Bitte und bettle um das Tuch.~ */ GOTO 29
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.0 29.0 30.0
  SAY #42556 /* ~"Nie und nimmer."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42632 /* ~Zieh die Schublade auf, um dir das Tuch zu holen.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42633 /* ~Zieh die Schublade auf, um dir das Tuch zu holen.~ */ GOTO 28
  IF ~~ THEN REPLY #42634 /* ~Bitte und bettle um das Tuch.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 29.1 30.1
  SAY #42557 /* ~"*Mmmpf*. Hör auf! Du sollst aufhören! Paß auf die Griffe auf! Und wehe, du machst Kratzer! Du verdammter, neugieriger Mistkerl!" Der Schrank wehrt sich, so gut er kann, doch schließlich ziehst du die Schublade auf und schnappst dir das Tuch, einen durchsichtigen, purpurroten Schleier. Als du ihn einsteckst, bemerkst du, daß er mit einem leichten, exotischen und äußerst angenehmen Duft parfümiert ist.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 28 // from: 25.2 26.1 28.1 30.2
  SAY #42558 /* ~Die Schublade bleibt geschlossen. Du hörst, wie der Schrank von der Anstrengung noch immer laut keucht. "Scher dich *fort*, du Barbar!"~ */
  IF ~~ THEN REPLY #42635 /* ~"Gib mir dieses purpurrote Tuch, Luis."~ */ GOTO 26
  IF ~~ THEN REPLY #42636 /* ~Zieh die Schublade auf, um dir das Tuch zu holen.~ */ GOTO 28
  IF ~~ THEN REPLY #42637 /* ~Bitte und bettle um das Tuch.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.2 28.2
  SAY #42559 /* ~"Ach, komm mir doch nicht so! Dein Gejammer ermüdet mich. Fällt dir denn nichts *Besseres* ein?~ */
  IF ~~ THEN REPLY #42638 /* ~"Gib mir dieses purpurrote Tuch."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42639 /* ~Zieh die Schublade auf, um dir das Tuch zu holen.~ */ GOTO 27
  IF ~~ THEN REPLY #42640 /* ~Bitte und bettle noch etwas mehr um das Tuch.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.2
  SAY #42560 /* ~"Still jetzt! Mann, bist du langweilig! Ich schlaf noch ein, wenn du so weitermachst."~ */
  IF ~~ THEN REPLY #42641 /* ~"Gib mir dieses purpurrote Tuch."~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #42642 /* ~Zieh die Schublade auf, um dir das Tuch zu holen.~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #42643 /* ~Zieh die Schublade auf, um dir das Tuch zu holen.~ */ GOTO 28
  IF ~~ THEN REPLY #42644 /* ~Hör nicht auf, zu bitten und zu betteln.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.3
  SAY #42561 /* ~Als der Schrank gähnt, siehst du das purpurrote Tuch unter ein paar Dessous hervorblitzen. Du greifst in den Schrank und holst dir das Tuch gerade noch rechtzeitig, bevor die Schublade wieder zugeht. Als du es wegsteckst, bemerkst du, daß es mit einem leichten, exotischen und äußerst angenehmen Duft parfümiert ist.~ */
  IF ~~ THEN DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 23
END

IF ~  Global("Armoire","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #42562 /* ~Dies ist Luis, der sprechende Schrank.~ */
  IF ~~ THEN REPLY #42645 /* ~"Ich hätte da ein paar Fragen, Luis..."~ */ GOTO 12
  IF ~~ THEN REPLY #42646 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  Global("Armoire","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #42563 /* ~Dies ist Luis, der sprechende Schrank.~ */
  IF ~~ THEN REPLY #42647 /* ~"Ich hätte da ein paar Fragen, Luis..."~ */ GOTO 34
  IF ~~ THEN REPLY #42648 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #42564 /* ~Eine ominöse Stille umgibt den Schrank. Er reagiert nicht. Du bist sicher, daß es noch immer Luis ist. Du *spürst* praktisch den Haß, den das Holz ausstrahlt. Er weigert sich jedoch, mit dir zu sprechen.~ */
  IF ~~ THEN REPLY #42649 /* ~"Mach's gut, Luis."~ */ EXIT
  IF ~~ THEN REPLY #42650 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 36.2
  SAY #42565 /* ~Du lauerst angespannt an der Seite des Schranks. Er plappert munter weiter. Die Schublade bleibt allerdings nie lange genug geöffnet, damit du dir das Tuch schnappen kannst.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42651 /* ~Versuch, deine Hand reinzustecken, so lange die Schublade offen ist.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42652 /* ~Versuch, deine Hand reinzustecken, so lange die Schublade offen ist.~ */ GOTO 25
END

IF ~~ THEN BEGIN 36 // from: 12.3
  SAY #42566 /* ~"Du *glaubst*? *GLAUBST*?! Wie kannst du so erschreckend unverschämt, so haarsträubend anmaßend sein, solche eine Anschuldigung vorzubringen, ohne dir deiner Vorwürfe absolut *sicher* zu sein?! Wie kannst du es *wagen*! Unverschämter, arroganter Köter! Also, ich sollte..."

Während Luis schimpft und flucht, öffnen und schließen sich seine Schubladen... Du bemerkst ein kleines Bündel aus purpurfarbenem Stoff, das neben ein paar Kleidungsstücken steckt. Das ständige Öffnen und Schließen der Schrankschubladen macht es jedoch schwierig, das Bündel zu greifen.~ */
  IF ~  CheckStatGT(Protagonist,15,DEX)
~ THEN REPLY #42653 /* ~Versuch, es dir zu holen.~ */ DO ~GiveItemCreate("SVeil",Protagonist,1,0,0)
SetGlobal("Armoire","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #42654 /* ~Versuch, es dir zu holen.~ */ GOTO 25
  IF ~~ THEN REPLY #42655 /* ~Lauere auf eine Gelegenheit, bei der du es dir schnappen kannst.~ */ GOTO 35
END
