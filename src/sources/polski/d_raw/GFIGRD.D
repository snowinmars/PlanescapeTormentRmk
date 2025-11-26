// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFIGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~GFIGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5691 /* ~"Towarzysze! Do mnie! Intruz! Tutaj!"~ */
  IF ~~ THEN REPLY #5692 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5693 /* ~"Panie, proszę byś odszedł. Zrób tak. Natychmiast."~ */
  IF ~~ THEN REPLY #5694 /* ~Zrobione.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 even though they appear after this state */
~  CreatureInArea("AR0500")
~ THEN BEGIN 2 // from:
  SAY #5695 /* ~"Proszę nie wchodzić na dziedziniec, panie. Ani na zewnątrz, ani do wewnątrz."~ */
  IF ~~ THEN REPLY #66282 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #5701 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #5704 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #5708 /* ~.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #5712 /* ~"Dzień dobry, panie. W czym mogę pomóc?"~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5714 /* ~"Cóż, tak. Nie wiedziałem z kim mam o tym pomówić, ale to chyba ty. Bedai-Lin prosiła mnie, żebym zabił Sandoza. Co ty na to?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5715 /* ~"Szukam zabójcy kowala. Widziałeś coś dzisiejszej nocy?"~ */ GOTO 12
  IF ~~ THEN REPLY #5716 /* ~"Gdzie jest biuro urzędnika?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5717 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5718 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 9
  IF ~~ THEN REPLY #5719 /* ~"Nie, dzięki. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.4 9.0 10.1 14.1 16.0 19.0 20.0
  SAY #5720 /* ~"Obawiam się, że to tajemnica, panie. I to nawet dla członków naszej frakcji. Jeśli nie jesteś w to zaangażowany, albo nie masz pozwolenie władz, nie możemy cię wpuścić."~ */
  IF ~~ THEN REPLY #5721 /* ~"Dobrze. Powiedz mi, gdzie mogę znaleźć biuro urzędnika?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5722 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5723 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 9
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5724 /* ~"Szukam zabójcy kowala. Widziałeś coś dziś w nocy?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5725 /* ~"A propos władz, Bedai-Lin poprosiła mnie, bym zabił Sandoza. Co ty na to?"~ */ GOTO 13
  IF ~~ THEN REPLY #5726 /* ~"A co jeśli to z ciebie wytrząsnę?"~ */ GOTO 11
  IF ~~ THEN REPLY #5727 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.0 9.1 10.0 16.3 19.2 20.2
  SAY #5759 /* ~"Na południe od głównej kuźni, panie, znajdziesz biuro. To biuro urzędnika."~ */
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5760 /* ~"Dziękuję. Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 9
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5761 /* ~"Dziękuję. Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 10
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5762 /* ~"Szukam zabójcy kowala. Widziałeś coś dziś w nocy?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5763 /* ~"Nie wiem komu to powiedzieć, ale... Bedai-Lin poprosiła mnie, żebym zabił Sandoza."~ */ GOTO 13
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5764 /* ~"Co jest za tymi drzwiami?"~ */ GOTO 7
  IF ~~ THEN REPLY #64516 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.4 7.2 8.0 16.5 19.4 20.4
  SAY #5765 /* ~"Po śmierci Sandoza, Keldor jest jedynym, który może ci pomóc. Znajdziesz go w głównej sali spotkań - po prawej stronie głównej kuźni. Znalezienie go nie powinno sprawiać trudności."~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5766 /* ~"W porządku. Co jest za tymi drzwiami?"~ */ GOTO 7
  IF ~~ THEN REPLY #5767 /* ~"Powiedz mi, jak mam znaleźć biuro urzędnika?"~ */ GOTO 8
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5768 /* ~"Szukam zabójcy kowala. Widziałeś coś tej nocy?"~ */ GOTO 12
  IF ~~ THEN REPLY #5769 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3 7.1 8.1 16.4 19.3 20.3
  SAY #5770 /* ~"Jeśli o to chodzi, to Sandoz lub Keldor powinni być ci w stanie pomóc. Keldor jest w głównej sali spotkań, po prawej od głównej kuźni. Sandoza można zwykle znaleźć z tyłu Gmachu."~ */
  IF ~~ THEN REPLY #5771 /* ~"Dzięki. Jak znajdę biuro urzędnika?"~ */ GOTO 8
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5772 /* ~"Co jest za tymi drzwiami?"~ */ GOTO 7
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5773 /* ~"Szukam zabójcy kowala. Widziałeś coś dziś w nocy?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5774 /* ~"A propos Sandoza, Bedai-Lin poprosiła mnie, żebym go zabił. Co ty na to?"~ */ GOTO 13
  IF ~~ THEN REPLY #5775 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.5
  SAY #5776 /* ~"Z przyjemnością zobaczę, jak będziesz próbował. Panie."~ */
  IF ~~ THEN REPLY #5777 /* ~Zaatakuj.~ */ DO ~Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5778 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.3 8.2 9.2 10.2 16.2 18.0
  SAY #5779 /* ~"Nie, panie. Wyszliśmy na noc."~ */
  IF ~~ THEN REPLY #5780 /* ~"Czyż to nie jest niezwykłe?"~ */ GOTO 14
  IF ~~ THEN REPLY #5781 /* ~"Na czyj rozkaz?"~ */ GOTO 15
  IF ~~ THEN REPLY #5782 /* ~"Mam jeszcze parę pytań, nie związanych z morderstwem."~ */ GOTO 16
  IF ~~ THEN REPLY #5783 /* ~"Rozumiem. To ciekawe. Dziękuję, że poświęciłeś mi trochę czasu."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0 7.4 8.3 10.3 16.1 19.1 20.1
  SAY #5784 /* ~"ŻE CO? Jesteś pewien? Powiedz to Keldorowi. A my tymczasem zajmiemy się mechanikiem. Dziękuję."~ */
  IF ~~ THEN REPLY #5785 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 15.1 17.1
  SAY #5786 /* ~"Tak, panie, to niezwykłe. Zazwyczaj, trzymają nas tu dzień i noc, żeby projekt był bezpieczny."~ */
  IF ~~ THEN REPLY #5787 /* ~"Kto ma taką władzę, żeby cię zwolnić?"~ */ GOTO 15
  IF ~~ THEN REPLY #5788 /* ~"Opowiedz mi o tym projekcie."~ */ GOTO 7
  IF ~~ THEN REPLY #5789 /* ~"Więc chcesz powiedzieć, że niczego nie widziałeś."~ */ GOTO 17
  IF ~~ THEN REPLY #5790 /* ~"Ciekawe. Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #5791 /* ~"Jedyni, którzy mają taką władzę, to Tyldon i Bedai-Lin. Przypuszczam, że ci faktorzy, lub ktoś z nimi związany, mogli wydać taki rozkaz, ale wątpię, żeby to zrobili. Nie wiem kto go wydał i nie wiem dlaczego ktoś chciałby to zrobić."~ */
  IF ~~ THEN REPLY #5792 /* ~"Niezbyt to pomocne, ale to już jakiś początek. Zamiast tego, odpowiedz mi na kilka pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5793 /* ~"Czy to nie było niezwykłe, że dostałeś taki rozkaz?"~ */ GOTO 14
  IF ~~ THEN REPLY #5794 /* ~"I nic nie widziałeś?"~ */ GOTO 17
  IF ~~ THEN REPLY #5795 /* ~"To... 'pouczające'. Dobrego dnia."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 15.0 17.0 18.1
  SAY #5796 /* ~"Kolejne pytania?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5797 /* ~"Co jest za tymi drzwiami?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5798 /* ~"Cóż, tak. Nie wiedziałem z kim mam o tym pomówić, ale to chyba ty. Bedai-Lin prosiła mnie, żebym zabił Sandoza. Co ty na to?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5799 /* ~"Szukam zabójcy kowala. Widziałeś coś dziś w nocy?"~ */ GOTO 12
  IF ~~ THEN REPLY #5800 /* ~"Gdzie jest biuro urzędnika?"~ */ GOTO 8
  IF ~  !Dead("Sandoz")
