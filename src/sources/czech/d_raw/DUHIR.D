// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DUHIR~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #23329 /* ~Měl jsem dost času vidět zděšený výraz v Sběračově tváři předtím než se otočil a prchnul.~ */
  IF ~  Global("Uhir","GLOBAL",0)
~ THEN REPLY #22957 /* ~"Možná příště..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~  GlobalGT("Uhir","GLOBAL",0)
~ THEN REPLY #23331 /* ~"Uhire, počkej... zatraceně."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.2
  SAY #23335 /* ~"Eh... dobře, trochu mě dole kousl ghúl, zatímco jsem hledal materiál na prodej."~ */
  IF ~~ THEN REPLY #23337 /* ~"Dole?"~ */ GOTO 5
  IF ~~ THEN REPLY #23340 /* ~"Měl bych pro tebe ještě nějaké jiné otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #23342 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0
  SAY #23344 /* ~"Mý jméno je Uhir, tak to je." Odplivne si. "Jako kdyby to tady dole k něčemu bylo."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23345 /* ~"Je toto tvůj nůž, s vyrytým 'UHIR'?"~ */ GOTO 16
  IF ~~ THEN REPLY #23347 /* ~"Dobře. Měl bych pro tebe ještě nějaké jiné otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #23348 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.1 5.1 7.0 8.0 9.1 10.2 10.3 11.0 12.0
  SAY #23349 /* ~Přikývl, ale neříká nic.~ */
  IF ~~ THEN REPLY #23350 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #23351 /* ~"Co děláš?"~ */ GOTO 4
  IF ~~ THEN REPLY #23352 /* ~"Jsi omotaný obvazy. Co se ti stalo?"~ */ GOTO 1
  IF ~~ THEN REPLY #23353 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #23354 /* ~"Čekám, až se mi uzdraví má zranění, pak mohu uskutečnit další sestup dolů. Prodávám materiál, který tam dole nacházím."~ */
  IF ~~ THEN REPLY #23355 /* ~"Dole?"~ */ GOTO 5
  IF ~~ THEN REPLY #23357 /* ~"Měl bych ještě nějaké jiné otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #23359 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #23366 /* ~Kývl svou hlavou. "Dole v katakombách, kde jsou všichni ti mrtváci. Řekni... šel jsi tam dolů někdy?"~ */
  IF ~~ THEN REPLY #23368 /* ~"Snad. Proč?"~ */ GOTO 9
  IF ~~ THEN REPLY #23370 /* ~"Nevadí, tedy. Měl bych jinou otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #23371 /* ~"Mohl bych. Sbohem."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",3)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #23372 /* ~Uhir na tebe kýve. "Děkuji ti znovu za pomoc při hledání mého šťastného nožíku, kámo."~ */
  IF ~~ THEN REPLY #23373 /* ~"Samozřejmě. Sbohem."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",1)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #23374 /* ~Uhir tě ostražitě pozoruje, jako pes který se bojí, že mu ukradneš jídlo. "Eh? Znovu? Co chceš?"~ */
  IF ~~ THEN REPLY #23375 /* ~"Chtěl jsem nějaké odpovědi."~ */ GOTO 3
  IF ~~ THEN REPLY #23376 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",0)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #23377 /* ~Tento nevrlý muž středního věku zpozorněl, když ses k němu přiblížil a sáhl za opasek... žádnou zbraň tam nenašel, tak jen poodešel. Pod jeho Sběračskou róbou vidíš, že má nohy a předloktí zavinuty v zašpiněných obvazech. "Co chceš?"~ */
  IF ~~ THEN REPLY #23378 /* ~"Jen odpovědi na nějaké otázky..."~ */ DO ~SetGlobal("Uhir","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #23379 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #23380 /* ~"Protože jsem ztratil můj šťastný nožík!" Rozzlobeně se zamračí. "Byl se mnou roky, právě tady..." Ukazuje na prázdné pouzdro na jeho opasku. ~ */
  IF ~~ THEN REPLY #23381 /* ~"Tak, co se ti stalo?"~ */ GOTO 10
  IF ~~ THEN REPLY #23382 /* ~"To je hodně špatné. Měl bych ještě jiné otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #23383 /* ~"Doufám že ho najdeš. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.3
  SAY #23384 /* ~"Prohrabal jsem se skoro dolů do katakomb a pak jsem vrazil do ghúla! Musel být zatoulaný, protože jich tam je obvykle víc jak jeden. Kousl mě do obličeje, tak jsem se zakryl rukama a bodl ho do očí. Upadl a zakousl se mi do nohy, než jsem se stačil vykroutit a utýct nahoru."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23385 /* ~"Je toto ten nůž, s vyrytým 'UHIR'?"~ */ GOTO 16
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23386 /* ~"Docela zajímavý příběh. Tvůj nůž ti přinesu zpět, když ho tam dole uvidím."~ */ DO ~SetGlobal("Uhir","GLOBAL",2)
~ JOURNAL #21912 /* ~Uhir ztratil svůj 'šťastný nůž' dole v katakombách - bodnul s ním ghúla do oka a utekl. Jestli na něj narazím, můžu mu jej přinést zpět.~ */ GOTO 11
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23387 /* ~"Doufám, že tvůj nůž najdu. Měl bych ještě jiné otázky."~ */ GOTO 3
  IF ~  Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23388 /* ~"Jak jsem řekl, přinesu ti ho zpět když ho uvidím. Měl bych jiné otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #23389 /* ~"Vsadím se, že ten ghúl byl stejně překvapený jako ty. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #23390 /* ~"Mohl bys? Byl bych ti vděčný, to bych byl. Má na rukojeti vyřezané jméno..."~ */
  IF ~~ THEN REPLY #23391 /* ~"Jsem rád, že mohu pomoci. Než půjdu, dovol mi zeptat se na nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #23392 /* ~"Budu očekávat platbu, chápeš."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #23393 /* ~"Nyní musím odejít. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #23394 /* ~Uhir se zamračí. "Dám ti co mohu, ale nebude to mnoho. Podívej se kolem, kámo... nyní tě nebudu moci zahrnout bohatstvím."~ */
  IF ~~ THEN REPLY #23395 /* ~"Budu to tedy muset udělat. Měl bych otázku..."~ */ GOTO 3
  IF ~~ THEN REPLY #23396 /* ~"Promluvíme si víc, až budu mít tvůj nůž. Sbohem."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",2)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #23397 /* ~Uhir tě zkoumá. "Nenašels náhodou můj nůž?"~ */
  IF ~  PartyHasItem("UhrKnf")
