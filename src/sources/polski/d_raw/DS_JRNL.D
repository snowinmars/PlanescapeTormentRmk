// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_JRNL~

IF ~  NearbyDialog("Dsoego")
~ THEN BEGIN 0 // from:
  SAY #48857 /* ~Ta metalowa płyta najwyraźniej spełnia rolę łoża. Wydaje się, że jej boczną część można odsunąć i zajrzeć do środka.~ */
  IF ~~ THEN REPLY #48859 /* ~Podważ płytę i zajrzyj do środka.~ */ GOTO 1
  IF ~~ THEN REPLY #48861 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #48862 /* ~Nie możesz grzebać w rzeczach Soego, kiedy Grabarz znajduje się w pobliżu. Jeżeli naprawdę chcesz się tam dostać, musisz w jakiś sposób odciągnąć uwagę Soego, albo wywabić go stąd w inne okolice.~ */
  IF ~~ THEN REPLY #48863 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.0
  SAY #48864 /* ~Spokojny o to, że Soego nie ma w pobliżu, podważasz niewielką płytę i zaglądasz do środka. Widzisz tam coś w rodzaju księgi albo pamiętnika.~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #66860 /* ~Wyciągnij książkę i przejrzyj ją.~ */ GOTO 3
  IF ~  Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #48865 /* ~Wyciągnij książkę i przejrzyj ją.~ */ DO ~SetGlobal("Soego_Journal","GLOBAL",1)
SetGlobal("Soego","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 3
  IF ~~ THEN REPLY #48866 /* ~Zasuń płytę i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #48867 /* ~Ta księga jest pamiętnikiem Soego. Soe opowiada w nim szczegółowo o tym, jak został pogryziony przez szczurołaka, jak z wolna zapadał na likantropię, a także o tym, jak w przypływie obłędu zamordował i pożarł swojego przyjaciela, po czym musiał uciekać z Kostnicy. Poszukując bezpiecznej kryjówki, przybył do Labiryntów Myśli i zgodził się służyć Wielojedności, zbiorowej jaźni czaszkoszczurów zamieszkujących te okolice. Soe przebywa teraz w Ziemiach Umarłych z tajną misją wyznaczoną mu przez Wielojedność - ma szpiegować żywe trupy i przygotować grunt pod przyszłą inwazję czaszkoszczurów na tę część katakumb.~ */
  IF ~~ THEN REPLY #48868 /* ~Włóż pamiętnik na swoje miejsce, zasuń płytę i odejdź.~ */ JOURNAL #47846 /* ~Odnalazłem dziennik Soego ukryty w jego pokoju. Opisuje on jak został zaatakowany przez szczurołaka, jak w końcu poddał się likantropii i jak uciekł z Kostnicy, gdy nieświadomie zabił i pożarł swego przyjaciela. Szukając kryjówki dotarł do Labiryntów Myśli i zgodził się służyć Wielojedności, zgromadzonej tam zbiorowości czaszkoszczurów. Udał się do Ziem Umarłych, aby z polecenia Wielojedności szpiegować ich mieszkańców. Zbiorowa świadomość czaszkoszczurów ma nadzieję opanować kiedyś tę część katakumb.~ */ EXIT
END

IF ~  !NearbyDialog("Dsoego")
~ THEN BEGIN 4 // from:
  SAY #67165 /* ~Ta metalowa płyta najwyraźniej spełnia rolę łoża. Wydaje się, że jej boczną część można odsunąć i zajrzeć do środka.~ */
  IF ~~ THEN REPLY #67166 /* ~Podważ płytę i zajrzyj do środka.~ */ GOTO 2
  IF ~~ THEN REPLY #67167 /* ~Odejdź.~ */ EXIT
END
