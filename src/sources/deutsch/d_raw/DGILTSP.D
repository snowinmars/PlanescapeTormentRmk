// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILTSP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILTSP~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #45541 /* ~Du siehst einen wichtigtuerischen Mann, der herumschreit und sich aufführt, als würde gleich Krieg ausbrechen oder als würde ihm etwas schwer im Magen liegen, oder... Egal wie: Jedenfalls kann er vor lauter Aufregung gar nicht mehr normal reden.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 483
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #45542 /* ~Du siehst einen wichtigtuerischen Mann, der herumschreit und sich aufführt, als würde gleich Krieg ausbrechen oder als würde ihm etwas schwer im Magen liegen, oder... Egal wie: Jedenfalls kann er vor lauter Aufregung gar nicht mehr normal reden.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 484
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 2 // from:
  SAY #45543 /* ~Du siehst einen wichtigtuerischen Mann, der herumschreit und sich aufführt, als würde gleich Krieg ausbrechen oder als würde ihm etwas schwer im Magen liegen, oder... Egal wie: Jedenfalls kann er vor lauter Aufregung gar nicht mehr normal reden.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 485
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 3 // from:
  SAY #45544 /* ~Du siehst einen wichtigtuerischen Mann, der herumschreit und sich aufführt, als würde gleich Krieg ausbrechen oder als würde ihm etwas schwer im Magen liegen, oder... Egal wie: Jedenfalls kann er vor lauter Aufregung gar nicht mehr normal reden. Er plappert so abartig schnell, daß man ihn nur mit Müh und Not versteht. "He, du da! Du siehst aus, als könntest du was gebrauchen! Ich weiß noch nicht genau, was, aber gib mir nur etwas Zeit - mir fällt bestimmt gleich was ein!"~ */
  IF ~~ THEN REPLY #45545 /* ~"Was verkaufst du da?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45546 /* ~"Ich hätte zuerst ein paar Fragen an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #45547 /* ~"Ich möchte dir etwas verkaufen."~ */ GOTO 6
  IF ~~ THEN REPLY #45548 /* ~"Danke, daß du dir Zeit genommen hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45549 /* ~Er redet so abartig schnell, daß man ihn nur mit Müh und Not versteht. "He, du da! Du siehst aus, als könntest du was gebrauchen! Ich weiß noch nicht genau, was, aber gib mir nur etwas Zeit - mir fällt bestimmt gleich was ein!"~ */
  IF ~~ THEN REPLY #45550 /* ~"Was verkaufst du da?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45551 /* ~"Ich hätte zuerst ein paar Fragen an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #45552 /* ~"Ich möchte dir etwas verkaufen."~ */ GOTO 6
  IF ~~ THEN REPLY #45553 /* ~"Danke, daß du dir Zeit genommen hast. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 6.8 7.1 8.2 9.0 9.1 10.0 11.1 12.3 14.3 15.1 16.1 17.0 18.2 19.2 21.0 22.1 23.0 24.0 25.0 26.0 27.0
  SAY #45554 /* ~"Mit dem größten Vergnügen, mein Freund! Aber Zeit ist Geld - also mach's kurz!" ~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #45555 /* ~"Ich such einen schwebenden Schädel, den man mir gestohlen hat. Weißt du, wo ich ihn finden könnte?"~ */ GOTO 11
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #45556 /* ~"Erzähl mir noch was über diesen Herrn der Knochen..."~ */ GOTO 14
  IF ~~ THEN REPLY #45557 /* ~"Wer bist du, und was tust du?"~ */ GOTO 18
  IF ~~ THEN REPLY #45558 /* ~"Was ist das für ein Ort? Was kannst du mir über dieses Gebiet erzählen?"~ */ GOTO 19
  IF ~~ THEN REPLY #45559 /* ~"Was kannst du mir über die Göttermenschen erzählen?"~ */ GOTO 20
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45560 /* ~"Gibt es vielleicht irgendetwas, das ich für dich erledigen könnte?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45561 /* ~"Der Handzettel ist gedruckt."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~Ich habe Goldspore erzählt, daß ich Gesetzesspötter Penn seinen Handzettel gegeben habe.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45562 /* ~"Die Nachricht wurde überbracht."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~Ich habe Goldspore erzählt, daß ich Gesetzesspötter Penn seine Nachricht gegeben habe.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45563 /* ~"Der Zettel wurde in der Schwelenden Leiche angeschlagen."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~Ich habe Goldspore erzählt, daß ich seine Nachricht in der Bar Zur Schwelenden Leiche angeschlagen habe.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45564 /* ~"Hast du sonst noch was, das ich für dich tun könnte?"~ */ GOTO 27
  IF ~~ THEN REPLY #45565 /* ~"Was verkaufst du da?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45566 /* ~"Ich möchte dir etwas verkaufen."~ */ GOTO 6
  IF ~~ THEN REPLY #45567 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.11 7.2 18.0
  SAY #45568 /* ~"Dann bin ich genau der richtige für dich! Ich kaufe und verkaufe! Ich kann fast alles besorgen! Was hast du denn anzubieten?"~ */
  IF ~  PartyHasItem("S_Limlim")
