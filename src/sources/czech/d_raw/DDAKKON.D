// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAKKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAKKON~

IF ~~ THEN BEGIN 0 // from:
  SAY #2844 /* ~I'm Dak'kon. A githzerai. One of the party members. I don't have anything to say right now. You should check out my cool combat animations, though. Too bad there aren't any Chambara movie death animations for monsters I kill...
Dak'kon: "Watch my sword: koroshicharu!"
Hive Thug: "Gaaahh... munen nariiii..." *Sssssssss* <--- arterial blood spray *thud*
Dak'kon: "Fmm." *sching* <-- *karach* blade being sheathed
(Cherry blossoms fall from top of screen.)~ */
  IF ~~ THEN REPLY #2845 /* ~Later, Dak'kon. Can't wait until you're a part of the group.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0
  SAY #6855 /* ~Dak'kon kývl.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7000 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7001 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7002 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7003 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7004 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7005 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7006 /* ~"Zeptej se ho na Paní bolesti."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7007 /* ~"Zeptej se ho na Fella."~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7008 /* ~"Nech to plavat. Mizíme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6856 /* ~"Říká to, že je to dabus."~ */
  IF ~~ THEN REPLY #7009 /* ~"Můžeš se ho zeptat na další otázky?"~ */ GOTO 1
  IF ~~ THEN REPLY #7010 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6857 /* ~"Říká, že se stará o své povinnosti."~ */
  IF ~~ THEN REPLY #7011 /* ~"Můžeš se ho zeptat na další otázky?"~ */ GOTO 1
  IF ~~ THEN REPLY #7012 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6471 /* ~"Můj společník by si s tebou rád promluvil o tom, jak pracuje toto zařízení. Může mluvit za nás oba?"~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 35
END

IF ~~ THEN BEGIN 5 // from:
  SAY #6473 /* ~"Ona je jedna z Lidu. Její jizvy říkají, že je jednou z těch, kdož kráčejí z Limba a *neznají* vlast našich předků. Její jizvy říkají všem githzeraiům, aby jí pomáhali a říká jim, že je stále jedna z Lidu. Její úcta ke mně je úctou, již prokazuje všem *zerthům.*"~ */
  IF ~~ THEN REPLY #7999 /* ~"Tak fajn. Kel'lero, měl bych pro tebe pár otázek..."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 6 // from:
  SAY #5688 /* ~"Byl bych poctěn, pokud bych mohl potkat jiného vyvržence, dalšího exulanta. Možná že sdílení naší ostudy zmírní hořkost našeho údělu."~ */
  IF ~~ THEN REPLY #5689 /* ~"To máš dobré. Já se neptal. Mám ještě pár otázek pro tady toho ubožáka."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~GFWEAPS~ 14
  IF ~~ THEN REPLY #5690 /* ~"Brzy si promluvíme, příteli můj. Mezitím mám ještě pár otázek tady pro kamaráda."~ */ EXTERN ~GFWEAPS~ 14
END

IF ~~ THEN BEGIN 7 // from:
  SAY #8694 /* ~Dak'kon hovoří pomalu, jako když chce githa uklidnit. "Jeho slova nejsou Evangeliem Anarchistů. Jeho hrubost není úmyslná."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8994 /* ~"Oh, ano je. Nezapomínej na své postavení, Dak'kone. Jsi můj otrok a *poslechneš* mě."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_4","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8995 /* ~"Oh, ano je. Nevydržím již déle stát a poslouchat, jak vy githstší psi na sebe štěkáte."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_4","GLOBALLaw",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8996 /* ~"Pokud jsem tě urazil, omlouvám se. Odpustíš mi?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Githzerai_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Githzerai_1","GLOBALGood",1)
~ EXTERN ~DGITH~ 9
  IF ~~ THEN REPLY #8997 /* ~"Nevadí, Dak'kone. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #8695 /* ~"K mým uším doléhají slova Anarchistů a způsoby Anarchistů. Můj rozum ne... nepřipouští dívat se na tuto věc jinak."~ */
  IF ~~ THEN REPLY #8998 /* ~Počkej co gith udělá.~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #8999 /* ~"Zůstaneme spolu, githe. Navrhuji, aby ses vzdal."~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9000 /* ~"Uděláš ke mně jeden krok, githe, a on zaútočí. Jestli se přes něj dostaneš, přísahám, že tě zabiju já. Takže teď ustup."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9001 /* ~"To stačí. Nastal čas tvé smrti, githe."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #8696 /* ~"Neútoč. Nedovolím si neuposlechnout."~ */
  IF ~~ THEN REPLY #9002 /* ~Počkej co gith udělá.~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9003 /* ~"Zůstaneme spolu, githe. Chci aby ses mi podřídíl. To je naposledy, co se ptám."~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9004 /* ~"Uděláš ke mně jeden krok, githe, a on zaútočí. Jestli se přes něj dostaneš, přísahám, že tě zabiju já. Takže teď ustup."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9005 /* ~"To stačí. Je čas abys zemřel, githe."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #8697 /* ~Dak'kon znovu pomalu hovoří. "T'chaova volba je má." Zdá se, že během toho, co mluví, nabírá jeho kůže šedivý nádech... jako by ho zvuk každého slova pomalu zabíjel. "Tato pouta jsou má vlastní. Anarchie sta let, neexistují žádné přesýpací hodiny schopné změřit ten příběh. Tato záležitost je zamotaná jako kořeny Fri'hi. Jeho rozhodnutí je jedno z nemožných a nemůže nikdy přijít." Dak'kon se mračí. "Neútoč, nechci se stát bratrovrahem."~ */
  IF ~~ THEN REPLY #9006 /* ~Počkej...~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9007 /* ~"Vybral sis, githe. Chceš tady dnes prolít krev?"~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9008 /* ~"To stačí. Je čas abys zemřel, githe."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #8698 /* ~Dak'kon odpovídá tím samým jazykem. Větná stavba je zvláštní; myslíš, že Dak'kon říká, "Tento se řádí mezi věrné."~ */
  IF ~~ THEN REPLY #9009 /* ~"Co říká, Dak'kone?"~ */ EXTERN ~DGITH~ 56
  IF ~~ THEN REPLY #9010 /* ~"Nevadí Dak´kone. Jdeme."~ */ EXTERN ~DGITH~ 56
END

IF ~~ THEN BEGIN 12 // from:
  SAY #8699 /* ~Dak'kon odpovídá stejně jako předtím; tón se nepatrně změnil, ale smysl se zdá být nedotčený. "Tento se řadí mezi věrné." Dak'kon upadá v ticho, jako když dává slovům čas zapůsobit. "Ten za mnou promluví. Budeš ho poslouchat?"~ */
  IF ~~ THEN REPLY #9011 /* ~Poslouchej.~ */ EXTERN ~DGITH~ 58
  IF ~~ THEN REPLY #9012 /* ~"Nevadí Dak´kon. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #8700 /* ~Dak'konova odpověď je poněkud krátká, ale jeho řeč je pomalá, jako když musí slova vyvláčet z hrdla. "T'chaova volba se stala mou."~ */
  IF ~~ THEN REPLY #9013 /* ~Poslouchej.~ */ EXTERN ~DGITH~ 59
  IF ~~ THEN REPLY #9014 /* ~"Nevadí Dak´kon. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #8701 /* ~Dak'kon znovu pomalu hovoří. "Tato pouta jsou má vlastní." Zdá se, že během toho, co mluví, nabírá jeho kůže šedivý nádech... jako by ho zvuk každého slova pomalu zabíjel. "Anarchie sta let, neexistují žádné přesýpací hodiny schopné změřit ten příběh. Tato záležitost je zamotaná jako kořeny Fri'hi. Jeho rozhodnutí je jedno z nemožných a nemůže nikdy přijít." Dak'kon se mračí, pak jeho hlas zesílí. "Ten za mnou promluví. Budeš ho poslouchat?"~ */
  IF ~~ THEN REPLY #9015 /* ~Počkej.~ */ EXTERN ~DGITH~ 60
  IF ~~ THEN REPLY #9016 /* ~"Nevadí Dak´kon. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #8702 /* ~Dak'kon se obrátí k tobě. "Poslouchá tě."~ */
  IF ~~ THEN REPLY #9017 /* ~"Můžeš se ho zeptat, jestli..."~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9018 /* ~"Nevadí Dak´kon. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #8703 /* ~Dak'kon přikývne, ale tak pomalu, jako když mu to působí bolest. "Ty... se mýlíš. Tento muž nezabil nikoho z Lidí."~ */
  IF ~~ THEN REPLY #9019 /* ~"Vidíš? Dáš teď tu čepel pryč?"~ */ EXTERN ~DGITH~ 72
END

IF ~~ THEN BEGIN 17 // from:
  SAY #8704 /* ~Dak'kon se obrátí k githzeraiovi a hovoří, tentokrát pomalu, odměřeněji než předtím. Githzeraiova odpověď je krátká.~ */
  IF ~~ THEN REPLY #9021 /* ~"Co říkal?"~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9022 /* ~"Nevadí, Dak'kone. Jdeme."~ */ EXIT
END

IF ~  Global("Dakkon","GLOBAL",0)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #14980 /* ~Muž, který stojí před tebou je *starý*. Na jeho vysušené žluté kůži jsou jizvy zcestovalého člověka, který nikdy nezůstal dlouho na jednom místě. Tvář má až nelidsky hranatou, jeho odstávající uši jsou zašpičatělé. Oblečen je ve volnou oranžovou tuniku a na zádech mu visí zvláštní lesknoucí se meč. Čepel vypadá jako rozeklaný jazyk vyrobený z nějakého kovu, jehož povrch se mihotá jako olejová skvrna na vodní hladině.  ~ */
  IF ~~ THEN REPLY #15055 /* ~"Zdravím."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #15056 /* ~Ignoruj muže.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #14982 /* ~Muž se k tobě otočil, jeho oči jsou lesklé a černé jako antracit. Dívá se skrz tebe a tobě blesklo hlavou, jestli není slepý. Najednou mužova zbraň naprosto zčerná a odráží se v ní obraz jeho očí.~ */
  IF ~~ THEN REPLY #15058 /* ~"Jsi v pořádku?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #14984 /* ~Prohlíží si tě a říká "Zdravím... poutníku." Jeho hlas je tichý, tak jako by vítr zpíval a šeptal v korunách stromů.~ [DAK001B] */
  IF ~~ THEN REPLY #15060 /* ~"Zdravím.."~ */ GOTO 21
  IF ~~ THEN REPLY #15061 /* ~"Promiň za obtěžování. Sbohem."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #14985 /* ~Opětuje tvůj pohled a oči se upřeně dívají do tvých. Zbraň mu ztrácí černou barvu, ale stále se třpytí, jak sis toho všiml, než jsi ho oslovil. "Z tvých očí mohu vyčíst, že jsi ten, který daleko cestoval, aby se dostal sem."~ [DAK001C] */
  IF ~~ THEN REPLY #15062 /* ~"Mohl bych to říct."~ */ GOTO 24
  IF ~~ THEN REPLY #15063 /* ~"Promiň za obtěžování. Sbohem."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #14986 /* ~"Zadrž." Mužův hlas je klidný a zasmušilý, jako vítr šeptající v korunách stromů. Nevíš proč, ale shledáváš jeho hlas uklidňujícím. Když se obrátíš, vidíš, že si tě důkladně prohlíží. "Z tvých očí mohu vyčíst, že jsi ten, který daleko cestoval, aby se dostal sem."~ */
  IF ~~ THEN REPLY #15064 /* ~"Mohl bych to říct."~ */ GOTO 24
  IF ~~ THEN REPLY #15065 /* ~"Nechci tě vyrušovat. Sbohem."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.1
  SAY #14987 /* ~"Nerušíš mě. Mé myšlenky se ubírají dál." Mužův pohled nezakolísá a cítíš, že je těžké se odvrátit, jakmile jsi upoutal jeho pozornost. "Jsem znám jako Dak'kon." Důraz na slově *znám* ti připadá zvláštní, ale zároveň povědomý. "Mně *znám* nejsi."~ */
  IF ~~ THEN REPLY #15066 /* ~"Neznám sám sebe."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15067 /* ~"Nechtěl jsem tě rušit. Sbohem."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 67
END

IF ~~ THEN BEGIN 24 // from: 21.0 22.0
  SAY #14989 /* ~Mužův pohled nezakolísá. "Jsem znám jako Dak'kon." Důraz na slově *znám* ti připadá zvláštní, ale zároveň povědomý. "Mně *znám* nejsi."~ */
  IF ~~ THEN REPLY #15068 /* ~"Neznám sám sebe."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15069 /* ~"Jsem návštěvníkem v tomto městě."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #15070 /* ~"Ty mi nejsi znám."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #14990 /* ~"To je pro tvé dobro. Pokud znáš sám sebe, zbývá toho na Světě málo, co stojí za to poznat." Odmlčel se a neustále si tě prohlíží svýma černýma očima. "Chci vědět, proč jsi přišel do tohoto města."~ */
  IF ~~ THEN REPLY #15071 /* ~"Hledám odpovědi...mám spoustu otázek."~ */ GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14991 /* ~Dak'kon se odmlčel a neustále si tě prohlíží svýma černýma očima. "Sféry mají mnoho podob, ale přesto jsi zde. Chci vědět proč jsi přišel do tohoto města. "~ */
  IF ~~ THEN REPLY #15072 /* ~"Hledám odpovědi...mám spoustu otázek."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #14993 /* ~"Všichni jsme pod stejným nebem co se týče této věci." Dak'kon se odmlčel a stále tě sleduje svýma, jak uhel černýma očima. "Sféry mají mnoho tvářností, ale přesto jsi zde. Chci vědět proč jsi přišel do tohoto města."~ */
  IF ~~ THEN REPLY #15073 /* ~"Hledám odpovědi...mám spoustu otázek."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 25.0 26.0 27.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.1 38.7 39.3 40.2 41.1 42.0 43.2 44.2 45.2 46.2 47.2 48.2 49.2 50.2 51.1 52.1 53.1 54.1 55.1 56.1 57.0 58.3 59.2 60.1 61.2 62.3 63.2 64.0 65.0 66.0 73.0
  SAY #14995 /* ~"Vyslov své otázky... poslouchám tě"~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15074 /* ~"Tvé vybavení... hmmm, je mi neznámé. Kdo jsi?"~ */ GOTO 29
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15075 /* ~"Můžeš mi říct o Lidu githzerai znova?"~ */ GOTO 33
  IF ~~ THEN REPLY #15076 /* ~"Můžeš mi říct něco o tomto městě?"~ */ GOTO 35
  IF ~~ THEN REPLY #15077 /* ~"Kladeš velký důraz na slovo *vědění*. Co tím myslíš?"~ */ GOTO 52
  IF ~~ THEN REPLY #15078 /* ~"Co je to za meč?"~ */ GOTO 58
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15079 /* ~"Znáš muže jménem Pharod? Už jsem řekl, že on by o mně mohl něco vědět."~ */ GOTO 65
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15080 /* ~"Ztratil jsem deník. Nevíš kde by mohl být?"~ */ GOTO 66
  IF ~~ THEN REPLY #15081 /* ~"Není již více co říci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14997 /* ~"Githzerai."~ */
  IF ~~ THEN REPLY #15082 /* ~"Githzerai?"~ */ GOTO 30
  IF ~~ THEN REPLY #15083 /* ~"Mám pár otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15084 /* ~"Vidím. Musím odejít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 30 // from: 29.0 62.0
  SAY #14998 /* ~"Githzerai jsou jedni z Lidu."~ */
  IF ~~ THEN REPLY #15125 /* ~"Jeden z lidí?"~ */ GOTO 31
  IF ~~ THEN REPLY #15126 /* ~"Mám pár jiných otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15127 /* ~"Vidím. Musím odejít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #14999 /* ~"Githzerai."~ */
  IF ~~ THEN REPLY #15128 /* ~"Dobře, ale co jsou gitzerai přesně zač?"~ */ GOTO 32
  IF ~~ THEN REPLY #15129 /* ~"Díky za vysvětlení. To mnohé vysvětluje. Mám pár dalších otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15130 /* ~"Vidím. Musím odejít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15000 /* ~Dak'kon se na chvíli odmlčel a potom pravil. "Naše historie ti nemusí být *známa*. Mohli bychom dřív zemřít, než bych ti pověděl alespoň část historie našich lidí"~ */
  IF ~~ THEN REPLY #15131 /* ~"Nepotřebuji znát Vaší historii... ale chci vědět něco o Vašich lidech."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 33
  IF ~~ THEN REPLY #15132 /* ~"Mám pár otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15133 /* ~"Vidím. Musím odejít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 33 // from: 28.1 32.0 62.1
  SAY #15002 /* ~Dak'kon se opět na chvíli odmlčel. "*Vím* to a akceptuji to jako odpověď. Jsme lidé, kteří zbudovali své domovy na sféře Limbo." Neslyšitelným pohybem Dak'kon sundal meč ze svých zad a drží jej před sebou.~ */
  IF ~~ THEN REPLY #15134 /* ~Vyčkat co se stane.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 34
  IF ~~ THEN REPLY #15135 /* ~"Mám ještě další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15136 /* ~"Není více co říci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #15004 /* ~"Jistě, Limbo má co do činění s naší pamětí. Stavíme města v našich myšlenkách". Jak to dořekl, série malých vlnek se rozletěla po povrchu jeho meče od středu k okrajům. Síla vlnek je přesně taková, jakou silou hlasu Dak'kon právě mluví. "V tomto chaosu přebýváme a jenom tohle *známé vědění* nás chrání. My jsme githzerai."~ */
  IF ~~ THEN REPLY #15137 /* ~"Co je to za meč, který máš... mění se podle toho jak mluvíš."~ */ GOTO 58
  IF ~~ THEN REPLY #15138 /* ~"Mám ještě další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15139 /* ~"Dobrá. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 35 // from: 28.2
  SAY #15005 /* ~"Je *známo* pod jménem Sigil. Mezi lidmi je *známo* spíše jako město, které *nezná* samo sebe."~ */
  IF ~~ THEN REPLY #15140 /* ~"Nezná se? Co tím myslíš?"~ */ GOTO 36
  IF ~~ THEN REPLY #15141 /* ~"Mám ještě další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15142 /* ~"Není více co říci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #15006 /* ~"Město existuje, ale neví o tom. Neuvědomuje si samo sebe a jeho existence je poškozena." ~ */
  IF ~~ THEN REPLY #15143 /* ~"Jak poškozena?"~ */ GOTO 38
  IF ~~ THEN REPLY #15144 /* ~"Mluvíš jako by město žilo."~ */ GOTO 37
  IF ~~ THEN REPLY #15145 /* ~"Mám ještě další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15146 /* ~"Není více co říci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 37 // from: 36.1 38.6
  SAY #15007 /* ~"Nemusí být *známo* samo sobě, tedy v takovém smyslu, v jakém *známe* já nebo ty sami sebe. Rozpíná se, mění s a dotýká se myslí všech, kdož v něm žijí."~ */
  IF ~~ THEN REPLY #15147 /* ~"Proč jsi řekl, že město nezná samo sebe?"~ */ GOTO 38
  IF ~~ THEN REPLY #15148 /* ~"Vidím. Musím odejít. Sbohem."~ */ GOTO 28
  IF ~~ THEN REPLY #15149 /* ~"Díky za informaci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 38 // from: 36.0 37.0 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.0
  SAY #15008 /* ~"Město existuje bez své Podstaty. Jeho Podstata je oddělena od těchto Sfér. Jeho zdi jsou jeho dveřmi a zatím jsou tyto dveře zamčeny. Tato existence hovoří o tom, že *nezná* sama sebe. A pokud je město v takové *nevědomosti*, je tím poškozeno."~ */
  IF ~~ THEN REPLY #15150 /* ~"Když jsi řekl, že město je všude najednou, co jsi tím myslel?"~ */ GOTO 43
  IF ~~ THEN REPLY #15151 /* ~"Jeho zdi a dveře?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15152 /* ~Pravda: "A co když město *není* poškozeno? Není zapotřebí, nařídit věci, aby znala sama sebe. Co když tyhle protiklady jsou silami, které jsi přehlédl?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15153 /* ~Pravda: "A co když město *není* poškozeno? Není zapotřebí, nařídit věci, aby znala sama sebe. Co když tyhle protiklady jsou silami, které jsi přehlédl?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15154 /* ~Pravda: "A co když město *není* poškozeno a ty jen neznáš důvody či příčiny těchto protikladů? Ve všem je řád. Možná je nějaký skrytý vzor, který ty nechápeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15155 /* ~Pravda: "A co když město *není* poškozeno a ty jen neznáš důvody či příčiny těchto protikladů? Ve všem je řád. Možná je nějaký skrytý vzor, který ty nechápeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #15156 /* ~"Mluvíš jako by město žilo."~ */ GOTO 37
  IF ~~ THEN REPLY #15157 /* ~"Mám ještě další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15158 /* ~"Není více co říci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 39 // from: 38.2 38.3 38.4 38.5
  SAY #15010 /* ~"Na tvoji otázku otázka: Což jestliže je město poškozeno a ty uvidíš jeho rozpory a protiklady kolem tebe?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #15159 /* ~Pravda: "Ke tvé otázce otázka: Prohlašuješ, že existence města je poškozena. Toto jsi akceptoval a přitom ses nesnažil hledat možnosti, že existuje něco většího. To dokazuje, že ty sám jsi poškozen... a že nehledáš vědění, ale jen vhodnou odpověď."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #15160 /* ~Pravda: "Ke tvé otázce otázka: Prohlašuješ, že existence města je poškozena. Toto jsi akceptoval a přitom ses nesnažil hledat možnosti, že existuje něco většího. To dokazuje, že ty sám jsi poškozen... a že nehledáš vědění, ale jen vhodnou odpověď."~ */ GOTO 40
  IF ~~ THEN REPLY #15161 /* ~"Když jsi řekl, že město je všude najednou, cos tím myslel?"~ */ GOTO 43
  IF ~~ THEN REPLY #15162 /* ~"Mám ještě další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15163 /* ~"Není více co říci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15012 /* ~Dak'kon ztichl. "Není mi *známa* odpověď na takovou otázku, kterou mi tu kladeš. Zatím město existuje. Toť vše."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #15164 /* ~"Přesto bych trval na tom, že my *známe* sami sebe na základě otázek, které si klademe i těch, které si neklademe. Jestliže se přestaneme tázat a přijmeme pouze to, co vnímáme..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 41
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #15165 /* ~"Přesto bych trval na tom, že my *známe* sami sebe na základě otázek, které si klademe i těch, které si neklademe. Jestliže se přestaneme tázat a přijmeme pouze to, co vnímáme..."~ */ GOTO 41
  IF ~~ THEN REPLY #15166 /* ~"Nevadí. Mám ještě další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15167 /* ~"Nechtěl jsem tě vyrušit. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #15014 /* ~"Poté i my ztratíme *poznání* o nás." Dak'konův hlas se změnil a stal se těžším, "Taková slova byla už vyřčena. Slyšel jsem je a *znám* je."~ */
  IF ~~ THEN REPLY #15168 /* ~"Kde jsi je slyšel?"~ */ GOTO 42
  IF ~~ THEN REPLY #15169 /* ~"Nevadí. Mám ještě další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15170 /* ~"Nechtěl jsem tě vyrušit. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15016 /* ~"Slova jsou má. *Znal* jsem je a věděl, co *znamenají*. Zapomněl jsem je, než jsi o nich znovu promluvil". Dak'konův pohled tě prostupuje, jeho meč se přestal třpytit a mihotat, černá barva z něj stéká, až se stává meč průhledným. Po chvíli ticha se Dak'kon dívá zpět na tebe. "Mým přáním je teď cestovat s tebou."~ */
  IF ~~ THEN REPLY #15171 /* ~"Uvážím to. Mám ale ještě další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15172 /* ~"Beru. Další meč je vítán."~ */ GOTO 72
  IF ~~ THEN REPLY #15173 /* ~"Jsi starý. K čemu bys mi byl?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15175 /* ~"Dnes ne. Sbohem."~ */ GOTO 68
END

