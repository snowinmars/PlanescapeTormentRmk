// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3400 /* ~Jestem klientką Niższej Dzielnicy. Podobnie jak męski odpowiednik mojego gatunku, chodzę od sklepu do sklepu, oglądając towary i szukam co mogłabym kupić. Można by mnie uważać za puszek.~ */
  IF ~~ THEN REPLY #3401 /* ~To interesujące co mówisz... to znaczy, to o tym puszku. Dziękuję, że poświęciłaś mi chwilkę, skarbie.~ */ EXIT
END
