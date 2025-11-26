// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM985.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM985~

IF ~  Global("Topple_985","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45515 /* ~Tato mrtvola - "985" - zůstala stát v půli cesty; se zřetelem na stav její levé nohy to vypadá, že se jí do kolena zahryzal nějaký druh plísně nebo hniloby. Mrtvola se kymácí zepředu dozadu a snaží se udržet rovnováhu.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #45516 /* ~Strč do mrtvoly.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_ZM985_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_ZM985_1","GLOBALGood",-1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ EXTERN ~DMORTE~ 482
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #45517 /* ~Strč do mrtvoly.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_ZM985_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_ZM985_1","GLOBALGood",-1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 3
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #45518 /* ~Pomoz mrtvole udržet rovnováhu.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_ZM985_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_ZM985_1","GLOBALGood",1)
~ GOTO 4
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #45519 /* ~Pomoz mrtvole udržet rovnováhu.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_ZM985_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_ZM985_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45520 /* ~"Ty nejsi zombie, vždyť víš. Tady nikoho neošálíš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45521 /* ~Použij na mrtvolu svoji schopnost Historky-kosti-povídejte.~ */ GOTO 2
  IF ~~ THEN REPLY #45522 /* ~"Pěkně jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #45523 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 5.0 5.1 5.2
  SAY #45524 /* ~Mrtvola tupě civí dopředu. Není na ní ani známka toho, že by tě slyšela.~ */
  IF ~~ THEN REPLY #45525 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5 5.3
  SAY #45526 /* ~Mrtvola se nehýbe. Zdá se, že už to s ní došlo příliš daleko na to, aby ti mohla odpovědět.~ */
  IF ~~ THEN REPLY #45527 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 6.0
  SAY #45528 /* ~Z levé nohy mrtvoly se ozvalo takové *prask* a tělo se skácelo k zemi jako uschlý strom. Jeho torzo narazilo do kamenných dlaždic a rozpadlo se jako shnilý meloun a z dutin jí vybublal hnis a nečistoty. K tvému údivu si pravděpodobně nikdo pádu mrtvoly nevšiml... a co více, ta levá noha zůstala jako v pozoru stát tam, kde stálo tělo. Po chvíli spadla s vlhkým *žuch* i noha.~ */
  IF ~~ THEN DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
CreateItem("Limb985",1,0,0)
SetGlobal("Topple_985","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #45530 /* ~Chňapl jsi levou ruku mrtvoly ve snaze ji ustálit. Nicméně, jakmile jsi zachytil její paži, naklonila se mrtvola najednou doprava, takže jsi ji nakonec místo narovnání začal natahovat...~ */
  IF ~~ THEN DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ EXTERN ~DMORTE~ 482
END

IF ~  GlobalGT("Topple_985","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #45531 /* ~Vypadá to, jako by někdo vyměnil levou ruku a nohu této mrtvoly za náhradní údy z jiného těla. Levá noha je kratší než původní, ale mrtvola je teď alespoň schopna stát.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45532 /* ~"Promiň, že jsem tě předtím povalil. Byla to nehoda."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45533 /* ~"Promiň, že jsem tě předtím povalil. Byla to nehoda."~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45534 /* ~"Ty nejsi zombie, vždyť víš. Tady nikoho neošálíš."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45535 /* ~Použij na mrtvolu svoji schopnost Historky-kosti-povídejte.~ */ GOTO 2
  IF ~~ THEN REPLY #45536 /* ~"Rád jsem si s tebou popovídal. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #45537 /* ~Nechej mrtvolu být.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3
  SAY #45538 /* ~Chňapl jsi levou ruku mrtvoly ve snaze ji ustálit. Nicméně, jakmile jsi zachytil její paži, naklonila se mrtvola najednou doprava, takže jsi ji nakonec místo narovnání začal natahovat...~ */
  IF ~~ THEN REPLY #45539 /* ~"Uch-och..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #64205 /* ~Jak hledíš na hnijící zbytky mrtvoly, všímáš si, že jeho levá paže je neporušená - během pádu se od těla odtrhla a nevypadá, že by byla napadena posmrtným rozkladem, jako zbytek těla.~ */
  IF ~~ THEN REPLY #64206 /* ~"Hmmm. Přemýšlím, co kdyby se ta paže mohla hodit..."~ */ EXIT
END
