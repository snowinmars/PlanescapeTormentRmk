// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHAD~

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #23915 /* ~"Se mnou nemluv. Promluv si s Raimonem." Krysodlak se vyhýbá tvému pohledu.~ */
  IF ~~ THEN REPLY #23931 /* ~"Velmi dobře."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #23309 /* ~"Řekl jsem, nemluv na mě." Krysodlak se na tebe stále nechce podívat.~ */
  IF ~~ THEN REPLY #23933 /* ~"Dobrá."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #23310 /* ~"Nemáš nějaké jiné místo kam jít? Ne jako tady?" Krysodlakův hlas je mdlý a bezstarostný.~ */
  IF ~~ THEN REPLY #23934 /* ~"Předpokládám, že ano. Sbohem."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #23916 /* ~"Silák, co? Pokračuj, než si Raimon dodá kuráž a zavolá posily." Zdá se, že tento krysodlak to má těžce na háku.~ */
  IF ~~ THEN REPLY #23935 /* ~"Co když pohrozím já TOBĚ?"~ */ GOTO 4
  IF ~~ THEN REPLY #23936 /* ~"Pak odejdu."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23917 /* ~Pokrčil rameny.~ */
  IF ~~ THEN REPLY #23937 /* ~Napadni ho.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23938 /* ~"Pak tedy sbohem."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #23918 /* ~"Ó, pro lásku k... hádám, že zemřeš, hlupáku..."~ */
  IF ~~ THEN REPLY #23939 /* ~"Hádám, že to můžeš zkusit."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NearbyDialog("DAnnah")
~ THEN BEGIN 6 // from:
  SAY #23919 /* ~Po zavraždění svého parťáka krysodlaka se ten chlapík podíval na Annah. "Annah, to je Shaddeus. Pustím vás ven. Nesnesu, abyste tu byli takhle uvězneni. Přimluvte se za mě, až se vrátíte do Vesnice a vyřiďte jim, že se tu chystá něco zlého. Zatím nemůžu říct co, ale... vy to víte nejlíp."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF ~~ THEN BEGIN 7 // from:
  SAY #23920 /* ~"Inu dobrá." Vzal klíče z Raimonovo těla, odemkl dveře a otevřel vám je. "Teď pokračujte." Rychle se poklonil a odběhl pryč.~ */
  IF ~~ THEN REPLY #23434 /* ~"Budeme. Děkuji."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END

IF ~  !NearbyDialog("DAnnah")
~ THEN BEGIN 8 // from:
  SAY #23921 /* ~"Ptáte se proč jsem to udělal, co? Býval jsem občanem Pohřbené Vesnice. Jmenoval jsem se Shaddeus. Nechci být krysodlak a nedospěl jsem k závěru, že by ta nemoc pro mě měla znamenat menší oddanost k lidem. Zmizte. Hned." Odemknul dveře, otevřel vám je a odběhl pryč.~ */
  IF ~~ THEN REPLY #23940 /* ~"Díky, Shaddeusi. Sbohem."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END
