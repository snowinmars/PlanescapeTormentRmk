// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DECCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DECCO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 25 26 37 45 46 even though they appear after this state */
~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN BEGIN 0 // from:
  SAY #38209 /* ~Tato neobyčejná mladá žena má kůži barvy leštěné mědi. Průsvitné bílé šaty, zapnuty jen nebezpečně slabými zlatými přezkami, pečlivě zakrývají její hezky tvarovanou figuru.~ */
  IF ~  Global("Ecco","GLOBAL",0)
~ THEN REPLY #38269 /* ~"Zdravím..."~ */ DO ~SetGlobal("Ecco","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Ecco","GLOBAL",1)
~ THEN REPLY #38270 /* ~"Ještě jednou zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #38271 /* ~Nech ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #2909 /* ~Žena přikývla a krátce se usmála. Vůně jejích vlasů, jemně naparfemovaných, naplnila tvé nozdry. A tvou hlavu naplnilo něco jiného, co jsi raději rychle zahnal.~ */
  IF ~~ THEN REPLY #38272 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38273 /* ~"Už se rozloučím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 5.1 6.4 7.1 10.6 11.1 12.1 13.1 14.1 15.1 16.1 25.0 29.0 30.0 40.0 41.0 42.0 43.1 44.0 45.0 46.0 47.1 49.0 51.1 52.1 53.1 54.0 55.0
  SAY #2910 /* ~Přikývla.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38274 /* ~"Jmenuješ se 'Ecco?'"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Ujistil jsem se, že 'mlčící' prostitutka se jmenuje Ecco.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalLT("Ecco_Rumor_6","AR0605",2)
~ THEN REPLY #38276 /* ~"Mohu se zeptat proč nemůžeš komunikovat?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38278 /* ~"Víš o *jakémkoliv* způsobu, jak ti vrátit tvůj hlas?"~ */ GOTO 21
  IF ~  GlobalLT("Ecco_Name","AR0605",2)
