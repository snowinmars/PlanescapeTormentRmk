// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVC~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33767 /* ~Der wie ein Schläger aussehende Mann kommt mit einem ironischen Grinsen auf dich zu. "He, Vollblut... wie geht's? Ich bin der örtliche Schlepper, jawohl, und wenn du eine Kupfermünze für mich hast, kann ich dir viele nützliche Tips geben."~ */
  IF ~~ THEN REPLY #33776 /* ~"Was ist ein Schlepper?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33777 /* ~"Okay... hier hast du ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33778 /* ~"Im Moment gar nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33768 /* ~"He du, Vollblut... wie geht's? Ich bin der örtliche Schlepper, jawohl, und wenn du eine Kupfermünze für mich hast, kann ich dir viele nützliche Tips geben."~ */
  IF ~~ THEN REPLY #33779 /* ~"Was ist ein Schlepper?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33780 /* ~"Okay... hier hast du ein Kupferstück."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33781 /* ~"Im Moment gar nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33769 /* ~"Bei den Ärschen der Mächte... du scheinst in Sigil fremder zu sein als du aussiehst! Ein Schlepper ist ein Führer, Vollblut."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33782 /* ~"Na gut... hier hast du ein Kupferstück.~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33783 /* ~"Danke, aber im Moment brauche ich weder einen Führer noch Tips. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33770 /* ~Der Mann schnappt nach der Münze und zwinkert dir zu. "Also! In diesem Stock hier gibt's zwei Tore. Eins führt in den Norden und eins in den Südosten. Ach, und wenn du Bock auf eine richtig üble Schlägerei hast, geh in diese Gasse, die nach Nordosten führt. Außerdem ist hier noch das Büro für Schädlings- und Seuchenbekämpfung und ein richtig großer Markt."~ */
  IF ~~ THEN REPLY #33784 /* ~"Wo ist das Büro zur Schädlings- und Seuchenbekämpfung?"~ */ GOTO 4
  IF ~~ THEN REPLY #33785 /* ~"Wo ist der Markt?"~ */ GOTO 5
  IF ~~ THEN REPLY #33786 /* ~"Wohin kommt man durch das Nordtor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33787 /* ~"Wohin kommt man durch das Südosttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33788 /* ~"Erzähl mir noch mal was über diese Gasse, ja?"~ */ GOTO 8
  IF ~~ THEN REPLY #33789 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33771 /* ~"In der mittleren südlichen Hälfte dieser Gegend... Die Tür geht nach Süden, also mußt du einfach nur auf der südlichsten Straße von Osten nach Westen gehen, bis du sie siehst."~ */
  IF ~~ THEN REPLY #33790 /* ~"Wo ist der Markt?"~ */ GOTO 5
  IF ~~ THEN REPLY #33791 /* ~"Wohin kommt man durch das Nordtor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33792 /* ~"Wohin kommt man durch das Südosttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33793 /* ~"Erzähl mir noch mal was über diese Gasse, ja?"~ */ GOTO 8
  IF ~~ THEN REPLY #33794 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33772 /* ~"Im südlichen Knick eines L-förmigen Gebäudes in der nördlichen mittleren Hälfte dieser Gegend. Wenn du die nördlichste Ost-West-Straße runtergehst, dann siehst du es gleich. Viele Leute, viele Händler und so."~ */
  IF ~~ THEN REPLY #33795 /* ~"Wo ist das Büro zur Schädlings- und Seuchenbekämpfung?"~ */ GOTO 4
  IF ~~ THEN REPLY #33796 /* ~"Wohin kommt man durch das Nordtor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33797 /* ~"Wohin kommt man durch das Südosttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33798 /* ~"Erzähl mir noch mal was über diese Gasse, ja?"~ */ GOTO 8
  IF ~~ THEN REPLY #33799 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33773 /* ~"Führt zu 'nem anderen Teil des Stocks, Vollblut. Da oben ist eine Spelunke, wenn du müde bist... oder dir einfach alle Knochen weh tun... und du dich mal 'ne Runde auf's Ohr hauen willst."~ */
  IF ~~ THEN REPLY #33800 /* ~"Wo ist das Büro zur Schädlings- und Seuchenbekämpfung?"~ */ GOTO 4
  IF ~~ THEN REPLY #33801 /* ~"Wo ist der Markt?"~ */ GOTO 5
  IF ~~ THEN REPLY #33802 /* ~"Wohin kommt man durch das Südosttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33803 /* ~"Erzähl mir noch mal was über diese Gasse, ja?"~ */ GOTO 8
  IF ~~ THEN REPLY #33804 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3
  SAY #33774 /* ~"Zu 'nem anderen Teil des Stocks, Vollblut. Da kannst du dir 'n paar Tätowierungen machen lassen, und eine tolle Bar gibt's da auch, die heißt 'Zur Schwelenden Leiche'."~ */
  IF ~~ THEN REPLY #33805 /* ~"Wo ist das Büro zur Schädlings- und Seuchenbekämpfung?"~ */ GOTO 4
  IF ~~ THEN REPLY #33806 /* ~"Wo ist der Markt?"~ */ GOTO 5
  IF ~~ THEN REPLY #33807 /* ~"Wohin kommt man durch das Nordtor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33808 /* ~"Erzähl mir noch mal was über diese Gasse, ja?"~ */ GOTO 8
  IF ~~ THEN REPLY #33809 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3
  SAY #33775 /* ~Der Mann zuckt die Schultern. "Ist einfach nur der richtige Platz, wenn du scharf auf 'ne Schlägerei bist, sonst nichts... ich hab's nur erwähnt, weil du aussiehst, als ob du dich gern kloppst. Wie ich schon sagte, die Gasse ist im Nordosten... wenn du keinen Ärger willst, dann geh da nicht hin."~ */
  IF ~~ THEN REPLY #33810 /* ~"Wo ist das Büro zur Schädlings- und Seuchenbekämpfung?"~ */ GOTO 4
  IF ~~ THEN REPLY #33811 /* ~"Wo ist der Markt?"~ */ GOTO 5
  IF ~~ THEN REPLY #33812 /* ~"Wohin kommt man durch das Nordtor?"~ */ GOTO 6
  IF ~~ THEN REPLY #33813 /* ~"Wohin kommt man durch das Südosttor?"~ */ GOTO 7
  IF ~~ THEN REPLY #33814 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