IF ~~ THEN BEGIN 43 // from: 38.0 38.1 39.2
  SAY #15018 /* ~"Město je postaveno ze samých dveří. Dveře mohou vést kamkoli." ~ */
  IF ~~ THEN REPLY #15174 /* ~"Co je to za dveře?"~ */ GOTO 44
  IF ~~ THEN REPLY #15176 /* ~"Proč jsi řekl, že je město poškozeno znova?"~ */ GOTO 38
  IF ~~ THEN REPLY #15177 /* ~"Vidím. Mám pár dalších otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15178 /* ~"Dík za informaci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15020 /* ~"Jsou všude..." Dak'kon se odmlčel. "Je známo, že každý ohraničený prostor v tomto městě je dveřmi, které mohou vést kamkoliv."~ */
  IF ~~ THEN REPLY #15179 /* ~"Nerozumím."~ */ GOTO 45
  IF ~~ THEN REPLY #15180 /* ~"Proč jsi řekl, že je město poškozeno znova?"~ */ GOTO 38
  IF ~~ THEN REPLY #15181 /* ~"Vidím. Mám pár dalších otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15182 /* ~"Dík za informaci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #15021 /* ~"Představ si třeba dveře do krčmy u Doutnajícího nebožtíka. Oddělej dveře. Zbude ti rám. Ale prostor mezi rámem je pořád dveřmi."~ */
  IF ~~ THEN REPLY #15183 /* ~"Ale já jsem prošel dveřmi abych se dostal sem. Je to prostě... otevřený vesmír."~ */ GOTO 46
  IF ~~ THEN REPLY #15184 /* ~"Proč jsi řekl, že je město poškozeno znova?"~ */ GOTO 38
  IF ~~ THEN REPLY #15185 /* ~"Vidím. Mám pár dalších otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15186 /* ~"Dík za informaci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #15022 /* ~"Spoustu dveří nikdy neuvidíš. Můžeš jimi projít jako vzduchem a nebudeš *vědět* k čemu jsou. Zůstanou zavřeny tvému pohledu a dotyku."~ */
  IF ~~ THEN REPLY #15187 /* ~"A neviditelná dveře jsou *všude* v Sigilu?"~ */ GOTO 47
  IF ~~ THEN REPLY #15188 /* ~"Proč jsi řekl, že je město poškozeno znova?"~ */ GOTO 38
  IF ~~ THEN REPLY #15189 /* ~"Vidím. Mám pár dalších otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15190 /* ~"Dík za informaci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #15023 /* ~"Je známo, že každý ohraničený prostor v tomto městě je dveřmi. Ale není to jisté. Dveře se přemisťují. Dveře se mění. Dveře mizí. Všechny jsou zamčeny."~ */
  IF ~~ THEN REPLY #15192 /* ~"Zamčeny?"~ */ GOTO 48
  IF ~~ THEN REPLY #15191 /* ~"Proč jsi řekl, že je město poškozeno znova?"~ */ GOTO 38
  IF ~~ THEN REPLY #15193 /* ~"Vidím. Mám pár dalších otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15194 /* ~"Dík za informaci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #15024 /* ~"Dveře zůstávají pouhým vzduchem, pokud je neotevře nějaký klíč. Když budeš mít takový klíč, dveře už ti budou *známy*."~ */
  IF ~~ THEN REPLY #15195 /* ~"Jak víš, co je klíčem?"~ */ GOTO 49
  IF ~~ THEN REPLY #15196 /* ~"Proč jsi řekl, že je město poškozeno znova?"~ */ GOTO 38
  IF ~~ THEN REPLY #15197 /* ~"Vidím. Mám pár dalších otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15198 /* ~"Dík za informaci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #15025 /* ~"Každé dveře mají jiný klíč. Některé klíče jsou *známy*, některé ne."~ */
  IF ~~ THEN REPLY #15199 /* ~"Co je to za klíče?"~ */ GOTO 50
  IF ~~ THEN REPLY #15200 /* ~"Proč jsi řekl, že je město poškozeno?"~ */ GOTO 38
  IF ~~ THEN REPLY #15201 /* ~"Jasně. Mám pár dalších otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15202 /* ~"Díky moc za všechny informace. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15026 /* ~"Tolik je klíčů, kolik je dveří. Klíče nemusí být jen malé věci vyrobené ze železa. Klíčem může být souboj dvou mečů, kapka krve vymačkaná z jazyku mrtvého muže, vzpomínka na zašlou lásku, nebo zuřivé proklínaní nebes. Když dveře i klíč pasují, průchod se objeví."~ */
  IF ~~ THEN REPLY #15204 /* ~"Zní to, jakože nalezení všech těch dveří a klíčů k nim, může být velmi obtížné."~ */ GOTO 51
  IF ~~ THEN REPLY #15208 /* ~"Proč jsi říkal, že je město poškozené?"~ */ GOTO 38
  IF ~~ THEN REPLY #15215 /* ~"Rozumím. Mám pár dalších otázek..."~ */ GOTO 28
  IF ~~ THEN REPLY #15218 /* ~"Díky za informace. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #15027 /* ~"Taková cesta byla vyzkoušena, ale zůstala nedokončena. Tak jak se mění město, mění se i dveře. Nic *známého* nezůstává *známým* na dlouho."~ */
  IF ~~ THEN REPLY #15220 /* ~"Proč jsi říkal, že je město znovu zkažené?"~ */ GOTO 38
  IF ~~ THEN REPLY #15222 /* ~"Jasně. Mám pár dalších otázek"~ */ GOTO 28
  IF ~~ THEN REPLY #15224 /* ~"Díky za všechno. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 52 // from: 28.3
  SAY #15028 /* ~"Všechny věci, ať je to již jejich podstata nebo tvar - jejich existence je podmíněna a definována *poznáním* sebe sama."~ */
  IF ~~ THEN REPLY #15226 /* ~"A jestliže se člověk vlastně nezná?"~ */ GOTO 53
  IF ~~ THEN REPLY #15228 /* ~"Mám nějaké další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15231 /* ~"Už není co říci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #15030 /* ~"Když mysl *nezná* sama sebe, není jednotná. A když mysl není jednotná je nevyrovnaná. A čehokoliv se tento člověk pak dotkne je také tím poznamenáno. Dak'kon se odmlčí. "Říká se - Cokoliv takový člověk uvidí, jeho ruce pokazí."~ */
  IF ~~ THEN REPLY #15234 /* ~"Znáš sám sebe?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #15236 /* ~"Mám nějaké další otázky"~ */ GOTO 28
  IF ~~ THEN REPLY #15237 /* ~"Už není co říci. Sbohem"~ */ GOTO 67
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #15032 /* ~Dak'kon ztichl. Jeho černé oči se na tebe dívají tak jako poprvé.~ */
  IF ~~ THEN REPLY #15238 /* ~"Znovu se ptám: Znáš sám sebe?"~ */ GOTO 55
  IF ~~ THEN REPLY #15240 /* ~"Nevadí. Mám nějaké další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15241 /* ~"Nechtěl jsem tě rozčílit. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #15034 /* ~Když Dak'kon znovu promluví, jeho hlas se změní; jeho slova dostávají ozvěnu, jako velký balvan hozený do rokle. Zní to, jako by jednotlivá slova ze sebe vyrážel. "Je mým *přáním*, abych tohoto poznání dosáhl."~ */
  IF ~~ THEN REPLY #15242 /* ~"Možná jsem byl příliš laskavý, když jsem se jen zeptal. Řekni mi to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #15243 /* ~"Nevadí. Mám nějaké další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15244 /* ~"Promiň, nevadí. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #15036 /* ~Dak'kon mluví teď velmi pomalu, jakoby zvažoval každé slovo, které vyřkne. "Už zašlo příliš daleko, to že *neznám* sám sebe."~ */
  IF ~~ THEN REPLY #15245 /* ~"Proč?"~ */ GOTO 57
  IF ~~ THEN REPLY #15246 /* ~"Nevadí, mám nějaké další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15247 /* ~"Omlouvám se, sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15038 /* ~Dak'kon přešel do šepotu - "*Nevím* proč. *Vím*, že se to stalo. *Nevím* jak. *Nevím* kdy. A ani *nevím*, jak mám sám sebe poznat."~ */
  IF ~~ THEN REPLY #15248 /* ~"Můžu mít nějaké další otázky?"~ */ GOTO 28
  IF ~~ THEN REPLY #15249 /* ~"Promiň, nevadí, sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 58 // from: 28.4 34.0
  SAY #15039 /* ~"To je meč z *karachu*. Je to věc, která jiným ukazuje, jak velkou mají schopnost ovládat svou vůli."~ */
  IF ~~ THEN REPLY #15250 /* ~*"Karach?* Co to znamená?"~ */ GOTO 61
  IF ~~ THEN REPLY #15251 /* ~"Je udělán z nějakého zvláštního kovu... je to skoro hypnotizující, jak se přelévá sem a tam."~ */ GOTO 61
  IF ~~ THEN REPLY #15252 /* ~"Na jakou hodnost to ukazuje?"~ */ GOTO 59
  IF ~~ THEN REPLY #15253 /* ~"Mám nějaké další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15254 /* ~"Rozumím, už musím jít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 59 // from: 58.2 63.1
  SAY #15040 /* ~"Meč je symbolem *zerthů.* *Zerth* je ten, který *zná* slova Zerthimona. *Znajíce* slova Zerthimona, *znají* sami sebe."~ */
  IF ~~ THEN REPLY #15255 /* ~"Zerthimon?"~ */ GOTO 60
  IF ~~ THEN REPLY #15256 /* ~"Z čeho že je tahle čepel zhotovená?"~ */ GOTO 61
  IF ~~ THEN REPLY #15257 /* ~"Mám další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15259 /* ~"Chápu, už musím odejít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #15041 /* ~"Zerthimon našel naši rasu. On *věděl* o githzerai dřív než oni *věděli* sami o sobě. On definoval Lidi. Dal jim mysl."~ */
  IF ~~ THEN REPLY #15258 /* ~"Z čeho že je tahle čepel zhotovená?"~ */ GOTO 61
  IF ~~ THEN REPLY #15260 /* ~"Mám další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15261 /* ~"Chápu, už musím odejít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 59.1 60.0
  SAY #15042 /* ~Dak'kon se odmlčel jako by hledal správná slova. "Ve tvém jazyce by byl nejbližší překlad, 'Věc Chaosu'. Lidé ji mohou utvářet pomocí svých myšlenek."~ */
  IF ~~ THEN REPLY #15262 /* ~"Lid?"~ */ GOTO 62
  IF ~~ THEN REPLY #15263 /* ~"Pohybovat svými myšlenkami?"~ */ GOTO 63
  IF ~~ THEN REPLY #15264 /* ~"Mám nějaké další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15265 /* ~"Rozumím. Už musím jít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #15043 /* ~"Githzerai."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15266 /* ~"Kdo je to githzerai?"~ */ GOTO 30
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15267 /* ~"Kdo jsou ti githzerai?"~ */ GOTO 33
  IF ~~ THEN REPLY #15268 /* ~"A ty tvrdíš, že tihle githzerai mohou vytvarovat takový *karach*... pouze myšlenkami?"~ */ GOTO 63
  IF ~~ THEN REPLY #15269 /* ~"Mám nějaké další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15270 /* ~"Rozumím. Už musím jít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 63 // from: 61.1 62.2
  SAY #15044 /* ~*Meč z "karachu* není ukovaný žárem, ale sebeuvědoměním. Je zrcadlem, které odráží touhu po ovládání jak na povrchu tak na jeho ostří. Když znáš sám sebe, meč je silný - tvrdší a odolnější než ocel. Když neznáš sám sebe, čepel je jako voda, bez tvaru a slabá." ~ */
  IF ~~ THEN REPLY #15271 /* ~"Jsi ochotný to prodat?"~ */ GOTO 64
  IF ~~ THEN REPLY #15272 /* ~"Jakou hodnotu tahle čepel má?"~ */ GOTO 59
  IF ~~ THEN REPLY #15273 /* ~"Mám nějaké další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15274 /* ~"Rozumím, ale už musím odejít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #15045 /* ~"Komukoliv jinému by to bylo k ničemu. Meč *zná* mou mysl a já *znám* jeho srdce. My oba zaniknem stejnou smrtí."~ */
  IF ~~ THEN REPLY #15275 /* ~"Můžu se ještě na něco zeptat?"~ */ GOTO 28
  IF ~~ THEN REPLY #15276 /* ~"Rozumím, ale musím už jít. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 65 // from: 28.5
  SAY #15046 /* ~"Ten mi není *znám*."~ */
  IF ~~ THEN REPLY #15277 /* ~"Můžu se ještě na něco zeptat..."~ */ GOTO 28
  IF ~~ THEN REPLY #15278 /* ~"Už není co říct. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 28.6
  SAY #15047 /* ~"Není mi *známo*, kde by taková věc mohla být."~ */
  IF ~~ THEN REPLY #15279 /* ~"Mám nějaké další otázky..."~ */ GOTO 28
  IF ~~ THEN REPLY #15280 /* ~"Už není co říci. Sbohem."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 23.1 28.7 29.2 30.2 31.2 32.2 33.2 34.2 35.2 36.3 37.2 38.8 39.4 40.3 41.2 43.3 44.3 45.3 46.3 47.3 48.3 49.3 50.3 51.2 52.2 53.2 54.2 55.2 56.2 57.1 58.4 59.3 60.2 61.3 62.4 63.3 64.1 65.1 66.1
  SAY #15048 /* ~Když ses otočil abys odešel, muž ostře řekl. "Zadrž." Pak trochu tišším hlasem řekl. "Toto město ti není *známo*. Dovol mi jít s tebou."~ */
  IF ~~ THEN REPLY #15281 /* ~"Souhlasím. Další válečník se může hodit."~ */ GOTO 72
  IF ~~ THEN REPLY #15282 /* ~"Jsi starý. Jak bys mohl být užitečný?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15283 /* ~"Ne, dnes ne. Sbohem."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 42.3 67.2 70.1 71.1
  SAY #15049 /* ~"Doufám, že jsi mě slyšel" Než ses stačil otočit, Dak'kon znovu promluvil. Najednou shledáváš obtížným obrátit se, odvrátit se od něj. "Jsi cizincem v tomto městě. A pokud žiješ v *nevědění* pak se tohle město stává pro tebe nebezpečným. Dva meče váží víc jak jeden, určitě, když zůstávají zasunuty v pochvách." Když mluví, všímáš si, že jeho meč opět začíná nabírat mrtvolně černou barvu, jako prve. ~ */
  IF ~~ THEN REPLY #15284 /* ~"Velmi dobře. Další válečník se může hodit, Dak'kone."~ */ GOTO 72
  IF ~~ THEN REPLY #15285 /* ~"Mohl bys mne poslouchat, ale neposloucháš mě. Nechci tě mít s sebou. Zůstaň tam, kde jsi byl, když jsem vešel. Teď už sbohem."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY #15050 /* ~"Budu zde, až se vrátíš. Buď mi *znám* a tvá cesta bude mou."~ */
  IF ~~ THEN REPLY #15286 /* ~"Budu na to pamatovat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 42.2 67.1
  SAY #15051 /* ~Dak'konův pohled se změnil. Dívá se na tebe pohledem, takovým jako poprvé, co jsi s ním mluvil. "Jsem stár a zatím jsem cestoval daleko. Umění bojovat je mi *známo*. A záludnosti tohoto města jsou mi *známy* též."~ */
  IF ~~ THEN REPLY #15287 /* ~"Nicméně..."~ */ GOTO 71
  IF ~~ THEN REPLY #15288 /* ~"Ne, dnes ne, sbohem."~ */ GOTO 68
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #15052 /* ~"Pokud bodneš ve tmě, můj meč nemine. Dveře, která jsou pro tebe zamčeny, jsou pro mne pouhými průchody. S *věděním* a *poznáním* těchto věcí ode mne se staneš silným. Chci cestovat s tebou."~ */
  IF ~~ THEN REPLY #15289 /* ~"Velmi dobře, souhlasím."~ */ GOTO 72
  IF ~~ THEN REPLY #15290 /* ~"Tak to si nemyslím, sbohem."~ */ GOTO 68
END

IF ~~ THEN BEGIN 72 // from: 42.1 67.0 68.0 71.0 73.1
  SAY #15053 /* ~"Tvá cesta je i mou." Dost zvláštní, nyní ti připadá jeho hlas, takový vzdálený se spoustou ozvěn, tak jakoby k tobě mluvil z velké dálky.~ [DAK206] */
  IF ~  GlobalLT("Dakkon","GLOBAL",2)
~ THEN REPLY #15291 /* ~"Výborně, tak jdeme."~ */ DO ~SetGlobal("Dakkon","GLOBAL",2)
AddexperienceParty(1000)
ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalGT("Dakkon","GLOBAL",1)
~ THEN REPLY #66762 /* ~"Dobrá tedy. Pojďme."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  Global("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 73 // from:
  SAY #15054 /* ~Dak'kon se otočil, když ses přiblížil a očima černýma jako antracit hledí skrz tebe. Blesklo ti hlavou, jestli není slepý. ~ */
  IF ~~ THEN REPLY #15292 /* ~"Rád tě opět vidím, Dak'kone. Můžu se tě něco zeptat..."~ */ GOTO 28
  IF ~~ THEN REPLY #15293 /* ~"Rád bych tě uvítal  v družině, Dak'kone."~ */ GOTO 72
  IF ~~ THEN REPLY #15294 /* ~Ignoruj ho.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #16628 /* ~"Tvoje žádost je pro jednoho vskutku poutavá. Stromy v Úlu? Podobny městům v Limbu, stály by zde coby svědectví vůle lidí, kteří je nenechali napospas krušnému okolí a nakonec jisté zhoubě. V takové situaci musí jeden využít to, co mu má přinést zkázu, stejně jako to, co bylo přehlédnuto a dokonale toho využít. Já rovněž projevím péči o tyto stromy."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16936 /* ~"Díky. Morte, co si o tom myslíš?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16937 /* ~"Díky. Annah? Mohla bys?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16938 /* ~"Díky. Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16939 /* ~"Díky. Grace, mohla bys to zvážit?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16940 /* ~"Díky. Nordome, myslíš, že bys mohl pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16941 /* ~"Díky. "Vhailore, mohl bys pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16942 /* ~"Díky. Ale ještě něco mi leží na srdci, Truchlící..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16943 /* ~"Díky, Dak'kone. Servus, Truchlící za Stromy."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #16629 /* ~Dak'kon přikývl. "Samozřejmě."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16944 /* ~"Dobrá. Morte, jaký je tvůj názor?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16945 /* ~"Dobrá. Annah? Mohla bys?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16946 /* ~"Dobrá. Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16947 /* ~"Dobrá. Grace, mohla bys to zvážit?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16948 /* ~"Dobrá. Nordome, myslíš, že bys mohl pomoci?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16949 /* ~"Dobrá. "Vhailore, mohl bys pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16950 /* ~"Á, tady jsi, Truchlící. Ještě bych se rád na něco přeptal..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16951 /* ~"To by mělo pomoci, Truchlící za Stromy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #17626 /* ~"Koření může chutnat tak, jak budeš chtít. Je to otázka koncentrace a síly vůle, změnit jeho chuť tak, jak si budeš přát."~ */
  IF ~~ THEN REPLY #17725 /* ~Pár jich zkus.~ */ DO ~TakePartyGold(5)
~ EXTERN ~D300MER6~ 20
  IF ~~ THEN REPLY #17726 /* ~"Nemyslím, že by mi tohle zachutnalo. Zkusím něco jiného."~ */ EXTERN ~D300MER6~ 6
  IF ~~ THEN REPLY #17727 /* ~"Změnil jsem názor. Přesto mám pár otázek..."~ */ EXTERN ~D300MER6~ 2
  IF ~~ THEN REPLY #17728 /* ~"Skutečně nemyslím, že bych chtěl tohle. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 78.0 79.1 80.3 81.3 82.0 83.12 84.12 85.12 86.9 87.9 88.0 89.2 90.5 91.5 92.4 93.8 94.3 95.3 96.3 97.1 98.3 99.5 100.3 101.1 102.3 103.0 104.3 105.0 106.3 107.3 108.3 109.3 110.3 111.12 112.5 113.0
  SAY #22541 /* ~Dak'kon přikývne.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25004 /* ~"Zeptej se ho, co je zač."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25005 /* ~"Zeptej se ho, co je zač."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25006 /* ~"Zeptej se ho, co je zač."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25007 /* ~"Zeptej se ho, co je tohle za místo."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25008 /* ~"Zeptej se ho, co je tohle za místo."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25009 /* ~"Zeptej se ho, co je tohle za místo."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25010 /* ~"Zdá se mi, že jsem tě už někdy, Felle, viděl."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25011 /* ~"Zdá se mi, že jsem tě už někdy, Felle, viděl."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25012 /* ~"Zdá se mi, že jsem tě už někdy, Felle, viděl."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25013 /* ~"Zdá se mi, že jsem tě už někdy, Felle, viděl."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25014 /* ~"Zdá se mi, že jsem tě už někdy, Felle, viděl."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25015 /* ~"Zdá se mi, že jsem tě už někdy, Felle, viděl."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64400 /* ~"Co máš za tím závěsem, Felle?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64401 /* ~"Co máš za tím závěsem, Felle?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64402 /* ~"Co máš za tím závěsem, Felle?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64403 /* ~"Felle, co je to tam vzadu v pokoji za rámy?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64404 /* ~"Felle, co je to tam vzadu v pokoji za rámy?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64405 /* ~"Felle, co je to tam vzadu v pokoji za rámy?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25016 /* ~"Řekl, že už mě předtím potkal... ví, jak jsem zemřel?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25017 /* ~"Řekl, že už mě předtím potkal... ví, jak jsem zemřel?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25018 /* ~"Řekl, že už mě předtím potkal... ví, jak jsem zemřel?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25019 /* ~"Zeptej se ho, jestli něco slyšel o Ravel."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25020 /* ~"Zeptej se ho, jestli něco slyšel o Ravel."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25021 /* ~"Zeptej se ho, jestli něco slyšel o Ravel."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25022 /* ~"Zeptej se ho, jestli dělal tetování na té zničené paži, co jsem našel."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25023 /* ~"Zeptej se ho, jestli dělal tetování na té zničené paži, co jsem našel."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25024 /* ~"Zeptej se ho, jestli dělal tetování na té zničené paži, co jsem našel."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25025 /* ~"Ví něco o těch tetováních na mém těle?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25026 /* ~"Ví něco o těch tetováních na mém těle?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25027 /* ~"Ví něco o těch tetováních na mém těle?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25028 /* ~"Mohl bych vidět, jaká má k dispozici tetování?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25029 /* ~"Můžu vidět, jaká tetování má k dispozici?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25030 /* ~"Můžu vidět, jaká tetování má k dispozici?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25031 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #22542 /* ~"Je *známý* jako Fell."~ */
  IF ~~ THEN REPLY #25032 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25033 /* ~"Vím. To je všechno, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #22543 /* ~"Umísťuje zde na tělo obrázky. 'Tetování.'"~ */
  IF ~~ THEN REPLY #25034 /* ~"Můžu vidět, jaká tetování má k dispozici?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25035 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25036 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #22544 /* ~"Jeho řeč je rozštěpená protiklady." Dak'kon se na chvíli odmlčí, jeho černé oči přeplují přes symboly. "Říká, že je to poprvé, co jsi za ním přišel. Říká, že to není poprvé, co jsi za ním přišel."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25037 /* ~"Ví, kdo jsem?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25038 /* ~"Ví, kdo jsem?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25039 /* ~"Ví, kdo jsem?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25040 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25041 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #22545 /* ~"Jsi mu *známý*. Ale nemůže ti říct, co bys chtěl *vědět*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25042 /* ~"Proč ne?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25043 /* ~"Proč ne?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25044 /* ~"Proč ne?"~ */ JOURNAL #24270 /* ~Fell řekl, že mě zná, ale nemůže mi říct můj příběh. Ale nejpodivuhodnější věc byl důvod. Řekl, že nemůže, protože 'on nemůže změnit charakter člověka'.~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25045 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25046 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #22546 /* ~"Místo odpovědi se omluvy vzdává ve prospěch ticha." Dak'kon se na chvíli odmlčí, a když znovu promluví, jeho slova jsou jako led. "Říká, že nemůže změnit *povahu člověka*." Jak Dak´kon ta slova opakuje, cítíš ve své hlavě strašný tlak... který zvolna zmizí s posledním slovem.  ~ */
  IF ~~ THEN REPLY #25047 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25048 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #22547 /* ~"Je skutečná."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25049 /* ~"Ví, kde je?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25050 /* ~"Ví, kde je?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25051 /* ~"Ví, kde je?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25052 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25053 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25054 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25055 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25056 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25057 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25058 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25059 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25060 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25061 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25062 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #22548 /* ~"Byla uvězněna v jednom z Bludišť Paní bolesti."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25063 /* ~"Bludiště?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25064 /* ~"Bludiště?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25065 /* ~"Bludiště?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25066 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25067 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25068 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25069 /* ~"Chtěl bych mu položit ještě jiné otázky..." 
~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25070 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25071 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25072 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25073 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25074 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25075 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25076 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #22549 /* ~"Ravelina vůle nebyla vůlí Paní. Paní ji potrestala."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25077 /* ~"Proč byla Ravel umístěna do bludiště?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25078 /* ~"Proč byla Ravel umístěna do bludiště?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25079 /* ~"Proč byla Ravel umístěna do bludiště?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25080 /* ~"Ví, jak se dá dostat do Ravelinina bludiště?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25081 /* ~"Ví, jak se dá dostat do Ravelinina bludiště?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25082 /* ~"Ví, jak se dá dostat do Ravelinina bludiště?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25083 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25084 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25085 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25086 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25087 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25088 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25089 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25090 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #22550 /* ~"Pokoušela se rozbít zdi Sigilu."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25091 /* ~"Ví, jak se dá dostat k Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25092 /* ~"Ví, jak se dá dostat k Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25093 /* ~ "Ví, jak se dá dostat k Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25094 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25095 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25096 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25097 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25098 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25099 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25100 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25101 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #22551 /* ~"Cesta, jak se k ní dostat, mu není *známa*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25102 /* ~"Co ještě ví o Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25103 /* ~"Co ještě ví o Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25104 /* ~"Co ještě ví o Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25105 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25106 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25107 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25108 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25109 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25110 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25111 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25112 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #22552 /* ~"Varuje nás, abychom nehledali tu noční babu. Říká, že její srdce je černé a bude se snažit vám ublížit."~ */
  IF ~~ THEN REPLY #25113 /* ~"Budu si to pamatovat. Chtěl bych mu položit ještě jiné otázky..." ~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25114 /* ~"Myslím, že naše cesty jsou předurčeny k tomu, aby se stále křižovali. Sbohem."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #22553 /* ~Dak'kon studuje symboly, ale zůstává tiše.~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25115 /* ~"Dak'kone? Co říká?"~ */ GOTO 90
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25116 /* ~"Dak'kon?"~ */ GOTO 96
  IF ~~ THEN REPLY #25117 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25118 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #22554 /* ~"Ta paže je tvoje. Ta tetování jsou jeho."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #25119 /* ~"Řekl ještě něco víc?"~ */ JOURNAL #25126 /* ~Požádal jsem Dak'kona, aby přeložil, co říkal Fell o potetované paži, kterou jsem našel a on lhal a říkal, že neví. Z nějakého důvodu mi nechtěl vysvětlit, co to tetování na té paži znamená.~ */ GOTO 91
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #25120 /* ~"Řekl ještě něco víc?"~ */ GOTO 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25121 /* ~"Co mi může říct o těchhle tetováních?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25122 /* ~"Co mi může říct o těchhle tetováních?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25123 /* ~"Co mi může říct o těchhle tetováních?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25124 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25125 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #22555 /* ~Dak'kon na chvíli ztichne... a najednou, instinktivně, víš, že ti Dak'kon *lže*. Pokračuje nehybným tónem. "Zbytek symbolů je mi *neznámý*."~ */
  IF ~~ THEN REPLY #25127 /* ~"Proč mi lžeš?"~ */ GOTO 93
  IF ~~ THEN REPLY #25128 /* ~"Myslím, že ti řekl *vím*. Překládej. Hned."~ */ DO ~SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25129 /* ~"Oh... dobře. Co mi může říct o tetováních na mé paži?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25130 /* ~"Oh... dobře. Co mi může říct o tetováních na mé paži?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25131 /* ~"Oh... dobře. Co mi může říct o tetováních na mé paži?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25132 /* ~"Dobře. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25133 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #22556 /* ~Dak'kon na chvíli ztichne. "Zbytek symbolů je mi *neznámý*."~ */
  IF ~~ THEN REPLY #25134 /* ~"Víš to jistě?"~ */ GOTO 95
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25135 /* ~"Oh... dobře. Co mi může říct o tetováních na mé paži?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25136 /* ~"Oh... dobře. Co mi může říct o tetováních na mé paži?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25137 /* ~"Oh... dobře. Co mi může říct o tetováních na mé paži?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25138 /* ~"Dobře. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25139 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.0
  SAY #22557 /* ~Dak'kon opět upadne v ticho; neobrací se pohledem k vám -- vypadá to, že se upřeně dívá na něco míle daleko. "Ty symboly... není nic dobrého v tom *znát* odpověď, na to, na co ses ptal."~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25140 /* ~"Ztrácím trpělivost. Potřebuji odpověď, a ty uděláš nejlíp, když mi ji řekneš, než se naštvu."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~I když se Dak'kon zprvu zdráhal, podařilo se mi ho přesvědčit, aby mi řekl o tetování na mé paži, co jsem nalezl. Říkal něco o "čtyřech s kterými jsem cestoval v minulosti."~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25141 /* ~"Od které doby je špatné dozvědět se pravdu o něčem, co by někomu skutečně mohlo pomoci, Dak'kone? Rádce, který nemůže objektivně informovat, zrazuje své okolí."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~I když se Dak'kon zprvu zdráhal, podařilo se mi ho přesvědčit, aby mi řekl o tetování na mé paži, co jsem nalezl. Říkal něco o "čtyřech s kterými jsem cestoval v minulosti."~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25142 /* ~"Od které doby je špatné dozvědět se pravdu o něčem, co by někomu skutečně mohlo pomoci, Dak'kone? Rádce, který nemůže objektivně informovat, zrazuje své okolí."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~I když se Dak'kon zprvu zdráhal, podařilo se mi ho přesvědčit, aby mi řekl o tetování na mé paži, co jsem nalezl. Říkal něco o "čtyřech s kterými jsem cestoval v minulosti."~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25143 /* ~"Od které doby *je* špatné dozvědět se pravdu o něčem, co by někomu skutečně mohlo pomoci, Dak'kone? Rádce, který nemůže objektivně informovat, zrazuje své okolí."~ */ DO ~GiveExperience(Protagonist,750)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~I když se Dak'kon zprvu zdráhal, podařilo se mi ho přesvědčit, aby mi řekl o tetování na mé paži, co jsem nalezl. Říkal něco o "čtyřech s kterými jsem cestoval v minulosti."~ */ GOTO 94
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25144 /* ~"No tak, Dak'kone. Hovořil jsi o nich již předtím."~ */ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25145 /* ~"V pořádku, tedy. Co říká Fell o tetování na té paži?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25146 /* ~"V pořádku, tedy. Co říká Fell o tetování na té paži?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25147 /* ~"V pořádku, tedy. Co říká Fell o tetování na té paži?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25148 /* ~"Dobře. "Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25149 /* ~"Dobře, tak si teda poraď sám, Dak'kone. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.1 93.2 93.3
  SAY #22558 /* ~"V tvých slovech je pravda. Ta pravda... by mi mohla být *známa*." Dak'kon na chvíli ztichne, pak se otočí k tobě, jeho pohled ztvrdne. "Ty symboly hovoří o čtyřech, s nimiž jsi cestoval v minulosti."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25151 /* ~"Pokračuj... kdo byli ti čtyři?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25152 /* ~"Pokračuj... kdo byli ti čtyři?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25153 /* ~"Pokračuj... kdo byli ti čtyři?"~ */ JOURNAL #24274 /* ~Fell mi přeložil runu z mé staré ruky... povídal, že hovoří o čtyřech, jenž jednou šli mou cestou se mnou. Ti čtyři byli 'Jeden nemilovaný, který miluje toho, který nemiluje'.'Jeden, který nevidí to, co vidí ostatní a vidí, co jiní nevidí'. 'Jeden, který je dobře známý a je zavázán povinností'. 'Jeden, který je otrokem a jeho pouty jsou slova'. Řekl, že všichni byli mučeni jako já byl a při svém mučení jsem přišel na to, že ostatní trpěli také. ~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25154 /* ~"Dobře. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25155 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 92.0
  SAY #22559 /* ~Dak'kon se otočí k tobě, jeho pohled ztvrdne. "Ano."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25156 /* ~"V pořádku, tedy. Co říká Fell o tetování na té paži?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25157 /* ~"V pořádku, tedy. Co říká Fell o tetování na té paži?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25158 /* ~"V pořádku, tedy. Co říká Fell o tetování na té paži?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25159 /* ~"Dobře. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25160 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 89.1 91.1 93.0 93.4
  SAY #22560 /* ~Dak'kon se otočí k tobě, jeho pohled ztvrdne. "Ty symboly hovoří o čtyřech, s nimiž jsi cestoval v minulosti."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25161 /* ~"Pokračuj... kdo byli ti čtyři?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25162 /* ~"Pokračuj... kdo byli ti čtyři?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25163 /* ~"Pokračuj... kdo byli ti čtyři?"~ */ JOURNAL #24274 /* ~Fell mi přeložil runu z mé staré ruky... povídal, že hovoří o čtyřech, jenž jednou šli mou cestou se mnou. Ti čtyři byli 'Jeden nemilovaný, který miluje toho, který nemiluje'.'Jeden, který nevidí to, co vidí ostatní a vidí, co jiní nevidí'. 'Jeden, který je dobře známý a je zavázán povinností'. 'Jeden, který je otrokem a jeho pouty jsou slova'. Řekl, že všichni byli mučeni jako já byl a při svém mučení jsem přišel na to, že ostatní trpěli také. ~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25164 /* ~"Dobře. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25165 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #22561 /* ~Dak'kon se na symboly ani nepodívá. "Tetování hovoří o čtyřech myslích. Jednou byla žena, která milovala muže, jenž ji *znal* a *neznal* její lásku. Další byl slepý muž, který viděl věci, jaké oko smrtelníka vidět nemůže. Další byl důvěrník, mágův mazlíček, koupený a spoutaný. A poslední byl otrok."~ */
  IF ~~ THEN REPLY #25166 /* ~"Proč jsi mi to nechtěl říct?"~ */ GOTO 98
  IF ~  False()
