// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34202 /* ~Na tym obrazie przedstawiono widok brzegu. Duże, czerwono-pomarańczowe słońce zachodzi za półwyspem albo dużym falochronem. Widok ten, choć niezbyt oryginalny, zapiera dech w piersiach - artysta wspaniale oddał grę gasnącego światła na wodzie - ale dłuższe wpatrywanie się w malowane słońce sprawia, że zaczynają cię boleć oczy. Na podpisie widnieją słowa 'Powierzchnia Talazji'.~ */
  IF ~~ THEN REPLY #42674 /* ~Dotknij malowidła.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42675 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42676 /* ~Może to dziwne, ale w powierzchni obrazu nie ma nic niezwykłego.~ */
  IF ~~ THEN REPLY #42677 /* ~Odejdź.~ */ EXIT
END
