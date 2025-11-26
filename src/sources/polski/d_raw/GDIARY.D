// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GDIARY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~GDIARY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #30104 /* ~Książka wygląda jakby została wykonana z cienkich jak papier arkuszy srebra. Na okładce jest rycina przedstawiająca kobietę, z boku mały zamek. Bez względu na to jak bardzo się starasz, zamek skutecznie opiera się twoim próbom otwarcia.~ */
  IF ~~ THEN REPLY #50095 /* ~"Cóż, i tak nie chciałem go czytać... no, przynajmniej na razie."~ */ EXIT
END
