// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANDER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6657 /* ~Der alte Mann blickt dich ohne Furcht an und sagt: "Aha, du bist also der, wegen dem sie alle so viel Wind machen? Geh schon. Ich habe dir nichts zu sagen."~ */
  IF ~~ THEN REPLY #6668 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6669 /* ~Der alte Mann zwinkert dir ein- oder zweimal zu und sagt, "Hier kann ich dir nicht helfen. Du mußt mit den Wachen gehen." Er widmet sich wieder dem Gerät, das er in den Händen hält.
~ */
  IF ~~ THEN REPLY #6670 /* ~Geh weg.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Evil_Xander_1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #6671 /* ~"Und du glaubst wirklich, daß ich dir helfen werde, nachdem du mich bedroht hast? Du bist ein noch größerer Sturkopf, als ich dachte. Ich verlange eine Entschuldigung. Sofort."~ */
  IF ~~ THEN REPLY #6672 /* ~"In die Neun Höllen mit dir, alter Mann."~ */ GOTO 15
  IF ~~ THEN REPLY #6673 /* ~Lüge: "Entschuldigung. Mein Temperament ist mit mir durchgegangen. Soll nicht wieder vorkommen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #6674 /* ~"Entschuldigung. Mein Temperament ist mit mir durchgegangen. Soll nicht wieder vorkommen."~ */ GOTO 16
  IF ~~ THEN REPLY #6675 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 15 even though they appear after this state */
~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #6676 /* ~"Die Getrieberäder laufen nicht mehr rund, mein Freund. Da die dumme Bedai-Lihn tot ist, muß ich dir wohl jetzt die Tips geben, die du brauchst, um das Getriebe zu reparieren..." Er überschüttet dich mit Informationen. Du bist nicht sicher, ob du alles mitbekommen hast.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #6677 /* ~"Ich glaub, ich hab's kapiert. Mit anderen Worten, ich nehme einfach das Hauptzahnrad heraus, säubere es mit Schmierfett, schärfe die stumpfen Zähne und setze es dann wieder ein, ja?"~ */ DO ~SetGlobal("GearRepair","GLOBAL",4)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #6678 /* ~"Ich glaub, ich hab's kapiert... aber wie war das doch gleich mit den primären Motivationseinheiten... nein, warte mal. Ich hab' das doch noch nicht verstanden."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #6679 /* ~"Doch sicher. Kann ich jetzt hier weiterarbeiten oder hast du vor, mir mit deinen Fragen weiter auf die Nerven zu gehen?"~ */
  IF ~~ THEN REPLY #6680 /* ~"Nun, ehrlich gesagt, werde ich dir noch ein paar Fragen stellen."~ */ GOTO 27
  IF ~~ THEN REPLY #6681 /* ~"Nein, das war alles. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #6682 /* ~"Ganz eindeutig wirst du es nicht schaffen, das Ding zu reparieren. Ich fürchte, daß ich es selbst machen muß." Er grummelt und steht auf. "Ein paar Dussel machen uns Graubärten wirklich das Leben schwer" murmelt er.~ */
  IF ~~ THEN REPLY #6683 /* ~"Bevor du gehst, wollte ich dir noch ein paar Fragen stellen."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 27
  IF ~~ THEN REPLY #6684 /* ~"Ja, weißte, einige haben halt andere Begabungen. Dussel."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",4)
