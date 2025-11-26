// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DASHMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DASHMAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 42 44 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2133 /* ~Du siehst einen blassen Mann in einer langen, schwarzen Robe. Er gleicht den Leuten in der Leichenhalle, aber anders als diese blickt er verwirrt um sich. Als er dich entdeckt, hebt er die Hand, um deine Aufmerksamkeit auf sich zu ziehen.~ */
  IF ~~ THEN REPLY #2180 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2181 /* ~Ignoriere den Mann.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 42 44 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2134 /* ~Du siehst einen Staubmenschen mit blassem Gesicht in einer langen, schwarzen Robe. Im Gegensatz zu den Staubmenschen in der Leichenhalle, blickt dieser Mann verwirrt um sich, als würde er etwas suchen. Als er dich entdeckt, hebt er die Hand, um deine Aufmerksamkeit auf sich zu ziehen.
~ */
  IF ~~ THEN REPLY #2182 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2183 /* ~Ignoriere den Mann.
~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2135 /* ~Der Mann scheint erleichtert zu sein, daß du mit ihm sprichst. Er verbeugt sich leicht. "Danke, daß du mich anhörst, Reisender. Ich bin Aschenmantel, ein Mitglied der Staubmenschen-Sekte. Vielleicht kannst du mir helfen... Ich kenne mich hier nicht so gut aus. Ich suche eine gewisse Bar, wo die Mitglieder meiner Sekte oft hingehen. Kennst du ein solches Lokal?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2184 /* ~"Weißt du, ich hab' gehört, daß sich hier ein Taschendieb rumtreibt, der sich als Staubmensch verkleidet hat. Kennst du ihn zufällig?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #2185 /* ~"'Sekte'? Meinst du nicht vielleicht 'Bund'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2186 /* ~"'Sekte'? Du bist doch ein Staubmensch: Meinst du nicht vielleicht 'Bund'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2187 /* ~"Oh, die Staubmenschenbar? Die ist bei der Leichenhalle. Orientiere dich an dem Eingangstor zur Leichenhalle und gehe von dort aus direkt nach Südwesten. Ist nicht zu verfehlen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2188 /* ~"Ich hab' davon gehört. Ich würde dir helfen... aber das hätte seinen Preis."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #61400 /* ~"Ich habe davon gehört. Ich würde dir helfen... wenn du mir ein paar Fragen beantwortest."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2189 /* ~Lüge: "Äh... ja, ich hab' davon gehört. Ich würde dir helfen... gegen ein gewisses Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2190 /* ~Lüge: "Äh... jaa, ich hab' davon gehört. Ich würde dir helfen... wenn du mir ein paar Fragen beantwortest."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2191 /* ~"Nein, tut mir leid, ich weiß nicht, wo das ist."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2192 /* ~Lüge: "Nein, tut mir leid, ich weiß nicht, wo das ist."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2193 /* ~"Ich kann dir nicht helfen. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2194 /* ~"Ich kann dir nicht helfen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2 45.1 45.2
  SAY #2136 /* ~Der Staubmensch nickt. "Ja, natürlich, *Bund*, ich meinte Bund... Sekte, Bund, ist doch alles einerlei... Kennst du vielleicht die Bar, die von meinem Bund besucht wird?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2195 /* ~"Weißt du, ich hab' gehört, daß sich hier ein Taschendieb rumtreibt, der sich als Staubmensch verkleidet hat. Kennst du ihn zufällig?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2196 /* ~"Die Bar, die du suchst, befindet sich in der Nähe der Leichenhalle. Orientiere dich am Eingangstor der Leichenhalle und geh dann direkt in Richtung Südwesten. Ist nicht zu verfehlen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2197 /* ~"Ich hab' davon gehört. Ich würde dir helfen... aber das hätte seinen Preis."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2198 /* ~"Ich hab' davon gehört. Ich würde dir helfen... wenn du mir ein paar Fragen beantwortest."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2199 /* ~Lüge: "Äh... ja, ich hab' davon gehört. Ich würde dir helfen... gegen ein gewisses Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2200 /* ~Lüge: "Äh... jaa, ich hab' davon gehört. Ich würde dir helfen... wenn du mir ein paar Fragen beantwortest."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2201 /* ~"Nein, tut mir leid, ich weiß nicht, wo das ist."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2202 /* ~Lüge: "Nein, tut mir leid, ich weiß nicht, wo das ist."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2203 /* ~"Ich kann dir nicht helfen. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2204 /* ~"Ich kann dir nicht helfen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.4 2.6 3.2 3.4 43.2 43.4 45.4 45.6
  SAY #2137 /* ~Er seufzt und zeigt seine Hände. "Tut mir leid, aber ich habe keinen Klimper übrig."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2205 /* ~"Na, vergiß es. Die Bar, nach der du suchst, befindet sich in der Nähe der Leichenhalle. Orientiere dich am Eingangstor der Leichenhalle und gehe von dort direkt in Richtung Südwesten. Ist nicht zu verfehlen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #2206 /* ~"Wie wär's, wenn du mir ein paar Fragen beantwortest, und wir dann quitt sind?"~ */ GOTO 7
  IF ~~ THEN REPLY #2613 /* ~"Dann kann ich dir nicht helfen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.8 2.9 2.10 2.11 3.6 3.7 3.8 3.9 4.2 6.1 7.2 8.4 9.1 10.2 11.2 12.4 13.2 14.2 15.3 16.2 18.4 43.6 43.7 45.8 45.9
  SAY #2138 /* ~Der Staubmensch nickt und verneigt sich zum Abschied. "Vielen Dank, daß du mir deine Zeit geschenkt hast."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2614 /* ~"Sicher. Auf bald."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2615 /* ~"Sicher. Auf bald."~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2616 /* ~"Sicher. Auf bald."~ */ DO ~TakePartyGold(5)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",1)
