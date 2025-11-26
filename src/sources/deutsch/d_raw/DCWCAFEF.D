// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27654 /* ~Die elegant gekleidete Frau ruht sich aus und genießt die frische Luft, während sie an einem Getränk nippt, das sie im Cafe gekauft hat.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27655 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #27656 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 49
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #27657 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #27658 /* ~Laß die Frau in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #27659 /* ~Ihre Augen werden etwas größer, als sie dich sieht. "Äh... seid ebenfalls gegrüßt." Sie lächelt beklommen.~ */
  IF ~~ THEN REPLY #27660 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27661 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ GOTO 2
  IF ~~ THEN REPLY #27662 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 49.4
  SAY #27663 /* ~"Ich... ich war nur zuerst etwas schockiert, als ich Euch gesehen habe. Es passiert nämlich nicht oft, daß ich mit Männern spreche, die so... weltlich... aussehen." Sie senkt entschuldigend den Kopf. "Ich hoffe, daß Ihr mir meine erste Reaktion verzeihst."
~ */
  IF ~~ THEN REPLY #27664 /* ~"Weltlich?"~ */ GOTO 3
  IF ~~ THEN REPLY #27665 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27666 /* ~"Keine Sorge. Ich wollte sowieso gerade gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27667 /* ~"Vielleicht ist 'viel herumgekommen' der passendere Ausdruck? Ihr wirkt nur ein bißchen...äh, ungepflegt. Es könnte sein, daß Ihr dadurch etwas aus dem Rahmen fallt. Aber in Sigil gibt's ja viele merkwürdige Gestalten, nicht wahr? Im Bezirk der Kuratoren scheinen allerdings nicht ganz so viele wie in der restlichen Stadt zu sein. Mal abgesehen von der Festhalle, natürlich."~ */
  IF ~~ THEN REPLY #27668 /* ~"Bezirk der Kuratoren?"~ */ GOTO 6
  IF ~~ THEN REPLY #27669 /* ~"Die Festhalle?"~ */ GOTO 22
  IF ~~ THEN REPLY #27670 /* ~"Du meinst, ich sehe tot aus, ja? Nun, ich bin's, mußt du wissen. Tot, meine ich!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27671 /* ~"Hmm. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27672 /* ~"Verständlich, denk ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.10 13.2 15.2 16.2 17.2 18.3 19.3 21.2 22.4 23.4 24.2 25.8 26.2 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1 49.3 52.0 54.0
  SAY #27673 /* ~Sie nickt. "Bitte fragt!"~ */
  IF ~~ THEN REPLY #27674 /* ~"Wo bin ich hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #27675 /* ~"Was gibt es hier Interessantes?"~ */ GOTO 7
  IF ~~ THEN REPLY #27676 /* ~"Wo könnte ich hier Arbeit finden?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27677 /* ~"Ich möchte etwas über einen bestimmten Ort wissen..."~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27678 /* ~"Ich bräuchte nur ein paar Wegbeschreibungen..."~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27679 /* ~"Was weißt du von Ravel Rätselschön?"~ */ GOTO 42
  IF ~~ THEN REPLY #27680 /* ~"Vergiß es einfach. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27681 /* ~Sie guckt dich an, als ob du einen Witz gemacht hättest, und als ihr klar wird, daß du's ernst gemeint hast, lacht sie verlegen. "Ihr seid hier im Bezirk der Kuratoren."~ */
  IF ~~ THEN REPLY #27682 /* ~"Was kannst du mir über den Bezirk erzählen?" ~ */ GOTO 6
  IF ~~ THEN REPLY #27683 /* ~"Stimmt. Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27684 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27685 /* ~"Nun, der größte Teil des Bezirks, in dem ich mich meiner Pflichten wegen am meisten aufhalte, ist voll von Hallen der Aufzeichnungen und Verwaltungsgebäuden... dieser Teil allerdings nicht."~ */
  IF ~~ THEN REPLY #27686 /* ~"Deine Pflichten?"~ */ GOTO 10
  IF ~~ THEN REPLY #27687 /* ~"Was unterscheidet diesen Bereich vom übrigen Bezirk?"~ */ GOTO 7
  IF ~~ THEN REPLY #27688 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27689 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27690 /* ~"Die Städtische Festhalle natürlich. Und auch die Kunst- und Kuriositäten-Galerie..."~ */
  IF ~~ THEN REPLY #27691 /* ~"Erzähl weiter..."~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27692 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27693 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27694 /* ~"Andere interessante Anlaufstellen sind vielleicht das Haus des Advokaten, die Apotheke, das Bordell zum Befriedigen Intellektueller Lüste, die Katakomben unter dem Bezirk und der Schneider. Und der seltsame kleine Kuriositätenladen."~ */
  IF ~~ THEN REPLY #27695 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27696 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27697 /* ~"Ihr sucht nur einen vorübergehenden Job, oder? Ihr scheint nicht der Typ zu sein, der sich hier niederläßt..." Sie hält eine Sekunde lang inne und mustert dich. "Also: Ich würde es im Haus des Advokaten, in der Apotheke oder der Städtischen Festhalle versuchen. Da wird's bestimmt Handlangerarbeit geben."~ */
  IF ~~ THEN REPLY #27698 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27699 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27700 /* ~Sie nickt und rollt mit den Augen. "Meine Pflichten. Gegenüber meinem Arbeitgeber. Ich arbeite in einem der Verwaltungsgebäude hier im Bezirk."~ */
  IF ~~ THEN REPLY #27701 /* ~"Was machst du dort?"~ */ GOTO 11
  IF ~~ THEN REPLY #27702 /* ~"Worin unterscheidet sich dieser Bereich vom übrigen Bezirk?"~ */ GOTO 7
  IF ~~ THEN REPLY #27703 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27704 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27705 /* ~Sie schüttelt lächelnd den Kopf. "Bitte, fangt nicht schon wieder damit an, ja? Wo ich doch versuche, mich etwas zu entspannen."~ */
  IF ~~ THEN REPLY #27706 /* ~"Worin unterscheidet sich dieser Bereich vom übrigen Bezirk?"~ */ GOTO 7
  IF ~~ THEN REPLY #27707 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27708 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 19.2 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27709 /* ~"Ich sage Euch das Wenige, das ich weiß..."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27710 /* ~"Das Haus des Advokaten."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27711 /* ~"Das Haus des Advokaten."~ */ GOTO 14
  IF ~~ THEN REPLY #27712 /* ~"Die Apotheke."~ */ GOTO 16
  IF ~~ THEN REPLY #27713 /* ~"Den Kunstladen."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27714 /* ~"Das Bordell."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27715 /* ~"Das Bordell."~ */ GOTO 19
  IF ~~ THEN REPLY #27716 /* ~"Untersigil, das Untere Reich."~ */ GOTO 21
  IF ~~ THEN REPLY #27717 /* ~"Die Städtische Festhalle."~ */ GOTO 22
  IF ~~ THEN REPLY #27718 /* ~"Den Kuriositätenladen."~ */ GOTO 23
  IF ~~ THEN REPLY #27719 /* ~"Den Schneider."~ */ GOTO 24
  IF ~~ THEN REPLY #27720 /* ~"Vergiß es. Ich möchte dich was zu etwas anderem fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27721 /* ~"Keinen, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27722 /* ~"Advokaten helfen bei Rechtsstreitigkeiten weiter, setzen Rechtsdokumente auf und sind rechtliche Vertreter ihrer Mandanten. Der Advokat hier ganz in der Nähe, Jannis, hat einen sehr guten Ruf und ist sehr zuverlässig. Er hat sehr lange im Bezirk gewohnt und gearbeitet."~ */
  IF ~~ THEN REPLY #27723 /* ~"Wie gelange ich zum Haus von Jannis?"~ */ GOTO 26
  IF ~~ THEN REPLY #27724 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27725 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27726 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 26.1
  SAY #27727 /* ~"Advokaten helfen bei Rechtsstreitigkeiten weiter, setzen Rechtsdokumente auf und sind rechtliche Vertreter ihrer Mandanten."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 267
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27729 /* ~"Der Advokat hier ganz in der Nähe, Jannis, hat einen sehr guten Ruf und ist sehr zuverlässig. Er hat sehr lange im Bezirk gewohnt und gearbeitet."~ */
  IF ~~ THEN REPLY #27730 /* ~"Wie gelange ich zum Haus von Jannis?"~ */ GOTO 26
  IF ~~ THEN REPLY #27731 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27732 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27733 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 27.0
  SAY #27734 /* ~"In der Apotheke werden verschiedene Salben, Tränke, Kräuter und ähnliches Zeug verkauft." Sie runzelt kurz die Stirn. "Die Besitzer sind ein bißchen plemplem. Sie probieren ihre Medizin andauernd an sich selber aus. Sonst aber nette Leute."~ */
  IF ~~ THEN REPLY #27735 /* ~"Wie komme ich zur Apotheke?"~ */ GOTO 27
  IF ~~ THEN REPLY #27736 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27737 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27738 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.3 28.0
  SAY #27739 /* ~"Yvannas Kunst- und Kuriositäten-Galerie ist ein äußerst faszinierender Ort. Dort gibt's Kunstwerke, Antiquitäten und Artefakte aus allen Ebenen."
