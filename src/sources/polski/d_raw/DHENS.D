// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHENS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHENS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3074 /* ~Jestem suką, jestem kłamcą, jestem złodziejką, jestem twą matką, jestem sączącą się ropą, której nie wolno ignorować... nie, zaczekaj, to Meredith Brooks. Ja jestem sprzedawczynią, która kłamie, choć w mych kłamstwach, możesz odnaleźć prawdę. Może.~ */
  IF ~~ THEN REPLY #3366 /* ~Chcę zobaczyć, czy projektant zdoła to ściągnąć. To może być niezły ubaw!~ */ EXIT
END