~ THEN REPLY #25167 /* ~"Dobře. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25168 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #22562 /* ~"Ti čtyři jsou svázáni symbolem, který mi je *znám*."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25169 /* ~"Jaký symbol?"~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25170 /* ~"Jaký symbol?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25171 /* ~"Jaký symbol?"~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25172 /* ~"Dobře. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25173 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #22563 /* ~"Ten symbol je trápení. On říká, že jsi ho nosil vždycky, tělo *ví*, že trpí, i když mysl zrovna ne."~ */
  IF ~~ THEN REPLY #25174 /* ~"Dost bylo o tom symbolu. Řekni mi všechno, co víš o té čtveřici na tetování."~ */ GOTO 100
  IF ~~ THEN REPLY #25175 /* ~"Vím. Můžeš mi říci něco více o čtveřici na tetování?"~ */ GOTO 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25176 /* ~"Řekl Fell ještě něco o tetování na té paži?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25177 /* ~"Řekl Fell ještě něco o tetování na té paži?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25178 /* ~"Řekl Fell ještě něco o tetování na té paži?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25179 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25180 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1
  SAY #22564 /* ~Dak'kon opět ztichne. "Nechci o tom teď mluvit. Zeptej se, až to, o čem jsme mluvili, bude moci zůstat jen mezi těmi, kteří s tebou putují." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25181 /* ~"V pořádku. Řekl Fell něco o dalších tetováních na té paži?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25182 /* ~"V pořádku. Řekl Fell něco o dalších tetováních na té paži?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25183 /* ~"V pořádku. Řekl Fell něco o dalších tetováních na té paži?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25184 /* ~"V pořádku... ale nejdřív se chci Fella ještě něco zeptat..."~ */ GOTO 77
  IF ~~ THEN REPLY #25185 /* ~"Dobře, Dak'kone. Půjdu."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #22565 /* ~"On říká, že ta paže nosí dávno zapomenutá tetování. Teď se na ně rozpomenul. Jsou tvá, jestliže je chceš."~ */
  IF ~~ THEN REPLY #25186 /* ~"Okej... rád bych viděl všechna tetování, které má k dispozici."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25187 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25188 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #22566 /* ~"On říká, že ta tetování nejsou jeho."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Může mi o nich něco říct?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Může mi o nich něco říct?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Může mi o nich něco říct?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25189 /* ~"Vím. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25190 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #22567 /* ~"Symboly vzadu na tvých zádech jsou instrukce zanechané tobě samému. Znamení na tvém rameni je znamením utrpení. Říká, že znamení je na tvém těle proto, že tělo *ví*, že trpí, i když mysl zrovna ne."~ */
  IF ~~ THEN REPLY #25191 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25192 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #22568 /* ~"Stíny."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25193 /* ~"Stíny?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25194 /* ~"Stíny?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25195 /* ~"Stíny?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25196 /* ~"Chtěl bych mu položit ještě jiné otázky..."  ~ */ GOTO 77
  IF ~~ THEN REPLY #25197 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #22569 /* ~"On říká, že pro tebe přišlo mnoho Stínů. Důvod, proč ti vzali život, mu není *znám*."~ */
  IF ~~ THEN REPLY #25198 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25199 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #22570 /* ~"To je jeho galerie. Říká, že tě *zná* jako své plátno. Chová respekt před tvou silou a obdivuje ji." Dak'kon na chvíli ztichne. "Pak tě uráží věnováním svého soucitu."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25200 /* ~"Jeho soucit?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25201 /* ~"Jeho soucit?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25202 /* ~"Jeho soucit?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25203 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25204 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #22571 /* ~"Soucítí s tebou pro tvé jizvy utrpení, které na tobě zůstaly. Říká, že jsi vytrvalý. Ve vytrvalosti sílíš."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25205 /* ~"Co tím myslí?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25206 /* ~"Co tím myslí?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25207 /* ~"Co tím myslí?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25208 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25209 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #22572 /* ~"On říká, že jeho obdiv *vychází* z tvé trpělivosti snášet ztrátu. Říká, že ztráta na tobě visí jako řetězy, přesto stojíš a chodíš."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25210 /* ~"Požádej ho, ať pokračuje."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25211 /* ~"Požádej ho, ať pokračuje."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25212 /* ~"Požádej ho, ať pokračuje."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25213 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25214 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #22573 /* ~"On říká, že ztráta pokrývá tento život i všechny, co byly před ním. Říká, že jako had svlékající kůži, zanecháváš své životy za sebou, zatímco procházíš všechny cesty života."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25215 /* ~"Řekl ještě něco?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25216 /* ~"Řekl ještě něco?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25217 /* ~"Řekl ještě něco?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25218 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25219 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #22574 /* ~"Chtěl by, abys *věděl* o tomto varování: Každý z tvých životů zanechává stín v bytí. Tvá cesta tě dovede na místo, kde stíny samy o sobě *nevědí* a zdi jsou vyrobeny z žalu."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25220 /* ~"Já... vím. Řekl ještě něco?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25221 /* ~"Já... vím. Řekl ještě něco?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25222 /* ~"Já... vím. Řekl ještě něco?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25223 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25224 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #22575 /* ~"On říká, nic nepodepisovat."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25225 /* ~"Dobře."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25226 /* ~"Mno dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25227 /* ~"Mno dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25228 /* ~"Mno dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25229 /* ~"Dobře."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25230 /* ~"Mno dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25231 /* ~"Mno dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25232 /* ~"Mno dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25233 /* ~"Dobře."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25234 /* ~"Mno dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25235 /* ~"Mno dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25236 /* ~"Mno dobře. Myslím... ehm... že nebudu naznačovat víc, než jsem naznačil."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25237 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25238 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #22576 /* ~"Ptá se, jestli *znáš* sám sebe, abys mohl být úplný."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25239 /* ~Pravda: "No já... ne. Vlastně, od té doby, co jsem se probudil v Márnici, cítím, že mi něco... chybí. Něco uvnitř."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25240 /* ~Pravda: "No já... ne. Vlastně, od té doby, co jsem se probudil v Márnici, cítím, že mi něco... chybí. Něco uvnitř."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25241 /* ~Pravda: "No já... ne. Vlastně, od té doby, co jsem se probudil v Márnici, cítím, že mi něco... chybí. Něco uvnitř."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25242 /* ~"Potom ti je velký kulový."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25243 /* ~Lež: "Jasně, cítím se kompletně. Proč?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25244 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25245 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #22577 /* ~"Prokazuje úctu tvojí síle. Říká, že víru si uchováš, když znovu *pochopíš* sám sebe."~ */
  IF ~~ THEN REPLY #25246 /* ~"Pokusím se. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 77
  IF ~~ THEN REPLY #25247 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #32703 /* ~Dak'kon si nejspíš ženy vůbec nevšiml, jednoduše se upřeně dívá přímo před sebe.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 33
END

IF ~~ THEN BEGIN 115 // from:
  SAY #32704 /* ~Dak'kon stále neodpovídá - jako by pro něj žena ani neexistovala.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 35
END

IF ~~ THEN BEGIN 116 // from:
  SAY #32705 /* ~Dak'kon náhle promluvil hlubokým barytonem, jako by poučoval malé dítě. "Když Zerthimon vešel do Sféry Shale a cesta githzerai se zkřížila s cestou člověka, řekl, že v jejich způsobech je mnoho hodného obdivu, ale že se musí hodně snažit, aby přemohli vlastní ignoranci..."~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #32706 /* ~Dak'kon pokračuje se svým  'vtipem:' "Mnoho lidí, řekl Zerthimon, mluví o velkých věcech, ale konají málo, a je tedy v jejich způsobech velké nebezpečí. Lidstvo je noční můra vytvarovaná z masa, nebezpečí národa bez opravdové historie a schopnosti poučit se z toho, co se událo.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 36
END