~ */
  IF ~~ THEN REPLY #27740 /* ~"Wie komme ich zum Kunstladen?"~ */ GOTO 28
  IF ~~ THEN REPLY #27741 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27742 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27743 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.4 29.0
  SAY #27744 /* ~"Ein Sinnsaten-Etablissement, das Herz und Sinne erfreut. Es gehört einer sehr kompetenten Sukkubus, die sich Grace, die Gefallene, nennt."~ */
  IF ~~ THEN REPLY #27745 /* ~"Sinnsate?"~ */ GOTO 36
  IF ~~ THEN REPLY #27746 /* ~"Wie komm ich zu dem Bordell?"~ */ GOTO 29
  IF ~~ THEN REPLY #27747 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27748 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27749 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.5 29.1
  SAY #27750 /* ~"Ein Sinnsaten-Etablissement, das Herz und Sinne erfreut. Es gehört einer sehr kompetenten Sukkubus." Sie nickt höflich Grace, der Gefallenen, zu.~ */
  IF ~~ THEN REPLY #27751 /* ~"Sinnsate?"~ */ GOTO 36
  IF ~~ THEN REPLY #27752 /* ~"Wie komm ich zu dem Bordell?"~ */ GOTO 29
  IF ~~ THEN REPLY #27753 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27754 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27755 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27756 /* ~[kein Text]~ */
  IF ~~ THEN REPLY #27757 /* ~[kein Text]~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6 30.0
  SAY #27758 /* ~In ihrem Gesicht zeichnet sich Besorgnis ab. "Ich finde es merkwürdig, daß die Eingänge zu diesem Ort hier noch nicht verriegelt worden sind. Das Untere Reich soll nur Ärger bringen und ist eine Gefahr für jeden, den es dorthin verschlägt."~ */
  IF ~~ THEN REPLY #27759 /* ~"Wie gelange ich nach da unten?"~ */ GOTO 30
  IF ~~ THEN REPLY #27760 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27761 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27762 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.7 31.0
  SAY #27763 /* ~"Eine der wundersamsten Einrichtungen in Sigil... es ist das Hauptquartier des Bunds der Sinnsaten und im ganzen Multiversum für seine Konzerte, Kunstausstellungen und Vorträge bekannt. Am faszinierendsten daran sind jedoch die Sinnsorien."~ */
  IF ~~ THEN REPLY #27764 /* ~"Sinnsaten?"~ */ GOTO 36
  IF ~~ THEN REPLY #27765 /* ~"Sinnsorien?"~ */ GOTO 38
  IF ~~ THEN REPLY #27766 /* ~"Wo ist die Festhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #27767 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27768 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27769 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.8 32.0
  SAY #27770 /* ~"Ich behaupte nicht, selbst dort gewesen zu sein, aber soweit ich weiß, gehört der Laden einer Importeurin... ein Halbscheusal, das ihre Waren aus den Unteren Ebenen bezieht."~ */
  IF ~~ THEN REPLY #27771 /* ~"Halbscheusal?"~ */ GOTO 35
  IF ~~ THEN REPLY #27772 /* ~"Untere Ebenen?"~ */ GOTO 34
  IF ~~ THEN REPLY #27773 /* ~"Wo liegt dieser Ort?"~ */ GOTO 32
  IF ~~ THEN REPLY #27774 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27775 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27776 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.9 33.0
  SAY #27777 /* ~"Gonkalves ist zwar ein ausgezeichneter Schneider, aber sehr jähzornig und schnell eingeschnappt. Ich muß Euch warnen. Er wird Euch wahrscheinlich nur nach Eurem Äußeren beurteilen und dann nicht Euer Freund sein wollen."~ */
  IF ~~ THEN REPLY #27778 /* ~"Wo finde ich den Laden von Gonkalve?"~ */ GOTO 33
  IF ~~ THEN REPLY #27779 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27780 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27781 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27782 /* ~"Oh? Wohin?"
