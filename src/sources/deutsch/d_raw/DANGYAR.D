// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANGYAR~

IF ~  Global("Angyar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3007 /* ~Dieser Mann sieht aus... als ob er von einem Geist verfolgt wird. Seine Augenlider hängen schlaff herunter, als hätte er schlecht geschlafen, und seine Haare sind lang und ungekämmt. Sein Bart hängt voller abgestorbener Hautfetzen und alter Speisereste. Er scheint dich nicht zu bemerken, als du dich ihm näherst.~ */
  IF ~~ THEN REPLY #3008 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11701 /* ~Überlaß den Mann seinen Gedanken.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11671 /* ~Beim Klang deiner Stimme blickt der Mann auf. Sein gelangweilter Ausdruck verschwindet... er sieht aus, als hätte jemand in seinen Augen zwei Feuer entzündet. "Wie kannst du es wagen, hier hereinzuplatzen?" Er kneift seine Augen zusammen und fletscht seine Zähne. "Hau ab! Oder ich steck dich in das Loch, aus dem du gekrochen kamst!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11702 /* ~"Ich habe mit deiner Frau gesprochen. Ich glaube, ich kann dir behilflich sein bei..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11703 /* ~"Ich habe mit deiner Frau gesprochen. Ich glaube, ich kann dir behilflich sein bei..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11704 /* ~"Versuch's doch, wenn du meinst, stark genug zu sein..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11705 /* ~"*Niemand* redet so mit mir... nimm das zurück, oder dieses Haus wird zur Gruft."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11706 /* ~Zeig ihm seinen Staubmenschen-Vertrag.~ */ GOTO 6
  IF ~~ THEN REPLY #11707 /* ~"Beruhige dich. Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #11708 /* ~"Dann leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 5.0 5.1
  SAY #11672 /* ~"Warum belästigst du meine Frau?! Du bist hier nicht in einem Bordell... laß sie gefälligst in Ruhe und verlaß mein Haus, bevor dein Name ins Totenbuch geschrieben wird!"~ */
  IF ~~ THEN REPLY #11709 /* ~"Versuch's doch, wenn du meinst, stark genug zu sein..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11710 /* ~"*Niemand* redet so mit mir... nimm das zurück, oder dieses Haus wird zur Gruft."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11711 /* ~Zeig ihm seinen Staubmenschen-Vertrag.~ */ GOTO 6
  IF ~~ THEN REPLY #11712 /* ~"Beruhige dich. Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #11713 /* ~"Dann leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3 1.5 2.1 2.3 5.3 5.5
  SAY #11673 /* ~Das Gesicht des Mannes läuft knallrot an, und er schreit: "Bist du taub?!" Er spuckt dir vor die Füße. "*Du narbengesichtiger Hundesohn! Wenn du nicht abhaust, werden dich nicht mal mehr die Mächte retten können! *"~ */
  IF ~~ THEN REPLY #11714 /* ~"Versuch's doch, wenn du meinst, stark genug zu sein..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11715 /* ~"Dann leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.6 2.4 3.1 5.6
  SAY #11674 /* ~Der Mann wirft dir zum Abschied einen drohenden Blick zu. "Wehe, du läßt dich je wieder hier blicken, du stinkender Bastard."~ */
  IF ~~ THEN REPLY #11716 /* ~"Jetzt reicht's. Damit hast du dir deinen Platz im Sarg redlich verdient..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11717 /* ~Geh ohne ein weiteres Wort weg.~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY #11675 /* ~Du erblickst Angyar - er hat sich nicht verändert. Als du näherkommst, dreht er sich langsam zu dir um. Die Zornesröte steigt ihm ins Gesicht. "Du schon wieder! Hast du nicht GEHÖRT, was ich gesagt habe, du Pockengesicht?! Hau ab, oder ich mach Kleinholz aus dir, so wahr mir die Mächte helfen!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11718 /* ~"Ich habe mit deiner Frau gesprochen. Ich glaube, ich kann dir behilflich sein bei..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11719 /* ~"Ich habe mit deiner Frau gesprochen. Ich glaube, ich kann dir behilflich sein bei..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11720 /* ~"Versuch's doch, wenn du meinst, stark genug zu sein..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11721 /* ~"*Niemand* redet so mit mir... nimm das zurück, oder dieses Haus wird zur Gruft."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11722 /* ~Zeig ihm seinen Staubmenschen-Vertrag.~ */ GOTO 6
  IF ~~ THEN REPLY #11723 /* ~"Beruhige dich. Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #11724 /* ~"Dann leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.4 2.2 5.4
  SAY #11676 /* ~Als du den Vertrag hervorholst, weicht das Blut aus Angyars Gesicht. Es verschlägt ihm kurz die Sprache, doch dann ist er wieder ganz er selbst. "Wo hast du das Ding her?! Bei den Mächten, du sagst mir besser..."~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11725 /* ~"Deine Frau hat mir gesagt, wo er war. Sie hat sich Sorgen um dich gemacht."~ */ GOTO 7
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11726 /* ~"Deine Frau hat mir gesagt, wo es war. Sie hat sich Sorgen um dich gemacht."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 7
  IF ~~ THEN REPLY #11727 /* ~"Ich hab' ihn von einem Staubmenschen namens Mortai. Mit deinem Namen drauf."
~ */ GOTO 11
  IF ~~ THEN REPLY #11728 /* ~Zerreiß den Vertrag.~ */ JOURNAL #64584 /* ~Ich habe den Todesvertrag zerrissen, der Angyar so viel Sorgen gemacht hat. Er schien um Jahre jünger zu werden, als die Papierstücke zu Boden fielen.~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #11677 /* ~Angyar ringt nach Worten, dann findet er ein Ziel für seine Wut. "Ich... ich *bring sie um*! Ich..."~ */
  IF ~~ THEN REPLY #11729 /* ~"Du wirst sie *nicht* anrühren, wenn du weißt, was gut für dich ist."~ */ GOTO 8
  IF ~~ THEN REPLY #11730 /* ~"Das ist deine eigene Angelegenheit, aber klären wir zunächst das Geschäftliche: Was bekomme ich für diesen Vertrag?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #11731 /* ~"Sie hat es mir erzählt, weil sie sich um dich Sorgen gemacht hat... und deine erste Reaktion ist, daß du sie dafür *bestrafen* willst?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #11732 /* ~Zerreiß den Vertrag.
~ */ JOURNAL #64584 /* ~Ich habe den Todesvertrag zerrissen, der Angyar so viel Sorgen gemacht hat. Er schien um Jahre jünger zu werden, als die Papierstücke zu Boden fielen.~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11678 /* ~"Du *wagst* es... du *wagst* es, mir vorzuschreiben... wie ich mich in meinem *eigenen* Haus zu verhalten habe...?" Er holt tief Luft; dann geht es mit ihm durch. "Raus hier! Und nimm diesen verdammten Wisch mit!"~ */
  IF ~~ THEN REPLY #11733 /* ~"Warum *wirfst* du mich nicht raus, wenn du glaubst, daß du stark genug dazu bist..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11734 /* ~"Warte einen Moment! Sie hat es mir erzählt, weil sie sich um dich Sorgen gemacht hat... und deine erste Reaktion ist, daß du sie dafür *bestrafen* willst?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #11679 /* ~"Sie hat das Versprechen gebrochen, daß sie mir gegeben hat, ihrem eigenen *Mann!*" Angyar ballt seine Hand zur Faust. "Ich hab' ihr gesagt, sie soll niemandem davon erzählen; und was macht sie? Sie erzählt es dem erstbesten Fremden, der in mein Haus kommt!"~ */
  IF ~~ THEN REPLY #11735 /* ~"Sie hat ihr Versprechen aus Liebe zu dir gebrochen. Gesetze und Schwüre müssen manchmal hinter wichtigeren Dingen zurückstehen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11736 /* ~"Du hast allen Grund, wütend zu sein. Sie hätte das Versprechen nicht geben sollen, wenn sie es sowieso nicht halten wollte. Ich habe keine Achtung vor Schwurbrechern, aber das gehört jetzt der Vergangenheit an."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Angyar_1","GLOBALLaw",1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11737 /* ~"Du hast allen Grund, wütend zu sein. Sie hätte das Versprechen nicht geben sollen, wenn sie es sowieso nicht halten wollte. Ich habe keine Achtung vor Schwurbrechern, aber das gehört jetzt der Vergangenheit an."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_4","GLOBALLaw",-2)
~ GOTO 10
  IF ~~ THEN REPLY #11738 /* ~"Sie hat es getan, und du mußt nun seh'n, wie du damit umgehst. Mehr gibt es da nicht zu sagen."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11680 /* ~Angyar scheint sich etwas zu beruhigen und grummelt: "Was geschehen ist, ist geschehen..." Er schaut dich mißtrauisch an und nickt in Richtung Vertrag. "Was hast du jetzt vor mit dem Wisch?"~ */
  IF ~~ THEN REPLY #11741 /* ~Zerreiß den Vertrag.~ */ JOURNAL #64584 /* ~Ich habe den Todesvertrag zerrissen, der Angyar so viel Sorgen gemacht hat. Er schien um Jahre jünger zu werden, als die Papierstücke zu Boden fielen.~ */ GOTO 12
  IF ~~ THEN REPLY #11739 /* ~"Ich erwarte eine Bezahlung von dir, genauso wie du dafür bezahlt wurdest."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY #11681 /* ~Angyar kann seinen Blick anscheinend nicht vom Vertrag lösen. "Warum hast du ihn mir gezeigt?" Er wirkt mißtrauisch. "Um mich zu erpressen?"~ */
  IF ~~ THEN REPLY #11740 /* ~Zerreiß den Vertrag.~ */ JOURNAL #64584 /* ~Ich habe den Todesvertrag zerrissen, der Angyar so viel Sorgen gemacht hat. Er schien um Jahre jünger zu werden, als die Papierstücke zu Boden fielen.~ */ GOTO 12
  IF ~~ THEN REPLY #11742 /* ~"Ich erwarte eine Bezahlung von dir, genauso wie du dafür bezahlt wurdest."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 6.3 7.3 10.0 11.0 14.0
  SAY #11682 /* ~Du zerreißt den Vertrag. Mit verzweifeltem Blick und am ganzen Körper zitternd verfolgt Angyar die zu Boden schwebenden Papierfetzen. Dann atmet er erleichtert auf. "Du..." Er sieht aus, als würde er sich gleich bei dir bedanken. Dann zögert er jedoch und schaut dich mißtrauisch an. "Nichts ist umsonst. Nicht im Stock, Schleifer."~ */
  IF ~~ THEN REPLY #11743 /* ~"Das hier gab's aber umsonst. Und glaub mir, im Stock werden sich eine Menge Regeln ändern, während ich hier bin."~ */ DO ~AddexperienceParty(750)
IncrementGlobalOnceEx("GLOBALGood_Angyar_1","GLOBALGood",2)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 13
  IF ~~ THEN REPLY #11744 /* ~"Ich werde vielleicht später einmal deine Unterstützung benötigen. Könntest du mir dann helfen?"~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 30
  IF ~~ THEN REPLY #11745 /* ~"Gut, wenn du mich unbedingt entlohnen möchtest, ich hätte da ein paar Fragen..."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 15
  IF ~~ THEN REPLY #11746 /* ~"Dann überleg dir, wie du mich bezahlen kannst... gehab dich einstweilen wohl."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11683 /* ~Angyars wütende Miene erhellt sich. Er scheint es leid zu sein, seinem Glück zu mißtrauen. "Ich... ich... scheine diesmal zu den richtigen Mächten gebetet zu haben." Er seufzt. "Ich danke dir, Schleifer... was auch immer das wert sein mag."~ */
  IF ~~ THEN REPLY #11747 /* ~"Ehrlich gesagt, vielleicht könntest du mir helfen... ich habe ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11748 /* ~"Mach denselben Fehler nicht noch einmal... Das nächste Mal bin ich vielleicht nicht da, um dir zu helfen."~ */ EXIT
  IF ~~ THEN REPLY #11749 /* ~"Das bedeutet mir sehr viel. Paß auf dich auf, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1 10.1 11.1
  SAY #11684 /* ~"Ich hab' mich schon einmal an jemanden verkauft, und werde es nie mehr tun, schon gar nicht an einen wandelnden Toten." Er knurrt. "Mach, daß du fortkommst, oder du blickst dem Tod zum zweiten Mal ins Auge!"~ */
  IF ~~ THEN REPLY #11750 /* ~Zerreiß den Vertrag.~ */ JOURNAL #64584 /* ~Ich habe den Todesvertrag zerrissen, der Angyar so viel Sorgen gemacht hat. Er schien um Jahre jünger zu werden, als die Papierstücke zu Boden fielen.~ */ GOTO 12
  IF ~~ THEN REPLY #11751 /* ~"Du willst mich töten? Na dann, versuch's doch..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11752 /* ~"Wie du meinst. Ich werde diesen Vertrag sicher verwahren... so daß du weißt, daß er noch existiert und nach wie vor bei deinem Tode eingelöst werden muß. Leb wohl, Angyar."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_2","GLOBALGood",-1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.0 16.1 17.3 18.3 19.2 20.1 21.0 22.1 23.3 25.2 26.0 27.0 28.1 29.0 30.0
  SAY #11685 /* ~Angyar nickt. "Stell deine Fragen."
~ */
  IF ~~ THEN REPLY #11753 /* ~"Warum hast du den Vertrag des Staubmenschen unterzeichnet?"~ */ GOTO 22
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11754 /* ~"Ich suche nach einem Mann namens Pharod. Weißt du, wo ich ihn finden kann?"~ */ GOTO 16
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11755 /* ~"Ich habe ein Journal verloren. Hast du vielleicht eins gesehen?"~ */ GOTO 29
  IF ~~ THEN REPLY #11756 /* ~"Könnte ich vielleicht hier ein wenig rasten?"~ */ GOTO 28
  IF ~~ THEN REPLY #11757 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #11686 /* ~Angyar nickt. "Ja, den Namen kenne ich, und er verheißt nichts Gutes."~ */
  IF ~~ THEN REPLY #11758 /* ~"Was kannst du mir über ihn erzählen?"~ */ GOTO 17
  IF ~~ THEN REPLY #11759 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11760 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11687 /* ~Er runzelt die Stirn. "Er ist einer dieser Sammler, und einer mit einem besonders langen Schatten. Er verfügt über ein paar Jungs. Ihm gehört das Reich zwar nicht, aber man sollte es sich nicht mit ihm verscherzen."~ */
  IF ~~ THEN REPLY #11761 /* ~"Sammler?"~ */ GOTO 18
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11762 /* ~"Weißt du, wo ich ihn finden kann?"
~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar hat mir erzählt, wo ich Pharod finden kann. Er hat gesagt, daß Pharod seine Absteige *unter* dem Lumpensammler-Platz vergraben hat. Er hat mir gesagt, daß es eine Art "Portal" zum Tor zu Pharods Versteck gibt, und daß ich etwas 'Ramsch' bei mir tragen müßte, um dieses Portal öffnen zu können.~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11763 /* ~"Weißt du, wo ich ihn finden kann?"~ */ JOURNAL #64576 /* ~Angyar hat mir erzählt, wo ich Pharod finden kann. Er hat gesagt, daß Pharod seine Absteige *unter* dem Lumpensammler-Platz vergraben hat. Er hat mir gesagt, daß es eine Art "Portal" zum Tor zu Pharods Versteck gibt, und daß ich etwas 'Ramsch' bei mir tragen müßte, um dieses Portal öffnen zu können.~ */ GOTO 20
  IF ~~ THEN REPLY #11764 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11765 /* ~"Ich verstehe. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #11688 /* ~"Menschliche Aasgeier, Schakale, Hyänen... üble Dussel ohne einen Funken Anstand. Die meisten von ihnen hausen auf dem Lumpensammler-Platz. Sie sammeln die Totenbüchler ein, nehmen ihnen alles ab, was Klimper bringt, und verkaufen sie dann an die Staubies in der Leichenhalle."~ */
  IF ~~ THEN REPLY #11766 /* ~"Warum tun sie das?"~ */ GOTO 19
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11767 /* ~"Pharod ist also einer dieser Sammler? Weißt du, wo ich ihn finden kann?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar hat mir erzählt, wo ich Pharod finden kann. Er hat gesagt, daß Pharod seine Absteige *unter* dem Lumpensammler-Platz vergraben hat. Er hat mir gesagt, daß es eine Art "Portal" zum Tor zu Pharods Versteck gibt, und daß ich etwas 'Ramsch' bei mir tragen müßte, um dieses Portal öffnen zu können.~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11768 /* ~"Wo kann ich Pharod noch mal finden?"~ */ JOURNAL #64576 /* ~Angyar hat mir erzählt, wo ich Pharod finden kann. Er hat gesagt, daß Pharod seine Absteige *unter* dem Lumpensammler-Platz vergraben hat. Er hat mir gesagt, daß es eine Art "Portal" zum Tor zu Pharods Versteck gibt, und daß ich etwas 'Ramsch' bei mir tragen müßte, um dieses Portal öffnen zu können.~ */ GOTO 20
  IF ~~ THEN REPLY #11769 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11770 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11689 /* ~"Die Staubies zahlen Geld für die Toten. So bleibt die Straße sauber, wenn nicht genug Regen fällt."~ */
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11771 /* ~"Pharod ist also einer dieser Sammler? Weißt du, wo ich ihn finden kann?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar hat mir erzählt, wo ich Pharod finden kann. Er hat gesagt, daß Pharod seine Absteige *unter* dem Lumpensammler-Platz vergraben hat. Er hat mir gesagt, daß es eine Art "Portal" zum Tor zu Pharods Versteck gibt, und daß ich etwas 'Ramsch' bei mir tragen müßte, um dieses Portal öffnen zu können.~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11772 /* ~"Wo kann ich Pharod noch mal finden?"~ */ JOURNAL #64576 /* ~Angyar hat mir erzählt, wo ich Pharod finden kann. Er hat gesagt, daß Pharod seine Absteige *unter* dem Lumpensammler-Platz vergraben hat. Er hat mir gesagt, daß es eine Art "Portal" zum Tor zu Pharods Versteck gibt, und daß ich etwas 'Ramsch' bei mir tragen müßte, um dieses Portal öffnen zu können.~ */ GOTO 20
  IF ~~ THEN REPLY #11773 /* ~"Ich habe noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11774 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1 17.2 18.1 18.2 19.0 19.1
  SAY #11690 /* ~"Ja, aber ich tu dir keinen Gefallen, wenn ich es dir sage..." Er schaut besorgt. "Ein Verwandter von mir stieß vor ein paar Monaten zu seiner Bande und hat mir ein wenig vom Dunkel über Pharod erzählt. Angeblich hat er seine Absteige irgendwo *unter* dem Lumpensammler-Platz. Um dahin zu kommen, muß man mit irgendwelchem Müll in der Hand durch eine Art Portal springen."~ */
  IF ~~ THEN REPLY #11775 /* ~"Wo befindet sich der Lumpensammler-Platz?"~ */ GOTO 21
  IF ~~ THEN REPLY #11776 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11777 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11691 /* ~"Er ist nur ein paar Straßen weiter... wenn du am Tor der Leichenhalle geradeaus nach Westen gehst, gelangst du an einen Platz voller Müll und aufgehäufter Lumpen. Aber sei unterwegs vorsichtig... die Sammler warten nicht immer, bis einer wirklich tot ist, bevor sie ihn aufsammeln, hörst du?"~ */
  IF ~~ THEN REPLY #11778 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11779 /* ~"Danke für die Information. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.0
  SAY #11692 /* ~"Vielleicht wird man von den vielen Reichtümern, die einen umgeben, abgelenkt..." Er schnaubt. "Wir hatten noch weniger als nichts, und ich brauchte dringend Klimper. Damals war es mir egal, woher er kam, und meinen Körper an die Staubies zu verkaufen, erschien mir ehrlicher als viele andere Dinge, die hier so geschehen..."~ */
  IF ~~ THEN REPLY #11780 /* ~"Warum hast du deine Meinung geändert?"~ */ GOTO 23
  IF ~~ THEN REPLY #11781 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11782 /* ~"Ich war nur neugierig. Leb wohl, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11693 /* ~"Es war..." Er seufzt, dann fährt er fort. "Vor einem halben Monat sah ich einen dieser Zombies auf der Straße... einen dieser Zombies, die für die Staubies arbeiten, und es traf mich mitten ins Herz. Mir wurde klar, daß ich einen Fehler gemacht hatte... so wollte ich nach meinem Tod nicht rumlaufen."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #11783 /* ~"Dann hättest du den Vertrag nicht unterzeichnen sollen."~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #11784 /* ~"Dann hättest du den Vertrag nicht unterzeichnen sollen."~ */ GOTO 24
  IF ~~ THEN REPLY #11785 /* ~"Wir haben alle schon Fehler gemacht."~ */ GOTO 26
  IF ~~ THEN REPLY #11786 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11787 /* ~"Ich war nur neugierig. Leb wohl, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1 25.0
  SAY #11694 /* ~Angyar läuft rot an. "Auf deine Belehrungen kann ich gut verzichten! Wie kannst du es *wagen*, dich in meinem Haus aufs hohe Roß zu setzen? Ich hab' dich schließlich nicht gebeten, mir den verdammten Vertrag zu besorgen - ich schulde dir *nichts*! Hau ab! Ich will dich nicht mehr sehen!~ */
  IF ~~ THEN REPLY #11788 /* ~"Warum wirfst du mich nicht einfach raus, wenn du glaubst, daß du stark genug dazu bist..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11789 /* ~"Dann leb wohl."~ */ DO ~Enemy()
SetGlobal("Angyar","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #11695 /* ~Dir läuft es kalt den Rücken hinunter, als du zum Sprechen ansetzt... plötzlich wird dir bewußt, daß Angyar deine Belehrungen nicht friedlich hinnehmen wird.~ */
  IF ~~ THEN REPLY #11790 /* ~"Dann hättest du den Vertrag nicht unterzeichnen sollen, Angyar."~ */ GOTO 24
  IF ~~ THEN REPLY #11791 /* ~"Wir haben alle schon Fehler gemacht."~ */ GOTO 26
  IF ~~ THEN REPLY #11792 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #11793 /* ~"Ich war nur neugierig. Auf bald, Angyar."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.1
  SAY #11696 /* ~Angyar grummelt. "Das ist wohl wahr..."~ */
  IF ~~ THEN REPLY #11794 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 15
  IF ~~ THEN REPLY #11795 /* ~"Ach, ich war nur neugierig. Leb wohl, Angyar."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11697 /* ~Du erblickst Angyar - er sieht viel besser aus als zuvor. Er hat wieder etwas Farbe im Gesicht, und seine Augen haben ihren gehetzten Blick verloren. Als du näherkommst, dreht er sich langsam zu dir um und schnaubt: "Hmmm... wenn das nicht der gute, alte Schlucker aus dem Stock ist..." Er grummelt. "Was kann ich für dich tun?"~ */
  IF ~~ THEN REPLY #11796 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11797 /* ~"Ich wollte nur mal sehen, wie's dir geht, Angyar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.3 30.1
  SAY #11698 /* ~Angyar nickt. "Das ist das Wenigste, das ich für dich tun kann. Ich sag' meiner Frau, sie soll dir ein paar Decken holen..."~ */
  IF ~~ THEN REPLY #11798 /* ~"Danke..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11799 /* ~"Ich wollte mich noch nicht ausruhen. Ich hätte noch einige Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #11800 /* ~"Ich wollte noch nicht schlafen. Aber ich werde bestimmt zurückkehren, wenn ich mich ausruhen möchte. Wir sehen uns dann."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY #11699 /* ~Angyar runzelt die Stirn, dann schüttelt er den Kopf. "Nie so was gesehen, Schleifer."~ */
  IF ~~ THEN REPLY #11801 /* ~"Vielleicht kannst du mir dann noch ein paar andere Fragen beantworten..."~ */ GOTO 15
  IF ~~ THEN REPLY #11802 /* ~"Trotzdem vielen Dank. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 12.1
  SAY #11700 /* ~"Ich habe mich schon einmal an jemanden verkauft, damit ist jetzt Schluß." Er schüttelt den Kopf. "Begleichen wir die Schuld jetzt."~ */
  IF ~~ THEN REPLY #11803 /* ~"Wie du meinst. Wenn du mich unbedingt entlohnen willst, dann könntest du mir die Antworten auf ein paar Fragen geben..."~ */ GOTO 15
  IF ~~ THEN REPLY #11804 /* ~"Ich könnte ein Quartier zum Ausruhen gebrauchen."~ */ GOTO 28
  IF ~~ THEN REPLY #11805 /* ~"Du stehst nicht in meiner Schuld, Angyar - meine Hilfe gab's umsonst. Leb wohl."~ */ EXIT
END
