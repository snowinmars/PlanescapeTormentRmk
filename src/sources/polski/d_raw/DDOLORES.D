// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORES~

IF ~~ THEN BEGIN 0 // from:
  SAY #34365 /* ~Ta ciemnowłosa kobieta o bladej karnacji wygląda na kulturalną i wytworną osobę. Gdy się do ciebie odwraca, dostrzegasz, że jej oczy - które wcześniej wydawały ci się być szare - mają kolor wypolerowanej stali.~ */
  IF ~~ THEN REPLY #34366 /* ~"Witaj..."~ */ EXIT
END
