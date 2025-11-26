// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBAEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBAEN~

IF ~  Global("Baen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21485 /* ~Du siehst einen massigen Mann dessen scharfe Gesichtszüge einen gepeinigten Ausdruck tragen. Trotz seiner großen Statur hat er etwas Feminines, und im Gegensatz zu den anderen Bewohnern, die du gesehen hast, sieht er aus, als habe er vor kurzem gebadet. Als du dich näherst, schaut er hoffnungsvoll auf und ruft mit hoher Stimme: "Craddock... guter Herr?"~ */
  IF ~~ THEN REPLY #21486 /* ~"Was?"~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22732 /* ~Ignoriere den Mann und geh weiter.~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #22733 /* ~"Eh..." Seine hoffnungsvolle Miene verblaßt, als er dein Gesicht eingehend betrachtet. "Ich bitte vielmals um Verzeihung, werter Herr, wenn ich Euch beleidigt haben sollte." Er macht eine kleine Verbeugung. "Mein Name ist Baen, der Sender, drittes Kind von Dai'Baen, dem Sender. Ich bin einer der vielen Sender im Dienste des Hauses der Sender."~ */
  IF ~~ THEN REPLY #22734 /* ~"Du mußt dich nicht entschuldigen, Baen. Was möchtest du?"~ */ GOTO 4
  IF ~~ THEN REPLY #22735 /* ~"Du hast mich nicht beleidigt... noch nicht. Was möchtest du?"~ */ GOTO 4
  IF ~~ THEN REPLY #22736 /* ~"Hör mal, ich muß mich verabschieden, Baen..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #22737 /* ~Da du gerade dabei bist, vorbeizugehen, spricht dich der Mann diesmal mit kräftigerer Stimme an. Seine Stimme überschlägt sich fast vor Anstrengung. "Craddock?! Werter Herr, ich habe eine Botschaft für Euch!"~ */
  IF ~~ THEN REPLY #22738 /* ~"Wovon redest du?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #22739 /* ~"Nur einen kurzen Augenblick Eurer kostbaren Zeit, werter Herr. Ich bin auf der Suche nach einem Aufseher namens Craddock, der sich im Stock aufhalten soll, doch leider... kann ich ihn nicht finden. Habt Ihr etwas von diesem Mann gehört?"~ */
  IF ~~ THEN REPLY #22740 /* ~"Nein."~ */ GOTO 5
  IF ~~ THEN REPLY #22741 /* ~"Es tut mir leid..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1
  SAY #22742 /* ~"Ich bitte vielmals um Verzeihung, daß ich Euch mit solch einer Nichtigkeit belästige, doch ich suche Craddock, einen Aufseher im Stock..." Baen sieht aus, als ob er unter Schmerzen leidet. "Doch leider kann, ich ihn nicht finden." Er sieht dich wieder hoffnungsvoll an. "Habt Ihr vielleicht etwas über diesen Mann gehört?"~ */
  IF ~~ THEN REPLY #22743 /* ~"Nein."~ */ GOTO 5
  IF ~~ THEN REPLY #22744 /* ~"Nein, tut mir leid."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #22745 /* ~Baen stößt einen tiefen Seufzer aus. "Ich bin verpflichtet, ihm eine Botschaft zu überbringen, doch bis jetzt war mir das Glück noch nicht hold..."~ */
  IF ~~ THEN REPLY #22746 /* ~"Ich könnte dir helfen... ich könnte ihm deine Botschaft übermitteln, falls ich ihn treffe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22747 /* ~"Ich wäre vielleicht in der Lage, in zu finden und ihm deine Botschaft zu übermitteln... gegen ein gewisses Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22748 /* ~"Ich kann dir nicht helfen... schau, ich muß mich verabschieden."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #22749 /* ~"Ich bitte Sie natürlich vielmals um Verzeihung, werter Herr, daß ich Euch aufgehalten habe." Baen nickt. "Danke, daß Ihr Zeit für mich hattet."~ */
  IF ~~ THEN REPLY #22750 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0
  SAY #22751 /* ~Baens Gesicht erstrahlt wie eine Laterne. "Oh, welch ein glücklicher Tag für Baen und das Haus der Sender! Jede Hilfe, die Ihr leisten könnt, wäre in höchstem Maße begrüßenswert! Wenn Ihr diesen Craddock findet und ihm die Botschaft überbringt, werde ich dafür sorgen, daß Ihr für Eure Mühen entlohnt werdet."~ */
  IF ~~ THEN REPLY #22752 /* ~"In Ordnung... wie lautet deine Botschaft?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 12.1
  SAY #22753 /* ~Baens Gesicht erstrahlt wie eine Laterne. "Selbstverständlich, werter Herr. Wenn Ihr diesen Craddock findet und ihm die Botschaft überbringt, werde ich dafür sorgen, daß Ihr für Eure Mühen entlohnt werdet."~ */
  IF ~~ THEN REPLY #22754 /* ~"In Ordnung... wie lautet deine Botschaft?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #22755 /* ~Baen rezitiert die Botschaft fast wie ein Mantra: *"Die Lieferung muß am dritten Tag in Verdammnis sein, ansonsten droht eine Strafe."* Baen runzelt die Stirn. "Mir wurde gesagt, daß Craddock von der 'Lieferung' weiß, mit der diese Botschaft im Zusammenhang steht."~ */
  IF ~~ THEN REPLY #22756 /* ~"Wenn ich Craddock sehe, werd ich ihm deine Botschaft überbringen. Kannst du mir noch irgendetwas über ihn erzählen, das mir helfen würde, ihn zu finden?"~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.1
  SAY #22757 /* ~"Er soll ein *Riese* von einem Mann sein, mit strengen Gesichtszügen. Und er soll Aufseher auf einem der Marktplätze des Stocks sein. Leider weiß ich sonst kaum etwas über ihn, werter Herr."~ */
  IF ~~ THEN REPLY #22758 /* ~"Verstehe. Das sollte erstmal genügen."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22759 /* ~Baen verbeugt sich. "Danke, mein Herr. Sollte das Schicksal Euch jemals gnädig sein, so daß Ihr diese Nachricht Craddock überbringen könnt, seid doch bitte so freundlich, zu mir zurückzukehren und mir davon zu berichten. Ich werde dann dafür sorgen, daß Eure Bemühungen belohnt werden."~ */
  IF ~~ THEN REPLY #22760 /* ~"Also gut. Leb wohl, Baen."~ */ JOURNAL #22761 /* ~Ich habe eingewilligt, Craddock die Nachricht zu überbringen, wenn ich ihn sehe. Baen sagte, daß er ein Aufseher auf dem Marktplatz irgendwo im Stock sei. Ich werde ein Auge nach ihm offen halten.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #22762 /* ~Du triffst auf Baen, den Sender. Als du dich ihm näherst, schaut er dich mit hoffnungsvoller Miene an... doch er spricht dich nicht an.
~ */
  IF ~~ THEN REPLY #22763 /* ~"Hör mal, wenn du immer noch Hilfe brauchst, bei der Suche nach diesem... Craddock, nicht wahr? Also, wenn du noch Hilfe brauchst, würde ich dir helfen."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22764 /* ~"Ich hab' meine Meinung geändert. Ich werd dir helfen, diesen Craddock zu finden... gegen ein Entgelt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22765 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
GlobalGT("Baen_Quest","GLOBAL",0)
GlobalLT("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #22766 /* ~Du triffst auf Baen, den Sender. Als du dich ihm näherst, blickt er dich mit hoffnungsvoller Miene an. "Ist es Euch gelungen, Craddock zu finden, werter Herr?"~ */
  IF ~  Global("Baen_Quest","GLOBAL",2)
~ THEN REPLY #22767 /* ~"Ja, und ich hab' ihm deine Botschaft übermittelt, obwohl er nicht allzu glücklich darüber schien."~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22770 /* ~Ich bin zurückgekehrt und habe Baen erzählt, daß ich Craddock die Nachricht übermittelt habe. Er war zufrieden und hat mich mit einer Kupfersumme belohnt. Keine schlechte Bezahlung nur für das Weitergeben einer Nachricht.~ */ GOTO 14
  IF ~~ THEN REPLY #22768 /* ~"Noch nicht, Baen. Was kannst du mir noch über ihn sagen?"~ */ GOTO 10
  IF ~~ THEN REPLY #22769 /* ~"Nein... ich suche noch nach ihm. Ich komme zurück, wenn ich ihn gefunden habe."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22771 /* ~Baen scheint nach dem *Ja* gar nicht mehr zugehört zu haben, denn er lächelt und stößt einen Seufzer der Erleichterung aus. "Glück gehabt! Vielen Dank, werter Herr, vielen Dank." Er faßt in sein Gewand und holt eine Handvoll Kupfermünzen hervor, die er zählt und dir dann überreicht.~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #22772 /* ~"Fünfzehn Münzen für die Überbringung einer Botschaft? Ist ein fairer Preis."~ */ DO ~GivePartyGold(15)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #22773 /* ~"Dreißig Münzen für die Überbringung einer Botschaft? Ist ein fairer Preis."~ */ DO ~GivePartyGold(30)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #22774 /* ~"Fünfundvierzig Münzen für die Überbringung einer Botschaft? Ist ein fairer Preis."~ */ DO ~GivePartyGold(45)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #22775 /* ~"Oh, *mehr* als recht und billig, werter Herr, mehr als das! Ich kann ohne zu zögern sagen, daß es in ganz Sigil keinen besseren Beruf gibt als den eines Senders für das Haus der Sender!"~ */
  IF ~~ THEN REPLY #22776 /* ~"Ich werd's mir merken. Leb wohl, Baen."~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #22777 /* ~Du triffst auf Baen, den Sender. Als du dich ihm näherst, nickt er dir respektvoll zu. "Vortrefflich, werter Herr. Vielen, vielen Dank, daß Ihr Craddock für mich gefunden und ihm die Botschaft überbracht habt."~ */
  IF ~~ THEN REPLY #22778 /* ~"Ist schon in Ordnung. Leb wohl, Baen."~ */ EXIT
END