~ THEN BEGIN 6 // from: 12.2
  SAY #6685 /* ~"Laß mich wissen, wenn du für den Traumschlüssel bereit bist, narbengezeicheter Mann, und ich werde ihn dir geben."~ */
  IF ~~ THEN REPLY #6686 /* ~"Gib mir den Schlüssel."~ */ GOTO 7
  IF ~~ THEN REPLY #6687 /* ~"Nein, noch nicht. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 27
  IF ~~ THEN REPLY #6688 /* ~"Vergiß es."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6689 /* ~Er hält inne, als ob er sich sammelt. "Schließ die Augen und strecke deine Hand aus" sagt er. "Du mußt diesen Schlüssel zuerst fühlen, bevor du ihn anschaust, sonst funktioniert er nicht."~ */
  IF ~~ THEN REPLY #6690 /* ~Mach was er sagt.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6691 /* ~Riskier einen Blick.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 11.0
  SAY #6692 /* ~Auf der Innenfläche deiner schwieligen Hand spürst du eine Berührung. Zuerst kannst du sie kaum wahrnehmen, aber nach einigen Augenblicken spürst du, wie dort rasch etwas Gestalt annimmt. Schließlich sagt Xander: "Öffne deine Augen." Als du dies tust, erblickst du eine einfache, schwarze Feder auf deiner Handfläche. "Meine Arbeit ist getan", sagt Xander. "Benutz den Schlüssel für die Tür ganz links in der Gießerei, und der Traumerzeuger wird sich dir öffnen. Ich muß jetzt gehen... Ich habe zu tun."~ */
  IF ~~ THEN REPLY #6693 /* ~"Eine Feder? Die ganze Arbeit nur für eine Feder?"~ */ JOURNAL #68034 /* ~Ich hab' endlich diese verfluchte Traumerzeugeraufgabe vollendet. Zum Lohn bekam ich... eine Feder. Angeblich ein Schlüssel, mit dem man die Tür zu den Träumen öffnen kann. Ich hoffe, es war den ganzen Ärger auch wert.~ */ GOTO 10
  IF ~~ THEN REPLY #6695 /* ~"Besten Dank, Xander. Leb wohl."~ */ DO ~EscapeArea()
~ JOURNAL #68034 /* ~Ich hab' endlich diese verfluchte Traumerzeugeraufgabe vollendet. Zum Lohn bekam ich... eine Feder. Angeblich ein Schlüssel, mit dem man die Tür zu den Träumen öffnen kann. Ich hoffe, es war den ganzen Ärger auch wert.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #6696 /* ~Du spähst durch den Spalt unter deinen Augenlidern hindurch, während Xander sich für einen Moment konzentriert und seine Hände über deine hält! Nichts geschieht. Xander öffnet die Augen, starrt deine leere Hand an und platzt vor Zorn. "Ich habe dir befohlen, die Augen zu schließen, du Dussel. Das ist kein Spiel. Glaubst du, es hat mir Spaß gemacht, mein Leben für deinen blöden Apparat zu verschwenden? Glaubst du, ich möchte deine Zweifel in meiner Arbeit spüren? Mach die Augen zu, Dussel, und laß sie zu, oder du wirst den Schlüssel nicht bekommen!"~ */
  IF ~~ THEN REPLY #6697 /* ~"Gib mir den Schlüssel, alter Mann. Und zwar sofort."~ */ GOTO 11
  IF ~~ THEN REPLY #6698 /* ~Mach was er sagt.
~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6699 /* ~"Vergiß es. Ich habe besseres zu tun, als auf das Gerede eines Übergeschnappten zu warten." Geh.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #6700 /* ~"Das ist die letzte Sicherung für den Traumerzeuger, Schlucker. Glaubst du, ich möchte, daß hier jeder reinschneit? Ich bin doch nicht blöd. Willst du noch etwas, oder kann ich jetzt zurück an die Arbeit?"~ */
  IF ~~ THEN REPLY #6702 /* ~"Geh wieder an deine Arbeit."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #6703 /* ~"Geh wieder an deine Arbeit, und hab' Dank."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #6704 /* ~Er wird ganz rot, als er versucht, sich eine Schimpfkanonade zu verkneifen. Er atmet tief durch und sagt mit verhaltenem Zorn: "Dussel, der Schlüssel ist weggesperrt und nur durch Glauben zu erlangen. Entweder du vertraust mir und schließt deine Augen, oder du tust es nicht und findest niemals deine Träume. Du hast die Wahl, mein Freund."~ */
  IF ~~ THEN REPLY #6705 /* ~Mach was er sagt.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
~ GOTO 8
  IF ~~ THEN REPLY #6706 /* ~"Vergiß es. Ich habe besseres zu tun, als auf das Gerede eines Übergeschnappten zu warten."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",3)
~ THEN BEGIN 12 // from: 19.2
  SAY #6707 /* ~"Ich brauche noch einen einzigen Gegenstand von dir, dann können wir die letzte Phase des Traumerzeugers einleiten. Ich brauche ein Kopfkissen, das in einem Sarg gelegen hat - es wird für einen so tiefen Schlaf sorgen, daß man dich für tot halten könnte. Dadurch wird dein Geist für die Ströme des Traumerzeugers geöffnet. Es ist, wenn ich so sagen darf, ein Hauch von Inspiration meinerseits."~ */
  IF ~  !PartyHasItem("DrmPllw")
