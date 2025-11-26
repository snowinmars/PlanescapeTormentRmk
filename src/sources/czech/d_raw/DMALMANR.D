// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMALMANR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMALMANR~

IF ~  Global("Malmaner","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #27976 /* ~Tento hubený muž s ostrými rysy se k tobě hnal a volal, aby na sebe upozornil. "Oh, konečně! Jenom chvilku z tvého času! Jsi tady, abys navštívil krejčího?"~ */
  IF ~~ THEN REPLY #28027 /* ~"Ano, jsem..."~ */ GOTO 1
  IF ~~ THEN REPLY #28028 /* ~Ignoruj jej a pokračuj v chůzi.~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27977 /* ~Muž hned pokračoval: "Ptám se, protože jsem zřejmě, oh, urazil člověka. Pověřil jsem horkokrevného blázna, aby mi ušil kostým, ale on mě vyhodil ze svého obchodu a už se mnou nechce mluvit."~ */
  IF ~~ THEN REPLY #28029 /* ~"Tak co..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27978 /* ~Muž najednou zaťal pěsti a zahrozil jimi k obloze. "Co jsem komu udělal, že si zasloužím takové zacházení? Nic, říkám! Byl jsem *zákazník!* Je to jeho povinnost mě *obsloužit*, ten nevychovaný kašpar!"~ */
  IF ~~ THEN REPLY #28030 /* ~"Co jsi ode mě chtěl?"~ */ GOTO 4
  IF ~~ THEN REPLY #28031 /* ~"Na to nemám čas. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 4.0 5.0
  SAY #27979 /* ~"Mohl bych tě poprosit, abys tam šel a přinesl mi ten kostým? Jdu na maškarní a už nemám čas, abych zašel k jinému krejčímu."~ */
  IF ~~ THEN REPLY #28032 /* ~"Ano. Půjdu pro něj hned."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Souhlasil jsem, že přinesu Malmanerovi kostým od krejčího Gonzalvese.~ */ GOTO 6
  IF ~~ THEN REPLY #28033 /* ~"Udělám to, ale ne zadarmo."~ */ GOTO 8
  IF ~~ THEN REPLY #28034 /* ~"Proč si pro něj nedojdeš sám?"~ */ GOTO 7
  IF ~~ THEN REPLY #28035 /* ~"Ne, na to nemám čas. Sbohem."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #27980 /* ~"Cože?" Znovu se k tobě obrátil. "Oh! Ano, ty..."~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #27981 /* ~"Počkej, počkej, prosím!"~ */
  IF ~~ THEN REPLY #28050 /* ~Vyslechni jej.~ */ GOTO 3
  IF ~~ THEN REPLY #28051 /* ~Odejdi.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 7.0 8.0 16.0
  SAY #27982 /* ~"Oh, perfektní! Je to tahle budova, právě tady..." Ukázal na dlouhou, nízkou budovu, která je od něj přesně na sever. "Moc ti děkuju!"~ */
  IF ~~ THEN REPLY #28052 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #27983 /* ~Ušklíbl se a zakoulel očima. "Ten prasečí hulvát! Nějak jsem 'urazil' toho nadutého, pyšného nafoukance! Zakázal mi vstup do jeho obchodu a odmítá se mnou mluvit. Představ si to!"~ */
  IF ~~ THEN REPLY #28053 /* ~"Zajdu pro něj hned."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Souhlasil jsem, že přinesu Malmanerovi kostým od krejčího Gonzalvese.~ */ GOTO 6
  IF ~~ THEN REPLY #28054 /* ~"Donesu ti tvůj kostým, ale ne zadarmo."~ */ GOTO 8
  IF ~~ THEN REPLY #28055 /* ~"Na to nemám čas. Sbohem."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 7.1 16.1
  SAY #27984 /* ~"A co bys za to chtěl? Propánaboha, člověče, pouze přineseš *kostým!* Zabere ti to jenom nepatrnou chvilku! Rozhodně si ani nemyslím, že taková službička si zaslouží odměnu!"~ */
  IF ~~ THEN REPLY #28056 /* ~"Dobrá. Tak ti jej teda donesu."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Souhlasil jsem, že přinesu Malmanerovi kostým od krejčího Gonzalvese.~ */ GOTO 6
  IF ~~ THEN REPLY #28057 /* ~"Na to je můj čas příliš vzácný. Sbohem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #27985 /* ~"Počkej..." Hlasitě vzdechl. "Tak tedy deset měďáků za takovou službičku, která zabere jenom minutku, jestli vůbec. Vyhovuje ti to?'"~ */
  IF ~~ THEN REPLY #28058 /* ~"Ano. Zaplať mi a já ti přinesu tvůj kostým."~ */ DO ~GivePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #28059 /* ~"Nelíbí se mi tvůj tón. Začínám chápat proč jsi krejčímu tak odporný. Sbohem."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #28060 /* ~"Na to zapomeň. Sbohem."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27986 /* ~S mumláním ti podal mince. "Je to dlouhá budova, přesně tamhle..." Ukázal na dlouhou, nízkou budovu. "...Na sever a na východ od brány do Dolní čtvrti. Prosím pospěš si."~ */
  IF ~~ THEN REPLY #28061 /* ~"Zajdu pro něj. Sbohem."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Souhlasil jsem, že přinesu Malmanerovi kostým od krejčího Gonzalvese.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28062 /* ~"Pospíšit si? Kam? Oh, a díky za snadný výdělek. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28063 /* ~"Pospíšit si? Kam? Oh, a díky za snadný výdělek. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #27987 /* ~Volal za tebou: "Ty... ty zjizvená zdechlino! Ty zkrabatělý, prašivý pytle hnusu! Vrať se zpátky, ty mizerný přenašeči nemocí! Takto se k Malmanerovi nebude nikdo chovat! Okamžitě se vrať než zavolám stráže!"~ */
  IF ~~ THEN REPLY #28064 /* ~"Dobrá, tu máš... vem si své peníze zpět."~ */ DO ~TakePartyGold(10)
~ GOTO 13
  IF ~~ THEN REPLY #28065 /* ~Hoď po něm deset měďáků.~ */ DO ~TakePartyGold(10)
~ GOTO 14
  IF ~~ THEN REPLY #28066 /* ~Ignoruj jej a jdi pryč.~ */ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #27988 /* ~Volal za tebou: "Ty... ty zjizvená zdechlino! Ty zkrabatělý, prašivý pytle hnusu! Vrať se zpátky, ty mizerný přenašeči nemocí! Takto se k Malmanerovi nebude nikdo chovat! Okamžitě se vrať než zavolám stráže!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 273
END

IF ~~ THEN BEGIN 13 // from: 11.0 21.0 21.2 21.4 21.6
  SAY #27989 /* ~"Hmph!" Chňapnul mince z tvé ruky a strčil si je do svého váčku a odkráčel.~ */
  IF ~~ THEN REPLY #28067 /* ~Odejdi.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1 21.1 21.3 21.5 21.7
  SAY #27990 /* ~Muž na tebe hleděl v šoku. "Ty... drzoune..."~ */
  IF ~~ THEN REPLY #28068 /* ~"Utiš se, než ti tvůj jazyk způsobí smrt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #28069 /* ~Ignoruj jej a jdi pryč.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.2 14.0 21.8
  SAY #27991 /* ~"Já ti ukážu! Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #28070 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #28072 /* ~Zkus se ztratit než někdo přijde.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~  Global("Malmaner","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #27992 /* ~"Dobrá, dobrá, nejlaskavější občane Sigilu..." V mužově hlase převládá hořký sarkasmus. "Děkuju ti *moc* za tvou pomoc. Ou... počkej... tys mi vůbec nepomohl, že? Hmph."~ */
  IF ~~ THEN REPLY #28073 /* ~"Rozmyslel jsem si to. Zajdu pro tvůj kostým."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~Souhlasil jsem, že přinesu Malmanerovi kostým od krejčího Gonzalvese.~ */ GOTO 6
  IF ~~ THEN REPLY #28075 /* ~"Podívej... Přinesu ti tvůj kostým, ale ne zadarmo."~ */ GOTO 8
  IF ~~ THEN REPLY #28076 /* ~"Sbohem."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",2)
~ THEN BEGIN 17 // from:
  SAY #27993 /* ~Muž se na tebe netrpělivě díval. "No? No co? Donesl jsi kostým od Goncalvese?"~ */
  IF ~~ THEN REPLY #28077 /* ~"Ne, ještě ne."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.4 32.2 33.2 38.0 39.2
  SAY #27994 /* ~"Tak jej teda dones, člověče! Musím jít na maškarní!"~ */
  IF ~~ THEN REPLY #28078 /* ~"Vrátím se, až jej budu mít. Sbohem"~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",3)
!PartyHasItem("Costume1")
~ THEN BEGIN 19 // from:
  SAY #27995 /* ~Muž se na tebe netrpělivě díval. "No? No co? Donesl jsi kostým od Goncalvese?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28079 /* ~"Ne, ještě ne. Říká, že mu dlužíš třicet měďáků za práci."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28083 /* ~Lež: "Ne, ještě ne. Říká, že mu dlužíš, oh, padesát měďáků za práci."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28084 /* ~"Ne, ještě ne... ale jak by se ti líbila tato róba Spalovačů?"~ */ GOTO 32
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28085 /* ~Lež: "Oh... ano. Tady máš róbu spalovačů. Vlastně kostým."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_2","GLOBALLaw",-1)
~ GOTO 33
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28086 /* ~"Ne, ještě ne."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0 23.2 27.0 32.0 33.0
  SAY #27996 /* ~"*CO?!* Hmph! Dobrá, dobrá... vem si peníze a už mi dones ten zatracený kostým!" Hodil ti třicet měďáků.~ */
  IF ~~ THEN REPLY #28087 /* ~"Vrátím se až jej budu mít. Sbohem"~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28088 /* ~"Hmmm... jaký kostým? Oh... a díky za měďáky... sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28089 /* ~"Hmmm... jaký kostým? Oh... a díky za měďáky... sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1 24.1 40.1 42.1
  SAY #27997 /* ~Volal za tebou: "Ty... ty zjizvená zdechlino! Ty zkrabatělý, prašivý pytle hnusu! Vrať se zpátky, ty mizerný přenašeči nemocí! Takto se k Malmanerovi nebude nikdo chovat! Okamžitě se vrať než zavolám stráže!"~ */
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28090 /* ~"Dobrá, tady máš... vem si své peníze zpátky."~ */ DO ~TakePartyGold(30)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28091 /* ~Hoď po něm třicet měďáků.~ */ DO ~TakePartyGold(30)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28092 /* ~"Dobrá, tady máš... vem si své peníze zpátky."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28093 /* ~Hoď po něm padesát měďáků.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28094 /* ~"Dobrá, tady máš... vem si své peníze zpátky."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28095 /* ~Hoď po něm padesát měďáků.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28096 /* ~"Dobrá, tady máš... vem si své peníze zpátky."~ */ DO ~TakePartyGold(80)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28097 /* ~Hoď po něm osmdesát měďáků.~ */ DO ~TakePartyGold(80)
~ GOTO 14
  IF ~~ THEN REPLY #28098 /* ~Ignoruj jej a jdi pryč.~ */ GOTO 15
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 40.2 42.2
  SAY #27998 /* ~Volal za tebou: "Ty... ty zjizvená zdechlino! Ty zkrabatělý, prašivý pytle hnusu! Vrať se zpátky, ty mizerný přenašeči nemocí! Takto se k Malmanerovi nebude nikdo chovat! Okamžitě se vrať než zavolám stráže!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 274
END

IF ~~ THEN BEGIN 23 // from: 19.1 32.1 33.1
  SAY #27999 /* ~Muž byl vyvedený z míry. "To není možné! To je směšné! Domluvili jsme se na třiceti měďácích, když jsem to objednával!"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28099 /* ~Lež: "Byl rozčilený, Malmanere. Urazil jsi ho a proto zvýšil cenu."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28100 /* ~Lež: "Noó, uh, byl rozčilený a zvýšil cenu."~ */ GOTO 27
  IF ~~ THEN REPLY #28101 /* ~"Pardon, spletl jsem se. Bylo to pouze třicet měďáků."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28000 /* ~Podezíravě se na tebe díval, pak změkl: "Dobrá! Tady máš. A už mi dones ten zatracený kostým!" Hodil ti padesát měďáků.~ */
  IF ~~ THEN REPLY #28102 /* ~"Vrátím se až jej budu mít. Sbohem"~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28103 /* ~"Hmmm... jaký kostým? Oh... a díky za měďáky... sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28104 /* ~"Hmmm... jaký kostým? Oh... a díky za měďáky... sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~  Global("Malmaner","GLOBAL",3)
PartyHasItem("Costume1")
~ THEN BEGIN 25 // from:
  SAY #28001 /* ~Muž se na tebe netrpělivě díval. "No? No co? Donesl jsi kostým od Goncalvese?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28105 /* ~"Ano, tady je. Stálo mě to třicet měďáků."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Získal jsem pro Malmanera kostým od krejčího Goncalva a dodal mu ho.~ */ GOTO 26
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28106 /* ~Lež: "Ano, tady je. Stálo mě to padesát měďáků."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28107 /* ~"Ano, tady je."~ */ DO ~TakePartyItemNum("Costume1",1)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Získal jsem pro Malmanera kostým od krejčího Goncalva a dodal mu ho.~ */ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.2 30.0
  SAY #28002 /* ~"Dobrá, dobrá! Tady si vem." Hodil ti třicet měďáků. "Teď už musím..."~ */
  IF ~~ THEN REPLY #28108 /* ~"Počkej... Goncalves říkal, že už hodně lidí šlo na maškarní jako Spalovači."~ */ GOTO 34
  IF ~~ THEN REPLY #28109 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY #28003 /* ~Podezíravě se na tebe díval se sešpulenými rty.~ */
  IF ~~ THEN REPLY #28110 /* ~"Pardon, spletl jsem se. Bylo to pouze třicet měďáků."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #28004 /* ~Muž byl vyvedený z míry. "To není možné! To je směšné! Domluvili jsme se na třiceti měďácích, když jsem to objednával!"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28111 /* ~Lež: "Byl rozčilený, Malmanere. Urazil jsi ho a proto zvýšil cenu."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(50)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Získal jsem pro Malmanera kostým od krejčího Goncalva a dodal mu ho.~ */ GOTO 29
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28112 /* ~Lež: "Noó, uh, byl rozčilený a zvýšil cenu."~ */ GOTO 30
  IF ~~ THEN REPLY #28113 /* ~"Pardon, spletl jsem se. Bylo to pouze třicet měďáků."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~Získal jsem pro Malmanera kostým od krejčího Goncalva a dodal mu ho.~ */ GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #28005 /* ~Podezíravě se na tebe díval, pak změkl: "Dobrá! Tady máš!. Hodil ti padesát měďáků. "Teď už musím..."~ */
  IF ~~ THEN REPLY #28114 /* ~"Počkej... Goncalves říkal, že už hodně lidí šlo na maškarní jako Spalovači."~ */ GOTO 34
  IF ~~ THEN REPLY #28115 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #28006 /* ~Podezíravě se na tebe díval se sešpulenými rty.~ */
  IF ~~ THEN REPLY #28116 /* ~"Pardon, spletl jsem se. Bylo to pouze třicet měďáků."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 25.2
  SAY #28008 /* ~"No konečně!" Vytrhnul ti kostým. "Teď už musím..."~ */
  IF ~~ THEN REPLY #28117 /* ~"Počkej... Goncalves říkal, že už hodně lidí šlo na maškarní jako Spalovači."~ */ GOTO 34
  IF ~~ THEN REPLY #28118 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.2
  SAY #28009 /* ~S nechutí se stáhnul zpět. "Fuj! Hnus... dívej na něj! Špinavý, rozežraný od molů ... a takový nevkusný materiál! To bych nesnesl nosit takové hadry."~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28119 /* ~"No, říká, že mu dlužíš třicet měďáků za ten kostým."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28120 /* ~Lež: "No, říká, že mu dlužíš, uh, padesát měďáků za ten kostým."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28121 /* ~"No, ještě jsem ten kostým nesehnal."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 19.3
  SAY #28010 /* ~S nechutí se stáhnul zpět. "Fuj! Hnus... dívej na něj! Špinavý, rozežraný od molů ... a takový nevkusný materiál! To bych nesnesl nosit takové hadry." Podezíravě se na tebe díval. "Co jsou *tyhle* zač?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28122 /* ~"Nic, nevadí. Říká, že mu dlužíš třicet měďáků za ten kostým."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28123 /* ~Lež: "Nic, nevadí. Říká, že mu dlužíš, uh, padesát měďáků za ten kostým."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28124 /* ~"Nevadí. Ještě jsem ten kostým nesehnal."~ */ GOTO 18
END

IF ~~ THEN BEGIN 34 // from: 26.0 29.0 31.0
  SAY #28007 /* ~"To že řekl? K čertu! Nesnesl bych se tam ukázat v takovém *obyčejném* kostýmu... hmmm..."~ */
  IF ~~ THEN REPLY #28125 /* ~"Mohl bych se jít podívat, jestli má už připravený další."~ */ GOTO 36
  IF ~~ THEN REPLY #28126 /* ~"Mohl bych pro tebe zkusit sehnat jiný... ale bude tě to něco stát."~ */ GOTO 37
  IF ~~ THEN REPLY #28127 /* ~"To není dobré. Sbohem."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2 36.2 37.1
  SAY #28011 /* ~"Hmph!" Odcházel a přitom nevrle mumlal.~ */
  IF ~~ THEN REPLY #28128 /* ~Odejdi.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #28012 /* ~"To není špatný nápad, to není špatné! Rychle, zjisti jestli ten tlustý nekňuba má ještě jiný, jo?"~ */
  IF ~~ THEN REPLY #28129 /* ~"Vrátím se s jiným kostýmem."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALGood_Malmaner_1","GLOBALGood",1)
~ JOURNAL #27454 /* ~Souhlasil jsem, že přinesu druhý kostým pro Malmanera od krejčího Gonzalvese.~ */ EXIT
  IF ~~ THEN REPLY #28130 /* ~"Ano..., ale bude tě to něco stát."~ */ GOTO 37
  IF ~~ THEN REPLY #28131 /* ~"Nevadí, zapomeň na mou nabídku. Sbohem."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.1 36.1
  SAY #28013 /* ~Zakoulel očima a ušklíbl se na tebe. "S tím jsem měl počítat! Tady si vem, ty *žoldáku.* Doufám, že ti to stačí?" Podal ti dvacet měďáků.~ */
  IF ~~ THEN REPLY #28132 /* ~"To by šlo. Vrátím se s jiným kostýmem."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
GivePartyGold(20)
~ JOURNAL #27454 /* ~Souhlasil jsem, že přinesu druhý kostým pro Malmanera od krejčího Gonzalvese.~ */ EXIT
  IF ~~ THEN REPLY #28133 /* ~"Zapomeň tedy na mou nabídku. Sbohem."~ */ GOTO 35
END

IF ~  Global("Malmaner","GLOBAL",4)
~ THEN BEGIN 38 // from:
  SAY #28014 /* ~Muž se na tebe netrpělivě díval. "No? Tak co? Donesl jsi od něj další kostým?"~ */
  IF ~~ THEN REPLY #28134 /* ~"Ne, ještě ne."~ */ GOTO 18
END

IF ~  Global("Malmaner","GLOBAL",5)
!PartyHasItem("Costume2")
~ THEN BEGIN 39 // from:
  SAY #28015 /* ~Muž se na tebe netrpělivě díval. "No? Tak co? Donesl jsi od něj další kostým?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28135 /* ~"Ne, ještě ne. Má jiný, ale chce za něj padesát měďáků."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28136 /* ~Lež: "Ne, ještě ne. Má jiný, ale chce za něj, uh, osmdesát měďáků."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_3","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28137 /* ~"Ne, ještě ne."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 41.2 43.0
  SAY #28016 /* ~Začal  si škubat vlasy a zvolal: "Ah, jak se ti bože může líbit tak týrat nebohého, urozeného Malmanera! Zatracené maškarní, na třikrát proklínám toho hnusného krejčího!" Hodil ti padesát měďáků. "Běž!"~ */
  IF ~~ THEN REPLY #28138 /* ~"Vrátím se až jej budu mít. Sbohem."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28139 /* ~"Hmmm... jaký kostým? Oh... a díky za měďáky... sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28140 /* ~"Hmmm... jaký kostým? Oh... a díky za měďáky... sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #28017 /* ~"To je... to je... nepochopitelné! Úplný nesmysl! Kdo si myslí, že je?!" Najednou se zamračil. "Rozmysli si to, zní to trochu přehnaně dokonce i na Goncalvese." Podezíravě si tě změřil.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28141 /* ~Lež: "Nemá tě moc v oblibě, Malmanere. Platíš za svá hrubá slova, která jsi mu předtím řekl."~ */ DO ~GivePartyGold(80)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 42
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28142 /* ~Lež: "No, uh, opravdu jsi ho dost rozčílil."~ */ GOTO 43
  IF ~~ THEN REPLY #28143 /* ~"Pardon, spletl jsem se. Bylo to pouze padesát měďáků."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #28018 /* ~Podezíravě se na tebe díval, pak změkl: "Dobrá! Na, tu máš. Jenom sežeň ten další kostým, ale rychle!" Hodil ti osmdesát měďáků.~ */
  IF ~~ THEN REPLY #28144 /* ~"Vrátím se až jej budu mít. Sbohem."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28145 /* ~"Hmmm... jaký kostým? Oh... a díky za měďáky... sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28146 /* ~"Hmmm... jaký kostým? Oh... a díky za měďáky... sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #28019 /* ~Podezíravě na tebe pohlédl se sešpulenými rty. Jsi si jistý, že tvým slovům nevěří.~ */
  IF ~~ THEN REPLY #28147 /* ~"Pardon, spletl jsem se. Bylo to pouze padesát měďáků."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 44 // from:
  SAY #28020 /* ~Žádná reakce.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("Malmaner","GLOBAL",5)
PartyHasItem("Costume2")
~ THEN BEGIN 45 // from:
  SAY #28021 /* ~Muž se na tebe netrpělivě díval. "No? No tak? Donesl jsi kostým od Goncalvese?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28148 /* ~"Ano, tady je. Stálo mě to padesát měďáků."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Získal jsem druhý kostým pro Malmanera od krejčího Goncalva a dodal mu ho.~ */ GOTO 46
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28149 /* ~Lež: "Ano, tady je. Stálo mě to osmdesát měďáků."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 48
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28150 /* ~"Ano, tady je."~ */ DO ~TakePartyItemNum("Costume2",1)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Získal jsem druhý kostým pro Malmanera od krejčího Goncalva a dodal mu ho.~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.2 49.0
  SAY #28022 /* ~Vyloudil nespokojený zvuk, popadl kostým a strčil ti do ruky padesát měďáků. "Teď už musím..."~ */
  IF ~~ THEN REPLY #28151 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #28023 /* ~"Bylo na čase!" Vytrhnul ti z rukou kostým. "Teď už musím..."~ */
  IF ~~ THEN REPLY #28152 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #28024 /* ~"To je... to je... nepochopitelné! Úplný nesmysl! Kdo si myslí, že je?!" Najednou se zamračil. "Rozmysli si to, zní to trochu přehnaně dokonce i na Goncalvese." Podezíravě si tě změřil.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28153 /* ~Lež: "Nemá tě moc v oblibě, Malmanere. Platíš za svá hrubá slova, která jsi mu předtím řekl."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(80)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Získal jsem druhý kostým pro Malmanera od krejčího Goncalva a dodal mu ho.~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28154 /* ~Lež: "No, uh, opravdu jsi ho dost rozčílil."~ */ GOTO 49
  IF ~~ THEN REPLY #28155 /* ~"Pardon, spletl jsem se. Bylo to pouze padesát měďáků."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~Získal jsem druhý kostým pro Malmanera od krejčího Goncalva a dodal mu ho.~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #28025 /* ~Podezíravě se na tebe díval se sešpulenými rty.~ */
  IF ~~ THEN REPLY #28156 /* ~"Pardon, spletl jsem se. Bylo to pouze padesát měďáků."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #28026 /* ~Podezíravě se na tebe díval, pak změkl. Vyloudil nespokojený zvuk, popadl kostým a strčil ti do ruky osmdesát měďáků. "Teď už musím..."~ */
  IF ~~ THEN REPLY #28157 /* ~"Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END
