// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1805 /* ~Dieser Mann ist in eine schmutzige, zerlumpte braune Robe gehüllt. Eine lange Kapuze verdeckt fast sein ganzes Gesicht.~ */
  IF ~~ THEN REPLY #21697 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #21698 /* ~Laß ihn in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21677 /* ~Du siehst, wie sich seine Augen unter seiner Kapuze verengen, und er tritt einen Schritt zurück. "Was willst du?"~ */
  IF ~~ THEN REPLY #21699 /* ~"Was machst du da?"~ */ GOTO 2
  IF ~~ THEN REPLY #21700 /* ~"Wo bin ich hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #21701 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #21702 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.0
  SAY #21678 /* ~"Ich such nach ein paar verdammten Leichen, das versuch ich zumindest, aber man könnte meinen, die Totenmächte hätten ihr Zeug gepackt und die Ebenen verlassen, so wie die Leute gesund bleiben und so." Seine Augen leuchten plötzlich: "Letzten Monat hatten wir die Pocken hier, das war ne tolle Zeit, wirklich... zum Himmel stinkende Leichen, und auch viel Klimper zu holen."~ */
  IF ~~ THEN REPLY #21703 /* ~"Warum suchst du nach Leichen?"~ */ GOTO 3
  IF ~~ THEN REPLY #21704 /* ~"Was ist das für ein Ort hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #21705 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #21706 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #21679 /* ~Er wirkt überrascht. "Na, du schleifst die Knochengerüste zur Leichenhalle. Da redest du mit den Staubies, handelst'n bißchen, und kriegst'n bißchen Klimper."
~ */
  IF ~~ THEN REPLY #21707 /* ~"Warum kaufen die Staubmenschen die Leichen?"~ */ GOTO 4
  IF ~~ THEN REPLY #21708 /* ~"Was ist dies für ein Ort?"~ */ GOTO 5
  IF ~~ THEN REPLY #21709 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #21710 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #21680 /* ~"Sie sammeln die Toten... das ist ihr Job. Sie bezahlen uns dafür, daß wir einen größeren Bereich absuchen und ihnen alle Leichen bringen, die wir da finden. Dann sorgen sie dafür, daß die toten Knochengerüste an ihren richtigen Platz kommen oder verbrannt werden. Die nehmen das total ernst, ihre bekloppte Philosophie, aber für mich heißt das einfach mehr Klimper." Er zwinkert.~ */
  IF ~~ THEN REPLY #21711 /* ~"Was ist dies für ein Ort?"~ */ GOTO 5
  IF ~~ THEN REPLY #21712 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #21713 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 18.1
  SAY #21681 /* ~Er schaut dich mit gerunzelter Stirn an. "Du bist auf dem Lumpensammler-Platz, wo sonst? Wo kommste her, Schleifer? Von der Materiellen, oder was?"~ */
  IF ~~ THEN REPLY #21714 /* ~"Nein. Warum suchst du nach Leichen?"~ */ GOTO 3
  IF ~~ THEN REPLY #21715 /* ~"Nein. Ich hätte ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #21826 /* ~"Nein. Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 18.2
  SAY #21682 /* ~Er zieht eine Augenbraue hoch. "Dann hätt ich zuerst noch ein paar an dich, zum Beispiel: Was willst du wissen, und wie wichtig ist es dir?"~ */
  IF ~~ THEN REPLY #21717 /* ~"Wie meinst du das?"~ */ GOTO 7
  IF ~~ THEN REPLY #21718 /* ~"Erzähl mir was über Sammler."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21719 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21720 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21721 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 7
  IF ~~ THEN REPLY #21722 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #21683 /* ~"Schau dich um, Schleifer... Ich mach nicht genug Klimper, um für nichts Licht ins Dunkel zu bringen. Das kostet ein paar Münzen, wenn du den Plausch willst."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21723 /* ~Gib ihm ein paar Münzen.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21724 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21725 /* ~Drück ihm zehn Kupfermünzen in die Hand.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21726 /* ~"Du bekommst gar nichts von mir und wirst trotzdem meine Fragen beantworten."~ */ GOTO 17
  IF ~~ THEN REPLY #21727 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.1
  SAY #21684 /* ~Er spricht verächtlich: "Selbst Staubies bezahlen mehr als das, Schleifer. Du scheinst ja nicht viel wissen zu wollen."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21728 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21729 /* ~Laß zehn Kupfermünzen in seine Handflächen fallen.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21730 /* ~"Du bekommst überhaupt nichts und wirst trotzdem meine Fragen beantworten."~ */ GOTO 17
  IF ~~ THEN REPLY #21731 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 17.2
  SAY #21685 /* ~Er studiert einen Moment lang die Münzen, die er in seinen Händen hält. "Also." Er steckt sie schnell ein. "Frag schon."~ */
  IF ~~ THEN REPLY #21732 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21733 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21734 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21735 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21736 /* ~"Vergiß es. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.1 17.3
  SAY #21686 /* ~"Stell deine Fragen. Ich kann nicht sagen, daß ich helfen kann, aber vielleicht doch."~ */
  IF ~~ THEN REPLY #21737 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21738 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21739 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21740 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21741 /* ~"Vergiß es. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.4 10.4 12.3 13.5 14.4 15.3 16.3 19.5 20.4
  SAY #21687 /* ~"Na dann, paß auf dich auf, Schleifer. Wenn ich dich auf der Straße finde, werd ich deine Leiche gut behandeln."
