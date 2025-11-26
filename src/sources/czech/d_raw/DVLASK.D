// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVLASK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DVLASK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  Global("Vlask","Global",0)
~ THEN BEGIN 0 // from:
  SAY #45717 /* ~Na rozdíl od ostatních Sběračů, které jsi viděl, róba tohohle je docela kvalitní. "Ah, další mrtvák nás přišel navštívit. Prosím, omluv ten *nepořádek*, mí kolegové ještě neměli čas uklidit."~ */
  IF ~~ THEN REPLY #45718 /* ~"Není cesta ven..."~ */ DO ~SetGlobal("Vlask","GLOBAL",1)
~ GOTO 2
END

IF WEIGHT #0 ~  Global("Vlask","Global",1)
~ THEN BEGIN 1 // from:
  SAY #45719 /* ~Vlask se suše uchechtnul: "Zase ty! Mý přátelé a já jen velmi zřídka opakujeme obchody. Takže aby bylo jasno: Teď je cena za ten klíč 200 měďáků."~ */
  IF ~~ THEN REPLY #45720 /* ~"Vrátil jsem se, abych tě zabil."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(199)
~ THEN REPLY #45722 /* ~"Vem si peníze."~ */ DO ~TakePartyGold(200)
GiveItemCreate("Vkey",Protagonist,1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #45723 /* ~"Nemám dost."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #45724 /* ~"No, ale je. Dveře támhle napravo. Ale budeš potřebovat jednu z těchhle, abys aktivoval portál." Zvedl něco, co vypadá jako malý skleněný korálek. "Tak, dohodneme se na ceně."~ */
  IF ~~ THEN REPLY #45725 /* ~"Mám pocit, že bude jednodušší, když tě zabiju."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45726 /* ~"Poslouchám..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45727 /* ~"Jednoduché. Zaplatíš mě a mým soudruhům jedno sto měděných mincí. Já ti dám klíč k portálu."~ */
  IF ~~ THEN REPLY #45728 /* ~"A co když nezaplatím?"~ */ GOTO 4
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45729 /* ~"Tady jsou peníze. Dej mi ten klíč."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45732 /* ~"Nemám dost."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45734 /* ~"Tak se svými přáteli prodáme tvé tělo Spalovačům. Tak či tak, dostaneme zaplaceno."~ */
  IF ~~ THEN REPLY #45735 /* ~"Myslím, že tě radši zabiju."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45736 /* ~"Tady jsou peníze. Dej mi ten klíč."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45737 /* ~"Nemám dost."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.1 4.1
  SAY #45738 /* ~"Mí soudruzi a já ti děkujeme za dobrý obchod. Stačí rozdrtit skleněnou kuličku a portál se otevře."~ */
  IF ~~ THEN REPLY #45739 /* ~"Sbohem."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("3006CUT2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.2 4.2
  SAY #45740 /* ~"Ale to je ostuda. Chlapci, připravte tohohle pro Spalovače."~ */
  IF ~~ THEN REPLY #45741 /* ~"Připrav se na smrt..."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
END
