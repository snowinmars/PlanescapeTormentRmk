// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHEZOBOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHEZOBOL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50917 /* ~Widzisz szczupłego mężczyznę, odzianego w długi płaszcz. Twarz ma pociemniałą od gniewu, krzyczy na swoich podwładnych by ruszali się jeszcze szybciej. "Szybciej, szmaciarze! Mamy tylko tyle czasu, ile trzeba na złożenie ofiary!" Wydaje się, że cię nie zauważył.~ */
  IF ~~ THEN REPLY #50918 /* ~"Co robisz?"~ */ GOTO 1
  IF ~~ THEN REPLY #50919 /* ~"Jestem tu, by cię powstrzymać."~ */ GOTO 2
  IF ~~ THEN REPLY #50920 /* ~Odejdź w milczeniu.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #50921 /* ~Spogląda do tyłu, na twarzy pojawia mu się poirytowanie. "Zbijam forsę na chaosie, trepie. Najłatwiej zdobyć niewolników teraz, gdy wszyscy martwią się tym, jak przywrócić w mieście porządek. Przepraszam, muszę zająć się moimi sprawami." Odwraca się do swoich ludzi.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50922 /* ~"Problemy w tym mieście powodują ludzie, którzy próbują dorobić się na nieszczęściu. Zostaw to, a może będziesz mógł pomóc miastu przestać się staczać - a wtedy możesz powrócić do handlu."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #50923 /* ~"Zbyt wielu ludzi ma swój udział w chaosie i złu, które ma tu miejsce. Gdyby twoi ludzie pomogli w obronie miasta, mógłbyś przywrócić równowagę."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #50924 /* ~"Właśnie takie zachowanie wepchnęło to miasto w tarapaty. Przyłącz się do mnie, a może razem szybciej się stąd wydostaniemy."~ */ GOTO 3
  IF ~~ THEN REPLY #50925 /* ~"Jestem tu, by cię powstrzymać."~ */ GOTO 2
  IF ~~ THEN REPLY #50926 /* ~Zaatakuj go.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Slaver_1","GLOBALGood",-1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 5.1
  SAY #50927 /* ~Szydzi. "Chciałbym zobaczyć, jak mnie powstrzymujesz. Ludzie! Zostawcie niewolników i zabijcie tego intruza!"~ */
  IF ~~ THEN REPLY #50928 /* ~Walcz.~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.2
  SAY #50930 /* ~Woła do swoich ludzi. "Przestańcie!" Patrzy na ciebie. "Więc mówisz, że nie musimy składać ofiary gerelethom?"~ */
  IF ~~ THEN REPLY #50931 /* ~"Nie. Całe miasto stanie się jedną, wielką ofiarą, jeśli nie pomożesz innym mieszkańcom."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(150000)
~ JOURNAL #50932 /* ~Przekonałem przywódcę handlarzy niewolników, aby porzucił swój niecny proceder i obrócił swój oręż przeciw gerelethom, które są plagą tego miasta.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50933 /* ~Klnie. "Takie już moje szczęście. Dobra chłopcy, puśćcie ich wolno! Musimy ocalić miasto!" Rzuca ci nieodgadnione spojrzenie i prowadzi swą grupę. "Dzięki za wskazówkę, przybyszu."~ */
  IF ~~ THEN REPLY #50934 /* ~"Nie ma sprawy. Powodzenia."~ */ DO ~SetGlobal("Slaver_Gone","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #50935 /* ~Przywódca niewolników najwyraźniej dobrze sobie radzi, chociaż cały czas uważa na ataki gerelhów. "Czego chcesz, trepie?"~ */
  IF ~~ THEN REPLY #50936 /* ~"Co robisz?"~ */ GOTO 1
  IF ~~ THEN REPLY #50937 /* ~"Jestem tu, by cię powstrzymać."~ */ GOTO 2
  IF ~~ THEN REPLY #50938 /* ~Odjedź bez słowa.~ */ EXIT
END