~ */
  IF ~~ THEN REPLY #21742 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.2 14.1 15.0 16.0 19.2 20.1
  SAY #21688 /* ~"Ich... Wir... leben davon, daß wir Totenbüchler von Sigils schönen Straßen holen und ihre Bleiärsche in die Leichenhalle schleppen. Nicht die tollste Art, seine Brötchen zu verdienen, aber besser als nichts. War das alles, was du wissen wolltest, Schleifer?" Er schaut dich schräg an.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21743 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21744 /* ~"Ich suche nach einem Journal, das ich verloren hab'."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21745 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21746 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.1 12.0 15.1 16.1
  SAY #21689 /* ~Er kneift plötzlich die Augen zusammen. "Pharod... Was soll mit ihm sein?"~ */
  IF ~~ THEN REPLY #21747 /* ~"Du scheinst plötzlich mißtrauisch geworden zu sein... warum?"~ */ GOTO 19
  IF ~~ THEN REPLY #21748 /* ~"Weißt du, wo er ist?"~ */ GOTO 14
  IF ~~ THEN REPLY #21749 /* ~"Erzähl mir was über Sammler."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21750 /* ~"Ich suche auch nach einem Journal, das ich verloren habe."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21751 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21752 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.1 19.1 20.0
  SAY #21690 /* ~"Ich weiß, wo der Rattenbastard nicht ist... nämlich nicht hier *auf* dem Platz, aber es geht der Plausch um, daß er irgendwo in der Nähe ist."~ */
  IF ~~ THEN REPLY #21753 /* ~"Denken alle Sammler so über Pharod?"~ */ GOTO 19
  IF ~~ THEN REPLY #21754 /* ~"Erzähl mir was über Sammler."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21755 /* ~"Ich suche auch nach einem Journal, das ich verloren habe."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21756 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21757 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 9.3 10.3 12.2 13.4 14.3 16.2 19.4 20.3
  SAY #21691 /* ~"Die Hebamme? Wirklich eine nette Frau, hilft einem, wenn man krank ist und so. Sie lebt in einer Hütte bei den Plattformen, falls du sie suchst."~ */
  IF ~~ THEN REPLY #21758 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21759 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21760 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 16
  IF ~~ THEN REPLY #21761 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."
~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 9.2 10.2 12.1 13.3 14.2 15.2 19.3 20.2
  SAY #21692 /* ~Er schüttelt nur verwundert den Kopf.~ */
  IF ~~ THEN REPLY #21762 /* ~"Erzähl mir was über die Sammler."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21763 /* ~"Ich suche außerdem nach einem Mann namens Pharod."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21764 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21765 /* ~"Dann leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 7.3 8.2
  SAY #21693 /* ~"Ich weiß nichts, Knochenbrecher, und ich schlag vor, du suchst woanders nach Antworten... Rühr mich nur mit einem Finger an, und du hast die Hälfte aller Vollblüter auf dem Platz am Hals, ganz sicher."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #21766 /* ~Pack ihn und schüttel ihn ein bißchen durch.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21768 /* ~Gib ihm ein paar Münzen.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21773 /* ~Wirf ihm fünf Kupfermünzen hin.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21778 /* ~Drück ihm zehn Kupfermünzen in die Hand.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21781 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #21694 /* ~Der Mann macht einen Schritt zurück und schaut dich von unter seiner Kapuze mißtrauisch an. "Du wieder, was? Was willst du?"~ */
  IF ~~ THEN REPLY #21783 /* ~"Was machst du da?"~ */ GOTO 2
  IF ~~ THEN REPLY #21785 /* ~"Wo bin ich hier?"~ */ GOTO 5
  IF ~~ THEN REPLY #21787 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #21789 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0
  SAY #21695 /* ~"Pharod, hmf!" Er spuckt aus und grinst abschätzig. "Der Lumpensammler-Platz ist das Territorium von Grabteiler - meinem Boss, verstehst du? Pharod und seine Hunde kamen vor 'ner Weile zurück und haben versucht, uns wegzujagen. Wir haben sie in die Flucht geschlagen, jawohl, und jetzt verstecken sie sich alle irgendwo. Hin und wieder fangen wir hier mal noch einen seiner Jungs. Meistens machen wir aus denen gleich schnellen Klimper in der Leichenhalle, diese verdammten Schlucker."~ */
  IF ~~ THEN REPLY #21791 /* ~"Erzähl mir was über Grabteiler."~ */ GOTO 20
  IF ~~ THEN REPLY #21793 /* ~"Weißt du, wo Pharod ist?"~ */ GOTO 14
  IF ~~ THEN REPLY #21795 /* ~"Erzähl mir was über Sammler."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21796 /* ~"Ich suche auch nach einem Journal, das ich verloren habe."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21797 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21798 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #21696 /* ~"Er ist mein Boss... Wirft seinen Schatten über einen ganzen Haufen von Sammlern, jawohl. Ich würd mich von ihm fernhalten, wenn du nicht einen *wirklich* guten Grund hast, mit dem Mann zu reden... Ich selber hab' nie persönlich mit ihm gesprochen."~ */
  IF ~~ THEN REPLY #21802 /* ~"Weißt du, wo Pharod ist?"~ */ GOTO 14
  IF ~~ THEN REPLY #21803 /* ~"Erzähl mir was über Sammler."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21804 /* ~"Ich suche auch nach einem Journal, das ich verloren habe."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21807 /* ~"Was weißt du über Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21810 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ GOTO 11
END
