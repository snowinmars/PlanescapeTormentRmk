// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH1~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38573 /* ~"Ssss... Krwisssty przyszedł... Trokopotaka nie dopuszcza do ssskarbu. Troko musssi zginąć. Ty zatrzymasz sssskarb. Ja ciało. Sssstoi umowa?"~ */
  IF ~~ THEN REPLY #38588 /* ~"A cóż to za stwór?"~ */ GOTO 1
  IF ~~ THEN REPLY #38589 /* ~"Jasne."~ */ GOTO 2
  IF ~~ THEN REPLY #38590 /* ~"Nie sądzę."~ */ GOTO 3
  IF ~~ THEN REPLY #38591 /* ~"A co się stało twojemu kumplowi?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #38592 /* ~"To trokopotaka. Biały. Z rogami. Wsssstrętny. Troki zjadają ciała. To nasi wrogowie. Zabijesz go, co?"~ */
  IF ~~ THEN REPLY #38593 /* ~"A co się stało twojemu kumplowi?"~ */ GOTO 4
  IF ~~ THEN REPLY #38594 /* ~"Zabiję tę istotę."~ */ GOTO 2
  IF ~~ THEN REPLY #38595 /* ~"Pozwolę ci na to."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.1
  SAY #38596 /* ~"Tak... Dobrze. Masz skarb na ciele. A my mamy jedzenie. Idź więc. Zabijaj."~ */
  IF ~~ THEN REPLY #38597 /* ~"Idę."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.2
  SAY #38598 /* ~"Sssss bezużyteczny z ciebie mięssssożerca. Precz!"~ */
  IF ~~ THEN REPLY #38599 /* ~"Bardzo dobrze."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.0
  SAY #38600 /* ~"Cha, cha... Tchórz go obleciał. Boi sssię troka. Cha, cha. I co, zabijeszsz go dla nasss, co?"~ */
  IF ~~ THEN REPLY #38601 /* ~"A co to właściwie jest?"~ */ GOTO 1
  IF ~~ THEN REPLY #38602 /* ~"Świetnie. Zaraz zabiję tę istotę."~ */ GOTO 2
  IF ~~ THEN REPLY #38603 /* ~"Nie, nie wydaje mi się."~ */ GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38604 /* ~"Cha, cha... Tchórz go obleciał. Boi sssię troka. Cha, cha. I co, zabijeszsz go dla nasss, co?"~ */
  IF ~~ THEN REPLY #38605 /* ~"Zatem idę."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38606 /* ~"On nie żyje. To twoja wina! On nie żyje! Giń, cielisssty!" Ghul atakuje cię!~ */
  IF ~~ THEN REPLY #38607 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38608 /* ~Uciekaj.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38609 /* ~"On nie żyje. To twoja wina! On nie żyje! Giń, cielisssty!" Ghul atakuje cię!~ */
  IF ~~ THEN REPLY #38610 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38611 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38612 /* ~"Ssss... troko jest martwy... Ty bierzesz ssskarb, my bierzemy mięssso, ssstoi umowa?"~ */
  IF ~~ THEN REPLY #38613 /* ~"A cóż to jest?"~ */ GOTO 9
  IF ~~ THEN REPLY #38614 /* ~"Stoi."~ */ GOTO 10
  IF ~~ THEN REPLY #38615 /* ~"Ty zginiesz wcześniej."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38616 /* ~"To trokopotaka. Biały. Z rogami. Wsssstrętny. Troki zjadają ciała. To nasi wrogowie. Nie sssmakuje. Teraz martwy. Dzięki, cielisssta isstoto."~ */
  IF ~~ THEN REPLY #38617 /* ~"Proszę bardzo. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38618 /* ~"Zabierz ssskarb i odejdź... chcemy teraz jeść."~ */
  IF ~~ THEN REPLY #38619 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #38620 /* ~"Znowu ty, cielissta issstoto? Bierz wszyssstkie pieniądze i odejdź."~ */
  IF ~~ THEN REPLY #38621 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END