~ THEN REPLY #6708 /* ~"Ein Sargkissen, wie? Kannste haben. Aber erst mußt du mir noch ein paar Fragen beantworten."~ */ GOTO 27
  IF ~~ THEN REPLY #6709 /* ~"Ich denke nicht, daß ich diese Sachen wirklich für dich holen will."~ */ GOTO 13
  IF ~  PartyHasItem("DrmPllw")
~ THEN REPLY #6710 /* ~"Ich habe das Kissen für dich. Laß uns weitermachen."~ */ DO ~TakePartyItemNum("DrmPllw",1)
SetGlobal("Dream","GLOBAL",4)
~ JOURNAL #68035 /* ~Ich hab Xander das Sargkissen von Hamrys gebracht. Mal sehen, was für ein Botengang ihm als nächstes einfällt.~ */ GOTO 6
  IF ~~ THEN REPLY #6711 /* ~"Ich werd dir eins besorgen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 19.1 21.1
  SAY #6712 /* ~"Du willst nicht, soso? Dann solltest du vielleicht daran denken, daß du diese Gegenstände für ein Projekt sammelst, das DU ins Leben gerufen hast und das vor allem von DIR vorangetrieben wurde, für einen Apparat, der so kompliziert ist, daß seine Realisierung das Leben von vier Generationen meiner Familie beherrscht hat - und das alles für DICH. Wenn du das Projekt abschließen willst, dann bring die Abschlußphase zu Ende und hör auf zu jammern."~ */
  IF ~~ THEN REPLY #6713 /* ~"Alter Mann, red' nicht in diesem Ton mit mir, oder das waren deine letzten Worte."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Xander_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #6714 /* ~"Gut. Abgemacht. Werd' ich tun. Aber hör auf, mich anzuschreien."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6715 /* ~"Du würdest also all die Zeit und Mühe in den Wind schreiben? Du würdest deine Träume aufgeben, nur weil du es nicht magst, wenn dich jemand als Dummkopf bezeichnet? Du bist wirklich ein Sturkopf, wenn du glaubst, daß du dieses Projekt ohne meinen Wissensschatz zu Ende bringen kannst. Und du bist ein noch größerer Sturkopf, wenn du glaubst, daß eine freche Lippe die Todesstrafe wert ist. Glaubst du wirklich, du kannst deine Probleme lösen, indem du jeden bedrohst, der dir in die Quere kommt? Auf den Ebenen funktioniert das nicht, mein narbiger Freund."~ */
  IF ~~ THEN REPLY #6716 /* ~"Ich hab' schon wegen Geringerem getötet."~ */ GOTO 16
  IF ~~ THEN REPLY #6717 /* ~"Ich werde jetzt gehen. Bevor ich einen Fehler mache, den wir später beide bereuen."~ */ EXIT
END

IF WEIGHT #2 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 15 // from: 2.0
  SAY #6718 /* ~"Pack ein, Schlucker. Du wirst nie an deine Träume gelangen. Dein wertvoller Traumerzeuger ist hinüber."~ */
  IF ~~ THEN REPLY #6719 /* ~Erledigt.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.1 2.2 14.0
  SAY #6720 /* ~"Da bin ich mir sicher, du hirnloser Schlucker. Deine dämliche Harte-Mann-Nummer bringt mich zur Weißglut! Du und dein Traumerzeuger können von mir aus zur Hölle fahren." Er sieht so aus, als wolle er gleich die Wache rufen.~ */
  IF ~  CheckStatGT(Protagonist,13,DEX)
~ THEN REPLY #6721 /* ~Brich ihm das Genick, bevor er damit fertig ist.~ */ DO ~Kill(Myself)
PlaySoundNotRanged("SPE_11")
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #6722 /* ~Brich ihm das Genick, bevor er damit fertig ist.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #6723 /* ~Flieh.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #6724 /* ~Deine Hände verschwimmen, als du sie um den Hals des alten Ingenieurs legst. Du brichst sein Genick wie einen Zweig, und er stirbt mit weit aufgerissenen Augen vor deinen Füßen. Dem hast du's gezeigt. Leider hast du es auch allen anderen Anwesenden in der Halle gezeigt. Es wird Alarm ausgelöst.~ */
  IF ~~ THEN REPLY #6725 /* ~"Nun gut."~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #6726 /* ~Geschickt weicht er deinen ausgestreckten Händen aus und ruft die Wache. Sie eilt herbei.~ */
  IF ~~ THEN REPLY #6727 /* ~"Verflucht."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #7 ~  Global("Dream","GLOBAL",2)