Global("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45569 /* ~"Ich habe ein Lim-Lim aus Stein. Was zahlst du mir dafür?"~ */ GOTO 8
  IF ~  PartyHasItem("S_Limlim")
GlobalGT("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45570 /* ~"Ich habe ein Lim-Lim aus Stein. Was zahlst du mir dafür?"~ */ GOTO 9
  IF ~~ THEN REPLY #45571 /* ~"Laß uns was tauschen."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45572 /* ~"Hast du irgendwelche Arbeiten, die erledigt werden müssen?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45573 /* ~"Der Handzettel ist gedruckt."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~Ich habe Goldspore erzählt, daß ich Gesetzesspötter Penn seinen Handzettel gegeben habe.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45574 /* ~"Die Nachricht wurde überbracht."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~Ich habe Goldspore erzählt, daß ich Gesetzesspötter Penn seine Nachricht gegeben habe.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45575 /* ~"Der Zettel wurde in der Schwelenden Leiche angeschlagen."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~Ich habe Goldspore erzählt, daß ich seine Nachricht in der Bar Zur Schwelenden Leiche angeschlagen habe.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45576 /* ~"Hast du sonst noch was, das ich für dich tun könnte?"~ */ GOTO 27
  IF ~~ THEN REPLY #45577 /* ~"Im Moment nichts. Aber beantworte mir doch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45578 /* ~"Im Moment nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #45579 /* ~"Sieh mal einer an! Du schon wieder! Dann muß ich wohl etwas für dich tun können, was mein Bruder Deran nicht bieten kann, was? Ha!"~ */
  IF ~~ THEN REPLY #45580 /* ~"Ich möchte etwas kaufen."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45581 /* ~"Ich hätte ein paar Fragen an dich."~ */ GOTO 5
  IF ~~ THEN REPLY #45926 /* ~"Reden wir über Geschäfte."~ */ GOTO 6
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45583 /* ~"Was zahlst du mir für meine Dienste?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45584 /* ~"Der Handzettel ist gedruckt."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45585 /* ~"Die Nachricht wurde überbracht."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45586 /* ~"Der Zettel wurde in der Schwelenden Leiche angeschlagen."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45587 /* ~"Hast du sonst noch was, das ich für dich tun könnte?"~ */ GOTO 27
  IF ~~ THEN REPLY #45588 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45589 /* ~Seine Miene wird ernst. "Wie wär's mit einem geheimen Erkennungswort, wenn ich dir auch sage, wo du es anwenden kannst? Na?"~ */
  IF ~~ THEN REPLY #45590 /* ~"Sag mir das Erkennungswort."~ */ DO ~SetGlobal("Know_An_Pass","GLOBAL",1)
TakePartyItemNum("S_Limlim",1)
~ GOTO 10
  IF ~~ THEN REPLY #45591 /* ~"Kannst du mir statt dessen vielleicht etwas Geld geben?"~ */ GOTO 9
  IF ~~ THEN REPLY #45592 /* ~"Interessiert mich gerade beides nicht. Aber beantworte mir doch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #45593 /* ~"Kein Interesse. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.1
  SAY #45594 /* ~"Ich biete dir fünfundsiebzig Münzen. Entscheide dich, mein Freund!"~ */
  IF ~~ THEN REPLY #45595 /* ~"Ich nehm dein Angebot an. Und beantworte mir noch ein paar Fragen..."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ GOTO 5
  IF ~~ THEN REPLY #45596 /* ~"Ich laß es bleiben. Beantworte mir noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45597 /* ~"Ich nehm dein Angebot an. Leb wohl."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ EXIT
  IF ~~ THEN REPLY #45598 /* ~"Ich laß es bleiben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #45614 /* ~Geschickt entreißt er dir das verkalkte Lim-Lim und flüstert dir ins Ohr: "Das Erkennungswort lautet 'Eklipse'. Es kann dir Zutritt zum Lager im Gewölbe der Neunten Welt verschaffen, wo sich die Anarchisten rumtreiben. Nenne ihnen das Erkennungswort - aber sag bloß nicht, von wem du es weißt!"~ */
  IF ~~ THEN REPLY #45616 /* ~"'Eklipse'. OK. Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45622 /* ~"'Eklipse.' OK. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #45625 /* ~"Aha! Einen Schädel also? Meines Wissens gibt es da nur einen Markt, wo man sowas kriegen könnte! Aber wo er ist", er senkt die Stimme, "verrat ich dir nur, wenn..."~ */
  IF ~~ THEN REPLY #45627 /* ~"Wenn?"~ */ GOTO 12
  IF ~~ THEN REPLY #45628 /* ~"Vergiß es. Beantworte mir noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45630 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45632 /* ~"Das kann ich dir nicht verraten, mein Freund, denn es würde dein Leben in Gefahr bringen. Tut mir leid! Das Leben ist viel zu kostbar - schmeiß es nicht für so eine Belanglosigkeit weg!"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #45633 /* ~"Würden zehn Münzen dich umstimmen?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~  PartyGoldLT(10)
~ THEN REPLY #45637 /* ~"Und wenn ich dir den Inhalt meiner Geldbörse geben würde?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45640 /* ~"Und wenn ich dich bedrohen würde?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45642 /* ~"Dann vergiß es. Beantworte mir noch ein paar Fragen."~ */ GOTO 5
  IF ~~ THEN REPLY #45644 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #45647 /* ~"Das würde reichen", sagt er. "Hör mir mal gut zu." Er beugt sich zu dir vor und flüstert dir laut ins Ohr. "Ich kenne nur einen Mann, der den Mut hat, mit solchen okkultistischen Obskuritäten zu handeln, und mit ihm ist nicht zu spaßen! Er ist die Gefahr in Person, und die meisten trauen sich kaum, seinen Namen auszusprechen! Ich spreche von..." Er zischt melodramatisch. "... Lothar, dem Herrn der Knochen!"~ */
  IF ~~ THEN REPLY #45650 /* ~"Wen?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 5.1 13.0
  SAY #45652 /* ~"Der Herr der Knochen. Gebieter über die Knochen der Nacht! Der Bibliothekar der unheimlichsten Bibliothek auf dieser Seite von Sets Heimat! In seinen Regalen stehen lauter Schädel, die dem hartherzigen Lothar und allen, die ihren Anblick ertragen, ihre Geheimnisse zuflüstern. Man erfährt dort so manches... wenn man nicht vorher *verrückt* wird!"~ */
  IF ~~ THEN REPLY #45653 /* ~"Würdest du vielleicht mal zur Sache kommen?"~ */ GOTO 15
  IF ~~ THEN REPLY #45655 /* ~"Und wo ist dieser Ort?"~ */ GOTO 16
  IF ~~ THEN REPLY #45656 /* ~"Was fängt er mit diesen Schädeln an?"~ */ GOTO 17
  IF ~~ THEN REPLY #45658 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45659 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #45660 /* ~Er räuspert sich. "Tschuldigung. Ich hab ja nur versucht, es etwas spannender für dich zu machen und etwas Würze reinzubringen. Wenn du auf den Turm von Sigil zugehst, stößt du *vielleicht* auf die Brandruine eines Gebäudes, und *möglicherweise* findest du dort eine Leiter, die aus menschlichen Sehnen gewunden ist - oder vielleicht ist sie einfach aus Holz. Sie führt tief, tief, tief hinab in das Herz Sigils. Dort *könntest* du Lothar höchstpersönlich finden!"~ */
  IF ~~ THEN REPLY #45661 /* ~"Was fängt er mit diesen Schädeln an?"~ */ GOTO 17
  IF ~~ THEN REPLY #45662 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45663 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #45664 /* ~"Wenn du auf den Turm von Sigil zugehst, findest du dort *vielleicht* ein verfallenes Gebäude. *Möglicherweise* befindet sich dort eine Knochenleiter, die tief, tief, tief hinab in das Herz Sigils führt. Diese Leiter *könnte* dich zum Salon der Schädel und zu Lothar höchstselbst führen!"~ */
  IF ~~ THEN REPLY #45665 /* ~"Was fängt er mit diesen Schädeln an?"~ */ GOTO 17
  IF ~~ THEN REPLY #45666 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45667 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.0 16.0
  SAY #45668 /* ~"Man sagt ja immer, Tote würden keine Geschichten erzählen... Aber in Lothars Salon der Schädel verraten die Toten ihre Geheimnisse allen willigen Zuhörern! Je mehr Tote, desto mehr Geschichten, desto mehr Plausch, und je mehr Plausch... na ja, desto klarer der Blick für die Seele des Multiversums!" Zur Untermalung seiner Worte zieht er seine Augenbrauen ein paar Mal hoch.~ */
  IF ~~ THEN REPLY #45669 /* ~"::seufz:: Danke. Ich hätte da noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45670 /* ~"::seufz:: Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.2
  SAY #45671 /* ~"Ich? Ich bin Goldspore, der Auktionator! Ich kaufe und verkaufe. Und ich biete Dienstleistungen und Arbeit an!"~ */
  IF ~~ THEN REPLY #45672 /* ~"Ich möchte etwas verkaufen."~ */ GOTO 6
  IF ~~ THEN REPLY #45673 /* ~"Ich möchte etwas kaufen."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45674 /* ~"Wie wär's mit ein paar Fragen?"~ */ GOTO 5
  IF ~~ THEN REPLY #45675 /* ~"Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #45676 /* ~"Das hier? Das ist der Untere Bezirk. Hier ist die Heimat der Göttermenschen und der Standort der Großen Gießerei. Und noch vieles mehr! Wir haben hier alles, was du brauchst!"~ */
  IF ~~ THEN REPLY #45677 /* ~"Was kannst du mir über die Göttermenschen erzählen?"~ */ GOTO 20
  IF ~~ THEN REPLY #45678 /* ~"Was kannst du mir über die Gießerei erzählen?"~ */ GOTO 22
  IF ~~ THEN REPLY #45679 /* ~"Beantworte mir noch ein paar Fragen~ */ GOTO 5
  IF ~~ THEN REPLY #45680 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.4 19.0 22.0
  SAY #45681 /* ~"Ach, das sind Menschen, denen ich mich sehr verbunden fühle. Sie sagen, daß jeder sein eigener Gott ist, und daß wir in unserem Geist alle potentiell göttlich veranlagt sind. Vom ärmsten Bettler bis zum mächtigsten König - wir alle nähren einen Gott in unserer Brust! Gibt es eine schönere Vorstellung als diese?"~ */
  IF ~~ THEN REPLY #45682 /* ~"Das Harmonium."~ */ GOTO 21
  IF ~~ THEN REPLY #45683 /* ~"Die Anarchisten."~ */ GOTO 21
  IF ~~ THEN REPLY #45684 /* ~"Die Sinnsaten."~ */ GOTO 21
  IF ~~ THEN REPLY #45685 /* ~"Die Staubmenschen."~ */ GOTO 21
  IF ~~ THEN REPLY #45686 /* ~"Die Gnadentöter."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4
  SAY #45687 /* ~"Ganz schön schlagfertig!" Er lacht.~ */
  IF ~~ THEN REPLY #45688 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45689 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #45690 /* ~"Für mich ist die Gießerei ein Ort der unbegrenzten Möglichkeiten! Hier kann jeder zeigen, wie hart er ist. Hier werden Menschen geformt und ins Wasser des Wissens getaucht oder mit dem Hammer der Wahrheit bearbeitet!" Dann sagt er in normalem Ton: "Das jedenfalls behaupten die Göttermenschen."~ */
  IF ~~ THEN REPLY #45691 /* ~"Was kannst du mir über die Göttermenschen erzählen?"~ */ GOTO 20
  IF ~~ THEN REPLY #45692 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 5
  IF ~~ THEN REPLY #45693 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 6.3 7.3
  SAY #45694 /* ~"Aber sicher, mein Freund! Ich hätte da eine kleine Aufgabe, die du für mich erledigen könntest! Du kriegst fünfzig Münzen von mir, wenn du diesen Handzettel in die Druckerei bringst und Gesetzesspötter Penn bittest, mir ein paar hundert Abzüge davon zu machen! Hier, bitte!" Er drückt dir ein zerknülltes Stück Papier in die Hand.~ */
  IF ~~ THEN REPLY #45695 /* ~"OK. Ich hätte noch ein paar Fragen."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Goldspore, der Auktionator, hat mich beauftragt, dem Drucker Gesetzesspötter Penn einen Handzettel zu überbringen. Als Belohnung erhalte ich fünfzig Kupferstücke.~ */ GOTO 5
  IF ~~ THEN REPLY #45696 /* ~"Dann bedank ich mich. Leb wohl."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Goldspore, der Auktionator, hat mich beauftragt, dem Drucker Gesetzesspötter Penn einen Handzettel zu überbringen. Als Belohnung erhalte ich fünfzig Kupferstücke.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6 6.4 7.4
  SAY #45697 /* ~"Tatsächlich? Großartig! Ich wußte, du bist der richtige Mann! Hier hab ich noch eine Nachricht. Bring sie Keldor von Durian in der Gießerei - er wird sich freuen. Und du kriegst hundert Münzen dafür."~ */
  IF ~~ THEN REPLY #45698 /* ~"OK. Ich hätte noch ein paar Fragen."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Als ich Gesetzesspötter Penn die Lieferung gebracht hatte, bat mich Goldspore, der Auktionator, Keldor von Durian für einhundert Münzen eine Nachricht in die Große Gießerei zu bringen.~ */ GOTO 5
  IF ~~ THEN REPLY #45699 /* ~"Dann bedank ich mich. Leb wohl."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Als ich Gesetzesspötter Penn die Lieferung gebracht hatte, bat mich Goldspore, der Auktionator, Keldor von Durian für einhundert Münzen eine Nachricht in die Große Gießerei zu bringen.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.7 6.5 7.5
  SAY #45700 /* ~"Das nenn ich schnell! Vielen, vielen Dank, mein Freund. Ich hätte da noch eine Aufgabe für dich, wenn du dir zweihundert Münzen verdienen willst! Schnapp dir diesen Handzettel, bring ihn zu Barkis in die Schwelende Leiche und sag ihm, er soll ihn irgendwo anschlagen. Er wird sich freuen, denn er ist ein alter Freund von mir!"~ */
  IF ~~ THEN REPLY #45701 /* ~"OK. Ich hätte noch ein paar Fragen."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Als ich Keldor die Nachricht überbracht hatte, bat mich Goldspore, der Auktionator, Barkis in der Bar "Zur Schwelenden Leiche"gegen die Summe von zweihundert Münzen einen Handzettel zu bringen.~ */ GOTO 5
  IF ~~ THEN REPLY #45702 /* ~"Dann bedank ich mich. Leb wohl."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Als ich Keldor die Nachricht überbracht hatte, bat mich Goldspore, der Auktionator, Barkis in der Bar "Zur Schwelenden Leiche"gegen die Summe von zweihundert Münzen einen Handzettel zu bringen.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8 6.6 7.6
  SAY #45703 /* ~"Dann gibt es nichts mehr, was du für mich tun kannst, mein Freund. Danke für deine Dienste!" Er wendet sich wieder der Menge zu und redet auf sie ein.~ */
  IF ~~ THEN REPLY #45704 /* ~"Ich hätte noch ein paar Fragen..."~ */ JOURNAL #67155 /* ~Nachdem ich den Handzettel in der Schwelenden Leiche abgegeben hatte, bin ich zu Goldspore zurückgegangen, der sagte, er habe keinen Auftrag mehr für mich.~ */ GOTO 5
  IF ~~ THEN REPLY #45705 /* ~"Dann leb wohl."~ */ JOURNAL #67155 /* ~Nachdem ich den Handzettel in der Schwelenden Leiche abgegeben hatte, bin ich zu Goldspore zurückgegangen, der sagte, er habe keinen Auftrag mehr für mich.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.9 6.7 7.7
  SAY #45706 /* ~"Tut mir leid, mein Freund. Es gibt nichts mehr... Du hast bereits alles erledigt, was es zu erledigen gab!" Er lacht.~ */
  IF ~~ THEN REPLY #45707 /* ~"Vielleicht kannst du mir dann noch ein paar Fragen beantworten..."~ */ GOTO 5
  IF ~~ THEN REPLY #45708 /* ~"Dann bedank ich mich. Leb wohl."~ */ EXIT
END
