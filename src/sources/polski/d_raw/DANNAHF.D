// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAHF~

IF ~~ THEN BEGIN 0 // from:
  SAY #63309 /* ~"W miejscu, w którym go *nigdy* nie odnajdziesz. A jeżeli bendziesz sobie roił, że do niego trafisz, wiedz, że najpierw bendziesz musiał ze mnom siem zmierzyć."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63310 /* ~"Jeśli to tylko da mi siłem, dzienki której bendem ciem mogła wypatroszyć, to nic więcej mnie nie obchodzi!"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63311 /* ~"Dosyć już tej twojej klekotaniny! Jeżeli szukasz zwady, to ruszaj!"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63312 /* ~"Jeśliś taki chojrak i chcesz ze mnom popróbować szczenścia, to dawaj! Nie krempuj siem..."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63313 /* ~"*Przyskrzyń* swojom klekote, słyszysz?! Zamilcz..."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 8
END