~ */
  IF ~~ THEN REPLY #27783 /* ~"Das Haus des Advokaten."~ */ GOTO 26
  IF ~~ THEN REPLY #27784 /* ~"Die Apotheke."~ */ GOTO 27
  IF ~~ THEN REPLY #27785 /* ~"Den Kunstladen."~ */ GOTO 28
  IF ~~ THEN REPLY #27786 /* ~"Das Bordell."~ */ GOTO 29
  IF ~~ THEN REPLY #27787 /* ~"Untersigil, das Untere Reich."~ */ GOTO 30
  IF ~~ THEN REPLY #27788 /* ~"Die Städtische Festhalle."~ */ GOTO 31
  IF ~~ THEN REPLY #27789 /* ~"Den Kuriositätenladen."~ */ GOTO 32
  IF ~~ THEN REPLY #27790 /* ~"Den Schneider."~ */ GOTO 33
  IF ~~ THEN REPLY #27791 /* ~"Vergiß es. Ich möchte dich was zu etwas anderem fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27792 /* ~"Keinen, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27793 /* ~"Das Haus von Jannis liegt südlich vom Tor zum Unteren Bezirk, durch das Ihr wahrscheinlich reingekommen seid. Es steht auf der östlichen Seite der Straße."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27794 /* ~"Was kannst du mir über den Advokaten erzählen?"~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27795 /* ~"Was kannst du mir über den Advokaten erzählen?"~ */ GOTO 14
  IF ~~ THEN REPLY #27796 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27797 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27798 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk, durch das Ihr höchstwahrscheinlich hierher gekommen seid, nach Osten verläuft. Wenn die Straße sich nach Nordosten und Südosten gabelt, geht in südliche Richtung... Ihr findet das Haus östlich der Straße. Es liegt nach Süden und hat drei Fenster aus farbigem Glas."~ */
  IF ~~ THEN REPLY #27799 /* ~"Was kannst du mir über den Ort erzählen?"~ */ GOTO 16
  IF ~~ THEN REPLY #27800 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27801 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27802 /* ~"Folgt der Straße, die vom Tor zum Unteren Bezirk, durch das Ihr höchstwahrscheinlich hierher gekommen seid, nach Osten verläuft. Wenn die Straße sich nach Nordosten und Südosten gabelt, geht in südliche Richtung... Ihr findet das Haus westlich der Straße. Es liegt nach Süden und hat ein Dach, dessen Ziegel mit großen Steinen beschwert sind."~ */
  IF ~~ THEN REPLY #27803 /* ~"Was weißt du über den Ort?"~ */ GOTO 17
  IF ~~ THEN REPLY #27804 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27805 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 19.1 25.3
  SAY #27806 /* ~Sie runzelt demonstrativ die Stirn und schüttelt den Kopf. "Das ist gleich östlich des Tors zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Es ist ein großes, rundes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27807 /* ~"Was kannst du mir über das Bordell erzählen?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27808 /* ~"Was kannst du mir über das Bordell erzählen?"~ */ GOTO 19
  IF ~~ THEN REPLY #27809 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27810 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27811 /* ~Sie zuckt mit den Achseln. "Weiß ich nicht. Aber ich wäre auf der Hut. Man sagt, daß nichts aus dem Unteren Reich wieder nach oben kommt... auch nicht die, die es betreten."~ */
  IF ~~ THEN REPLY #27812 /* ~"Was kannst du mir noch darüber erzählen?"~ */ GOTO 21
  IF ~~ THEN REPLY #27813 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27814 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27815 /* ~"Die Festhalle ist leicht zu finden, mein Herr. Das ist ein Riesengebäude im nordöstlichen Teil dieser Gegend."~ */
  IF ~~ THEN REPLY #27816 /* ~"Was kannst du mir über die Festhalle erzählen?"~ */ GOTO 22
  IF ~~ THEN REPLY #27817 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27818 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27819 /* ~"'Liegt im Südosten dieser Gegend. Ein auffälliges Gebäude, am Ende einer breiten Treppe. Ich bin nie selbst dort gewesen... Ist mir nicht ganz geheuer."~ */
  IF ~~ THEN REPLY #27820 /* ~"Was weißt du über den Ort?"~ */ GOTO 23
  IF ~~ THEN REPLY #27821 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27822 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27823 /* ~"Der Laden des Schneiders liegt nordöstlich des Tors zum Unteren Bezirk - durch das Ihr höchstwahrscheinlich hierher gekommen seid. Es ist ein großes Gebäude, dessen Eingang auf der Südseite liegt."~ */
  IF ~~ THEN REPLY #27824 /* ~"Was kannst du mir über den Ort erzählen?"~ */ GOTO 24
  IF ~~ THEN REPLY #27825 /* ~"Danke. Ich würd dich gern noch was anderes fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27826 /* ~"Verstehe. Danke, daß du mir deine Zeit geopfert hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27827 /* ~Sie nickt, senkt ihre Stimme und flüstert. "Ihr wißt schon... Baator, der Abgrund und so. Schreckliche Orte."~ */
  IF ~~ THEN REPLY #27828 /* ~"Du hast gesagt, sie sei ein Halbscheusal?"~ */ GOTO 35
  IF ~~ THEN REPLY #27829 /* ~"Wo finde ich diesen Kuriositätenladen?"~ */ GOTO 32
  IF ~~ THEN REPLY #27830 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27831 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27832 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27833 /* ~"Zwar kein Tiefling, aber ein echtes Halbscheusal. Tochter eines Inkubus und einer sterblichen Frau, habe ich gehört. Aber ich gebe nichts auf Geschwätz, also laßt uns nicht weiter darüber sprechen."~ */
  IF ~~ THEN REPLY #27834 /* ~"Du hast gesagt, ihre Waren stammten aus den Unteren Ebenen?"~ */ GOTO 34
  IF ~~ THEN REPLY #27835 /* ~"Wo finde ich diesen Kuriositätenladen?"~ */ GOTO 32
  IF ~~ THEN REPLY #27836 /* ~"Ich wollte dich was zu einem anderen Ort fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #27837 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27838 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 19.0 22.0
  SAY #27839 /* ~"Ja. Ihr richtiger Name ist 'Gesellschaft der Empfindung'. Sie glauben, daß die wahre Natur des Multiversums nur durch direkte Erfahrung entdeckt werden kann..."~ */
  IF ~~ THEN REPLY #27840 /* ~"Verstehe. Erzähl weiter."~ */ GOTO 48
  IF ~~ THEN REPLY #27841 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27842 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27843 /* ~"Sie haben tatsächlich einen Weg gefunden, wie sie ihre Erfahrungen mit anderen teilen können, und zwar mit Hilfe der Sinnsorien."~ */
  IF ~~ THEN REPLY #27844 /* ~"Sinnsorien?"~ */ GOTO 38
  IF ~~ THEN REPLY #27845 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27846 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27847 /* ~"Die Sinnsaten können Erfahrungen in Steinen speichern und *anderen* damit die Möglichkeit geben, dieselben Erfahrungen zu machen. Die Sinnsaten ziehen durch die Ebenen und suchen in ihrem Innern nach Erfahrungen, die sie mit anderen teilen können...in ihren Sinnsorien ist praktisch alles gespeichert, was sie gefühlt oder wahrgenommen haben."~ */
  IF ~~ THEN REPLY #27848 /* ~"Wo befinden sich diese Sinnsorien?"~ */ GOTO 39
  IF ~~ THEN REPLY #27849 /* ~"Diese Erfahrungen... sind sie wie Erinnerungen?"~ */ GOTO 40
  IF ~~ THEN REPLY #27850 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27851 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27852 /* ~"In der Städtischen Festhalle. Dort gibt es Sinnsorien, die für die Öffentlichkeit und solche, die nur für Sinnsaten zugänglich sind. Man muß zwar Eintrittsgeld bezahlen, aber gemessen an den Erfahrungen ist es ein extrem billig."~ */
  IF ~~ THEN REPLY #27853 /* ~"Wo ist die Festhalle?"~ */ GOTO 31
  IF ~~ THEN REPLY #27854 /* ~"Diese Erfahrungen... sind sie wie Erinnerungen?"~ */ GOTO 40
  IF ~~ THEN REPLY #27855 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27856 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27857 /* ~"In gewisser *Weise* ja, aber wie sehr intensive... und nicht wie Erinnerungen, die man selbst gehabt hat, sondern die von anderen stammen, und die im Stein gespeichert sind."~ */
  IF ~~ THEN REPLY #27858 /* ~"Gespeichert? Verliert man seine Erinnerung oder Erfahrung, wenn sie in den Stein gesteckt wird?"~ */ GOTO 41
  IF ~~ THEN REPLY #27859 /* ~"Wo befinden sich diese Sinnsorien?"~ */ GOTO 39
  IF ~~ THEN REPLY #27860 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27861 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27862 /* ~"Nein..." Sie runzelt die Stirn. "Zumindest nicht soweit ich weiß. Ich glaube, daß der Stein die Sinneserfahrung *kopiert*. Aber Ihr könnt ja einen Sinnsaten fragen."~ */
  IF ~~ THEN REPLY #27863 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27864 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27865 /* ~"Der Name kommt mir bekannt vor... ist sie nicht eine Figur aus einem Buch? Die Böse in einem Roman? Ich kann mich nicht erinnern."~ */
  IF ~~ THEN REPLY #27866 /* ~"Vergiß es. Ich hätte da noch andere Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27867 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27868 /* ~"Da seid Ihr ja wieder." Sie lächelt dich über ihre Tasse hinweg an. "Noch mehr Fragen?"~ */
  IF ~~ THEN REPLY #27869 /* ~"Das stimmt."~ */ GOTO 4
  IF ~~ THEN REPLY #27870 /* ~"Eigentlich, nein... Ich geh nur gerade hier lang. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27871 /* ~Sie macht ein verdutztes Gesicht. "Wie bitte?"~ */
  IF ~~ THEN REPLY #27872 /* ~"Ich sagte: 'Ich bin tot!'" Tot, tot, la-la! Tot, tot, la-la..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27873 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27874 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27875 /* ~Die Frau macht ein sehr mißtrauisches Gesicht. "Äh, ja... nun ja. Ich muß jetzt gehen. Ich habe noch etwas Dringendes zu erledigen."~ */
  IF ~~ THEN REPLY #27876 /* ~"Warte! Ich hab' dir doch noch nicht gesagt, *warum* ich tot bin..."~ */ GOTO 46
  IF ~~ THEN REPLY #27877 /* ~"Einen Moment. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27878 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27879 /* ~Sie geht einen Schritt zurück. "Das interessiert mich nicht." Sie fängt an, sich umzusehen, als ob sie jemanden sucht, der ihr vielleicht zu Hilfe eilen könnte.~ */
  IF ~~ THEN REPLY #27880 /* ~"Weil ich zu viele Menschen in meinen vorherigen Leben getötet hab'."~ */ GOTO 47
  IF ~~ THEN REPLY #27881 /* ~"Macht ja nichts. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27882 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27883 /* ~Sie läßt ihre Tasse fallen und schreit: "Wachen! Wachen!"~ */
  IF ~~ THEN REPLY #27884 /* ~Greif sie an.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27885 /* ~Versuch zu verschwinden, bevor jemand kommt.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27886 /* ~"Sie verbringen ihr Leben damit, soviel wie möglich über das Multiversum zu erfahren. Sie reisen durch die Ebenen und in die Tiefen ihres eigenen Geistes und ihrer Gefühle. Aber sie gehen noch einen Schritt weiter..."
