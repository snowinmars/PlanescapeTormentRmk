// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEF1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1567 /* ~Du siehst einen Mann in zerlumpten Kleidern. Als du auf ihn zugehst, bleibt er plötzlich stehen und blickt ängstlich um sich.~ */
  IF ~~ THEN REPLY #1569 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #1568 /* ~"Hey, du da! Einen Moment mal!"~ */ GOTO 1
  IF ~~ THEN REPLY #1570 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1571 /* ~Der Mann blickt erschrocken auf, dann geht er einen Schritt zurück. "Häh? Was willst du, Schleifer?" Seine Stimme zittert; deine Narben scheinen ihn stutzig zu machen. "Ich hab' nichts bei mir, wirklich nicht, und meine Lumpen lohnen den Ärger nicht."~ */
  IF ~~ THEN REPLY #1572 /* ~"Nun beruhige dich doch. Ich will dich doch gar nicht ausrauben. Ich hätte ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #1573 /* ~"Lauf, und ich verspreche dir, du kommst nicht weit. Ich hätte da ein paar Fragen..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1574 /* ~"Schon gut. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1575 /* ~"Häh?" Dein Anblick scheint ihn nicht gerade zu begeistern. "Was willst du denn *jetzt* schon wieder, Schleifer?"~ */
  IF ~~ THEN REPLY #1576 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #1577 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0
  SAY #1578 /* ~Er bleibt in sicherer Entfernung. Seine Augen wandern hin und her, als fürchte er, etwas könne aus dem Schatten hervortreten. "Fragen, sagst du...? Und... was... was wären das für Fragen?"~ */
  IF ~~ THEN REPLY #1580 /* ~"Kannst du mir was über diese... Stadt erzählen?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1579 /* ~"Kannst du mir was über Sigil erzählen?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1581 /* ~"Kannst du mir was über diese Slums erzählen?"
~ */ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1582 /* ~"Kannst du mir was über den Stock erzählen?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1583 /* ~"Kannst du mir was über die Dame der Schmerzen erzählen?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1584 /* ~"Kennst du jemanden mit dem Namen Pharod?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1585 /* ~"Ich vermisse ein Journal. Hast du zufällig eins gesehen?"~ */ GOTO 27
  IF ~~ THEN REPLY #7126 /* ~"Nichts. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.3 5.2 5.3
  SAY #1586 /* ~"Äh..." Er schaut dich mißtrauisch an und runzelt verwirrt die Stirn. "Was ist es denn, was du über den Stock wissen willst, Schleifer?"~ */
  IF ~~ THEN REPLY #1587 /* ~"Warum wird er der Stock genannt?"~ */ GOTO 6
  IF ~~ THEN REPLY #1588 /* ~"Gibt es hier in der Gegend irgendwas Interessantes?"~ */ GOTO 7
  IF ~~ THEN REPLY #1589 /* ~"Na, egal. Ich hätte noch ein paar andere Fragen..."
~ */ GOTO 5
  IF ~~ THEN REPLY #1590 /* ~"Nichts. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.1 7.5 8.3 9.0 10.1 11.3 12.0 13.5 14.1 15.1 16.3 17.2 18.1 19.1 20.1 21.3 22.2 23.3 24.2 25.2 26.0 27.0 28.2 29.0 30.0 31.2 32.1 33.1 34.1 35.0 36.2 42.0
  SAY #1591 /* ~"Äh... und was sind das für Fragen?"~ */
  IF ~~ THEN REPLY #1592 /* ~"Kannst du mir was über diese... Stadt erzählen?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1593 /* ~"Kannst du mir was über Sigil erzählen?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1594 /* ~"Kannst du mir was über diese Slums erzählen?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1595 /* ~" Kannst du mir was über den Stock erzählen?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1596 /* ~"Kannst du mir was über die Dame der Schmerzen erzählen?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1597 /* ~"Kennst du jemanden mit dem Namen Pharod?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1598 /* ~"Ich suche ein Journal. Hast du vielleicht eins gesehen, oder weißt du, wo ich eins finden könnte?"~ */ GOTO 27
  IF ~~ THEN REPLY #7131 /* ~"Nichts weiter. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #1599 /* ~Er wirkt ratlos. "Ich... weiß nicht." Er scheint Angst zu haben, daß er deine Frage nicht beantworten kann. "Vielleicht wegen den vielen Straßen und den vielen Menschen."~ */
  IF ~~ THEN REPLY #1600 /* ~"Gibt es hier in der Gegend irgendwas Interessantes?"~ */ GOTO 7
  IF ~~ THEN REPLY #1601 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1602 /* ~"Naja, egal. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #1603 /* ~"Das... äh... das kommt drauf an, was du interessant findest, Schleifer."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1604 /* ~"Ich bin auf der Suche nach ein wenig Unterhaltung."~ */ EXTERN ~DMORTE~ 128
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1605 /* ~"Ich bin auf der Suche nach ein wenig Unterhaltung."~ */ GOTO 8
  IF ~~ THEN REPLY #1606 /* ~"Ich bin auf der Suche nach Arbeit."~ */ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1607 /* ~"Ich suche jemanden namens Pharod."~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1608 /* ~"Ich suche nach einem Journal. Weißt du vielleicht, wo ich so was finden könnte?"~ */ GOTO 27
  IF ~~ THEN REPLY #1609 /* ~"Vergiß es. Ich hätte ein paar andere Fragen..."