IF ~  GlobalGT("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 118 // from:
  SAY #33972 /* ~Dak'kon se k tobě otočil, jeho oči jako leštěný uhlík. "Bylo mi *známo*, že se vrátíš. Je tvou vůli, že se naše dvě cesty stanou opět jednou?"~ [DAK207] */
  IF ~~ THEN REPLY #33973 /* ~"Ano. Potřebuju tvou pomoc, Dak'kone."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 119
  IF ~~ THEN REPLY #33974 /* ~"Teď ne, Dak'kone, ne."~ */ GOTO 120
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #33975 /* ~"Tvá cesta je má."~ [DAK206] */
  IF ~~ THEN REPLY #33976 /* ~"Tak tedy pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 118.1
  SAY #33977 /* ~"Tak ať se tedy naše cesty rozdělí."~ */
  IF ~~ THEN REPLY #33978 /* ~"Sbohem, Dak'kone."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #33979 /* ~"Co je tvou vůlí?"~ [DAK205] */
  IF ~~ THEN REPLY #33980 /* ~"Teď momentálně nic. Jenom jsem se díval, jestli jsi stále se mnou."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #39583 /* ~Dak'kon vážně kývl hlavou. "Sdělím vám tedy příběh o Ach'ali Utopené.'"

Dak'kon začal vyprávět příběh o Ach'ali, šílené githzeraiské ženě z pověstí, která se ztratila v chaosu sféry Limbo. Za normálních okolností dovede každý githzerai za pomoci své vůle a duševních cvičení donutit chaos kolem sebe, aby se zformoval do podoby malého obyvatelného území. Nicméně Ach'ali se při návratu domů zabrala do svých zbytečných a bezvýznamných otázek, až se nakonec ostrůvek země kolem ní rozpustil a ona se utopila.~ */
  IF ~~ THEN EXTERN ~DYVES~ 61
END

IF ~~ THEN BEGIN 123 // from:
  SAY #39584 /* ~Dak'kon se tváří pozorně a nejspíš i mírně překvapeně.~ */
  IF ~~ THEN REPLY #39761 /* ~"Pokračuj, Yves..."~ */ DO ~SetGlobal("Yves_Story_10","GLOBAL",1)
AddexperienceParty(500)
~ EXTERN ~DYVES~ 62
  IF ~~ THEN REPLY #39762 /* ~"Počkej, Yves... Měl bych dotaz..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39763 /* ~"Zbytek mi dopovíš někdy jindy, Yves. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from:
  SAY #42437 /* ~Dak'kon na tebe pohlédl, a řekl, "Ona ti nemůže rozumět. Říká, že umírá." ~ */
  IF ~~ THEN REPLY #42438 /* ~"Na co umírá?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ GOTO 125
  IF ~~ THEN REPLY #42439 /* ~"Pak bys možná udělal lépe, kdybys ji zabil. I když to uděláš bolestivě."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42440 /* ~"Je něco, co bychom pro ni mohli udělat?"~ */ GOTO 127
  IF ~~ THEN REPLY #42441 /* ~"Skvělé. Půjdeme."~ */ GOTO 128
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #42442 /* ~"Její jméno je An'azi. Říká, že pracovala tady v domě na konzervování kůží do té doby, než před čtrnácti dny neonemocněla tak, že už to nemohla snášet. Byla propuštěna, vypuzena z domova a ponechána, aby zemřela. Bolí ji, když mluví, a nemoc zničila velkou část její mysli. Říká, že nemá nic cenného, co by ti mohla nabídnout."~ */
  IF ~~ THEN REPLY #42443 /* ~"A?"~ */ GOTO 127
  IF ~~ THEN REPLY #42444 /* ~"Pak ji tedy nechme o samotě. Může se uzdravit."~ */ GOTO 127
END

IF ~~ THEN BEGIN 126 // from: 124.1 127.0 132.0
  SAY #42445 /* ~Dak'konovy oči se rozevřely, ale poklonil se před tebou. Otočil se zpět ke staré ženě, ukázal jí Neporušený Kruh Zertimonu a řekl jí několik krátkých slabik. Střelila po tobě pohledem plným odporu, ale otočila se zpět k Dak'konovi. Povytáhl svoji čepel; ona stála před ním, zírala mu do očí. A zastrčil svoji čepel zpět...~ */
  IF ~~ THEN REPLY #42446 /* ~"Počkej, Dak'kone. Necháme ji o samotě. Pojďme."~ */ GOTO 128
  IF ~~ THEN REPLY #42447 /* ~"Raději ji bodni, Dak'kone. Říkal jsem ti, abys ji zabil."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ JOURNAL #67287 /* ~Nakázal jsem Dak'konovi, ať zabije nemocnou ženu githzerai, bezbolestně. Myslím, že to gesto ocenila, i když soucit asi ne.~ */ GOTO 129
  IF ~~ THEN REPLY #42448 /* ~Nech ho, aby ji zabil.~ */ JOURNAL #67287 /* ~Nakázal jsem Dak'konovi, ať zabije nemocnou ženu githzerai, bezbolestně. Myslím, že to gesto ocenila, i když soucit asi ne.~ */ GOTO 131
END

IF ~~ THEN BEGIN 127 // from: 124.2 125.0 125.1
  SAY #42449 /* ~"*Ví* že se už neuzdraví. Mohu ji zbavit jejího trápení. To je vše. Jako *zert* Lidstva, jí musím nabídnout tuto alternativu."~ */
  IF ~~ THEN REPLY #42450 /* ~"Pak to tedy udělej. Ale udělej to bezbolestně."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42451 /* ~"Pak se tedy smiluj, Dak'kone."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42452 /* ~"Nedělej to. Máme jinou práci."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 124.3 126.0 127.2 132.2
  SAY #42453 /* ~Dak'kon se na tebe upřímně podíval a pak, jakmile jsi odešel, se otočil ke githzeraiské ženě, aby se jí poklonil.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 126.1
  SAY #42454 /* ~Dak'kon se na tebe nepodíval, ale zabodl svoji *karašskou* čepel do jejího těla. Lehce povzdechla, a z jejích rtů vytekl tenký pramínek krve. Její oči se zamlžily, a síla vyprchala z jejích nohou. Sklouzla dozadu z meče, a padla jako zmuchlaná hromádka na zem.~ */
  IF ~~ THEN REPLY #42455 /* ~"Vypadněme odtud."~ */ DO ~AddexperienceParty(4000)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 130 // from: 127.1 132.1
  SAY #42456 /* ~Dak'kon vytáhl svoji čepel a počkal, až se žena připraví. Na chvíli se dotkla Neporušeného Kruhu Zertimonu, který nosil, a zatvářila se lhostejně. Jeho čepel se rozmazala, a když dokončil úder, ona zůstala zakrvácená ležet na kamenech Sigilských ulic.~ */
  IF ~~ THEN REPLY #42457 /* ~"Dobrý úder, Dak'kone. Pojďme."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ JOURNAL #67288 /* ~Dovolil jsem Dak'konovi pomoci ženě jeho lidu, nemocné githzerai, kerá se nadýchala příliš jedovatých výparů z Dolní Čtvrti. Zabil ji, ale vypadalo to, že ona smrt uvítala.~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from: 126.2
  SAY #42458 /* ~Na chvíli se dotkla Neporušeného Kruhu Zertimonu, který nosil, a zatvářila se lhostejně. Jeho čepel se rozmazala, a když dokončil úder, ona zůstala zakrvácená ležet na kamenech Sigilských ulic.~ */
  IF ~~ THEN REPLY #42459 /* ~"Pojďme, Dak'kone."~ */ DO ~AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #42460 /* ~"Její jméno je An'azi. Její choroba je zhoubná. Způsobuje její bolesti. Odolnost Lidí vůči špatnému vzduchu, který se sráží v této čtvrti, je slabší než u vás lidí. Já jsem *zert.* Je na mojí zodpovědnosti poskytnout určitou alternativu. Prosila mne, abych to tak udělal od té doby, co se k ní Lidé nepřibližují."~ */
  IF ~~ THEN REPLY #42461 /* ~"Pak to tedy udělej. Ale udělej to bezbolestně."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42462 /* ~"Pak se tedy smiluj, Dak'kone."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42463 /* ~"Nedělej to. Máme jinou práci."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 133 // from:
  SAY #43544 /* ~Než jsi ji oslovil, přerušil tě Dak'kon. "Měl bys mě vyslechnout."~ */
  IF ~~ THEN REPLY #43545 /* ~"Copak je, Dak'kone?"~ */ GOTO 134
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"Ne. Prosím tě, buď zticha."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"Ne. Prosím tě, buď zticha."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #43547 /* ~"Mé přání je nemluvit s touto ženou."~ */
  IF ~~ THEN REPLY #43548 /* ~"Pročpak?"~ */ GOTO 136
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43549 /* ~"Slyším tě. Přesto si s ní popovídám."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43550 /* ~"Slyším tě. Přesto si s ní popovídám."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"Tak s ní nemluv."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43552 /* ~"Tak s ní nemluv."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43553 /* ~"Jak myslíš. Jdeme pryč."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43553 /* ~"Jak myslíš. Jdeme pryč."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.5 134.6 136.2 136.3
  SAY #43554 /* ~"Získal sis mou vděčnost."~ */
  IF ~~ THEN REPLY #43555 /* ~"Už na to nemysli."~ */ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.0
  SAY #43556 /* ~"Ona je *zerth.* Naše duše jsou jak zkřížené čepele. Navzájem se nesneseme."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Zaznamenal jsem to. Přesto si s ní popovídám."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43558 /* ~"Tak s ní nemluv."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43559 /* ~"Jak myslíš. Jdeme pryč."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43559 /* ~"Jak myslíš. Jdeme pryč."~ */ GOTO 135
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"Tak s ní nemluv."~ */ EXTERN ~DKIINA~ 30
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Zaznamenal jsem to. Přesto si s ní popovídám."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 137 // from:
  SAY #43560 /* ~"To..." Dak'konův hlas zakolísal "Není mým přáním udělat to."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #43561 /* ~"Dak'kone, tohle je rozkaz a ty jsi můj otrok."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43562 /* ~"Udělej to, Dak'kone."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43563 /* ~"Jak myslíš. Ale nezapomeň, že ona je na nesprávné straně."~ */ EXTERN ~DKIINA~ 34
END

IF ~~ THEN BEGIN 138 // from:
  SAY #43564 /* ~Dak'konova čepel hladce projela ženou a ta se ve vodopádu krve zhroutila k zemi. Krev na ostří čepele divoce vře, náhle se však vypařuje a zanechává po sobě černé skvrny.~ */
  IF ~~ THEN REPLY #43565 /* ~"Můžeme jít."~ */ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #43566 /* ~Dak'kon si povzdechl. "V průběhu stovek let nebylo ničeho, co by mohlo ocenit vlídné slovo. Příčiny jsou tak zamotané, jak samotné kořeny Fri'hi a rozřešení toho je stále v nedohlednu; nemusí však vůbec přijít. Nebuď na mě tak hrubá."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 140 // from:
  SAY #43567 /* ~Dak'kon nervózně pokročil. "Nemohu ho přinutit, aby něco řekl. Opravdu si přeji, aby to dokázal... však jeho život je jen v jeho rukou."~ */
  IF ~~ THEN REPLY #43568 /* ~"Skupinka githyanki plánuje útok na pevnost dříve, než uběhne další sedmidenní. Už se na to chystají."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
~ EXTERN ~DKIINA~ 37
  IF ~~ THEN REPLY #43569 /* ~"To ti nepovím."~ */ EXTERN ~DKIINA~ 40
END

IF ~~ THEN BEGIN 141 // from:
  SAY #43570 /* ~"Nejsou to slova Zerthimona, která nevyjádří usvědčení. Byla zcela překroucena."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 44
END

IF ~~ THEN BEGIN 142 // from:
  SAY #43571 /* ~"Tvá slova nevychází z duše Zerthimona. Jsou špatná a plná nenávisti, jak kdyby vyšla z duše samotného Githa."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 45
END

IF ~~ THEN BEGIN 143 // from:
  SAY #43572 /* ~Jak kdyby vytušil tvé úmysly, mluví k tobě Dak'kon aniž by odtrhl zrak od Kii'ny. "Drž se stranou a nezkřiž cesty našich čepelí."~ */
  IF ~~ THEN REPLY #43573 /* ~"Dak'kone, říkám ti, nech toho!"~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43574 /* ~"Zapomeň na to, Dak'kone."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43575 /* ~Zaútoč na zertha přesto přese všechno.~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 46
  IF ~~ THEN REPLY #43576 /* ~Bojuj.~ */ EXTERN ~DKIINA~ 47
END

IF ~~ THEN BEGIN 144 // from:
  SAY #43577 /* ~"Tvá duše je odsouzena sloužit Githům, Kii'no."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43578 /* ~"Půjdeme, Dak'kone."~ */ EXTERN ~DMORTE~ 466
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43579 /* ~"Půjdeme, Dak'kone."~ */ EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 145 // from:
  SAY #43580 /* ~"Poslechneš lidská slova?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 49
END

IF ~~ THEN BEGIN 146 // from:
  SAY #43581 /* ~"On je mým společníkem na cestách, Kii'no, žákyně Zerthimona. Přišel za tebou vyslechnout slova Zerthimona, která mu ty, jako *zerth*, musíš sdělit. Vyslechneš ho?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 50
END

IF ~~ THEN BEGIN 147 // from:
  SAY #43582 /* ~"Uzavřeš svou mysl před jeho slovy? *Znáš* svá slova? Dříve než necháš mluvit svoji mysl, přemýšlej, Kii'no, *zerthe* Zerthimonův." ~ */
  IF ~~ THEN EXTERN ~DKIINA~ 51
END

IF ~~ THEN BEGIN 148 // from:
  SAY #43583 /* ~"To je plně postačující." Dak'kon se k tobě otočil a tvým jazykem pronesl. "Bude tvým učitelem."~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",1)
~ EXTERN ~DKIINA~ 52
END

IF ~~ THEN BEGIN 149 // from:
  SAY #44651 /* ~"Varuji tě před rozmluvou s tímto githyanki."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44652 /* ~"Co je to githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ JOURNAL #39453 /* ~Dak'kon mi vysvětlil rozdíl mezi githyanki a githzerai. Kdysi bývali jednou rasou, zotročenou krutými vládci mysli neboli illithidy, jak je nazývá - ale jakmile se uvolnili z kruté vlády svých pánů, rozdělili se na dva tábory. Od té doby je mezi nimi špatná krev.~ */ GOTO 150
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44653 /* ~"Proč?"~ */ GOTO 151
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #44654 /* ~"Githyanki a githzerai byli kdysi jedním druhem, jedním masem a jednou krví. Byli jsme otroky a potravou pro *illithidy*, kteří sdírají mysl. Živili se našimi životy, aby podpořili své vlastní. Jedna z našich předků, královna válečnice Gith, nás vedla do vítězného boje proti *illithidům* a my jsme pak mohli uprchnout. Od té doby vedeme nekonečnou válku s těmi, kteří sdírají mysl. O budoucnost našeho Lidu se ale strhla hádka. Ve Spálených Planinách náš vůdce Zerthimon vydal Prohlášení Dvou Nebí a ocel byla obnažena. Naše rasa se stala dvěma. Je to trhlina, jež mírumilovně překročena být nemůže."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44655 /* ~"Stejně si s ním promluvím."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44656 /* ~"Stejně si s ním promluvím."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 153
  IF ~~ THEN REPLY #44657 /* ~"Tak se na to vykašleme. Pojďme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 149.1
  SAY #44658 /* ~"*Věz*, že jsou to zapřisáhlí nepřátelé Lidu. Pokud se podělíme o slova, bude obnažena ocel."~ */
  IF ~~ THEN REPLY #44659 /* ~"Stejně si s ním promluvím."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~~ THEN REPLY #44660 /* ~"Tak se na to vykašleme. Pojďme."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 48
END

IF ~~ THEN BEGIN 152 // from: 150.0 151.0
  SAY #44661 /* ~Dak'kon přikývl.~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 47
END

IF ~~ THEN BEGIN 153 // from: 150.1
  SAY #44662 /* ~Dak'kon přikývl.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 474
END

IF ~~ THEN BEGIN 154 // from:
  SAY #44663 /* ~Dak'kon také vytasil svou zbraň. "Yi'minne. Tvá krev zanechá stopy na kamenech této ulice."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44664 /* ~Postav se mezi ně: "Dost!"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44665 /* ~Postav se mezi ně: "Dost!"~ */ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44666 /* ~Zaútoč na githyanki.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44667 /* ~Zaútoč na githyanki.~ */ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44668 /* ~Nechej je bojovat.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44669 /* ~Nechej je bojovat.~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 155 // from: 154.0 154.1
  SAY #44670 /* ~Dak'kon k tobě promluvil, ale stále pozorně sleduje svého protivníka. "Ustup. Nepřekážej našim zbraním."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #44671 /* ~"Nerozkazuj mi, Dak'kone, nebo ti přikážu, aby ses zabil."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DYI'MINN~ 50
  IF ~~ THEN REPLY #44672 /* ~"Nech toho, Dak'kone."~ */ GOTO 156
  IF ~~ THEN REPLY #44673 /* ~"Tak pokračuj."~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 156 // from: 155.1
  SAY #44674 /* ~Dak'kon promluvil na githyanki: "Yi'minne, toto není místo pro bitvu."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 54
END

IF ~~ THEN BEGIN 157 // from:
  SAY #44675 /* ~"Já *znám* zrádnost githyanki. Budu jeho stínem v tomto případě."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 57
END

IF ~~ THEN BEGIN 158 // from:
  SAY #44676 /* ~"Stíny nemohou zemřít, dokud nepadne ten, kdo je vrhá. A tak cestuji beze strachu."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 58
END

IF ~~ THEN BEGIN 159 // from:
  SAY #44692 /* ~Dak'kon tasil. "Tento den se setkáš se svými předky, githyanki."~ */
  IF ~~ THEN REPLY #44693 /* ~"Nechte toho!"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 9
  IF ~~ THEN REPLY #44694 /* ~Nechej je bojovat.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 10
END

IF ~~ THEN BEGIN 160 // from:
  SAY #45362 /* ~"Tento je počítaný mezi důvěryhodné." Uklání se. "Je má vůle, abys *věděl*, že tento člověk cestuje se mnou. Budeš mu naslouchat ?"~ */
  IF ~  GlobalLT("Vristigor","GLOBAL",2)
~ THEN REPLY #45363 /* ~"Prostě bych měl pár otázek..."~ */ EXTERN ~DHAILCII~ 28
  IF ~  Global("Vristigor","GLOBAL",2)
~ THEN REPLY #45364 /* ~"Prostě bych měl pár otázek..."~ */ EXTERN ~DHAILCII~ 44
END

IF ~~ THEN BEGIN 161 // from:
  SAY #45365 /* ~"Tvá otázka je přímá.  Je má vůle, abys *věděl*, že jdeme stejnou stezkou. Budeš mu naslouchat?"~ */
  IF ~~ THEN EXTERN ~DHAILCII~ 29
END

IF ~~ THEN BEGIN 162 // from:
  SAY #45366 /* ~"Je znamením úcty ptát se na někoho jizvy - ukazuje to na respekt k tvé historii."~ */
  IF ~~ THEN REPLY #45367 /* ~"Nevzpomínám si, jak jsem většinu z nich získal."~ */ EXTERN ~DHAILCII~ 33
  IF ~~ THEN REPLY #45368 /* ~"Jsou z tolika bitev, že příběh o nich by byl příliš dlouhý na povídání."~ */ EXTERN ~DHAILCII~ 36
  IF ~~ THEN REPLY #45369 /* ~"Jsou to jen jizvy. Měl bych ještě nějaké otázky..."~ */ EXTERN ~DHAILCII~ 34
END

IF ~~ THEN BEGIN 163 // from:
  SAY #45730 /* ~Dak'kon sevřel rty ještě více, ale nijak neodpověděl.~ */
  IF ~~ THEN REPLY #45731 /* ~"Nech toho, Morte. Potřebuju se tady zeptat na pár věcí."~ */ EXTERN ~DGILTSP~ 4
  IF ~~ THEN REPLY #45733 /* ~"Tak zkrátka odejdeme, ne?"~ */ EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #50168 /* ~"Říká, že je dabus."~ */
  IF ~~ THEN REPLY #50169 /* ~"Můžeš mu položit pár dalších otázek?"~ */ GOTO 165
  IF ~~ THEN REPLY #50211 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 165 // from: 164.0 166.0
  SAY #50170 /* ~Dak'kon přikývl.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50171 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50172 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50173 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50182 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50196 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50201 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50206 /* ~"Požádej ho, aby nám pověděl o Paní Bolesti."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50207 /* ~"Požádej ho, aby nám pověděl o Fellovi."~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50210 /* ~"Ne, nic. Pojďme pryč."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 166 // from:
  SAY #50189 /* ~"Říká, že se věnuje svým povinnostem."~ */
  IF ~~ THEN REPLY #50190 /* ~"Můžeš mu položit pár dalších otázek?"~ */ GOTO 165
  IF ~~ THEN REPLY #50191 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 167 // from:
  SAY #50706 /* ~Dak'kon mlčí a pak vyřkne slova ostrá jako meč. "Není to má *vůle* být otrokem této ženy."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #50707 /* ~"Ale nemáš moc na vybranou, že, otroku? Koupíš ho, Vrischiko?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50708 /* ~"To je moc zlé, Dak'kone. Koupíš ho, Vrischiko?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50709 /* ~"Tedy nebudeš. Měl bych jinou otázku, Vrischiko..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50710 /* ~"Dobrá... jdeme, Dak'kone."~ */ EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY #50711 /* ~"Nikdy bych si nepomyslel... " Jeho uhlové oči si chvíli prohlížely tvou tvář a pak sklouzly k zemi, jak kroutil hlavou.  "Je to krutá cesta, na kterou mě zavedla má ukvapená slova. Moje cesta... Dak'konova cesta..." V tichosti se od tebe odvrátil.~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 56
END

IF ~~ THEN BEGIN 169 // from:
  SAY #52538 /* ~"Pouze pokud to, co leží na druhé cestě, přináší větší bolest."~ */
  IF ~~ THEN REPLY #52539 /* ~"Ravel... tohle je velmi důležité. Nemáš ponětí, proč jsem tě o to požádal?"~ */ EXTERN ~DRAVEL~ 109
END

IF ~~ THEN BEGIN 170 // from:
  SAY #52540 /* ~Dak'kon je zticha, ale jeho meč se s Ravelinými slovy *změnil*... ostří zčernalo, zostřilo se, až *karach* sám jakoby kolem sebe nesl hrozivou zlovůli.~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52541 /* ~"Dej si pozor na pusu, Ravel..."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ EXTERN ~DRAVEL~ 33
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52542 /* ~"Dej si pozor na pusu, Ravel..."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ EXTERN ~DRAVEL~ 34
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52543 /* ~"Dej si pozor na pusu, Ravel..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52544 /* ~"Dej si pozor na pusu, Ravel..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52545 /* ~"Dej si pozor na pusu, Ravel..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52546 /* ~"Dej si pozor na pusu, Ravel..."~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 171 // from:
  SAY #52547 /* ~Dak'konův meč změnil barvu na hrozivou čerň, odráží jeho oči... a k tvému překvapení se ostří *karachu* rozpadlo na malinké ostré zuby.~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52548 /* ~"Ravel... nech ho být. *Já* odpovím na tvé otázky, ne oni."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ EXTERN ~DRAVEL~ 63
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52549 /* ~"Ravel... nech ho být. *Já* odpovím na tvé otázky, ne oni."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52550 /* ~"Ravel... nech ho být. *Já* odpovím na tvé otázky, ne oni."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52551 /* ~"Ravel... nech ho být. *Já* odpovím na tvé otázky, ne oni."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52552 /* ~"Ravel... nech ho být. *Já* odpovím na tvé otázky, ne oni."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52553 /* ~"Ravel... nech ho být. *Já* odpovím na tvé otázky, ne oni."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 172 // from:
  SAY #53990 /* ~"Tvá cesta je i mou."~ */
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53991 /* ~"Morte? Jsi připravený?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53992 /* ~"Morte? Jsi připravený?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53993 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53994 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53995 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #53997 /* ~Dak'kon vypadá zlomeně - jako by se každá jeho částečka chtěla vzbouřit, ale přikývl. "Tvá cesta je mou..." Jeho výraz se zhroutil. "Následuji tě, protože jenom tak mohu zemřít."~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53999 /* ~"To je vše, co chci... možná se ti to přání splní docela brzo. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("DMorte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54000 /* ~"To je vše, co chci... možná se ti to přání splní docela brzo. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54001 /* ~"Možná se ti to přání splní docela brzo. Dobrá tedy, podívejme se, co je na druhé straně toho portálu..."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54002 /* ~"Možná se ti to přání splní docela brzo. Dobrá tedy, podívejme se, co je na druhé straně toho portálu..."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54003 /* ~"Možná se ti to přání splní docela brzo. Dobrá tedy, podívejme se, co je na druhé straně toho portálu..."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #54004 /* ~Je to tak nenápadné, že jsi to skoro nepostřehl - Dak'konův meč se zableskl, čepel se ztupila. Když ses na něj podíval, ruce mu poklesly, jakoby se připravoval k bitvě.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 540
END

IF ~~ THEN BEGIN 175 // from:
  SAY #54007 /* ~"*Věz* že jsem kráčel tvou cestou mnohokrát." Dak'kon mluví pomalu, jakoby jeho mysl byla někde daleko, nebo si rozmýšlel každé slovo, jeho meč se zakalil do šeda. "Část tvé cesty je mi *známa*. Pět kráčelo po cestě do Pevnosti. Každý zemřel vlastní smrtí."~ */
  IF ~~ THEN REPLY #54008 /* ~"Ale... kdo to byl? Jak zemřeli?"~ */ GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #54009 /* ~"Já zemřel smrtí víry. Lebka zemřela smrtí odvahy. Žena zemřela smrtí zármutku. Slepý lučištník zemřel konečnou a nejmilosrdnější smrtí, smrtí těla. Ty... ty jsi zemřel smrtí paměti."~ */
  IF ~~ THEN REPLY #54010 /* ~"Ale... kdo byli ti lidé?"~ */ EXTERN ~DMORTE~ 566
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54011 /* ~"Byl to ten, kdo *znal* své cíle bez toho, že by je viděl. Mnoho stínů padlo v jeho dešti šípů."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 567
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54012 /* ~"Byla tam tma a každý stín byl Shra'kt'lor." Dak'konův hlas přešel do šepotu, jeho mrtvé černé oči zírají na něco za tebou. "Jsou to zmučená stvoření. Zranění tvého ducha jsou jim *známa*. Zaútočí na tebe skrze tato zranění."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 568
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54013 /* ~"Stíny *trpí*. *Znají* muka. *Znají*, jak mučit tě tím, co zraní tvé srdce. Když se jím postavíš, *věz*, že stojíš proti něčemu, co tě již jednou zabilo."~ */
  IF ~~ THEN REPLY #54014 /* ~"Dak'kone... Morte, ty a já jsme přežili. Co se stalo lučištníkovi a Deionaře?"~ */ GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #54015 /* ~"Lučištník zemřel smrtí těla. Žena zemřela smrtí ducha. Nemohl jsem zachránit ženu, protože nebylo tvou VŮLÍ aby byla zachráněna. Její hrob nebyl zalit slzami. Nikdo *nevěděl*, že má oplakávat její odchod."~ */
  IF ~~ THEN REPLY #54016 /* ~"Ale... proč jsem nechtěl, aby byla zachráněna?"~ */ GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #54018 /* ~"Tvá vůle byla *známa* jenom tobě."~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54019 /* ~"Dobře; hele, vy dva: Potřebuju vědět vše, co mi o Pevnosti dokážete říct..."~ */ EXTERN ~DMORTE~ 569
  IF ~  !InParty("Morte")
~ THEN REPLY #54020 /* ~"Dobře; hele, vy dva: Potřebuju vědět vše, co mi o Pevnosti dokážete říct..."~ */ EXTERN ~DMORTE~ 570
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54021 /* ~"Nic tam nežije. Stěny jsou temnota."~ */
  IF ~~ THEN REPLY #54022 /* ~"Dobře - než projdu tím portálem - je tady JEŠTĚ NĚCO, co by mi mohlo POMOCT?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",2)
~ EXTERN ~DMORTE~ 553
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54084 /* ~Dak'kon, zírající do dálky, tiše promluvil. "Je to jako chytat vodu do dlaní."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 519
END

IF ~~ THEN BEGIN 184 // from:
  SAY #54085 /* ~Dak'kon k tobě tiše promlouvá: "Pilíř lebek je sloup z oživlých hlav, patřících těm, kteří lhali *vědouc*, že jejich lži povedou k cizí smrti. Mohou ti zodpovědět mnoho otázek, protože toho hodně *znají*, ale jako odměnu očekávají vysokou platbu. Neměl bys mu dávat takové otázky."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 185 // from:
  SAY #54773 /* ~"Ty řetězy ho nedrží. Poutá ho víra..."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Devo, mám pro tebe otázky..."~ */ EXTERN ~DTRIAS~ 8
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Devo, mám pro tebe otázky..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 186 // from:
  SAY #57128 /* ~"Je to pravý zrádce githzerai. Proklel náš lid." Dak'kon vytáhl meč. "To je dostatečný důvod, aby zemřel."~ */
  IF ~~ THEN REPLY #57129 /* ~"Odlož meč, Dak'kone."~ */ EXTERN ~DBURGHER~ 2
  IF ~~ THEN REPLY #57130 /* ~"Tak ho zabij."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 3
END

IF ~~ THEN BEGIN 187 // from:
  SAY #57131 /* ~"Nemůžeš mu věřit. Nech ho zde, ať zemře pod vozem."~ */
  IF ~~ THEN REPLY #57132 /* ~"Ne, Dak'kone, vytáhneme ho ven."~ */ EXTERN ~DBURGHER~ 5
  IF ~~ THEN REPLY #57133 /* ~"Dobrá. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #57134 /* ~"Je to pravý zrádce githzerai. Proklel náš lid." Dak'kon vytáhl meč. "To je dostatečný důvod, aby zemřel."~ */
  IF ~~ THEN REPLY #57135 /* ~"Odlož meč, Dak'kone."~ */ EXTERN ~DBURGHER~ 13
  IF ~~ THEN REPLY #57136 /* ~"Tak ho zabij."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 14
END

IF ~~ THEN BEGIN 189 // from:
  SAY #57137 /* ~"Nemůžeš mu věřit. Nech ho zde, ať zemře pod vozem."~ */
  IF ~~ THEN REPLY #57138 /* ~"Ne, Dak'kone, vytáhneme ho ven."~ */ EXTERN ~DBURGHER~ 16
  IF ~~ THEN REPLY #57139 /* ~"Dobrá. Pojďme."~ */ EXTERN ~DBURGHER~ 17
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",14)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 190 // from:
  SAY #59167 /* ~Dak'kon se k tobě o obrátí, oči jako žhavé uhlíky. Na čepeli jeho zbraně pobíhají odlesky, povrch kovu se přelévá jako olejová skvrna na vodě. Když Dak'kon promluví, jeho hlas je vyrovnaný a silný... není v něm ani stopy po skřípavosti, kterou jsi slyšel dříve. "Jaká je tvá vůle?"~ [DAK205] */
  IF ~~ THEN REPLY #59168 /* ~"Jsou věci, které bych chtěl *vědět,* Dak'kone..."~ */ GOTO 193
  IF ~~ THEN REPLY #59169 /* ~"Zrovna si nic nepřeji, Dak'kone. Pojďme."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
GlobalLT("BD_DAKKON_MORALE","GLOBAL",15)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 191 // from:
  SAY #59170 /* ~Dak'kon se k tobě o obrátí, oči jako žhavé uhlíky; když jej oslovíš, na jeho čepeli se mihne odraz jeho očí, pokývne hlavou. "Jaká je tvá vůle?"~ [DAK205] */
  IF ~~ THEN REPLY #59171 /* ~"Jsou věci, které bych chtěl *vědět,* Dak'kone..."~ */ GOTO 193
  IF ~~ THEN REPLY #59172 /* ~"Zrovna si nic nepřeji, Dak'kone. Pojďme."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 192 // from:
  SAY #59173 /* ~Dak'kon se pomalu otočí, oči jako dva černé a mrtvé kameny. Jeho tvář je zsinalá, čepel zbraně je zbarvená zaschlou krví. Když promluví, zní to *staře*... a nakřáple. "Jaká je tvá vůle?"~ [DAK205] */
  IF ~~ THEN REPLY #59174 /* ~"Jsou věci, které bych chtěl *vědět,* Dak'kone..."~ */ GOTO 193
  IF ~~ THEN REPLY #59175 /* ~"Zrovna si nic nepřeji, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 193 // from: 190.0 191.0 192.0 194.1 195.1 196.1 197.2 198.2 199.2 200.1 201.2 202.1 203.7 204.3 205.2 206.1 207.2 208.0 209.1 210.1 211.1 212.1 213.1 214.1 215.1 216.3 217.5 218.1 219.1 220.1 221.1 222.2 223.1 224.2 225.1 226.1 227.1 228.1 230.1 231.4 232.5 233.1 234.1 235.0 236.3 237.3 238.3 239.3 240.3 241.3 242.3 243.3 244.2 245.2 246.2 247.2 248.2 250.1 251.4 252.3 253.2 254.3 255.4 256.2 258.1 259.1 260.1 261.1 262.1 268.2 269.0 270.6 271.3 272.3 273.4 274.3 275.3 278.3 279.3 281.2 282.3 285.2 287.0 289.0 290.1 291.2 292.1 293.0 294.14 295.0 296.0 298.0 318.7 319.2 320.1 322.0 323.2 324.1 328.2 329.5 330.3 331.3 332.5 333.6 334.7 335.7 337.6 338.3 339.4 340.3 341.3 343.1 351.1 352.1 353.1 356.1 363.0
  SAY #59176 /* ~"Poslouchám tě."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59177 /* ~"Tvé vzezření... mi nic neříká. Co jsi?"~ */ GOTO 194
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59178 /* ~"Mám pár otázek ohledně githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59179 /* ~"Chtěl bych se zeptat ohledně našich cest..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #59180 /* ~"Můžu s tebou hovořit o tvém učení?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68257 /* ~"Můžeme si promluvit o tvém učení?"~ */ GOTO 366
  IF ~  GlobalGT("Ravel_Dakkon","GLOBAL",0)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59181 /* ~"Dak'kone... Ravel o tobě mluvila jako o otrokovi. Co tím myslela?"~ */ GOTO 352
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #59182 /* ~"Dak'kone, co je 'Shra'kt'lor?'"~ */ GOTO 260
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59183 /* ~"Dak'kone, pověz mi ještě jednou, jak jsem tě zachránil u Shra'kt'lor."~ */ GOTO 223
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59184 /* ~"Řekl jsi, že jsem ti dal Kruh Zerthimonův, Dak'kone?"~ */ GOTO 226
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59185 /* ~"Pověz mi o 'mně'... mé předchoní inkarnaci. Kdo to byl?"~ */ GOTO 210
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59186 /* ~"Jak se to stalo, že jsi mým dlužníkem, Dak'kone?"~ */ GOTO 217
  IF ~~ THEN REPLY #59187 /* ~"No nic, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #59188 /* ~"Githzerai."~ */
  IF ~~ THEN REPLY #59189 /* ~"Githzerai?"~ */ GOTO 195
  IF ~~ THEN REPLY #59190 /* ~"Jsou věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59191 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 195 // from: 194.0 255.0
  SAY #59192 /* ~"Githzerai je jedním z Lidu."~ */
  IF ~~ THEN REPLY #59193 /* ~"Jedním z lidu?"~ */ GOTO 196
  IF ~~ THEN REPLY #59194 /* ~"Jsou jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59195 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #59196 /* ~"Githzerai."~ */
  IF ~~ THEN REPLY #59197 /* ~"Ano, ale co jsou přesně zač, ti githzerai?"~ */ GOTO 197
  IF ~~ THEN REPLY #59198 /* ~"Tak.. dobrá. Jsou jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59199 /* ~"Rozumím, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #59200 /* ~Dak'kon nachvilku ztichne, pak promluví. "Naše historie ti nemusí být *známá*. To bychom dříve zemřeli stářím, než bych vypověděl jen zlomek z toho, co je minulostí našeho Lidu."~ */
  IF ~~ THEN REPLY #59201 /* ~"Nemusím vědět nic z minulosti... stačí mi vědět co je s nimi teď."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 198
  IF ~~ THEN REPLY #59202 /* ~"Měl bych nějaké další otázky o githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59203 /* ~"Jsou jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59204 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0 231.0 255.1
  SAY #59205 /* ~Dak'kon se na chvilku odmlčí. "Slyš tato slova a ber to jako odpověď: Jsme Lid, který má svůj domov v místech, které závisí na pohybu sféry Limbo." Obratně tasí svou zbraň z pouzdra na zádech a drží ji před sebou.~ */
  IF ~~ THEN REPLY #59206 /* ~Čekáš co se stane.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 199
  IF ~~ THEN REPLY #59207 /* ~"No nic. Měl bych nějaké další otázky o githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59208 /* ~"Vlastně jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59209 /* ~"Dobrá Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #59210 /* ~"Tam tvoříme podstatu sféry Limbo ve svých myslích. Myšlenka je nám kladivem, kterým dokážeme vykovat a vybudovat celá naše města." Sleduješ jak pár vlnek kovu přeběhlo od středu k okraji čepele. Tvar a hloubka vlnek přímo kopíruje intonaci, s jakou Dak'kon hovoří. "V chaosu, ve němž žijeme, s vědomostmi, které nás chrání. My jsme githzerai."~ */
  IF ~~ THEN REPLY #59211 /* ~"Co je to za zbraň, co držíš... hýbe se a reaguje na tvůj hlas."~ */ GOTO 251
  IF ~~ THEN REPLY #59212 /* ~"No nic. Měl bych nějaké další otázky o githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59213 /* ~"Rozumím. Vlastně jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59214 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 232.0
  SAY #59215 /* ~"Je *známé* pod jménem 'Sigil'. Mezi Lidem je *známé* jako město, které samo o sobě *neví*."~ */
  IF ~~ THEN REPLY #59216 /* ~"Samo o sobě neví? Co tím myslíš?"~ */ GOTO 201
  IF ~~ THEN REPLY #59217 /* ~"Vlastně jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59218 /* ~"Rozumím, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #59219 /* ~"Město existuje, ale samo o své existenci *neví*. Tím, že o sobě neví, je jeho existence neúplná." ~ */
  IF ~~ THEN REPLY #59220 /* ~"Jak, neúplná?"~ */ GOTO 203
  IF ~~ THEN REPLY #59221 /* ~"Hovoříš, jako kdyby město bylo živé."~ */ GOTO 202
  IF ~~ THEN REPLY #59222 /* ~"Vlastně jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59223 /* ~"Rozumím, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.1 203.6
  SAY #59224 /* ~"Nemusí si být *vědomo* samo sebe ve smyslu, v jakém si uvědomuješ ty nebo já své bytí, avšak přesto žije. Roste, mění se a dotýká se myslí všech, kdož žijí uvnitř."~ */
  IF ~~ THEN REPLY #59225 /* ~"Proč jsi řekl, že město o sobě neví?"~ */ GOTO 203
  IF ~~ THEN REPLY #59226 /* ~"Vlastně jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59227 /* ~"Rozumím, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 201.0 202.0 236.1 237.1 238.1 239.1 240.1 241.1 242.1 243.1 244.0
  SAY #59228 /* ~"Město existuje v rozporu se sebou samým. Rozmístilo se po všech sférách a chce být všude najednou. Jeho zdi jsou dveřmi, a přece zůstávají zamčené. Taková existence vypovídá o věci, která si není *vědoma* sama sebe. A jelikož o sobě *neví*, je neúplné."~ */
  IF ~~ THEN REPLY #59229 /* ~"Když říkáš, že město je najednou na všech místech, co tím myslíš?"~ */ GOTO 236
  IF ~~ THEN REPLY #59230 /* ~"Jeho zdi jsou dveřmi?"~ */ GOTO 236
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59231 /* ~Pravda: "Co když město *není* neúplné? Jakékoliv věci nemusí být rozkazováno a přesto se dá předpokládat, že o sobě ví. Co když tyto rozporuplnosti jsou silami, které jen nevidíte?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59232 /* ~Pravda: "Co když město *není* neúplné? Jakékoliv věci nemusí být rozkazováno a přesto se dá předpokládat, že o sobě ví. Co když tyto rozporuplnosti jsou silami, které jen nevidíte?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59233 /* ~Pravda: "Co když město *není* neúplné a vy jen neznáte příčinu všech těch rozporů? Ve všem je řád. Možná, že jen neumíte číst mezi řádky.."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59234 /* ~Pravda: "Co když město *není* neúplné a vy jen neznáte příčinu všech těch rozporů? Ve všem je řád. Možná, že jen neumíte číst mezi řádky.."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~~ THEN REPLY #59235 /* ~"Hovoříš, jako kdyby město bylo živé."~ */ GOTO 202
  IF ~~ THEN REPLY #59236 /* ~"Vlastně jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59237 /* ~"Rozumím, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.2 203.3 203.4 203.5
  SAY #59238 /* ~"Na tvou otázku odpovím otázkou: Co když město je neúplné a jen ty vidíš rozpory všude okolo sebe?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #59239 /* ~Pravda: "Na *tvou* otázku zase otázka: Ty tvrdíš, že existence města je neúplná. Raději jsi to přijal, než abys prozkoumal možnost, že může existovat cosi vyššího. Vypadá to, že spíš ty jsi neúplný... a také, že nehledáš pravdu, ale jen vyhovující odpověď."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #59240 /* ~Pravda: "Na *tvou* otázku zase otázka: Ty tvrdíš, že existence města je neúplná. Raději jsi to přijal, než abys prozkoumal možnost, že může existovat cosi vyššího. Vypadá to, že spíš ty jsi neúplný... a také, že nehledáš pravdu, ale jen vyhovující odpověď."~ */ GOTO 205
  IF ~~ THEN REPLY #59241 /* ~"Když říkáš, že město je najednou na všech místech, co tím myslíš?"~ */ GOTO 236
  IF ~~ THEN REPLY #59242 /* ~"Vlastně jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59243 /* ~"Rozumím, pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0 204.1
  SAY #59244 /* ~Dak'kon ztichne. "Nikdo *nezná* odpověď na otázku, již jsme položili. I přesto město existuje. To je vše."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #59245 /* ~"A tak bych tvrdil, že o sobě *víme* na základě otázek, které jsme položili či nepoložili. Pokud však přestaneme klást otázky a akceptovat jen to, co chceme..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 206
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #59246 /* ~"A tak bych tvrdil, že o sobě *víme* na základě otázek, které jsme položili či nepoložili. Pokud však přestaneme klást otázky a akceptovat jen to, co chceme..."~ */ GOTO 206
  IF ~~ THEN REPLY #59247 /* ~"Velmi dobře. Ale jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59248 /* ~"No nic, půjdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 205.0 205.1
  SAY #59249 /* ~"Pak také přestaneme *vědět* o sobě samých." Dak'konův hlas se trochu změnil - je těžší. "Taková slova už byla dříve řečena. Už jsem je slyšel a *znám* je."~ */
  IF ~~ THEN REPLY #59250 /* ~"Kde jsi je slyšel?"~ */ GOTO 207
  IF ~~ THEN REPLY #59251 /* ~"Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59252 /* ~"No nic, půjdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY #59253 /* ~"Ta slova jsou má. Kdysi jsem je *znal* a *znal* jsem i jejich význam. Už jsem je zapomněl, dokud jsi nepromluvil ty." Dak'konův upřený pohled projde skrz tebe. Jeho čepel se přestane mihotat, barvy blednou, až je úplně průhledná. ~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59254 /* ~"Dak'kone, jak to, že znám tvá slova?"~ */ GOTO 208
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59255 /* ~"Dak'kone, slyšel jsem ta slova od tebe, když jsem s tebou cestoval?"~ */ GOTO 209
  IF ~~ THEN REPLY #59256 /* ~"Rozumím... jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59257 /* ~"No nic, půjdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY #59258 /* ~"Říkával jsem ta slova, ale mně nepatří. Jiní je mohou *znát*, protože *vědí*, že podstata těchto slov leží ve všech věcech. Lidé tomu říkají *moudrost*."~ */
  IF ~~ THEN REPLY #59259 /* ~"Velmi dobře. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59260 /* ~"Rozumím. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 207.1
  SAY #59261 /* ~"Mnoho bylo chvil, kdy jsme diskutovali nad významem těch slov. Tehdy nebyla tíha let taková, jako je teď. Mnoho jsem již zapomněl na své cestě."~ */
  IF ~~ THEN REPLY #59262 /* ~"Dak'kone, jaký jsem... to druhé já... byl?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 210
  IF ~~ THEN REPLY #59263 /* ~"Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59264 /* ~"Rozumím. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 193.9 209.0
  SAY #59265 /* ~Dak'konův pohled projde skrz tebe, zmlkne.~ */
  IF ~~ THEN REPLY #59266 /* ~"Dak'kone?"~ */ JOURNAL #59269 /* ~Dak'kon mi řekl, že mě znal v jedné z mých předchozích inkarnací... a  nic moc dobrého o ní nemohl říci. Nazval mé předchozí já schopným, ale egocentrickým a zrádným v jednání. S hrůzou si představuji, kolik zla napáchaly mé předchozí inkarnace po celých Sférách. ~ */ GOTO 211
  IF ~~ THEN REPLY #59267 /* ~"No nic. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59268 /* ~"Možná by bylo lepší už o tom nemluvit. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #59270 /* ~"*Věz*, že byl jiný. *Věz*, že rozdíl nebyl vyznačen na kůži, ani v zacházení se zbraní, ani v oděvu, který ho halil. *Věz*, že byl jiný ve způsobu myšlení a v činech, které podnikal na základě svých myšlenek. Jeho ÚMYSL se stal podstatou. *Věz*, že sledoval ostatní, ale NEVIDĚL je. *Věděl* jen, jak mu mohou sloužit. Jeho srdce bylo zrádné, chladné a sobecké."~ */
  IF ~~ THEN REPLY #59271 /* ~"Dotklo se tě to někdy, Dak'kone? Zradil tě?"~ */ GOTO 212
  IF ~~ THEN REPLY #59272 /* ~"Já... rozumím. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59273 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY #59274 /* ~Dak'konova zbraň začíná měnit barvu na nudnou, matnou čerň. Sleduješ, jak z okrajů raší další ostré hrany, jako zuby. Jeho tvář ztvrdne, cedí slova skrz zuby. "Není to mé *přání* a ty to *víš*."~ */
  IF ~~ THEN REPLY #59275 /* ~"*Pověz* mi, Dak'kone. *Zradil* tě někdy?"~ */ GOTO 213
  IF ~~ THEN REPLY #59276 /* ~"Dobrá. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59277 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY #59278 /* ~"*Věz*, že bylo MNOHO zrad. Jakákoliv zrada na mně byla vedena mou vlastní rukou. Nic jiného."~ */
  IF ~~ THEN REPLY #59279 /* ~"*Pověz* mi, Dak'kone. Jaká to byla zrada?"~ */ GOTO 214
  IF ~~ THEN REPLY #59280 /* ~"Dobrá. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59281 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #59282 /* ~"Podřídil jsem mu své SLOVO. Vzdal JSEM se mu."~ */
  IF ~~ THEN REPLY #59283 /* ~"O čem to mluvíš?"~ */ JOURNAL #59286 /* ~Dak'kon mi pověděl o původu svého otroctví... když jsem mu zachránil život, slíbil, že mi bude sloužit dokud nezemřu. Avšak nevěděl o možnosti, že bych mohl být nesmrtelný. Učinivše tak, odevzdal mi zbytek svého života.~ */ GOTO 215
  IF ~~ THEN REPLY #59284 /* ~"Dobrá. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59285 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 214.0 278.0 356.0
  SAY #59287 /* ~"Lid se nikdy nenechá jen tak zotročit. Když se v takové kleci ocitneme, jednáme tak, abychom se osvobodili, i za cenu toho, že musíme přečkat určitý čas v jiné kleci. Prokázal jsi mi obrovskou službu. Avšak tím jsi ze mne zároveň učinil otroka. Jednal jsem tak, abych se osvobodil. *Pamatuj*, že jsem se vzdal svého slova a svého já ve prospěch tvého jména až do tvé smrti."~ */
  IF ~~ THEN REPLY #59288 /* ~"Ale... Já přece nemůžu umřít."~ */ GOTO 216
  IF ~~ THEN REPLY #59289 /* ~"Rozumím. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59290 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #59291 /* ~"Tak to mi nebylo *známo*. Dal jsem své slovo. Vzdal jsem se. *Věz*, že už nemám nic, čeho bych se mohl vzdát, kromě svého života."~ */
  IF ~~ THEN REPLY #59292 /* ~"Co to bylo za službu, která tě... spoutala?"~ */ GOTO 217
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59293 /* ~"Dak'kone, nemusí to tak být... Mohu tě propustit. Již si nepřeji, abys byl déle otrokem - považuj ten dluh za splacený."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59294 /* ~"Dak'kone, nemusí to tak být... Mohu tě propustit. Již si nepřeji, abys byl déle otrokem - považuj ten dluh za splacený."~ */ GOTO 233
  IF ~~ THEN REPLY #59295 /* ~"Rozumím. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59296 /* ~"Takže toto jiné já si vynutilo od tebe slib, že mu budeš sloužit až do jeho smrti a tys nevěděl, že je *nesmrtelný*? Výborně, tak jdeme... otroku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59297 /* ~"Takže toto jiné já si vynutilo od tebe slib, že mu budeš sloužit až do jeho smrti a tys nevěděl, že je *nesmrtelný*? Výborně, tak jdeme... otroku."~ */ EXIT
  IF ~~ THEN REPLY #59298 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 193.10 216.0
  SAY #59299 /* ~"Zachránil jsi mi život. Na oplátku se stal tvůj život mým."~ */
  IF ~~ THEN REPLY #59300 /* ~"Jak jsem ti zachránil život?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 218
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59301 /* ~"Dak'kone, nemusí to tak být... Mohu tě propustit. Již si nepřeji, abys byl déle otrokem - považuj ten dluh za splacený."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59302 /* ~"Dak'kone, nemusí to tak být... Mohu tě propustit. Již si nepřeji, abys byl déle otrokem - považuj ten dluh za splacený."~ */ GOTO 233
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59303 /* ~"Takže toto jiné já si vynutilo od tebe slib, že mu budeš sloužit až do jeho smrti a tys nevěděl, že je *nesmrtelný*? Výborně, tak jdeme... otroku."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59304 /* ~"Takže toto jiné já si vynutilo od tebe slib, že mu budeš sloužit až do jeho smrti a tys nevěděl, že je *nesmrtelný*? Výborně, tak jdeme... otroku."~ */ EXIT
  IF ~~ THEN REPLY #59305 /* ~"Rozumím. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59306 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0 262.0 331.0
  SAY #59307 /* ~"Ve sféře Limbo formuje Lid města svými myšlenkami, aby stanovili nějaký řád. *Věz*, že tam není místo pro nejednotnou a rozpolcenou mysl." Dak'kon pozvedne zbraň ze svého ramene a drží ji před sebou. Jak na ni zírá, zbraň se pomalu zostřuje, až je tenká jako list papíru.~ */
  IF ~~ THEN REPLY #59308 /* ~"Pokračuj..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 219
  IF ~~ THEN REPLY #59309 /* ~"Myslím, že jsem slyšel dost. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59310 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #59311 /* ~"Nejednotná a rozpolcená mysl je taková, která není soustředěna. Nejednotná mysl boří zdi a narušuje kámen." Jak Dak'kon hovoří, ostří čepele lehce koroduje, kov taje podél okrajů. "Je-li mnoho myslí rozpolcených, může to *zničit* i město."~ */
  IF ~~ THEN REPLY #59312 /* ~"Tomu rozumím. Pokračuj..."~ */ GOTO 220
  IF ~~ THEN REPLY #59313 /* ~"Myslím, že jsem slyšel dost. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59315 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #59316 /* ~"Dlouho jsem *znal* slova Zerthimonova. Díky mému hlasu mnozí poznali slova Zerthimonova. *Zerth* ochraňuje společenství od veškerých hrozeb, ať už tělesných či duševních. Oni počali uvádět kameny v chaos. A tak se stalo, že jsem hlásal slovo Zerthimonovo, aniž bych ho *znal*. A tak se stalo, že jsem přestal *znát* i sama sebe."~ */
  IF ~~ THEN REPLY #59318 /* ~"Takže... jsi pochyboval o svých slovech?"~ */ GOTO 221
  IF ~~ THEN REPLY #59319 /* ~"Myslím, že jsem slyšel dost. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59320 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #59322 /* ~"Ne." Dak'konův hlas je ostrý, stejně tak jeho čepel se zároveň *zostřuje*. "*Znal* jsem ta slova. Nicméně mne napadlo, že jiní nechápou ta slova tak, jak je myslel Zerthimon. A tak se má mysl stala nejednotnou, rozpolcenou. Jak se z mé mysli staly dvě, a má mysl se stala nejednotnou, pak i mysl těch, kdož na mne shlíželi jako na toho, kdo zná cestu, se stala nejednotnou. Mnoho úspěchů pro githzeraie, mnoho stovek úspěchů pro githzeraie... pochyby. Shra'kt'lor toho dne zemřel."~ */
  IF ~~ THEN REPLY #59324 /* ~"Takže... ti, kteří tě následovali, také začali mít pochybnosti o slovech a město zesláblo."~ */ GOTO 222
  IF ~~ THEN REPLY #59325 /* ~"Myslím, že jsem slyšel dost. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59326 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #59330 /* ~"Přišli nepřátelé Zerthimona. *Věz*, že nenávist k jeho slovům a k Lidu propůjčila jejich zbraním sílu. *Věz*, že vycítili oslabené město a přinesli s sebou válku. Mnoho githzerai utonulo v chaosu a padlo pod čepelemi našich nepřátel." Malé krůpěje kovu se objevily na povrchu zbraně, jako by se na ní utvářely malé puchýřky. "*Věz*, že se to stalo již dávno."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59332 /* ~"Co se ti stalo?"~ */ GOTO 268
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59337 /* ~"Co se ti stalo?"~ */ GOTO 223
  IF ~~ THEN REPLY #59342 /* ~"Dobrá. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59344 /* ~"Popovídáme si o tom někdy jindy. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 193.7 222.1
  SAY #59347 /* ~"Jak jsem spadl ze zdí Shra'kt'loru, *věz*, že jsem byl všecek polámaný. Má čepel mlžná, má mysl rozdělená. Zmítal jsem se v mořích Limbo a přál si utonout. Umíral jsem celé dny, má mysl vydaná napospas rozdělení, když ke mně konečně přišla smrt. Nosila tvou podobu a měla tvůj hlas."~ */
  IF ~~ THEN REPLY #59348 /* ~"Mne?"~ */ GOTO 224
  IF ~~ THEN REPLY #59349 /* ~"Už jsem slyšel dost. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59351 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #59353 /* ~"Ptal ses, jestli tě slyším."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 344
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59355 /* ~"Co jsem řekl?"~ */ GOTO 227
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59357 /* ~"Nevadí. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59359 /* ~"Popovídáme si o tom někdy jindy. Tak jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 344.1 345.1 346.1 347.1 348.1 349.2 350.0
  SAY #59360 /* ~Dak'kon je potichu. "Slyšel jsem tvá slova. Zmatek v mé hlavě utichl. Opět jsem poznal sebe sama."~ */
  IF ~~ THEN REPLY #59361 /* ~"Takže ty jsi ode mne dostal Kruh?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~Vyšlo najevo, že jsem to byl *já*, kdo dal Dak'konovi Nerozřešený Kruh Zerthimona. ~ */ GOTO 226
  IF ~~ THEN REPLY #59362 /* ~"Velmi dobře. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59363 /* ~"Popovídáme si o tom někdy jindy. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 193.8 225.0 227.0
  SAY #59364 /* ~"Ano. Poznav slova, poznal jsem sebe."~ */
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59365 /* ~"Avšak *zachránilo* to tvůj život, Dak'kone? Anebo tě to rozdělilo dále, jak jsi studoval Kruh?"~ */ GOTO 228
  IF ~~ THEN REPLY #59366 /* ~"Velmi dobře. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59367 /* ~"To je vše, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 224.1
  SAY #59368 /* ~"Dak'kone, *zerthe* Shra'kt'lor-Drowning, poslední vládče ostří *karachu*, *věz*, že jsem přišel k tobě se slovy Zerthimona, nevyrytými v chaosu, ale v kameni, vyrytými pevnou vůli v Nerozřešeném Kruhu. *Věz*, že jsou pravdivá a věz, že tvá rozdělená mysl už nemusí být rozdělenou více. Vše co musíš udělat, je vzít kámen a *poznáš* opět sebe samého."~ */
  IF ~~ THEN REPLY #59369 /* ~"Takže ty jsi dostal Kruh ode *mne*?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~Vyšlo najevo, že jsem to byl *já*, kdo dal Dak'konovi Nerozřešený Kruh Zerthimona. ~ */ GOTO 226
  IF ~~ THEN REPLY #59370 /* ~"Rozumím. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59371 /* ~"To je vše, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 226.0
  SAY #59373 /* ~Dak'kon na chvíli ztichne, avšak jeho ostří se svíjí jako v křeči. Začíná pomalu hovořit, jeho hlas je temný. "Rozdělilo mne to."~ */
  IF ~~ THEN REPLY #59374 /* ~"Takže *zachránil* jsem ti život, Dak'kone? Anebo jsem přidal ještě  víc k bolesti, kterou jsi již cítil? Ta slova... ta slova Zerthimona, zdá se, že tě ještě více rozdělila."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 229
  IF ~~ THEN REPLY #59375 /* ~"To jsem si myslel. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59376 /* ~"Už o tom nebudeme více hovořit. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #59377 /* ~Dak'kon mlčí.~ */
  IF ~~ THEN REPLY #59378 /* ~"Říkám, že jsem tě NIKDY nezachránil, Dak'kone... Pouze jsem tě vyzvedl ze skoro-smrti, takže jsi mohl znovu zemřít. Kdybys býval zemřel u Shra'kt'loru, pak bys možná poznal mír a pokoj."~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #59379 /* ~"Tvá slova nesou váhu pravdy. Kdybych zemřel u Shra'kt'loru, byla by to moje poslední smrt. Každý den, který žiju, je pro mne jen novou smrtí."~ */
  IF ~~ THEN REPLY #59380 /* ~"Už mi nemusíš déle sloužit, Dak'kone. Nikdy jsem ti nezachránil život, jen jsem tě zabil dvakrát. Nic mi nedlužíš."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_2","GLOBALGood",3)
~ GOTO 233
  IF ~~ THEN REPLY #59381 /* ~"Tak to chodí. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59382 /* ~"Promluvíme si o tom později. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 193.1 197.1 198.1 199.1 245.1 246.1 247.1 248.1 250.0 251.3 252.2 253.1 254.2 255.3 256.1 270.5 271.2 272.2 273.3 274.2 275.2 278.2 279.2 281.1 282.2 285.1 343.0
  SAY #59383 /* ~Dak'kon čeká.~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59384 /* ~"Můžeš mi říci ještě jednou o lidu githzerai?"~ */ GOTO 198
  IF ~~ THEN REPLY #59385 /* ~"Zdá se, že ukládáš zvláštní důraz slovu *vědět*. Proč?"~ */ GOTO 245
  IF ~~ THEN REPLY #59386 /* ~"Co je to za zbraň, kterou máš?"~ */ GOTO 251
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59387 /* ~"Měl bych ještě nějaké otázky o jazyku githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59388 /* ~"Radši bych se zeptal na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59389 /* ~"No nic, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 193.2 236.2 237.2 238.2 239.2 240.2 241.2 242.2 243.2 244.1 258.0 259.0 328.1
  SAY #59390 /* ~Dak'kon čeká.~ */
  IF ~~ THEN REPLY #59391 /* ~"Co mi můžeš povědět o městě Sigil?"~ */ GOTO 200
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #59392 /* ~"Znáš chlápka, co se jmenuje Pharod?"~ */ GOTO 258
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #59393 /* ~"Ztratil jsem deník. Nevíš, kde by mohl být?"~ */ GOTO 259
  IF ~  GlobalGT("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #59394 /* ~"Když Fell popisoval tetování na mé paži, řekl jsi, že znáš ty symboly."~ */ GOTO 328
  IF ~  GlobalGT("Dakkon_Old_Companions","GLOBAL",0)
~ THEN REPLY #59395 /* ~"Řekl jsi, že jsem kdysi cestoval s dalšími čtyřmi. Kdo byli ti ostatní?"~ */ GOTO 329
  IF ~~ THEN REPLY #59396 /* ~"Radši bych se zeptal na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59397 /* ~"No nic, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 216.1 216.2 217.1 217.2 230.0
  SAY #59398 /* ~"Ne..." Dak'konovo čelo se svraští v bolesti a jeho oči zírají skrz tebe. "Není to tvé slovo, které nese tu váhu a tvé slovo mne neosvobodí. Slovo, které mne svazuje, je mé vlastní. To utrpení je mé vlastní. Ve svém srdci *vím*, že pouta zůstanou. Slova je neuvolní."~ */
  IF ~~ THEN REPLY #59399 /* ~"Je nějaký způsob, jakým se můžeš osvobodit?"~ */ GOTO 234
  IF ~~ THEN REPLY #59400 /* ~"Tak nic. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59403 /* ~"Promluvíme si o tom někdy jindy - tato záležitost není ještě uzavřena. Pojďme."~ */ JOURNAL #59404 /* ~Dak'kon řekl, že jediný způsob, jak může být osvobozen od svého otroctví je ten, že já zemřu konečnou smrtí. Vůbec nevím, co s tím.~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #59406 /* ~"Musíš, zemřít svou konečnou a definitivní smrtí. Přesto tvá cesta není cesta smrti. V této záležitosti není více řešení."~ */
  IF ~~ THEN REPLY #59409 /* ~Slib: "Přísahám, že jedno najdu, Dak'kone. Najdu takové, které tě definitivně osvobodí."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_2","GLOBALLaw",3)
~ JOURNAL #59416 /* ~Přísahal jsem Dak'konovi, že najdu způsob, jak ho osvobodit z jeho nevolnictví. Vypadá to, že místo toho, aby to vzpružilo jeho ducha, spíše ho můj slib ještě více zdrtil.~ */ GOTO 235
  IF ~~ THEN REPLY #59412 /* ~"Rozumím. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59414 /* ~"Promluvíme si o tom někdy jindy - tato záležitost není ještě uzavřena. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #59425 /* ~Dak'konův hlas je chraplavý, jako kdyby náhle onemocněl. "*Věz*, že jsi přidal jen další slova k mým." Jeho výraz je bolestivý a pohledem se střetává s tvým. "Nyní jsi nás spoutal oba."~ */
  IF ~~ THEN REPLY #59426 /* ~"Rozumím. Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59428 /* ~"Promluvíme si o tom někdy jindy - tato záležitost není ještě uzavřena. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 203.0 203.1 204.2
  SAY #59430 /* ~"Město samo je postavené ze dveří. Tyto dveře vedou kamkoliv."~ */
  IF ~~ THEN REPLY #59432 /* ~"Kde jsou ty dveře?"~ */ GOTO 237
  IF ~~ THEN REPLY #59433 /* ~"Proč jsi řekl, že město je zase neúplné?"~ */ GOTO 203
  IF ~~ THEN REPLY #59435 /* ~"Měl bych nějaké otázky ke tvým cestám..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59437 /* ~"Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59439 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #59442 /* ~"Jsou všude uvnitř města..." Dak'kon se na chvilku odmlčí. "Říká se, že každý ohraničený prostor uvnitř Města známého jako Sigil jsou dveře, které vedou kamkoliv."~ */
  IF ~~ THEN REPLY #59445 /* ~"Nerozumím."~ */ GOTO 238
  IF ~~ THEN REPLY #59447 /* ~"Proč jsi řekl, že město je zase neúplné?"~ */ GOTO 203
  IF ~~ THEN REPLY #59450 /* ~"Měl bych pár otázek ohledně tvých cest..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59452 /* ~"Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59455 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #59456 /* ~"Představ si dveře od domova. Odstraň dveře. Zůstane rám. Prostor uvnitř rámu je stále dveřmi."~ */
  IF ~~ THEN REPLY #59457 /* ~"Ale je to jen... prázdný prostor."~ */ GOTO 239
  IF ~~ THEN REPLY #59459 /* ~"Proč jsi řekl, že město je zase neúplné?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"Měl bych nějaké otázky ke tvým cestám..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59463 /* ~"Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59465 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY #59466 /* ~"Mnohé jsou dveře, které nikdy neuvidíš. Můžeš jimi projít jako vzduchem a nebudeš vědět, k čemu jsou. Jsou uzavřeny tvému zraku a doteku."~ */
  IF ~~ THEN REPLY #59467 /* ~"A tyto neviditelné dveře jsou *všude* v Sigilu?"~ */ GOTO 240
  IF ~~ THEN REPLY #59469 /* ~"Proč jsi řekl, že město je zase neúplné?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"Měl bych nějaké otázky ke tvým cestám..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59472 /* ~"Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59474 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #59475 /* ~"Říká se, že každé ohraničené místo ve Městě známém jako Sigil je dveřmi. *Neví* se to jistě. Dveře se pohybují. Dveře se mění. Dveře mizí. Všechny jsou uzamčené."~ */
  IF ~~ THEN REPLY #59476 /* ~"Uzamčené?"~ */ GOTO 241
  IF ~~ THEN REPLY #59477 /* ~"Proč jsi řekl, že město je zase neúplné?"~ */ GOTO 203
  IF ~~ THEN REPLY #59478 /* ~"Měl bych nějaké otázky ke tvým cestám..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59479 /* ~"Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59480 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #59481 /* ~"Dveře zůstanou jako vzduch, dokud nemáš klíč, který je otevře. Když máš klíč, dveře se ti samy odhalí."~ */
  IF ~~ THEN REPLY #59482 /* ~"Jak poznáš, co je klíčem?"~ */ GOTO 242
  IF ~~ THEN REPLY #59483 /* ~"Proč jsi řekl, že město je zase neúplné?"~ */ GOTO 203
  IF ~~ THEN REPLY #59484 /* ~"Měl bych nějaké otázky ke tvým cestám..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59487 /* ~"Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59488 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 242 // from: 241.0
  SAY #59489 /* ~"Každé dveře mají jiný klíč. Některé jsou *známé*, některé jsou *neznámé*."~ */
  IF ~~ THEN REPLY #59491 /* ~"Jaké jsou ty klíče?"~ */ GOTO 243
  IF ~~ THEN REPLY #59492 /* ~"Proč jsi řekl, že město je zase neúplné?"~ */ GOTO 203
  IF ~~ THEN REPLY #59494 /* ~"Měl bych nějaké otázky ke tvým cestám..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59495 /* ~"Jsou tu i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59497 /* ~"Rozumím. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY #59498 /* ~"Existuje tolik klíčů, kolik je dveří. Klíče nejsou vždy věci z kovu. Klíčem může být zazvonění dvou mečů, kapka krve vytékající z úst mrtvého muže, vzpomínka na prožitou lásku, anebo zlá kletba vykřičená do nebes. Když klíč ke dveřím pasuje, dveře se samy objeví."~ */
  IF ~~ THEN REPLY #59500 /* ~"Vypadá to, že najít všechny ty dveře a klíče může být docela dřina."~ */ GOTO 244
  IF ~~ THEN REPLY #59501 /* ~"Proč říkáš že město je znovu vadné?"~ */ GOTO 203
  IF ~~ THEN REPLY #59503 /* ~"Mám výce otázek o mých cestách..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59504 /* ~"Jsou tady další věci které bych vědět..."~ */ GOTO 193
  IF ~~ THEN REPLY #59506 /* ~"Aha. Tak se rozjedem!"~ */ EXIT
END

IF ~~ THEN BEGIN 244 // from: 243.0
  SAY #59507 /* ~"Mnohý to zkusil, ale není to hotové. jak se to změní, dveře budou otevřeny. Nic, co je *známé*, nezůstane *známé* na věky."~ */
  IF ~~ THEN REPLY #59508 /* ~"Proč říkáš, že město je znovu v nepořádku?"~ */ GOTO 203
  IF ~~ THEN REPLY #59509 /* ~"Mám víc otázek o našich cestách..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59510 /* ~"Ještě bych potřeboval *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59511 /* ~"Aha. Tak to rozjedem!"~ */ EXIT
END

IF ~~ THEN BEGIN 245 // from: 231.1
  SAY #59512 /* ~"Všechny věci, struktura i hmota - jejich existence závisí na tom, jak *znají* sami sebe."~ */
  IF ~~ THEN REPLY #59513 /* ~"A když muž nezná sám sebe?"~ */ GOTO 246
  IF ~~ THEN REPLY #59514 /* ~"Aha. Mám další otázky o githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59517 /* ~"Chtěl bych vědět víc..."~ */ GOTO 193
  IF ~~ THEN REPLY #59518 /* ~"Aha. Tak já jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #59520 /* ~"Když mysl *nezná* sama sebe, je to špatné. Pokud je špatná mysl, je špatný i muž. Pokud je špatný muž, jsou špatné i jeho dotyky." Dak'kon se odmlčí. "Říká se, že ruce takového špatného člověka... tvoří zkázu."~ */
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #59521 /* ~"Znáš sám sebe?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 247
  IF ~~ THEN REPLY #59522 /* ~"Aha... Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59523 /* ~"Je tady pár dalších věcí, chtěl bych *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59524 /* ~"Aha. Tak jedem!"~ */ EXIT
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY #59525 /* ~Dak'kon je zticha. Jeho jako uhel černé oči ti připomínají chvíli, kdy ses s ním setkal poprvé. ~ */
  IF ~~ THEN REPLY #59528 /* ~"Ptám se znovu: Znáš sám sebe?"~ */ GOTO 248
  IF ~~ THEN REPLY #59529 /* ~"Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59531 /* ~"No nevadí. Jsou tady další věci, které bych chtěl vědět..."~ */ GOTO 193
  IF ~~ THEN REPLY #59532 /* ~"No, promluvíme si o tom někdy jindy. Jdeme!"~ */ EXIT
END

IF ~~ THEN BEGIN 248 // from: 247.0
  SAY #59534 /* ~Když Dak'kon začne znovu mluvit, jeho hlas se mění; jeho slova duní v ozvěně, jako když veliký kámen klesá do průrvy. Vypadá to, že jen násilím ze sebe souká jednotlivá písmena. "To není moje *vůle*, ty to *víš*."~ */
  IF ~~ THEN REPLY #59535 /* ~"Možná by byla dost dobrá tato fráze: Povídej mi."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 249
  IF ~~ THEN REPLY #59536 /* ~"Hmm, dobře. Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59538 /* ~"No výborně. No a já bych se ještě chtěl zeptat..."~ */ GOTO 193
  IF ~~ THEN REPLY #59539 /* ~"Aha. Tak teda jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #59541 /* ~Dak'kon ze sebe souká slova opravdu pomalu, jako když je něčím obtěžkán. "To... je to těžké... *Neznám* se."~ */
  IF ~~ THEN REPLY #59543 /* ~"Proč?"~ */ GOTO 250
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #59545 /* ~Dak'konova slova skoro zanikají v šepotu. "Ne že bych *věděl* proč. *Vím*, že se to stalo, ale mému *vědění* uniká kdy a kde... a víc o sobě ne*vím*."~ */
  IF ~~ THEN REPLY #59546 /* ~"Aha... Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59548 /* ~"No nevadí. Jsou zde ještě další věci, které bych chtěl vědět..."~ */ GOTO 193
  IF ~~ THEN REPLY #59550 /* ~"Můžeme si o tom promluvit někdy jindy. Jdeme!"~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 199.0 231.2
  SAY #59551 /* ~"To je čepel *karach.* Tato věc dokáže ovládat řadu jiných *vědění*."~ */
  IF ~~ THEN REPLY #59552 /* ~*"Karach?* Co to je?"~ */ GOTO 254
  IF ~~ THEN REPLY #59554 /* ~"Je to udělané z podivného kovu... je téměř hypnotické putovat po něm prsty."~ */ GOTO 254
  IF ~~ THEN REPLY #59555 /* ~"To, co šik dělá, je zaznamenáno?"~ */ GOTO 252
  IF ~~ THEN REPLY #59556 /* ~"Mám pár dalších otázek okolo githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59557 /* ~"Aha. Jsou tady další věci, které bych chtěl vědět..."~ */ GOTO 193
  IF ~~ THEN REPLY #59559 /* ~"Můžem si o tom promluvit jindy. A teď jdeme!"~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 251.2 256.0
  SAY #59561 /* ~"Čepel je symbol *vědění* *zerth.* *Zerth* je jeden z těch, jenž znají slova Zerthimonu. Když *znáš* slova Zerthimonu, *znáš* sám sebe."~ */
  IF ~~ THEN REPLY #59563 /* ~"Zerthimon?"~ */ GOTO 253
  IF ~~ THEN REPLY #59564 /* ~"Ještě jednou - z čeho je ta čepel?"~ */ GOTO 254
  IF ~~ THEN REPLY #59565 /* ~"Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59566 /* ~"Aha. Jsou tady další věci, které bych chtěl vědět..."~ */ GOTO 193
  IF ~~ THEN REPLY #59567 /* ~"Můžeme si o tom promluvit jindy. Teď jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #59569 /* ~"Zerthimon objevil náš závod. On *věděl* o githzerai před nimi, *věděl* to. Definoval Lid. Dal jim jednu mysl."~ */
  IF ~~ THEN REPLY #59570 /* ~"Ještě jednou - z čeho je ta čepel?"~ */ GOTO 254
  IF ~~ THEN REPLY #59571 /* ~"Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59572 /* ~"Aha. Jsou tady další věci, které bych chtěl vědět..."~ */ GOTO 193
  IF ~~ THEN REPLY #59573 /* ~"Můžeme si o tom promluvit jindy. Jdeme..."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 251.0 251.1 252.1 253.0
  SAY #59575 /* ~Dak'kon je na chviličku zticha, jako když nemůže nalézt správná slova. "Ve tvém jazyce by to bylo doslovně přeloženo jako 'hmota chaosu.' Lid má ve svém jazyce pravé vyjádření tohoto slova."~ */
  IF ~~ THEN REPLY #59576 /* ~"'Lidé?'"~ */ GOTO 255
  IF ~~ THEN REPLY #59577 /* ~"Pohybují se se svým jazykem?"~ */ GOTO 256
  IF ~~ THEN REPLY #59579 /* ~"Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59580 /* ~"Aha... Chtěl bych mít víc informací..."~ */ GOTO 193
  IF ~~ THEN REPLY #59581 /* ~"Můžeme si o tom promluvit jindy. Jdem!"~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 254.0
  SAY #59583 /* ~"Githzerai."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59584 /* ~"Co je to githzerai?"~ */ GOTO 195
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59586 /* ~"Hele, znovu - co jsou to githzerai?"~ */ GOTO 198
  IF ~~ THEN REPLY #59587 /* ~"A ty říkáš že githzerai může vytvořit *karach*... ze svých myšlenek?"~ */ GOTO 256
  IF ~~ THEN REPLY #59589 /* ~"Mám na tvé lidi další otázky..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59591 /* ~"Aha. Jsou tady další věci, které bych chtěl vědět..."~ */ GOTO 193
  IF ~~ THEN REPLY #59593 /* ~"Tak to je asi vše. Půjdu."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 254.1 255.2
  SAY #59594 /* ~*"Karach* není stvořený horkem, *zná* se to. je to zrcadlo, které odráží vůli ovládat její povrch i hrany. Pokud to *zná* sebe, čepel je silná - pevnější a silnější než ocel. Když to o sobě *neví*, je to jako voda - slabé a beztvaré."~ */
  IF ~~ THEN REPLY #59596 /* ~"Co zaznamenal šik o čepeli?"~ */ GOTO 252
  IF ~~ THEN REPLY #59597 /* ~"Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59598 /* ~"Aha. Jsou tady další věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59600 /* ~"No to je všechno. Jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 318.2
  SAY #59602 /* ~"Moje *vědění* v ohledu umění je značně omezené." Motá ze svou čepelí v kruzích před sebou. "Ale já *vím* hodně. Budu tě učit o cestách této věci."~ */
  IF ~~ THEN REPLY #59604 /* ~"No výborně..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 258 // from: 232.1
  SAY #59607 /* ~"Nevím, že bych ho někdy viděl."~ */
  IF ~~ THEN REPLY #59608 /* ~"Mám další otázky o tvých cestách..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59613 /* ~"Aha. Jsou tady další věci, které bych chtěl vědět..."~ */ GOTO 193
  IF ~~ THEN REPLY #59614 /* ~"Tak to je všechno. Já jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 232.2
  SAY #59615 /* ~"Nemám ponětí, kde by se taková věc nalézala."~ */
  IF ~~ THEN REPLY #59616 /* ~"Mám další otázky na tvé cesty..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59617 /* ~"Hmm... Rád bych se dozvěděl ještě..."~ */ GOTO 193
  IF ~~ THEN REPLY #59618 /* ~"Tak to je všechno. Já hejbnu svým pozadím..."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 193.6
  SAY #59619 /* ~Dak'konovo čelo se svraští, jako by utržil ránu. "Nemůžu za to, že mluvíme o tom místě."~ */
  IF ~~ THEN REPLY #59620 /* ~"Dak'kone, *řekni* mi: Co je Shra'kt'lor?"~ */ GOTO 261
  IF ~~ THEN REPLY #59621 /* ~"To nevadí. Potřebuju se ale ještě zeptat..."~ */ GOTO 193
  IF ~~ THEN REPLY #59622 /* ~"Nemusíme o tom mluvit, kašlem na to. Já jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #59623 /* ~Dak'kon je na chvíli zticha. "*Znám* místo, kde jsem zemřel svou první smrtí."~ */
  IF ~~ THEN REPLY #59624 /* ~"Co je to za místo?"~ */ GOTO 262
  IF ~~ THEN REPLY #59625 /* ~"No jo, nevadí. Ještě potřebuju pár informací..."~ */ GOTO 193
  IF ~~ THEN REPLY #59626 /* ~"Můžeme si o tom promluvit jindy. Teď jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #59627 /* ~"To je jeden z velkých domovů Lidu, který vytrpěl mnoho ran ve svém životě. A na mých rukách ulpívá také vina."~ */
  IF ~~ THEN REPLY #59628 /* ~"Co tím myslíš?"~ */ GOTO 218
  IF ~~ THEN REPLY #59629 /* ~"No jo, nevadí. Ještě potřebuju pár informací..."~ */ GOTO 193
  IF ~~ THEN REPLY #59630 /* ~"Můžeme si o tom promluvit jindy. Teď jdu kráčet v dál..."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from:
  SAY #59631 /* ~DOČASNÝ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from:
  SAY #59632 /* ~DOČASNÝ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 265 // from:
  SAY #59633 /* ~DOČASNÝ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 266 // from:
  SAY #59634 /* ~DOČASNÝ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 267 // from: 268.0
  SAY #59636 /* ~Jak promlouvá, cítíš, že je pod silným citovým vlivem ze svých vzpomínek na minulost. Jeho vize jsou zamlžené... začíná zhluboka dýchat, aby se vše znormalizovalo. Z nějakého důvodu, cítíš cosi nepříjemného, jako by krajina okolo tebe tě měla každou chvíli rozmačkat.~ */
  IF ~~ THEN REPLY #59638 /* ~"Ehm... chceš se zabít, Dak'kone?"~ */ GOTO 269
END

IF ~~ THEN BEGIN 268 // from: 222.0
  SAY #59640 /* ~"Když jsem odpadl ze zdí Shra'kt'lora, mé *vědomí* bylo značně poškozené. Moje čepel byla zamlžena, moje mysl nejednotná a rozpolcená. Byl jsem vydán na pospas mořím Limba a přál sem si utopit se. Zemřel jsem ve dny, kdy se má mysl dostala až kamsi na úroveň hladiny vody."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59642 /* ~"Jak chceš přežít?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #59654 /* ~Když Dak'kon vyprávěl o Shra'kt'loru, na chviličku mě přepadla závrať. Z nějakého důvodu něco vím o tom místě... ale nevím co... ~ */ GOTO 267
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59647 /* ~"Čím posloužím?"~ */ GOTO 269
  IF ~~ THEN REPLY #59650 /* ~"Myslím, že jsem slyšel dost. Je tady pár dalších věcí, které chci *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59652 /* ~"Můžeme si o tom promluvit jindy. Teď jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 267.0 268.1
  SAY #59656 /* ~"Hodně jsem si vytrpěl. Byl jsem blízko smrti, začal jsem *znát* sám sebe. Ale přežil jsem. Toť vše."~ */
  IF ~~ THEN REPLY #59658 /* ~"Aha. Je tady víc věcí, jenž bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59660 /* ~"Nemusíme o tom už mluvit. Já odcházím."~ */ EXIT
END

IF ~~ THEN BEGIN 270 // from: 231.3 271.1 272.1 273.2 274.1 275.1 278.1 279.1 281.0 282.1 285.0
  SAY #59664 /* ~Dak'kon vyčkává. ~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #59666 /* ~"Můžeš mě učit o cestách, o kterých mluví tvoji lidé?"~ */ GOTO 342
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ THEN REPLY #59667 /* ~"Co je to 'T'chaova Volba?'"~ */ GOTO 271
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ THEN REPLY #59668 /* ~"Znovu - Co je to 'T'chaova Volba?'"~ */ GOTO 273
  IF ~  GlobalGT("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #59669 /* ~"Co je 'K'atzn'ii-u-Brány?'"~ */ GOTO 279
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #59672 /* ~"Co je 'Ach'ali utopená?'"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 282
  IF ~~ THEN REPLY #59675 /* ~"Vlastně, mám pár dalších otázek o githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59676 /* ~"Nevadí. je tady víc věcí, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59677 /* ~"Ehm, řeknem si to jindy. Já musím."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.1
  SAY #59678 /* ~Dak'konovo čelo se svraští a víčky zúží své oči. "Chci *znát*, jak přišel k výrazu *vědět*."~ */
  IF ~~ THEN REPLY #59679 /* ~"Mluvil jsi o tom, když sme potkali githzerai. Chci *vědět*, cos tím myslel."~ */ GOTO 272
  IF ~~ THEN REPLY #59680 /* ~"Napomeň na to. Mám pár dalších otázeček..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59681 /* ~"Ale, to nevadí. Mám pár dalších otázek okolo githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59682 /* ~"Nevadí. Je tady víc věcí, jenž chci *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59683 /* ~"Dovykládáme to jindy. Já odcházím."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 271.0
  SAY #59684 /* ~"Tím výrazem se toho může *myslet* víc."~ */
  IF ~~ THEN REPLY #59685 /* ~"Tak mi o tom něco pověz."~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ GOTO 273
  IF ~~ THEN REPLY #59686 /* ~"Mám pár dalších otázeček..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59687 /* ~"To nevadí.  Mám pár dalších otázek okolo githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59688 /* ~"No to nevadí. Ale ještě potřebuju *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59689 /* ~"Můžem o tom pokecat příště. Já totiž musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.2 272.0
  SAY #59690 /* ~"T'chaova volba mluví o jednom, který si nevolí nic z jejich akcí."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59691 /* ~"Kdykoli se tě zeptám na githzeraie, jenom neochotně odpovíš, protože nemáš na výběr? Proč?"~ */ GOTO 274
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59692 /* ~"Kdykoli se tě zeptám na githzeraie, jenom neochotně odpovíš, protože nemáš na výběr? To jako proto, že jsi můj služebník?"~ */ GOTO 275
  IF ~~ THEN REPLY #59693 /* ~"Mám pár dalších otázek..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59694 /* ~"To vůbec nevadí.  Mám další otázky na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59695 /* ~"Nu dobrá, je tu pár dalších věci, jenž bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59696 /* ~"To je vše. Jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY #59697 /* ~Vypadá to, jako by bylo ostří čepele opotřebované a tupé. Zašklebí se a procedí mezi zuby. "Nebyla to má vůle, že mluvíme zrovna o tomhle."~ */
  IF ~~ THEN REPLY #59698 /* ~"Chci tě slyšet o tom mluvit... ve skutečnosti, už si vyřkl hodně věcí, které jsou velmi zajímavé."~ */ GOTO 275
  IF ~~ THEN REPLY #59699 /* ~"Mám pár otázek. Dalších..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59700 /* ~"Hmm, nevadí.  Mám další dotazy na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59701 /* ~"Hmm... ještě bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59702 /* ~"Tak o tom nebudeme víc mluvit. Já utíkám."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 273.1 274.0
  SAY #59703 /* ~"*Při slově *vědět* se tvá *vůle* stává mou. Když mluvíš, *vědění* tě musí slyšet. *Vědění* ti ůže pomoct při "setkání" s čepelí."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59704 /* ~"Cože? Ale proboha proč?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 276
  IF ~~ THEN REPLY #59708 /* ~"Mám pár dalších otázeček..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59709 /* ~"Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59713 /* ~"Už o tom dál nemluvme. Radši něco jiného, ještě bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59714 /* ~"Už si to nepřeji víckrát slyšet. Jdu pryč."~ */ EXIT
END

IF ~~ THEN BEGIN 276 // from: 275.0
  SAY #59716 /* ~Dak'kon se jako by dívá skrz tebe, dívá se upřeně do míst, kde stojíš. "Tvá cesta je mou cestou. Jsem ti předurčený."~ */
  IF ~~ THEN REPLY #59718 /* ~"Jsi mým služebníkem?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #59720 /* ~U slova služebník se Dak'konova tvář stáhne v bolesti, jako by jsi ho býval udeřil... Jako by právě slovo pro něho bylo největší utrpení, největší muka. ~ */
  IF ~~ THEN REPLY #59721 /* ~"Ale... proč, Dak'kone?"~ */ GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #59723 /* ~"*Vědění*... to je dlohá historka, a slovo *vědět* nemá při konverzaci žádný vliv."~ */
  IF ~~ THEN REPLY #59725 /* ~"Chci to slyšet."~ */ JOURNAL #59286 /* ~Dak'kon mi pověděl o původu svého otroctví... když jsem mu zachránil život, slíbil, že mi bude sloužit dokud nezemřu. Avšak nevěděl o možnosti, že bych mohl být nesmrtelný. Učinivše tak, odevzdal mi zbytek svého života.~ */ GOTO 215
  IF ~~ THEN REPLY #59727 /* ~"Heh, nevadí... Mám pár dalších otázek..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59728 /* ~"Hmm, hmm...  Mám pár dalších otázek na githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59731 /* ~"No nevadí. je tady pár dalších věcí, jenž chci *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59732 /* ~"Už o tom nebudeme mluvit. Já jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 270.3
  SAY #59755 /* ~"No, tohle: když 'K'atzn'ii-at-the Gate' promlouvá, řekne ti, že se ptá, a ty s tou osobou mluvíš a tvoje otázky budou zodpovězeny."~ */
  IF ~~ THEN REPLY #59756 /* ~"Co tím myslíš? Kdo je 'K'atzn'ii?'"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 280
  IF ~~ THEN REPLY #59758 /* ~"Mám pár dalších otázek..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59759 /* ~"Aha.  Mám pár dalších otázek na githzerai..."~ */ GOTO 231
  IF ~~ THEN REPLY #59760 /* ~"Sqělý. Je tady několik dalších věcí, jenž potřebuji *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59763 /* ~"Rozumím. Jdu pryč."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.0
  SAY #59912 /* ~K'atzn'ii patřila k Lidem. Říká se, že byla jedna z těch, kteří *nerozumí* sami sobě. Ale místo aby hledala pravdu o sobě, rozhodla se že bude poznávat Lidi. Putovala mezi městy a u jejich bran pokládala Lidem otázky, kterými zkoumala jejich názory. Odpovědi jí umožnily poznat povahu Lidí, kteří žili za jejich zdmi.~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0
  SAY #59914 /* ~K'atzn'ii ale *netušila*, že otázky, na které se ptala, umožnily lidem *poznat* ji samotnou. Viděli do jejího srdce a *pochopili*,  že jí nepomohou tím, že ji pozvou mezi sebe. A tak zůstávala vždy jen u brány. Je to poučení o tom, že skrze naše otázky mohou být odhaleny i naše úmysly.~ */
  IF ~~ THEN REPLY #59915 /* ~"Mám ještě nějaké otázky ohledně jazyka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59916 /* ~"Vidím. Mám ještě nějaké otázky ohledně githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59917 /* ~"Dobrá. Chci se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59918 /* ~"Rozumím. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 270.4
  SAY #59919 /* ~"*Pamatuj*: když se řekne 'Utopená Ach'ali', znamená to, že odpověď na tvou otázku by neměla žádný smysl. Myslí se tím, že otázka by měla být přesnější a určitější."~ */
  IF ~~ THEN REPLY #59920 /* ~"Kdo byla Ach'ali?"~ */ GOTO 283
  IF ~~ THEN REPLY #59921 /* ~"Mám ještě nějaké otázky ohledně jazyka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59922 /* ~"Vidím. Mám ještě nějaké otázky ohledně githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59923 /* ~"Dobrá. Chci se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59924 /* ~"Rozumím. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 283 // from: 282.0
  SAY #59925 /* ~"Na naší sféře Limbo musíme zemi utvářet našimi myšlenkami, jinak by nás chaos sféry pohltil. Ach'ali byla jedna z Lidí, která *nerozuměla* sama sobě. Její čas se naplnil, když se ztratila v chaotické a nestálé hmotě Sféry. Nevěděla jak se vrátit ke svému lidu. A tak si vytvořila malý ostrůvek ze svých myšlenek a čekala.~ */
  IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #59926 /* ~"A čekala. Jednou potkala cestovatele plovoucího přes moře sféry Limbo.  Zavolala na něj a chtěla se ho zeptat na cestu domů. Stačilo položit jen jedinou otázku : '*Víš* jak se dostanu domů?' Ale ona se zaptala : 'Co *víš* o této sféře?'"~ */
  IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285 // from: 284.0
  SAY #59927 /* ~Cestovatel toho *věděl* hodně a mnoho z toho co řekl, Ach'ali předtím nevěděla. Jejích otázek přibývalo, živené jeho odpověďmi, až zapomněla kde je a že se musí soustředit. Její malý ostrůvek se rozplynul a ona se utopila. Je to poučení o tom, že je nebezpečné ptát se jen tak, bez nějakého záměru.~ */
  IF ~~ THEN REPLY #59928 /* ~"Mám ještě nějaké otázky ohledně jazyka..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59929 /* ~"Vidím. Mám ještě nějaké otázky ohledně githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59930 /* ~"Dobrá. Chci se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59931 /* ~"Rozumím. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 286 // from: 318.1
  SAY #59932 /* ~Čepel sklouzne Dak'konovi z ramene do ruky jako had a její ostří se nebezpečně leske. "Ocel bychom měli ukazovat bez zlosti. Měl by jsi se znovu naučit bojovat."~ */
  IF ~~ THEN REPLY #59933 /* ~"Dobrá..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
SetAnimState("Dakkon",ANIM_MIMESTANCETOSTAND)
~ GOTO 287
END

IF ~~ THEN BEGIN 287 // from: 286.0
  SAY #59934 /* ~Na konci lekce zjistíš, že jsi se do role bojovníka vžil snadno. Dak'kon si opře čepel o rameno. "Učíš se rychle. Až přijde válka, najde tě připraveného."~ */
  IF ~~ THEN REPLY #59935 /* ~"Dobrá. Chci se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59936 /* ~"V pořádku. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 318.3
  SAY #59937 /* ~Dak'kon povolil sevření své čepele a zakroužil s ní před sebou. "Učení bychom měli opakovat. Měl by jsi znovu *poznat* cesty, kterými se ubírá Umění."~ */
  IF ~~ THEN REPLY #59938 /* ~"Dobrá..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 257.0 288.0
  SAY #59939 /* ~Na konci lekce zjistíš, že jsi se do role mága vžil snadno. Dak'kon přikývne. "Učíš se rychle. Teď jsi připraven postavit svou vůli proti nepřátelům."~ */
  IF ~~ THEN REPLY #59940 /* ~"Dobrá. Chci se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59941 /* ~"Dobře. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 318.4
  SAY #59942 /* ~"*Pochop*, že názory Lidí se liší od toho Umění, které *znáš* ty. Není to energie co dává sílu. *Pochopení* sebe sama dává sílu. A takovými věcmi se zabývá Zerthimonovo učení."~ */
  IF ~~ THEN REPLY #59943 /* ~"Dak'kone, chtěl by jsi být mým průvodcem Zerthimonovým učením?"~ */ GOTO 291
  IF ~~ THEN REPLY #59944 /* ~"Dak'kone, chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59945 /* ~"Vidím. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #59946 /* ~"*Víš* vůbec, co po mně chceš?" Povrch Dak'konovy čepele se mění, až vypadá jako kámen. "Aby ses mohl vydat po Zerthimonově cestě, musíš toho o Lidech mnoho *znát*. A *pochopení* takových věcí není pro toho, kdo nepatří k Lidem, snadná záležitost. Existují cizinci, kteří o Zerthimonově učení slyšeli, ale *nechápou* ho."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59947 /* ~"Chci *poznat* Lidi, Dak'kone, a *porozumět* Zerthimonovu učení. Věřím, že je v něm skryta veliká moudrost."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon souhlasil s tím, že mě bude učit o Cestách Zerthimona. Otevřel pro mě Nerozřešené kruhy a vybídl mě studovat historii jeho Lidu.~ */ GOTO 293
  IF ~~ THEN REPLY #59948 /* ~"Když mě povedeš, budu se učit."~ */ GOTO 292
  IF ~~ THEN REPLY #59949 /* ~"Dak'kone, chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59950 /* ~"Nevadí. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.1
  SAY #59951 /* ~"Já vím, jak lidé poznávají 'Umění'. Učí se ho po částech ze svitků, kouzel a knih. Ale Zerthimonovo učení *není* o dělení. Nemůžeš se naučit jen část a nevšímat si celku." Dak'kon se na tebe mlčky podívá; a povrch jeho meče začne znovu mihotat. "*Pamatuj* si, že to vyžaduje soustředění. Když je tvá mysl rozdělená, když *nechápeš* smysl Cesty, tvá vůle je v troskách."~ */
  IF ~~ THEN REPLY #59952 /* ~"I přesto bych se chtěl učit."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon souhlasil s tím, že mě bude učit o Cestách Zerthimona. Otevřel pro mě Nerozřešené kruhy a vybídl mě studovat historii jeho Lidu.~ */ GOTO 293
  IF ~~ THEN REPLY #59953 /* ~"Dak'kone, chtěl bych se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59954 /* ~"Nevadí. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 291.0 292.0
  SAY #59955 /* ~"*Pamatuj*, že jsem slyšel tvá slova a že je podrobím zkoušce. Aby ses mohl učit, musíš *znát* Lidi. Abys *pochopil* Lidi, musíš *znát* Zerthimonův Nerozřešený Kruh." Dak'kon pozvedne kamenný kruh a jeho prsty se jako pavouci zaháknou po stranách. Ozve se *cvaknutí* a pláty Kruhu vklouznou do nových pozic. Pak opačným pohybem kámen zase spojí. "Zerthimonův První Kruh je ti k dispozici. Prostuduj jej; pak si o tom promluvíme."~ */
  IF ~~ THEN REPLY #59956 /* ~"První kruh si přečtu až později. Teď bych se chtěl zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59957 /* ~"Dobře. Až ho prozkoumám, dám ti vědět."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 318.6
  SAY #59958 /* ~"Co jsi *zjistil*?"~ */
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59959 /* ~"Síla vychází ze sebepoznání. Pochopil jsem, že ten kdo *nerozumí* sám sobě, je ztracený a stává se jen nástrojem v rukou ostatních."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",3)
GiveExperience(Protagonist,300)
~ JOURNAL #59743 /* ~Konečně jsem pochopil podstatu Prvního kruhu Zerthimonu, a tak to sem píšu; a jak to tak vypadá, cesta k Druhému kruhu je již otevřena. Myslím, že učení Nerozřešených kruhů spočívá v tom, naučit se ten předchozí, pak teprve bude otevřena stezka k dalšímu. Musím napřed porozumět tomu prvnímu.~ */ GOTO 296
  IF ~  Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59960 /* ~"Dozvěděl jsem se, že tvůj lid byl kdysi otrokem *illithidů*. *Illithidé* na něm zřejmě spáchali mnoho zločinů."~ */ JOURNAL #59742 /* ~No, nemůžu pořád pochopit, co je První Kruh z Nerozřešených kruhů Zerthimonu, Dak'kon mi o tom vyprávěl. Myslím si, že jsou to jenom pověry, ale na druhou stranu, proč by o tom pak kdosi tesal do kamene text... Abych to pochopil, budu to nejspíš muset sám zažít. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59961 /* ~"Dozvěděl jsem se, že samotnou *znalost* něčeho nemůžeš použít jako nějaký nástroj, tak jako třeba tělo nebo ocel. Až když se pokusíš *pochopit* podstatu té věci a jakým způsobem funguje."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",5)
GiveExperience(Protagonist,600)
GiveItemCreate("Circle02",Protagonist,1,0,0)
~ GOTO 297
  IF ~  Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59962 /* ~"Dozvěděl jsem se, že při boji proti *illithidům* se Zerthimon naučil používat ocel a pochopil, jak by se proti nim dala využít."~ */ JOURNAL #67782 /* ~Je jasné, že nerozumím tomu, co znamená další Kruh Nerozřešeného kruhu Zerthimona, alespoň mi to tak řekl Dak'kon. Myslím, že smysl slov leží mimo to, co je vyryto do kamene... možná budu muset do Zerthiomova učení přinést trochu vlastní moudrosti, abych porozuměl Cestě Zerthimona.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59963 /* ~"Vytrvej. A skrze utrpení získávej sílu."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",7)
GiveExperience(Protagonist,900)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 299
  IF ~  Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59964 /* ~"Pochopil jsem, že vůdce musí někdy trpět, aby mohl dosáhnout svých cílů."~ */ JOURNAL #67782 /* ~Je jasné, že nerozumím tomu, co znamená další Kruh Nerozřešeného kruhu Zerthimona, alespoň mi to tak řekl Dak'kon. Myslím, že smysl slov leží mimo to, co je vyryto do kamene... možná budu muset do Zerthiomova učení přinést trochu vlastní moudrosti, abych porozuměl Cestě Zerthimona.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59965 /* ~"Ten kdo se dívá pouze před sebe vidí jen část celku; vlastně je slepý. A stejně jako byl Vilquar zaslepen slíbenou odměnou, tak i *illithidé* si skutečného Povstání nevšimli. Když totiž slyšeli Vilquarova slova, zaměřili svou pozornost jinam a Povstání mohlo vypuknout."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",9)
GiveExperience(Protagonist,1500)
~ GOTO 303
  IF ~  Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59966 /* ~"Ten, kdo se nesnaží pochopit podstatu, klame sám sebe."~ */ JOURNAL #67782 /* ~Je jasné, že nerozumím tomu, co znamená další Kruh Nerozřešeného kruhu Zerthimona, alespoň mi to tak řekl Dak'kon. Myslím, že smysl slov leží mimo to, co je vyryto do kamene... možná budu muset do Zerthiomova učení přinést trochu vlastní moudrosti, abych porozuměl Cestě Zerthimona.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59967 /* ~"V množství je veliká síla, ale velikou moc má také jednotlivec, který dokáže svou vůlí spojit ostatní. Síla tedy není jen v sebepoznání, ale i v *umění* odkrýt a probudit to v ostatních."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",11)
GiveExperience(Protagonist,3000)
GiveItemCreate("Circle05",Protagonist,1,0,0)
~ GOTO 307
  IF ~  Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59968 /* ~Zerthimon se chtěl spojit s někým ještě mocnějším, s Githzerai. Společně se Lidé stali mnohem silnější."~ */ JOURNAL #67782 /* ~Je jasné, že nerozumím tomu, co znamená další Kruh Nerozřešeného kruhu Zerthimona, alespoň mi to tak řekl Dak'kon. Myslím, že smysl slov leží mimo to, co je vyryto do kamene... možná budu muset do Zerthiomova učení přinést trochu vlastní moudrosti, abych porozuměl Cestě Zerthimona.~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,17,WIS)
Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59969 /* ~"Vím, že Zerthimon pomáhal Lidem jen v tom směru, že se je snažil ochránit před nimi samými. Věděl, že *illithidé* se ve své panovačností a posedlosti mocí nesnaží o sebepoznání. A tak se rozhodl zastavit Gith dříve, než přivede Lid do záhuby. Vše musí být v rovnováze."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",13)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle06",Protagonist,1,0,0)
GiveItemCreate("Circle06",Protagonist,1,0,0)
~ GOTO 308
  IF ~  Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59970 /* ~"Zerthimon pochopil, že za svobodu musí člověk bojovat i když už svobodný je; někdy dokonce i sám se sebou."~ */ JOURNAL #67782 /* ~Je jasné, že nerozumím tomu, co znamená další Kruh Nerozřešeného kruhu Zerthimona, alespoň mi to tak řekl Dak'kon. Myslím, že smysl slov leží mimo to, co je vyryto do kamene... možná budu muset do Zerthiomova učení přinést trochu vlastní moudrosti, abych porozuměl Cestě Zerthimona.~ */ GOTO 295
  IF ~  Global("Dakkon_Teach","GLOBAL",15)
~ THEN REPLY #59971 /* ~"V Zerthimonově kameni byl Sedmý kruh. Popisuje vzpouru proti *illithidům*."~ */ GOTO 319
  IF ~  Global("Dakkon_Teach","GLOBAL",18)
~ THEN REPLY #59972 /* ~"V Zerthimonově kameni byl Osmý kruh. Zabývá se nejednotnou myslí a tím, jak je důležité se soustředit."~ */ GOTO 323
  IF ~~ THEN REPLY #59973 /* ~"Nevadí. Chtěl bych se zeptat na něco jiného, Dak'kone..."~ */ GOTO 193
  IF ~~ THEN REPLY #59974 /* ~"Stále přemýšlím o tom, co jsem četl; promluvíme si později. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 294.1 294.3 294.5 294.7 294.9 294.11
  SAY #59975 /* ~Dak'kon se zamračí. "Nic jsi nepochopil. Jsi jeden z těch, kteří slova jen slyší, ale *nechápou* je."~ */
  IF ~~ THEN REPLY #59976 /* ~"Dobrá... Ještě se nad tím zamyslím. Zatím bych se chtěl zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59977 /* ~"No nevadí, Dak'kone."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 294.0
  SAY #59978 /* ~"*Porozuměl* jsi Prvnímu kruhu. Zerthimonova slova nejen vidíš, ty i *chápeš* jejich smysl." Dak'kon pozvedne kamenný kruh a zahákne prsty po stranách. Ozve se *cvaknutí* a pláty Kruhu vklouznou do nových pozic. Pak opačným pohybem kámen zase spojí. "Zerthimonův Druhý Kruh je ti k dispozici. Prostuduj jej; pak si o tom promluvíme."~ */
  IF ~~ THEN REPLY #59979 /* ~"Druhý kruh si přečtu až později. Teď bych se chtěl zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59980 /* ~"Dobře. Přečtu si to, a pak si o tom znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 294.2
  SAY #59981 /* ~"Slova nejen vnímáš, ale chápeš i jejich smysl. *Pochopil* jsi Druhý kruh." Dak'kon uchopí kruh a zručným pohybem jeden článek otočí a vysune plátek ven - ale kámen kupodivu vypadá stále neporušený. Pak ti plátek podá. "Zamysli se nad tím; tohle *poznání* ti může dát sílu. Když tomu porozumíš, možná pochopíš mnohem více."~ */
  IF ~~ THEN REPLY #59982 /* ~"Dobře... Prostuduji ten Kruh. Chtěl bych o Zerthimonově učení vědět ještě víc."~ */ GOTO 298
END

IF ~~ THEN BEGIN 298 // from: 297.0 302.0 306.0 307.0
  SAY #59983 /* ~"Dak'konovy prsty přejíždí po hranách kamenného kruhu; otáčí ho zleva doprava, články cvakají, až se usadí v nových pozicích. Pak opačným pohybem vrátí kruh do původní podoby. "Je ti přístupný další Kruh. Prostuduj ho, a pak mi řekni svůj názor."~ */
  IF ~~ THEN REPLY #59984 /* ~"Další Kruh si přečtu potom. Teď bych se chtěl zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #59985 /* ~"Dobře. Přečtu si to, a pak si o tom znovu promluvíme."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 294.4
  SAY #59986 /* ~Vypadá to, že tvá slova se Dak'kona neobyčejně dotkla... během tvé řeči se jeho čelo zkrabatilo, ale pak se mu zase vrátil jeho netečný výraz.~ */
  IF ~~ THEN DO ~GiveItemCreate("Circle03",Protagonist,1,0,0)
~ GOTO 300
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #59987 /* ~"*Porozuměl* jsi Třetímu kruhu. Protože jsi pochopil jeho *smysl*, nabízím ti toto." Dak'kon uchopí kruh a zručným pohybem jeden článek otočí a vysune plátek ven. Pak ti ho podá. "Zamysli se nad tím; tohle *poznání* ti může dát sílu."~ */
  IF ~~ THEN REPLY #59988 /* ~"Dobrá... Prostuduji ten Kruh. Můžeš mě naučit ještě něco dalšího?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.0
  SAY #59989 /* ~Při své řeči si najednou uvědomíš, že se Dak'kon na tebe nedívá. V rukou svírá Nerozřešený kruh a zkoumá ho. Jeho čepel má stejný povrch jako Kruh... a Dak'kon ti najednou připadá nějak *starší*.~ */
  IF ~~ THEN REPLY #59990 /* ~"Dak'kone?"~ */ GOTO 302
END

IF ~~ THEN BEGIN 302 // from: 301.0
  SAY #59991 /* ~Dak'kon zvedne své černé oči od Kruhu a zadívá se na tebe. "Nevěřil jsem, že pochopíš Učení Kruhu. Je to... složitá cesta, kterou budeš muset projít při Zerthimonově učení. Jsi na to připraven?"~ */
  IF ~~ THEN REPLY #59992 /* ~"Ano, jsem. Chci se učit dál."~ */ GOTO 298
END

IF ~~ THEN BEGIN 303 // from: 294.6
  SAY #59993 /* ~"*Vím*, že mluvíš pravdu. Vilquarovo oko zaslepilo jak Vilquara, tak *illithidy*. Mysleli si, že Povstání skončilo. Země pak při Povstání hluboko nasákla krví *illithidů*. A tak se vítězství zrodilo ze zrady."~ */
  IF ~~ THEN REPLY #59994 /* ~"To je zvláštní ponaučení. Jak to může být součástí Zerthimonova učení?"~ */ GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 303.0
  SAY #59995 /* ~Dak'konův meč vybledne do mrtvolně popelavé barvy a jeho hlas poklesne - chvilku si myslíš, že jsi ho rozhněval, ale nejsi si jistý. "V Zerthimonově učení je mnoho míst, které je těžké *pochopit*."~ */
  IF ~~ THEN REPLY #59996 /* ~"Ty *víš*, proč je Vilquarovo oko součástí Zerthimonova učení?"~ */ GOTO 305
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #59997 /* ~"Tato část pojednává o tom, jak Lidé *poznali* svobodu. Říká nám, že jsou tací, dokonce i mezi Lidmi, kteří k Lidem vlastně nepatří. A že i ta nejhorší zrada může být zdrojem velikého poznání."~ */
  IF ~~ THEN REPLY #59998 /* ~"Rozumím."~ */ DO ~GiveItemCreate("Circle04",Protagonist,1,0,0)
~ GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 305.0
  SAY #59999 /* ~"*Porozuměl* jsi Čtvrtému kruhu." Dak'kon uchopí kruh a zručným pohybem jeden článek otočí a vysune plátek ven. Pak ti ho podá. "Zamysli se nad tím; tohle *poznání* ti může dát sílu."~ */
  IF ~~ THEN REPLY #60000 /* ~"Chtěl bych porozumět více věcem ze Zerthimonova učení."~ */ GOTO 298
END

IF ~~ THEN BEGIN 307 // from: 294.8
  SAY #60001 /* ~"*Porozuměl* jsi Pátému kruhu. Protože jsi pochopil jeho *smysl*, nabízím ti toto." Dak'kon uchopí kruh a zručným pohybem jeden článek otočí a vysune plátek ven. Pak ti ho podá. "Zamysli se nad tím; tohle *poznání* ti může dát sílu."~ */
  IF ~~ THEN REPLY #60002 /* ~"Chtěl bych porozumět více věcem ze Zerthimonova učení."~ */ GOTO 298
END

IF ~~ THEN BEGIN 308 // from: 294.10
  SAY #60003 /* ~"Nejenže slova vnímáš, ty i *chápeš* jejich smysl." Dak'kon uchopí Nerozřešený kruh pevně za hrany a otáčí jím zleva doprava. Ozve se *cvaknutí* a z Kruhu mu do dlaní vyklouznou dva plátky. Dak'kon na ně bez pohybu zírá.~ */
  IF ~~ THEN REPLY #60004 /* ~"Dak'kone... ta druhá část je pro tebe?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #60005 /* ~Dak'kon zmlkl. Jeho čepel přestává mihotat a její povrch tuhne. Dak'kon ohromeně zírá na druhý plátek.~ */
  IF ~~ THEN REPLY #60006 /* ~"Ty *znáš* Šestý kruh?"~ */ GOTO 310
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #60007 /* ~Dak'kon vzhlédne, ale jeho uhlově černé oči se s tvým upřeným pohledem nestřetnou. "*Podívej*, už není nic, co bych tě mohl učit. *Pochopil* jsi Učení tak jako Lidé a to ti může ukázat směr při *poznávání* sebe sama."~ */
  IF ~~ THEN REPLY #60008 /* ~"Ale to *není* to, na co jsem se ptal. *Znáš* Šestý kruh?"~ */ GOTO 311
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #60009 /* ~Po chvilce mlčení Dak'kon promluví, ale pomalu a opatrně. "Vypadá to, že Šestý kruh *neznám*. Jednou jsem si myslel, že mu *rozumím*, ale teď vidím, že jsem se mýlil." Dak'kon zírá skrz tebe. "To je vše. To je můj osud, že už nikdy nepochopím Zerthimonovo učení."~ */
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60010 /* ~"Je to kvůli tomu, co se stalo na Shra'kt'loru?"~ */ GOTO 317
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60011 /* ~"Je tady něco, čemu *nerozumím*, Dak'kone... Proč je v Zerthimonově kruhu Vilquarovo oko? Je to zvláštní. Vypráví o tom, jak Lidé využili svou vlastní zradu. To vypadá..."~ */ GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 311.1 317.0
  SAY #60012 /* ~V Dak'konových očích se zablesklo. "Řekl jsem ti, že je o tom, jak Lidé *poznali* svobodu. Ty jsi mě neposlouchal?" Jeho hlas se zklidní, jako kdyby odříkával něco naučeného nazpaměť. "Říká to Lidem, že i ta nejhorší zrada může být zdrojem velikého poznání."~ */
  IF ~~ THEN REPLY #60013 /* ~"Nevypadá to, že bys tomu sám věřil. Řekl bych, že Vilquarovo oko je v Kruhu z jiného důvodu. Je tam kvůli Šestému kruhu a Soudu dvou nebes. Má ospravedlnit Zerthimonovu zradu na Lidech na Proklatých pláních."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 313
END

IF ~~ THEN BEGIN 313 // from: 312.0
  SAY #60014 /* ~Dak'kon mlčí a jeho meč má popelavě šedou barvu; jen po ostří přebíhají malé vlnky.~ */
  IF ~~ THEN REPLY #60015 /* ~"On Lidi na Proklatých pláních znesvářil, Dak'kone. Roztříštil vaše síly ve chvíli, kdy jste směřovali k vítězství. *Rád* bych věřil tomu, že to udělal protože chtěl Lidi ochránit před nimi samými - ale nemyslím si, že *ty* tomu věříš."~ */ GOTO 314
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #60016 /* ~Dak'kon chvíli mlčí, pak začne pomalu mluvit. "Šestý kruh *chápu* jinak než ostatní. Obávám se totiž, že Třetí, Čtvrtý a Šestý Kruh spolu souvisí mnohem více, než si mnozí myslí."~ */
  IF ~~ THEN REPLY #60017 /* ~"Jak říká ve Třetím kruhu, Zerthimon skryl své záměry, aby mohl *illithidy* oklamat; ve Čtvrtém kruhu mluví o prospěchu ze *zrady*. A pak, v Šestém kruhu, znesvářil Lidi ještě před tím, než mohli *illithidy* vyhladit. Myslíš si, že tohle jsou jeho vlastní slova?"~ */ GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 314.0
  SAY #60018 /* ~"Obávám se, že Zerthimonovi se nepodařilo skrýt své myšlenky, když stál před Sloupy Mlčení. *Illithidé* jeho záměry zřejmě prohlédli; a když pak mluvil na Proklatých pláních, nebyla to jeho slova. Mám strach, že to, co udělal, nebylo v zájmu Lidu, ale našich dřívějších pánů."~ */
  IF ~~ THEN REPLY #60019 /* ~"To je možné, ale to přece neznamená, že Zer..."~ */ DO ~SetGlobal("BD_DAKKON_FAITH","GLOBAL",1)
~ JOURNAL #60020 /* ~Při studování Šestého kruhu jsem zjistil, že ani sám Dak'kon v něj nemá důvěru. Myslím si, že mu nedůvěřuje paradoxně právě *proto*, že četl Zerthimonův Nerozřešený kruh.~ */ GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #60021 /* ~"Tak si to *mysli*, ale už o tom NIKDY nemluv." Dak'konův hlas je jako břitva. "Nikdy nebudu *znát* PRAVDU. Nedozvím se ji, protože do Zerthimonova srdce na Proklatých pláních nebudu *vidět* NIKDY." Pohled jeho uhlově černých očí se zabodává do kamenného kruhu, který drží v rukou. "A tak kvůli Zerthimonově Nerozřešenému kruhu *nerozumím* sám sobě."~ */
  IF ~~ THEN REPLY #60022 /* ~"Dobře, Dak'kone. Už se o tom nebudeme bavit... tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 311.0
  SAY #60023 /* ~"Já *nevím*. Lidé se znesvářili - a trpěli. Teď, když jsem Nerozřešený kruh přečetl, vím, že jsem využil vědomosti z Pátého kruhu a na Shra'kt'loru použil Moc jednoho k získání Šestého kruhu. A tím jsem Lid znesvářil. Způsobilo to mnoho bolesti a utrpení. Shra'kt'lor si v sobě ponesu navždy."~ */
  IF ~~ THEN REPLY #60024 /* ~"Je tady něco, čemu *nerozumím*, Dak'kone... Proč je v Zerthimonově kruhu Vilquarovo oko? Je to zvláštní. Vypráví o tom, jak Lidé využili svou vlastní zradu. To vypadá..."~ */ GOTO 312
END

IF ~~ THEN BEGIN 318 // from: 193.3 351.0
  SAY #60025 /* ~Dak'kon čeká.~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #60026 /* ~"Dak'kone, můžeš mě naučit zacházet se zbraní?"~ */ GOTO 351
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #60027 /* ~"Chtěl bych zanechat svého současného povolání a začít znovu studovat zacházení se zbraní. Chtěl bys mě cvičit, Dak'kone?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 286
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60028 /* ~"Chtěl bych zanechat svého současného povolání a začít znovu studovat Umění. Chtěl bys mě učit, Dak'kone?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 257
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60029 /* ~"Chtěl bych zanechat svého současného povolání a začít znovu studovat Umění. Chtěl bys mě učit, Dak'kone?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 288
  IF ~  Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60030 /* ~"Dak'kone, můžeš mě naučit něco z Umění?"~ */ GOTO 290
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #68062 /* ~"Můžeš mě naučit něco z Umění, Dak'kone?"~ */ GOTO 363
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60031 /* ~"Četl jsem Nerozřešený kruh. Chtěl bych si s tebou o Zerthimonově učení promluvit."~ */ GOTO 294
  IF ~~ THEN REPLY #60032 /* ~"Teď mám místo toho pár dalších otázek..."~ */ GOTO 193
  IF ~~ THEN REPLY #60033 /* ~"Nevadí, Dak'kone. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 294.12
  SAY #60034 /* ~Dak'kon zmlkne. "Co říká Sedmý kruh?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60035 /* ~"Ukazuje čas jako spojence, nikoli nepřítele. Říká, že trpělivost se může dokonce i s nejmenším úsilím změnit ve zbraň schopnou zasáhnout třeba i srdce říše. I když jsou tvá vítězství jen malá, postupem času můžeš dosáhnout vítězství mnohem většího."~ */ GOTO 320
  IF ~~ THEN REPLY #60036 /* ~"Nevím... zmiňuje se o čase a námaze, ale smysl jsem nepochopil. Až na to přijdu, zamyslíme se nad tím společně."~ */ EXIT
  IF ~~ THEN REPLY #60037 /* ~"Teď o tom nebudu mluvit. Chtěl bych se *zeptat* na něco jiného, Dak'kone..."~ */ GOTO 193
  IF ~~ THEN REPLY #60038 /* ~"Probereme to jindy. Teď pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #60039 /* ~Dak'kon chvíli mlčí. "Pomůžeš mi ten Kruh *pochopit*?"~ */
  IF ~~ THEN REPLY #60040 /* ~Vzít Zerthimonův Nerozřešený kruh a uvolnit Sedmý kruh.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",16)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle07",Protagonist,1,0,0)
GiveItemCreate("Circle07",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 321
  IF ~~ THEN REPLY #60041 /* ~"Ano, ale ne teď. Chtěl bych *vědět* něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60042 /* ~"Teď ne... Probereme to jindy. Teď pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #60043 /* ~Vezmeš Kruh a posouváš články, když ti najednou do dlaně vklouznou *dva* plátky. Netušíš kde se vzaly, ale Kruh vypadá stále neporušený. Dak'kon tě mlčky sleduje.~ */
  IF ~~ THEN REPLY #60044 /* ~"Jsou tu dva plátky... možná bychom je měli studovat oba, nemyslíš?"~ */ GOTO 322
END

IF ~~ THEN BEGIN 322 // from: 321.0
  SAY #60045 /* ~Dak'kon chvilku mlčí. "Z Nerozřešeného kruhu jsi toho *pochopil* hodně - tvé poznání je větší než mé." Vaše pohledy se střetnou. "*Pamatuj* si, že tvá cesta je i mou cestou; a naše role se teď otočí. Zatímco dosud jsi se učil ty ode mne, teď se budu učit já od tebe."~ */
  IF ~~ THEN REPLY #60046 /* ~"Ty plátky prostudujeme později. Chtěl bych *vědět* něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60047 /* ~"Dobře, Dak'kone. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 294.13
  SAY #60048 /* ~Dak'kon zmlkne. Když znovu promluví... jeho hlas je tichý, téměř uctivý. "Co říká Osmý kruh?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60049 /* ~"Je o soustředění a sebekontrole... o tom, že *nepochopení* sebe sama může člověka zlomit. A mluví také o bezmocnosti a slabosti, kterou mu to způsobí. Vypadá to, že nejde jen o *sebepoznání*, ze kterého pak člověk čerpá sílu, ale i o soustředění, které může odkrýt slabiny tvých nepřátel."~ */ GOTO 324
  IF ~~ THEN REPLY #60050 /* ~"Nevím... zmiňuje se o soustředění a sebekontrole, ale smysl jsem nepochopil. Až na to přijdu, zamyslíme se nad tím společně."~ */ EXIT
  IF ~~ THEN REPLY #60051 /* ~"Teď o tom nebudu mluvit. Chtěl bych se *zeptat* na něco jiného, Dak'kone..."~ */ GOTO 193
  IF ~~ THEN REPLY #60052 /* ~"Probereme to jindy. Teď pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0
  SAY #60053 /* ~Dak'kon chvíli mlčí. "Pomůžeš mi ten Kruh *pochopit*?"~ */
  IF ~~ THEN REPLY #60054 /* ~Vzít Zerthimonův Nerozřešený kruh a uvolnit Osmý kruh.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",19)
GiveExperience(Protagonist,10000)
GiveExperience("Dakkon",10000)
GiveItemCreate("Circle08",Protagonist,1,0,0)
GiveItemCreate("Circle08",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 325
  IF ~~ THEN REPLY #60055 /* ~"Ano, ale ne teď. Chtěl bych *vědět* něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60056 /* ~"Teď ne... Probereme to jindy. Teď pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 324.0
  SAY #60057 /* ~Vezmeš Kruh a posouváš články, když ti do dlaně vklouznou další dva plátky. Stejně jako u Sedmého kruhu netušíš kde se vzaly, ale Kruh stále vypadá neporušený. Dak'kon tě mlčky sleduje.~ */
  IF ~~ THEN REPLY #60058 /* ~"Jsou tady dva plátky... můžeme je studovat oba. Myslím, že když *porozumíš* Osmému kruhu, možná pak *pochopíš* Zerthimonovy skutečné úmysly při Soudu dvou nebes. Jeho slova nepocházela od *illithidů, ale od Lidí."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #60059 /* ~Dak'kon se na plátky upřeně dívá, jeho oči těkají po jejich tvarech; pak zvedne oči a jeho pohled se setká s tvým. Jeho čepel se vlní a pohybuje, až si všimneš, že začala zářit stříbrně. Najednou vypadá *silnější*.~ */
  IF ~~ THEN DO ~IncrementGlobal("Githzerai","GLOBAL",3)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,2)
PermanentStatChange("Dakkon",CON,RAISE,2)
SetAnimState("Dakkon",ANIM_MIMEATTACK1)
~ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #60060 /* ~"*Věz*, že až si pro tebe přijde smrt, tato čepel a mé tělo se setkají. *Věz*, že až všichni okolo tebe zemřou, já budu kvůli tobě stále žít."~ */
  IF ~~ THEN REPLY #60061 /* ~"Když zemřeme, Dak'kone, bude to jedna jediná smrt. Toto je Přísaha Společné smrti."~ */ JOURNAL #60062 /* ~Myslím, že moje objevení Osmého kruhu přivedlo Dak'kona k hlubšímu pochopení sebe sama a zbavilo ho rozpolcení, kterým trpěl. Když jsem mu Osmý kruh odhalil,  doslova jsem viděl, jak ze sebe shazuje tíhu roků. Když slyšel má slova, složil Přísahu Společné smrti, ve které přísahá, že když zemřu já, zemře svou vlastní čepelí i on.~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 232.3
  SAY #60063 /* ~"Symboly mluví o čtyřech, se kterými jsi v minulosti cestoval."~ */
  IF ~~ THEN REPLY #60064 /* ~"Kdo to byl?"~ */ DO ~SetGlobal("Dakkon_Old_Companions","GLOBAL",1)
~ JOURNAL #60068 /* ~Dak'kon mi řekl o čtyřech lidech, kteří se mnou putovali: ženě, která milovala muže jež ji znal, ale neuměl milovat, slepém lukostřeleci, příteli a otroku.~ */ GOTO 329
  IF ~~ THEN REPLY #60065 /* ~"Vlastně, mám několik dalších otázek o tvých cestách..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #60066 /* ~"Promluvíme si o tom později. Teď bych se chtěl ještě zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60067 /* ~"Nevadí, Dak'kone. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 232.4 328.0
  SAY #60069 /* ~"Tetování mluví o čtyřech lidech. První byla žena, která milovala muže jež ji *znal*, ale který *neuměl* milovat. Další byl slepý muž, který viděl věci jež smrtelné oko vidět nemůže. Další byl přítel, mágův oblíbenec, podplacený a spoutaný dluhem. A poslední byl otrok."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60070 /* ~"A který z nich jsi byl ty, Dak'kone? Ty jsi byl ten otrok?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60071 /* ~"A který z nich jsi byl ty, Dak'kone? Ty jsi byl ten otrok?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60072 /* ~"A ty jsi byl otrok, Dak'kone?"~ */ GOTO 330
  IF ~~ THEN REPLY #60073 /* ~"Co mi můžeš o těch čtyřech říci?"~ */ GOTO 332
  IF ~~ THEN REPLY #60074 /* ~"Proč jsi mi to nechtěl říci?"~ */ GOTO 338
  IF ~~ THEN REPLY #60075 /* ~"Dobře. Teď bych se chtěl zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60076 /* ~"To je vše, co jsem chtěl vědět, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 329.0 329.1 329.2 333.3 334.1 335.1 337.0
  SAY #60077 /* ~Dak'kon chvíli mlčí a povrch jeho čepele se vlní jako by byl zmaten. "*Pamatuj*, že on ti dlužil službu. A z toho závazku se stalo otroctví."~ */
  IF ~~ THEN REPLY #60078 /* ~"Jak se to stalo?"~ */ GOTO 331
  IF ~~ THEN REPLY #60079 /* ~"Co mi můžeš říci o těch čtyřech, kteří se mnou v minulosti putovali?"~ */ GOTO 333
  IF ~~ THEN REPLY #60080 /* ~"Proč jsi mi nechtěl říci o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 338
  IF ~~ THEN REPLY #60081 /* ~"Promluvíme si o tom později. Teď bych se chtěl ještě zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60082 /* ~"Nevadí, Dak'kone. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #60083 /* ~"Ten příběh je dlouhý. Ta záležitost je pouze mezi mnou a tím, kým jsi jednou byl. Když ho uslyšíš, *pochopíš*, že to byl dlouhý příběh."~ */
  IF ~~ THEN REPLY #60084 /* ~"Chtěl bych ho slyšet."~ */ GOTO 218
  IF ~~ THEN REPLY #60085 /* ~"Co mi můžeš říci o těch čtyřech, kteří se mnou v minulosti putovali?"~ */ GOTO 333
  IF ~~ THEN REPLY #60086 /* ~"Poslechnu si ten příběh později. Proč jsi mi nechtěl říci o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 338
  IF ~~ THEN REPLY #60087 /* ~"Promluvíme si o tom později. Teď bych se chtěl ještě zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60088 /* ~"Nevadí, Dak'kone. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 329.3 334.2 335.2 337.1 338.1 339.0 339.2 340.1 340.2
  SAY #60089 /* ~"Žena byla mladá. Obdivovala čas, dokázala instinktivně vycítit věci, které teprve přijdou. Lučištník byl slepý muž a měl schopnost vidět věci, které nikdo jiný vidět nemohl. Jeho šípy si vždy našly cestu do nepřítelova srdce. O příteli a otroku *vím* jen velmi málo."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60090 /* ~"Viděla věci, které teprve přijdou? Ta žena se jmenovala Deionarra, nemám pravdu?"~ */ JOURNAL #60097 /* ~Právě jsem se dozvěděl, že Deionarra se mnou dříve putovala... Dak'kon říká, že měla schopnost 'vidět' události ještě před tím, než se staly.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60091 /* ~"Viděla věci, které teprve přijdou? Ta žena se jmenovala Deionarra, nemám pravdu?"~ */ JOURNAL #60097 /* ~Právě jsem se dozvěděl, že Deionarra se mnou dříve putovala... Dak'kon říká, že měla schopnost 'vidět' události ještě před tím, než se staly.~ */ GOTO 334
  IF ~~ THEN REPLY #60092 /* ~"Řekni mi o lučištníkovi více."~ */ GOTO 335
  IF ~~ THEN REPLY #60093 /* ~"Proč jsi mi nechtěl říci o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 338
  IF ~~ THEN REPLY #60094 /* ~"Víš proč jsem s těmi čtyřmi cestoval?"~ */ GOTO 340
  IF ~~ THEN REPLY #60095 /* ~"Promluvíme si o tom později. Teď bych se chtěl ještě zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60096 /* ~"To je vše, co jsem chtěl vědět, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.1 331.1 334.3 335.3 337.2 338.2 339.1 339.3 341.1 341.2
  SAY #60098 /* ~"Žena byla mladá. Obdivovala čas, dokázala instinktivně vycítit věci, které teprve přijdou. Lučištník byl slepý muž a měl schopnost vidět věci, které nikdo jiný vidět nemohl. Jeho šípy si vždy našly cestu do nepřítelova srdce. O příteli *vím* jen velmi málo."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60099 /* ~"Viděla věci, které teprve přijdou? Ta žena se jmenovala Deionarra, nemám pravdu?"~ */ JOURNAL #60107 /* ~Právě jsem se dozvěděl, že Deionarra se mnou dříve putovala... spolu s Dak'konem. Dak'kon říká, že měla schopnost 'vidět' události ještě před tím, než se staly.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60100 /* ~"Viděla věci, které teprve přijdou? Ta žena se jmenovala Deionarra, nemám pravdu?"~ */ JOURNAL #60107 /* ~Právě jsem se dozvěděl, že Deionarra se mnou dříve putovala... spolu s Dak'konem. Dak'kon říká, že měla schopnost 'vidět' události ještě před tím, než se staly.~ */ GOTO 334
  IF ~~ THEN REPLY #60101 /* ~"Řekni mi o lučištníkovi více."~ */ GOTO 335
  IF ~~ THEN REPLY #60102 /* ~"Jak jsi se stal mým otrokem?"~ */ GOTO 330
  IF ~~ THEN REPLY #60103 /* ~"Proč jsi mi nechtěl říci o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 338
  IF ~~ THEN REPLY #60104 /* ~"Víš proč jsme cestovali spolu?"~ */ GOTO 341
  IF ~~ THEN REPLY #60105 /* ~"Promluvíme si o tom později. Teď bych se chtěl ještě zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60106 /* ~"To je vše, co jsem chtěl vědět, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 332.0 332.1 333.0 333.1
  SAY #60108 /* ~"Jmenovala se Deionarra."~ */
  IF ~~ THEN REPLY #60109 /* ~"Co víš o lučištníkovi?"~ */ GOTO 335
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60110 /* ~"Jak jsi se stal mým otrokem?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60111 /* ~"Pověz mi o ostatních."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60112 /* ~"Pověz mi o ostatních."~ */ GOTO 333
  IF ~~ THEN REPLY #60113 /* ~"Proč jsi mi nechtěl říci o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60114 /* ~"Víš proč jsem s těmi čtyřmi cestoval?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60115 /* ~"Víš proč jsme cestovali spolu?"~ */ GOTO 341
  IF ~~ THEN REPLY #60116 /* ~"Promluvíme si o tom později. Teď bych se chtěl ještě zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60117 /* ~"To je vše, co jsem chtěl vědět, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 332.2 333.2 334.0
  SAY #60118 /* ~"*Vím* o něm jen málo. *Vím*, že byl voják. *Vím*, že ho alkohol připravil o část života. Jako slepec se naučil okolí vnímat jiným způsobem. To ho posílilo, ale zatím ještě *neznal* svou skutečnou sílu."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #60119 /* ~"víš jak se jmenoval?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 336
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60120 /* ~"Jak jsi se stal mým otrokem?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60121 /* ~"Pověz mi o ostatních."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60122 /* ~"Pověz mi o ostatních."~ */ GOTO 333
  IF ~~ THEN REPLY #60123 /* ~"Proč jsi mi nechtěl říci o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60124 /* ~"Víš proč jsem s těmi čtyřmi cestoval?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60125 /* ~"Víš proč jsme cestovali spolu?"~ */ GOTO 341
  IF ~~ THEN REPLY #60126 /* ~"Promluvíme si o tom později. Teď bych se chtěl ještě zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60127 /* ~"To je vše, co jsem chtěl vědět, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #60128 /* ~Ještě než může Dak'kon odpovědět si náhle uvědomíš, že *znáš* odpověď. Máš pocit, že kdesi v mozku se to jméno dere na povrch, jako by bylo pod velkým kalným oceánem.~ */
  IF ~~ THEN REPLY #60129 /* ~Hlas: "Jmenoval se *Zachariáš*... byl slepý, ale jako slepec se naučil vnímat jiným způsobem, což mu umožnilo vidět věci ostatním skryté. Byl lukostřelec a jeho šípy vždy našly srdce svých nepřátel."~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ JOURNAL #60130 /* ~Při rozhovoru s Dak'konem jsem si vzpomněl na jméno slepého lukostřelce, který se mnou jednou putoval. Jmenoval se Zachariáš; byl obdařen zvláštním zrakem, který umožnil jeho střelám najít srdce nepřátel~ */ GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #60131 /* ~"Jmenoval se Zachariáš. A *pamatuj* si, že jeho jméno zasáhlo srdce mnoha nepřátel."~ */
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60132 /* ~"Jak jsi se stal mým otrokem?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60133 /* ~"Pověz mi o ostatních."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60134 /* ~"Pověz mi o ostatních."~ */ GOTO 333
  IF ~~ THEN REPLY #60135 /* ~"Proč jsi mi nechtěl říci o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60136 /* ~"Víš proč jsem s těmi čtyřmi cestoval?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60137 /* ~"Víš proč jsme cestovali spolu?"~ */ GOTO 341
  IF ~~ THEN REPLY #60138 /* ~"Promluvíme si o tom později. Teď bych se chtěl ještě zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60139 /* ~"To je vše, co jsem chtěl vědět, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 329.4 330.2 331.2 332.3 333.4 334.4 335.4 337.3
  SAY #60140 /* ~"Ti čtyři jsou spojeni symbolem, který *znám*."~ */
  IF ~~ THEN REPLY #60141 /* ~"Jakým symbolem?"~ */ GOTO 339
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60142 /* ~"Teď mě symbol nezajímá; řekni mi všechno co víš o těch čtyřech, kteří jsou na tetování."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60143 /* ~"Teď mě symbol nezajímá; řekni mi všechno co víš o těch čtyřech, kteří jsou na tetování."~ */ GOTO 333
  IF ~~ THEN REPLY #60144 /* ~"Promluvíme si o tom později. Teď bych se chtěl ještě zeptat na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60145 /* ~"Nevadí, Dak'kone. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 338.0 340.0 341.0
  SAY #60146 /* ~"Ten symbol znamená trýzeň. Fell říkal, že ji vždy nosíš s sebou, protože tělo si ji *pamatuje*, dokonce i když paměť už ne."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60147 /* ~"Dost už o tom symbolu. Řekni mi všechno co víš o těch čtyřech, kteří jsou na tetování."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60148 /* ~"Dost už o tom symbolu. Řekni mi všechno co víš o těch čtyřech, kteří jsou na tetování."~ */ GOTO 333
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60149 /* ~"Vím. Můžeš mi říci ještě něco dalšího o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60150 /* ~"Vím. Můžeš mi říci ještě něco dalšího o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 333
  IF ~~ THEN REPLY #60151 /* ~"Dobře. Teď bych se chtěl zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60152 /* ~"To je vše, co jsem chtěl vědět, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 332.4 334.5 335.5 337.4
  SAY #60153 /* ~"Tetování neříká nic o jejich cestě, je tu jen ten symbol, který je spojuje. Cestu jsi *znal* jen ty."~ */
  IF ~~ THEN REPLY #60154 /* ~"Pověz mi o symbolu."~ */ GOTO 339
  IF ~~ THEN REPLY #60155 /* ~"Dost už o tom symbolu. Řekni mi všechno co víš o těch čtyřech, kteří jsou na tetování."~ */ GOTO 332
  IF ~~ THEN REPLY #60156 /* ~"Vím. Můžeš mi říci ještě něco dalšího o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 332
  IF ~~ THEN REPLY #60157 /* ~"Dobře. Teď bych se chtěl zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60158 /* ~"To je vše, co jsem chtěl vědět, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 341 // from: 333.5 334.6 335.6 337.5
  SAY #60159 /* ~"Cestu jsi *znal* jen ty a byla to tvé rozhodnutí, že my jsme se o ní nic *nevěděli*. Ti kteří s tebou šli, *znali* jen ten symbol, který je spojoval."~ */
  IF ~~ THEN REPLY #60160 /* ~"Dobře... pověz mi o tom symbolu."~ */ GOTO 339
  IF ~~ THEN REPLY #60161 /* ~"Dost už o tom symbolu. Řekni mi všechno co víš o těch ostatních, kteří jsou na tetování."~ */ GOTO 333
  IF ~~ THEN REPLY #60162 /* ~"Vím. Můžeš mi říci ještě něco dalšího o těch čtyřech, kteří jsou na tetování?"~ */ GOTO 333
  IF ~~ THEN REPLY #60163 /* ~"Dobře. Teď bych se chtěl zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60164 /* ~"To je vše, co jsem chtěl vědět, Dak'kone. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 342 // from: 270.0
  SAY #60165 /* ~"Jazyk Lidí má své historické kořeny. Všechny věci jsou pro nás jako příběh; a metafora je nástroj a zdroj síly. *Pamatuj* si, že když mluvíme o Torygově stole, připomínáme tím, že Toryg byl znám pro svou pohostinnost a dobré srdce. Když mluvíme o Selquantově srdci, připomínáme tím Selquantovu krutou a nemravnou povahu."~ */
  IF ~~ THEN REPLY #60166 /* ~"Rozumím. Budeš mě učit?"~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,600)
~ JOURNAL #60167 /* ~Dak'kon mě naučil mnoho z jazyka githzerai. Zřejmě je založený na metaforách a příbězích... Neznám všechny podrobnosti, ale když uslyším nový termín, mohu se na to Dak'kona kdykoliv zeptat.~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #60168 /* ~Dak'kon tě naučil několik běžných frází: když moudrý muž někoho obviňuje z velezrady, použije výraz "psát knihu Anarchistů", což je připomínka "Vilquarova oka". O velkorysých lidech se říká, že jejich "skříně jsou prázdné". Obvyklý pozdrav je "Sláva tobě, bojovníku" nebo - když se to hodí - "Poklona Zerchaiovy rodiny patří vám" a nebo "Poutník je potěšen". Dak'kon je zkušený učitel; po jeho lekci se cítíš být schopný vyměnit si náležité pozdravy s ostatními githzerai.~ */
  IF ~~ THEN REPLY #60169 /* ~"Ještě mám pár otázek ohledně githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #60170 /* ~"Díky, Dak'kone. Chci se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60171 /* ~"Už jsem toho slyšel dost. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 224.0
  SAY #60172 /* ~Jak Dak'kon mluví, rozostří se ti zrak a z hlubin mozku se ti začíná vtírat neodbytná vzpomínka... na chvíli cítíš nevolnost a tvůj zrak je zmatený a pokroucený - a najednou jsi někde jinde, někde v *minulosti*...~ */
  IF ~~ THEN REPLY #60173 /* ~Poddat se vzpomínkám...~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetAnimState("Dakkon",ANIM_MIMESTAND)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 345
  IF ~~ THEN REPLY #60174 /* ~Zahnat vzpomínky...~ */ GOTO 225
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #60175 /* ~Všechno okolo tebe je zmatené - vše vidíš nejasně, závratně kroužící a zmatené ZÁROVEŇ... je tady mlha, plameny, ostrovy bahna a kamene, ledem pokryté skály, které plavou Plání jako ryby, rozdrcené a rozpuštěné, kapky vody krouží v divokém větru a bičují tvou kůži - bráníš se nevolnosti a snažíš se zklidnit a najít rovnováhu; tak tohle je Pláň *Limbo*, vše je v pohybu, nic není stálé... sleduješ umírajícího muže, který leží před tebou. Kvůli němu jsi sem přišel.~ */
  IF ~~ THEN REPLY #60176 /* ~Hlas: Prohlédni *zertha*, jestli ještě stále žije.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 346
  IF ~~ THEN REPLY #60177 /* ~Zahnat vzpomínky...~ */ GOTO 225
END

IF ~~ THEN BEGIN 346 // from: 345.0
  SAY #60178 /* ~Ten 'muž' je githzerai; jeho tělo je vtisknuté do hlíny, která proudí kolem něj - nevědomky si z živlů udělal hrob, a nereaguje, přestože se oheň a voda chvílemi dotýkají jeho tváře. Jeho ruce jsou bledé jako křída, uhlově černé oči zírají do prázdna - vyzáblá postava prozrazuje vyhladovění, ale ty víš, že tohle je to nejmenší z jeho zranění. Je to víra, která mu uštědřila smrtelnou ránu.~ */
  IF ~~ THEN REPLY #60179 /* ~Hlas: Prohlédni si čepel, kterou má u sebe.~ */ GOTO 347
  IF ~~ THEN REPLY #60180 /* ~Zahnat vzpomínky...~ */ GOTO 225
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #60181 /* ~V ochablé levé ruce drží zkroucenou masu kovu; její povrch roztál a obalil jeho ruku jako rukavice. Kouří se z ní a syčí jako nemocný had. Githzerai to zřejmě nevnímá... ale je to ta zbraň, která tě přivedla až sem.~ */
  IF ~~ THEN REPLY #60182 /* ~Hlas: "Dak'kone, *zerthe* z Potopeného Shra'kt'loru, poslední vládče *karachové* čepele, věz, že jsem k tobě přišel se slovy Zerthimona, vrytými ne do chaosu, ale do kamene - vrytými vůlí do Nerozřešeného Kruhu."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 348
  IF ~~ THEN REPLY #60183 /* ~Zahnat vzpomínky...~ */ GOTO 225
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #60184 /* ~Při slově 'Zerthimon' se Dak'konovy oči pohnou a pokouší se na tebe zaostřit. S námahou rozevře rty, ale vydá pouze syčivý zvuk.  Ze svého vaku vytáhneš kámen a podržíš ho před ním tak, aby ho mohl vidět.~ */
  IF ~~ THEN REPLY #60185 /* ~Hlas: "Věz, že Zerthimonova slova, vrytá do tohoto kamene, jsou pravdivá; tvá rozštěpená mysl se musí opět spojit. Jediné, co teď musíš udělat, je vzít ten kámen - a snad opět *porozumíš* sám sobě."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 349
  IF ~~ THEN REPLY #60186 /* ~Zahnat vzpomínky...~ */ GOTO 225
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #60187 /* ~Dak'konovy oči přelétnou přes Zerthimonův Nerozřešený Kruh a ty máš na okamžik obavu, že je možná už příliš blízko smrti na to, aby ho poznal. Pak sebou pravá ruka trhne a pomalu se vyprostí z hliněného sevření, proudící hroudy hlíny se přemění na vodu kroužící v chaotickém větru Sféry Limbo. Jeho kostnatá ruka stiskne kámen jako ruka topícího se člověka a jeho oči zazáří.~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #60188 /* ~Hlas: "Pamatuj, že jsem ti zachránil život, Dak'kone, *zerthe* ze Shra'kt'loru."~ */ DO ~SetGlobal("Memory_Shraktlor","GLOBAL",1)
GiveExperience(Protagonist,6000)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #60191 /* ~Při rozhovoru s Dak'konem jsem si vzpomněl, že jsem mu na Shra'kt'loru s pomocí Zerthimonova Nerozřešeného Kruhu zachránil život... zvláštní je, že si nepamatuji, že bych chtěl zachránit jeho - chtěl jsem uchránit *karachovou* čepel od zničení. Ale nevím *proč*.~ */ GOTO 350
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #60189 /* ~Hlas: "Pamatuj, že jsem ti zachránil život, Dak'kone, *zerthe* ze Shra'kt'loru."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 350
  IF ~~ THEN REPLY #60190 /* ~Zahnat vzpomínky...~ */ GOTO 225
END

IF ~~ THEN BEGIN 350 // from: 349.0 349.1
  SAY #60192 /* ~Dak'konovy oči se na tebe obrátí; znovu zasyčí, ale je příliš vyčerpaný na to aby mohl mluvit. Pomalu zamrká, pak promluví a jeho hlas je stěží něco víc než šepot, ale říká to, co chceš slyšet. "Můj... život je v tvých rukou... navždy..."~ */
  IF ~~ THEN REPLY #60193 /* ~Zavřít oči, vrátit se do přítomnosti.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 225
END

IF ~~ THEN BEGIN 351 // from: 318.0
  SAY #60194 /* ~Dak'kon potřese hlavou. "Mohu člověku ukázat směr při učení se válečného řemesla, ale nemohu vylepšit jeho dovednosti. Moje zbraně nejsou z oceli, ale z *vůle* a *poznání* sebe sama."~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60195 /* ~"Možná by jsi mi mohl pomoci s ostatním cvičením..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~~ THEN REPLY #60196 /* ~"Dobře. Když se budu někdy potřebovat vrátit k bojovému řemeslu, zeptám se tě. Mám několik jiných otázek..."~ */ GOTO 193
  IF ~~ THEN REPLY #60197 /* ~"No nevadí. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 193.5
  SAY #60198 /* ~"Ta babizna... neví NIC..." Dak'konova čepel se vlní, vidíš jak její ostří šedne a otupuje se. Tvář má staženou a mluví skrz zaťaté zuby. "Nemám chuť se o tom bavit."~ */
  IF ~~ THEN REPLY #60199 /* ~"Chtěl bych, abys o tom mluvil... Ravel mi řekla hodně zajímavých věcí."~ */ GOTO 353
  IF ~~ THEN REPLY #60200 /* ~"Dobrá. Chci se zeptat ještě na něco jiného..."~ */ GOTO 193
  IF ~~ THEN REPLY #60201 /* ~"Tak už o tom nemluvme. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #60202 /* ~"*Věz*, že tvá vůle je mojí *vůlí.* Když hovoříš, *věz*, že ti musím naslouchat. *Věz*, že tvé slovo má moc zastavit mou čepel, nebo ji vést k dalšímu hrdlu."~ */
  IF ~~ THEN REPLY #60203 /* ~"Cože? Ale proč?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 354
  IF ~~ THEN REPLY #60204 /* ~"Už o tom nebudeme mluvit. Jsou i jiné věci, které bych chtěl *vědět*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60205 /* ~"Nepřeji si slyšet víc. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #60206 /* ~Jakoby se Dak'kon díval skrze tebe, střetnutí s jeho upřeným pohledem se nedá vydržet. "Tvá cesta je mojí cestou. Jsem s tebou spoután."~ */
  IF ~~ THEN REPLY #60207 /* ~"To jsi můj otrok?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 355
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #60208 /* ~Při slově 'otrok,' se Dak'konova tvář zkřivila, jakoby jej někdo uhodil... jako se by hluboko v jeho nitru bolestivě zarývala dýka.~ */
  IF ~~ THEN REPLY #60209 /* ~"Ale... proč, Dak'kone?"~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #60210 /* ~"*Věz*, že jde o... dlouhý příběh, a *věz*, že vyprávění by ničeho nedosáhlo."~ */
  IF ~~ THEN REPLY #60211 /* ~"Poslechnu si to."~ */ JOURNAL #59286 /* ~Dak'kon mi pověděl o původu svého otroctví... když jsem mu zachránil život, slíbil, že mi bude sloužit dokud nezemřu. Avšak nevěděl o možnosti, že bych mohl být nesmrtelný. Učinivše tak, odevzdal mi zbytek svého života.~ */ GOTO 215
  IF ~~ THEN REPLY #60212 /* ~"Tak nevadí. Chtěl jsem *vědět* ještě další věci..."~ */ GOTO 193
  IF ~~ THEN REPLY #60213 /* ~"Pak o tom už víckrát nemluvme. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from:
  SAY #60401 /* ~"Máme pomáhat githyankimu? Co ho tady drží, daleko od zpěvu krve svých bratří?"~ */
  IF ~~ THEN EXTERN ~DANIZIUS~ 17
END

IF ~~ THEN BEGIN 358 // from:
  SAY #61670 /* ~"Jsou to jenom skvrny na Zerthimonově stezce."~ [DAK204] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 359 // from:
  SAY #61671 /* ~"V očích Zerthimona nejsem nic."~ [DAK203A] */
  IF ~~ THEN EXTERN ~BGRACE~ 15
END

IF ~~ THEN BEGIN 360 // from:
  SAY #61672 /* ~"Dlouhá cesta, ale přesto musím jít dál. Toto je pouhopouhý počátek."~ [DAK203B] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Dakkon","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 361 // from:
  SAY #64995 /* ~"Počkej chvíli. Podívej se tu na zem." Když jsi se podíval dolů, zpozoroval jsi množství špinavých stop, které vedly do výklenku... a neotáčely se. "Mnoho tudy prošlo. Výklenek musí být nějakým druhem portálu."~ */
  IF ~~ THEN REPLY #64997 /* ~"Portál?Jak ho otevřeme?"~ */ GOTO 362
  IF ~~ THEN REPLY #64998 /* ~"Možná. Pojďme tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #64996 /* ~"Já *nevím,* ale podle toho jak je tenhle portál využíván, klíč nemůže být nějaká vzácná věc. Možná by mohl o tom, jak tenhle portál použít, vědět některý z místních obyvatel."~ */
  IF ~~ THEN REPLY #64999 /* ~"Poptám se kolem. Pojďme tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 318.5
  SAY #68059 /* ~"*Věz*, že já nejsem učitel tohoto oboru, ale *věz*, že mohu posloužit jako průvodce. *Neznám* způsob, jakým se lidé stávají schopným v 'Umění', ale až se Umění naučíš, vrať se a znovu se mě zeptej."~ */
  IF ~~ THEN REPLY #68060 /* ~"Tak se tě zeptám, až ze mě bude mág. Mezitím mám pro tebe ještě pár otázek..."~ */ GOTO 193
  IF ~~ THEN REPLY #68061 /* ~"Tak se podívám, jestli někde nenajdu nějakého učitele magie. Pojďme dál."~ */ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",3)
~ THEN BEGIN 364 // from:
  SAY #68195 /* ~Jak se ho tvá moc dotkla, Dak'kon zalapal po dechu. Zvedl hlavu -- vypadá to, že se života drží jen tak tak.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68196 /* ~"Kdysi jsi Dak'kone vyslovil Prohlášení Dvou Smrtí Jako Jedné. Ten čas přišel."~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
SetGlobal("BD_TWO_DEATHS","GLOBAL",1)
JoinPartyEx(TRUE)
~ GOTO 367
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68197 /* ~"Dak'kone, potřebuji tě.  Můžeš mi pomoct?"~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 365
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68340 /* ~POVSTAŇ, DAK'KONE Z SHRA'KT'LORU, POSLEDNÍ NOSITELI MEČE *KARACH*.~ */ GOTO 368
END

IF ~~ THEN BEGIN 365 // from: 364.1 367.0
  SAY #68198 /* ~Dak'kon se nadechl a postavil se. Pod tvým pohledem se jeho meč *zaostřil*. "Tato čepel je tvou."~ [DAK025] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68199 /* ~"Dobrá tedy."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68200 /* ~"Dobrá tedy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68201 /* ~"Dobrá tedy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68202 /* ~"Dobrá tedy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68203 /* ~"Dobrá tedy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68204 /* ~"Dobrá tedy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68240 /* ~"Dobrá tedy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68433 /* ~"Dobrá tedy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68434 /* ~"Dobrá tedy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68444 /* ~"Dobrá tedy."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from: 193.4
  SAY #68255 /* ~Dak'kon zavrtěl hlavou. "*Věz*, že nepřátelé jsou blízko. Nyní není čas."~ */
  IF ~~ THEN REPLY #68256 /* ~"Dobrá tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 367 // from: 364.0
  SAY #68270 /* ~Když jsi ta slova vyslovil, Dak'konovy oči se zavřely - na moment máš pocit, že už se nedokáže udržet při životě - pak se ale otevřely a už nemají tu smrtelně černou barvu, kterou si pamatuješ. Místo toho mají kovovou texturu jeho meče. Náhle víš, že se Dak'kon stal něčím *jiným* - něčím mnohem mocnějším.~ */
  IF ~~ THEN DO ~GiveExperience("Dakkon",2000000)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,3)
PermanentStatChange("Dakkon",CON,RAISE,3)
FullHealEx("Dakkon")
~ GOTO 365
END

IF ~~ THEN BEGIN 368 // from: 364.2
  SAY #68341 /* ~Jak Dak'kon zaslechl tvá slova, pomalu přikývl. "Tvůj hlas... konečně jsi *poznal* sám sebe?"~ */
  IF ~~ THEN REPLY #68342 /* ~ANO. BYLO TO... TĚŽKÉ A STÁLO TO MNOHO ŽIVOTŮ. MNOHO TRPĚLO, ABYCH SE JÁ MOHL ZNOVU POZNAT.~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #68343 /* ~"*Znalost* sebe sama je těžká cesta."~ */
  IF ~~ THEN REPLY #68344 /* ~TÍMTO VĚDĚNÍM TEĎ VÍM, KDE BRZY BUDU UPOUTÁN. ČAS A OSUD SE KE MNĚ BLÍŽÍ, UŽ TADY DLOUHO NEBUDU.  VRÁTÍM TĚ DO SIGILU, DAK'KONE, POKUD SI TO PŘEJEŠ.~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #68345 /* ~Dak'kon je chvíli zticha. Když znovu promluvil, jeho hlas je ostrý a pevný. "*Věz* že jsem k tobě dříve měl dluh. *Věz*, že jsi mi zachránil život a *věz*, že jsem tě následoval, abych ten dluh vyrovnal."~ */
  IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #68346 /* ~"Zaplatil jsem za tvůj život svým. Dluh je vyrovnán."~ [DAK030] */
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68347 /* ~DOBRÁ, DAK'KONE. NAŠE DVĚ SMRTI BYLY JAKO JEDNA. OPUSTÍŠ TOTO MÍSTO SPOLU SE SVOU SVOBODOU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68348 /* ~DOBRÁ, DAK'KONE. NAŠE DVĚ SMRTI BYLY JAKO JEDNA. OPUSTÍŠ TOTO MÍSTO SPOLU SE SVOU SVOBODOU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68349 /* ~DOBRÁ, DAK'KONE. NAŠE DVĚ SMRTI BYLY JAKO JEDNA. OPUSTÍŠ TOTO MÍSTO SPOLU SE SVOU SVOBODOU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68350 /* ~DOBRÁ, DAK'KONE. NAŠE DVĚ SMRTI BYLY JAKO JEDNA. OPUSTÍŠ TOTO MÍSTO SPOLU SE SVOU SVOBODOU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68351 /* ~DOBRÁ, DAK'KONE. NAŠE DVĚ SMRTI BYLY JAKO JEDNA. OPUSTÍŠ TOTO MÍSTO SPOLU SE SVOU SVOBODOU.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68496 /* ~DOBRÁ, DAK'KONE. NAŠE DVĚ SMRTI BYLY JAKO JEDNA. OPUSTÍŠ TOTO MÍSTO SPOLU SE SVOU SVOBODOU.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68497 /* ~DOBRÁ, DAK'KONE. NAŠE DVĚ SMRTI BYLY JAKO JEDNA. OPUSTÍŠ TOTO MÍSTO SPOLU SE SVOU SVOBODOU.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68498 /* ~DOBRÁ, DAK'KONE. NAŠE DVĚ SMRTI BYLY JAKO JEDNA. OPUSTÍŠ TOTO MÍSTO SPOLU SE SVOU SVOBODOU.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",4)
~ THEN BEGIN 372 // from:
  SAY #68412 /* ~Dak'kon přikývl. "Tato čepel je tvá."~ [DAK025] */
  IF ~~ THEN REPLY #68413 /* ~"Dobrá, tak ji použijme..."~ */ EXIT
END