~ */
  IF ~~ THEN REPLY #27887 /* ~"Wie das?"~ */ GOTO 37
  IF ~~ THEN REPLY #27888 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27889 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 0.1
  SAY #27890 /* ~Ihre Augen werden etwas größer, als sie dich sieht. Sie lächelt beklommen. "Äh... seid ebenfalls gegr..." Plötzlich fällt ihr Blick auf Morte. "Oh! Was für ein süßer kleiner Mimir!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #27891 /* ~"Mimir?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 268
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27892 /* ~"Nicht wahr? Er liebt es, wenn man ihm die Oberseite seines Schädels kratzt."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27893 /* ~"Ich würd ihn nicht anfassen - er beißt."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 272
  IF ~~ THEN REPLY #27894 /* ~"Jaja. Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27895 /* ~"Stimmt etwas mit meinem Äußeren nicht?"~ */ GOTO 2
  IF ~~ THEN REPLY #27896 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #27897 /* ~Die Frau lächelt. "Wie niedlich! Und er spricht sogar von alleine!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 269
END

IF ~~ THEN BEGIN 51 // from: 53.0
  SAY #27899 /* ~Sie schüttelt den Kopf. "Nein, ich hab' jedenfalls noch keinen gesehen. Sie sind doch bloß Gegenstände, oder-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 271
