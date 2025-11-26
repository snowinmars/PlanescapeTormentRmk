// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARSLAV~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50939 /* ~Vidíš těžce oděného strážce Harmonia. Je prošedivělý, chmurný a poněkud přiopilý. Hledí si otroků, kteří byli pochytáni a koutkem úst k tobě promlouvá. "Co chceš?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50940 /* ~"Jsem tady, abych vyzvedl dceru Zkaženého Vrdele."~ */ GOTO 2
  IF ~~ THEN REPLY #50941 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #50942 /* ~"Co děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #50943 /* ~"Jsem tady, abych zastavil síť otrokářů."~ */ GOTO 5
  IF ~~ THEN REPLY #50944 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #50945 /* ~"Zas ty?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50946 /* ~"Jsem tady, abych vyzvedl dceru Zkaženého Vrdele."~ */ GOTO 2
  IF ~~ THEN REPLY #50947 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #50948 /* ~"Co děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #50949 /* ~"Jsem tady, abych zastavil síť otrokářů."~ */ GOTO 5
  IF ~~ THEN REPLY #50950 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.0
  SAY #50951 /* ~"Chceš ji koupit zpátky? Promluv si o tom se Skatchem... ten tomu tady šéfuje."~ */
  IF ~~ THEN REPLY #50952 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #50953 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #50954 /* ~"Přišel jsem zrušit otrokáře."~ */ GOTO 5
  IF ~~ THEN REPLY #50955 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 4.1
  SAY #50956 /* ~Zabručel. "Jak ti to připadá? 'Verbíři' Harmonia."~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50957 /* ~"V tom případě jsem si přišel pro dceru Zkaženého Vrdele."~ */ GOTO 2
  IF ~~ THEN REPLY #50958 /* ~"Co to děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #50959 /* ~"No, přišel jsem zrušit otrokáře."~ */ GOTO 5
  IF ~~ THEN REPLY #50960 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.1 3.1
  SAY #50961 /* ~"Jak ti to připadá? Skatch tomu říká verbování. Já tomu říkám otrokářský nájezd. Nezajímá mě to. Jsou to dobrý prachy." Opatrně se na tebe zadíval. "Chceš něco?"~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50962 /* ~"Přišel jsem si pro dceru Zkaženého Vrdele."~ */ GOTO 2
  IF ~~ THEN REPLY #50963 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #50964 /* ~"Přišel jsem zrušit otrokáře."~ */ GOTO 5
  IF ~~ THEN REPLY #50965 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.2 3.2 4.2
  SAY #50966 /* ~"Heh. Proč mi to říkáš? Teď tě budu muset zabít." Vytáhl zbraň a zaútočil!~ */
  IF ~~ THEN REPLY #50967 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
