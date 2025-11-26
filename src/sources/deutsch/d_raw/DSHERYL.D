// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHERYL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHERYL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64681 /* ~Du erblickst eine hübsche junge Frau in zerfetzten Kleidern. Mit besorgter Miene geht sie unruhig hin und her. Sie nimmt dich nicht zur Kenntnis, als du dich ihr näherst.~ */
  IF ~~ THEN REPLY #64682 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #64683 /* ~Beachte sie nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64684 /* ~Sie zuckt zusammen, als du sie grüßt, und dreht sich um, um dich anzusehen. Du siehst, wie ihre Augen über deine zahlreichen Narben gleiten, und ihr Ausdruck wird noch besorgter. "Äh... Hallo, Schleifer. Kann ich dir irgendwie helfen?" ~ */
  IF ~~ THEN REPLY #64685 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64686 /* ~"Du scheinst mir so aufgeregt. Stimmt etwas nicht?"~ */ GOTO 13
  IF ~~ THEN REPLY #64687 /* ~"Nein, eigentlich nicht. Ich glaube, ich gehe jetzt lieber. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.2 8.2 11.1 12.1 13.1 20.0 23.0 29.1 30.1 31.0
  SAY #64688 /* ~"Fragen... Ich glaube, ich kann dir helfen.." Sie wartet darauf, daß du etwas sagst.~ */
  IF ~~ THEN REPLY #64689 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #64690 /* ~"Was machst du hier?"~ */ GOTO 4
  IF ~~ THEN REPLY #64691 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 5
  IF ~~ THEN REPLY #64692 /* ~"Du scheinst mir so aufgeregt. Stimmt etwas nicht?"~ */ GOTO 13
  IF ~  Global("Mention_Catacombs","GLOBAL",1)