~ THEN REPLY #2617 /* ~"Sicher... Leb wohl."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #2618 /* ~"Sicher. Auf bald."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1 4.0 7.0 7.1 43.1 45.3
  SAY #2139 /* ~Der Staubmensch lächelt. "Danke vielmals, Reisender. Wirklich sehr nett von dir. Die Stockbewohner... sind in solchen Angelegenheiten nur selten hilfreich."~ */
  IF ~~ THEN REPLY #2620 /* ~"Ja, da kannn ich ein Lied davon singen. Sag mal, kann ich dir ein paar Fragen stellen?~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #2621 /* ~"Kein Problem. Leb wohl, Aschenmantel."~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.5 2.7 3.3 3.5 4.1 43.3 43.5 45.5 45.7
  SAY #2140 /* ~Er nickt. "Einverstanden. Wenn du mir sagst, wie ich zur Bar Zum Staubfänger komme, beantworte ich gerne deine Fragen."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2622 /* ~"Die Bar, die du suchst, befindet sich in der Nähe der Leichenhalle. Orientier dich am Eingangstor der Leichenhalle und geh dann direkt in Richtung Südwesten. Ist nicht zu verfehlen."~ */ GOTO 6
  IF ~~ THEN REPLY #2649 /* ~Lüge: "Also, orientier dich an der Leichenhalle und geh von dort aus... drei Straßen nach Westen, glaub ich... und dann ist es die erste Gasse rechts."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_5","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #2650 /* ~"Ich fürchte, ich kann mich momentan nicht erinnern, wo sie ist. Ich komme zurück, wenn es mir wieder einfällt. Bis dann."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.0 9.0 10.1 11.1 12.3 13.1 14.1 15.2 16.1
  SAY #2141 /* ~"Wie lauten deine Fragen?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2651 /* ~"Ich suche nach einem Mann mit dem Namen Pharod. Hast du mal von ihm gehört?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2652 /* ~"Ich suche nach einem verlorengegangenen Journal. Weißt du, wo ich so was finden könnte?"~ */ GOTO 10
  IF ~~ THEN REPLY #2653 /* ~"Kannst du mir ein bißchen was über die Gegend hier erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #2654 /* ~"Was kannst du mir über die Staubmenschen erzählen?"~ */ GOTO 15
  IF ~~ THEN REPLY #2655 /* ~"Vergiß es. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #2142 /* ~"Tut mir leid, aber den Namen kenne ich nicht."~ */
  IF ~~ THEN REPLY #2656 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #2657 /* ~"Kein Problem. Leb wohl, Aschenmantel."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #2143 /* ~"Ich weiß nicht, wo man so was finden könnte. Tut mir leid."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2658 /* ~"Wirklich? Ich dachte, Staubmenschen würden nichts von Besitztümern halten?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #2659 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 8
  IF ~~ THEN REPLY #2660 /* ~"Vielen Dank für dein Interesse. Auf bald."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #2144 /* ~Der Mann zuckt leicht mit den Achseln. "Ich stehe deinem Verlust nicht ohne Mitgefühl gegenüber. Es gibt viele Dinge im Leben, die einem wichtig sind."~ */
  IF ~~ THEN REPLY #2662 /* ~"Du hast... *ungewöhnliche* Ansichten für einen Staubmenschen."~ */ GOTO 14
  IF ~~ THEN REPLY #2663 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #2664 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY #2145 /* ~"Diese Gegend... nun, ich glaube, im Nordwesten gibt es einen Markt, und im Südwesten irgendeine Behörde...." Er denkt kurz nach. "Ach ja, das Büro für Schädlingsbekämpfung, glaube ich."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2665 /* ~"Ich dachte, du würdest die Gegend nicht gut kennen."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #2666 /* ~"Du scheinst dich in *dieser* Gegend sehr gut auszukennen."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #2667 /* ~"Du scheinst dich in *dieser* Gegend sehr gut auszukennen."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #2668 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #2669 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #2146 /* ~Er zuckt mit den Achseln. "Der Stock ist groß. Einige Gebiete kenne ich, andere nicht."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2670 /* ~"Es ist sonderbar, daß ein Staubmensch den Weg zur Staubfänger-Bar nicht kennt - sie befindet sich direkt bei der Leichenhalle."~ */ GOTO 14
  IF ~~ THEN REPLY #2671 /* ~"Ich verstehe. Ich hätte noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #2672 /* ~"Danke für die Auskunft. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0 15.0
  SAY #2147 /* ~Der Mann zwinkert. "Nun... ich bin kein gewöhnlicher Staubmensch."~ */
  IF ~~ THEN REPLY #2673 /* ~"Das dachte ich mir schon. Wer bist du?"~ */ GOTO 16
  IF ~~ THEN REPLY #2680 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #2681 /* ~"Vielen Dank für die Informationen. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY #2148 /* ~Er hält kurz inne... und nickt. "Aber gerne. Wir... die Staubmenschen... sehen das Leben so, wie es ist: als eine Gelegenheit unsere Leidenschaften zu leben, bevor wir ins nächste Leben überwechseln. Wir durchsuchen den Staub unserer früheren Leben nach einem Sinn, bevor wir in das nächste übergehen."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2682 /* ~"Äh... das sind *ungewöhnliche* Ansichten für einen Staubmenschen."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2683 /* ~"So wie du redet kein Staubmensch. Wer bist du?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #2684 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #2685 /* ~"Danke für die Information. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.1
  SAY #2149 /* ~Der Mann nickt unbehaglich. "Tja, ich bin Aschenmantel, einer vom Neunten Kreis."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2686 /* ~"Neunter Kreis? Den gibt's doch gar nicht."~ */ GOTO 17
  IF ~~ THEN REPLY #2687 /* ~"Ich ... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #2688 /* ~"Ganz wie du meinst. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #2150 /* ~Er wirkt plötzlich verspannt. "Ich hab' keine Zeit, die Praktiken und Ränge der Sekte der Staubmenschen mit dir zu diskutieren. Wenn du mich also bitte entschuldigen würdest..."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2689 /* ~Greif nach seiner Hand.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2690 /* ~Greif nach seiner Hand.~ */ GOTO 26
  IF ~~ THEN REPLY #2691 /* ~"Wer bist du wirklich?"~ */ GOTO 27
  IF ~~ THEN REPLY #2692 /* ~"Nichts für ungut. Ich wollte dich nicht verletzen."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.0 3.0 20.2 21.2 22.2 23.2 24.2 43.0 45.0
  SAY #2151 /* ~Der Mann sieht dich unschuldig an, aber du siehst, daß er sich verspannt. "Verzeihung?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2693 /* ~Greif nach seiner Hand.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2694 /* ~Greif nach seiner Hand.~ */ GOTO 26
  IF ~~ THEN REPLY #2695 /* ~"Du bist kein Staubmensch. Du bist ein schnöder Taschendieb."~ */ GOTO 27
  IF ~~ THEN REPLY #2696 /* ~"Hat sich was mit Verzeihung. Stirb, du Hund."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2697 /* ~"Nichts, schon gut. Leb wohl."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 29.8 29.9 30.2 30.3 32.3 32.4 33.3 33.4 35.2 35.3 36.3 36.4 40.3 40.4 41.2 41.3
  SAY #2153 /* ~Er nickt. "Also gut. Wir werden uns nie mehr begegnen. Ich werde mir anderswo einen neuen Schäl... äh, Job suchen."~ */
  IF ~~ THEN REPLY #2698 /* ~"Ganz recht. Und nun geh."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.1
  SAY #2154 /* ~Du willst dich schon umdrehen, als du plötzlich das Gefühl hast, daß irgend etwas nicht in Ordnung ist. Mißtrauisch wirfst du noch einen Blick auf Aschenmantel, gerade rechtzeitig, um zu sehen, wie er etwas in seine Ärmel steckt... und es sieht so aus, als gehöre das dir.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2699 /* ~Greif nach seiner Hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2700 /* ~Greif nach seiner Hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2723 /* ~"Hey! Was soll'n das hier werden?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2724 /* ~Bring Aschenmantel dazu, dich noch einmal zu bestehlen, und beobachte seine Vorgehensweise.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2726 /* ~Bring Aschenmantel dazu, dich noch einmal zu bestehlen, und beobachte seine Vorgehensweise.
