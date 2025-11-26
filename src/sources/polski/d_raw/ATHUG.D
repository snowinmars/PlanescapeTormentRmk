// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~ATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34604 /* ~"Ptaszyna zabłądziła, co? Ptaszyna chce dzisiaj przejść, ptaszyna musi zapłacić."~ */
  IF ~~ THEN REPLY #34605 /* ~"Ile?"~ */ GOTO 1
  IF ~~ THEN REPLY #34606 /* ~"Jeśli chcesz moich pieniędzy, będziesz musiał mi je odebrać."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34607 /* ~"Najpierw musisz mnie złapać."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34608 /* ~"Dziesięć monet, mój drogi przyjacielu!"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34609 /* ~"Proszę."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34610 /* ~"Nie mam tyle."~ */ GOTO 3
  IF ~~ THEN REPLY #34611 /* ~"Zapomnij o tym. Jeśli chcesz brzdęku, będziesz go musiał ze mnie zedrzeć."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34612 /* ~"Najpierw musisz mnie złapać."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.0
  SAY #34613 /* ~Zbir kłania ci się głęboko w pas, najwidoczniej kpiąc z ciebie. "Mam nadzieję, że wkrótce znów będziemy wspólnie robić interesy."~ */
  IF ~~ THEN REPLY #34614 /* ~"Jasne, cokolwiek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #34615 /* ~Zbir przybiera taki wyraz twarzy, jakby doznał szoku. "W takim razie, będziesz musiał zapłacić krwią. Żegnaj, przyjacielu."~ */
  IF ~~ THEN REPLY #34616 /* ~"Hej, zaczekaj..."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #34617 /* ~"Niech tak będzie."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #34618 /* ~"Ptaszyna powróciła do domu, co? Aby wyżywić resztę gniazda?"~ */
  IF ~~ THEN REPLY #34619 /* ~"O czym ty mówisz?"~ */ GOTO 5
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34620 /* ~"Tak. Oto twoja zapłata."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34621 /* ~"Nie. Przybywam by cię zabić."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34622 /* ~Jego twarz wykrzywia się, parodiując udręczenie. "Chcesz powiedzieć, że już zapomniałeś? Ach, mój drogi. Jesteś mi winien brzdęk przejście wzdłuż mojej ulicy. No dalej... płać."~ */
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34623 /* ~"Proszę, oto twoja zapłata."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34624 /* ~"Tym razem będziesz musiał użyć siły."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34625 /* ~"Nie możemy się jakoś dogadać?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #34626 /* ~"Przykro mi trepie. Wszystkich nas obowiązują zasady, a ty możesz zapłacić krwią. Przekaż Mocom wyrazy mojego szacunku."~ */
  IF ~~ THEN REPLY #34627 /* ~Walcz z nim.~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34628 /* ~Uciekaj.~ */ DO ~Enemy()
~ EXIT
END