~ THEN REPLY #64693 /* ~"Du hast die Katakomben der Weinenden Steine erwähnt. Was weißt du darüber?"~ */ GOTO 29
  IF ~~ THEN REPLY #64694 /* ~"Vergiß es. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64695 /* ~"Sheryl..." Sie scheint etwas abwesend zu sein, während sie mit dir redet. "Ich heiße Sheryl."~ */
  IF ~~ THEN REPLY #64696 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64697 /* ~"Aha. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #64698 /* ~Sie zögert, bevor sie antwortet. "Nichts... Gar nichts. Ich hab' nur..." Sie zuckt die Schultern und sieht weg. Du glaubst, daß sie irgend etwas verschweigt.~ */
  IF ~~ THEN REPLY #64699 /* ~"Hmm. Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64700 /* ~"Also, ich geh dann mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #64701 /* ~"Bist du neu hier?" Sie sieht dich fragend an und seufzt dann. "Natürlich bist du das... Tut mir leid, was würdest du gerne wissen?"~ */
  IF ~~ THEN REPLY #64702 /* ~"Ich suche jemanden, der Pharod heißt. Weißt du, wo ich ihn finden kann?"~ */ GOTO 6
  IF ~~ THEN REPLY #64703 /* ~"Kannst du mir irgendwas über diesen Ort erzählen?"~ */ GOTO 12
  IF ~~ THEN REPLY #64704 /* ~"Hmm. Macht nichts. Ich habe noch andere Fragen...."~ */ GOTO 2
  IF ~~ THEN REPLY #64705 /* ~"Vergiß es. ich muß jetzt los. Leb wohl. "~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #64706 /* ~"Pharod..." Als du Pharod erwähnst, zuckt sie leicht zusammen, überspielt es aber schnell. "Ich habe von ihm gehört... Bist du ein Freund von ihm?"~ */
  IF ~~ THEN REPLY #64707 /* ~"Ja, wir sind alte Freunde."~ */ GOTO 7
  IF ~~ THEN REPLY #64708 /* ~"Nein, ich will nur... mit ihm reden."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64709 /* ~Sie runzelt die Stirn und nickt. "Nun, du kannst deinen *Freund* in nördlicher Richtung finden. Ich muß mich jetzt verabschieden. Leb wohl." Sie ignoriert alle weiteren Versuche, mit ihr zu sprechen.~ */
  IF ~~ THEN REPLY #64710 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64711 /* ~Sie starrt dich eine Weile an und lächelt dann. "Ich verstehe... Nun, er ist nördlich von hier. Suche nach dem Durchgang mit den beiden Schlägern davor. Ich glaube, dort findest du ihn."~ */
  IF ~~ THEN REPLY #64712 /* ~"Ich habe den Eindruck, du magst Pharod nicht besonders."~ */ GOTO 9
  IF ~~ THEN REPLY #64713 /* ~"Gibt es sonst noch etwas, das du mir über diesen Ort sagen kannst?"~ */ GOTO 12
  IF ~~ THEN REPLY #64714 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64715 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64716 /* ~"Nein, das tue ich nicht." Sie schweigt einen Moment und seufzt dann. "Er hat sich hier als eine Art *Baron* etabliert. Alle machen, was er sagt, alle zahlen ihm Tribut. Wenn man es nicht tut..." Sie zuckt die Schultern.~ */
  IF ~~ THEN REPLY #64717 /* ~"Tribut? Von was?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64718 /* ~Sie sieht sich nervös um und neigt sich dann vor, um dir zuzuflüstern: "Südöstlich von hier findest du die Katakomben der Weinenden Steine. Pharod schickt seine Sammler dorthin, damit sie den Toten alle Schätze abnehmen, die sie haben. Er bekommt einen ziemlich großen Anteil von allem, was gefunden wird...." Sie richtet sich auf und hält inne.~ */
  IF ~~ THEN REPLY #64719 /* ~"Erzähl weiter."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64720 /* ~Sie zuckt die Schultern. "Pharod wird reich, seine Sammler kommen zurecht... gerade so. Es ist doch überall dieselbe Geschichte. Die Reichen werden reicher, die Armen werden ärmer."~ */
  IF ~~ THEN REPLY #64721 /* ~"Gibt es sonst noch etwas, das du mir über diesen Ort sagen kannst?"~ */ GOTO 12
  IF ~~ THEN REPLY #64722 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64723 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1 8.1 11.0
  SAY #64724 /* ~"Eigentlich nicht. Paß auf, was du tust. Sei vorsichtig damit, jemanden deinen Freund zu nennen. Das ist alles."~ */
  IF ~~ THEN REPLY #64725 /* ~"Ich suche jemanden, der Pharod heißt. Weißt du, wo ich ihn finden kann?"~ */ GOTO 6
  IF ~~ THEN REPLY #64726 /* ~"Aha. Ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64727 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.3
  SAY #64728 /* ~Sie scheint zunächst nur widerwillig mit dir zu sprechen, dann spricht sie sehr ernst. "Mein Vater, Arkin... Er ist verschollen, und ich weiß nicht, was ich tun soll. Ich bin am Ende meiner Weisheit."~ */
  IF ~~ THEN REPLY #64729 /* ~"Erzähl mir, was passiert ist. Vielleicht kann ich helfen."~ */ DO ~SetGlobal("Mention_Catacombs","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #64730 /* ~"Hmm. Ich habe noch andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64731 /* ~"Ich muß weiter, auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 24.1 25.1
  SAY #64732 /* ~"Südöstlich von hier befinden sich die Katakomben der Weinenden Steine. Die meisten der Sammler, wie mein Vater, gehen da hin und..." Sie sieht beschämt aus. "Naja, sie plündern die Schätze der Toten. Bei einem dieser Beutezüge fand mein Vater eine Notiz oder so, in der von Gruften die Rede war, die nur durch Portale betreten werden können..." Sie hält inne.~ */
  IF ~~ THEN REPLY #64733 /* ~"Erzähl weiter."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64734 /* ~"Mein Vater dachte, daß diese Gruften wohl für besondere Leute waren.... Die Reichen oder Adligen oder... wer weiß. Warum sonst sollte man sie nur durch Portale betreten können? Auf jeden Fall sind diese Gruften auch Fallen für potentielle Räuber..."~ */
  IF ~~ THEN REPLY #64735 /* ~"Eine Falle? Wie denn das?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64736 /* ~"Sie können nur durch ein Portal betreten werde, und daher führt der einzige Weg hinaus ebenfalls durch das Portal. Selbst wenn jemand den Schlüssel fände, um das Eingangsportal zu öffnen, hätte er noch lange nicht den Schlüssel für das Ausgangsportal. Sie macht eine Kunstpause.~ */
  IF ~~ THEN REPLY #64737 /* ~"Dann denkst du also, daß dein Vater in einer dieser Gruften eingesperrt ist?"~ */ GOTO 17
  IF ~~ THEN REPLY #64738 /* ~"Hat dein Vater die Schlüssel gefunden?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64739 /* ~Sie hält inne und runzelt gedankenverloren die Stirn. "Ich bin mir nicht sicher, aber es kann schon sein. Er war sehr aufgeregt über die Aussicht, was in so einer Gruft zu holen wäre. Er hat die Portalschlüssel gesucht."~ */
  IF ~~ THEN REPLY #64740 /* ~"Hat er die Schlüssel gefunden?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #64741 /* ~"Das wäre möglich. Er sagte, er würde sich hier in der Stadt mit einer Hexe namens Ulthera treffen. Er wollte sie fragen, ob sie *prophezeien* könne, was die Ein- und Ausgangsschlüssel der Portale wären..."~ */
  IF ~~ THEN REPLY #64742 /* ~"Ist es möglich, das zu tun?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64743 /* ~Sie seufzt. "Ich weiß es nicht. Es interessiert mich eigentlich auch nicht. Ich befürchte nur, daß Ulthera ihm den Eingangsschlüssel prophezeit hat...  und ihm dann den falschen Ausgangsschlüssel genannt hat. Dann konnte sie sein Geld nehmen und mußte sich keine Sorgen machen, daß er je zurückkommen und etwas zurückfordern würde. Sie konnte in aller Ruhe abwarten, bis er starb, und dann selbst die Gruft plündern."~ */
  IF ~~ THEN REPLY #64744 /* ~"Hast du mit ihr darüber gesprochen?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64745 /* ~Sie sieht dich beschämt an und wendet sich dann ab. "Nun... ja. Ich befürchte, ich habe ihr mein Anliegen nicht sehr taktvoll vorgetragen und sie verärgert. Jetzt redet sie nicht mehr mit mir." Sie sieht dich voller Hoffnung an. "Wirst du sie aufsuchen und für mich mit ihr sprechen?"~ */
  IF ~~ THEN REPLY #64746 /* ~"Hmm. Ich werde darüber nachdenken, aber laß mich dich noch etwas Anderes fragen..."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #64747 /* ~"Nein, da mische ich mich lieber nicht ein."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",2)
