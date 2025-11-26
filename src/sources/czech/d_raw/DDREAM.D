// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDREAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDREAM~

IF ~  Global("Dream_Sequence","AR3017",0)
~ THEN BEGIN 0 // from:
  SAY #56043 /* ~Stojíš před katovskou smyčkou. Z temnoty se ozval hrobový hlas. "Zase sníš? Zase?! Zase!"~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56044 /* ~Tvé tělo se ti zdá podivně lehké a nehmotné, jako bys nad ním ztratil kontrolu, nebo jako by tebou vítr profukoval.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut1",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",1)
~ THEN BEGIN 2 // from:
  SAY #56045 /* ~Vznášíš se nad bludištěm zkroucených kořenů a černých větví, které trhají tvé nehmotné tělo na kusy.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut2",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",2)
~ THEN BEGIN 3 // from:
  SAY #56046 /* ~Stvůry nočních můr se vypínají ze zdí a ze země, vrhají se po tobě a trhají tvé maso. Jejich zuřivý útok je více, než dokáže tvé vědomí snést. Upadl jsi do bezvědomí.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut3",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",3)
~ THEN BEGIN 4 // from:
  SAY #56047 /* ~Stojíš před věží lebek, které na tebe promlouvají, ale nedokážeš v jejich slovech najít smysl, nerozumíš jim. Za tebou se ozvaly podivné zvuky, a když ses otočil, spatřil jsi skupinu fiendů, která se na tebe vrhá s jasnými úmysly.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
StartCutSceneMode()
StartCutSceneEx("3017cut5",FALSE)
~ EXIT
END

IF ~  Global("Dream_Sequence","AR3017",4)
~ THEN BEGIN 5 // from:
  SAY #56048 /* ~Zase stojíš v bludišti. Obklopuje tě pach smrti a rozkladu. Víš, že jsi je všechny pozabíjel. Hrobový hlas se znovu ozval.~ */
  IF ~~ THEN DO ~IncrementGlobal("Dream_Sequence","AR3017",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56049 /* ~"Oh, má krásná malá hádanko, zabil jsi je a tak mnoho těch ostatních, že už je nedokážu ani spočítat." Nedokážeš promluvit, oněměl jsi.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56050 /* ~"Pojď ke mně, má loutko... přijď za Ravel do jejího bludiště. Pojď za mnou a budeme snít spolu."~ */
  IF ~~ THEN REPLY #56051 /* ~Probuď se.~ */ DO ~TeleportParty("AR0502",[544.1539],14)
~ EXIT
END
