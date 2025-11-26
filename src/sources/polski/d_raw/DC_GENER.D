// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_GENER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_GENER~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67980 /* ~Kiedy przerywasz mu rozmowę, człowiek ten odwraca się do ciebie i krzywi gniewnie. "Czy my się *znamy*? No właśnie? Nie przypominam sobie. Dlatego zostaw mnie w spokoju. Żegnaj."~ */
  IF ~~ THEN REPLY #67981 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67982 /* ~Kiedy próbujesz przyciągnąć jego uwagę, człowiek ten zatrzymuje się i odwraca do ciebie. "Bez obrazy, śmiałku, ale nie zwykłem prowadzić rozmów z ludźmi, których nie znam. A tak się akurat składa, że ciebie ani nie znam, ani nie mam ochoty poznawać. Dlatego, jeśli chcesz o coś spytać, znajdź sobie kogoś innego. Dobra?"~ */
  IF ~~ THEN REPLY #67983 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67984 /* ~Jeszcze nie zdążyłeś wypowiedzieć formuły powitania, a człowiek ten uśmiecha się pogardliwie i odsuwa na bok. "Nie ciekawi mnie to, co masz do powiedzenia. Ani jedno słowo. Znajdź sobie jakiegoś głąba i jego zamęczaj pytaniami. A mnie daj święty spokój. Zrozumiano?"~ */
  IF ~~ THEN REPLY #67985 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67986 /* ~Człowiek ten uśmiecha się nerwowo i podnosi do góry obie dłonie w geście ni to obrony, ni to deklaracji braku złych intencji. "Ja tylko próbuję trzymać się z daleka od kłopotów, krwawniku. Z daleka od kłopotów i z daleka od ludzi o twoim wyglądzie. Bo tacy, jak ty przynoszą duże kłopoty. Dlatego, bardzo proszę, zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #67987 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67988 /* ~Ten człowiek nie ma już nic więcej do powiedzenia.~ */
  IF ~~ THEN REPLY #67989 /* ~Odejdź.~ */ EXIT
END
