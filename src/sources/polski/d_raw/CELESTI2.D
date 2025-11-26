// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CELESTI2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~CELESTI2~

IF ~  Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 0 // from:
  SAY #59104 /* ~Trzymasz Niebiański Ogień w dłoniach, a ostrze lśni białym ogniem, śpiewając w twoim umyśle. Nagle staje się dla ciebie jasne, że możesz *raz* zmienić tę broń wedle swoich upodobań.~ */
  IF ~~ THEN REPLY #64490 /* ~Niech się stanie młotem.~ */ DO ~TransformPartyItem("Celesti2","CFHammer",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #64491 /* ~Niech się stanie toporem.~ */ DO ~TransformPartyItem("Celesti2","CFAxe",1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #64492 /* ~Niech się stanie maczugą.~ */ DO ~TransformPartyItem("Celesti2","CFClub",1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #64493 /* ~Niech się stanie nabijanymi rękawicami.~ */ DO ~TransformPartyItem("Celesti2","CFFist",1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #64494 /* ~Niech się stanie dobrym sztyletem.~ */ DO ~TransformPartyItem("Celesti2","CFDagger",1,0,0)
~ GOTO 6
  IF ~~ THEN REPLY #64495 /* ~Niech zostanie na razie takie, jakie jest.~ */ EXIT
END

IF ~  !Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 1 // from:
  SAY #64496 /* ~Ciężkie ostrze, wyjątkowo piękny srebrzysty metal, spoczywa bez ruchu w twoich dłoniach. Nic się z nim nie dzieje, nieważne jak bardzo wytężasz swój umysł.~ */
  IF ~~ THEN REPLY #64497 /* ~Zostaw je w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64498 /* ~Ostrze broni rozciąga się, krawędzie stają się tępe, a metal spływa w stronę sztychu z ogromną prędkością. Po kilku chwilach przemiana ostrza w dobrze wyważony młot dokonała się. To cudowna robota.~ */
  IF ~~ THEN REPLY #64507 /* ~"Doskonale."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64499 /* ~Ostrze rozciąga się, krańce znikają, a całość zmienia się w cylinder. Metal przepływa w stronę sztychu z ogromną prędkością. Po kilku chwilach przemiana ostrza w dobrze wyważony topór dokonała się. To cudowna robota.~ */
  IF ~~ THEN REPLY #64505 /* ~"Doskonale."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64500 /* ~Jelec stapia się z rękojeścią, a ostrze tępieje i zaokrągla w piękny uchwyt, pokryty wzorami identycznymi z tymi na ostrzu. Po chwili przemiana w ładną, dobrze wyważoną maczugę dokonała się.~ */
  IF ~~ THEN REPLY #64506 /* ~"Doskonale."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #64501 /* ~Twoje oczy nie są do końca w stanie nadążyć za przemianą ostrza w rękawice, ale widzisz, jak metal wiruje w twoich dłoniach. Gdy rozsuwasz je, trzymasz parę srebrnych rękawic, które wyglądają wyjątkowo pięknie - i morderczo.~ */
  IF ~~ THEN REPLY #64504 /* ~"Doskonale."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY #64502 /* ~Ostrze miecza skupia się, zdając się zatapiać w sobie i po chwili masz w dłoniach miniaturową wersję miecza Triasa, z pełną rękojeścią dopasowaną do twojej dłoni. Zdaje się ona być wyjątkowo użyteczna.~ */
  IF ~~ THEN REPLY #64503 /* ~"Doskonale."~ */ EXIT
END
