// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48820 /* ~Łuk ten powstał z wykrzywionego konaru drzewa, które wyrosło z podłogi labiryntu, a następnie wygięło się w półkole. Gdy do niego podchodzisz, otwór znajdujący się pod nim zaczyna się delikatnie mienić... wygląda na to, że prowadzi do jakiegoś dziwnego ogrodu pokrytego czarnymi kolcami.~ */
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",1)
~ THEN REPLY #48821 /* ~Podejdź do lewej strony łuku, zadrap paznokciami pień drzewa, a następnie przejdź przez portal.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",0)
~ THEN REPLY #48822 /* ~Przyjrzyj się uważnie łukowi.~ */ GOTO 1
  IF ~~ THEN REPLY #51442 /* ~Zostaw opleciony łuk w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51436 /* ~Gdy przyglądasz się temu naturalnemu łukowi, zauważasz, że lewa strona pnia jest ponacinana, jakby ktoś zrobił na nim kilka nacięć nożem. Rysy nie wydają się jednak pochodzić od noża... wyglądają raczej na ślady zdrapania, które mogą pochodzić od czyichś szponów.~ */
  IF ~~ THEN REPLY #51437 /* ~Zadrap paznokciami pień drzewa i zobacz co się stanie.~ */ DO ~SetGlobal("AR0610_Secret_Portal_2","AR0610",1)
~ GOTO 2
  IF ~~ THEN REPLY #51438 /* ~Zostaw opleciony łuk w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51439 /* ~Zatapiasz paznokcie w pniu drzewa i, ku twojemu zdumieniu, wchodzą one w drewno jak w masło. Przebijasz się paznokciami na wylot pokrytego dziką różą drzewa, w odpowiedzi na co, otwór pod łukiem zaczyna intensywnie się mienić, zachęcając cię do przejścia przez niego.~ */
  IF ~~ THEN REPLY #51440 /* ~Przejdź przez łuk.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51441 /* ~Zostaw opleciony łuk w spokoju.~ */ EXIT
END
