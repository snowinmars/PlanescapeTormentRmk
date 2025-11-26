// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMATTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMATTER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Ten olbrzymi mężczyzna ma na sobie równie ogromną jak on sam, ozdobną, czerwoną zbroję. Kiedy się zbliżasz przygląda ci się ostrożnie, ale bez strachu.~ */
  IF ~~ THEN REPLY #2894 /* ~Grzmiący głos odbija się echem w jego ogromnym hełmie. "Witaj, obywatelu. Jestem Rzeczjasny... ochroniarz Skrupulatnej, Czwartego Sędziego Dzielnicy. Musisz mi wybaczyć, bo mam wobec niej obowiązki. Żegnaj."~ */ EXIT
END