~ THEN BEGIN 19 // from: 21.0
  SAY #6728 /* ~"Für die Maschine ist ein Vogelkäfig erforderlich, der meisterhaft geschmiedet und mit Rasierklingen besetzt sein muß, um die zerstörerische Kraft von Träumen und ihre Fähigkeit, unsere Herzen und Fantasien einzufangen, nachzuahmen. Suche im Belagerungsturm nach einem Käfig, den ich in Auftrag gegeben habe."~ */
  IF ~~ THEN REPLY #6729 /* ~"Wie komme ich denn da rein?"~ */ GOTO 20
  IF ~~ THEN REPLY #6749 /* ~"Ich glaube nicht, daß ich diese Sachen für dich holen will."~ */ GOTO 13
  IF ~  PartyHasItem("DrmCage")
~ THEN REPLY #6865 /* ~"Ich hab's schon hier. Und nun gib mir meine Träume."~ */ DO ~TakePartyItemNum("DrmCage",1)
SetGlobal("Dream","GLOBAL",3)
~ JOURNAL #68036 /* ~Nachdem ich den mit Rasiermessern verzierten Vogelkäfig besorgt habe, hat Xander mir aufgetragen, ihm ein Kissen aus einem Sarg zu verschaffen. Damit soll der Schlaf der Toten imitiert werden.~ */ GOTO 12
  IF ~~ THEN REPLY #6866 /* ~"Ein Käfig. Wie banal. Also gut. Beantworte mir erst noch ein paar Fragen."~ */ GOTO 27
  IF ~~ THEN REPLY #6868 /* ~"Ein Käfig mit Rasierklingen. Bin gleich zurück."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #6751 /* ~"Du hast dich als ziemlich einfallsreich erwiesen. Versuch eine Lösung zu finden."~ */
  IF ~~ THEN REPLY #6752 /* ~"Gut. Dann beantworte mir noch ein paar Fragen."~ */ GOTO 27
  IF ~~ THEN REPLY #6753 /* ~"Das werde ich. Du wirst mich wiedersehen."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Dream","GLOBAL",1)
~ THEN BEGIN 21 // from: 24.0 26.0 28.1 29.1 30.0
  SAY #6754 /* ~"Um die letzten Arbeitsphasen am Traumerzeuger in Angriff zu nehmen, brauche ich ein Stück von deiner Haut, das in deinem Blut getränkt ist. Dadurch kann sich die Maschine mit deiner physischen Grundstruktur vertraut machen. Die Haut muß sich in einer blau-grünen Flasche befinden, die das Meer der Träume symbolisiert, in dem du treiben wirst."~ */
  IF ~  PartyHasItem("DrmVial")
~ THEN REPLY #6755 /* ~"Ich hab's schon hier. Nimm's. Zeig mir meine Träume."~ */ DO ~TakePartyItemNum("DrmVial",1)
SetGlobal("Dream","GLOBAL",2)
~ JOURNAL #68037 /* ~Ich hab' eine Phiole mit Fleisch und Blut für Xander und seinen... meinen... Traumerzeuger besorgt. Als nächstes braucht er einen mit Rasiermessern verzierten Vogelkäfig.~ */ GOTO 19
  IF ~~ THEN REPLY #6756 /* ~"Ich glaube nicht, daß ich das für dich holen will."~ */ GOTO 13
  IF ~~ THEN REPLY #6757 /* ~"Fleisch und Blut, hm? Davon hab' ich in letzter Zeit genug gegeben. Beantworte mir erst eine Frage."~ */ GOTO 27
  IF ~~ THEN REPLY #6758 /* ~"Beantworte mir erstmal ein oder zwei Fragen, ja? Dein Traumerzeuger interessiert mich nicht."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 22
  IF ~~ THEN REPLY #6759 /* ~"Fleisch, Blut, Flasche. Okay. Bin gleich zurück."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.3 33.1
  SAY #6760 /* ~Xander sieht aus, als hättest du ihm einen Schlag in die Magengrube verpaßt... und zwar ziemlich hart. "Du bist nicht interessiert? Aber... vier Generationen meiner Familie haben sich damit beschäftigt... mein Urgroßvater sagte einmal, daß du alles daran setzten würdest..."~ */
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #6761 /* ~"Dein Urgroßvater? Was? Erzähl mir, was du über mich weißt."~ */ GOTO 23
  IF ~~ THEN REPLY #6762 /* ~"Nein, das interessiert mich nicht. Beantworte mir doch ein paar Fragen."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,0,0)
~ GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #6763 /* ~"Du bist zu XERO, meinem Urgroßvater gekommen, und hast ihm erzählt, daß du nicht träumen kannst. Du hast gesagt, daß du wieder träumen willst. Dann hast du ihm eine unglaubliche Summe Geld angeboten, damit er eine Maschine baut, die dir deine verlorenen Träume wiederbringt. Dann hast du ihm noch versprochen, in ein paar Jahren zurückzukommen, aber das hast du nie getan."

Du merkst, wie die Erinnerung in dir hochsteigt.
~ */
  IF ~~ THEN REPLY #6764 /* ~Unterdrücke es.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #6765 /* ~Lass es zu.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #6766 /* ~Lass es zu.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #6767 /* ~Durch Willenskraft hinderst du die Erinnerung daran, in dein Bewußtsein zu treten.

"Nach Xeros Tod wurde die Arbeit an der Maschine fortgesetzt. Meine Großmutter Nula lenkte die Forschungsarbeit in eher esoterische Bahnen und erschuf aus Kräutern und Mosaiksteinen magische Muster, die Bruchstücke von Träumen aus den Astralebenen und den ätherischen Ebenen wiedergeben konnten. Mein Onkel ging noch einen Schritt weiter und bediente sich sowohl himmlischer als auch teuflischer Hilfe, um den Apparat zu bauen. Was mich betrifft... ich habe die Rituale entwickelt, die seine Kräfte freisetzen werden... und dann kannst du deine Träume zurück haben."
~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6768 /* ~"Also schön. Du hast mich überzeugt. Was muß ich tun, um meine Träume wiederzuerlangen?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6769 /* ~"Das will ich jetzt aber gar nicht. Beantworte mir doch lieber noch ein paar Fragen."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6770 /* ~"Interessant. Vielleicht frage ich dich später nochmal dazu. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.2
  SAY #6772 /* ~Die Erinnerung an den jungen genialen Tüftler Xeno Xander überschattet die Worte seines Nachkommen und du erinnerst dich an den brillianten jungen Hexenmeister, der voller Stolz einen von ihm geschaffenen Zauber vorführt. "Ich nenne ihn 'Friedensstifter'" sagt er. Ihr beide beobachtet, wie magische Partikel sanft um euch herum herabschweben, und ein großer Friede erfüllt dich. "Funktioniert ja," sagst du. "Wir wollen nur hoffen, daß du bei diesem Traumerzeuger genausogut arbeitest."

Nihl Xander hört einen Augenblick auf zu reden: "Hörst du mir zu?"
~ */
  IF ~~ THEN REPLY #6773 /* ~"Was? Natürlich. Kannst du das nochmal sagen?"~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ GOTO 26
  IF ~~ THEN REPLY #6774 /* ~"Nein, tu ich nicht. Leb wohl."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #6775 /* ~Er wirkt ein wenig irritiert, versucht aber, sich nichts anmerken zu lassen. "Nach Xeros Tod wurde die Arbeit an der Maschine fortgesetzt. Meine Großmutter Nula lenkte die Forschungsarbeit in eher esoterische Bahnen und erschuf aus Kräutern und Mosaiksteinen magische Muster, die Bruchstücke von Träumen aus den Astralebenen und den ätherischen Ebenen wiedergeben konnten. Mein Onkel ging noch einen Schritt weiter und bediente sich sowohl himmlischer als auch teuflischer Hilfe, um den Apparat zu bauen. Was mich betrifft... ich habe die Rituale entwickelt, die seine Kräfte freisetzen werden... und dann kannst du deine Träume zurück haben."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6776 /* ~"Also schön. Du hast mich überzeugt. Was muß ich tun, um meine Träume wiederzuerlangen?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6777 /* ~"Das will ich jetzt aber gar nicht. Beantworte mir doch lieber noch ein paar Fragen."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6778 /* ~"Interessant. Vielleicht frage ich dich später nochmal dazu. Leb wohl."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 4.0 5.0 6.1 12.0 19.3 20.0 21.2 22.1 24.1 26.1 28.2 29.2 30.1 31.0 32.0 33.2 34.0 35.1 36.0 38.0
  SAY #6779 /* ~Seine ohnehin schon faltige Stirn wird noch faltiger. "Was willst du wissen?"~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6780 /* ~"Du sagtest vorhin etwas von einem Traumerzeuger. Erzähl mir mehr darüber."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6781 /* ~"Sag mir alles, was du über den Mord am Schmied weißt."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
