// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSPHERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSPHERE~

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #62409 /* ~Tato bronzová koule má cca. stopu v průměru, ale není adekvátně těžká, pravděpodobně bude uvnitř dutá.~ */
  IF ~~ THEN REPLY #62412 /* ~Prozkoumej kouli.~ */ GOTO 1
  IF ~~ THEN REPLY #62413 /* ~Odlož kouli.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #62410 /* ~Přestože na první pohled vypadá úplně obyčejně, jakýmsi způsobem ostatní tvé smysly uvádí v rozpaky. Povrch, čistě na dotek ti připadá jako vejce chviličku před puknutím --- a každé ohmatání ti nahání husí kůži. Aby to nebylo všchno, cítíš, jak se z ní vznáší mdlá vůně shnilého pudinku. Vhání ti slzy do očí.~ */
  IF ~~ THEN REPLY #62414 /* ~Odlož kouli.~ */ EXIT
END

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64916 /* ~Jak držíš kouli a prozkoumáváš ji, cítíš, jak se vzpomínky tvé první inkarnace mísí s tvými vzpomínkami, ale není to silná energie - je klidná, jako myšlenky muže putujícího z velké dálky, který mluví se svým přítelem, kterého už léta neviděl. ~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64917 /* ~Jak cítíš jeho přítomnost ve své mysli, vidíš kouli v odlišném světle - ne tak ohavnou nebo hnusnou, ale vidíš ji jako něco nádherného, jako novorozeně - koule je skladištěm tvých posledních momentů, předtím, než si potkal Ravel ve Velké Pustině a ptal ses jí na svou existenci. ~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64918 /* ~Ty víš, proč ses jí ptal. A víš, že všechno, co musíš udělat, je dotknout se oběma rukama povrchu koule a *pocítit* lítost, kámen se ti potom sám otevře. ~ */
  IF ~~ THEN REPLY #64919 /* ~Obejmi kámen a pociť lítost. ~ */ DO ~DestroyPartyItem("BSphere",TRUE)
~ GOTO 5
  IF ~~ THEN REPLY #64920 /* ~Nechej vzpomínky zůstat tam, kde jsou, pohřbené v bronzu.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64921 /* ~Koule se v tvých rukách nějak mění, povrch koule se začíná pokrývat slzami, které se mění v bronzový déšť, jenž tě obklopuje. Na každé kapičce, na každém úlomku, vidíš to, co kdysi patřilo tobě - tvé vzpomínky, ztracenou lásku, zapomenuté utrpení, bolest ze ztráty - a s tím přichází velká lítost, lítost ledabylých, neuvážených činů, lítost z utrpení, lítost z války, lítost ze smrti a cítíš jak se tvá mysl začíná pod tímto tlakem *bortit* - tak MOC, a tak náhle, tak mnoho bolesti, kterou jiní vytrpěli... tak mnoho, že by se z té bolesti dala postavit nedobytná PEVNOST.~ */
  IF ~~ THEN REPLY #64922 /* ~Zůstaň soustředěn.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64923 /* ~A náhle, během dravého proudu lítosti, cítíš svou první inkarnaci znovu. Jeho ruce, neviditelné a bez váhy, se ti dotýkají ramenou. Nemůže mluvit, ale s jeho dotykem se ti náhle vybavilo tvé jméno. ~ */
  IF ~~ THEN DO ~GiveExperience(Protagonist,2000000)
FullHealEx(Protagonist)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64924 /* ~...a je to tak *prostá* věc, vůbec ne taková, jaká sis myslel, že to může být, a konečně se cítíš sám ze sebou spokojeně. Poznáním svého jména, svého pravého jména, víš, že jsi získal zpět nejdůležitější část tvého já. ~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64925 /* ~Poznáním svého jména, poznal jsi sebe a víš, teď víš, že je velmi málo toho co nedokážeš. Ruce tvé první inkarnace ti už nesvírají ramena a pozoruje tě s jemným úsměvem.~ */
  IF ~~ THEN REPLY #64927 /* ~"Tohle bylo celou dobu mé jméno? Jenže jsem byl-"~ */ DO ~SetGlobal("Know_Nameless_Name","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64926 /* ~První inkarnace si položila prst na své rty, utišujíc tě. Kývla na symbol na tvé paži, jako kdyby naznačovala, že jej můžeš použít.~ */
  IF ~~ THEN REPLY #64929 /* ~Prozkoumej svoji paži.~ */ DO ~GiveItemCreate("SymTorm",Protagonist,0,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64928 /* ~Symbol - symbol Trýznění - vypadá nějak křehce, jako kdyby ani pořádně nedrželo na tvé kůži. Nevědomě si ho sloupneš s paže.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 12.0
  SAY #64931 /* ~Nedokončil jsi svou otázku, ale zjistil jsi, že se v tvé mysli roste velký pokoj -- nemůžeš už dále cítit přítomnost první inkarnace.~ */
  IF ~~ THEN REPLY #64935 /* ~Vem symbol Trýznění.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #64938 /* ~ Dává ti možnost mírného uspokojení, jako seškrábnutí chrasty. Když držíš symbol, víš, že můžeš využít jeho sílu. Nebude ti déle poroučet. ~ */
  IF ~~ THEN REPLY #64939 /* ~"Nebudu mít déle na sobě tenhle symbol. Znamená to...?"~ */ GOTO 11
END
