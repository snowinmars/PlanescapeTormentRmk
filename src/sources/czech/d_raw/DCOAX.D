// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOAX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOAX~

IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3017 /* ~Vidíš železné... stvoření. Jeho velikost je neuvěřitelná - kdyby se postavil, roztříštil by střechu dobývací věže. Místností se rozléhá hromové hřmení, jak golem do něčeho buší na obrovské kovadlině. Vzduch naplňuje pach popela.~ */
  IF ~~ THEN REPLY #3019 /* ~"Zdravím."~ */ JOURNAL #67791 /* ~Našel jsem cestu do dobývací věže v Dolní Čtvrti. Uvnitř věže je železný golem, velký skoro jako samotná věž. Vyrábí tam zbraně.~ */ GOTO 3
  IF ~~ THEN REPLY #3018 /* ~Nechej golema na pokoji.~ */ EXIT
END

IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26210 /* ~Gigantický železný golem stále pracuje u své kovadliny. Jiskry, popel a oblaky syčící páry se zvedají vzhůru.~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",4)
~ THEN REPLY #26277 /* ~"Mám na tebe nějaké otázky..."~ */ GOTO 2
  IF ~  Global("Coaxmetal","GLOBAL",4)
PartyHasItem("Cube")
~ THEN REPLY #26279 /* ~"Mám pro tebe nějaké otázky..."~ */ GOTO 59
  IF ~  Global("Coaxmetal","GLOBAL",4)
