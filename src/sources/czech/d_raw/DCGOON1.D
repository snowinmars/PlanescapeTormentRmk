// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0706")
~ THEN BEGIN 0 // from:
  SAY #53695 /* ~Hele, vole, radši vocaď vypadni... jestli víš, co je pro tebe dobrý."~ */
  IF ~~ THEN REPLY #53696 /* ~"Tak sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0706")
~ THEN BEGIN 1 // from:
  SAY #53697 /* ~"Možná blbě slyšíš. Vypadni odtud. Nebudu to opakovat."~ */
  IF ~~ THEN REPLY #53698 /* ~"Dobrá. Jdu pryč.".~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0706")
~ THEN BEGIN 2 // from:
  SAY #53699 /* ~"Měl jsi svoji šanci, vole. Měl jsi odejít, dokuds měl šanci." Grázl útočí!~ */
  IF ~~ THEN REPLY #53700 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66759 /* ~"Chceš tady postávat a zívat, nebo nás zachránit? Pohni sebou!"~ */
  IF ~~ THEN REPLY #66760 /* ~"Dobrá. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66761 /* ~Prošedivělý muž se na tebe s opovržením podíval. "Co chceš, vole? Nevidíš, že mám spoustu práce s uklízením smetí, co nás dostalo do Carceri. Zbavíme se toho debila a bude fajnn. Budem zpátky v Pustinách."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #66769 /* ~"Děje se to, že to vaše davové šílenství připevňuje město ke Carceri ještě víc. Odpusťte mu a pracujte společně proti zlu, které ovládá město a naše šance budou mnohem vyšší."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #66771 /* ~"Děje se to, že to vaše davové šílenství připevňuje město ke Carceri ještě víc. Odpusťte mu a pracujte společně proti zlu, které ovládá město a naše šance budou mnohem vyšší."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #66772 /* ~"Proč si myslíš, že jeho smrt vyřeší tvoje problémy? Měl bys raději přesvědčit ty lidi, ať pomáhají bránit město před monstry. Ukázat politikům, že nad vámi nemají žádnou moc je mnohem lepší odplata."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66773 /* ~"Proč si myslíš, že jeho smrt vyřeší tvoje problémy? Měl bys raději přesvědčit ty lidi, ať pomáhají bránit město před monstry. Ukázat politikům, že nad vámi nemají žádnou moc je mnohem lepší odplata."~ */ GOTO 5
  IF ~~ THEN REPLY #66774 /* ~"Okamžitě přestaňte. Žádné lynčování trpět nebudu."~ */ DO ~SetGlobal("Lynch_Mob","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #66775 /* ~"Mám na práci důležitější věci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.3
  SAY #66776 /* ~"Ale on... on... Do pytle. Dobře." Zvýšil hlas, aby ho dav kolem lépe slyšel. "Pusťte ho! Máme tady celý město, o který se musíme postarat."~ */
  IF ~~ THEN REPLY #66777 /* ~"Díky, příteli. Hodně štěstí."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
SetGlobal("Lynch_Mob","GLOBAL",1)
AddexperienceParty(150000)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.4
  SAY #66778 /* ~"Drž hubu, vole. My tu máme práci!" Otočil se ke svým pomahačům. "Do něj!"~ */
  IF ~~ THEN REPLY #66779 /* ~Zaútoč.~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66780 /* ~Sleduj.~ */ EXIT
END