~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2727 /* ~Bring Aschenmantel dazu, dich noch einmal zu bestehlen, und beobachte seine Vorgehensweise.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2728 /* ~Greif ihn an.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2729 /* ~Ignoriere den Zwischenfall, geh einfach.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 5.3
  SAY #2155 /* ~Du hättest es gar nicht bemerkt, wenn du nicht ohnehin schon mißtrauisch gewesen wärst, aber dann siehst du, wie Aschenmantels Hand bei einer seiner tiefen Verbeugungen pfeilschnell nach deinem Geldbeutel greift.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2730 /* ~Greif nach seiner Hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2731 /* ~Greif nach seiner Hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2732 /* ~"Hey! Was soll'n das hier werden?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2733 /* ~Erlaub Aschenmantel, dich zu bestehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2735 /* ~Erlaub Aschenmantel, dich zu bestehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2736 /* ~Erlaub Aschenmantel, dich zu bestehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2737 /* ~Greif ihn an.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2738 /* ~Ignoriere den Zwischenfall, geh einfach.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.0
  SAY #2156 /* ~Du hättest es gar nicht bemerkt, wenn man dich nicht vor einem Staubmenschendieb gewarnt hätte, aber dann siehst du, wie Aschenmantels Hand bei einer seiner tiefen Verbeugungen pfeilschnell nach deinem Geldbeutel greift.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2739 /* ~Greif nach seiner Hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2740 /* ~Greif nach seiner Hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2741 /* ~"Hey! Was soll'n das hier werden?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2742 /* ~Erlaub Aschenmantel, dich zu bestehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2744 /* ~Erlaub Aschenmantel, dich zu bestehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2746 /* ~Erlaub Aschenmantel, dich zu bestehlen, und beobachte, wie er dabei vorgeht.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2747 /* ~Greif ihn an.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2748 /* ~Ignoriere den Zwischenfall, geh einfach.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY #2157 /* ~Vielleicht bist du wegen deiner eigenen Taschendiebfähigkeiten auf der Hut, aber als du dich umdrehst, um zu gehen, siehst du instinktiv nach deinem Geldbeutel... und entdeckst, wie Aschenmantel seine Hand davon wegzieht. Er scheint allerdings nicht bemerkt zu haben, daß du ihn dabei beobachtet hast.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2749 /* ~Greif nach seiner Hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2750 /* ~Greif nach seiner Hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2751 /* ~"Hey! Was soll'n das hier werden?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2752 /* ~Bring Aschenmantel dazu, dich noch einmal zu bestehlen, und beobachte seine Vorgehensweise.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2754 /* ~Bring Aschenmantel dazu, dich noch einmal zu bestehlen, und beobachte seine Vorgehensweise.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2755 /* ~Bring Aschenmantel dazu, dich noch einmal zu bestehlen, und beobachte seine Vorgehensweise.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2756 /* ~Greif ihn an.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2760 /* ~Ignoriere den Zwischenfall, geh einfach.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3 20.4 20.5 21.3 21.4 21.5 22.3 22.4 22.5 23.3 23.4 23.5
  SAY #2158 /* ~Unter dem Vorwand, ihm noch einige zusätzliche Wegbeschreibungen zu verschiedenen Orten im Stock zu geben, verwickelst du Aschenmatel in ein lockeres Gespräch und beobachtest heimlich seine Bewegungen. Aschenmantel scheint sich hauptsächlich darauf zu verlassen, daß seine Staubmenschenverkleidung die Leute entwaffnet, und nutzt seine häufigen Verbeugungen zum Vertuschen seiner Versuche, dich zu bestehlen. Du merkst dir seine Technik... als er gerade wieder einen Versuch unternimmt, dir ein paar Münzen aus deinem Geldbeutel zu ziehen.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2761 /* ~Greif nach seiner Hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2762 /* ~Greif nach seiner Hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2777 /* ~"Hey! Was soll'n das hier werden?!"~ */ GOTO 18
  IF ~~ THEN REPLY #2778 /* ~Greif ihn an.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2779 /* ~Ignoriere den Zwischenfall, geh einfach.