~ */ GOTO 5
  IF ~~ THEN REPLY #7132 /* ~"Vergiß es. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1610 /* ~"Hm..." Er leckt seine Lippen. "Es gibt da diese Bar 'Zur Schwelenden Leiche'... und die Staubie-Bar... obwohl du ja nicht gerade wie ein Schleifer aussiehst, der mit den Staubies einen saufen geht... alle anderen Orte hier sind gefährlich, also sei auf der Hut."~ */
  IF ~~ THEN REPLY #1611 /* ~"Wo sind denn diese Orte, die du erwähntest?"~ */ GOTO 9
  IF ~~ THEN REPLY #1612 /* ~"Wo ist es hier in der Gegend gefährlich?"~ */ GOTO 10
  IF ~~ THEN REPLY #1613 /* ~"'Staubies'?"~ */ GOTO 15
  IF ~~ THEN REPLY #1614 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1615 /* ~"Ich verstehe. Vielen Dank für die Informationen. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #1616 /* ~"Tja, die Schwelende Leiche is 'n paar Straßen in Richtung Turm - äh, in Richtung Süden - von der Leichenhalle, und die Staubie-Bar ist nur 'n bißchen südwestlich von der Leichenhalle."~ */
  IF ~~ THEN REPLY #1731 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #1732 /* ~"Danke. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #1617 /* ~"Überall im Stock nach Einbruch der Dunkelheit. Dann gibt es da die Gasse der gefährlichen Ecken... von der du dich besser fernhalten solltest, wenn du nicht im Totenbuch landen willst."~ */
  IF ~~ THEN REPLY #1618 /* ~"Warum ist diese 'Gasse der Winkel' denn so gefährlich?"~ */ GOTO 36
  IF ~~ THEN REPLY #1619 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1620 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 11 // from: 7.2 13.4 14.0 15.0 31.1 32.0
  SAY #1621 /* ~Er überlegt. "Ehrliche... äh Arbeit... gibt's hier herzlich wenig, Schleifer. Du kannst Klugschädlinge jagen und sie im Büro zur Schädlingsbekämpfung für etwas Klimper abgeben, doch es ist äußerst gefährlich, sich mit Klugschädlingen rumzuschlagen. Du kannst auch Totenbüchler im Stock einsammeln und an die Leichenhalle verkaufen."~ */
  IF ~~ THEN REPLY #1623 /* ~"Und wo ist dieses Büro?"~ */ GOTO 12
  IF ~~ THEN REPLY #1624 /* ~"Klugschädlinge?"~ */ GOTO 14
  IF ~~ THEN REPLY #1625 /* ~"Leichen einsammeln?"~ */ GOTO 13
  IF ~~ THEN REPLY #1626 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1627 /* ~"Ich verstehe. Vielen Dank für die Informationen. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.1
  SAY #1622 /* ~"Das ist gleich neben dem Markt vom Stock. Geh in Richtung Turm - also von der Leichenhalle aus nach Südwesten - drei oder vier Straßen weiter, und dann endest du in 'ner Sackgasse genau da. Die Rattenfänger wimmeln da draußen rum, kannste gar nicht verfehlen."~ */
  IF ~~ THEN REPLY #1733 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #7133 /* ~"Danke. Leb wohl."
