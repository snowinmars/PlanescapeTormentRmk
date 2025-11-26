// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_03~

IF ~  !Global("S_Stone","AR0603",3)
!Global("S_Stone","AR0603",10)
~ THEN BEGIN 0 // from:
  SAY #34214 /* ~Je to nezvyklý fialový kámen. Je bezpečně připevněný k podstavci, na kterém leží.~ */
  IF ~~ THEN REPLY #47414 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",3)
~ THEN BEGIN 1 // from:
  SAY #47415 /* ~Tenhle fialový kámen je jeden z těch, k nimž tě poslal úředník. V jeho nitru leží prožitek 'ohlupující nudy.'~ */
  IF ~~ THEN REPLY #47428 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47429 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47417 /* ~Prožitek nemohl trvat déle, než pár minut, ale zdá se, že uplynuly *hodiny*... dlouhá, nudná přednáška v té nejsušší, nejobyčejnější hale Chalmské univerzity v Sigilu. Rozhlížíš se po obrovské hale a hledáš něčí pohled, aby ses mohl alespoň zašklebit - ale ostatní studenti zčásti spí, zčásti lhostejně zírají do prostoru. Upustil jsi pero, zdvihl je a znova upustil... jen proto, abys něco dělal. Dumáš nad myšlenkou bodnout se jím do oka, jen tak, abys zjistil, jestli již nejsou tvé smysly zcela otupené tou neuvěřitelnou nudou...~ */
  IF ~  Global("Sensation03","AR0603",0)
~ THEN REPLY #47418 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation03","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation03","AR0603",1)
~ THEN REPLY #47419 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",10)
~ THEN BEGIN 3 // from:
  SAY #47420 /* ~Tenhle fialový kámen je jeden z těch, k nimž tě poslal úředník. V jeho nitru leží prožitek 'hořké nenávisti.'~ */
  IF ~~ THEN REPLY #47421 /* ~Začni vjem.~ */ GOTO 4
  IF ~~ THEN REPLY #47422 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47423 /* ~Tvé úzké, žluté oči zaplavují jedovaté slzy bolesti, z podlahy sbíráš potrhané zbytky svých drobných rudých šupinatých křídel. Pokorně jsi vycouval z Grobovy studovny, rozdírajíce si jehlovitými zuby pevně semknuté rty.

Zajisté, jsi jen spinagon - nejnižší mezi fiendy - ale to není důvod, aby ti lávový fiend utrhl křídla jen proto, že se mu nelíbila zpráva, kterou jsi mu přinesl! Co teď asi udělá tvůj gelugonský pán? Pochopitelně Grobovi nemůže nic říct a jaké využití může mít pro spinagona bez křídel? Nejspíš budeš vržen do Plamenné jámy pro 'neschopnost!'

Pomsta je vyloučená, můžeš učinit jen velmi málo. Zahrozit svou malou drápatou prackou sevřenou v pěst a nenávidět, nenávidět, *NENÁVIDĚT* Groba se vším odporem, jehož je tvé malé černé ďábelské srdce schopno...~ */
  IF ~  Global("Sensation10","AR0603",0)
~ THEN REPLY #47424 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation10","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation10","AR0603",1)
~ THEN REPLY #47425 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47426 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47427 /* ~Odejdi.~ */ EXIT
END
