// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERERAT~

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23941 /* ~Krysodlak na tebe syčí. "Člověéééééék! Chcííííípni!" Vyráží do útoku.~ */
  IF ~~ THEN REPLY #23946 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23947 /* ~Uteč.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #23942 /* ~Krysodlak na tebe syčí. "Člověéééééék! Chcííííípni!" Vyráží do útoku.~ */
  IF ~~ THEN REPLY #23948 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23949 /* ~Uteč.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #23943 /* ~Krysodlak na tebe syčí, ale svou zřejmou touhu po útoku drží na uzdě. Místo toho se stahuje zpátky, sledujíc tě pohledem.~ */
  IF ~~ THEN REPLY #23950 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("CR_Vic","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #23944 /* ~Krysa s lidskou podobou na tebe zaštěbetala a potřásla hlavou, když jsi se s ní pokusil domluvit. Očividně ztratila chuť bavit se s lidma.~ */
  IF ~~ THEN REPLY #23951 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("Zap","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #23945 /* ~Krysodlak na tebe syčí. "Člověéééééék! Chcííííípni!" Vyráží do útoku.~ */
  IF ~~ THEN REPLY #23952 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23953 /* ~Prchej.~ */ EXIT
END

IF ~  CreatureInArea("AR0508")
~ THEN BEGIN 5 // from:
  SAY #67268 /* ~Krysodlak na tebe zasyčel, ale přes svou zjevnou touhu neútočí. Místo toho couvá nazpátek a napjatě tě sleduje.~ */
  IF ~~ THEN REPLY #67269 /* ~"Tak tedy sbohem."~ */ EXIT
END