~ THEN REPLY #6782 /* ~"Ich wurde gebeten, das Getriebe in der Gießerei zu reparieren. Kannst du mir sagen, wie das geht?"~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6785 /* ~"Wer bist du?"~ */ GOTO 33
  IF ~~ THEN REPLY #6787 /* ~"Was kannst du mir über die Göttermenschen erzählen?"~ */ GOTO 35
  IF ~~ THEN REPLY #6788 /* ~"Erzähl mir was über die anderen Arbeiter hier."~ */ GOTO 34
  IF ~~ THEN REPLY #6789 /* ~"Was machst du da?"~ */ GOTO 39
  IF ~  GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #8742 /* ~"Im Moment nichts. Leb wohl."~ */ EXIT
  IF ~  Global("Dream","GLOBAL",5)
~ THEN REPLY #66567 /* ~"Im Moment nichts. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 33.0
  SAY #6791 /* ~"Sie ist sowohl eine Maschine als auch ein Ritual. Sie ist ein geistiger Zustand und eine Konstruktion aus Nebel und Blut. Sie schenkt denjenigen Träume, die ihren Wirkungskreis betreten. Sie wurde für dich gebaut und wartet auf dich. Bist du bereit, das Werk zu vollenden? Sie wartet schon seit Jahrzehnten auf dich."~ */
  IF ~~ THEN REPLY #6792 /* ~"Woher weißt du, daß es für mich hergestellt wurde?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6793 /* ~"Ja."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6795 /* ~"Nein. Vielleicht komm ich drauf zurück. Beantworte mir noch ein paar Fragen."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6796 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #6798 /* ~"Mein Urgroßvater, Xeno Xander, hat dein Gesicht in Stein gemeißelt, damit wir dich erkennen, wenn du zurückkommst, um das von dir in Auftrag gegebene Werk abzuholen. Er hat immer geglaubt, daß du zurückkehren würdest. Kein anderer hat sonst daran geglaubt. Unsere Famile hat das Werk vollendet, weil wir unser Wort gegeben hatten... und jetzt bist du hier."~ */
  IF ~~ THEN REPLY #6799 /* ~"Hast du diesen Stein noch?"~ */ GOTO 30
  IF ~~ THEN REPLY #6801 /* ~"Also muß ich wohl einen Grund dafür gehabt haben. Laß uns das beenden."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6802 /* ~"Das interessiert mich nicht. Beantworte mir eine andere Frage."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #6803 /* ~"Nein. Es wurde mir vor einem Jahr gestohlen. Ich sah nur noch einen Schatten, der davonlief. Es war der einzige Gegenstand, der aus meinem Haus entwendet wurde, aber ich habe keine Ahnung, wer ihn hätte stehlen sollen; allerdings kann ich mich noch gut an ihn erinnern."~ */
  IF ~~ THEN REPLY #6804 /* ~"Also schön. Laß uns den Traumerzeuger fertigmachen."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6805 /* ~"Das interessiert mich im Moment nicht. Ich hätte jedoch noch ein paar andere Fragen."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6806 /* ~"Dein Traumerzeuger interessiert mich nicht. Vielleicht später. Leb wohl."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 37.1 37.2
  SAY #6808 /* ~"Geh und sprich mit Bedai-Lihn. Sie weiß Bescheid. Sie kümmert sich hier um die alltäglichen Dinge. Sie ist keine echte Träumerin. Sie sorgt dafür, daß der Laden läuft. Sie macht keine Entwürfe."~ */
  IF ~~ THEN REPLY #6809 /* ~"Gut, das mach ich. Ich hätte aber auch noch ein paar Fragen."~ */ GOTO 27
  IF ~~ THEN REPLY #6810 /* ~"Gut, das mach ich gleich."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.1 37.0
  SAY #6812 /* ~"Ich weiß überhaupt nichts. Ich habe hier an meinem Konstrukt gearbeitet und mich auf meine Arbeit konzentriert. Ich habe nicht darauf geachtet, was die Arbeiter machen - sie machen ihre Arbeit und ich meine."~ */
  IF ~~ THEN REPLY #6816 /* ~"Ich... verstehe. Dann beantworte mir noch ein paar andere Fragen."~ */ GOTO 27
  IF ~~ THEN REPLY #6817 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 27.3 37.3
  SAY #6819 /* ~"Ich bin Nihl Xander, Urenkel des genialen Tüftlers Xero Xander, Ingenieur, Träumer, Schöpfer. Und ich habe sein Werk vollendet - das Werk, das von dir in Auftrag gegeben wurde - der Traumerzeuger! Bist du nun bereit, ihn in Besitz zu nehmen?"~ */
  IF ~~ THEN REPLY #6820 /* ~"Ein Traumerzeuger? Was ist denn das?"~ */ GOTO 28
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6821 /* ~"Nein. Ich habe da noch mehr Fragen an dich."~ */ GOTO 22
  IF ~  GlobalGT("Dream","GLOBAL",0)
