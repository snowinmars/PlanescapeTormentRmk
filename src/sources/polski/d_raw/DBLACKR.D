// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLACKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLACKR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2823 /* ~Mężczyzna ten porusza się z przerażającą szybkością i zdaje się być tylko w połowie w jednym miejscu. Oczy płoną, a ich szalone spojrzenie przebija twoje serce. "Ty." Jego głos jest jak powiew zimnego powietrza. "Opowiedz się. Czy stoisz po stronie dobra, czy zła?"~ */
  IF ~~ THEN REPLY #3749 /* ~"Wierzę w pomoc tym, którzy mają mniej szczęścia ode mnie. Wybieram dobro."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3750 /* ~"Dobro jest dla słabych. Wybieram zło."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3751 /* ~"Żadne. Ekstrema są niebezpieczne."~ */ GOTO 6
  IF ~~ THEN REPLY #3752 /* ~"Kim jesteś?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #3363 /* ~"Jest człowiek, co zwie się Zgniły William. To mroczny i zdradziecki mężczyzna. Przewodzi Kosom z Ciemnej Alei. Znajdź go tam i zabij, a przysłużysz się sprawie dobra. Jeśli ci się to nie uda, to zło powstanie. Jeżeli odmówisz, to ja zabiję ciebie."~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3753 /* ~"W porządku. Zrobię to."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("RWill")
~ THEN REPLY #3754 /* ~"Nie uczynię tego. Nie jestem mordercą."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3755 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3756 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37838 /* ~"Zgniły William już nie żyje. Zabiłem i jego, i Krystal."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #37839 /* ~"Zgniły William już nie żyje."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #3728 /* ~"Jestem Czarny Tulipan. Jestem łowcą i głodem. Jestem biczem. Teraz. Opowiedz się."~ */
  IF ~~ THEN REPLY #3757 /* ~"Wierzę w pomoc tym, którzy mają mniej szczęścia ode mnie. Wybieram dobro."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3758 /* ~"Dobro jest dla słabych. Wybieram zło."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3759 /* ~"Żadne. Ekstrema są niebezpieczne."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 5.0 7.0 7.1 7.2 7.3 13.1 15.1
  SAY #3730 /* ~"Oczekuję cię. Idź. Już."~ */
  IF ~~ THEN REPLY #3760 /* ~"Najpierw odpowiedz na kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #3762 /* ~"Już mnie nie ma."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #3731 /* ~"Nie ma odpowiedzi. Jest tylko działanie. Idź."~ */
  IF ~~ THEN REPLY #3763 /* ~"Dobrze."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #3732 /* ~"Jest kobieta o imieniu Krystal. To przywódczyni Kolczastych Aniołów. Stara się ona 'rozjaśnić' tę aleję i obrócić ją w lśniący przykład tego, czego może dokonać dobroć. Zabij ją, a zostaniesz nagrodzony. Jeśli zawiedziesz, będę na ciebie polować, aż cię zniszczę."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3764 /* ~"Zrobię to."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
~ THEN REPLY #3765 /* ~"Nie sądzę."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3766 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3767 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37841 /* ~"Ona i Zgniły William już nie żyją."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37843 /* ~"Ona już nie żyje."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 0.2 2.2
  SAY #3733 /* ~Jego oczy buchają płomieniem, po czym łagodnieją. Mówi, jakby cały czas wypuszczał powietrze. "Neutralny. Sprzymierzeniec. Znasz równowagę. Pomóż mi. Eliminuję ekstrema."~ */
  IF ~~ THEN REPLY #3768 /* ~"Co mogę uczynić?"~ */ GOTO 7
  IF ~~ THEN REPLY #3769 /* ~"Nie sądzę, żebym chciał ci pomóc."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #3734 /* ~"Poluję na Kolczaste Anioły i Kosy z Ciemnej Alei. Wybierz przywódcę jednego z nich i wyeliminuj go."~ */
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3770 /* ~"Zabiorę się za Kolczaste Anioły."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3771 /* ~"Zajmę się Kosami z Ciemnej Alei."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
Dead("Rwill")
~ THEN REPLY #3772 /* ~"Zgniły William, przywódca Kos z Ciemnej Alei, już nie żyje. Zabiję Krystal."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3773 /* ~"Krystal, przywódczyni Kolczastych Aniołów, już nie żyje. Zabiję Zgniłego Williama."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3774 /* ~"Oni oboje są już martwi."~ */ GOTO 9
  IF ~~ THEN REPLY #3775 /* ~"Nie sądzę, żebym był zainteresowany pomaganiem tobie."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.5 11.0 13.0 14.0 15.0
  SAY #3735 /* ~Jego ogniste oczy zwężają się, a on szepce: "Zatem jesteś wrogiem." Błyskawicznie cię atakuje!~ */
  IF ~~ THEN REPLY #3776 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3777 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4 5.4 7.4 11.2 14.2
  SAY #3736 /* ~"Teraz udowodnimy nasze filozofie. Próba sił. Wygrany jest prawdziwym zwycięzcą w naszych zmaganiach odnośnie prawdy."~ */
  IF ~~ THEN REPLY #3778 /* ~"Dobrze, ale ja nie mogę umrzeć. W końcu i tak przegrasz."~ */ DO ~AddexperienceParty(1500)
~ GOTO 10
  IF ~~ THEN REPLY #3779 /* ~"Jesteś naprawdę szalony, prawda?"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3780 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #3737 /* ~Jego oczy rozszerzają się. "Jesteś wieczny. Twoja prawda jest wieczna. Oddaję ci cześć. Zaszczycasz mnie. Żegnaj."~ */
  IF ~~ THEN REPLY #3781 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("BR_RW","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #3738 /* ~"Czy zabiłeś Zgniłego Williama?"~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3782 /* ~"Jeszcze nie. I nie mam takiego zamiaru."~ */ GOTO 8
  IF ~  !Dead("Rwill")
~ THEN REPLY #3783 /* ~"Nie. Pracuję nad tym."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3784 /* ~"Tak."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #3785 /* ~"Tak."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1 14.1
  SAY #3745 /* ~"Pracuj *szybciej*. Idź już. Oczekuję cię." Krzyżuje ręce.~ */
  IF ~~ THEN REPLY #3786 /* ~"W porządku."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 11.3
  SAY #3746 /* ~"Twoim następnym zadaniem jest zabicie Krystal, przywódczyni Kolczastych Aniołów. Równowaga wymaga jej śmierci."~ */
  IF ~~ THEN REPLY #3787 /* ~"Nie zrobię tego."~ */ GOTO 8
  IF ~~ THEN REPLY #3788 /* ~"Wrócę tu."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
END

IF ~  Global("BR_Krys","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #3747 /* ~"Czy zabiłeś Krystal?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3790 /* ~"Jeszcze nie. I nie mam takiego zamiaru."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3791 /* ~"Nie. Pracuję nad tym."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3792 /* ~"Tak."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3793 /* ~"Tak."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 5.5 14.3
  SAY #3748 /* ~"Twoim następnym zadaniem jest zabicie Zgniłego Williams, przywódcy Kos z Ciemnej Alei. Równowaga tego od ciebie wymaga."~ */
  IF ~~ THEN REPLY #3794 /* ~"Nie zrobię tego."~ */ GOTO 8
  IF ~~ THEN REPLY #3795 /* ~"Wrócę tu."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
END