~ GOTO 21
  IF ~~ THEN REPLY #64748 /* ~"Ja, ich werde dir helfen. Sag mir, wo ich sie finden kann."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Eine junge Frau namens Sheryl macht sich Sorgen um ihren vermißten Vater. Sie glaubt, daß er vielleicht in einer Krypta gefangen sein könnte, die man nur über ein Portal erreichen kann. Sheryl möchte, daß ich mit einer Hexe namens Ulthera spreche, von der sie glaubt, daß sie ihrem Vater den Schlüssel zu dem Portal gegeben hat. Ich habe zugestimmt, ihr zu helfen.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY #64749 /* ~Sie runzelt die Stirn. "Ich verstehe. Nun, danke, daß du mir zugehört hast. Es war schön, mit jemandem zu sprechen. Verzeih mir, aber ich muß jetzt gehen." ~ */
  IF ~~ THEN REPLY #64750 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 25.2
  SAY #64751 /* ~Sie entspannt sich sichtlich und lächelt dich an. "Ich danke dir so sehr. Ich kann dir gar nicht sagen, was das für mich bedeutet... Die Hexe Ulthera läuft hier meistens durch die Stadt. Sie hat, soviel ich weiß, keinen Wohnsitz. Bitte finde sie und frage sie nach meinem Vater."~ */
  IF ~~ THEN REPLY #64752 /* ~"Na schön, dann leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 28 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #64753 /* ~Du erblickst Sheryl. Sie geht mit besorgter Miene unruhig hin und her. Sie lächelt, als du näherkommst. "Da bist du ja wieder, Schleifer. Was gibt's Neues?"~ */
  IF ~~ THEN REPLY #64754 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64755 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 25 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #64756 /* ~Du erblickst Sheryl. Sie geht mit besorgter Miene unruhig hin und her. Sie lächelt, als du näherkommst. "Da bist du ja wieder, Schleifer. Hast du dir noch mal überlegt, ob du mir helfen willst, meinen Vater zu finden?"~ */
  IF ~~ THEN REPLY #64757 /* ~"Nein, ich denke noch darüber nach. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #64758 /* ~"Was war nochmal dein Problem? Ich habe es wohl vergessen."~ */ GOTO 14
  IF ~~ THEN REPLY #64759 /* ~"Ja, ich habe darüber nachgedacht und ich werde versuchen, dir zu helfen."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Eine junge Frau namens Sheryl macht sich Sorgen um ihren vermißten Vater. Sie glaubt, daß er vielleicht in einer Krypta gefangen sein könnte, die man nur über ein Portal erreichen kann. Sheryl möchte, daß ich mit einer Hexe namens Ulthera spreche, von der sie glaubt, daß sie ihrem Vater den Schlüssel zu dem Portal gegeben hat. Ich habe zugestimmt, ihr zu helfen.~ */ GOTO 22
END

