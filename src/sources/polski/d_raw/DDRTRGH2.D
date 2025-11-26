// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH2~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38622 /* ~"Zabij dla nasss troka, tak, a będziesz mógł wziąć wszyssskie pieniądze. Dla nasss zossstanie jedzenie. Zgadzasz sssię?"~ */
  IF ~~ THEN REPLY #38623 /* ~"A co to za istota?"~ */ GOTO 1
  IF ~~ THEN REPLY #38636 /* ~"Jasne."~ */ GOTO 4
  IF ~~ THEN REPLY #38637 /* ~"Nie sądzę."~ */ GOTO 3
  IF ~~ THEN REPLY #38638 /* ~"A co się stało twojemu kumplowi?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #38624 /* ~"Trokopotaka. Lubisz? My nie... ssstraszny i złośliwy potwór. One nas nie lubią. Ten jeden... on strzeże ciała, którego chcemy. Zabijesz go?"~ */
  IF ~~ THEN REPLY #38625 /* ~"A co jest z twoim kumplem?"~ */ GOTO 2
  IF ~~ THEN REPLY #38632 /* ~"Zabiję tę istotę."~ */ GOTO 4
  IF ~~ THEN REPLY #38635 /* ~"Pozwolę, byś sam to zrobił."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3 1.0
  SAY #38626 /* ~"To nie jest przyjaciel. Pyszszałek! Wielki ghul! Chwali sssię, że niczego sssię nie lęka. Wyobrażasz go sobie, jak zbliża ssssię do troka? Nie! On tchórz! Zabij troka i pokaż, kto tutaj jest odważny."~ */
  IF ~~ THEN REPLY #38627 /* ~"Ale właściwie o co chodzi?"~ */ GOTO 1
  IF ~~ THEN REPLY #38628 /* ~"Świetnie. Zaraz zabiję tę istotę."~ */ GOTO 4
  IF ~~ THEN REPLY #38631 /* ~"Nie, nie wydaje mi się."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.2
  SAY #38629 /* ~"Sssss... bezwartościowy cielessny! Odejdź!"~ */
  IF ~~ THEN REPLY #38630 /* ~"Bardzo dobrze."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #38633 /* ~"Dzięki... Kiedy umrze, będziesz mógł wziąć wszyssstkie pieniądze."~ */
  IF ~~ THEN REPLY #38634 /* ~"Taki jest plan."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38639 /* ~"Dlaczego nie chcesz zabić troka? Trzeba zabić! Zabij go!"~ */
  IF ~~ THEN REPLY #38640 /* ~"Zatem idę."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38641 /* ~"Co... co sprowadza cię tutaj znowu, głupi cielessny? Giń!" Upiorny ghul skacze na ciebie!~ */
  IF ~~ THEN REPLY #38642 /* ~Walcz.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #38643 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38644 /* ~"Co... co sprowadza cię tutaj znowu, głupi cielessny? Giń!" Upiorny ghul skacze na ciebie!~ */
  IF ~~ THEN REPLY #38645 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38646 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38647 /* ~"Bierzesz swój ssskarb, czy tak? Zabieraj go i odejdź ssstąd, mięsna istoto."~ */
  IF ~~ THEN REPLY #38648 /* ~"A cóż to jest?"~ */ GOTO 9
  IF ~~ THEN REPLY #38651 /* ~"Zgoda."~ */ GOTO 10
  IF ~~ THEN REPLY #38652 /* ~"Ty zginiesz wcześniej."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38649 /* ~"Trokopotaka, co? Lubisz? My nie lubimy... Ssstraszny i zły potwór. Nie lubi nasss. Martwy teraz, czy tak?"~ */
  IF ~~ THEN REPLY #38650 /* ~"Owszem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38653 /* ~"Zabierz ssskarb i odejdź... Musimy jeść."~ */
  IF ~~ THEN REPLY #38654 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #67831 /* ~"Tak szszszybko z powrotem? Odejdź. Będziemy jeśśść."~ */
  IF ~~ THEN REPLY #67832 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END
