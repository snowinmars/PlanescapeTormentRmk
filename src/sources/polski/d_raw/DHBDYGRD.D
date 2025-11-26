// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHBDYGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHBDYGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Ten olbrzymi mężczyzna ma na sobie równie ogromną jak on sam, ozdobną, czerwoną zbroję. Kiedy się zbliżasz przygląda ci się ostrożnie, ale bez strachu.~ */
  IF ~~ THEN REPLY #31238 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #31239 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2894 /* ~Grzmiący głos odbija się echem w jego ogromnym hełmie. "Witaj, obywatelu. Jestem Rzeczjasny... ochroniarz Skrupulatnej, Czwartego Sędziego Dzielnicy. Musisz mi wybaczyć, bo mam wobec niej obowiązki. Żegnaj."~ */
  IF ~~ THEN REPLY #31240 /* ~"Jedną chwilę... Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #31241 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #31235 /* ~Odwraca się i zaczyna odchodzić.~ */
  IF ~~ THEN REPLY #31242 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #31236 /* ~Ten olbrzymi mężczyzna ma na sobie równie ogromną jak on sam, ozdobną, czerwoną zbroję. Nawet przez otwory w jego hełmie widzisz, że kiedy się zbliżasz, przygląda ci się podejrzliwie.~ */
  IF ~~ THEN REPLY #31243 /* ~"Witaj..."~ */ GOTO 4
  IF ~~ THEN REPLY #31244 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31237 /* ~Nagle podnosi broń. "Tak jak myślałem: to ty!" Rusza do ataku, wołając na innych strażników.~ */
  IF ~~ THEN REPLY #31245 /* ~Broń się.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #31246 /* ~Uciekaj.~ */ DO ~Enemy()
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