IF WEIGHT #2 /* Triggers after states #: 26 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #64760 /* ~Du erblickst Sheryl. Sie geht mit besorgter Miene unruhig hin und her. Sie lächelt, als du näherkommst. "Da bist du ja wieder, Schleifer. Ich weiß, daß du dich schon einmal geweigert hast, mir zu helfen, aber würdest du es dir nicht noch einmal überlegen und mir helfen, meinen Vater zu finden?"~ */
  IF ~~ THEN REPLY #64761 /* ~"Nein, da mische ich mich lieber nicht ein. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #64762 /* ~"Was war nochmal dein Problem? Ich habe es wohl vergessen."~ */ GOTO 14
  IF ~~ THEN REPLY #64763 /* ~"Ja, ich habe darüber nachgedacht und ich werde versuchen, dir zu helfen."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",3)
~ JOURNAL #64583 /* ~Eine junge Frau namens Sheryl macht sich Sorgen um ihren vermißten Vater. Sie glaubt, daß er vielleicht in einer Krypta gefangen sein könnte, die man nur über ein Portal erreichen kann. Sheryl möchte, daß ich mit einer Hexe namens Ulthera spreche, von der sie glaubt, daß sie ihrem Vater den Schlüssel zu dem Portal gegeben hat. Ich habe zugestimmt, ihr zu helfen.~ */ GOTO 22
END

IF WEIGHT #1 /* Triggers after states #: 28 even though they appear after this state */
~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #64764 /* ~Du erblickst Sheryl. Sie geht mit besorgter Miene unruhig hin und her. Sie lächelt, als du näherkommst. "Da bist du ja wieder, Schleifer. Hast du meinen Vater schon gefunden?"~ */
  IF ~  !PartyHasItem("Arkring")
~ THEN REPLY #64765 /* ~"Nein, aber ich arbeite daran. Leb wohl."~ */ EXIT
  IF ~  PartyHasItem("Arkring")
~ THEN REPLY #64766 /* ~"Ich habe diesen Ring an einem Leichnam in in einer Gruft gefunden, die nur durch ein Portal zugänglich war. Vielleicht gehört er deinem Vater..."~ */ DO ~SetGlobal("Sheryl_Quest","GLOBAL",4)
DestroyItemObject("Arkring",Protagonist,TRUE)
~ JOURNAL #64786 /* ~Ich habe an einer Leiche in einer Krypta, die nur über ein Portal erreicht werden konnte, einen Ring gefunden. Ich habe den Ring Sheryl gegeben, und sie sagt, daß er ihrem Vater gehört hat.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #64767 /* ~Sheryl nimmt den Ring entgegen, und ihre Augen füllen sich mit Tränen. Schnell wischt sie sie weg und lächelt dich gezwungen an. "Der Ring meines Vaters... Ich danke Dir, Schleifer. Ich könnte nicht in der Ungewißheit leben, nicht zu wissen, was mit ihm geschehen ist. Jetzt weiß ich zumindest, daß ich ihn in meinem Geiste zur Ruhe betten kann. Ich kann dir deine Güte nicht vergelten, außer mit meiner Dankbarkeit."~ */
  IF ~~ THEN REPLY #64768 /* ~"Deine Dankbarkeit reicht mir, Sheryl, leb wohl."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sheryl_Quest","GLOBAL",4)
~ THEN BEGIN 28 // from:
  SAY #64769 /* ~Du erblickst Sheryl. Sie blickt auf, als du näherkommst, und lächelt dich an. "Hallo, Schleifer. Was kann ich für dich tun?~ */
  IF ~~ THEN REPLY #64770 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.4
  SAY #64771 /* ~"Die Katakomben... Paß auf, wenn du dort hinuntergehst. Ich war selbst noch nie dort, aber ich habe gehört, daß ein paar seltsame Gestalten in diesen Gruften herumspazieren."~ */
  IF ~~ THEN REPLY #64772 /* ~"Was für seltsame Gestalten?"~ */ GOTO 30
  IF ~~ THEN REPLY #64773 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64774 /* ~"Ich gehe jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64775 /* ~"Nun ja, da sind zunächst die Untoten. Meistens Zombies und Skelette. Dann gibt es die gehörnten Eidechsen. Die sollen fürchterliche Gegner sein. Oh, und natürlich die fliegenden Köpfe. Auf die solltest du achtgeben."~ */
  IF ~~ THEN REPLY #64776 /* ~"Fliegende Köpfe?"~ */ GOTO 31
  IF ~~ THEN REPLY #64777 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64778 /* ~"Ich gehe jetzt. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64780 /* ~Sie zuckt die Schultern. "Ich weiß ja, daß es verrückt klingt. Ich habe ja schon gesagt, daß ich diese Gestalten nie selbst gesehen habe, aber ich habe mit Sammlern gesprochen, die sie gesehen haben sollen. Einer hat von diesen fliegenden Köpfen erzählt."~ */
  IF ~~ THEN REPLY #64781 /* ~"Ich habe da noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #64782 /* ~"Ich gehe jetzt. Leb wohl."~ */ EXIT
END
