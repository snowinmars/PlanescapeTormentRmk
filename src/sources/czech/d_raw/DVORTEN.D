// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVORTEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DVORTEN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42519 /* ~Vidíš úředníka Harmonia. Jakmile ses přiblížil, věnoval ti znuděný pohled. ~ */
  IF ~~ THEN REPLY #44833 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #44834 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42520 /* ~Věnuje ti znuděný pohled. "Buďte zdráv, občane. Hranice Tří Vortenů k vašim službám."~ */
  IF ~~ THEN REPLY #44838 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44839 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #44835 /* ~Povzdychl si. "Nechci na tebe být sprostý, ale jsem ve službě a nemám čas na otázky." Odmlčel se. "Jestli chceš informace, promluv si s Ebbem Kolenovrzem."~ */
  IF ~~ THEN REPLY #44836 /* ~"Kdo je Ebb Kolenovrz?"~ */ GOTO 3
  IF ~~ THEN REPLY #44837 /* ~"Kde ho najdu?"~ */ GOTO 4
  IF ~~ THEN REPLY #44840 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44841 /* ~"Je to můj starý přítel. Myslím, že se teďka považuje za informátora a průvodce, takže si s tebou může pokecat skoro o všem."~ */
  IF ~~ THEN REPLY #44842 /* ~"Kde ho najdu?"~ */ GOTO 4
  IF ~~ THEN REPLY #44843 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #44844 /* ~Chvíli přemýšlí. "Naposledy jsem slyšel, že se usadil U Doutnajícího nebožtíka. To je někde dole v Úlu."~ */
  IF ~~ THEN REPLY #44845 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #44846 /* ~Vidíš Důstojníka Harmonia Oceň Tři Skutky. Lehce se ti uklonil. "Vítej."~ */
  IF ~~ THEN REPLY #44847 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #44848 /* ~"No nic, sbohem."~ */ EXIT
END
