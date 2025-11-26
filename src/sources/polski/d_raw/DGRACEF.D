// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACEF~

IF ~  Global("Grace_Death_Scene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #63324 /* ~"A więc ty jesteś tym pająkiem, który utkał tę całą pajęczynę."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG4",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #63325 /* ~"Mam wiele pytań, na które mógłbyś odpowiedzieć. Twoje zamierzenia nie są dla mnie dostatecznie jasne."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 10
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalLT("Fortress_Party","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #63326 /* ~"Moje serce nie jest czarne, ani nie lękam się utraty życia."~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63327 /* ~"W twojej fortecy przebywa ktoś bliski mojemu sercu. Nie odejdę stąd, dopóki się z nim nie połączę, i dopóki on nie rozwiąże swoich spraw do satysfakcjonującego końca."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalGT("Fortress_Party","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #63328 /* ~"Moje serce nie jest czarne, ani nie lękam się utraty życia."~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63329 /* ~"W twojej fortecy przebywają moi przyjaciele. Nie odejdę stąd, dopóki się z nimi nie połączę, i dopóki człowiek, który nam przewodzi, nie rozwiąże swoich spraw do satysfakcjonującego końca."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63330 /* ~"Niezależnie jak ponętna jest twoja propozycja i tak z niej nie skorzystam, bo byłoby to równoznaczne z opuszczeniem moich przyjaciół."~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63331 /* ~"Jeżeli zaś chodzi o 'niewielką cenę', jaką mu przyjdzie zapłacić, to jest to ekwiwalent jego śmierci. Podróżuję z tym człowiekiem od pewnego czasu i jest wiele rzeczy, których nie powinien zapomnieć."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63332 /* ~"To *twój* osąd."~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #63333 /* ~"Prawda jest taka, że nie życzę sobie, aby ten człowiek zapomniał o mnie. Ani żeby zapomniał o tym, jak wiele musiał przejść, aby dotrzeć do tego miejsca."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63334 /* ~"Ten człowiek wiele wycierpiał i moja sympatia leży po jego stronie, a nie aroganckiej istoty, która przybiera przede mną wyszukane pozy, a swoich racji dochodzi w *tchórzliwej* walce, woląc zadawać śmierć z oddali niż stanąć do otwartego boju."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63335 /* ~"Nie będziesz go już więcej dręczył."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 15
END
