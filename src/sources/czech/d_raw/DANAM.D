// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33042 /* ~Otrhaný sběrač středního věku jde k tobě, jakmile jsi sem vstoupil. "Já..." Rychle si tě prohlíží a odfrkne si. "...tě neznám."~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33044 /* ~"Zdravím."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33049 /* ~"Taky mám pocit, že nás zatím nikdo nepředstavil."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33050 /* ~"Jenom procházím."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33051 /* ~Ignoruj sběrače a pokračuj.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #33043 /* ~Sběrač na tebe dále zlobně zírá.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33053 /* ~"Hledám muže jménem Pharod."~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #33052 /* ~"Neviděls tady někde ležet deník?"~ */ GOTO 2
  IF ~~ THEN REPLY #33054 /* ~"Nějaký problém?"~ */ GOTO 4
  IF ~~ THEN REPLY #33055 /* ~Ignoruj sběrače a pokračuj.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #33045 /* ~"Co hledáš, to mě nezajímá, vole." Odplivl si. "Co mě zajímá, je to, že v mé přítomnosti ještě pořád dýcháš."~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33058 /* ~"Pokud mě nenecháš projít, sběrači, jeden z nás do Márnice půjde. A nebudu to já."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33093 /* ~"Pokud mě nenecháš projít, sběrači, jeden z nás do Márnice půjde. A nebudu to já."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33094 /* ~"Sbírat jiná těla, než jsou ta mrtvá, mi zní jako výborný způsob, jak se setkat s Paní."~ */ GOTO 8
  IF ~~ THEN REPLY #33095 /* ~"Tak to tě teda opustím, vole."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33096 /* ~

Zaútoč na sběrače.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32994 /* ~Ignoruj sběrače a pokračuj.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #33046 /* ~Jak se blížíš ke sběrači, znechuceně se na tebe dívá. "Už ani slovo, vole. Zjistíš, že tady se s nima špatně obchoduje." Sběrač vytáhl z kapsy nůž. "Obávám se, že nějakou cenu tu má akorát tvý tělo."~ */
  IF ~~ THEN REPLY #32995 /* ~"To si nemyslím..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #33047 /* ~"Problém, jak já ho vidím, vole... je, že v mý přítomnosti ještě pořád dejcháš." Odplivl si.~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33097 /* ~"Pokud mě nenecháš projít, sběrači, jeden z nás do Márnice půjde. A nebudu to já."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33101 /* ~"Pokud mě nenecháš projít, sběrači, jeden z nás do Márnice půjde. A nebudu to já."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33103 /* ~"Sbírat těla, než jsou mrtvá mi zní jako výborný způsob, jak se setkat s Paní."~ */ GOTO 8
  IF ~~ THEN REPLY #33104 /* ~"Tak to tě teda opustím, vole."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33105 /* ~Zaútoč na sběrače.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33106 /* ~Ignoruj sběrače a pokračuj.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 2.5 4.3 4.5
  SAY #33048 /* ~Jak se obracíš k odchodu, všiml sis, že sběrač z kapsy vytáhl nůž. "Nevím, co sis myslel, když ses sem vydal, ale jediný místo, kam odsaď pudeš, kámo, je Márnice."~ */
  IF ~~ THEN REPLY #33107 /* ~"To si nemyslím..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0
  SAY #33090 /* ~Tvá výhružka ho trochu uklidnila. "Vypadni vocaď, vole!" Zasyčel. "A na tvým místě bych si hlídal záda."~ */
  IF ~~ THEN REPLY #33108 /* ~"Nápodobně.."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 4.1
  SAY #33091 /* ~Sběrač na tvou hrozbu odpověděl vytáhnutím nože z jedné kapsy. "Nesouhlasím s tebou, vole. Budeš to TY, kdo mi dodá prachy do kapes!"~ */
  IF ~~ THEN REPLY #33109 /* ~"Vyzývám tě..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 4.2
  SAY #33092 /* ~Vypadá to, že jsi sběrači narval do hlavy trochu rozumu, jelikož se od tebe odvrátil. "Hlídej si záda, kámo. Většina lidí tady si s tebou promluví spíš nožem, než kebulí, a pokud tady zůstaneš eště chvilku, udělám asi to samý."~ */
  IF ~~ THEN REPLY #33110 /* ~"No jó..."~ */ EXIT
END
