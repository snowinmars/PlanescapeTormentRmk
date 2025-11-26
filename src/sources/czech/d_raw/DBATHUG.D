// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2826 /* ~"Kdo u Abyssu seš? Di za Prohnilým Williamem - esli se mu nebudou líbit tvý otázky, kuchne tě. Nepudeš za ním, kuchneme tě my tady. A teď padej!"~ */
  IF ~~ THEN REPLY #3550 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3551 /* ~"U všech mocností! Neříkal jsem ti, že máš jít za Prohnilým Williamem? Ty blbej tupej kreténe. SHIVOVÉ! DO ÚTOKU!"~ */
  IF ~~ THEN REPLY #3552 /* ~Uteč.~ */ EXIT
  IF ~~ THEN REPLY #3553 /* ~Zaútoč.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3554 /* ~"Zabils toho parchanta? Fajn. Fakt nám lez na nervy. Zajdi za Williamem - má pro tebe něco hezkýho."~ */
  IF ~~ THEN REPLY #3555 /* ~Odejdi.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3556 /* ~"Přestaň se vykecávat a jdi zabít toho kreténa! Naše životy jsou v ohrožení, hňupe!"~ */
  IF ~~ THEN REPLY #3557 /* ~Odejdi.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3558 /* ~"Věděl jsem, že ta děvka brzo zeklepe bačkorama. Jdi za Prohnilým Williamem. Chce ti něco říct."~ */
  IF ~~ THEN REPLY #3559 /* ~Odejdi.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3560 /* ~"Nemáš náhodou něco na práci? Zabít někoho?!"~ */
  IF ~~ THEN REPLY #3561 /* ~Odejdi.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3562 /* ~"Ty! Zdechni! SHIVOVÉ! DO ÚTOKU!"~ */
  IF ~~ THEN REPLY #3563 /* ~Zaútoč.~ */ DO ~Enemy()
SetGlobal("0301_Bad_Angry","AR0301",1)
~ EXIT
  IF ~~ THEN REPLY #3564 /* ~Uteč.~ */ EXIT
END