~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.0 18.0 20.1 21.1 22.1 23.1 24.1
  SAY #2159 /* ~Deine Hand schnellt vor und schnappt sich sein Handgelenk in einem stahlharten Griff. Du siehst, wie seine Staubmenschenfassade bröckelt, und er knurrt wütend, als er versucht, sich von deinem Griff zu befreien. "Laß mich los, du Hund, oder ich rufe die Wachen!"~ */
  IF ~~ THEN REPLY #2780 /* ~"*Nachdem* du mir ein paar Fragen beantwortet hast, 'Staubmensch'."~ */ GOTO 28
  IF ~~ THEN REPLY #12067 /* ~"Gib mir alles, was du hast, du Dieb, und ich laß dich laufen."~ */ GOTO 28
  IF ~~ THEN REPLY #12068 /* ~"Wachen? Na dann ruf mal. Ich bin mir sicher, daß von denen jede *Menge* hier rumlaufen."~ */ GOTO 28
  IF ~~ THEN REPLY #12069 /* ~Greif ihn an.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12070 /* ~Laß ihn gehen.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.1 18.1 20.0 21.0 22.0 23.0 24.0
  SAY #2160 /* ~Deine Hand schießt vor, aber Aschenmantel weicht plötzlich zurück, und du bekommst sein Handgelenk nicht zu greifen. Du siehst, wie seine Staubmenschenfassade bröckelt, und mit verängstigter Miene läuft er weg!~ */
  IF ~~ THEN REPLY #12071 /* ~"Verdammt..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.2 18.2
  SAY #2161 /* ~Aschenmantel läuft plötzlich davon!~ */
  IF ~~ THEN REPLY #12072 /* ~"Verdammt..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.0 25.1 25.2
  SAY #2162 /* ~"Pah." Er sieht eher verärgert aus als sonst irgend etwas. "Was hat mich verraten?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12073 /* ~"Ich wurde gewarnt, daß jemand wie du sich als Staubmensch verkleidet und die Leute bestiehlt."~ */ GOTO 29
  IF ~  GlobalGT("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #12074 /* ~"Deine Unkenntnis der grundlegendsten Staubmenschenanschauungen. Du hättest dich ein bißchen besser vorbereiten sollen, bevor du versuchst, jemanden, der cleverer ist als du, übers Ohr zu hauen. Und jetzt beantworte mir ein paar Fragen..."~ */ GOTO 29
  IF ~~ THEN REPLY #12075 /* ~"Du solltest an deinen Fertigkeiten als Taschendieb arbeiten. Aber erstmal hab' ich ein paar Fragen an dich..."~ */ GOTO 29
  IF ~~ THEN REPLY #12076 /* ~"Sag ich dir später. Jetzt hab' ich erstmal ein paar Fragen an dich..."~ */ GOTO 29
  IF ~~ THEN REPLY #12077 /* ~"Du wirst nicht mehr lang genug leben, um das herauszufinden. Mach dich bereit zu sterben."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1 28.2 28.3 30.0 32.1 33.0 35.0 36.1 41.0
  SAY #2163 /* ~"Also, was willst du wissen?"~ */
  IF ~~ THEN REPLY #12078 /* ~"Was machst du in dieser Staubmenschenkluft?"~ */ GOTO 30
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12079 /* ~"Ich suche jemanden namens 'Pharod.' Kennst du ihn?"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12080 /* ~"Ich suche nach einem Journal."~ */ GOTO 35
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12081 /* ~Wahrheit: "Gib mir alles, was du hast, oder ich bring dich um."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12082 /* ~Täuschung: " Gib mir alles, was du hast, oder ich bring dich um."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12083 /* ~Wahrheit: "Also... Gib mir *alles*, was du hast, oder ich bring dich um."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 33
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12084 /* ~Täuschung: " Also... Gib mir *alles*, was du hast, oder ich bring dich um."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #12085 /* ~"Ich frage mich, wie lange ich wohl brauche, um dich umzubringen... und das werden wir gleich rausfinden."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12086 /* ~"Verschwinde. Wenn ich dich hier noch einmal sehe, hast du mein Messer im Bauch."~ */ GOTO 19
  IF ~~ THEN REPLY #12087 /* ~"Mach, daß du wegkommst. Und wehe, ich *höre* auch nur, daß du diese Nummer nochmal irgendwo in Sigil abziehst - verstanden?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #2164 /* ~Er zuckt mit den Schultern. "Niemand verdächtigt einen Staubmenschen." Er kichert hohl. "Ich bekomme ne schöne Menge Klimper zusammen, bevor mich jemand beim Schälen erwischt."~ */
  IF ~~ THEN REPLY #12088 /* ~"Interessant. Ich hätte ein paar andere Fragen..."~ */ GOTO 29
  IF ~~ THEN REPLY #12089 /* ~"Das ist alles, was ich wissen wollte. Jetzt stirb, du Hund."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12090 /* ~"Ich verstehe. In Zukunft gilt folgende Regelung, Aschenmantel: Sollte ich dich jemals wieder hier antreffen, werd ich dich aufschlitzen. Und nun verschwinde."~ */ GOTO 19
  IF ~~ THEN REPLY #12091 /* ~"Ja, clever. Schau, ich will dich nie wieder diese Nummer hier abziehen sehen - und das gilt für ganz Sigil. Verstanden?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 29.3 29.4
  SAY #2165 /* ~Die Augen des Mannes werden schmal. "Ich hab' nichts bei mir. Du warst heut mein erstes Opfer."~ */
  IF ~~ THEN REPLY #12092 /* ~Täuschung: "Also, du stellst dich nicht nur dumm, du *bist* dumm. Gib mir, was du hast, oder die Sammler kratzen morgen eine neue Leiche von der Straße."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
GiveGoldForce(50)
~ GOTO 32
  IF ~~ THEN REPLY #12093 /* ~Wahrheit: "Ich seh schon, du tust nicht nur so blöd, du *bist* blöd. Gib mir alles, was du hast, oder die Sammler kratzen morgen eine neue Leiche von der Straße."~ */ DO ~GiveGoldForce(50)
IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #12094 /* ~"Falsche Antwort. Stirb, du Hund."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12095 /* ~"Ach ja? Na, da wollen wir dich doch mal durchschütteln und sehen, ob das stimmt."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #2166 /* ~Er grunzt, schätzt seine Chancen gegen dich ab, besinnt sich eines Besseren und berührt dann das Futter seiner Robe. Mit einem scharfen Ruck reißt er einen Teil der Robe weg und zieht eine kleine Menge Kupfer hervor, die er dort verborgen hatte. Er gibt sie dir. Du kannst dir nicht vorstellen, daß du das Vesteck gefunden hättest, wenn er es dir nicht gezeigt hätte.~ */
  IF ~~ THEN REPLY #12096 /* ~"Ist das alles? Du findest besser noch was anderes für mich, Aschenmantel, oder du wirst gleich dem Tod ins Angesicht schauen."~ */ GOTO 33
  IF ~~ THEN REPLY #12097 /* ~"In Ordnung. Ich hab' noch ein paar Fragen an dich..."~ */ GOTO 29
  IF ~~ THEN REPLY #12098 /* ~"Das ist alles, was ich wollte. Stirb, du Hund."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12099 /* ~"Verschwinde. Wenn ich dich hier noch einmal sehe, hast du mein Messer im Bauch."~ */ GOTO 19
  IF ~~ THEN REPLY #12100 /* ~"Mach, daß du wegkommst. Und wehe, ich *höre* auch nur, daß du diese Nummer nochmal irgendwo in Sigil abziehst - verstanden?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 33 // from: 29.5 29.6 32.0
  SAY #2167 /* ~Er zeigt seine Zähne. "Sonst hab' ich nichts."~ */
  IF ~~ THEN REPLY #12101 /* ~"In Ordnung. Ich hab' noch ein paar Fragen an dich..."~ */ GOTO 29
  IF ~~ THEN REPLY #12102 /* ~"Ach ja? Na, da wollen wir dich doch mal durchschütteln und sehen, ob das stimmt."~ */ GOTO 34
  IF ~~ THEN REPLY #12103 /* ~"Falsche Antwort. Stirb, du Hund."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12104 /* ~"Verschwinde. Wenn ich dich hier noch einmal sehe, hast du mein Messer im Bauch."~ */ GOTO 19
  IF ~~ THEN REPLY #12105 /* ~"Mach, daß du wegkommst. Und wehe, ich *höre* auch nur, daß du diese Nummer nochmal irgendwo in Sigil abziehst - verstanden?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 34 // from: 31.3 33.1
  SAY #2168 /* ~Als du ihn gerade durchsuchen willst, gleitet plötzlich ein Dolch aus seinem Ärmel in seine freie Hand. Mit einem Knurren greift er dich an!~ */
  IF ~~ THEN REPLY #12106 /* ~"In Ordnung..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.2
  SAY #2169 /* ~Der Mann runzelt die Stirn. "Na und? Wieso glaubst du, daß ich so was gesehen habe? Ich hab' nur mit Klimper zu tun, du Dussel."~ */
  IF ~~ THEN REPLY #12107 /* ~"In Ordnung. Ich hab' noch ein paar andere Fragen an dich..."~ */ GOTO 29
  IF ~~ THEN REPLY #12108 /* ~"Das ist alles, was ich wissen wollte. Jetzt stirb, du Hund."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12109 /* ~"Verschwinde. Wenn ich dich hier noch einmal sehe, hast du mein Messer im Bauch."~ */ GOTO 19
  IF ~~ THEN REPLY #12110 /* ~"Mach, daß du wegkommst. Und wehe, ich *höre* auch nur, daß du diese Nummer nochmal irgendwo in Sigil abziehst - verstanden?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 36 // from: 29.1
  SAY #2170 /* ~"Was ist mit ihm?"~ */
  IF ~~ THEN REPLY #12111 /* ~"Wer ist er?"~ */ GOTO 37
  IF ~~ THEN REPLY #12112 /* ~"Egal. Ich hätte da noch ein paar Fragen..."~ */ GOTO 29
  IF ~~ THEN REPLY #12113 /* ~"Vergiß es. Stirb, du Hund."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12114 /* ~"Verschwinde. Wenn ich dich hier noch einmal sehe, hast du mein Messer im Bauch."
~ */ GOTO 19
  IF ~~ THEN REPLY #12115 /* ~"Mach, daß du wegkommst. Und wehe, ich *höre* auch nur, daß du diese Nummer nochmal irgendwo in Sigil abziehst - verstanden?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2171 /* ~"Läßt du mich gehen, wenn ich es dir sage?"~ */
  IF ~~ THEN REPLY #12116 /* ~"Nein."~ */ GOTO 38
  IF ~~ THEN REPLY #12117 /* ~Schwur: "Du hast mein Wort, daß ich dich laufenlasse... wenn du mir meine Frage beantwortest."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12118 /* ~Wahrheit: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12119 /* ~Lüge: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_3","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12120 /* ~Wahrheit: "Ich laß dich *leben*, wenn du's mir sagst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #12121 /* ~Täuschung: "Ich laß dich *leben*, wenn du's mir sagst."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.4 37.5
  SAY #2172 /* ~Er spuckt auf den Boden. "Dann hab' ich zu der Sache herzlich wenig zu sagen."~ */
  IF ~~ THEN REPLY #12122 /* ~Schwur: "Also gut. Du hast mein Wort, daß ich dich laufenlasse... wenn du mir meine Frage beantwortest."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12123 /* ~Wahrheit: "Okay, ich laß dich laufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12124 /* ~Lüge: "Okay, ich laß dich laufen."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_4","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12125 /* ~Wahrheit: "Ich laß dich *leben*, wenn du's mir sagst."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12126 /* ~Täuschung: "Ich laß dich *leben*, wenn du's mir sagst."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12127 /* ~"Falsche Antwort. Stirb, du Hund."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 37.2 37.3 38.0 38.1 38.2 38.3 38.4
  SAY #2173 /* ~"Pharod ist ein Sammlerboss. Hat ne Menge Jungs in seinem Schatten, und man sagt, die haben 'n hübsches kleines Geschäft aufgezogen. Viel mehr weiß ich darüber nicht. Ich wär aber vorsichtig, wenn ich mit ihm zu tun hätte."~ */
  IF ~~ THEN REPLY #12128 /* ~"Wo kann ich ihn finden?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2174 /* ~"Der hat seine Absteige am Lumpensammler-Platz... das ist der riesige Haufen Lumpen und Müll nordwestlich von hier. Geh einfach durch das Nordtor, und dann gehst du immer weiter nach Norden, bis du draufstößt. Man sagt, daß Pharod sich irgendwo draußen in den Müllbergen versteckt, vielleicht ist er auch unter ihnen begraben. Wer weiß? Und, läßt du mich jetzt gehen?"~ */
  IF ~  Global("Lawful_Ash_1","GLOBAL",0)
~ THEN REPLY #12129 /* ~"Nein. Ich hätte ein paar andere Fragen an dich..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_2","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("Lawful_Ash_1","GLOBAL",1)
~ THEN REPLY #12130 /* ~"Nein. Ich hätte ein paar andere Fragen an dich..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_6","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ash_9","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #12131 /* ~"Das war alles, was ich wissen wollte. Und nun stirb, mein Lieber."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12132 /* ~"Verschwinde. Wenn ich dich hier noch einmal sehe, hast du mein Messer im Bauch."~ */ GOTO 19
  IF ~~ THEN REPLY #12133 /* ~"Mach, daß du wegkommst. Und wehe, ich *höre* auch nur, daß du diese Nummer nochmal irgendwo in Sigil abziehst - verstanden?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #2175 /* ~Er sieht stinkwütend aus. "Du hast aber *gesagt*, daß du mich gehen läßt."~ */
  IF ~~ THEN REPLY #12134 /* ~"Und *du* hast gesagt, du wärst ein Staubmensch. Jetzt zu meinen Fragen..."~ */ GOTO 29
  IF ~~ THEN REPLY #12135 /* ~"Ja, ich hab' 'ne Menge gesagt, und jetzt bin ich es leid, mit dir zu reden. Stirb, du Hund."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12136 /* ~"Verschwinde. Wenn ich dich hier noch einmal sehe, hast du mein Messer im Bauch."~ */ GOTO 19
  IF ~~ THEN REPLY #12137 /* ~"Mach, daß du wegkommst. Und wehe, ich *höre* auch nur, daß du diese Nummer nochmal irgendwo in Sigil abziehst - verstanden?"~ */ GOTO 19
END

IF WEIGHT #1 /* Triggers after states #: 44 even though they appear after this state */
~  GlobalGT("Ashmantle","GLOBAL",0)
~ THEN BEGIN 42 // from:
  SAY #2176 /* ~Du siehst Aschenmantel wieder... er sieht immer noch verloren aus und murmelt vor sich hin, während er sich die Gebäude ansieht.~ */
  IF ~  Global("Directed_Ashmantle","GLOBAL",0)
~ THEN REPLY #12138 /* ~"Sei gegrüßt."~ */ GOTO 45
  IF ~  Global("Directed_Ashmantle","GLOBAL",1)
~ THEN REPLY #12139 /* ~"Sei gegrüßt."~ */ GOTO 43
  IF ~~ THEN REPLY #12140 /* ~Geh an ihm vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #2177 /* ~"Ich fürchte, ich hab' Eure Wegbeschreibung vergessen, mein Herr. Könnt ich Eure Zeit noch einmal für eine erneute Beschreibung in Anspruch nehmen?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12141 /* ~"Weißt du, ich hab' gehört, daß sich hier ein Taschendieb rumtreibt, der sich als Staubmensch verkleidet hat. Kennst du ihn zufällig?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12142 /* ~"Oh, die Staubmenschenbar? Die ist bei der Leichenhalle. Orientiere dich an dem Eingangstor zur Leichenhalle und geh von dort aus direkt nach Südwesten. Ist nicht zu verfehlen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12143 /* ~"Ich hab' davon gehört. Ich würde dir helfen... aber das hätte seinen Preis."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12144 /* ~"Ich hab' davon gehört. Ich würde dir helfen... wenn du mir ein paar Fragen beantwortest."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12145 /* ~Lüge: "Äh... ja, ich hab' davon gehört. Ich würde dir helfen... gegen ein gewisses Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12146 /* ~Lüge: "Äh... jaa, ich hab' davon gehört. Ich würde dir helfen... wenn du mir ein paar Fragen beantwortest."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12147 /* ~"Ich kann dir nicht helfen. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12148 /* ~"Ich kann dir nicht helfen. Leb wohl."~ */ GOTO 5
END

IF WEIGHT #0 ~  Global("Remove_Ash","GLOBAL",1)
~ THEN BEGIN 44 // from:
  SAY #2178 /* ~"Ich gehe! Jetzt laß mich los!"~ */
  IF ~~ THEN REPLY #12149 /* ~"Ich schlage vor, daß du dich beeilst."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0
  SAY #2179 /* ~"Ich weiß, daß Ihr mir vorhin nicht helfen konntet, mein Herr. Aber vielleicht wißt Ihr ja dieses Mal, wo sich diese Bar befindet, in der meine Sekte immer einkehrt?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12150 /* ~"Weißt du, ich hab' gehört, daß sich hier ein Taschendieb rumtreibt, der sich als Staubmensch verkleidet hat. Kennst du ihn zufällig?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #12151 /* ~"'Sekte'? Meinst du nicht vielleicht 'Bund'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #12152 /* ~"'Sekte'? Du bist doch ein Staubmensch: Meinst du nicht vielleicht 'Bund'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12153 /* ~"Oh, die Staubmenschenbar? Die ist bei der Leichenhalle. Orientiere dich an dem Eingangstor zur Leichenhalle und geh von dort aus direkt nach Südwesten. Ist nicht zu verfehlen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12154 /* ~"Ich hab' davon gehört. Ich würde dir helfen... aber das hätte seinen Preis."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12155 /* ~"Ich hab' davon gehört. Ich würde dir helfen... wenn du mir ein paar Fragen beantwortest."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12156 /* ~Lüge: "Äh... ja, ich hab' davon gehört. Ich würde dir helfen... gegen ein gewisses Entgelt."
~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12157 /* ~Lüge: "Äh... jaa, ich hab' davon gehört. Ich würde dir helfen... wenn du mir ein paar Fragen beantwortest."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12158 /* ~"Ich kann dir nicht helfen. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12159 /* ~"Ich kann dir nicht helfen. Leb wohl."~ */ GOTO 5
END