Global("Good_Uhir_1","GLOBAL",1)
~ THEN REPLY #23398 /* ~"Ano, našel... Tady je."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~  PartyHasItem("UhrKnf")
Global("Evil_Uhir_1","GLOBAL",1)
~ THEN REPLY #23399 /* ~"Ano, našel."~ */ GOTO 15
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23400 /* ~Lež: "Ne... nenašel. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Uhir_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23401 /* ~"Ne, ješte ne. Kdeže jsi to ztratil?"~ */ GOTO 10
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23402 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 15.1 16.0
  SAY #23403 /* ~Uhir bere nůž a láskyplně ho drží. "Och, jsi zpět! Můj šťastný nožíku... díky, kámo. A *ty!"* káře svůj nůž a třese s ním: "Znovu už neutíkej!" S úsměvem zasouvá nůž do pouzdra.~ */
  IF ~~ THEN REPLY #23404 /* ~"Sbohem, Uhire."~ */ JOURNAL #22025 /* ~Vrátil jsem  Uhirovi jeho 'šťastný' nůž. Snad mu v budoucnu poslouží lépe... ačkoli, jednou ho *zachránil* před sežráním ghúlem.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.1
  SAY #23405 /* ~"Vše co mám je tato hrst měďáků, kámo..." Nabízí ti tucet nebo tak mincí. "Stačí to?"~ */
  IF ~~ THEN REPLY #23406 /* ~"Ano, to stačí. Tady je tvůj nůž."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
GivePartyGold(13)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23407 /* ~"Nech si své peníze, Uhire... zde je tvůj nůž."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23408 /* ~"Hmm. Já si to tedy nechám. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~Rozhodl jsem se nechat si Uhirův šťastný nožík pro sebe. Nezdál se z toho být příliš nadšený.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 10.0
  SAY #23409 /* ~Uhirovy oči se rozšiřují překvapením. "To je můj šťastný nožík!"~ */
  IF ~~ THEN REPLY #23410 /* ~"Zde, vem si to. Patří tobě."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Uhir_1","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #23411 /* ~"Jestli ho chceš zpět, uvažoval bych o prodeji."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #23412 /* ~"Je to pěkný nůž... nechám si ho, Uhire. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~Rozhodl jsem se nechat si Uhirův šťastný nožík pro sebe. Nezdál se z toho být příliš nadšený.~ */ EXIT
END
