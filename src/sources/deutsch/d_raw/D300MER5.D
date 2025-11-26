// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17512 /* ~"Spring, Lim-Lim, Spring!" Der Händler scheint dich plötzlich zu bemerken. "Oh, seid gegrüßt! Wie wär's mit einem dieser putzmunteren, verspielten Lim-Lims, mein Herr?"~ */
  IF ~~ THEN REPLY #17537 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17539 /* ~"Im Moment nicht. Was sind denn eigentlich diese 'Lim-Lims'?"~ */ GOTO 3
  IF ~~ THEN REPLY #17540 /* ~"Ja."~ */ GOTO 4
  IF ~~ THEN REPLY #17541 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Buy_LL","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #17513 /* ~"Seht nur, wie sie... Oh, Ihr seid's wieder, mein Herr? Wie wär's mit einem Lim-Lim?"~ */
  IF ~~ THEN REPLY #17542 /* ~"Nein, aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17543 /* ~"Im Moment nicht. Was sind denn eigentlich diese 'Lim-Lims'?"~ */ GOTO 3
  IF ~~ THEN REPLY #17544 /* ~"Ja."~ */ GOTO 4
  IF ~~ THEN REPLY #17545 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.3 4.5 6.1 7.1 9.0
  SAY #17515 /* ~"Tut mir leid, aber ich beantworte nur Fragen, die sich auf die Lim-Lims beziehen, mein Herr."
~ */
  IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN REPLY #17546 /* ~"Dann kannst du mir vielleicht sagen, warum meins weggelaufen ist."~ */ GOTO 7
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17547 /* ~"Was sind sie denn eigentlich?"~ */ GOTO 3
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17548 /* ~"Ich würde gern eins kaufen."
~ */ GOTO 4
  IF ~~ THEN REPLY #17549 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1
  SAY #17516 /* ~"Sie kommen aus den Außenländern, mein Herr, und sind weder ganz wie Insekten noch wie andere Tiere. Sie sind lieb, verspielt und recht treu." Er schaut die Lim-Lims von der Seite an. Dann rückt er näher heran und flüstert: "Und wenn's sein muß, schmecken sie auch ganz gut."~ */
  IF ~~ THEN REPLY #17550 /* ~"Interessant. Ich hätte ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17551 /* ~"Ich würde gern eins kaufen."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.2 3.1
  SAY #17517 /* ~"Die Lim-Lims brauchen nicht gefüttert zu werden - sie ernähren sich von Insekten, winzigen Nagetieren und dergleichen. Sie folgen einem überall hin, machen wenig Dreck und Lärm, halten sich durch ihre ständige Hüpferei in Form und - was das beste daran ist - sie springen bis zu fünf Meter weit, wenn man ihnen heiße Kohlen unter den Hintern hält! Ein Exemplar gibt's schon für vierzig Kupferstücke, mein Herr, ein lächerlicher Preis für ein so unterhaltsames Haustier und einen treuen Freund!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17553 /* ~"Morte? Was meinst du?"~ */ EXTERN ~DMORTE~ 187
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17555 /* ~"Was meinst du, Annah?"~ */ EXTERN ~DANNAH~ 107
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17556 /* ~"Dann nehm ich eins."~ */ DO ~TakePartyGold(40)
~ GOTO 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17557 /* ~"Ich gebe meine Kupfermünzen lieber nicht aus. Aber ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17559 /* ~"Ich behalte meine Kupfermünzen lieber. Leb wohl."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17560 /* ~"Ich habe nicht genug Münzen. Aber ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17562 /* ~"Vergiß es. Ich habe nicht genug Münzen für eins. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #17518 /* ~"Sehr wohl, mein Herr! Bitteschön..."~ */
  IF ~~ THEN REPLY #17563 /* ~"Mein eigenes Lim-Lim..."~ */ DO ~SetGlobal("Buy_LL","GLOBAL",1)
GiveItemCreate("LimLim",Protagonist,1,0,0)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #17519 /* ~"Seht nur, wie sie... Oh, Ihr seid's wieder, mein Herr? Wo ist Euer Lim-Lim?"~ */
  IF ~~ THEN REPLY #17565 /* ~"Es ist irgendwann weggelaufen. Du hattest gesagt, es würde mir überallhin folgen."~ */ GOTO 7
  IF ~~ THEN REPLY #17567 /* ~"Ich will da nicht drüber reden. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17568 /* ~"Frag nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 6.0
  SAY #17520 /* ~"Wirklich? Wie merkwürdig!"~ */
  IF ~~ THEN REPLY #17569 /* ~"Ich will eine Entschädigung."~ */ GOTO 8
  IF ~~ THEN REPLY #17570 /* ~"Vergiß es. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17572 /* ~"Mach dir darüber keine Sorgen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17521 /* ~"Aber, mein Herr... Das ist doch nicht meine Schuld! Ein undressiertes Lim-Lim, vielleicht gestohlen..."~ */
  IF ~~ THEN REPLY #17573 /* ~"Gib mir einfach meine vierzig Kupfermünzen zurück."~ */ GOTO 11
  IF ~~ THEN REPLY #17574 /* ~"Gib mir meine vierzig Münzen zurück, und noch mal zwanzig dafür, daß du mir nicht die Wahrheit gesagt hast."~ */ GOTO 11
  IF ~~ THEN REPLY #17575 /* ~"Gib mir meine vierzig Münzen zurück, und noch mal vierzig dazu für den ganzen Ärger."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Buy_LL","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #17522 /* ~"Seht nur, wie sie... Oh, Ihr seid schon wieder hier, mein Herr?"~ */
  IF ~~ THEN REPLY #17730 /* ~"Ja. Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #17731 /* ~"Komm nur gerade zufällig vorbei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #17526 /* ~(Null Node)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 8.1 8.2
  SAY #17527 /* ~"A-a-aber das geht doch nicht! Dafür könnt Ihr mir doch nicht die Schuld in die Schuhe schieben!"~ */
  IF ~~ THEN REPLY #17576 /* ~"Das kann und werde ich aber, denn es ist nur recht und billig. Du hattest mir gesagt, daß es mir überallhin folgen würde."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_LL_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #17577 /* ~Wahrheit: " Du hast die Wahl: Entweder zahlst du oder du bezahlst dafür in der Hölle."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17579 /* ~Täuschung: "Du hast die Wahl: Entweder zahlst du oder du bezahlst dafür in der Hölle."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_LL_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17580 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2
  SAY #17528 /* ~"Bestens, ich - auweia! Was 'n das da drüben?" Er ergreift plötzlich die Flucht!~ */
  IF ~~ THEN REPLY #17581 /* ~"Was zum..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #17529 /* ~"Spring, Lim-Lim, los!" Der Händler beginnt davonzulaufen, als er dich sieht.~ */
  IF ~~ THEN REPLY #17582 /* ~"Verdammt..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END
