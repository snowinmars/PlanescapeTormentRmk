// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~WERERAT~

IF ~  Dead("Mantuok")
~ THEN BEGIN 0 // from:
  SAY #29298 /* ~"Ludzki męcie! GIIIŃ!" Szczurołak rzuca się na ciebie.~ */
  IF ~~ THEN REPLY #29304 /* ~"A niech to, a ja chciałem tylko pogadać!"~ */ DO ~Enemy()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 1 // from:
  SAY #29299 /* ~Ohydny szczuroczłek syczy na twój widok: "Czego chcesz, człowiecze?"~ */
  IF ~~ THEN REPLY #29305 /* ~"Kim jesteś?"~ */ GOTO 2
  IF ~~ THEN REPLY #29306 /* ~"Gdzie jest Lotar?"~ */ GOTO 3
  IF ~~ THEN REPLY #29307 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #29308 /* ~"Czy znasz Mantuoka?"~ */ GOTO 5
  IF ~~ THEN REPLY #29309 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29300 /* ~Szczurołak przygląda ci się wzgardliwie. "Nie twój interes, człowiecze." Krztusi się od własnego śmiechu.~ */
  IF ~~ THEN REPLY #29310 /* ~"W porządku. Gdzie jest Lotar?"~ */ GOTO 3
  IF ~~ THEN REPLY #29311 /* ~"Co to za miejsce?"~ */ GOTO 4
  IF ~~ THEN REPLY #29312 /* ~"Gdzie mogę znaleźć Mantuoka?"~ */ GOTO 5
  IF ~~ THEN REPLY #29313 /* ~"Zapomnij."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #29301 /* ~"Pan... powinien tu być. Bez wątpienia... obserwuje cię." Jego wąsy nerwowo drgają. "Idź już! Nie mam już ochoty z tobą rozmawiać!"~ */
  IF ~~ THEN REPLY #29314 /* ~"W porządku."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.1
  SAY #29302 /* ~"To nasze gniazdo. Nieczęsto będziesz tu powracał, czyż nie, człowiecze? Nie potrzeba nam takich jak ty."~ */
  IF ~~ THEN REPLY #29315 /* ~"Nie musisz się tym martwić. Myślę, że ten zapach okazałby się i tak silniejszy ode mnie. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #29316 /* ~"Prawdopodobnie nie. Nie jest to tak do końca przyjemny zakątek. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2
  SAY #29303 /* ~"Mantuoka? Czego chcesz od Mantuoka? Jeśli go potrzebujesz, Mantuok cię znajdzie." Chichocze i cofa się.~ */
  IF ~~ THEN REPLY #29317 /* ~"W takim razie powiedz mi, gdzie mogę znaleźć Lotara."~ */ GOTO 3
  IF ~~ THEN REPLY #29318 /* ~"W takim razie opowiedz mi o tym miejscu."~ */ GOTO 4
  IF ~~ THEN REPLY #29319 /* ~"Dobrze. Żegnaj."~ */ EXIT
END