!PartyHasItem("Cube")
~ THEN REPLY #26280 /* ~"Mám pro tebe nějaké otázky..."~ */ GOTO 63
  IF ~~ THEN REPLY #26281 /* ~Nechej golema být...~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.2 5.2 6.4 7.1 8.1 9.1 10.1 11.1 12.1 13.4 14.4 15.1 16.0 17.2 18.1 19.1 20.1 21.1 22.0 23.1 24.1 25.0 26.1 27.1 28.0 29.1 30.1 31.0 33.0 34.1 35.1 36.1 37.3 38.1 39.2 40.1 41.1 42.1 43.1 44.1 45.1 46.1 50.0 65.1
  SAY #26211 /* ~TY PTÁTI SE.~ */
  IF ~~ THEN REPLY #26283 /* ~"Co jsi zač?"~ */ GOTO 4
  IF ~~ THEN REPLY #26284 /* ~"Co je tohle za místo?"~ */ GOTO 17
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26285 /* ~"Co to děláš?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26286 /* ~"Proč děláš zbraně?"~ */ GOTO 7
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26287 /* ~"Můžeš mi říct něco více o tom, co děláš se zbraněmi?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26288 /* ~"Můžeš něco udělat s mými zbraněmi?"~ */ GOTO 64
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #26290 /* ~"Co víš o Válce krve?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26291 /* ~"Slyšel jsi o noční čarodějnici jménem Ravel?"~ */ GOTO 26
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26292 /* ~"Víš něco o pevnosti, které se říká Pevnost Lítosti?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",2)
Global("Coaxmetal_Gives_Cage","GLOBAL",0)
~ THEN REPLY #26294 /* ~"Potřebuju těžkou, zdobenou ptačí klec vytepanou ze železa. Nemáš náhodou takovou?"~ */ DO ~GiveItemCreate("DrmCage",Protagonist,1,0,0)
SetGlobal("Coaxmetal_Gives_Cage","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26295 /* ~"Možná jiný den. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26296 /* ~"Možná jiný den. Sbohem."~ */ GOTO 51
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #26212 /* ~Ozývá se skřípot kovu, jak se obr snaží otočit k tobě. Náhle sis povšiml, že golem je vlastně vestavěný do Obléhací věže; trámy, trubky a vzpěry probíhají jeho tělem až do zdi, dolní část jeho těla pak nahrazuje kovárnu.  ~ */
  IF ~~ THEN REPLY #26297 /* ~"Co *jsi*?"~ */ GOTO 4
  IF ~~ THEN REPLY #26298 /* ~"No, zapomeň na to. Nějak jsem zabloudil, nemám tady co dělat. Omlouvám se, že jsem tě zdržel."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #26213 /* ~JÁ BÝTI ŽELEZO. ŽELEZO OBDAROVANÉ SMYSLEM.~ */
  IF ~  Global("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26299 /* ~"Jakým smyslem?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",1)
~ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26300 /* ~"Jaký že je to ten tvůj smysl?"~ */ GOTO 5
  IF ~  GlobalGT("Coaxmetal","GLOBAL",0)
~ THEN REPLY #26301 /* ~"Jo, to už jsi říkal. Mám ještě pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #26302 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 4.0 4.1
  SAY #26214 /* ~JÁ ZDE KOVATI NÁSTROJE. NÁSTROJE JEŽ POUŽITY K ZMAŘENÍ MNOHOVESMÍRA BUDOU~ */
  IF ~  GlobalLT("Coaxmetal","GLOBAL",2)
~ THEN REPLY #26303 /* ~"To jako myslíš kovat zbraně? To je tvým smyslem?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",2)
~ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26304 /* ~"A předtím jsi říkal, že tvým smyslem je kovat zbraně...že?"~ */ GOTO 6
  IF ~  GlobalGT("Coaxmetal","GLOBAL",1)
~ THEN REPLY #26305 /* ~"Aha. Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26306 /* ~"Tak to tě nechám na pokoji, ať můžeš pracovat dál. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 5.0 5.1 9.0
  SAY #26215 /* ~KOV ON JE JAKO MASO. OBOJÍ MÍTI POTENCIÁLA V ŽILÁCH SVÝCH. KDYŽ ONI ZAHŘÁTY HORKEM A TLAKEM, POTENCIÁL ON OBJEVITI SE. JÁ MÍTI SMYSL POTENCIÁL TENTO POZVEDNOUTI, VYTÁHNOUTI VEN. JÁ UMOŽNITI POTENCIÁLOVI  PŘEDVÉSTI SE.~ */
  IF ~~ THEN REPLY #26307 /* ~"Pro koho děláš ty zbraně?"~ */ GOTO 10
  IF ~~ THEN REPLY #26308 /* ~"Proč to děláš?"~ */ GOTO 7
  IF ~  GlobalLT("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26309 /* ~"Můžeš udělat něco s mými zbraněmi?"~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",3)
~ GOTO 64
  IF ~  Global("Coaxmetal","GLOBAL",3)
~ THEN REPLY #26310 /* ~"Můžeš udělat něco s mými zbraněmi?"~ */ GOTO 64
  IF ~~ THEN REPLY #26311 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26312 /* ~"Tak to tě nechám na pokoji, ať můžeš pracovat dál. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 6.1
  SAY #26216 /* ~KOV CO TVOŘITI TĚLO MÉ ON DŘÍVE EXISTOVATI JAKO SLABÉ BOLESTI VYJÁDŘENÍ TOLIKO. ČEPELE. OŠTĚPY. SEKERY. ŠÍP HLAVICE. SKOBA V KATAPULT. Z DROBNÝCH ELEMENTŮ TĚCHTO VÁLKU UMOŽŇUJÍCÍCH JÁ BÝTI VYTEPANÁ.~ */
  IF ~~ THEN REPLY #26313 /* ~"Co se stalo?"~ */ GOTO 8
  IF ~~ THEN REPLY #26314 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26315 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26217 /* ~TYTO BOLESTI VYJÁDŘENÍ SLABÉ ONY ROZTAVENA A SLITA A TOTO TĚLO ONY ZFORMOVATI. MŮJ POTENCIÁL ON DOSTATI POVOLENO VYNOŘITI SE. TEĎ SMYSL MŮJ ON VYTÁHNOUTI POTENCIÁL VEN Z JINÝCH KOVŮ. JÁ POMÁHATI JIM.~ */
  IF ~~ THEN REPLY #26316 /* ~"Řekl jsi, že někdo roztavil ty zbraně a z jejich slitiny ukoval tvé tělo. Kdo?"~ */ GOTO 9
  IF ~~ THEN REPLY #26317 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26318 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26218 /* ~ENTROPIE ONA POVZNÉSTI MĚ ZE SFÉRICKÝCH POLÍ BITEVNÍCH.~ */
  IF ~~ THEN REPLY #26319 /* ~"A říkal jsi, že tvým smyslem je teď kovat zbraně?"~ */ GOTO 6
  IF ~~ THEN REPLY #26320 /* ~"Aha. Mám ještě další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26321 /* ~"Jo, připomeň mi, že mám, uh, entropii poděkovat, až na ni zase někdy narazím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #26219 /* ~JÁ KOVATI JE KVŮLI ENTROPII. ONI BOLEST HLEDAJÍCÍ VYJÁDŘENÍ.~ */
  IF ~~ THEN REPLY #26322 /* ~"Na co potřebuje entropie zbraně?"~ */ GOTO 11
  IF ~~ THEN REPLY #26323 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26324 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26220 /* ~ZA VĚŽÍ TOUTO, ŘÁD ON SHROMAŽĎOVATI LEGIE SVÉ. MNOHOVESMÍR ON RÁNY SVÉ LÉČITI. ZA ČAS NĚJAKÝ, SÍLA JEHO MOŽNÁ SÍLY ENTROPIE DOSÁHNOUTI.~ */
  IF ~~ THEN REPLY #26325 /* ~"Mnohovesmír je tvůj nepřítel? Proč?"~ */ JOURNAL #26107 /* ~Golem v dobývací věži prohlašuje, že samotný mnohovesmír je jeho nepřítel... a že proto pracuje v kovárně. Snaží se vyrobit zbraně, kterými bude mnohovesmír zničen.~ */ GOTO 12
  IF ~~ THEN REPLY #26326 /* ~"Aha. Mám ještě i jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26327 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26222 /* ~MNOHOVESMÍR ON DÝCHATI. ON ROZRŮSTATI. ON STAGNOVATI. ON KOVATI ŘETĚZY SVÉ KOLEM SFÉR, KRŮČKA PO KRŮČKU. ZA ČAS NĚJAKÝ, MOŽNÁ I ENTROPIE ONA SPOUTANÁ.~ */
  IF ~~ THEN REPLY #26328 /* ~"A ty jsi proti tomu, aby byla entropie svázána řetězy řádu?"~ */ GOTO 13
  IF ~~ THEN REPLY #26329 /* ~"Aha. Mám ještě jinou otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26330 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26223 /* ~KDYŽ VĚC NĚJAKÁ ONA ZAPEČETITI SE, SKRÝTI SE PŘED ZNIČENÍM VLASTNÍM, ONA TOLIKO SMRTÍ JINOU UMÍRATI.~ */
  IF ~~ THEN REPLY #26331 /* ~"Takže podle tebe je nesmrtelnost jenom jiný druh smrti?"~ */ GOTO 34
  IF ~~ THEN REPLY #26332 /* ~"Co dělá tuhle smrt horší, než jsou ostatní?"~ */ GOTO 14
  IF ~~ THEN REPLY #26333 /* ~Pravda: "S výjímkou, kdy je smrt, kterou nabízíš, násilná a nesmyslná - bez jakéhokoli významu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #26334 /* ~Pravda: "To je pravda. Tak co tě přesvědčilo, abys následoval entropii?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_2","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #26335 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26336 /* ~"Velmi zajímavé, ale to už je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2 13.3
  SAY #26224 /* ~VŠECHNY VĚCI ONI JEDNA VĚC SPOLEČNÁ. TA VĚC ONA ZVÁTI SE ÚPADEK: VÁLKA ONA NUTNÁ. SMRT ONA TAKÉ NUTNÁ. ÚPADEK NUTNÁ.~ */
  IF ~~ THEN REPLY #26337 /* ~"A kolik toho je příliš?"~ */ GOTO 15
  IF ~~ THEN REPLY #26338 /* ~"Tyhle věci mohou být nezbytné... v určitých mezích."~ */ GOTO 15
  IF ~~ THEN REPLY #26339 /* ~"Tyhle věci nejsou *nikdy* nezbytné. Podporovat je a oslavovat destrukci je špatné."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_1","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #26341 /* ~"Souhlasím. Bez těchto věcí nastává stagnace."~ */ GOTO 16
  IF ~~ THEN REPLY #26342 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26343 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #26225 /* ~HRANICE ONY NEEXISTOVATI. HRANICE TO POUZE ČÁSTI ŘETĚZŮ ŘÁDU. HRANICE ONY MUSETI BÝTI ROZTŘÍŠTĚNÁ.~ */
  IF ~~ THEN REPLY #26344 /* ~"Dokonce i když je výsledek smrt?"~ */ GOTO 16
  IF ~~ THEN REPLY #26345 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26346 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.3 15.0
  SAY #26226 /* ~VŠECHNO MUSETI UPADNOUTI POD OSTŘÍM ENTROPIE. ČAS BLÍŽITI SE, KDY ONO BUDE TŘEBA PROLOMITI STVOŘENÍ ZDI. ŘÁD BUDE ROZSEKÁN OSTŘÍM ENTROPIE. ŘETĚZY JEHO ZLOMENÁ, PŘETRŽENÁ. MNOHOVESMÍR BUDE ZMAŘEN.~ */
  IF ~~ THEN REPLY #26347 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26348 /* ~"To zní, jako by to byla zatraceně pořádná bitva... možná se tam uvidíme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.1
  SAY #26227 /* ~VĚŽ TATO, ONA STROJ DOBÝVACÍ. ONA PROLAMOVATI ZDI, KTERÉ ONY MEZI SFÉRAMI.~ */
  IF ~~ THEN REPLY #26349 /* ~"Prorazit sféry? Jak?"~ */ JOURNAL #26106 /* ~Dobývací věž má zřejmě moc prorazit stěny mezi sférami, fungujíc jako opravdová věž, jenomže v extra-dimensionálním smyslu. Útočící legie se připraví na jedné straně sférické zdi, počkají, až dobývací věž vysune most a prorazí díru do cílové sféry. Potom přes tento most do nové sféry vstupují. Věž se tak stává jakýmisi dveřmi, přes které je daná sféra přepadnuta invazní armádou. Zajímalo by mě, jakou škodu dělá věž samotným Sférám takovým probodáváním děr do mnohovesmíru.~ */ GOTO 20
  IF ~~ THEN REPLY #26350 /* ~"Pokud může tahle dobývací věž cestovat mezi sférami, proč zůstáváš tady?"~ */ GOTO 18
  IF ~~ THEN REPLY #26351 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26353 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #26228 /* ~VĚŽ, ONA POLAPENÁ V MĚSTĚ TOMTO. MĚSTO TOTO ONO KLEC, KTEROU VĚŽ NEDOKÁZATI PROLOMITI.~ */
  IF ~~ THEN REPLY #26354 /* ~"Jak se sem do města vůbec věž dostala?"~ */ GOTO 19
  IF ~~ THEN REPLY #26355 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26356 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #26229 /* ~PŘED ČASEM NĚJAKÝM VĚŽ ONA POUŽÍVANÁ K VÁLKA MEZI SFÉRAMI. JAK JÁ BYL SEM PŘIVEDEN, TO NEZNÁMO MNĚ. JAK JÁ UPRCHNOUTI MOCI, TO TAKÉ MNĚ NEZNÁMÉ.~ */
  IF ~~ THEN REPLY #26357 /* ~"Říkal jsi, že věž může prorazit mezi sféry. Jak?"~ */ JOURNAL #26106 /* ~Dobývací věž má zřejmě moc prorazit stěny mezi sférami, fungujíc jako opravdová věž, jenomže v extra-dimensionálním smyslu. Útočící legie se připraví na jedné straně sférické zdi, počkají, až dobývací věž vysune most a prorazí díru do cílové sféry. Potom přes tento most do nové sféry vstupují. Věž se tak stává jakýmisi dveřmi, přes které je daná sféra přepadnuta invazní armádou. Zajímalo by mě, jakou škodu dělá věž samotným Sférám takovým probodáváním děr do mnohovesmíru.~ */ GOTO 20
  IF ~~ THEN REPLY #26358 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26359 /* ~"To je mi líto. Nemyslím, že bych ti mohl nějak pomoci. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0
  SAY #26230 /* ~VĚŽ ONA ZAKOTVITI SE VE SFÉŘE. POTOM RÁNA ONA VYRVÁNA V MNOHOVESMÍRU A VĚŽE MOST ON OTEVŘÍTI SE. LEGIE ONY TEĎ MOCI PROJÍT DO SFÉRY JINÉHO SKRZE VĚŽ. KDYŽ SFÉRA POSLOUŽITI ENTROPIE ÚČELŮM, VĚŽ ONA ZAKOTVITI SE ZNOVU.~ */
  IF ~~ THEN REPLY #26366 /* ~"Co se stalo legiím, které používaly věž?"~ */ GOTO 21
  IF ~~ THEN REPLY #26367 /* ~"Aha. Mám ještě jiné otázky..."
~ */ GOTO 2
  IF ~~ THEN REPLY #26368 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #26231 /* ~ENTROPIE ZMAŘITI JE.~ */
  IF ~~ THEN REPLY #26369 /* ~"A co se stalo Sférám, na které věž zaútočila?"~ */ GOTO 22
  IF ~~ THEN REPLY #26370 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26371 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26232 /* ~ENTROPIE ZMAŘITI JE.~ */
  IF ~~ THEN REPLY #26372 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #26373 /* ~"Velmi zajímavé... to je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.6
  SAY #26233 /* ~TO VÁLKA SKRZE KTEROU PLÁNY BÝTI ZMAŘENY.~ */
  IF ~~ THEN REPLY #26374 /* ~"Jak dlouho to probíhalo?"~ */ GOTO 24
  IF ~~ THEN REPLY #26375 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26376 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #26234 /* ~ŽIVOTNÍ ČAS MNOHA MNOHA KOVŮ.~ */
  IF ~~ THEN REPLY #26377 /* ~"Sloužil jsi tam někdy?"~ */ GOTO 25
  IF ~~ THEN REPLY #26378 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26379 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26235 /* ~ANO. TO BÝTI TATO KOVÁRNA, JEŽ VYKOVATI ŘVOUCÍ PROJEKTILY, ONY ROZTRHATI KOUŘÍCÍ OBLAKA AVERNU. ZBRANĚ ONY TAK OSTRÉ, ŽE I VÍTR SÁM AGONII POZNATI.~ */
  IF ~~ THEN REPLY #26380 /* ~"Oh... hmm, mám ještě jednu otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26381 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 2.7
  SAY #26236 /* ~NOČNÍ ČARODĚJNICE, ONA CHTÍTI MÍSTO TOTO ZNIČITI. JEJÍ TVORBA NEJMOCNĚJŠÍ ZE ZMARU POCHÁZETI. ONA CESTU ENTROPIE SLEDOVATI.~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #26382 /* ~"Víš, co se jí stalo?"~ */ JOURNAL #26104 /* ~Golem řekl, že Ravel chtěla zničit Sigil, a že 'řád' ji potrestal a zavřel ji do vězení. Ale kde je umístěné, to nikdo netuší.~ */ GOTO 27
  IF ~~ THEN REPLY #26383 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26384 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #26237 /* ~ŘÁD ŘETĚZY SVÉ OMOTATI KOLEM NÍ. ONA DO KLECE UZAVŘENA.~ */
  IF ~~ THEN REPLY #26385 /* ~"Víš, kde je ta klec?"~ */ GOTO 28
  IF ~~ THEN REPLY #26386 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26387 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #26238 /* ~VĚZENÍ JEJÍ ONO NEZNÁMÉ VĚDOMÍ MÉMU.~ */
  IF ~~ THEN REPLY #26388 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26389 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 2.8
  SAY #26239 /* ~TO BÝTI MĚSTO STÍNŮ. PEVNOST ONA MOCNÁ TAK, ŽE ANI VĚŽ TATO NEMOCI PRORAZITI.~ */
  IF ~~ THEN REPLY #26390 /* ~"Víš o tom ještě něco víc?"~ */ JOURNAL #26096 /* ~Golem věděl o Pevnosti Žalů... řekl mi, že má zdi, které by ani dobývací věž neprorazila. Prý je to památník, co zapomněl sám na sebe a teď pomalu umírá na 'Negativně materiální sféře.'~ */ GOTO 30
  IF ~~ THEN REPLY #26391 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26392 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ GOTO 51
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #26240 /* ~TO PAMÁTNÍK, KTERÝ ON ZAPOMENOUTI SÁM SEBE. ON TEĎ ROZKLÁDATI SE V TMA, POMALU UMÍRATI MEZI OBLOHAMI NEGATIVNÍ MATÉRIE PLÁNU.~ */
  IF ~~ THEN REPLY #26393 /* ~"Víš, jak se tam dostat?"~ */ GOTO 31
  IF ~~ THEN REPLY #26394 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26395 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ GOTO 51
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #26241 /* ~NE. ~ */
  IF ~~ THEN REPLY #26396 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26397 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ GOTO 51
END

IF ~~ THEN BEGIN 32 // from: 2.9
  SAY #26242 /* ~JÁ VLASTNITI TAKOVÁ PŘEDMĚT. STAVĚČ SNŮ ON PŘIJÍTI KE MNĚ PŘED VĚKEM. ON SLÍBITI MNĚ, ŽE POBYT MŮJ VE VĚZENÍ MĚSTA TOHOTO BÝTI BLÍZKO KONCE, AŽ KLEC OPUSTITI MÉ VLASTNICTVÍ.~ */
  IF ~~ THEN REPLY #26398 /* ~"Aha. Můžeš mi to dát?"~ */ JOURNAL #26103 /* ~Od golema jsem získal klec snů. Vezmu ji zpátky za Xanderem a uvidím, jestli ji dokáže nějak využít.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #26243 /* ~ANO. TY VZÍTI TUTO KLEC A ULOŽITI ZMAR A ZPUSTOŠENÍ NA TY, KDOŽ VYTVÁŘETI UVĚZNĚNÍ TAKOVÉTO.~ */
  IF ~~ THEN REPLY #26399 /* ~"Než půjdu, mám ještě otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26400 /* ~"Děkuju ti. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 13.0
  SAY #26244 /* ~NESMRTELNOST TO SLOVO TOLIKO. VŠECHNO, CO EXISTOVATI, ONO TO TAKÉ MOCI ZEMŘÍTI.~ */
  IF ~~ THEN REPLY #26401 /* ~"Říkal jsi, že dokážeš ukovat zbraň, která dokáže zabít nesmrtelného?"~ */ GOTO 35
  IF ~~ THEN REPLY #26402 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26403 /* ~"Aha.. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #26245 /* ~KAŽDÁ VĚC ŽIVÁ MÍTI ZBRAŇ, PROTI KTERÉ ONA NEMÍTI OBRANA. ČAS. NEMOC. ŽELEZO. VINA.~ */
  IF ~~ THEN REPLY #26404 /* ~"Jak víš, kterou zbraň použít?"~ */ GOTO 36
  IF ~~ THEN REPLY #26405 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26406 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26246 /* ~JEDEN ON MUSÍ ZNÁTI NEPŘÍTELE ABY ON MOCI VYKOVATI ZBRAŇ TAKOVOUTO.~ */
  IF ~~ THEN REPLY #26407 /* ~"A jak to uděláš?"~ */ GOTO 37
  IF ~~ THEN REPLY #26408 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26409 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26247 /* ~TY ZAČÍTI S NEPŘÍTELE ÚLOMKEM. KRVE KAPKA. KRYSTALIZOVANÁ MYŠLENKA. JEDNA Z NADĚJÍ JEHO.  KAŽDÁ Z VĚCÍ TĚCHTO ONA MOCI TI ŘÍCT, JAK ON ZEMŘÍTI.~ */
  IF ~~ THEN REPLY #26410 /* ~"Co když nepřítel útočí z dálky, ze stínu a nikdy se neukáže?"~ */ GOTO 38
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #26411 /* ~"Hmm. Dokázal bys ukovat zbraň, která by mě dokázala zabít?"~ */ GOTO 45
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #26412 /* ~"Hmm. Dokázal bys ukovat zbraň, která by mě dokázala zabít?"~ */ GOTO 45
  IF ~~ THEN REPLY #26413 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26414 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #26248 /* ~TAK TEDY NEPŘÍTELE ÚLOMEK TY MUSETI POUŽÍTI.~ */
  IF ~~ THEN REPLY #26416 /* ~"Jak?"~ */ GOTO 39
  IF ~~ THEN REPLY #26417 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26418 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26249 /* ~AKCE NEPŘÍTELE TVÉHO POVĚDĚTI TO MNOHO. NEPŘÍTEL TVŮJ ON NEPŘÁTI SI UTKATI SE S TEBOU PŘÍMO. TO SLABOST BÝTI.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #26419 /* ~"Nebo... z nějakého důvodu se mi *nemůže* postavit přímo."~ */ DO ~SetGlobal("Know_Transcendent_Weakness","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #26420 /* ~"Jak jí mám využít?"~ */ GOTO 42
  IF ~~ THEN REPLY #26421 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26422 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26250 /* ~TO MOŽNOST DALŠÍ. OBĚ MOŽNOSTI ONY SLABOST ODHALOVATI.~ */
  IF ~~ THEN REPLY #26423 /* ~"Jak to mám využít?"~ */ GOTO 41
  IF ~~ THEN REPLY #26425 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26426 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26251 /* ~AKCE NEPŘÍTELE TVÉHO POVĚDĚTI, ŽE NEPŘÍTEL TVŮJ ON NEPŘÁTI SI UTKATI SE S TEBOU PŘÍMO. TO SLABOST BÝTI.~ */
  IF ~~ THEN REPLY #26427 /* ~"Jak to mám využít?"~ */ JOURNAL #26102 /* ~Golem mi dal radu týkající se nepřítele, který útočí ze stínu... řekl mi, že protivník, který se se mnou neutká přímo, má slabinu, jíž bych měl využít. Navrhl mi, ať nebojuji s nepřítelem podle jeho podmínek, ale místo toho celou bitvu přivedu za ním. Pokud existuje nějaký důvod, proč se mnou můj sok nemůže bojovat přímo, měl bych ten důvod najít a využít.~ */ GOTO 43
  IF ~~ THEN REPLY #26429 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26430 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #26252 /* ~TY POSTAVITI SE NEPŘÍTELI SVÉMU PŘÍMO. TY ZAVÉSTI BITVA K NEPŘÍTEL.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26431 /* ~"Řekl jsi, že nesmrtelnost je jenom slovo... a že vše, co žije, může zemřít. Dokázal bys vykovat zbraň, která by zabila mne?"~ */ GOTO 45
  IF ~~ THEN REPLY #26432 /* ~"Velmi dobře. Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26433 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #26253 /* ~JESTLIŽE NEPŘÍTEL ON NEPŘÁTI SI SETKÁNÍ PŘÍMÉ S OSOBOU TVOU, TY MUSETI POPŘÍTI PŘÁNÍ JEHO. TY ZAVÉSTI BITVA PŘÍMO K NEPŘÍTEL.~ */
  IF ~~ THEN REPLY #26435 /* ~"A jestliže důvod, pro který na mně nemůže zaútočit přímo, je ten, že jinou možnost prostě nemá?"~ */ JOURNAL #26095 /* ~Golem mi dal radu týkající se nepřítele, který útočí ze stínu... řekl mi, že protivník, který se neutká se mnou přímo, nebo se přímo se mnou utkat nemůže, má slabinu, jíž bych měl využít. Navrhl mi, ať nebojuji s nepřítelem podle jeho podmínek, ale místo toho celou bitvu přivedu za ním. Pokud existuje nějaký důvod, proč se mnou můj sok nemůže bojovat přímo, měl bych ten důvod najít a využít.~ */ GOTO 44
  IF ~~ THEN REPLY #26436 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26437 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #26254 /* ~JESTLI ONO TO NEDOVOLENO, UTKATI SE PŘÍMO, TY MUSETI NAJÍT DŮVOD. DŮVOD TENTO ODHALITI SLABOST.~ */
  IF ~  Global("Coaxmetal_Weapon","GLOBAL",0)
~ THEN REPLY #26438 /* ~"Řekl jsi, že nesmrtelnost je jenom slovo... a že vše, co žije, může zemřít. Dokázal bys vykovat zbraň, která by zabila mě?"~ */ GOTO 45
  IF ~~ THEN REPLY #26439 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26440 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.1 37.2 42.0 44.0
  SAY #26255 /* ~ANO. ~ */
  IF ~~ THEN REPLY #26441 /* ~"Vážně? Jak?"~ */ GOTO 46
  IF ~~ THEN REPLY #26442 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26443 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #26256 /* ~JÁ POTŘEBOVATI KAPKA KRVE TVÉ. TO VŠE.~ */
  IF ~~ THEN REPLY #26444 /* ~"Velmi dobře..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal_Weapon","GLOBAL",1)
GiveItemCreate("BladeIm",Protagonist,1,0,0)
AddexperienceParty(10000)
~ GOTO 47
  IF ~~ THEN REPLY #26445 /* ~"Možná příště. Ještě bych se chtěl zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #26446 /* ~"Jo... Aha. To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #26257 /* ~NÁSTROJ TVÉ DESTRUKCE ON BÝTI VYKOVÁN A VYCHOVÁN. ALE TO NE DOSTI.~ */
  IF ~~ THEN REPLY #26447 /* ~"Co tím myslíš?"~ */ JOURNAL #26088 /* ~Železný golem ukoval zbraň, o které řekl, že mě může zabít, ale musí být použita na správném místě, uvnitř skořápky, kde budu odříznut od Sfér. Zeptal jsem se ho, kde bych našel takové místo a on mi řekl, že neví.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #26258 /* ~MAGIE KTERÁ ONA DRŽETI SRDCE TVÉ V TLUKOTU A OPRAVOVATI MASO TVÉ, ONA SILNÁ. TY MUSETI VNOŘITI OSTŘÍ DO TĚLA TVÉHO POUZE VE SKOŘÁPCE, KTERÁ ONA ODŘÍZNOUTI TĚ OD SFÉR.~ */
  IF ~~ THEN REPLY #26448 /* ~"Proč?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26259 /* ~DŮVOD ON BÝTI NEZNÁMY MNĚ. ALE JAK ZBRAŇ TAK MÍSTO TAKOVÉ NUTNÉ OBOJÍ PRO DESTRUKCI TVOU.~ */
  IF ~~ THEN REPLY #26450 /* ~"Kde bych našel takovou skořápku, která by mě oddělila od Sfér?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #26260 /* ~TO NENÍ ZNÁMO MNĚ.~ */
  IF ~~ THEN REPLY #26454 /* ~"Mám další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #26455 /* ~"Takže půjdu takové místo nají sám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 2.11 29.2 30.2 31.1 65.3
  SAY #26261 /* ~TY STÁTI. NEŽ TY ODEJÍTI, ZDE NĚCO, CO TY MUSETI UDĚLATI.~ */
  IF ~~ THEN REPLY #26456 /* ~"Cože?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26262 /* ~TY ZRUŠITI VĚZENÍ TOTO. UVOLNITI MNĚ. SMYSL EXISTENCE MOJÍ ON NEMOCI NAPLNITI SE V KLECI TÉTO.~ */
  IF ~~ THEN REPLY #26459 /* ~"To nemůžu udělat."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 53
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26460 /* ~"Jak bych tě mohl *já* osvobodit?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26457 /* ~"Jak bych tě mohl *já* osvobodit?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #26263 /* ~TY VYSVĚTLITI.~ */
  IF ~~ THEN REPLY #26458 /* ~"Pokud z tohoto města utečeš, jenom bys přinesl válku a destrukci ostatním Sférám. Nespočet obyvatel sfér by zemřelo. Tohle nemůžu dopustit.."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_2","GLOBALGood",2)
~ GOTO 54
  IF ~~ THEN REPLY #26461 /* ~"Tvým smyslem je být tady, goleme. Tvým smyslem je sloužit mi. Dodávej mi zbraně a už nechci slyšet ani slovo o tvé 'svobodě'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_3","GLOBALGood",-2)
~ GOTO 55
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #26264 /* ~TO PROTO JÁ MUSETI BÝTI OSVOBOZENÁ. MNOHOVESMÍR ON SHROMAŽĎOVATI LEGIE SVÉ. ON LÉČITI RÁNY SVÉ. ČASEM ON MOCI DOSÁHNOUTI SÍLY ROVNÉ ENTROPIE. TO NESMĚTI STÁTI SE. K TOMU NESMĚTI DOJÍTI.~ */
  IF ~~ THEN REPLY #26462 /* ~"Nesouhlasím."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_3","GLOBALLaw",2)
~ GOTO 55
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26463 /* ~"Hmm. Rozumím ti. Jak tě můžu osvobodit?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26464 /* ~"Hmm. Rozumím ti. Jak tě můžu osvobodit?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_3","GLOBALLaw",-2)
~ GOTO 60
END

IF ~~ THEN BEGIN 55 // from: 53.1 54.0
  SAY #26265 /* ~TY POSLOUCHATI. TY SLYŠETI TO?~ */
  IF ~~ THEN REPLY #26465 /* ~"Cože?"~ */ GOTO 56
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26466 /* ~"Už není co dodat. Neosvobodím tě, Sféry nepotřebují chaos a utrpení, které bys jim přinesl. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26093 /* ~Když jsem opouštěl dobývací věž směrem k Pevnosti, golem mě požádal, ať ho uvolním z jeho vězení a umožním mu pokračovat v jeho entropické křížové výpravě po sférách. Řekl jsem mu že ne. Odčaroval mě z věže a zakázal mi znovu překročit její práh. Je to malá cena za to, že Sféry nebudou trpět.~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26467 /* ~"Už není co dodat. Tvůj smysl je tady, goleme. Budeš mi dál sloužit. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~Když jsem opouštěl dobývací věž směrem k Pevnosti, golem mě požádal, ať ho uvolním z jeho vězení a umožním mu pokračovat v jeho entropické křížové výpravě po sférách. Řekl jsem mu že ne, že jeho účelem je sloužit MNĚ a ne pobíhat po Sférách s nějakým pitomým ideálem.  Odčaroval mě z věže a zakázal mi znovu překročit její práh.~ */ GOTO 57
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #26266 /* ~TO ZVUK KOVU ZANEDBANÉHO. REZ. ZBRANĚ ONY BEZ VÝRAZU. NEZKRVAVENÉ ONY NA SFÉRICKÝCH POLÍCH BITEVNÍCH. ONY TRPĚTI. TY UVOLNITI MNĚ. UVOLNITI JE.~ */
  IF ~  Global("Good_Coaxmetal_2","GLOBAL",1)
~ THEN REPLY #26468 /* ~"Nemůžu tě uvolnit. Sféry už nepotřebují další chaos a krveprolití."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ JOURNAL #26090 /* ~Když jsem opouštěl dobývací věž směrem k Pevnosti, golem mě požádal, ať ho uvolním z jeho vězení a umožním mu pokračovat v jeho entropické křížové výpravě po sférách. Řekl jsem mu že ne. Odčaroval mě z věže a zakázal mi znovu překročit její práh. Je to malá cena za to, že Sféry nebudou trpět.~ */ GOTO 57
  IF ~  Global("Evil_Coaxmetal_3","GLOBAL",1)
~ THEN REPLY #26469 /* ~"Už není co dodat. Tvůj smysl je tady, goleme. Budeš mi dál sloužit."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_4","GLOBALGood",-3)
~ JOURNAL #26092 /* ~Když jsem opouštěl dobývací věž směrem k Pevnosti, golem mě požádal, ať ho uvolním z jeho vězení a umožním mu pokračovat v jeho entropické křížové výpravě po sférách. Řekl jsem mu že ne, že jeho účelem je sloužit MNĚ a ne pobíhat po Sférách s nějakým pitomým ideálem.  Odčaroval mě z věže a zakázal mi znovu překročit její práh.~ */ GOTO 57
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26470 /* ~"Jak bych je mohl osvobodit?"~ */ GOTO 58
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26471 /* ~"Jak bych je mohl osvobodit?"~ */ GOTO 60
END

IF ~~ THEN BEGIN 57 // from: 55.1 55.2 56.0 56.1 59.1 59.2 59.3
  SAY #26267 /* ~ŘÁD, ON UVÁZATI ŘETĚZY SVÉ KOLEM TEBE. TY BÝTI NEPŘÍTEL MŮJ A NEPŘÍTEL VŠEHO, CO ONO UMÍRATI. TY BÝTI VYPOVĚZEN Z VĚŽE TÉTO, DOKUD VĚČNOST ONA NESKONČITI!~ */
  IF ~~ THEN REPLY #26472 /* ~"Jestli to musí být takhle, tak to tak taky bude. Sbohem."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
SetGlobal("Coaxmetal","GLOBAL",5)
AddexperienceParty(12000)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 52.1 54.1 56.2
  SAY #26268 /* ~TY DÁTI MI SFÉRICKÁ KOSTKA TY MÍTI SEBOU. ONA MOCI UVOLNITI MNĚ Z MÍSTA TOHOTO.~ */
  IF ~~ THEN REPLY #26473 /* ~"Dobře. Tady máš."~ */ DO ~DestroyPartyItem("Cube",TRUE)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
GiveItemCreate("EDag",Protagonist,1,0,0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26091 /* ~Odevzdal jsem Modronskou kostku golemovi a potom nastala tma. Nevím, co se stalo, ale dobývací věž je tam stále. Mám podivný pocit, že už tam nikdy nebudu moci vstoupit. Ale na druhou stranu to vypadá, že mi golem zanechal zvláštní zbraň...~ */ EXIT
  IF ~~ THEN REPLY #26474 /* ~"Nemůžu ti to dát."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 1.1 58.1 60.1 61.1 62.1 63.0
  SAY #26269 /* ~TO BÝTI DVEŘE, KTERÉ UMOŽNITI VĚŽI TÉTO OPUSTITI MÍSTO TOTO. TY DÁTI KOSTKA SFÉRICKÁ MNĚ.~ */
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26475 /* ~"Dobře, tady máš."~ */ DO ~DestroyPartyItem("Cube",TRUE)
GiveItemCreate("EDag",Protagonist,1,0,0)
FadeToColor([20.0],0)
Wait(3)
TeleportParty("AR0500",[3530.1654],0)
FadeFromColor([20.0],0)
AddexperienceParty(12000)
IncrementGlobalOnceEx("GLOBALChaotic_Coaxmetal_1","GLOBALLaw",-5)
IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_1","GLOBALGood",-5)
SetGlobal("Coaxmetal","GLOBAL",5)
~ JOURNAL #26094 /* ~Odevzdal jsem Modronskou kostku golemovi a potom nastala tma. Nevím, co se stalo, ale dobývací věž  je tam stále. Mám podivný pocit, že už tam nikdy nebudu moci vstoupit. Ale na druhou stranu to vypadá, že mi golem zanechal zvláštní zbraň..~ */ EXIT
  IF ~  PartyHasItem("Cube")
~ THEN REPLY #26476 /* ~"I když je to takhle, nemůžu ti dát kostku. Má pro mě příliš velkou cenu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~  !PartyHasItem("Cube")
~ THEN REPLY #26477 /* ~"Nemůžu ti dát takovýto předmět. Podle toho co říkáš, je příliš mocná na to, abych ji někomu daroval. Jestli ji najdu, nechám si ji."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Coaxmetal_2","GLOBALGood",-2)
~ GOTO 57
  IF ~~ THEN REPLY #26478 /* ~"Nedám ti ji. Nemůžu tě uvolnit. Sféry nepotřebují další chaos a krveprolití..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Coaxmetal_1","GLOBALLaw",3)
IncrementGlobalOnceEx("GLOBALGood_Coaxmetal_3","GLOBALGood",3)
~ GOTO 57
END

IF ~~ THEN BEGIN 60 // from: 52.2 54.2 56.3
  SAY #26270 /* ~EXISTOVATI SFÉRICKÁ KOSTKA. ONA MOCI UVOLNITI MNĚ Z MÍSTA TOHOTO.~ */
  IF ~~ THEN REPLY #26479 /* ~"Ale... já takovou kostku nemám."~ */ GOTO 61
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26480 /* ~"Vím o takové kostce. Ale nedám ti ji.."~ */ GOTO 59
END

IF ~~ THEN BEGIN 61 // from: 60.0 63.1
  SAY #26271 /* ~TAK TY NALÉZTI KOSTKU. TY PŘINÉSTI JI SEM, DÁTI MI JI.~ */
  IF ~~ THEN REPLY #26482 /* ~"Kde bych našel takovou věc?"~ */ GOTO 62
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26483 /* ~"Vím o takové kostce. Ale nedám ti ji.."~ */ GOTO 59
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #26272 /* ~UMÍSTĚNÍ JEJÍ ONO NEZNÁMÉ MNĚ. TY NAJÍTI JI. TY PŘINÉSTI JI MNĚ.~ */
  IF ~~ THEN REPLY #26484 /* ~"Dobrá tedy. Najdu kostku a donesu ti ji."~ */ DO ~SetGlobal("Coaxmetal","GLOBAL",4)
~ JOURNAL #26097 /* ~Golem mě požádal, ať mu donesu sférickou kostku, která mu pomůže utéct z dobývací věže. Odmítá poslouchat mé otázky a požadavky, dokud mu tu kostku nepřinesu.~ */ EXIT
  IF ~  Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #26485 /* ~"Vím o takové kostce. Ale nedám ti ji.."~ */ GOTO 59
END

IF ~~ THEN BEGIN 63 // from: 1.2
  SAY #26273 /* ~KDE KOSTKA SFÉRICKÁ? ~ */
  IF ~~ THEN REPLY #26486 /* ~"Nemám ji. Ale i kdybych ji měl, nedal bych ti ji."~ */ GOTO 59
  IF ~~ THEN REPLY #26487 /* ~"Ještě tu kostku nemám, ale chci se tě zeptat na pár otázek-"~ */ GOTO 61
  IF ~~ THEN REPLY #26488 /* ~"Ještě jsem ji nenašel. Vrátím se, až ji najdu."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 2.5 6.2 6.3
  SAY #26274 /* ~TY UKÁZATI MI, CO TY MI PŘINÉSTI. JÁ PROSTUDOVATI POTENCIÁL TOHOTO A VYZKOUMATI, ZDA BOLEST OBSAŽENÁ MOCI BÝTI VYJÁDŘENÁ.~ */
  IF ~~ THEN REPLY #26489 /* ~"Dobrá tedy..."~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #26276 /* ~BÝTI HOTOVO.~ */
  IF ~~ THEN REPLY #26490 /* ~"Můžu se podívat, jaké další zbraně tady máš?"~ */ DO ~StartStore("Coax",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #26491 /* ~"Dobře. Mám další otázku..."~ */ GOTO 2
  IF ~  Global("Regret","GLOBAL",0)
~ THEN REPLY #26492 /* ~"Aha. To je vše, co jsem chtěl. Sbohem."~ */ EXIT
  IF ~  GlobalGT("Regret","GLOBAL",0)
~ THEN REPLY #26493 /* ~"Aha. To je vše, co jsem chtěl. Sbohem."~ */ GOTO 51
END