~ THEN REPLY #6823 /* ~"Nein. Ich habe da noch mehr Fragen an dich."~ */ GOTO 27
  IF ~~ THEN REPLY #6824 /* ~"Nein."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.5 37.5 40.0
  SAY #6827 /* ~"Pah. Sie besitzen kein wahres Feuer. Sie reden vom Erschaffen und prahlen mit ihren Fähigkeiten, aber sie erschaffen nichts, was über das Gewöhnliche hinausgeht. Ihre Vorstellungskraft ist schwach, begrenzt und wird von Kleinigkeiten beherrscht. Ein wahrer Träumer, so sage ich, entwirft einen großen Plan und konzentriert sich dann auf die Details. Mit den Details zu beginnen ist etwas für die Ameisen der Phantasie... Insekten, die lediglich gefüttert werden wollen."~ */
  IF ~~ THEN REPLY #6829 /* ~"Das ist wirklich nett von dir. Könntest du mir vielleicht noch ein paar weitere Fragen beantworten?"~ */ GOTO 27
  IF ~~ THEN REPLY #6830 /* ~"Ich verstehe... Jetzt wo ich das weiß, muß ich schleunigst los. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.4 37.4
  SAY #6831 /* ~Er seufzt und sammelt sich. "Das ist eine lange Geschichte. Also fangen wir an. Alle Geschöpfe streben nach etwas, oder? Sie erschaffen, sie bauen, sie reißen nieder, sie träumen, sie kämpfen und treiben Unzucht. Sie tun das alles, weil sie etwas erreichen wollen, das jenseits dessen liegt, was sie haben. Selbst auf der niedrigsten Existenzstufe strebt jede Lebensform nach Höherem. Manche erreichen es. Andere scheitern." ~ */
  IF ~~ THEN REPLY #6832 /* ~"Red' weiter."~ */ GOTO 41
  IF ~~ THEN REPLY #6833 /* ~"Vergiß es. Ich hätte da aber noch ein paar andere Fragen."~ */ GOTO 27
  IF ~~ THEN REPLY #6834 /* ~"Ach, andererseits: Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 41.0
  SAY #6836 /* ~"Adlat Keldor ist tagsüber gleich dort drüben. Rede mit ihm. Oder such dir diesen selbstmörderischen Dussel Sandoz und rede mit ihm. Bist du mir jetzt genug auf die Nerven gegangen?"
~ */
  IF ~~ THEN REPLY #6837 /* ~"Noch nicht."~ */ GOTO 27
  IF ~~ THEN REPLY #6838 /* ~"Ja. Leb wohl."~ */ EXIT
END

IF WEIGHT #10 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from: 39.1 40.1 41.1
  SAY #6839 /* ~Du siehst einen Mann mit buschigem Haar und hochmodischer Kleidung - wenn man davon ausgeht, daß es seit fünfzig Jahren keine Mode mehr gibt. Seine Kleidung scheint aus zerschlissenen Lumpen zu bestehen, und er gibt vor, seine Umgebung mit Verachtung zu strafen - oder vielleicht verachtet er sie auch wirklich. Er würdigt dich keines Blickes, bis du ihn ansprichst, dann beginnt er, dein Gesicht sorgfältig zu mustern. "Willst du was?", grummelt er.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6841 /* ~"Sag mir alles, was du über den Mord am Schmied weißt."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
~ THEN REPLY #6842 /* ~"Ich wurde gebeten, das Getriebe in der Gießerei zu reparieren. Kannst du mir sagen, wie das geht?"~ */ GOTO 31
  IF ~  Global("GearRepair","GLOBAL",2)
