// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEIVENE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DEIVENE~

IF ~  Global("EiVene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3404 /* ~Vidíš nevelkou ženu se sinalými rysy. Povislé maso na jejích tvářích způsobuje, že vypadá, jako by hladověla. Právě rozřezává tělo před sebou, prsty se rýpe v hrudi.~ */
  IF ~~ THEN REPLY #3406 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #3407 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #3410 /* ~Žena neodpovídá... má zřejmě spoustu práce s tělem před ní. Když ji chvíli pozoruješ, náhle sis všiml jejích rukou... její prsty jsou jako drápy. Poletují v hrudníku mrtvoly jako nože a odstraňují orgány.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3412 /* ~"Řekl jsem: Zdravím."~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3413 /* ~"Řekl jsem: Zdravím."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3414 /* ~"Co to máš s rukama?"~ */ GOTO 2
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3415 /* ~"Co to máš s rukama?"~ */ GOTO 19
  IF ~~ THEN REPLY #3416 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2
  SAY #3417 /* ~Žena neodpovídá.~ */
  IF ~~ THEN REPLY #3418 /* ~Zaťukej jí na rameno, získej její pozornost.~ */ DO ~FaceObject(Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #3419 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #3420 /* ~Žena neodpovídá.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 55
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #3421 /* ~Žena poskočila a otočila se k tobě... její oči jsou hnilobně žluté, z malými oranžovými tečkami. Když tě uviděla, její výraz se změnil z překvapeného na podrážděný. Zamračila se na tebe.~ */
  IF ~~ THEN REPLY #3422 /* ~"Uh... zdravím."~ */ DO ~SetGlobal("EiVene","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #3423 /* ~Vypadá to, že tě neslyšela. Naklonila se dopředu, šilhajíc, jako by tě neviděla... ať už má s očima cokoli, je příšerně krátkozraká. "Ty-" Cvakla drápatýma rukama a pak udělala rukou podivný pohyb. "Najdi NIT a BALZAMOVACÍ tekutinu, dones to SEM, dones to Ei-Vene. Jdi - jdi - jdi."

POZNÁMKA: dostal jsi úkol. Úkoly jsou zobrazeny v tvém deníku.~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3424 /* ~Dej jí nit a balzamovací tekutinu.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #37701 /* ~V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy, navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Ukázalo se, že už jsem obojí našel, tak jsem jí to dal. ~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3425 /* ~"Nejdřív mám nějaké otázky..."~ */ JOURNAL #37702 /* ~V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3426 /* ~"Nejdřív mám nějaké otázky..."~ */ JOURNAL #37702 /* ~V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností ~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3427 /* ~"Co to máš s rukama?"~ */ JOURNAL #37702 /* ~V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností ~ */ GOTO 6
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3428 /* ~"Co to máš s rukama?"~ */ JOURNAL #37702 /* ~V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností ~ */ GOTO 20
  IF ~~ THEN REPLY #3429 /* ~Odejdi.~ */ JOURNAL #37702 /* ~V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.3
  SAY #3430 /* ~Otočila se od tebe... nejeví známky, že by tě slyšela. Její sluch musí být stejně špatný jako zrak.~ */
  IF ~~ THEN REPLY #3431 /* ~Zaťukej jí na rameno, získej její pozornost.~ */ GOTO 17
  IF ~~ THEN REPLY #3432 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 17.0
  SAY #3433 /* ~Bez ztráty rytmu Ei-Vene popadla nit z tvé ruky a omotala si ji kolem pařátu, potom začala zašívat hrudník mrtvoly. Vzala si balzamovací tekutinu a začala ji mazat na mrtvolu.~ */
  IF ~~ THEN REPLY #3434 /* ~Počkej.~ */ GOTO 9
  IF ~~ THEN REPLY #3435 /* ~Odejdi.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #3436 /* ~Když už se chystáš odejít, Ei-Vene promluvila: "Zůstaň. Ty další."~ */
  IF ~~ THEN REPLY #3437 /* ~Počkej.~ */ GOTO 9
  IF ~~ THEN REPLY #3438 /* ~Odejdi. Rychle.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #3439 /* ~Během minuty skončila. Cvakla pařáty a pak se otočila k tobě. K tvému překvapení natáhla ruce a přejela svými pařáty po tvé hrudi a pažích.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3440 /* ~"Uh, ne že by mi to nějak vadilo, ale, uh..."~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3441 /* ~"Uh, ne že by mi to nějak vadilo, ale, uh..."~ */ EXTERN ~DMORTE~ 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3442 /* ~Hrej si dál na zombie.~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3443 /* ~Hrej si dál na zombie.~ */ EXTERN ~DMORTE~ 59
  IF ~~ THEN REPLY #3444 /* ~Odstrč ji a jdi pryč.~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.4 12.1
  SAY #3445 /* ~Když jsi ji odstrčil, zatvářila se šokovaně. "Zomfie? Ty ne zomfie!" Ustoupila o krok, a než stačíš zareagovat, třikrát zatleskala rukou. Odpovědělo ji zvonění zvonu, které se rozléhá po celé márnici.~ */
  IF ~~ THEN REPLY #3491 /* ~"Dobrá tedy..."~ */ DO ~PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 9.2
  SAY #3446 /* ~Jak přejíždí po tvých pažích a hrudi, uvědomil sis, že zkoumá tvé jizvy. Sundala z tebe své pařáty, dvakrát s nimi zacvakala a pak se předklonila a zkoumá tetování na tvé hrudi. "Hmfff. Kdo na tebe psal? Ti z Úlu? Žádný respekt pro zomfie. Zomfie nejsou obrazy." Odfrkla si, pak šťouchla do jedné tvé jizvy. "Tenhle moc špatnej, moc jizev, žádnej balzám."~ */
  IF ~~ THEN REPLY #3447 /* ~Počkej.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #3448 /* ~Její drápy náhle sevřely nit, kterou jsi jí přinesl a s bleskovou rychlostí zaryla druhý dráp do kůže blízko jedné tvé jizvy. Je to cítit sotva víc než píchnutí od komára, ale vypadá to, že se tě žena chystá zašít.~ */
  IF ~~ THEN REPLY #3449 /* ~Nechej ji pracovat.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,1)
FullHeal(Protagonist)
SetGlobal("Ravel_EiVene","GLOBAL",1)
~ JOURNAL #38199 /* ~Poté, co jsem doručil balzamovací tekutinu a nit Ei-Vene, zašila mi moje jizvy a potřela mé tělo balzamovací tekutinou. Kupodivu se cítím... zdravější.~ */ GOTO 13
  IF ~~ THEN REPLY #3450 /* ~Odstrč ji a jdi pryč.~ */ GOTO 10
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #3451 /* ~Ei-Vene začíná šít tvé jizvy, je to podivně bezbolestné.

Když skončila, čichla si k tobě, zamračila se a pak popadla balzamovací tekutinu. Během někola minut pomazala celé tvé tělo tekutinou... a i když je to divné, cítíš se *líp*.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3452 /* ~Nechej ji pracovat.~ */ GOTO 14
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3453 /* ~Nechej ji pracovat.~ */ EXTERN ~DMORTE~ 60
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3454 /* ~Ei-Vene dokončila práci na tvém těle, znovu tě očichala a pak mávla pařátem. "Hotovo. Jdi - jdi."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3456 /* ~"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3457 /* ~"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"~ */ GOTO 24
  IF ~~ THEN REPLY #4350 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("EiVene","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #3458 /* ~Vidíš Ei-Vene. Stále se hrabe pařáty v mrtvole. Rytmus jejích pohybů ti něco připomíná, ale nedokážeš si přesně vybavit co.~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #3459 /* ~Dívej se na ní, studuj pohyby jejích rukou.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ JOURNAL #61612 /* ~Sledování, jak Ei-Vene sešívá tělo svými drápy, ve mně vyvolalo zvláštní vzpomínky... vzpomněl jsem si na podobnou operaci kdysi dávno, ale co si pamatuji, spíš jsem cosi vložil tělu *dovnitř* hrudi, místo toho, abych něco vyjmul. Myslím, že ať jsem tam vložil cokoli, bylo to proto, abych si to mohl někdy vyzvednout. Když jsem zkřížil ruce, tělo v mé paměti je zkřížilo také... a na čele mělo napsané číslo "42". ~ */ GOTO 16
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #3463 /* ~Zaťukej jí na rameno, získej její pozornost.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4351 /* ~Zaťukej jí na rameno, získej její pozornost.~ */ GOTO 22
  IF ~~ THEN REPLY #4352 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #3464 /* ~Když se díváš na pohyby Ei-Veniných rukou, cítíš v hlavě bodání a náhle se tvá vize rozostřila, rozmazala, až...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(3)
~ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 6.0 15.1 25.0 27.0
  SAY #3468 /* ~Otočila se, uviděla tě a zamračila se. "Blbý zomfie." Netrpělivě zacvakala pařáty o sebe a pak naznačila jednou rukou šití. "Najdi nit a blazamovací tekutinu, dones to sem, k Ei-Vene. Jdi-jdi-jdi."~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #3469 /* ~Dej jí nit a balzamovací tekutinu.~ */ DO ~TakePartyItemNum("Embalm",1)
TakePartyItemNum("Needle",1)
SetGlobal("EiVene_Delivery","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #38202 /* ~Doručil jsem balzamovací tekutinu a nit Ei-Vene. Netvářila se příliš vděčně. ~ */ GOTO 7
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3470 /* ~"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3497 /* ~"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"~ */ GOTO 24
  IF ~~ THEN REPLY #4357 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.0 17.1 22.0
  SAY #3471 /* ~Naklonila se kupředu, prohlédla si pohyby rukou a pak si odfrkla. Ze své róby vytáhla klíč, visící na jejím podivně zkrouceném a ostrém ukazováku. Upustila ti ho do ruky. "Dones ho pak zpátky. Jdi-jdi."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #3494 /* ~"Co to máš s rukama?"~ */ JOURNAL #38203 /* ~Přesvědčil jsem Ei-Vene, aby mi dala balzamovací klíč. ~ */ GOTO 23
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #3495 /* ~"Co to máš s rukama?"~ */ JOURNAL #38203 /* ~Přesvědčil jsem Ei-Vene, aby mi dala balzamovací klíč. ~ */ GOTO 21
  IF ~~ THEN REPLY #3496 /* ~Odejdi.~ */ JOURNAL #38203 /* ~Přesvědčil jsem Ei-Vene, aby mi dala balzamovací klíč. ~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.3
  SAY #3472 /* ~Žena neodpovídá.~ */
  IF ~~ THEN JOURNAL #38205 /* ~Balzamující Spalovačka, na kterou jsem narazil, je evidentně "tiefling", což je někdo, komu v žilách koluje krev fienda. To očividně deformuje jejich těla a v některých případech i jejich mysl. Z toho, co řekl Morte, to vypadá, že je tu okolo řada tieflingů... takže vlastně... fiendů.  ~ */ EXTERN ~DMORTE~ 56
END

IF ~~ THEN BEGIN 20 // from: 5.2 5.4
  SAY #3485 /* ~Otočila se od tebe... nejeví známky, že by tě slyšela.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 57
END

IF ~~ THEN BEGIN 21 // from: 18.1
  SAY #3486 /* ~Otočila se od tebe... nejeví známky, že by tě slyšela. Její sluch musí být stejně špatný jako zrak.~ */
  IF ~~ THEN JOURNAL #38205 /* ~Balzamující Spalovačka, na kterou jsem narazil, je evidentně "tiefling", což je někdo, komu v žilách koluje krev fienda. To očividně deformuje jejich těla a v některých případech i jejich mysl. Z toho, co řekl Morte, to vypadá, že je tu okolo řada tieflingů... takže vlastně... fiendů.  ~ */ EXTERN ~DMORTE~ 58
END

IF ~~ THEN BEGIN 22 // from: 15.2 25.1 27.1
  SAY #3493 /* ~Otočila se a uviděla tě. Zamračila se. "Blbá zomfie." Netrpělivě zacvakala pařáty o sebe. "Ty hotovej. Všechno zašitý. A teď jdi-jdi-jdi."~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
HasItem("KeyEm","EiVene")
~ THEN REPLY #3501 /* ~"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"~ */ DO ~AddexperienceParty(250)
SetGlobal("Embalm_Key_Quest","GLOBAL",2)
GiveItem("KeyEm",Protagonist)
~ GOTO 18
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!HasItem("KeyEm","EiVene")
~ THEN REPLY #3502 /* ~"Počkej chvíli." (Rukou jsi naznačil, jako bys odmykal zámek klíčem.) "Potřebuju balzamovací klíč. Máš ho?"~ */ GOTO 24
  IF ~~ THEN REPLY #4358 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.0
  SAY #3498 /* ~Otočila se od tebe... nejeví známky, že by tě slyšela. Její sluch musí být stejně špatný jako zrak.~ */
  IF ~~ THEN REPLY #3499 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.1 17.2 22.1
  SAY #4200 /* ~Naklonila se, podívala se na tvé ruce a pak si odfrkla. Zajela rukou do roucha, chvíli tam šmátrá a pak pokrčila rameny. "Není klíč." Odmávla tě pryč. "Jdi-jdi-jdi."~ */
  IF ~~ THEN REPLY #4201 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #4353 /* ~Chvíli ji pozoruješ a rytmus jejich rukou ti přivolal dvě vzpomínky - jednu, jak hraješ na nějaký strunný nástroj, možná harfu. Druhá vzpomínka je o ukradnutí peněženku. K tvému překvapení se ti v hlavě objevilo nutkání vybrat Ei-Veniny kapsy.

POZNÁMKA: Získal jsi vzpomínku. Vzpomínky ti mohou přidat další zkušenosti, dovednosti a dokonce vést později k dalším vzpomínkám.~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #4354 /* ~Zaťukej jí na rameno, získej její pozornost.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #4355 /* ~Zaťukej jí na rameno, získej její pozornost.~ */ GOTO 22
  IF ~~ THEN REPLY #4356 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.0
  SAY #63477 /* ~...stojíš před čerstvě zabitou mrtvolou, jíž posmrtná ztuhlost obdařila úsměvem; pomocí skalpelu jí bylo na lebku vyryto číslo '42'. Zombie leží na desce a ty jsi právě dokončil sešívaní hrudního koše. Něco jsi umístil dovnitř. Něco, co by mohlo být užitečné, kdybys to znovu objevil...~ */
  IF ~  Global("42_Secret","GLOBAL",0)
~ THEN REPLY #63478 /* ~Echo: "Ochraňuj tyhle věci a počkej, než se vrátím."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("42_Secret","GLOBAL",1)
~ GOTO 27
  IF ~  Global("42_Secret","GLOBAL",1)
~ THEN REPLY #63479 /* ~Echo: "Ochraňuj tyhle věci a počkej, než se vrátím."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #63480 /* ~Plně ses tomu oddal a popustil jsi uzdu dvé paměti, která se dere ven... Zkřížil jsi ruce na hrudi a, jak jsi očekával, mrtvola udělala to samé. Po chvíli zase nechala spadnout ruce podél svých boků a jakmile to udělala, vidiny se začaly zrácet... teď až zase sleduješ, jak Ei-Veniny prsty divoce kmitají.

POZNÁMKA: Vrátily se ti vzpomínky. Ty ti mohou zaručit další zkoušenosti či schopnosti a mohou tě taky nasměrovat k něčemu hodnotnému.~ */
  IF ~  Global("EiVene_Delivery","GLOBAL",0)
~ THEN REPLY #63482 /* ~Zatřes s ní, získej její pozornost.~ */ GOTO 17
  IF ~  Global("EiVene_Delivery","GLOBAL",1)
~ THEN REPLY #63481 /* ~Zatřes s ní, získej její pozornost.~ */ GOTO 22
  IF ~~ THEN REPLY #63483 /* ~Odejdi.~ */ EXIT
END
