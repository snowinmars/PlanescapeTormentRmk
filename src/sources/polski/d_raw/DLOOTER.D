// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOOTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOOTER~

IF ~  !Dead("Jujog")
~ THEN BEGIN 0 // from:
  SAY #53202 /* ~Ta osoba dosłownie trzęsie się w niespokojnym podnieceniu; w oczach widać płomień zgryźliwego zniecierpliwienia. Kiedy nadchodzisz, czeka na ciebie złośliwy uśmieszek. "Czego?"~ */
  IF ~~ THEN REPLY #53203 /* ~"Co tu się dzieje?"~ */ GOTO 1
  IF ~~ THEN REPLY #53204 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53205 /* ~"Jeśli chcesz się trochę rozerwać, to pogadaj z Jujogiem. A na razie to się odszpicuj!"~ */
  IF ~~ THEN REPLY #53206 /* ~"Chwila... kim jest Jujog?"~ */ GOTO 2
  IF ~~ THEN REPLY #53207 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53208 /* ~Rzuca ci rozdrażnione spojrzenie i zaczyna trochę gestykulować. "Ten strażnik tam, uzbrojony po uszy."~ */
  IF ~~ THEN REPLY #53209 /* ~Odejdź.~ */ EXIT
END

IF ~  Dead("Jujog")
~ THEN BEGIN 3 // from:
  SAY #53210 /* ~Ta osoba wpada w panikę, zaczyna krzyczeć i traci niemal zdolność racjonalnego myślenia. "Jujog nie żyje! Co teraz zrobimy? Musimy się stąd wynosić!"~ */
  IF ~~ THEN REPLY #53211 /* ~Odejdź.~ */ EXIT
END
