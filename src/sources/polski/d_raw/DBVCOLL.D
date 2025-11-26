// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVCOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVCOLL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #54788 /* ~Ten mężczyzna jest otulony w brudne, poszarpane brązowe szaty, a długi płaszcz ukrywa większość jego twarzy.~ */
  IF ~~ THEN REPLY #54789 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #54790 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #54791 /* ~Widzisz, jak jego oczy zwężają się, a on cofa się. "Czego chcesz?"~ */
  IF ~~ THEN REPLY #54792 /* ~"Co tutaj robisz?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54793 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54794 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #54795 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #54796 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 9.0
  SAY #54797 /* ~"Lubię zajmować się własnymi sprawami, śmiałku, i dobrze by było, żebyś ty robił to samo."~ */
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54799 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54798 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #54800 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #54801 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 9.1
  SAY #54802 /* ~Rozgląda się wokół. "Tak właściwie, to nie ma dla niego dobrej nazwy. Śmieciowisko, można by powiedzieć."~ */
  IF ~~ THEN REPLY #54803 /* ~"Co tu robisz?"~ */ GOTO 2
  IF ~~ THEN REPLY #54804 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #54805 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 9.2
  SAY #54806 /* ~"Wioska Faroda, śmiałku." Wskazuje palcem cegły i śmieci na suficie, wysoko powyżej w śmierdzącej ciemności. "Zakopana Wioska."~ */
  IF ~~ THEN REPLY #54807 /* ~"Co tu robisz?"~ */ GOTO 2
  IF ~~ THEN REPLY #54808 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #54809 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2 3.1 4.1 9.3
  SAY #54810 /* ~"Hę?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54811 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54812 /* ~"Szukam człowieka o imieniu Farod."~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54813 /* ~"Szukam zgubionego dziennika."~ */ GOTO 6
  IF ~~ THEN REPLY #54814 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 7.0 8.0
  SAY #54815 /* ~Tylko potrząsa głową, zdziwiony.~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54816 /* ~"A Farod? Wiesz może gdzie on jest?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54817 /* ~"A Farod? Wiesz może gdzie on jest?"~ */ GOTO 8
  IF ~~ THEN REPLY #54818 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #54819 /* ~Mężczyzna przytakuje. "Idź na południowy wschód do labiryntu chłamu. Są tam drzwi w podłodze, które prowadzą w dół, gdzie jest Farod."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54820 /* ~"Szukam też zgubionego dziennika."~ */ GOTO 6
  IF ~~ THEN REPLY #54821 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #54822 /* ~Mężczyzna przytakuje. "Na północnym wschodzie tej dużej komnaty jest łuk... jak pod nim przejdziesz, to tam znajdziesz Faroda."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54823 /* ~"Szukam też zgubionego dziennika."~ */ GOTO 6
  IF ~~ THEN REPLY #54824 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #54825 /* ~Mężczyzna cofa się o krok, patrząc na ciebie podejrzliwe spod kaptura. "Znowu, hę? Czego?"~ */
  IF ~~ THEN REPLY #54826 /* ~"Co tutaj robisz?"~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54827 /* ~"Co to za miejsce?"~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54828 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #54829 /* ~"Mam kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #54830 /* ~"Nic. Żegnaj."~ */ EXIT
END