~ THEN REPLY #5801 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 10
  IF ~  Dead("Sandoz")
~ THEN REPLY #5802 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 9
  IF ~~ THEN REPLY #5803 /* ~"Nieważne. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.2
  SAY #5804 /* ~"Dokładnie tak, panie. Nic nie widziałem."~ */
  IF ~~ THEN REPLY #5805 /* ~"Hm. Odpowiedz więc na inne pytania."~ */ GOTO 16
  IF ~~ THEN REPLY #5806 /* ~"I ten rozkaz nie wydał ci się niezwykły?"~ */ GOTO 14
  IF ~~ THEN REPLY #5807 /* ~"To... 'pouczające'. Dobrego dnia."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 18 // from:
  SAY #5808 /* ~"Rozumiem, że jeśli chodzi o to morderstwo, mamy pomóc ci jak tylko możemy, ale muszę cię ostrzec, że moja pomoc nie na wiele się zda."~ */
  IF ~~ THEN REPLY #5809 /* ~"Dlaczego nie? Nie było cię tu?"~ */ GOTO 12
  IF ~~ THEN REPLY #5810 /* ~"W porządku. No cóż i tak mam parę innych pytań."~ */ GOTO 16
  IF ~~ THEN REPLY #5811 /* ~"Och. Zapomnij więc."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 19 // from:
  SAY #5812 /* ~Widzisz strażnika - wygląda kompetentnie ale jest chyba trochę znudzony. "Witaj, panie. W czym mogę ci pomóc?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5813 /* ~"Co jest za tymi drzwiami?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5814 /* ~"Cóż, tak. Nie wiedziałem z kim mam o tym pomówić, ale to chyba ty. Bedai-Lin prosiła mnie, żebym zabił Sandoza. Co ty na to?"~ */ GOTO 13
  IF ~~ THEN REPLY #5815 /* ~"Gdzie jest biuro urzędnika?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5816 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5817 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 9
  IF ~~ THEN REPLY #5818 /* ~"Nieważne. Do zobaczenia."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #5819 /* ~"Witaj panie. W czym mogę ci pomóc?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5820 /* ~"Co jest za tymi drzwiami?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5821 /* ~"Cóż, tak. Nie wiedziałem z kim mam o tym pomówić, ale to chyba ty. Bedai-Lin prosiła mnie, żebym zabił Sandoza. Co ty na to?"~ */ GOTO 13
  IF ~~ THEN REPLY #5822 /* ~"Gdzie jest biuro urzędnika?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5823 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5824 /* ~"Gdzie znajdę kogoś, kto tu rządzi?"~ */ GOTO 9
  IF ~~ THEN REPLY #5825 /* ~"Nieważne. Do zobaczenia."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 21 // from:
  SAY #67221 /* ~Strażnik patrzy na ciebie. "Z drogi. Mamy coś do zrobienia."~ */
  IF ~~ THEN REPLY #67222 /* ~"Żegnaj."~ */ EXIT
END