~ */ GOTO 37
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #1628 /* ~"Ja, die Staubmenschen geben dir Klimper für jeden Totenbüchler, den du bei ihnen ablädst. Reich wird man nicht davon, aber den Sammlern scheint's zu reichen... und an Totenbüchlern herrscht hier nie ein Mangel."~ */
  IF ~~ THEN REPLY #1633 /* ~"Sammler?"~ */ GOTO 31
  IF ~~ THEN REPLY #1629 /* ~"Wo war doch gleich dieses Büro, das du erwähntest?"~ */ GOTO 12
  IF ~~ THEN REPLY #1630 /* ~"Was sagtest du da grade über 'Klugschädlinge'?"~ */ GOTO 14
  IF ~~ THEN REPLY #1631 /* ~"'Staubies'?"~ */ GOTO 15
  IF ~~ THEN REPLY #1632 /* ~"Was gibt es im Stock sonst noch an Arbeit?"~ */ GOTO 11
  IF ~~ THEN REPLY #7134 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #7135 /* ~"Ich verstehe. Vielen Dank für die Informationen. Auf bald."
~ */ GOTO 37
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.2
  SAY #1634 /* ~"Ja, üble kleine Mistviecher." Er fletscht seine Zähne, was ihn ziemlich albern aussehen läßt. "Allein sind sie harmlos... aber je mehr Klugschädlinge auf einem Haufen sind, desto intelligenter werden sie. Sie werden praktisch so intelligent wie Menschen..." Er schüttelt den Kopf. "Niemand kann dies ernsthaft wollen; es würde die Gesundheit aller aufs Spiel setzen."~ */
  IF ~~ THEN REPLY #2528 /* ~"Was gibt es im Stock sonst noch an Arbeit?"~ */ GOTO 11
  IF ~~ THEN REPLY #2527 /* ~"Verstehe. Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #7136 /* ~"Ich hab' genug gehört. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 8.2 13.3 16.0
  SAY #1635 /* ~"Ja... die Staubies... die Staubmenschen... die blassen Toten, sie sind alle verbittert und humorlos. Sie räumen Leichen von der Straße und lagern sie in der Leichenhalle. Das ist ihre Aufgabe in Sigil, vor allem deshalb, weil sich sonst niemand darum schlägt."~ */
  IF ~~ THEN REPLY #1638 /* ~"Was gibt es im Stock sonst noch an Arbeit?"~ */ GOTO 11
  IF ~~ THEN REPLY #1636 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1637 /* ~"Ich verstehe. Danke für die Auskunft. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 16 // from:
  SAY #1639 /* ~"Welchen?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #1640 /* ~"Wie wär 's mit den Staubmenschen..."~ */ GOTO 15
  IF ~  GlobalGT("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #1641 /* ~"Die Chaoten... die hören sich interessant an."~ */ EXIT
  IF ~  GlobalGT("Know_Indeps","GLOBAL",0)
~ THEN REPLY #1642 /* ~"Die Unabhängigen?"~ */ EXIT
  IF ~~ THEN REPLY #1643 /* ~"Na, egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1644 /* ~"Vergiß die Frage einfach. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 17 // from: 3.0 5.0
  SAY #1645 /* ~"Was willst du über Sigil wissen?"~ */
  IF ~~ THEN REPLY #1646 /* ~"Wo bin ich hier eigentlich?"~ */ DO ~SetGlobal(" Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #1647 /* ~"*Wo* ist Sigil?"~ */ GOTO 26
  IF ~~ THEN REPLY #1648 /* ~"Ehrlich gesagt, hätte ich da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1649 /* ~"Vergiß es. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 3.1 5.1 17.0
  SAY #1650 /* ~"Die Stadt. Die Stadt der Tore, der Käfig. Der Ausgangspunkt und das Ziel aller Tore. Das Zentrum der Ebenen, wohin auch der Bodensatz aller anderen Orte zurückgespült wird. Man sagt, hier würden wir alle früher oder später landen."~ */
  IF ~~ THEN REPLY #1652 /* ~"'Stadt der Tore'?"~ */ GOTO 19
  IF ~~ THEN REPLY #1651 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1653 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1654 /* ~"Ja, äh... verstehst du, Schleifer, die Stadt ist..." Er runzelt die Stirn, als würde er nach Worten ringen. "In jedem Winkel der Stadt befinden sich Tore... und... hm, diese Tore..." Er runzelt erneut die Stirn und seufzt.~ */
  IF ~~ THEN REPLY #1657 /* ~"Die Tore...?"~ */ GOTO 20
  IF ~~ THEN REPLY #1658 /* ~"Ich sehe schon, daß das ein Weilchen dauern kann. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1659 /* ~"Macht nichts. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #1655 /* ~"Ich bin ja noch gar nicht fertig, mit meiner Knochenschüssel zu klappern. Verstehst du, überall in Sigil gibt es Tore, die man nicht ohne weiteres als solche erkennt. Es sind eher Portale, die so gut wie *alles* sein können... Fensterrahmen... Bilderrahmen oder Torbogen... Faßreifen oder der Raum zwischen zwei Tischbeinen... oder den Beinen einer Statue..."
~ */
  IF ~~ THEN REPLY #1656 /* ~"Und... du meinst, all das sind Tore?"~ */ GOTO 21
  IF ~~ THEN REPLY #1661 /* ~"Ich... verstehe. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1662 /* ~"Vielen Dank für die Informationen. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1660 /* ~Er runzelt erneut die Stirn. "Alles kann ein Tor... ein Portal sein, was rundum geschlossen ist. Schwer zu sagen, wo sie sind... es sei denn, du hast den Schlüssel. Bist du so hierher gekommen, Schleifer? Durch ein Tor?"~ */
  IF ~~ THEN REPLY #1663 /* ~"Wie kommst du denn darauf?"~ */ GOTO 22
  IF ~~ THEN REPLY #1666 /* ~"Was sind denn diese 'Schlüssel', die du erwähnt hast"?~ */ GOTO 23
  IF ~~ THEN REPLY #1667 /* ~"So, da gibt's also diese ganzen Tore in der Stadt... und wo führen die alle hin?"~ */ GOTO 25
  IF ~~ THEN REPLY #1668 /* ~"Vielleicht... na, ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1665 /* ~"Vergiß es. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 22 // from: 21.0 23.2 24.1 25.1
  SAY #1664 /* ~"Na ja... ich meine, du verhältst dich nicht gerade so, als würdest du aus Sigil kommen. Oder?"~ */
  IF ~~ THEN REPLY #7137 /* ~"Was sind denn diese 'Schlüssel', die du erwähnt hast"?~ */ GOTO 23
  IF ~~ THEN REPLY #7138 /* ~"Und wo führen diese ganzen Tore in der Stadt hin?"~ */ GOTO 25
  IF ~~ THEN REPLY #7139 /* ~"Ich hätte noch ein paar Fragen an dich..."~ */ GOTO 5
  IF ~~ THEN REPLY #7140 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 25.0
  SAY #1670 /* ~"Zu jedem Tor gibt es einen passenden Schlüssel, klar? Meistens *erkennst* du ein Tor *erst*, wenn du den Schlüssel dazu hat. Dann kannst du es öffnen, passieren und abhauen. Das Problem ist, daß so gut wie alles ein Tor sein kann. Und dasselbe gilt für die Schlüssel. Ein Schlüssel kann eine Melodie sein, die du vor dich hin summst, der Gedanke an ein Stück Torte oder ein Freudentanz, den du vollführst. Der Schlüssel kann aber auch ein Gegenstand sein, zum beispiel eine Glasscherbe, ein Pflasterstein oder ein abgebrochener Zahn... egal was."~ */
  IF ~~ THEN REPLY #1673 /* ~"Hört sich ganz schön kompliziert an."~ */ GOTO 24
  IF ~~ THEN REPLY #1671 /* ~"Und wo führen diese ganzen Tore in der Stadt hin?"~ */ GOTO 25
  IF ~~ THEN REPLY #1672 /* ~"Vorhin hast du gefragt, ob ich durch eines dieser Tore gekommen wäre. Wieso hast du das gefragt?"~ */ GOTO 22
  IF ~~ THEN REPLY #7141 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #7142 /* ~"Also gut... leb wohl"~ */ GOTO 37
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1674 /* ~"Man gewöhnt sich dran."~ */
  IF ~~ THEN REPLY #1676 /* ~"Und wo führen diese ganzen Tore in der Stadt hin?"~ */ GOTO 25
  IF ~~ THEN REPLY #1675 /* ~"Vorhin hast du gefragt, ob ich durch eine dieser Türen gekommen wäre. Wieso hast du das gefragt?"~ */ GOTO 22
  IF ~~ THEN REPLY #7143 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #7144 /* ~"Macht nichts. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 25 // from: 21.2 22.1 23.1 24.0
  SAY #1677 /* ~Er zuckt mit den Achseln. "Tore können *überall* hinführen, Schleifer. Manche führen sogar nur ein einziges Mal zum selben Ort." Er seufzt. "Du siehst schon: Es gibt viele verschiedene Tore, die praktisch zu fast allen Orten auf den Ebenen führen... *überall* hin. Der Haken dabei ist, daß es so verdammt viele davon gibt, daß man nur schwer das Tor findet, das einen zum gewünschten Ort führt."~ */
  IF ~~ THEN REPLY #1678 /* ~"Und du sagst, es gibt 'Schlüssel' für diese Tore...?"~ */ GOTO 23
  IF ~~ THEN REPLY #1679 /* ~"Vorhin hast du gefragt, ob ich durch eine dieser Türen gekommen wäre. Wieso hast du das gefragt?"~ */ GOTO 22
  IF ~~ THEN REPLY #7145 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #7146 /* ~"Nun gut. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 17.1
  SAY #1680 /* ~"Im Zentrum der Ebenen, soviel ich weiß. Allerdings spreche ich nicht aus Erfahrung." Er zuckt mit den Achseln. "Ich glaube, daß alle Orte mit diesem irgendwie verbunden sind. Und nicht überall ist Sigil so häßlich wie hier."~ */
  IF ~~ THEN REPLY #1681 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1682 /* ~"Nun gut. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 27 // from: 3.6 5.6 7.4
  SAY #1684 /* ~"Was suchst du?" Er blickt verwirrt drein. "Keine Ahnung, wo man so was findet, Schleifer."~ */
  IF ~~ THEN REPLY #2531 /* ~"Ist ja schon gut. Ich hätte ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #2532 /* ~"Gut... leb wohl"~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 3.4 5.4
  SAY #1683 /* ~"Die Herrin von Sigil? Du hast noch nie von ihr *gehört*? Du bist entweder gesegnet oder noch planl... äh, nicht so gut über Sigil informiert." Er lacht leise. "Das Wort der Dame gilt in Sigil als Gesetz." Er überlegt kurz. "Aber sie macht ja nicht viele Worte. Ehrlich gesagt ist sie stumm wie 'n Fisch."~ */
  IF ~~ THEN REPLY #1686 /* ~"Gesetz."~ */ GOTO 29
  IF ~~ THEN REPLY #1687 /* ~"Was kannst du mir sonst noch über diese Dame erzählen?"~ */ GOTO 29
  IF ~~ THEN REPLY #1688 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1689 /* ~"Macht nichts. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #1685 /* ~Er schaut dich mißtrauisch an. "Ich würde nicht allzuviel über sie sprechen, Schleifer... auch nicht durch ihren Schatten gehen oder Loblieder auf sie singen. Verstanden? Aber lassen wir das Thema. Du wärst wirklich beschränkt, wenn du mit deiner Knochenschüssel über die Dame klappern würdest."~ */
  IF ~~ THEN REPLY #1692 /* ~"Na, ist schon gut; ich hätte da aber noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1693 /* ~"Macht nichts. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 30 // from:
  SAY #1690 /* ~"Die Absteige der Staubies. Ein düsteres Loch. Den Ort will ich nicht mal sehen, wenn sie mich ins Totenbuch stecken."~ */
  IF ~~ THEN REPLY #1694 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #1695 /* ~"Verstehe. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 13.0
  SAY #1691 /* ~"Geier. Viele von ihnen haben ihre Absteige auf dem Lumpensammler-Platz. Sie sammeln die Totenbüchler auf, nehmen ihnen alles ab, was etwas Klimper wert ist und verkaufen die Leichen den Staubies in der Leichenhalle."~ */
  IF ~~ THEN REPLY #1696 /* ~"Und warum machen die das?"~ */ GOTO 32
  IF ~~ THEN REPLY #1698 /* ~"Was gibt es im Stock sonst noch an Arbeit?"~ */ GOTO 11
  IF ~~ THEN REPLY #1697 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #7147 /* ~"Vergiß es. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #1699 /* ~"Die Staubies zahlen Klimper für Totenbüchler, die irgendwelche Leute von den Straßen und Gassen auflesen. Die Staubies machen sich's gemütlich, während ein paar Stockbewohner die Leichen für sie aufgabeln. Im Stock gibt's jeden Tag tierisch viele Totenbüchler."~ */
  IF ~~ THEN REPLY #1701 /* ~"Was gibt es im Stock sonst noch an Arbeit?"~ */ GOTO 11
  IF ~~ THEN REPLY #1700 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #7148 /* ~"Ich verstehe. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 3.5 5.5 7.3
  SAY #1702 /* ~"Nie gehört, Schleifer. Wer ist er?"~ */
  IF ~~ THEN REPLY #1703 /* ~"Er ist ein Sammler, so viel ich weiß."~ */ GOTO 34
  IF ~~ THEN REPLY #1705 /* ~"Das versuche ich ja gerade selbst herauszukriegen. Sieh mal, ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1669 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #1707 /* ~Er denkt nach. "Gut, dann ist es mehr als wahrscheinlich, daß er seine Absteige auf dem Lumpensammler Platz hat. Sieh dich doch mal um dort... tagsüber, versteht sich. Nachts ist der Ort zu meiden."~ */
  IF ~~ THEN REPLY #1708 /* ~"Und wo liegt dieser Lumpensammler-Platz nun?"~ */ GOTO 35
  IF ~~ THEN REPLY #1709 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1710 /* ~"Danke für die Warnung. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #1711 /* ~"Das ist nur 'n paar Straßen weg von hier - geh von der Leichenhalle aus so weit nach Westen, wie's geht, dann läufste direkt drauf zu. Aber nimm dich in der Gegend da bloß in acht, Schleifer... Die Sammler da warten nicht immer, bis einer tot ist, bevor sie die Leiche einsammeln, verstehste?"~ */
  IF ~~ THEN REPLY #1704 /* ~"Hab's kapiert, danke. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #1706 /* ~"Versteht sich. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 10.0
  SAY #1712 /* ~"Da hängen nur Straßenräuber und andere Gangster rum, Schleifer. Meide diesen Ort, wenn du nicht willst, daß deine nächste Station die Leichenhalle ist. Die Gasse ist eine riesige Brandruine, war mal 'ne Straße, bevor irgend ein übergeschnappter Magier sie eines Nachts abgefackelt hat. Angeblich haben sie den Kerl geschnappt, ebenfalls verbrannt und dann in der Bar 'Zur Schwelenden Leiche' zur Schau ausgestellt. So geht's im Stock zu."~ */
  IF ~~ THEN REPLY #2533 /* ~"Und wo liegt diese Gasse?"~ */ GOTO 42
  IF ~  False()
~ THEN REPLY #2529 /* ~"Und wo liegt diese Gasse?"~ */ GOTO 42
  IF ~~ THEN REPLY #2530 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #7149 /* ~"Macht nichts. Auf bald."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 3.7 4.3 5.7 6.2 7.6 8.4 9.1 10.2 11.4 12.1 13.6 14.2 15.2 16.4 17.3 18.2 19.2 20.2 21.4 22.3 23.4 24.3 25.3 26.1 28.3 29.1 30.1 31.3 32.2 34.2 35.1 36.3 42.1
  SAY #1713 /* ~"Hm..." Er leckt seine Lippen, als du gehen willst. "Schleifer, ich glaube..." Er blickt dich kurz prüfend an. "Ich glaube, ein so hilfsbereiter Kerl wie ich hat ein paar Kupfermünzen verdient, findest du nicht? So einen wie mich findet man nicht oft... es muß ja nicht viel sein. Nach all diesen Worten würde ich mir nur gern mal wieder die Kehle befeuchten. Na?"~ */
  IF ~~ THEN REPLY #1714 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_5","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #1715 /* ~"Ich laß dich am Leben. Was hältst'n davon?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_2","GLOBALGood",-2)
~ GOTO 40
  IF ~  PartyGoldGT(0)
~ THEN REPLY #1716 /* ~"Stimmt eigentlich." Gib ihm eine Kupfermünze.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 41
  IF ~  PartyGoldGT(4)
~ THEN REPLY #1717 /* ~Gib ihm fünf Kupfermünzen.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",2)
TakePartyGold(5)
~ GOTO 41
  IF ~  PartyGoldGT(9)
~ THEN REPLY #1718 /* ~Gib ihm zehn Kupfermünzen.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",3)
TakePartyGold(10)
~ GOTO 41
  IF ~  PartyGold(0)
~ THEN REPLY #2534 /* ~"Es tut mir leid, aber ich will kein Geld loswerden."~ */ GOTO 38
  IF ~  PartyGoldGT(0)
~ THEN REPLY #2535 /* ~Lüge: "Es tut mir leid, aber ich will kein Geld loswerden."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_3","GLOBALGood",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.5 37.6
  SAY #1719 /* ~Er wirkt enttäuscht. "Na schön... dann mach's gut, Schleifer..." Er entfernt sich murrend.~ */
  IF ~~ THEN REPLY #1723 /* ~"*Was* sagst du?"~ */ GOTO 39
  IF ~~ THEN REPLY #1721 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #1722 /* ~Der Mann blickt erschrocken und erhebt seine Hände. "Nichts, gar nichts, Schleifer! Ich hab' nur vom Wetter geredet! Nicht von dir!" Er scheint bereit, die Flucht zu ergreifen.~ */
  IF ~~ THEN REPLY #1724 /* ~Greif ihn an.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1725 /* ~Laß ihn davonrennen.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #1726 /* ~"Jaja, schon in Ornung, Schleifer." Er lächelt unsicher. "Mach's gut." Er entfernt sich rasch.~ */
  IF ~~ THEN REPLY #1727 /* ~Greif ihn an.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1728 /* ~Laß ihn davonrennen.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.2 37.3 37.4
  SAY #1729 /* ~Er blickt sich um um zu sehen, ob jemand die Übergabe beobachtet hat. Dann läßt er den Klimper in seiner Robe verschwinden. "Besten Dank, Schleifer! Möge der Schatten der Dame an dir vorüberziehen!"~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #1730 /* ~"Wart doch mal... Dame? Was meinst du?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",0)
~ GOTO 43
  IF ~~ THEN REPLY #7150 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1
  SAY #7127 /* ~"Das ist im Südwesten der Leichenhalle, und gerade südlich vom Staubfänger, dieser Staubiebar."~ */
  IF ~~ THEN REPLY #7151 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #7152 /* ~"Danke. Leb wohl."~ */ GOTO 37
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #7128 /* ~"Die Herrin von Sigil? Du hast noch nie von ihr *gehört*? Du bist entweder gesegnet oder noch planl... äh, nicht so gut über Sigil informiert." Er lacht leise. "Das Wort der Dame gilt in Sigil als Gesetz." Er überlegt kurz. "Aber sie macht ja nicht viele Worte. Ehrlich gesagt ist sie stumm wie 'n Fisch."~ */
  IF ~~ THEN REPLY #7153 /* ~"Gesetz?"~ */ GOTO 44
  IF ~~ THEN REPLY #7154 /* ~"Was kannst du mir sonst noch über diese Dame erzählen?"~ */ GOTO 44
  IF ~~ THEN REPLY #7155 /* ~"Nun gut. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #7129 /* ~Er schaut dich mißtrauisch an. "Ich würde nicht allzuviel über sie sprechen, Schleifer... auch nicht durch ihren Schatten gehen oder Loblieder auf sie singen. Verstanden? Aber lassen wir das Thema. Du wärst wirklich beschränkt, wenn du mit deiner Knochenschüssel über die Dame klappern würdest."~ */
  IF ~~ THEN REPLY #7156 /* ~"Dann leb wohl."~ */ EXIT
END
