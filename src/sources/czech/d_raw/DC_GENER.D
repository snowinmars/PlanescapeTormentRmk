// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_GENER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_GENER~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67980 /* ~Osoba se k tobě otočila a zabručela. "Známe se snad? Ne, nemyslím. Tak mě nechej na pokoji, nemám zájem se s tebou seznamovat."~ */
  IF ~~ THEN REPLY #67981 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67982 /* ~Osoba se zastavila a prohlíží si tě. "Bez urážky, kámo, ale já nemluvím s lidma, který neznám. A tebe ani nechci znát, rozumíš? Najdi si někoho jiného, kdo se s tebou bude ochotný vybavovat. Sbohem."~ */
  IF ~~ THEN REPLY #67983 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67984 /* ~Odfrkl si a přerušil tě dřív, než jsi stačil dopovědět pozdrav. "Nechci to slyšet. Ani slovo. Najdi si někoho jinýho, koho budeš vyslýchat, jasný?"~ */
  IF ~~ THEN REPLY #67985 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67986 /* ~Nervózně se na tebe usmál, zvedl ruce. "Snažím se vyhýbat problémům, tvrďáku, a když se na tebe tak podívám, tak ty seš jeden velkej problém. Nech mě na pokoji... prosím."~ */
  IF ~~ THEN REPLY #67987 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67988 /* ~Tahle osoba už ti nemá co víc říct.~ */
  IF ~~ THEN REPLY #67989 /* ~Odejdi.~ */ EXIT
END
