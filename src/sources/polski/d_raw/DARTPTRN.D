// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARTPTRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DARTPTRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50864 /* ~"Bardzo przepraszam, szanowny panie, ale jestem tutaj, aby przyglądać się sztuce - a nie rozmawiać z nieznajomymi. A teraz, o ile będzie pan łaskawy mi wybaczyć... żegnam."~ */
  IF ~~ THEN REPLY #50865 /* ~Odejdź.~ */ EXIT
END
