// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWTALKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWTALKA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3038 /* ~Jestem prawdopodobnie jedyną osobą w Niższej Dzielnicy, która w zasadzie nie ma nic przeciwko temu, by rozmawiać z nieznajomymi. Ze wszystkich, jestem rzadkim wyjątkiem.~ */
  IF ~~ THEN REPLY #3039 /* ~Niech będzie. Może jeszcze kiedyś porozmawiamy, skoro jesteś taki wyjątkowy i przekonamy się wtedy czy rzeczywiście.~ */ EXIT
END