~ THEN REPLY #38279 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38283 /* ~"Co tady děláš?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38284 /* ~"Můžeš mi říct něco tady o tom místě?"~ */ GOTO 47
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38285 /* ~"Můžeš mi říct něco tady o tom místě?"~ */ GOTO 5
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
Global("Know_Kesai_Ravel","AR0605",0)
~ THEN REPLY #38286 /* ~"Víš něco o Ravel Puzzlewell?"~ */ GOTO 48
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #38287 /* ~"Víš něco o Ravel Puzzlewell?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38290 /* ~"Snažím se najít Vivianinu voňavku... nevíš, kde by mohla být?"~ */ JOURNAL #66727 /* ~Jedna z prostitutek mi řekla, ať se zeptám Nenny, jestli neví něco o tom, kdo vzal Vivian její osobní voňavku. Nenny zřejmě neustále pobíhá kolem a sleduje, co dělají ostatní.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Scent_Quest","AR0605",1)
~ THEN REPLY #38291 /* ~"Snažím se najít Vivianinu voňavku... nevíš, kde by mohla být?"~ */ GOTO 29
  IF ~  Global("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38292 /* ~"Snažím se najít Marissin Karmínový závoj... nevíš, kde by mohl být?"~ */ JOURNAL #66728 /* ~Jedna z prostitutek mi řekla, ať se zeptám Nenny, jestli neviděla Marissin závoj. Nenny zřejmě neustále pobíhá kolem a sleduje, co dělají ostatní.~ */ GOTO 30
  IF ~  GlobalLT("Ecco_Speak","GLOBAL",5)
Global("Veil_Quest","AR0605",1)
~ THEN REPLY #38293 /* ~"Snažím se najít Marissin Karmínový závoj... nevíš, kde by mohl být?"~ */ GOTO 29
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38294 /* ~"Mluvil jsem se všemi devíti prostitutkami... nevíš kdo je, nebo kde je desátá studentka?"~ */ GOTO 53
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
Global("Ecco_Speak","GLOBAL",5)
~ THEN REPLY #38295 /* ~"Mluvil jsem se všemi devíti prostitutkami... nevíš kdo je, nebo kde je desátá studentka?"~ */ GOTO 54
  IF ~~ THEN REPLY #38296 /* ~"To vůbec nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3
  SAY #38210 /* ~Usměje se a udělá pukrle, ale neposkytne žádnou odpověď.~ */
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38280 /* ~"Jmenuješ se 'Ecco?'"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Ujistil jsem se, že 'mlčící' prostitutka se jmenuje Ecco.~ */ GOTO 6
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38297 /* ~"Můžeš mluvit?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38281 /* ~"Hmm. Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38298 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 5.0 6.3 9.0 53.0
  SAY #38211 /* ~Zakroutí hlavou a smutně se na tebe usměje.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN JOURNAL #66704 /* ~Jedna z prostitutek, kterou jsem potkal v Nevěstinci, nějakým způsobem přišla o hlas - z nějakého důvodu nemůže (anebo nechce) ani psát nebo gestikulovat. Dokud nenajdu způsob, jak jí vrátit hlas, nebudu se jí moct na nic zeptat...~ */ EXTERN ~DMORTE~ 402
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38299 /* ~"Můžeš aspoň psát, nebo dělat pantomimu?"~ */ JOURNAL #66704 /* ~Jedna z prostitutek, kterou jsem potkal v Nevěstinci, nějakým způsobem přišla o hlas - z nějakého důvodu nemůže (anebo nechce) ani psát nebo gestikulovat. Dokud nenajdu způsob, jak jí vrátit hlas, nebudu se jí moct na nic zeptat...~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 2.6
  SAY #38212 /* ~Podívá se na tebe a pak zdvihne obočí.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38300 /* ~"Můžeš mluvit?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38301 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38302 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 21.1
  SAY #38213 /* ~Přitaká a příjemně se usměje.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38303 /* ~Přísahej: "Slibuji, že najdu způsob jak ti vrátit tvůj hlas."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38304 /* ~"Pokusím se najít způsob jak ti vrátit tvůj hlas."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Speak","GLOBAL",2)
~ THEN REPLY #38305 /* ~"Mohu se pokusit vrátit ti tvůj hlas... za nějakou cenu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38306 /* ~"Můžeš mluvit?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38307 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #52815 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #38214 /* ~Našpulí rty a zakroutí hlavou.~ */
  IF ~~ THEN REPLY #38308 /* ~"Smím se zeptat proč nemůžeš komunikovat?"~ */ GOTO 10
  IF ~~ THEN REPLY #38309 /* ~"Přesto bych měl nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38310 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.8
  SAY #38215 /* ~Její oči se zablesknou a usměje se. Kývne na tebe.~ */
  IF ~~ THEN REPLY #38311 /* ~"Co? Co o ní víš?"~ */ JOURNAL #66724 /* ~Mlčící prostitutka zřejmě ví něco o Ravel Puzzlewell... ale jelikož nemá hlas, nemůže mi to prozradit.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38216 /* ~Jen na tebe hledí.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38312 /* ~"Můžeš mluvit?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #38313 /* ~"Smím se zeptat proč nemůžeš komunikovat?"~ */ GOTO 10
  IF ~~ THEN REPLY #38314 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 7.0 9.1 11.0 12.0 13.0 14.0 15.0
  SAY #38217 /* ~Jemně povzdechne a přikývne.~ */
  IF ~  Global("Ecco_Rumor_1","AR0605",1)
~ THEN REPLY #38315 /* ~"Jsi potichu kvůli zlomenému srdci?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",2)
~ GOTO 11
  IF ~  Global("Ecco_Rumor_2","AR0605",1)
~ THEN REPLY #38316 /* ~"Znáš slovo, které zničí mnohovesmír, jestliže ho vyslovíš?"~ */ DO ~SetGlobal("Ecco_Rumor_2","AR0605",2)
~ GOTO 12
  IF ~  Global("Ecco_Rumor_3","AR0605",1)
~ THEN REPLY #38317 /* ~"Jsi emocionálně zraněna? Proto nemůžeš mluvit?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",2)
~ GOTO 13
  IF ~  Global("Ecco_Rumor_4","AR0605",1)
~ THEN REPLY #38318 /* ~"Způsobil tvůj hlas něčí smrt, nebo nějakou jinou tragédii?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",2)
~ GOTO 14
  IF ~  Global("Ecco_Rumor_5","AR0605",1)
~ THEN REPLY #38319 /* ~"Přísahala jsi, že z nějakého důvodu už nikdy nepromluvíš?"~ */ DO ~SetGlobal("Ecco_Rumor_5","AR0605",2)
~ GOTO 15
  IF ~  Global("Ecco_Rumor_6","AR0605",1)
~ THEN REPLY #38320 /* ~"Byl tvůj hlas ukraden?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",2)
SetGlobal("Ecco_Speak","GLOBAL",2)
~ JOURNAL #66725 /* ~To, co mi Dolora řekla o Ecco je pravdivé - nemůže mluvit, protože jí byl hlas ukraden.~ */ GOTO 16
  IF ~~ THEN REPLY #38321 /* ~"Vlastně, dovol abych se zeptal na něco jiného..."~ */ GOTO 2
  IF ~~ THEN REPLY #38322 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38218 /* ~Mile se usměje a pak zavrtí hlavou.~ */
  IF ~~ THEN REPLY #38323 /* ~"Smím se tedy zeptat jestli to bylo něco jiného?"~ */ GOTO 10
  IF ~~ THEN REPLY #38324 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38325 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #38219 /* ~Její oči se rozšíří překvapením... pak vykouzlí zářivý úsměv, koulíc očima a kroutíc hlavou.~ */
  IF ~~ THEN REPLY #38326 /* ~"Smím se tedy zeptat jestli to bylo něco jiného?"~ */ GOTO 10
  IF ~~ THEN REPLY #38327 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38328 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #38220 /* ~Divně se na tebe podívá a pomalu zavrtí hlavou...~ */
  IF ~~ THEN REPLY #38329 /* ~"Smím se tedy zeptat jestli to bylo něco jiného?"~ */ GOTO 10
  IF ~~ THEN REPLY #38330 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38331 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #38221 /* ~Na chvíli se zarazí, otevře pusu a pak se zamračí. Po chvíli zakroutí hlavou.~ */
  IF ~~ THEN REPLY #38332 /* ~"Smím se tedy zeptat jestli to bylo něco jiného?"~ */ GOTO 10
  IF ~~ THEN REPLY #38333 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38334 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #38222 /* ~Zamračí se a zakroutí hlavou.~ */
  IF ~~ THEN REPLY #38335 /* ~"Smím se tedy zeptat jestli to bylo něco jiného?"~ */ GOTO 10
  IF ~~ THEN REPLY #38336 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38337 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.5
  SAY #38223 /* ~Prudce přikývne a usmívajíc se zatleská rukama.~ */
  IF ~~ THEN REPLY #38338 /* ~"Víš o *jakémkoliv* způsobu, jak ti vrátit tvůj hlas?"~ */ GOTO 21
  IF ~~ THEN REPLY #38339 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38340 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #38224 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #38225 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #38226 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #38227 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from: 2.2 16.0
  SAY #38228 /* ~Zavrtí hlavou s tváří plnou zklamání. Najednou se na tebe prosebně podívá, jako by očekávala nějakou odpověď.~ */
  IF ~  Global("Ecco_Name","AR0605",0)
~ THEN REPLY #38349 /* ~"Abych se mohl zeptat na tvůj hlas, budu potřebovat znát tvé jméno..."~ */ GOTO 22
  IF ~  Global("Ecco_Name","AR0605",1)
~ THEN REPLY #38350 /* ~"Abych se mohl zeptat na tvůj hlas, budu potřebovat znát tvé jméno. Je tvé jméno 'Ecco?'"~ */ DO ~SetGlobal("Ecco_Name","AR0605",2)
~ JOURNAL #66705 /* ~Ujistil jsem se, že 'mlčící' prostitutka se jmenuje Ecco.~ */ GOTO 6
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38351 /* ~Přísahej: "Slibuji, že najdu způsob jak ti vrátit tvůj hlas."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ecco_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38352 /* ~"Pokusím se najít způsob jak ti vrátit tvůj hlas."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",1)
~ GOTO 23
  IF ~  Global("Ecco_Name","AR0605",2)
~ THEN REPLY #38353 /* ~"Mohu se pokusit vrátit ti tvůj hlas... za nějakou cenu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ecco_1","GLOBALGood",-1)
SetGlobal("Ecco_Speak","GLOBAL",3)
SetGlobal("Ecco_Quest","AR0605",2)
~ GOTO 24
  IF ~~ THEN REPLY #38354 /* ~"Já... raději půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #38229 /* ~Mračíc se, pokrčí rameny.~ */
  IF ~~ THEN REPLY #38357 /* ~"Raději se zeptám někoho jiného. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 6.0 6.1 21.2 21.3
  SAY #38230 /* ~Ecco pomalu přikývne, usmívajíc se na tebe očima plnýma vděku.~ */
  IF ~~ THEN REPLY #38358 /* ~"Pak tedy najdu něco, co ti vrátí tvůj hlas. Sbohem, Ecco."~ */ JOURNAL #66726 /* ~Řekl jsem Ecco že se pokusím najít způsob, jak jí vrátit řeč.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 6.2 21.4
  SAY #38231 /* ~Ecco se zamračí a pohlédne na tebe přimhouřenýma očima. Na moment se podívá pryč, povzdechne si a pak přikývne.~ */
  IF ~~ THEN REPLY #38359 /* ~"Dohodnuto - najdu něco, co ti vrátí tvůj hlas. Sbohem."~ */ JOURNAL #66726 /* ~Řekl jsem Ecco že se pokusím najít způsob, jak jí vrátit řeč.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 37 45 46 even though they appear after this state */
~  Global("Ecco_Name","AR0605",2)
~ THEN BEGIN 25 // from:
  SAY #38232 /* ~Když se přiblížíš, Ecco se jemně ukloní a její pečlivě namalované rty vytvoří nepatrný úsměv.~ */
  IF ~~ THEN REPLY #38360 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38361 /* ~"Jenom procházím kolem, Ecco. Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 37 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #38233 /* ~Ecco na tebe nadějně vzhlédne, kousajíc se přitom do spodního rtu.~ */
  IF ~  PartyHasItem("Ftongue")
~ THEN REPLY #38362 /* ~"Sehnal jsem pro tebe tenhle fiendský jazyk..."~ */ DO ~DestroyPartyItem("Ftongue",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",4)
~ GOTO 31
  IF ~~ THEN REPLY #38364 /* ~"Stále jsem ještě nenašel způsob jak ti vrátit zpět tvůj hlas. Vrátím se až ho najdu."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38235 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.10 2.12
  SAY #38236 /* ~Zakroutí hlavou, pokrčí rameny a omluvně na tebe pohlédne.~ */
  IF ~~ THEN REPLY #38368 /* ~"Dovol mi tedy, abych se zeptal na něco jiného..."~ */ GOTO 2
  IF ~~ THEN REPLY #38369 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 2.9 2.11
  SAY #38237 /* ~Ecco zavrtí hlavou. "Ne, nemám ponětí. Mluvil's s Nenny? Pořád se tu někde potuluje a všechno sleduje těma svýma velkýma očima."~ */
  IF ~~ THEN REPLY #38370 /* ~"Mám další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38371 /* ~"Už se musím rozloučit; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.0
  SAY #38238 /* ~Zdvihne obočí a skepticky se na tebe podívá.~ */
  IF ~~ THEN REPLY #38372 /* ~"Bylo mi řečeno, že pokud ho vložíš do úst, vrátí se ti schopnost komunikovat."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38239 /* ~Přikývne a vezme si od tebe tu láhev. Opatrně vyjme vytržený jazyk ze slaného roztoku, na chvíli na něj s odporem hledí a pak si jej vloží do úst... najednou se jí rozšíří oči a zpoza rtů jí vybuchne záblesk rudého světla!~ */
  IF ~~ THEN REPLY #38373 /* ~"Jsi v pořádku?"~ */ GOTO 33
  IF ~~ THEN REPLY #38374 /* ~Počkej na její odpověď.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38240 /* ~Ecco otevře ústa, zavře je, znovu je otevře... a promluví! "Já... já mohu opět mluvit! Och, to je krása! Já-ZATRATÍM TĚ DO NEJTEMNĚJŠÍHO Z ŽALÁŘŮ, TY SMRADU ZBAVENÝ ČERVE! POKORNĚ PŘEDE MNOU POKLEKNI, HMYZE!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 403
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #38375 /* ~"Co?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #38241 /* ~Ecco vyjekne a oběma rukama si zakryje ústa... její oči jsou rozšířeny zděšením.~ */
  IF ~~ THEN REPLY #38376 /* ~"To musí být tím... fiendským jazykem..."~ */ JOURNAL #66729 /* ~Dal jsem Ecco fiendský jazyk, o kterém mi Vrischika řekla, že dá jakémukoli stvoření schopnost mluvit. Ale výsledky nebyly zrovna uspokojující... jazyk toho má zřejmě spoustu, co by mi chtěl říct a Ecco z toho radost nemá. Teď musím najít *něco* jiného, co vedlejší účinky odstraní... možná, že je na místě další návštěva u Vrischiky.~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38242 /* ~Pomalu si dá ruce pryč z úst a přikývne. "Zdá se, že musím POZŘÍT TVOU CHATRNOU SKOŘÁPKU A ODESLAT TVOJI DUŠI NA VĚČNOST DO PEKEL! BUDEŠ SLOUŽIT JAKO MŮJ OTROK DOKUD SFÉRY NEZMIZÍ V ZÁNIKU! JSI MŮJ, MŮJ, MŮ-" Ecco si znovu zacpe ústa a začne slabě, potichu plakat.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #66730 /* ~"Počkej... zkus použít Devovy slzy... ty by měly ten jazyk uklidnit..."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~Dal jsem Ecco Slzy devy, které uklidnily kletby fiendského jazyka, takže Ecco teď může zase normálně mluvit. Teď mi konečně může odpovědět na všechny otázky, které pro ni mám...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #66731 /* ~"Počkej... Myslím, že jsem v obchodě s kuriozitami zahlédl něco, co by ti mohlo pomoci: Slzy devy. Ale jsou drahé..."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~Řekl jsem Ecco o Devových slzách, které jsem viděl v obchodě s kuriozitami. Dala mi směnku, ať jí je můžu koupit.~ */ GOTO 39
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",1)
~ THEN REPLY #38377 /* ~"Pokusím se nalézt způsob jak dát věci do pořádku - možná že Vrischika bude mít něco jiného co ti pomůže. Sbohem."~ */ EXIT
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38378 /* ~"No, zase můžeš mluvit... jistým způsobem... takže, kde je moje odměna?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ecco_1","GLOBALLaw",-1)
~ GOTO 36
  IF ~  Global("CW_Saw_Tears","GLOBAL",0)
!PartyHasItem("Dtears")
Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38379 /* ~"Předpokládám, že nedostanu slíbenou odměnu dokud tohle nenapravím. Vrátím se... možná že Vrischika bude mít něco jiného co ti pomůže. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.3
  SAY #38243 /* ~Ecco tě probodne pohledem a zkřiví rty do posměšku.~ */
  IF ~~ THEN REPLY #38380 /* ~"Předpokládám, že nedostanu svou slíbenou odměnu dokud tohle nenapravím. Vrátím se... možná že Vrischika bude mít něco jiného co ti pomůže. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 45 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",4)
~ THEN BEGIN 37 // from:
  SAY #38244 /* ~Ecco ti přikývne na pozdrav s nadějným pohledem v očích.~ */
  IF ~  PartyHasItem("Dtears")
~ THEN REPLY #38381 /* ~"Přinesl jsem ti tyhle Deviny Slzy... měly by odstranit to prokletí jazyka."~ */ DO ~DestroyPartyItem("Dtears",FALSE)
SetGlobal("Ecco_Speak","GLOBAL",5)
AddexperienceParty(30000)
~ JOURNAL #66732 /* ~Dal jsem Ecco Slzy devy, které uklidnily kletby fiendského jazyka, takže Ecco teď může zase normálně mluvit. Teď mi konečně může odpovědět na všechny otázky, které pro ni mám...~ */ GOTO 38
  IF ~  Global("CW_Saw_Tears","GLOBAL",1)
!PartyHasItem("Dtears")
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38382 /* ~"Ecco... našel jsem způsob jak ti pomoci... Deviny Slzy, ve starožitnictví u Vrischiky. Ale jsou poněkud drahé..."~ */ DO ~SetGlobal("Ecco_Note","AR0605",1)
GiveItemCreate("EcNote",Protagonist,1,0,0)
~ JOURNAL #66733 /* ~Řekl jsem Ecco o Devových slzách, které jsem viděl v obchodě s kuriozitami. Dala mi směnku, ať jí je můžu koupit.~ */ GOTO 39
  IF ~~ THEN REPLY #38383 /* ~"Ještě jsem nenašel způsob jak ti pomoct... až ho najdu, vrátím se."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.0 37.0
  SAY #38245 /* ~Přikývne a usmívajíc se lahvičku si od tebe vezme. Pak nanese několik třpytících se modrých kapek na svůj jazyk: "Já... Já myslím, že Slzy fungují. Ano... fungují! Znovu mohu mluvit svým vlastním hlasem - och, děkuji ti!" Ecco ti stiskne ruku a vděčně skloní hlavu. Její oči jsou štěstím plné slz.~ */
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38384 /* ~"Bylo mi potěšením ti pomoci. Sbohem, Ecco."~ */ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38385 /* ~"Bylo mi potěšením ti pomoci. Sbohem, Ecco."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_2","GLOBALGood",1)
~ EXIT
  IF ~  Global("Ecco_Quest","AR0605",1)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"Rád jsem pomohl... ale Deviny Slzy mě něco stály..."~ */ DO ~GivePartyGold(1000)
~ GOTO 40
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38387 /* ~"Bylo mi potěšením... a zapomeň na tu odměnu, Ecco. Jsem rád, že jsem ti mohl pomoct."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
GivePartyGold(1000)
~ GOTO 41
  IF ~  Global("Ecco_Quest","AR0605",2)
Global("Ecco_Note","AR0605",1)
~ THEN REPLY #38388 /* ~"Bylo mi potěšením... a zapomeň na tu odměnu, Ecco. Jsem rád, že jsem ti mohl pomoct."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ecco_1","GLOBALGood",1)
~ GOTO 42
  IF ~  Global("Ecco_Quest","AR0605",2)
~ THEN REPLY #38389 /* ~"Jasně, není zač... a teď k mé odměně..."~ */ DO ~GivePartyGold(500)
~ GOTO 43
END

IF ~~ THEN BEGIN 39 // from: 35.1 37.1
  SAY #38246 /* ~Ecco přikývne a vytáhne ze svých šatů útržek papíru... zdá se, že je to dlužní úpis na částku jeden tisíce mincí, který si vlastník může vybrat z Nevěstince. Podívá se na tebe tázavým pohledem.~ */
  IF ~~ THEN REPLY #38390 /* ~"Jo... to bude stačit. Vrátím se až budu mít ty Slzy, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #38247 /* ~"Och... na to sem nepomyslela! Ano, ano... tady..." Ecco vytáhne ze svého měšce několik do pergamenu zabalených roliček měděných mincí. "Tohle by mělo být více než dost. A ještě jednou, děkuji!" Hřejivě se na tebe usměje.~ */
  IF ~~ THEN REPLY #66735 /* ~"Jasně. Mám teď ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #38391 /* ~"Sbohem, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.3
  SAY #38248 /* ~Ecco radostně přikývne: "Ještě jednou děkuji!" Stoupne si blíž, aby ti mohla pošeptat do ucha, vůně jejích naparfémovaných vlasů je omamující... "Váš vzhled je v rozporu s vaší velkou dobrosrdečností, pane." Políbí tě na tvář, odstoupí a sáhne do svého měšce. "Tady příteli... tohle by mělo dozajista vynahradit cokoliv co jsi za Slzy zaplatil. Trvám na tom, aby sis to vzal."~ */
  IF ~~ THEN REPLY #66736 /* ~"Děkuju. Mám teď ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #38392 /* ~"Díky, Ecco. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.4
  SAY #38249 /* ~Ecco radostně přikývne: "Ještě jednou děkuji!" Stoupne si blíž, aby ti mohla pošeptat do ucha, vůně jejích naparfémovaných vlasů je omamující... "Váš vzhled je v rozporu s vaší velkou dobrosrdečností, pane" zašeptá a políbí tě na tvář.~ */
  IF ~~ THEN REPLY #66737 /* ~"Děkuju. Mám teď ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #38393 /* ~"Díky, Ecco. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 38.5
  SAY #38250 /* ~Ecco přikývne a otře si zbylé slzy. Sáhne do svého měšce a vytáhne několik roliček v pergamenu zabalených měděných mincí. "Vaše odměna, pane... a právem zasloužená."~ */
  IF ~  Global("Ecco_Note","AR0605",0)
~ THEN REPLY #38386 /* ~"Rád jsem pomohl... ale Deviny Slzy mě něco stály..."~ */ DO ~GivePartyGold(999)
SetGlobal("Ecco","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #66738 /* ~"Děkuju. Mám teď ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #38395 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #38251 /* ~Přikývne. "Jistě." Její hlas pozbyde přátelskost. "Tady máš." Předá ti několik dalších rolí mincí.~ */
  IF ~~ THEN REPLY #66739 /* ~"Děkuju. Mám teď ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #38396 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  Global("Ecco_Speak","GLOBAL",5)
GlobalLT("Ecco","GLOBAL",3)
~ THEN BEGIN 45 // from:
  SAY #38252 /* ~Ecco na tebe radostně zamává. "Zdravím vás, pane, a ráda vás znovu potkávám!"~ */
  IF ~~ THEN REPLY #38397 /* ~"Ahoj, Ecco... měl bych nějaké dotazy..."~ */ GOTO 2
  IF ~~ THEN REPLY #38398 /* ~"No nazdar, Ecco. Jenom sem procházel kolem; sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ecco_Speak","GLOBAL",5)
Global("Ecco","GLOBAL",3)
~ THEN BEGIN 46 // from:
  SAY #38253 /* ~Ecco chladně přikývne na pozdrav.~ */
  IF ~~ THEN REPLY #38399 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38400 /* ~"Jenom procházím. Sbohem, Ecco."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.5
  SAY #38254 /* ~"Nevěstinec je taková škola, kde mladé ženy... 'prostitutky'..." křivě se na tebe usměje "...studují umění řeči a všech jejích jemností a záludností. Jak by řekla naše paní Grace, většinou na přímé cestě stát se Vnímavým. Nevěstinec funguje za podpory svých mnoha patronů, kteří sem chodí vyhledávat něco daleko obyčejnějšího, fyzické potěšení ve společnosti ženy."~ */
  IF ~~ THEN REPLY #38401 /* ~"Vnímavým?"~ */ GOTO 55
  IF ~~ THEN REPLY #38402 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #38403 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 2.7
  SAY #38255 /* ~Ecco přikývne a ztiší hlas: "Vlastně vím... nejen že existuje, ona má i *děti!*"~ */
  IF ~~ THEN REPLY #38404 /* ~"Ona *co?*"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~mi řekl, že Ravel má žijící děti... a že jedna z prostitutek v Nevěstinci, Kesai Serris mezi ně patří. Také mi řekla, že Kesai odmítá 'přijmout fakt,' že není ochotná to přiznat.~ */ GOTO 49
  IF ~~ THEN REPLY #38405 /* ~"Kde bych je našel?"~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",1)
~ JOURNAL #66734 /* ~mi řekl, že Ravel má žijící děti... a že jedna z prostitutek v Nevěstinci, Kesai Serris mezi ně patří. Také mi řekla, že Kesai odmítá 'přijmout fakt,' že není ochotná to přiznat.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #38256 /* ~"Jedno z nich je v tuto chvíli zde... Kesai-Serris. Ona je Ravelino dítě i když se jí oškliví to přiznat. Kdo by ji mohl obviňovat?" Na chvíli se zamyslí. "Nikdy jsem ji nedostala k tomu, aby to přiznala, ale přesto jsem si jistá, že je to pravda."~ */
  IF ~~ THEN REPLY #38406 /* ~"Zajímavé. Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #38407 /* ~"Fascinující. Díky, Ecco; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #38257 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.4
  SAY #38258 /* ~"Jsem tady studentkou, stejně jako všechny 'prostitutky.' Snažíme se lépe porozumět umění řeči, abychom mohly stimulovat mysl... abychom zvýšily uvědomění si jak nás samých, tak i ostatních a abychom vytvořily nové možnosti vcítění se do druhých." Odmlčí se, ztracena v myšlenkách.~ */
  IF ~~ THEN REPLY #38411 /* ~"Pokračuj..."~ */ GOTO 52
  IF ~~ THEN REPLY #38412 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38413 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #38259 /* ~"Tedy... Neměla jsem možnost promluvit tak *dlouho*. Většina patronů ke mně přicházela, neboť hledali někoho, kdo by jim naslouchal, někoho pozorného a schopného jim porozumět. Někoho, ke komu mohli promlouvat, aniž by je přerušoval. Nyní, když opět mohu mluvit, zajímalo by mě, jestli nenadešel čas, abych pokračovala jinou cestou... opustila Nevěstinec a stala se Vnímavou."~ */
  IF ~~ THEN REPLY #38414 /* ~"Vnímavou?"~ */ GOTO 55
  IF ~~ THEN REPLY #38415 /* ~"Zajímavé. Dovol mi abych se zeptal na něco jiného..."~ */ GOTO 2
  IF ~~ THEN REPLY #38416 /* ~"Možná. Sbohem, Ecco."~ */ EXIT
  IF ~~ THEN REPLY #38417 /* ~"Přeji ti jen to nejlepší ať už zvolíš jakoukoliv cestu, Ecco. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.13
  SAY #38260 /* ~Zmateně se na tebe podívá a pak zavrtí hlavou.~ */
  IF ~  Global("Ecco_Speak","GLOBAL",0)
~ THEN REPLY #38418 /* ~"Můžeš mluvit?"~ */ DO ~SetGlobal("Ecco_Speak","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #38419 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38420 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 2.14
  SAY #38261 /* ~Ecco vypadá udiveně. "Já... nevím o žádné desáté studentce. Možná je nová? Jestli je tu nějaká další, ještě jsem ji nepotkala."~ */
  IF ~~ THEN REPLY #38421 /* ~"Mám nějaké jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38422 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.0 52.0
  SAY #38262 /* ~"Člen Společnosti Vjemu. Chceš-li vědět víc, zeptej se Fall-from-Grace nebo někoho v Městské hale."~ */
  IF ~~ THEN REPLY #38423 /* ~"Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #38424 /* ~"To je vše co jsem chtěl vědět. Sbohem."~ */ EXIT
END