!Dead("Bedai")
~ THEN REPLY #6843 /* ~"Ich wurde gebeten, das Getriebe in der Gießerei zu reparieren. Kannst du mir sagen, wie das geht?"~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6846 /* ~"Wer bist du?"~ */ GOTO 33
  IF ~~ THEN REPLY #6847 /* ~"Was kannst du mir über die Göttermenschen erzählen?"~ */ GOTO 35
  IF ~~ THEN REPLY #6849 /* ~"Erzähl mir was über die anderen Arbeiter hier."~ */ GOTO 34
  IF ~~ THEN REPLY #6850 /* ~"Was machst du da?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6852 /* ~Er explodiert: "Ich kann ihr helfen, indem ich ihr aus dem Weg gehe. Unsterblichkeit ist einer der furchtbarsten Flüche der menschlichen Phantasie - jeder Dussel will sie und keiner hat eine Ahnung, auf was er sich einläßt. Nur ein Narr würde sie einem schenken, und nur ein Narr würde sie annehmen!" In ruhigerem Ton fährt er fort: "Und außerdem habe ich es noch nicht geschafft, sie mit meinen Maschinen zu erlangen."~ */
  IF ~~ THEN REPLY #6853 /* ~"Ich verstehe. Dann beantworte mir noch ein paar Fragen."~ */ GOTO 27
  IF ~~ THEN REPLY #6854 /* ~"Ich verstehe. Das nützt mir aber gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.6 37.6
  SAY #8743 /* ~"Was ich mache? Ich bin der Ingenieur aller Ingenieure. Ich ging beim Schmied Kazan vom Volk der Tanar-Ri in die Lehre, der auf einem Schmiedefeuer des Hasses Worte formte, sie im Trog der Verzweiflung abkühlte und sie ausschickte, die Dummheit zu vernichten. Teile von Phrasen, beißende Worte, wurden ihm gebracht, und er erschuf Waffen von furchteinflößender Wirkung - Waffen, die einen Feind niederstreckten und die mißratenen Ideen anderer zerstörten. Ich bin sicher, daß du sein Werk gesehen hast."~ */
  IF ~~ THEN REPLY #8756 /* ~"Also, du stellst hier üble Waffen her?"~ */ GOTO 40
  IF ~~ THEN REPLY #8758 /* ~"Da bin ich mir sicher. Beantworte mir noch ein paar andere Fragen."~ */ GOTO 37
  IF ~~ THEN REPLY #8759 /* ~"Ja, das wird wohl stimmen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8747 /* ~"Überhaupt nicht! Meine Schmiede ist nicht auf Haß aufgebaut, sondern auf Verständnis. Ich habe unter Meister Terasaphirea mein Handwerk gelernt. Er hat die heilende Wirkung eines sanften Gedankens entdeckt, Vorstellungen, die jedes feindselige, hassende Herz besänftigen. Er verfolgte sein Ziel mit Liebe und Hingabe. Meine Arbeit verschmilzt mit deren Arbeit, so wie alle sterblichen Psychen Elemente des Dämonischen und des Erhabenen vereinen."~ */
  IF ~~ THEN REPLY #8761 /* ~"Sind die anderen Arbeiter auch so gut ausgebildet wie du?"~ */ GOTO 34
  IF ~~ THEN REPLY #8762 /* ~"Faszinierend! Kann ich dich noch was anderes fragen?"~ */ GOTO 37
  IF ~~ THEN REPLY #8764 /* ~"Das muß ich erstmal überdenken. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.0
  SAY #8748 /* ~"Jede Entscheidung, jede Tat, jede Reaktion - all diese Faktoren bilden eine Grundlage, auf der sich eine andere Sache aufbaut. Also scheint es offensichtlich, daß unsere gegenwärtige, hochentwickelte Daseinsform für uns die Grundlage für etwas noch Größeres darstellt. Was ist das, wenn nicht Göttlichkeit? So habe ich das immer begründet, und ehrlich gesagt bin ich jetzt nicht in der Stimmung für philosophische Diskussionen. Wenn du das willst, dann mußt du dir einen Adlaten oder sowas suchen."~ */
  IF ~~ THEN REPLY #8765 /* ~"Wo kann ich einen Adlaten finden?"~ */ GOTO 36
  IF ~~ THEN REPLY #8766 /* ~"Ich verstehe. Beantworte mir doch noch ein paar andere Fragen, ja?"~ */ GOTO 37
  IF ~~ THEN REPLY #8767 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END
