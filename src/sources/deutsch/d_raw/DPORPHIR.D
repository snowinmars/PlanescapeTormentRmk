// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPORPHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPORPHIR~

IF ~  Global("Porphiron","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25992 /* ~Jeder Zentimeter Haut ist bei diesem Mann mit einem Netz aus schwarzen Linien bedeckt, fast so, als ob ein Künstler jede einzelne Falte in der Haut des Mannes mit einem Federkiel betonen wollte. Als Folge wirkt er selbst mit ausdruckslosem Gesicht, als ob er die Stirn runzelt.~ */
  IF ~~ THEN REPLY #25993 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Porphiron","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #25994 /* ~Laß den bebilderten Mann in Ruhe.~ */ EXIT
END

IF ~  GlobalGT("Porphiron","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26633 /* ~Du triffst auf Porphiron. Er steht immer noch grimmig auf der Straße und schenkt den Vorbeigehenden keine Beachtung. Das Liniennetz in seinem Gesicht ordnet sich zu einer Reihe von rechten Winkeln.~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26686 /* ~"Sei gegrüßt, Porphiron. Kann ich dir ein paar Fragen stellen?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26687 /* ~"Sei gegrüßt, Porphiron."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26688 /* ~"Sei gegrüßt, Porphiron. Kann ich dir ein paar Fragen stellen?"~ */ GOTO 3
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26689 /* ~"Dieser hier meint dich, Porphiron: Kann ich dir ein paar Fragen stellen?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26690 /* ~"Dieser hier meint dich, Porphiron."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26691 /* ~"Dieser hier meint dich, Porphiron: Kann ich dir ein paar Fragen stellen?"~ */ GOTO 3
  IF ~~ THEN REPLY #26692 /* ~Laß Porphiron in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.4
  SAY #26634 /* ~Als du ihn ansprichst, lösen sich die Winkel in Porphirons Gesicht in eine Reihe seltsamer Kurven auf. "Dieser hier möchte fragen: Hast du die Perlenkette, die gestohlen wurde?"~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26694 /* ~"Ich glaube schon. Ist es diese hier?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26697 /* ~Ich habe Porphirons Halskette von den Schlägern vor der Schwelenden Leiche zurückgeholt und sie ihm zurückgegeben.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26695 /* ~"Noch nicht... Wo ist sie dir doch gleich gestohlen worden?"~ */ GOTO 23
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26696 /* ~"Bis jetzt noch nicht. Ich suche weiter und komm dann wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 1.5
  SAY #26635 /* ~"Dieser hier wartet: Welche Frage willst du stellen?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26698 /* ~"Kannst du mich etwas über den Pfad des Kriegers lehren?"~ */ GOTO 35
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #26699 /* ~"Ich möchte meine jetzige Tätigkeit an den Nagel hängen und wieder zum Krieger werden."~ */ GOTO 32
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26700 /* ~"Kannst du mir sagen, ob ich für weiteren Unterricht bereit bin?"~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26701 /* ~"Kannst du mir sagen, ob ich für weiteren Unterricht bereit bin?"~ */ GOTO 53
  IF ~  ExtraProficiencyGT(Protagonist,0)
ProficiencyGT(Protagonist,FIST,0)
ProficiencyGT(Protagonist,DAGGER,0)
ProficiencyGT(Protagonist,HAMMER,0)
ProficiencyGT(Protagonist,AXE,0)
ProficiencyGT(Protagonist,CLUB,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26702 /* ~"Ich hab' an allen Waffen die Stufe des Geübten erreicht, Porphiron. Kannst du mir noch mehr beibringen?"~ */ GOTO 52
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26703 /* ~"Ich würd gern noch mehr über Waffen lernen."~ */ GOTO 42
  IF ~~ THEN REPLY #26704 /* ~"Im Augenblick hab' ich keine Fragen. Ich komm vielleicht später wieder."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26636 /* ~"Dieser hier hat einen Namen: Der hier heißt Porphiron." Die Stimme des Mannes klingt wie ein Gong. Als er spricht, bilden die Linien in seinem Gesicht eine Reihe von kugelförmigen Mustern. "Dieser hier möchte wissen: Warum sprichst du diesen hier an?"~ */
  IF ~~ THEN REPLY #26706 /* ~"Ich wollt' dir ein paar Fragen über die Stadt stellen."~ */ GOTO 5
  IF ~~ THEN REPLY #26707 /* ~"Vergiß es. Tut mir leid, daß ich dich gestört hab'."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 1.3 4.0
  SAY #26637 /* ~"Dieser hier will dich wissen lassen: Dieser hier kann deine Fragen nicht beantworten." Die Linien in seinem Gesicht winden sich, bilden Winkel und lösen sich dann in ein Durcheinander von Kritzeleien auf. "Dieser hier hat erst vor kurzem an diesem Ort der Mauern Fuß gefaßt."~ */
  IF ~~ THEN REPLY #26708 /* ~"Na gut. Äh, aber ich muß dich das hier unbedingt fragen: Warum bewegen sich diese Linien da... in deinem Gesicht?"~ */ GOTO 6
  IF ~~ THEN REPLY #26709 /* ~"Nun gut. Tut mir leid, daß ich dich gestört hab'. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26638 /* ~"Die Linien zeigen Ärger an: Fühlst du dich beleidigt?" Die Linien glätten sich und bilden weiche Kurven. "Das war nicht meine Absicht: Nimmst du die aufrichtigste Entschuldigung von diesem hier an?"~ */
  IF ~~ THEN REPLY #26710 /* ~"Ich bin nicht beleidigt... Warum bist du verärgert?"~ */ GOTO 7
  IF ~~ THEN REPLY #26712 /* ~"Nun gut. Danke, daß du Zeit für mich hattest. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26639 /* ~"Dieser hier erzählt von etwas, das vor kurzem geschehen ist: Wußtest du, daß dieser hier von Dreien geplagt wurde? Die drei haben ein Objekt von diesem hier verlangt. Dieser hier hatte Angst vor einem Angriff: Was tut dieser hier? Dieser hier rückt das Objekt heraus."~ */
  IF ~~ THEN REPLY #26713 /* ~"Nun, du hast zu recht Angst gehabt. Wenn sie zu dritt waren, dann hätten sie dich töten können, wenn du den Gegenstand nicht hergegeben hättest."~ */ GOTO 8
  IF ~~ THEN REPLY #26714 /* ~"Verstehe. Ich bedauere deinen Verlust. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26640 /* ~"Dieser hier wurde mißverstanden." Die Linien in seinem Gesicht bilden Winkel und lösen sich dann wieder zu weichen Kurven auf. "Dieser hier hatte keine Angst davor, getötet zu werden: Dieser hier hatte Angst, die Drei zu töten."~ */
  IF ~~ THEN REPLY #26715 /* ~"Nun... wenn du sie hättest töten können, warum hast du dich dann von ihnen ausrauben lassen?"~ */ GOTO 9
  IF ~~ THEN REPLY #26717 /* ~"Äh, das war sehr tapfer von dir. Und entgegenkommend. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26641 /* ~"Dieser hier beschreitet den Weg eines Kriegers: Viele Waffen haben diesen hier begleitet. Die Faust, die Klinge, die Stange, das Beil, der Hammer: Diese Geräte sind diesem hier alle vertraut."~ */
  IF ~~ THEN REPLY #26718 /* ~"Das ist keine Erklärung... Nochmal. Wenn du ein so erfahrener Krieger bist, warum läßt du dich dann von ihnen ausrauben?"~ */ GOTO 10
  IF ~~ THEN REPLY #26719 /* ~"Verstehe. Ich bedauere deinen Verlust. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26642 /* ~"Dieser hier darf nicht angreifen." Die Linien kräuseln sich in seinem Gesicht, während er spricht. "Wenn dieser hier die Drei aus Ärger geschlagen hätte: Das Gelübde der Gewaltlosigkeit wäre gebrochen worden."~ */
  IF ~~ THEN REPLY #26720 /* ~"Gelübde der Gewaltlosigkeit? Du bist Krieger und *Pazifist*?"~ */ GOTO 11
  IF ~~ THEN REPLY #26721 /* ~"Verstehe. Ich bedauere deinen Verlust. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26643 /* ~"Dieser hier ist mit deiner Sprache nicht vertraut: Was ist so ein 'Passifist?'"~ */
  IF ~~ THEN REPLY #26722 /* ~"Vergiß es. Warum hast du so viel trainiert, wenn es dir nicht erlaubt ist, einen anderen anzugreifen?"~ */ GOTO 12
  IF ~~ THEN REPLY #26723 /* ~"Spielt keine Rolle. Ich bedauere deinen Verlust. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26644 /* ~"Dieser hier gehört dem *Orden von Erit Agge* an: Wir warten auf die Letzten Tage, wenn alle zur Schlacht gerufen werden. Das Training und die Fähigkeiten von diesem hier: Sie müssen bis dahin geheim gehalten werden."~ */
  IF ~~ THEN REPLY #26724 /* ~"Und in der Zwischenzeit läßt du dich auf der Straße überfallen und ausrauben, ohne dich zu verteidigen?"~ */ GOTO 13
  IF ~~ THEN REPLY #26725 /* ~"Wenn das deine Überzeugung ist, dann hast du sie aufrechterhalten. Ich bedauere deinen Verlust. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26645 /* ~"Dieser hier möchte klarstellen: Der Gegenstand hat zwar einen gewissen Wert. Die Disziplin der *Erit Agge* ist von größerem Wert."~ */
  IF ~~ THEN REPLY #26727 /* ~"Wenn du schon nicht kämpfen willst, hast du denn dann die Möglichkeit, diese Diebe zu überreden, dir den gestohlenen Gegenstand wiederzugeben?" ~ */ GOTO 14
  IF ~~ THEN REPLY #26728 /* ~"Verstehe. Ich bedauere deinen Verlust. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #26646 /* ~"Dieser hier spricht die drei Diebe an: Was geschieht? Dem Bitten von diesem hier wird mit Verachtung begegnet. Die Drei geben den Gegenstand nicht wieder her."~ */
  IF ~~ THEN REPLY #26729 /* ~"Ich könnte mal versuchen, ob ich dir den Gegenstand zurückbeschaffen kann."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Porphiron_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #26730 /* ~"Ich könnte sie suchen, sie wie reudige Hunde verprügeln und dir zurückbringen, was sie dir gestohlen haben."~ */ GOTO 19
  IF ~~ THEN REPLY #26731 /* ~"Ich könnte den Gegenstand für dich zurückholen, wenn du mir meine Dienste bezahlen würdest."~ */ GOTO 15
  IF ~~ THEN REPLY #26732 /* ~"Verstehe. Ich bedauere deinen Verlust. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #26647 /* ~"Dieser hier bittet um Entschuldigung: Dieser hier hat nichts mehr, was ihm nicht schon genommen wurde."~ */
  IF ~~ THEN REPLY #26733 /* ~"Wie du meinst. Ich werd sie aber trotzdem töten."~ */ GOTO 19
  IF ~~ THEN REPLY #26734 /* ~"Du hast *nichts*?"~ */ GOTO 16
  IF ~~ THEN REPLY #26735 /* ~"Dann kann ich dir nicht helfen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #26648 /* ~"Dieser hier bittet nochmals um Entschuldigung: Würdest du einwilligen, unterrichtet zu werden?"~ */
  IF ~~ THEN REPLY #26736 /* ~"Unterrichtet? Worin?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Porphiron_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #26738 /* ~"Kein Interesse. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26649 /* ~"Viele Waffen haben diesen hier begleitet: Die Faust, die Klinge, der Knüppel, das Beil, der Hammer. All diese Geräte sind diesem hier vertraut: Willst du dich auch mit ihnen vertraut machen?"~ */
  IF ~~ THEN REPLY #26739 /* ~"Hmmmm. Unterricht im Umgang mit Waffen? Wenn's nichts kostet..."~ */ GOTO 18
  IF ~~ THEN REPLY #26740 /* ~"Kein Interesse. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26650 /* ~"Dieser hier nennt den Preis: Das gestohlene Objekt zurückbringen, nichts weiter."~ */
  IF ~~ THEN REPLY #26741 /* ~"In Ordnung. Ich mach's. Wie sieht der gestohlene Gegenstand aus?"~ */ GOTO 22
  IF ~~ THEN REPLY #26742 /* ~"Kein Interesse. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1 15.0
  SAY #26651 /* ~"Dieser hier muß fragen: Würdest du den Dreien Gewalt antun, die diesen hier beraubt haben?"~ */
  IF ~~ THEN REPLY #26743 /* ~"Nun, wenn sie nicht so schlau sind, ihn herauszurücken, wenn ich darum bitte, könnte das unangenehm für sie werden."~ */ GOTO 20
  IF ~~ THEN REPLY #26744 /* ~"Nicht, wenn ich es verhindern kann."~ */ GOTO 21
  IF ~~ THEN REPLY #26745 /* ~"Weißt du, ich glaube nicht, daß ich dir helfen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26652 /* ~Die Linien im Gesicht des Mannes bilden eine Reihe sich überlappender Ellipsen. "Wenn das die Botschaft ist, die sie verstehen: Dann kann die Botschaft so überbracht werden."~ */
  IF ~~ THEN REPLY #26747 /* ~"Also gut. Was ist das für ein Gegenstand, den du verloren hast?"~ */ GOTO 22
  IF ~~ THEN REPLY #26748 /* ~"Weißt du, ich glaube nicht, daß ich dir helfen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26653 /* ~"Dieser hier befürchtet: Eine andere Sprache als Gewalt wird nicht verstanden." Die Linien im Gesicht des Mannes bilden eine Reihe von Ellipsen. "Dieser hier hat nichts dagegen, wenn du es versuchst."~ */
  IF ~~ THEN REPLY #26749 /* ~"Also gut. Was ist das für ein Gegenstand, den du verloren hast?"~ */ GOTO 22
  IF ~~ THEN REPLY #26751 /* ~"Weißt du, ich glaube nicht, daß ich dir helfen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0 20.0 21.0
  SAY #26654 /* ~"Das Objekt sieht so aus: Eine Kette aus schwarzen und roten Gebetsperlen, die um den Hals getragen wird. Der Wert dieser Perlen wird nicht in Kupfer gemessen. Der Wert dieser Perlen wird in Vertrauen gemessen."~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26752 /* ~"Einen Moment. Ich glaub, ich hab' die Halskette schon, die du suchst. Ist sie das?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26756 /* ~Beim Schlendern durch den Stock bin ich einem Mann mit zahlreichen sich verändernden Linien auf der Haut begegnet. Er behauptet, daß ihm eine Halskette seines "Ordens" ... Erit-Agge, glaube ich ... von drei Schlägern gestohlen wurde, die in Schwarz und Rot gekleidet waren, in der Nähe einer "Bar, die innen unter Feuer steht". Wie es sich so ergibt, hatte ich den drei Schlägern die Halskette schon abgenommen, also konnte ich sie ihm sofort zurückgeben.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26754 /* ~"Also gut. Ich versuche, diese Halskette aufzutreiben. Weißt du, wo diese 'drei' Schläger stecken könnten?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 2.1 22.1
  SAY #26655 /* ~"Dieser hier weiß, wo die bösen Worte ausgetauscht und der Gegenstand verlorenging: In der Bar, die innen brennt. Die Drei waren vor diesem Ort: Schwarz und rot gekleidet."~ */
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #26757 /* ~"Drei rot und schwarz gekleidete Räuber vor einer Bar, die innen brennt? Das dürfte nicht allzu schwer zu finden sein. Leb wohl."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26760 /* ~Beim Schlendern durch den Stock bin ich einem Mann mit zahlreichen sich verändernden Linien auf der Haut begegnet. Er behauptet, daß ihm eine Halskette seines "Ordens" ... Erit-Agge, glaube ich ... von drei Schlägern gestohlen wurde, die in Schwarz und Rot gekleidet waren, in der Nähe einer Bar, die innen unter Feuer steht. Ich werd' mal sehen, ob ich den Ort finden und das Ding zurückbekommen kann.~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #26758 /* ~"Drei rot und schwarz gekleidete Räuber vor der Bar Zur Schwelenden Leiche? Die find' ich schon. Leb wohl."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26759 /* ~Beim Schlendern durch den Stock bin ich einem Mann mit zahlreichen sich verändernden Linien auf der Haut begegnet. Er behauptet, daß ihm eine Halskette seines "Ordens" ... Erit-Agge, glaube ich ... von drei Schlägern gestohlen wurde, die in Schwarz und Rot gekleidet waren, vor der Schwelenden Leiche. Ich werd' mal sehen, ob ich das Ding zurückbekommen kann.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.0 22.0
  SAY #26656 /* ~"Dieser hier sieht, was du da hältst: Das sind die Perlen, die einst gefehlt haben." Er nimmt sie dir ab... Du bemerkst, daß seine Hände das gleiche Linienmuster aufweisen wie sein Gesicht. "Dieser hier hat eine Frage: Wie hast du die Perlen von den Dreien bekommen?"~ */
  IF ~  Dead("ThugP1")
~ THEN REPLY #26761 /* ~"Ich hab' sie getötet und die Perlen mitgenommen."~ */ GOTO 25
  IF ~  Global("Porphiron_Necklace","GLOBAL",0)
!Dead("ThugP1")
~ THEN REPLY #26762 /* ~"Ich hab' sie gestohlen."~ */ GOTO 26
  IF ~  Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26763 /* ~"Ich hab' sie gekauft."~ */ GOTO 28
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26764 /* ~"Ich hab' ihnen ein paar harmlose Lügen aufgetischt, und dann waren sie froh, mir die Perlen zurückgeben zu können."~ */ GOTO 27
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26765 /* ~"Ich hab' sie davon überzeugt, daß es für sie das Beste ist, die Halskette zurückzugeben."~ */ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",1)
!Global("Porphiron_Necklace","GLOBAL",1)
~ THEN REPLY #26766 /* ~Lüge: "Äh... Ich hab' sie ihnen abgeschwatzt. Sie waren froh, mir die Perlen zurückgeben zu können."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26767 /* ~Lüge: "Äh... Ich hab' sie ihnen abgekauft. Sie haben sich gefreut, um die Perlen zu feilschen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1 26.2 27.1 27.2 28.1 28.2
  SAY #26657 /* ~"Dieser hier ist froh: Die Botschaft der Gewalt wurde überbracht. Dieser hier zeugt dafür: Viele Worte des Dankes, ja?"~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26768 /* ~"Ich habe zu danken. Ich hab' da allerdings noch eine Frage: Wenn du an keinem Kampf teilnehmen darfst, wie hast du dich dann zum Krieger ausbilden lassen können?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26769 /* ~"Wie sieht's mit dem Unterricht im Umgang mit Waffen aus, den du mir versprochen hast?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #26658 /* ~"Dieser hier weiß: Einer der mit Täuschung kämpft, trägt einen Namen im Orden *Erit Agge*." Porphirons Gesicht zerfällt wieder in Winkel. "Diese werden Täuscher genannt. Das ist ein Pfad ohne Disziplin und ohne Ehre."~ */
  IF ~~ THEN REPLY #26770 /* ~"Wenn du ein echter Krieger wärst, würdest du lernen, JEDE dir zur Verfügung stehende Waffe zu verwenden."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26771 /* ~Wahrheit: "Oh, ich hab' die Diebe trotzdem getötet."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26772 /* ~Lüge: "Oh, ich hab' die Diebe trotzdem getötet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 24.3 24.4 24.5
  SAY #26659 /* ~"Dieser hier weiß: Einer, der mit Worten kämpft, trägt einen Namen im Orden von *Erit Agge*." Porphirons Gesicht zerfällt wieder in Winkel. "Diese werden Diplomaten genannt. Das ist ein Pfad ohne Disziplin und ohne Ehre."~ */
  IF ~~ THEN REPLY #26773 /* ~"Wenn du ein echter Krieger wärst, würdest du lernen, JEDE dir zur Verfügung stehende Waffe zu verwenden."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26774 /* ~Wahrheit: "Oh, ich hab' die Diebe trotzdem getötet."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26775 /* ~Lüge: "Oh, ich hab' die Diebe trotzdem getötet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 24.2 24.6
  SAY #26660 /* ~"Dieser hier weiß: Einer, der mit Münzen kämpft, trägt einen Namen im Orden von *Erit Agge*." Porphirons Gesicht zerfällt wieder in Winkel. "Diese werden Kaufleute genannt. Das ist ein Pfad ohne Disziplin und ohne Ehre."~ */
  IF ~~ THEN REPLY #26776 /* ~"Wenn du ein echter Krieger wärst, würdest du lernen, JEDE dir zur Verfügung stehende Waffe zu verwenden."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26777 /* ~Wahrheit: "Oh, ich hab' die Diebe trotzdem getötet."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26778 /* ~Lüge: "Oh, ich hab' die Diebe trotzdem getötet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #26661 /* ~"Dieser hier überbringt Entschuldigungen: Dieser hier wollte nicht beleidigend sein." Die Winkel in Porphirons Gesicht werden extrem scharf und gehen dann allmählich in Wellen über. "Der hier zeugt: Viele Worte des Dankes für deine Dienste, ja?"~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26779 /* ~"Gern geschehen... Ich glaub, ich hab' da noch eine Frage: Wenn du an keinem Kampf teilnehmen darfst, wie hast du dich dann zum Krieger ausbilden lassen können?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26780 /* ~"Hmmm. Wie sieht's mit dem Unterricht im Umgang mit Waffen aus, den du mir versprochen hast?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.0 29.0
  SAY #26662 /* ~"Dieser hier stellt klar: *Erit Agge* kann mit einem trainieren, wenn es keinen Groll zwischen ihnen gibt."~ */
  IF ~~ THEN REPLY #26781 /* ~"Verstehe. Könntest du mich lehren, wie man diese Waffen benutzt?"~ */ GOTO 31
  IF ~~ THEN REPLY #26782 /* ~"Ich war nur neugierig. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.1 29.1 30.0
  SAY #26663 /* ~"Dieser hier könnte dich unterrichten, ja. Aber dieser hier warnt dich: Mit dem Wissen über die Gewalt kommt die Versuchung, sie einzusetzen."~ */
  IF ~~ THEN REPLY #26783 /* ~"Das hoffe ich doch."~ */ GOTO 32
  IF ~~ THEN REPLY #26784 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.1 31.0
  SAY #26664 /* ~"Dieser hier spricht: Bist du gewillt deine frühere Tätigkeit hinter dir zu lassen? Der Pfad des Kriegers kann nicht mit einem unkonzentrierten Geist beschritten werden."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26785 /* ~"Kämpfen ist zur Zeit meine einzige Tätigkeit. Ich würde gern den Pfad des Kriegers beschreiten."~ */ GOTO 35
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #26786 /* ~"Ja. Ich möchte die Kunst des Zauberkundigen aufgeben und mich an Waffen ausbilden lassen."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #26787 /* ~"Ich will nicht länger ein Dieb sein... Ich möchte zu den Kriegern gehören."~ */ GOTO 33
  IF ~~ THEN REPLY #26788 /* ~"Nein, jetzt noch nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1 32.2
  SAY #26665 /* ~"Dieser hier hat dich gehört: Du bist bereit, den Pfad zu beschreiten. Dieser hier fordert dich auf, zuzuhören..."~ */
  IF ~~ THEN REPLY #26790 /* ~"Also gut...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #26666 /* ~"Du folgst jetzt dem Pfad des Kriegers. Möchtest du mehr über diesen Weg erfahren?"~ */
  IF ~~ THEN REPLY #26791 /* ~"Ja."~ */ GOTO 35
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26792 /* ~"Ich bin schon vertraut mit ihnen. Was kannst du mir über die Waffen beibringen?"~ */ GOTO 42
  IF ~~ THEN REPLY #26794 /* ~"Im Augenglick nicht...Ich wollte mich bloß umorientieren. Danke, Porphiron."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.0 32.0 34.0 42.10 51.0
  SAY #26667 /* ~"Dieser hier wird dich unterrichten." Die Linien in seinem Gesicht bilden Dreiecke. "Diese Dinge sind die Pfeiler deines Unterrichts: Konzentration, Erfahrung, Können."~ */
  IF ~~ THEN REPLY #26795 /* ~"Das kapier ich nicht. Kannst du mir das erklären?"~ */ JOURNAL #26798 /* ~Porphiron sprach davon, mich in der Kunst des Kriegers zu schulen. Er sagte, daß ich mich ganz dem Beruf des Kriegers und keinem anderen hingeben muß, wenn ich mehr über das Kämpfen lernen will. Wenn ich den Beruf eines Zauberkundigen, Diebes oder einen anderen hätte, müßte ich ihn aufgeben, um mehr über Waffen und das Kämpfen zu lernen. ~ */ GOTO 36
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26796 /* ~"Ich bin mit diesen Ideen schon vertraut. Was kannst du mir über die Waffen sagen?"~ */ GOTO 42
  IF ~~ THEN REPLY #26797 /* ~"Wenn ich's mir recht überlege, komm' ich wieder, wenn ich bereit für den Unterricht bin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26668 /* ~"Dieser hier wird zuerst über Konzentration sprechen: Damit das Gelernte sich verwurzeln kann, brauchst du Konzentration. Du mußt dich festlegen, den Pfad des Kriegers zu beschreiten. Krieger zu sein ist dein Beruf, nichts anderes."~ */
  IF ~~ THEN REPLY #26799 /* ~"Verstanden. Ich kann nur dann ein Kämpfer werden, wenn ich etwas über Waffen lernen will. Wie geht's weiter?"~ */ JOURNAL #26803 /* ~Porphiron sagt, daß das, was ein Krieger zunächst erlernen kann, begrenzt ist, je nach der Stufe und dem Geschick des Kriegers. Er hat mich gedrängt, wiederzukommen, wenn ich mehr Erfahrungen gesammelt habe. ~ */ GOTO 37
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26800 /* ~"Ich bin mit diesen Ideen schon vertraut. Was kannst du mir über die Waffen sagen?"~ */ GOTO 42
  IF ~~ THEN REPLY #26801 /* ~"Wenn ich's mir recht überlege, komm' ich wieder, wenn ich bereit für den Unterricht bin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26669 /* ~"Dieser hier wird zweitens über Erfahrung sprechen: Echtes Wissen über den Kampf erlangt man nur durch Erfahrung. Man kann nur eine begrenzte Menge an Wissen über den Umgang mit Waffen aufnehmen. Wenn du eine neue Stufe in der Kunst des Kriegers erreichst: Möglicherweise bist du dann für einen neuen Unterricht bereit?"~ */
  IF ~  Global("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26804 /* ~"Verstanden. Ich kann am Anfang nur eine begrenzte Menge lernen, aber ich kann mehr lernen, wenn ich eine höhere Stufe erreiche. Wie geht's weiter?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26805 /* ~"Verstanden. Ich kann am Anfang nur eine begrenzte Menge lernen, aber ich kann mehr lernen, wenn ich eine höhere Stufe erreiche. Wie geht's weiter?"~ */ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26806 /* ~"Ich bin mit diesen Ideen schon vertraut. Was kannst du mir über die Waffen sagen?"~ */ GOTO 42
  IF ~~ THEN REPLY #26807 /* ~"Wenn ich's mir recht überlege, komm' ich wieder, wenn ich bereit für den Unterricht bin. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #26670 /* ~"Dieser hier wird drittens über Können sprechen: Man kann nur eine bestimmte Menge über eine Waffe lernen. Dieser hier möchte hinzufügen: Dieser hier kann nur eine bestimmte Menge an Wissen vermitteln. Für die Kenntnis der Waffe gibt es drei Stufen: den Unwissenden, den Geübten und den Spezialisten. Dazwischen gibt es weitere Stufen, auf denen der Schüler seinen vorherigen Kenntnisstand überschritten, jedoch den nächsten Kenntnisstand noch nicht ganz erreicht hat."~ */
  IF ~~ THEN REPLY #26808 /* ~"Was sind das für Stufen?"~ */ GOTO 39
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26809 /* ~"Ich beherrsche bereits die Grundlagen. Was kannst du mir über die Waffen beibringen?"~ */ GOTO 42
  IF ~~ THEN REPLY #26810 /* ~"Ich hab' vorerst genug gehört... Ich komm wieder, wenn ich Unterricht brauche."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26671 /* ~"Die Stufe des Unwissenden ist die: Wenn man die Waffe nicht kennt, die man verwendet. Der Angriff wird plump ausgeführt. Der zugefügte Schaden ist weitaus geringer als das Potential der Waffe."~ */
  IF ~~ THEN REPLY #26811 /* ~"Das hört sich nach mir an, als ich auf der Totenbank in der Leichenhalle aufgewacht bin... erzähl weiter. Was ist die Stufe des Geübten?"~ */ GOTO 40
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26812 /* ~"Ich beherrsche bereits die Grundlagen. Was kannst du mir über die Waffen beibringen?"~ */ GOTO 42
  IF ~~ THEN REPLY #26813 /* ~"Ich hab' vorerst genug gehört... Ich komm wieder, wenn ich Unterricht brauche."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26672 /* ~"Die Stufe des Geübten ist die: Wenn jemand den Umgang mit einer Waffe gelernt hat, sagt man, daß er in ihrem Gebrauch *geübt* ist. Seine Angriffe sind nicht länger plump: Sie werden schnell und sicher ausgeführt."~ */
  IF ~~ THEN REPLY #26814 /* ~"Und die Stufe des Spezialisten?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",2)
~ JOURNAL #26817 /* ~Porphiron hat gesagt, daß es drei Fertigkeitsstufen für jede Waffe gibt. 

Zunächst ist da die Stufe des Unwissenden, auf der der Angreifer die Waffe zu seinem Nachteil nutzt. Seine Angriffe sine unbeholfen, ungezielt und weniger schädigend als die eines geschulten Kriegers. Auf dieser Stufe habe ich offensichtlich angefangen, als ich in der Leichenhalle aufgewacht bin. Ich muß trainieren, um besser im Umgang mit den Waffen dieser Welt zu werden.

Die nächste Stufe ist die Stufe des Geübten, die der Krieger nach der Schulung im Umgang mit einer Waffe erlangt. Seine Angriffe sind nicht mehr durch seine mangelnde Beherrschung der Waffe behindert, und er führt seine Angriffe schneller und gezielter aus. 

Die höchste Stufe ist die des Spezialisten. Auf dieser Stufe ist der Krieger im Umgang mit der Waffe nicht nur geschult, sondern er hat sie zu einer Erweiterung seines Willens gemacht. Seine Angriffe mit der Waffe, in deren Umgang er geschult ist, sind schneller, und er fügt mehr Schaden zu. 

Obwohl man die Stufe des Geübten mit einer beliebigen Anzahl von Waffen erlangen kann, sagt Porphiron, daß man sich im Leben nur auf eine einzige Waffe spezialisieren kann. Er empfahl mir also, weise zu wählen, wenn es an der Zeit sei, von einem Meister zu lernen.
~ */ GOTO 41
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26815 /* ~"Ich beherrsche bereits die Grundlagen. Was kannst du mir über die Waffen beibringen?"~ */ GOTO 42
  IF ~~ THEN REPLY #26816 /* ~"Ich hab' vorerst genug gehört... Ich komm wieder, wenn ich Unterricht brauche."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26673 /* ~"Die Stufe des Spezialisten ist die: Wenn einer mehr als nur geübt ist, wird er zu einem *Spezialisten* im Umgang mit der Waffe. Die Waffe ist nicht länger nur Werkzeug, sondern eine Erweiterung des Willens."~ */
  IF ~~ THEN REPLY #26818 /* ~"Gut, ich verstehe. Was kannst du mir über Waffen beibringen?"~ */ GOTO 42
  IF ~~ THEN REPLY #26819 /* ~"Ich hab' jetzt genug gehört. Ich komm vielleicht wieder. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 3.5 34.1 35.1 36.1 37.2 38.1 39.1 40.1 41.0 43.2 44.2 45.2 46.2 47.2 49.0 50.0 53.0
  SAY #26674 /* ~"Dieser hier wurde im Gebrauch der Faust, der Klinge, des Knüppels, des Beils und des Hammers geschult: An welcher Waffe willst du geschult werden?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26820 /* ~"Ich möchte was über den Faustkampf wissen."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26821 /* ~"Ich möchte was über den Faustkampf wissen."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26822 /* ~"Ich möchte was über den Kampf mit dem Dolch lernen."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26823 /* ~"Ich möchte was über den Kampf mit dem Dolch lernen."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26824 /* ~"Ich möchte was über den Kampf mit Keulen lernen."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26825 /* ~"Ich möchte was über den Kampf mit Keulen lernen."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26826 /* ~"Ich möchte was über den Kampf mit Äxten lernen."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26827 /* ~"Ich möchte was über den Kampf mit Äxten lernen."~ */ GOTO 46
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26828 /* ~"Ich möchte was über den Kampf mit Hämmern lernen."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26829 /* ~"Ich möchte was über den Kampf mit Hämmern lernen."~ */ GOTO 47
  IF ~~ THEN REPLY #26830 /* ~"Kannst du mir noch mal was über den Pfad des Kriegers erzählen?"~ */ GOTO 35
  IF ~~ THEN REPLY #26831 /* ~"Heute bitte keinen Unterricht mehr. Ich komm wieder, wenn ich mehr lernen möchte."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #26675 /* ~"Einer, der die Faust einsetzt: Sie versetzt schnelle Schläge. Sie zerschmettert dem Gegner die Knochen. Es gibt noch andere Waffen: schwere Panzerhandschuhe, Stoßdolche oder auch Fechthandschuhe. Mit diesen kannst du jemandem Schaden durch Zerschmettern, Stich oder Hieb zufügen. Dein Wissen ist begrenzt. Möchtest du einen Teil deines Talents darauf verwenden, die Stufe eines Geübten mit dieser Waffe zu erreichen?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,2)
~ THEN REPLY #26832 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26836 /* ~Mit Porphirons Hilfe ... und viele blaue Flecken später ... habe ich die Stufe des Geübten im Faustkampf erreicht.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,FIST,1)
~ THEN REPLY #26833 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #24443 /* ~Porphiron sagte, daß er mir nichts mehr über den Faustkampf beibringen könne. Er sagte, ich müsse einen Waffenmeister finden, damit ich mich im Faustkampf spezialisieren könnte.~ */ GOTO 50
  IF ~~ THEN REPLY #26834 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 42
  IF ~~ THEN REPLY #26835 /* ~"Nein, ich glaub nicht, daß ich heute unterrichtet werden will. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.3
  SAY #26676 /* ~"Einer, der den Dolch einsetzt: Er versetzt schnelle Schläge. Durch ihn kann dem Gegner ein Hieb wie mit einer Klaue oder ein Stich wie mit einer Nadel zugefügt werden. Der zugefügte Schaden richtet sich nach der Art des Dolches. Willst du einen Teil deines Talents darauf verwenden, die Stufe eines Geübten an dieser Waffe zu erreichen?"
~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,2)
~ THEN REPLY #26837 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26841 /* ~Mit Porphirons Hilfe ...und viele Narben später ... habe ich die Stufe des Geübten im Kampf mit dem Dolch erreicht. Als Porphiron erst einmal entdeckt hatte, daß Schnittwunden bei mir schnell heilen, verschwendete er keine Zeit mehr und verwendete mich als Schneidbrett.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,DAGGER,1)
~ THEN REPLY #26838 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26842 /* ~Porphiron hat gesagt, daß er mir nichts mehr über Dolche beibringen kann. Er meinte, ich müsse einen Waffenmeister finden, wenn ich mich auf Dolche spezialisieren wolle. ~ */ GOTO 50
  IF ~~ THEN REPLY #26839 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 42
  IF ~~ THEN REPLY #26840 /* ~"Nein, ich glaub nicht, daß ich heute unterrichtet werden will. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #26677 /* ~"Einer, der die Keule einsetzt: Sie ist nicht so schnell wie die Faust oder der Dolch, aber der durch sie zugefügte Schaden ist größer. Es zerschmettert den Körper des Gegners mit der Wucht eines herabstürzenden Felsbrockens. Willst du einen Teil deines Talents darauf verwenden, die Stufe eines Geübten an dieser Waffe zu erreichen?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,2)
~ THEN REPLY #26843 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26850 /* ~Mit Porphirons Hilfe ... und viele blaue Flecken später ... habe ich die Stufe des Geübten im Umgang mit Keulen erreicht.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,CLUB,1)
~ THEN REPLY #26847 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26851 /* ~Porphiron hat gesagt, daß er mir nichts mehr über Keulen beibringen kann. Er meinte, ich müsse einen Waffenmeister finden, wenn ich mich auf Keulen spezialisieren wolle.~ */ GOTO 50
  IF ~~ THEN REPLY #26848 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 42
  IF ~~ THEN REPLY #26849 /* ~"Nein, ich glaub nicht, daß ich heute unterrichtet werden will. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 42.7
  SAY #26678 /* ~"Einer, der die Axt einsetzt: Sie ist nicht so schnell wie die Keule, aber sie richtet größeren Schaden an. Sie trifft wie eine riesige Pranke auf den Körper des Gegners. Willst du einen Teil deines Talents darauf verwenden, die Stufe eines Geübten an dieser Waffe zu erreichen?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,2)
~ THEN REPLY #26852 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26856 /* ~Mit Porphirons Hilfe ...und viele Narben später ... habe ich die Stufe des Geübten im Kampf mit der Axt erreicht. Als Porphiron erst einmal entdeckt hatte, daß selbst die schlimmsten Schnittwunden bei mir schnell heilen, verschwendete er keine Zeit mehr und versuchte, Brennholz aus mir zu machen.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,AXE,1)
~ THEN REPLY #26853 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26857 /* ~Porphiron hat gesagt, daß er mir nichts mehr über Äxte beibringen kann. Er meinte, ich müsse einen Waffenmeister finden, wenn ich mich auf Äxte spezialisieren wolle.~ */ GOTO 50
  IF ~~ THEN REPLY #26854 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 42
  IF ~~ THEN REPLY #26855 /* ~"Nein, ich glaub nicht, daß ich heute unterrichtet werden will. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.9
  SAY #26679 /* ~"Einer, der den Hammer einsetzt: Er ist nicht so schnell wie die Keule, aber er richtet größeren Schaden an. Der Körper des Gegners wird wie durch der Wucht eines herabstürzenden Felsbrockens zerschmettert. Willst du einen Teil deines Talents darauf verwenden, die Stufe eines Geübten an dieser Waffe zu erreichen?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,2)
~ THEN REPLY #26858 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26862 /* ~Mit Porphirons Hilfe ... und viele blaue Flecken später ... habe ich die Stufe des Geübten im Umgang mit Hämmern erreicht. Ich glaube allerdings, daß es noch ein wenig dauern wird, bis sich das Dröhnen in meinem Kopf legt. ~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,HAMMER,1)
~ THEN REPLY #26859 /* ~"Ja, ich würde gern wissen, wie man diese Waffe benutzt."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26863 /* ~Porphiron hat gesagt, daß er mir nichts mehr über Hämmer beibringen kann. Er meinte, ich müsse einen Waffenmeister finden, wenn ich mich auf Hämmer spezialisieren wolle.~ */ GOTO 50
  IF ~~ THEN REPLY #26860 /* ~"Nein... An welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 42
  IF ~~ THEN REPLY #26861 /* ~"Nein, ich glaub nicht, daß ich heute unterrichtet werden will. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0 44.0 45.0 46.0 47.0
  SAY #26680 /* ~"Dieser hier wird dich anleiten: Stell dich als erstes so hin -"~ */
  IF ~~ THEN REPLY #26864 /* ~"Ja..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26681 /* ~"Dieser hier beglückwünscht dich: Das Wissen wird von dir schnell aufgenommen. Du lernst gut."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26865 /* ~"Danke. Ich würd gern was über andere Waffen lernen, wenn du mich unterrichten kannst."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26866 /* ~"Danke. Ich würd gern was über andere Waffen lernen, wenn du mich unterrichten kannst."~ */ GOTO 51
  IF ~~ THEN REPLY #26867 /* ~"Danke. Das reicht für heute."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 43.1 44.1 45.1 46.1 47.1
  SAY #26682 /* ~"Dieser hier kann dir nichts mehr beibringen: Weißt du, daß du bereits die Stufe des Geübten an dieser Waffe erreicht hast? Dieser hier kann dir nur noch einen letzten Tip geben: Finde einen Meister, der dich mehr lehren kann, wenn du wirklich noch mehr lernen kannst. Widme dich weiter dem Pfad des Kriegers, und es wird lange dauern, bis du an die Grenzen des Wissens stößt."~ */
  IF ~~ THEN REPLY #26868 /* ~"Gut. Im Umgang mit welchen anderen Waffen kannst du mich unterrichten?"~ */ GOTO 42
  IF ~~ THEN REPLY #26869 /* ~"Dann versuch ich, einen zu finden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 3.2 42.0 42.2 42.4 42.6 42.8 49.1
  SAY #26683 /* ~"Dieser hier sieht, daß dein Kopf schon bis zum Rand mit Wissen über Waffen gefüllt ist. Kommst du wieder zu mir, wenn du eine neue Stufe erreicht hast? Dann wird dich dieser hier den Gebrauch von Waffen lehren."~ */
  IF ~~ THEN REPLY #26870 /* ~"Wenn du mir im Umgang mit Waffen nichts weiter beibringen kannst, dann kannst du mich vielleicht was über den Pfad des Kriegers lehren?"~ */ JOURNAL #26872 /* ~Porphiron hat gesagt, daß er mir nichts mehr über Waffen beibringen kann und daß ich bereits die Grenze der Waffenfertigkeit für meine Stufe erreicht habe. Er sagte, ich solle wiederkommen, wenn ich eine neue Stufe in der Waffenkunst erreicht hab. Dann könne er mir vielleicht noch mehr beibringen.~ */ GOTO 35
  IF ~~ THEN REPLY #26871 /* ~"Also gut. Ich komm wieder, wenn ich eine höhere Stufe in der Waffenkunst erreicht hab'."~ */ JOURNAL #26872 /* ~Porphiron hat gesagt, daß er mir nichts mehr über Waffen beibringen kann und daß ich bereits die Grenze der Waffenfertigkeit für meine Stufe erreicht habe. Er sagte, ich solle wiederkommen, wenn ich eine neue Stufe in der Waffenkunst erreicht hab. Dann könne er mir vielleicht noch mehr beibringen.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 3.4
  SAY #26684 /* ~"Dieser hier kann dir nur noch eine letzte Lektion erteilen: Finde einen Meister, der dich mehr lehren kann."~ */
  IF ~~ THEN REPLY #26873 /* ~"Dann versuch ich, einen zu finden. Leb wohl."~ */ JOURNAL #26875 /* ~Porphiron hat gesagt, daß er mir nichts mehr über Waffen beibringen kann. Er meinte, ich müsse einen Waffenmeister finden, wenn ich mich auf eine Waffe spezialisieren wolle.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.3
  SAY #26685 /* ~"Dieser hier sieht, daß dein Geist bereit ist, mehr zu lernen: An welchen Waffen willst du ein Geübter werden?"~ */
  IF ~~ THEN REPLY #26876 /* ~"An welchen kannst du mich unterrichten?"~ */ GOTO 42
  IF ~~ THEN REPLY #26877 /* ~"Heute an keinen, danke. Vielleicht später."~ */ EXIT
END