END

IF ~~ THEN BEGIN 52 // from:
  SAY #27901 /* ~Die Frau zuckt mit den Achseln. "Das könnte gut sein."~ */
  IF ~~ THEN REPLY #27902 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27903 /* ~"Ich werd dann mal gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.1
  SAY #27904 /* ~"Ehrlich?" Sie lächelt weiter, aber schaut dich mißtrauisch an. "Ihr macht bestimmt nur Spaß, mein Herr! Das ist doch nur ein Mimir..."~ */
  IF ~~ THEN REPLY #27905 /* ~"Was meinst du damit? Mögen das nicht alle?"~ */ GOTO 51
  IF ~~ THEN REPLY #27906 /* ~"Nein, ich sag die Wahrheit. Probier's mal."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 54
  IF ~~ THEN REPLY #27907 /* ~"Beachte ihn gar nicht. Ich hätte da ein paar Fragen..."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #27908 /* ~Sie tätschelt Morte vorsichtig mit der Hand... Dieser schmiegt sich prompt an ihre Hand, grinst über das ganze Gesicht und zwinkert dir die ganze Zeit zu. Sie lacht zaghaft: "Wie seltsam!"~ */
  IF ~~ THEN REPLY #27909 /* ~"Ja... nun, ich hätte da ein paar Fragen..."~ */ GOTO 4
  IF ~~ THEN REPLY #27910 /* ~"Trifft das nicht auf alles zu? Leb wohl."~ */ EXIT
END
