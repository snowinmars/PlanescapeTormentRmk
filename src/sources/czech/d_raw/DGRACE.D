// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACE~

IF ~~ THEN BEGIN 0 // from:
  SAY #2850 /* ~"Zdravím. Jsem místní puritánská sukuba. Potenciálně se mohu se stát členkou tvé party, JESTLIŽE mne budeš chtít."~ */
  IF ~~ THEN REPLY #2851 /* ~"Oh, já tě budu MÍT, dobře. Později se pro tebe zastavím, tanar'ri."~ */ EXIT
  IF ~~ THEN REPLY #24998 /* ~"No tak, Grace. Nemám čas si s tebou povídat, tak si pospěš a hejbni kostrou."~ */ DO ~ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0 4.0 5.2
  SAY #6858 /* ~Fall-from-Grace kývla. "Ano, samozřejmě."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7013 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7014 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7015 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7016 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7017 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7018 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7019 /* ~"Zeptej se ho na Paní bolesti."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7020 /* ~"Zeptej se ho na Fella."~ */ GOTO 5
  IF ~~ THEN REPLY #7021 /* ~"Nevadí. Pojďme odsud."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6859 /* ~"Říká, že je 'dabus.'" Fall-from-Grace se odmlčela. "Zřídka se setkám s dabusem, který by měl jméno... nebo alespoň něco co bychom mohli rozpoznat jako jméno. Zdá se, že jsou více náchylní používat symboly."~ */
  IF ~~ THEN REPLY #7022 /* ~"Můžeš se ho zeptat na další otázky?"~ */ GOTO 1
  IF ~~ THEN REPLY #7023 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6860 /* ~"Říká, že se stará o své povinnosti." Obrátila se k tobě. "Oni tráví většinu svého času opravou a demontáží částí města. V mnoha ohledech jsou to městští správci."~ */
  IF ~~ THEN REPLY #7024 /* ~"Můžeš se ho zeptat na další otázky?"~ */ GOTO 1
  IF ~~ THEN REPLY #7025 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6861 /* ~"Předpokládám, že doufat v přesnou odpověď je poněkud troufalé."~ */
  IF ~~ THEN REPLY #7026 /* ~"Můžeš se ho zeptat na další otázky?"~ */ GOTO 1
  IF ~~ THEN REPLY #7027 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 5 // from: 1.7
  SAY #6862 /* ~Fall-from-Grace se zamračila. "Nejsem si jistá, zda by bylo moudré položit tuto otázku. To by mohlo dabuse urazit, protože Fell již není členem jejich komunity..."~ */
  IF ~~ THEN REPLY #7028 /* ~"Mohl bys es ho i přesto zeptat?"~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7029 /* ~"Prima přednáška, ale teď se ho prostě zeptej."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7030 /* ~"Můžeš se ho zeptat na další otázky?"~ */ GOTO 1
  IF ~~ THEN REPLY #7031 /* ~"Nic se neděje. Padáme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY #7186 /* ~Grace přitakala s tím, že tě nechá o samotě. "Vrátím se za chviličku." Obrací se a odchází.~ */
  IF ~~ THEN REPLY #7482 /* ~Následuj děvku...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DHARLOTN~ 32
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6474 /* ~"Nemůže o tom hovořit v přítomnosti fiendů. Myslím, že pokud je vázána smluvně, je tento projekt zákonný. A protože je vázána magií, je to pravděpodobně baatezuanského původu."~ */
  IF ~~ THEN REPLY #8000 /* ~"To jsou ale jenom dohady. Kel'lero, má Grace pravdu?"~ */ EXTERN ~DKELLERA~ 14
  IF ~~ THEN REPLY #8001 /* ~"Zajímavé, určitě si to zapamatuju. Ale teď, Kel'lero, mohla bys mi zodpovědět pár otázek?"~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6476 /* ~"Nemůže o tom hovořit v přítomnosti fiendů. Myslím, že protože je vázána smluvně, je tento projekt zákonný. A protože je vázána magií, je to pravděpodobně baatezuanského původu."~ */
  IF ~~ THEN REPLY #8002 /* ~"To jsou ale jenom dohady. Kel'lero, má Grace pravdu?"~ */ EXTERN ~DKELLERA~ 31
  IF ~~ THEN REPLY #8003 /* ~"Zajímavé, určitě si to zapamatuju. Ale teď, Kel'lero, mohla bys mi zodpovědět pár otázek?"~ */ EXTERN ~DKELLERA~ 23
END

IF ~~ THEN BEGIN 9 // from:
  SAY #6477 /* ~"Rozumím."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 36
END

IF ~~ THEN BEGIN 10 // from:
  SAY #7997 /* ~"Rozumím."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 37
END

IF ~~ THEN BEGIN 11 // from:
  SAY #11273 /* ~Fall-from-Grace klidně promluvila: "Ilquixi, souhlasím, že má matka určitě ráda uslyší, že jsem stále zdravá, že mé činy pokračují na cestě, kterou jsem si zvolila a že mí společníci jsou ti, které jsem si sama vybrala. Až se vrátíš do Abyssu, možná bys byl tak hodný a vyřídil jí to? Jsem si jistá, že odmění každého, kdo jí donese tak skvělé zprávy." Jemně se usmála.~ */
  IF ~~ THEN REPLY #11274 /* ~"Tohle je fascinující, ale mám ještě jiné otázky..."~ */ EXTERN ~DILQUIXT~ 5
  IF ~~ THEN REPLY #11275 /* ~"To stačí. Sbohem, Ilquixi."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #11404 /* ~Grace reagovala malou úklonou. "Tvá vlídná slova dojmou jakékoliv srdce, jsem si jistá, Ilquixi. Ještě pořád si musíme pamatovat, že tak mnoho lidí je více i méně, než se zdá. Byla by to škoda kdyby byli všichni odhaleni tak rychle - bylo by to dokonce velice smutné."~ */
  IF ~~ THEN REPLY #11405 /* ~"Co přesně jsi myslela, Grace?"~ */ GOTO 13
  IF ~~ THEN REPLY #11406 /* ~"Dost. Potřebuji odpověď na nějaké otázky, Ilquixi."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11410 /* ~"Tato konverzace je u konce. Sbohem, Ilquixi."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11407 /* ~"Já si myslím, že slova vyřčená v kvapu jsou často vzpomínána s lítostí - a že mnoho lidí má vlastnosti a dokonce přednosti, o nichž ostatní ani nevědí. Mnoho nás skáče na žebřík předsudků a většina si nikdy neuvědomí, že žebřík se pod nimi podlomí. Proto musíme uvažovat o našich slovech dříve, než o nás odhalí víc, než chceme."~ */
  IF ~~ THEN REPLY #11408 /* ~"Aha. Ilquixi, mám nějaké další otázky..."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11409 /* ~"Bezvadně řečeno, Grace. Sbohem, Ilquixi."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #16627 /* ~Grace přikývla. "Určitě. Podle mého je to výborný nápad."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16927 /* ~"Díky. Morte, co si o tom myslíš?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16928 /* ~"Díky. Annah? Mohla bys?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16929 /* ~"Díky. Ignusi?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16930 /* ~"Díky. Dak'kone, dokázal bys pomoci tomuto muži?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16931 /* ~"Díky. Dak'kone: pomož tomuto muži."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16932 /* ~"Díky. Nordome, myslíš, že bys mohl pomoci?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16933 /* ~"Díky. "Vhailore, mohl bys pomoci?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16934 /* ~"Díky. Ale ještě něco mi leží na srdci, Truchlící..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16935 /* ~"Díky, Grace. Sbohem, Truchlící za Stromy."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 16.0 17.1 18.3 19.3 20.0 21.12 22.12 23.13 24.13 25.13 26.12 27.9 28.9 29.0 30.3 31.3 32.0 32.2 33.1 34.3 35.1 36.3 37.0 38.3 39.3 40.3 41.3 42.3 43.12 44.5 45.0 46.0 46.2
  SAY #22578 /* ~Fall-from-Grace Přikývne. "Ano, samozřejmě."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25256 /* ~"Zeptej se ho, kdo je."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25257 /* ~"Zeptej se ho, kdo je."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25258 /* ~"Zeptej se ho, kdo je."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25259 /* ~"Zeptej se ho, co je tohle za místo."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25260 /* ~"Zeptej se ho, co je tohle za místo."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25261 /* ~"Zeptej se ho, co je tohle za místo."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25262 /* ~"Zdá se mi, že tě odněkud znám, Felle."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25263 /* ~"Zdá se mi, že tě odněkud znám, Felle."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25264 /* ~"Zdá se mi, že tě odněkud znám, Felle."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25265 /* ~"Zdá se mi, že tě odněkud znám, Felle."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25266 /* ~"Zdá se mi, že tě odněkud znám, Felle."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25267 /* ~"Zdá se mi, že tě odněkud znám, Felle."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64406 /* ~"Co máš za tím závěsem, Felle?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64407 /* ~"Co máš za tím závěsem, Felle?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64408 /* ~"Co máš za tím závěsem, Felle?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64409 /* ~"Felle, co je to tam vzadu v pokoji za rámy?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64410 /* ~"Felle, co je to tam vzadu v pokoji za rámy?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64411 /* ~"Felle, co je to tam vzadu v pokoji za rámy?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25268 /* ~"Zmínil se, že jsme se již potkali... ví snad jak jsem zemřel?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25269 /* ~"Zmínil se, že jsme se již potkali... ví snad jak jsem zemřel?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25270 /* ~"Zmínil se, že jsme se již potkali... ví snad jak jsem zemřel?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25271 /* ~"Zeptej se ho, jestli slyšel o Ravel."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25272 /* ~"Zeptej se ho, jestli slyšel o Ravel."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25273 /* ~"Zeptej se ho, jestli slyšel o Ravel."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25274 /* ~"Zeptej se ho, jestli dělal tetování na téhle roztrhané paži, kterou jsem našel."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25275 /* ~"Zeptej se ho, jestli dělal tetování na téhle roztrhané paži, kterou jsem našel."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25276 /* ~"Zeptej se ho, jestli dělal tetování na téhle roztrhané paži, kterou jsem našel."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25277 /* ~"Můžeš mi něco říct o tetováních na mém těle?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25278 /* ~"Můžeš mi něco říct o tetováních na mém těle?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25279 /* ~"Můžeš mi něco říct o tetováních na mém těle?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25280 /* ~"Můžu vidět, jaké tetování má k dispozici?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25281 /* ~"Můžu vidět, jaké tetování má k dispozici?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25282 /* ~"Můžu vidět, jaké tetování má k dispozici?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25283 /* ~"V pořádku. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #22580 /* ~"Jeho jméno je Fell." Před tím, než se k vám otočí, se Grace tak tak podívá na symbol. "Ten symbol... bílý ovál rozpůlený černým bleskem... rovněž zapsán i vně tohoto ustanovení. Myslím, že bílý kruh symbolizuje Sigil, a černý blesk..." Grace upadne v ticho. "Nejsem si jistá."~ */
  IF ~~ THEN REPLY #25284 /* ~"Hmmmm. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 15
  IF ~~ THEN REPLY #25285 /* ~"Vím. To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #22583 /* ~Grace trpělivě čeká na vysvětlení symbolů. "Tohle je jeho studio. Tady zapisuje tetování do kůží jiných." Grace se obrací zpátky k tobě a usmívá se; vypadá to, že se pase na Fellově přítomnosti. "Fell je známý po celém Sigilu jako talentovaný umělec. Plátnem jsou pro něj těla ostatních."~ */
  IF ~~ THEN REPLY #25286 /* ~"Můžu vidět, jaké tetování má k dispozici?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25287 /* ~"Hmmm. Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 15
  IF ~~ THEN REPLY #25288 /* ~"Dobře, budu si to pamatovat. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #22585 /* ~Grace soustředěně studuje symboly, pak se k tobě obrátí, věnuje ti zvláštní pohled. "Fell říká, že je to poprvé, co jsi k němu přišel, ale není to poprvé." Grace tě pohledem hodnotí. "Možná si vzpomněl, že už jste tu někdy před tím byl..." Náhle si uvědomí, co řekla a zářivě se rozesměje. "Omlouvám se... Nikdy jsem si nemyslela, že použiju vykání, když budu s někým mluvit."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25289 /* ~"Ví, kdo jsem?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25290 /* ~"Ví, kdo jsem?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25291 /* ~"Ví, kdo jsem?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25292 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 15
  IF ~~ THEN REPLY #25293 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #22587 /* ~Grace se zamračí a v zahloubání si položí ruku na bradu. "Fell říká, že tě zná... pak říká a to je zvláštní: že nemá *povoleno* vyprávět tvůj příběh." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25294 /* ~"Není 'přístupný?' Proč?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25295 /* ~"Není 'přístupný?' Proč?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25296 /* ~"Není 'přístupný?' Proč?"~ */ JOURNAL #24270 /* ~Fell řekl, že mě zná, ale nemůže mi říct můj příběh. Ale nejpodivuhodnější věc byl důvod. Řekl, že nemůže, protože 'on nemůže změnit charakter člověka'.~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25297 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 15
  IF ~~ THEN REPLY #25298 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #22591 /* ~"Omlouvá se, ale nesmí to říct." Grace se otočí k tobě, s upřeným pohledem. "Co říká dál je podivné: On říká, že *'nemůže změnit povahu člověka.'*" Jak Grace ta slova opakuje, cítíš ve své hlavě strašný tlak... jako údery librovými kladivy, až si myslíš, že ti exploduje hlava... pak, jak pronese poslední slovo, tlak se rozplyne v ozvěně.~ */
  IF ~~ THEN REPLY #25299 /* ~"Chtěl bych mu položit ještě jiné otázky..." ~ */ GOTO 15
  IF ~~ THEN REPLY #25300 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #23011 /* ~"Fell říká, že ona není žádný mýtus."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25301 /* ~"Ví, kde je?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25302 /* ~"Ví, kde je?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25303 /* ~"Ví, kde je?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25304 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25305 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25306 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25307 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25308 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25309 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25310 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25311 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25312 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25313 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25314 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #23012 /* ~Jak Grace čte symboly, její hlas temní. "Fell říká, že Ravel je v jednom z bludišť Paní."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25315 /* ~"Bludiště?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25316 /* ~"Bludiště?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25317 /* ~"Bludiště?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25318 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25319 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25320 /* ~"Může nám o ní něco říct?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25321 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25322 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25323 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25324 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25325 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25326 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25327 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25328 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #23013 /* ~Jak Grace čte symboly, její hlas temní. "Fell říká, že Ravelina vůle nebyla vůlí Paní, takže byla potrestána. Ravel byla umístěna do jednoho z bludišť Paní." Grace se otočí k tobě. "Jsi obeznámen s bludišti?"~ */
  IF ~~ THEN REPLY #25329 /* ~"Ne přesně. Jestli to můžeš vysvětlit..."~ */ GOTO 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25330 /* ~"Ano. Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25331 /* ~"Ano. Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25332 /* ~"Ano. Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25333 /* ~"Věřím mu. Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25334 /* ~"Věřím mu. Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25335 /* ~"Věřím mu. Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25336 /* ~"Ano. Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25337 /* ~"Jo. Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25338 /* ~"Ano. Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25339 /* ~"Jasně. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25340 /* ~"Ano. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25341 /* ~"Ano. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25342 /* ~"Ano. Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25343 /* ~"Jasně. To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23014 /* ~Grace spojí ruce dohromady, palce a prsty, které se dotýkají, tvoří hrubý kruh. "Paní říkala, že má Sílu vzít kousky Sigilu..." Překvapeně sleduješ, jak se strašidelný obraz Graceina malíčku oddělí od její ruky a pluje ve větru, stáčeje se do malého kruhu. "...a vytvořit bludiště."~ */
  IF ~~ THEN REPLY #25344 /* ~"Pokračuj..."~ */ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25345 /* ~"Myslím, že rozumím. Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25346 /* ~"Myslím, že rozumím. Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25347 /* ~"Myslím, že rozumím. Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25348 /* ~"Slyšel jsem dost. Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25349 /* ~"Slyšel jsem dost. Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25350 /* ~"Slyšel jsem dost. Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25351 /* ~"Rozumím. Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25352 /* ~"Chápu. Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25353 /* ~"Rozumím. Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25354 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25355 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25356 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25357 /* ~"Chápu. Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25358 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23015 /* ~Malý strašidelný kruh pluje ve větru, pak začíná pomalu rotovat. "Ten kousek Sigilu, který vezme, obsahuje vězně; pro lapeného v bludišti není východu. Může se to stát kdykoli, když jdeš dolů ulicí, skrz dveře..." Sklapne své ruce. "...a najednou jsi někde úplně jinde." Uvnitř strašidelného kruhu najednou vidíš pohyb, mihnutí, jako kdyby dovnitř někdo vstoupil.~ */
  IF ~~ THEN REPLY #25359 /* ~"Pokračuj..."~ */ GOTO 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25360 /* ~"Myslím, že rozumím. Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25361 /* ~"Myslím, že rozumím. Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25362 /* ~"Myslím, že rozumím. Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25363 /* ~"Slyšel jsem dost. Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25364 /* ~"Slyšel jsem dost. Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25365 /* ~"Slyšel jsem dost. Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25366 /* ~"Rozumím. Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25367 /* ~"Chápu. Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25368 /* ~"Chápu. Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25369 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25370 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25371 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25372 /* ~"Rozumím. Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25373 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23016 /* ~Grace pokračuje, v očích se ji zrcadlí drobounký odlesk strašidelného bludiště. "Říká se, že v každém bludišti je jeden portál, který vede ven, ale je obtížné ho nalézt. Možná tam zůstaly, aby dodávaly vězňům naději." Strašidelné bludiště se rozplyne. "Možná je to tak i tak."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25374 /* ~"Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25375 /* ~"Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25376 /* ~"Proč se Ravel zdržuje v bludišti?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25377 /* ~"Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25378 /* ~"Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25379 /* ~"Ví, jak se dostat do bludiště k Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25380 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25381 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25382 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25383 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25384 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25385 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25386 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25387 /* ~"Aha. To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #23017 /* ~Grace pozorně studuje symboly. "Fell říká, že Ravel usilovala o 'otevření Klece.'" Grace se otočí k tobě. "Tahleta 'Klec' je další jméno pro Sigil." Grace se v zahloubání zamračí. "Nemám vůbec představu, proč by se pokoušela takovou věc udělat... možná proto, že se Ravel pokoušela rozbít Sigilské zdi." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25388 /* ~"Ví, jak se k ní dostat?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25389 /* ~"Ví, jak se k ní dostat?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25390 /* ~"Ví, jak se k ní dostat?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25391 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25392 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25393 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25394 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25395 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25396 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25397 /* ~"Chtěl bych mu položit další otázku..." ~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25398 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #23018 /* ~"Fell neví, jak by mohla být nalezena. Varuje nás, abychom ji nehledali, protože..." Grace studuje poslední skupinu symbolů. "Fell říká, že Ravel je ve vlastnictví paní.'"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25399 /* ~"Co ještě ví o Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25400 /* ~"Co ještě ví o Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25401 /* ~"Co ještě ví o Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25402 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25403 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25404 /* ~"Chtěl bych mu položit další otázku..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25405 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25406 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25407 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25408 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25409 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #23019 /* ~Grace studuje symboly a s mírným znepokojením se mračí. "Fell nás varuje, abychom Ravel nehledali. Říká, že má černé srdce a že pokud žije, bude se snažit ti ublížit... a nám."~ */
  IF ~~ THEN REPLY #25410 /* ~"Tohle si zapamatuju. Chtěl bych mu položit další otázku..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25411 /* ~"Myslím, že naše setkání předpověděl osud. Sbohem."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23020 /* ~Jak se symboly zhmotňují, Grace je čte. "Fell říká, že ta paže je opravdu tvá. Ta tetování jsou jeho práce." Na chvíli zmlkne a studuje poslední skupinu. "Říká, že jedno z tetování vypovídá o době, kdy jsi svou cestu sdílel s čtyřmi dalšími."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25412 /* ~"Další čtyři?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25413 /* ~"Další čtyři?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25414 /* ~"Další čtyři?"~ */ JOURNAL #24274 /* ~Fell mi přeložil runu z mé staré ruky... povídal, že hovoří o čtyřech, jenž jednou šli mou cestou se mnou. Ti čtyři byli 'Jeden nemilovaný, který miluje toho, který nemiluje'.'Jeden, který nevidí to, co vidí ostatní a vidí, co jiní nevidí'. 'Jeden, který je dobře známý a je zavázán povinností'. 'Jeden, který je otrokem a jeho pouty jsou slova'. Řekl, že všichni byli mučeni jako já byl a při svém mučení jsem přišel na to, že ostatní trpěli také. ~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25415 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25416 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #23021 /* ~Grace čte vířivé symboly a její tvář vážní. "Na tetování je zapsaná mysl čtyř... jednoho, který miloval neopětovanou lásku, jednoho, který je slepý, ale stále vidí, jednoho... důvěrného, myslím, a posledního... otroka, jehož řetězy jsou jeho slova..." Grace upadá v ticho jak se symboly formují do článků, články do řetězu...~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25417 /* ~"Co je tohle za symbol..."~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25418 /* ~"Co je tohle za symbol..."~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25419 /* ~"Co je tohle za symbol..."~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25420 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~  False()
~ THEN REPLY #25421 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #23022 /* ~Grace jemně říká: "Trýzeň." Studuje to, pak se otočí pryč, jako by ji to působilo bolest. "Fell říká..." Nabere dech. "Že tělo ví, že trpí, dokonce i když mysl zapomene." Podívá se vzhůru,  střetne se s tvým pohledem a její oči dostanou zvláštní, azurový odstín, vypovídající o smutku a slzách. "Fell říká, že runa funguje jako magnet, přitahuje k tobě další utrápené duše."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25422 /* ~"Chtěl bych mu položit další otázku..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25423 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52609 /* ~"Mám další otázku, kterou bych mu chtěl položit..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52610 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #23023 /* ~"Paže má tetování, která už Fell zapomněl. Říká, že by ti je mohl dát zpátky na tělo, jestli chceš."~ */
  IF ~~ THEN REPLY #25424 /* ~"Dobře... Chtěl bych vidět všechna tetování co má."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25425 /* ~"Chtěl bych mu položit další otázku..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25426 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #23024 /* ~"Fell říká, že tato tetování nenapsal." Grace na chvilku přemýšlí. "Možná by byl schopný ti o nich něco říct, jestli chceš."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25427 /* ~"Paráda. Co mi o nich muže říct."~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25428 /* ~"Skvěle. Co mi o nich muže říct."~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25429 /* ~"Paráda. Co mi o nich muže říct."~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25430 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25431 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #23025 /* ~"Fell říká, že to jedno podél tvých zad jsou instrukce pro mysl, která sama sebe zapomněla, vepsané opatrnou rukou. Symbol na tvém rameni je..." Znenadání se symboly kolem Fella, s výjimkou jednoho, rozplynou.~ */
  IF ~~ THEN REPLY #25432 /* ~"Co je toto za symbol..."~ */ GOTO 46
  IF ~~ THEN REPLY #25433 /* ~"Nevadí. Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25434 /* ~"Nic se neděje. To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #23026 /* ~Grace se zamračí. "Fell říká, 'stíny.'"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25435 /* ~"Stíny?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25436 /* ~"Stíny?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25437 /* ~"Stíny?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25438 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25439 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23027 /* ~Grace se zamračí. "Fell říká, že si pro tebe přišla spousta stínů, napadly tě ze zálohy a tvé tělo zanechaly ve vlastních stopách." Znovu se podívá na symboly. "Neví, proč tě napadly."~ */
  IF ~~ THEN REPLY #25440 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25441 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23028 /* ~Grace vypadá jako hypnotizovaná kůžemi natáhnutými na rámech kolem vás, ale ovládne se a otočí, aby mohla přeložit symboly. "Tohle je jeho galerie. "Její hlas je uctivý, plný respektu. "Říká, že jsi jeho plátnem, že stejně tak jako tě obdivuje, pro tebe i smutní."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25442 /* ~"Truchlit pro mě?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25443 /* ~"Truchlit pro mě?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25444 /* ~"Truchlit pro mě?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25445 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25446 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #23029 /* ~"Říká, že na tvém těle je znamení Trýzně." Gracin hlas klesne. "Že jej vystavěli tragedie a ztráty, stejně jako kameny vystaví základy. Říká, že jsi vytrpěl hodně bolesti"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25447 /* ~"Co to znamená?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25448 /* ~"Co to znamená?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25449 /* ~"Co to znamená?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25450 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25451 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #23030 /* ~Grace nepatrně přikývne, teméř nevědomě, a pokračuje v překladu. "Fell říká, že tě obdivuje, protože ses neodevzdal porážce, přestože řetězy ztráty tě stále ještě spoutávají." Grace se otočí k tobě. "On obdivuje tvoji sílu." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25452 /* ~"Řekni mu, ať pokračuje."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25453 /* ~"Řekni mu, ať pokračuje."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25454 /* ~"Řekni mu, ať pokračuje."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25455 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25456 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #23031 /* ~"Fell říká, že všechny ztráty, cos vystál, zahrnují tento život i všechny tvé minulé životy." Grace snížila hlas a její oči se zaleskly, jako by ji to fascinovalo. "Říká, žes odhazoval životy jako když had svléká své kůže, a že zažíváš všechny druhy životů, které člověk může prožít."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25457 /* ~"Řekl ještě něco jiného?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25458 /* ~"Řekl ještě něco jiného?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25459 /* ~"Řekl ještě něco jiného?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25460 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25461 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23032 /* ~"Fell si přeje varovat tě, že..." Grace studuje další řadu symbolů. "Přeje si tě varovat, že každý z tvých životů vrhá stín na existenci." Zdá se, že o tom chvíli přemýšlí a pak pokračuje. "Říká, že budeš cestovat na místo kde se tyto stíny rozzuřily a žaly zjizvily zemi."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25462 /* ~"A... ha. Řekl ještě něco jiného?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25463 /* ~"A... ha. Řekl ještě něco jiného?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25464 /* ~"A... ha. Řekl ještě něco jiného?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25465 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25466 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #23033 /* ~"Fell říká, že bys nemněl 'podepsat cokoliv'." Grace zvedla obočí. "On neříká proč."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25467 /* ~"Skvěle."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25468 /* ~"Dobře. Myslím... hm... nepokusím se získat nic víc, než co už mám."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25469 /* ~"Dobře. Myslím... hm... nepokusím se získat nic víc, než co už mám."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25470 /* ~"Dobře. Myslím... hm... nepokusím se získat nic víc, než co už mám."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25471 /* ~"Skvěle."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25472 /* ~"Dobře. Myslím... hm... nepokusím se získat nic víc, než co už mám."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25473 /* ~"Dobře. Myslím... hm... nepokusím se získat nic víc, než co už mám."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25474 /* ~"Dobře. Myslím... hm... nepokusím se získat nic víc, než co už mám."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25475 /* ~"Skvěle."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25476 /* ~"Dobře. Myslím... hm... nepokusím se získat nic víc, než co už mám."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25477 /* ~"Dobře. Myslím... hm... nepokusím se získat nic víc, než co už mám."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25478 /* ~"Dobře. Myslím... hm... nepokusím se získat nic víc, než co už mám."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25479 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25480 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #23034 /* ~"Fell se ptá jestli se cítíš celý. Jestli se cítíš... necelý, jakkoli."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25481 /* ~Pravda: "Já... nevím. Vlastně, od té doby co jsem se probudil v Márnici, cítil jsem jako by mi něco... chybělo. Něco uvnitř."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25482 /* ~Pravda: "Já... nevím. Vlastně, od té doby co jsem se probudil v Márnici, cítil jsem jako by mi něco... chybělo. Něco uvnitř."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25483 /* ~Pravda: "Já... nevím. Vlastně, od té doby co jsem se probudil v Márnici, cítil jsem jako by mi něco... chybělo. Něco uvnitř."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25484 /* ~"To není tvoje věc."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25485 /* ~


Lež: "Cítím se úplný, jo. Proč?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25486 /* ~"Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25487 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #23035 /* ~"Fell říká, žes silný muž, když jsi toho tolik vytrpěl." Grace se obrací k tobě. "Jeho další slova jsou také má: Drž se víry; když tak učiníš, staneš se opět celým." ~ */
  IF ~~ THEN REPLY #25488 /* ~"Pokusím se. Chtěl bych mu položit další otázku..."~ */ GOTO 15
  IF ~~ THEN REPLY #25489 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 35.0
  SAY #23036 /* ~Grace řekla potichu: "Trýzeň." prozkoumává symbol, pak se otočí zpět a dívá se jako by to bylo bolestivé. "Fell říká..." Oddechuje. "Tělo si uvědomuje, že trpí i když duše to zapomíná." Zvedne hlavu, setká se s tvým upřeným pohledem a její oči mají zvláštně blankytně modrý odstín, odstín který vypovídá o smutku a slzách. "Fell říká, že ten symbol je jako magnet, přitahující jiné trýzněné duše."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25490 /* ~"Chtěl bych mu položit další otázku..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25491 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52611 /* ~"Mám další otázku, kterou bych mu chtěl položit..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52612 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~  Global("Grace","GLOBAL",0)
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #28229 /* ~Před tebou stojí nádherná žena se zlatými vlasy, v azurově modrém a fialovém oblečení, se dvěma dlouhými elegantními křídly složenými na zádech. Obhlíží místnost s lehkým úsměvem... je určitě nejkrásnější ženou, kterou jsi kdy viděl.~ */
  IF ~~ THEN REPLY #28230 /* ~"Zdravím..."~ */ GOTO 50
  IF ~~ THEN REPLY #28231 /* ~Ignoruj okřídlenou ženu a prozkoumej budovu.~ */ EXIT
END

IF ~  Global("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #28233 /* ~Fall-From-Grace se k tobě otočila, když jsi se přiblížil a lehce se usmála. "Jak ti můžu pomoci?"~ [FFG002] */
  IF ~~ THEN REPLY #28234 /* ~"Mám nějaké otázky, na které se tě chci zeptat..."~ */ GOTO 49
  IF ~~ THEN REPLY #28235 /* ~"Omlouvám se za vyrušení. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 52.4 53.0 54.1 58.2 60.2 61.2 62.1 63.3 64.2 65.1 66.2 67.2 68.1 69.1 70.0 72.1 73.1 74.0 75.1 76.1 77.0 78.5 79.4 81.1 82.3 83.1 85.1 86.1 87.2 88.2 89.1 90.4 91.3 92.2 93.0 94.4 95.3 96.3 97.3 98.4 99.5 100.5 101.5 102.4 103.4 104.2 105.1 106.1 107.2 108.1 109.3 110.3 111.2 112.2 114.1 115.1 116.0 117.4 118.5 119.4 120.5 122.4 123.3 124.3 125.2
  SAY #28236 /* ~"Ano?"~ */
  IF ~~ THEN REPLY #28237 /* ~"Kdo jsi ještě jednou?"~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,15,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28238 /* ~"Ta křídla na tvých zádech... co jsi zač?"~ */ GOTO 73
  IF ~  CheckStatLT(Protagonist,15,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28239 /* ~"Ta křídla na tvých zádech... co jsi zač?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatLT(Protagonist,15,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28240 /* ~"Ta křídla na tvých zádech... co jsi zač?"~ */ EXTERN ~DMORTE~ 276
  IF ~  CheckStatGT(Protagonist,14,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28241 /* ~"Jestli si můžu dovolit se zeptat, Fall-From-Grace, křídla na tvých zádech... ty nejsi člověk, je to tak?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28242 /* ~"Jestli si můžu dovolit se zeptat, Fall-From-Grace, křídla na tvých zádech... ty nejsi člověk, je to tak?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28243 /* ~"Jestli si můžu dovolit se zeptat, Fall-From-Grace, křídla na tvých zádech... ty nejsi člověk, je to tak?"~ */ EXTERN ~DMORTE~ 276
  IF ~~ THEN REPLY #28244 /* ~"Co je to tady za místo?"~ */ GOTO 58
  IF ~~ THEN REPLY #28245 /* ~"Přišel jsem sem hledat pomoc. Možná mi můžeš pomoci."~ */ GOTO 85
  IF ~  GlobalGT("Grace_Quest","GLOBAL",0)
~ THEN REPLY #28246 /* ~"Můžeš mi říci o děvčatech co jsou tady?"~ */ GOTO 67
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #28247 /* ~"Můžeš mi říci o Vnímavých?"~ */ GOTO 75
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #28248 /* ~"Slyšela jsi někdy o čarodějnici jménem Ravel?"~ */ GOTO 104
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28249 /* ~"Můžeš mi ještě jednou říci, co víš o Ravel?"~ */ GOTO 109
  IF ~  Global("Know_Blood_War","GLOBAL",1)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28250 /* ~"Víš něco o Válce Krve?"~ */ GOTO 94
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28251 /* ~"Promluvil jsem s devíti studentkami, jak jsi mě požádala... ale nemůžu najít tu desátou."~ */ GOTO 120
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28252 /* ~"Chtěla by ses ke mně připojit na mých cestách?"~ */ EXTERN ~DANNAH~ 165
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28253 /* ~"Chtěla by ses ke mně připojit na mých cestách?"~ */ EXTERN ~DMORTE~ 280
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28254 /* ~"Chtěla by ses ke mně připojit na mých cestách?"~ */ EXTERN ~DANNAH~ 164
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28255 /* ~"Chtěla by ses ke mně připojit na mých cestách?"~ */ GOTO 78
  IF ~~ THEN REPLY #61965 /* ~"Dneska žádné otázky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.0
  SAY #28256 /* ~Žena se otočila, když jsi ji oslovil. Změřila si tě, pak nepatrně přikývla... všiml sis, že má azurové oči, přesně stejné barvy jako jsou její šaty. "Vítej cestovateli." Pročísla si zbloudilý pramen zlatých vlasů. "Jak ti můžu pomoci?"~ [FFG004] */
  IF ~~ THEN REPLY #28257 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Grace","GLOBAL",1)
~ JOURNAL #27467 /* ~V Úřednické čtvrti jsem potkal ženu jménem Fall-From-Grace. Je to rozhodně jedna z nejkrásnějších žen, které jsem kdy viděl... ale není člověk, na zádech má pár křídel.~ */ GOTO 51
  IF ~~ THEN REPLY #28258 /* ~"Dnes nic, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #28259 /* ~"Jmenuji se Fall-From-Grace." Chvíli tě studovala. "V Sigilu jsi poprvé, že?"~ */
  IF ~~ THEN REPLY #28260 /* ~"Ano, jsem. Je to na mně vidět?"~ */ GOTO 55
  IF ~~ THEN REPLY #28261 /* ~"Ne, domnívám se, že jsem tu někdy po nějakou dobu už byl."~ */ GOTO 113
  IF ~~ THEN REPLY #28262 /* ~"Fall-From-Grace... to je zajímavé jméno."~ */ GOTO 56
  IF ~~ THEN REPLY #28263 /* ~"To není záležitost o které bych se chtěl teď bavit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 49.0
  SAY #28264 /* ~"Jmenuji se Fall-From-Grace." Lehce se usmála. "Je možné, že si na mě už nepamatuješ?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28265 /* ~"Fall-From-Grace, ujišťuji tě, že nemusíš mít žádné obavy, že bych na tebe já zapomněl. Na tebe se nedá *zapomenout*."~ */ EXTERN ~DANNAH~ 161
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #28266 /* ~"Fall-From-Grace, ujišťuji tě, že nemusíš mít žádné obavy, že bych na tebe já zapomněl. Na tebe se nedá *zapomenout*."~ */ GOTO 54
  IF ~~ THEN REPLY #28267 /* ~"Ne, vůbec ne."~ */ GOTO 54
  IF ~~ THEN REPLY #28268 /* ~"Fall-From-Grace... to je zajímavé jméno."~ */ GOTO 114
  IF ~~ THEN REPLY #28269 /* ~"Ne. Můžu se tě zeptat na nějaké další otázky?"~ */ GOTO 49
  IF ~~ THEN REPLY #28270 /* ~"Možná ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #28271 /* ~Fall-From-Grace se zasmušile podívala z jednoho na druhého. "Nechtěla jsem vás urazit. Promiňte mi mé škádlení."~ */
  IF ~~ THEN REPLY #28272 /* ~"Má paní, nic se nestalo a proto není třeba se za něco omlouvat. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28273 /* ~"Nicméně, zřejmě bude nejlepší, když odejdeme. Sbohem slečno Grace."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2
  SAY #28274 /* ~Lehce se zasmála. "Dobrá tedy, odpouštím ti."~ */
  IF ~~ THEN REPLY #28275 /* ~"Fall-From-Grace... to je velmi zajímavé jméno."~ */ GOTO 56
  IF ~~ THEN REPLY #28276 /* ~"Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28277 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.0
  SAY #28278 /* ~Nepatrně se usmála. "Ne tak moc, jak by ses mohl domnívat. Počínáš si docela dobře."~ */
  IF ~~ THEN REPLY #28279 /* ~"Co je tohle za místo?"~ */ GOTO 57
  IF ~~ THEN REPLY #28280 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 51.2 54.0
  SAY #28281 /* ~Lehce přikývla. "Jsem potěšena, že se ti líbí. Ale nemyslím, že bys podnikl tuhle dlouhou cestu, jen abys mi lichotil. S čím ti tedy mohu pomoci?"~ */
  IF ~~ THEN REPLY #28282 /* ~"Co je tohle za místo?"~ */ GOTO 57
  IF ~~ THEN REPLY #28283 /* ~"Dnes nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 56.0 113.0
  SAY #28284 /* ~"Tohle je *Nevěstinec duševních rozkoší.*" Na chvíli tě studovala pohledem. "Vsadím se, že jste neměli v úmyslu vstoupit do tohoto podniku, co?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28285 /* ~"'Nevěstinec duševních rozkoší?' Jaký druh nevěstince to je?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28286 /* ~"'Nevěstinec duševních rozkoší?' Jaký druh nevěstince to je?"~ */ GOTO 61
  IF ~~ THEN REPLY #28287 /* ~"Ne, to si nemyslím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.7
  SAY #28288 /* ~"Tohle je Nevěstinec duševních rozkoší."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28289 /* ~"'Nevěstinec duševních rozkoší?' Jaký druh nevěstince to je?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28290 /* ~"'Nevěstinec duševních rozkoší?' Jaký druh nevěstince to je?"~ */ GOTO 61
  IF ~~ THEN REPLY #28292 /* ~"Ach. Rozumím. Mohu se ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28293 /* ~"Jsem jen zvědavý. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0 58.0
  SAY #28294 /* ~"Založila jsem tento nevěstinec, abych rozdávala smyslné touhy, které zastírají mysl více cestami výrazů, než jen živočišnou žádostivostí. Při konverzaci s jinými můžeš zažít spoustu rozkoší, zapojíš-li svůj slovní um."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 275
END

IF ~~ THEN BEGIN 60 // from:
  SAY #28295 /* ~"Ujišťuji vás, že ne. Projděte si nevěstinec a uvidíte sami."~ */
  IF ~~ THEN REPLY #28296 /* ~"Takže tohle je nevěstinec... ve kterém se nesouloží?"~ */ GOTO 62
  IF ~~ THEN REPLY #28297 /* ~"Vnucuje mi to otázku: Proč jsi zřizovala takové místo?" ~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28298 /* ~"Nejspíš to udělám. Mohu se tě ale napřed na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28299 /* ~"Tak dobrá. Uděláme to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.1 58.1
  SAY #28300 /* ~"Založila jsem tento nevěstinec, abych rozdávala smyslné touhy, které zastírají mysl více cestami výrazů, než jen živočišnou žádostivostí. Při konverzaci s jinými můžeš zažít spoustu rozkoší, zapojíš-li svůj slovní um."~ */
  IF ~~ THEN REPLY #28301 /* ~"Takže tohle je nevěstinec... ve kterém se nesouloží?"~ */ GOTO 62
  IF ~~ THEN REPLY #28302 /* ~"Vnucuje mi to otázku: Proč jsi zřizovala takové místo?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28303 /* ~"Chápu. Mohu se ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28304 /* ~"Díky za vysvětlení... Ale musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 61.0
  SAY #28305 /* ~"Pouze co se duševního rázu týče. Ale zůstaň klidný, i tak je to dost vzrušující."~ */
  IF ~~ THEN REPLY #28306 /* ~"Vnucuje mi to otázku: Proč jsi zřizovala takové místo?" ~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28307 /* ~"Chápu. Mohu se ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28308 /* ~"Možná si tedy nevěstinec projdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.1 61.1 62.0
  SAY #28309 /* ~Fall-From-Grace pozvedla obočí. "To je mi podivná otázka." Zamračila se. "Nemyslím, že by se mě kdy kdo na tohle zeptal. Aspoň ne tak zpříma."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28310 /* ~"Omlouvám se, slečno Grace. Nechtěl jsem, abys to vzala osobně. Byl jsem spíše zvědavý."~ */ GOTO 64
  IF ~~ THEN REPLY #28311 /* ~"Tak... proč tedy?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28312 /* ~"No, připadá mi poněkud zvláštní, že by sukuba založila takovéhle místo... vzhledem k tvé rase bych spíše čekal opačný účel."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28313 /* ~"Mohu se ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28314 /* ~"Možná si tedy nevěstinec projdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #28315 /* ~"Ó, není třeba se omlouvat. Jsem více než ráda, že si s tebou mohu popovídat, jestli si přeješ."~ */
  IF ~~ THEN REPLY #28316 /* ~"Ano, rád bych je slyšel."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28317 /* ~"No, připadá mi poněkud zvláštní, že by sukuba založila takovéhle místo... vzhledem k tvé rase bych spíše čekal opačný účel."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28318 /* ~"Zrovna ne. Mohu se ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28319 /* ~"Snad jindy. Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1 63.2 64.0 64.1
  SAY #28320 /* ~"Část odpovědi na tvou otázku vyžaduje, abys věděl, že jsem členkou Společenstva Vjemu. Naše společenství věří, že by měl člověk poznat co možná nejvíc o Mnohovesmíru."~ */
  IF ~~ THEN REPLY #28321 /* ~"A proto jsi založila tohle místo?"~ */ GOTO 66
  IF ~~ THEN REPLY #28322 /* ~"Chápu; už nepotřebuji nic vysvětlovat. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28323 /* ~"Možná si tedy nevěstinec projdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #28324 /* ~"Tento nevěstinec je určen pro podporu tužeb i těch nejzatvrzelejších vzdělanců. Je navržen tak, aby stimuloval mysl a zvýšil člověku povědomí o něm samotném i druhých a vytvořil tak novou cestu poznání jiné osoby. Je to něco víc, než jen povrchní fyzická rozkoš která zaplňuje Úl a Dolní Čtvrti." ~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28325 /* ~"Dobrá, nebudu je nazývat pov... ech. Myslím, že tomu rozumím. Ty dámy tu musí být opravdu zvláštní."~ */ GOTO 67
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28326 /* ~"Chápu. Takže tenhle podnik podporuje spíš duševní choutky, než ehmm, no *jiné* druhy choutek. Ty dámy tu musí být opravdu zvláštní."~ */ GOTO 67
  IF ~~ THEN REPLY #28327 /* ~"Mohu se ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28328 /* ~"Možná si tedy nevěstinec projdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 49.9 66.0 66.1
  SAY #28329 /* ~"Dívky se zde snaží stát Vnímavými. Přišly za mnou při hledání instrukcí, jak se nejlépe připravit na vstup do společenství. Spousta z nich ovládá řeč tak přirozeně, že dokáží rozbít slupku většiny zatvrzelých jedinců."~ */
  IF ~~ THEN REPLY #28330 /* ~"Vnímaví?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 68
  IF ~~ THEN REPLY #28332 /* ~"Chápu. Takže ty dámy tady okolo se tu vlastně učí jak mají mluvit?"~ */ GOTO 70
  IF ~~ THEN REPLY #28333 /* ~"Mohu se ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28334 /* ~"Možná si tedy nevěstinec projdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #28335 /* ~Lehce přikývla. "Ano, jsem členkou Společenstva vjemu. Naše společenství věří, že by měl člověk poznat co možná nejvíc o Mnohovesmíru."~ */
  IF ~~ THEN REPLY #28336 /* ~"A ty dívky se zde učí, jak se stát Vnímavými?"~ */ GOTO 70
  IF ~~ THEN REPLY #28337 /* ~"Chápu; už nepotřebuji nic vysvětlovat. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28338 /* ~"Možná si tedy nevěstinec projdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #28339 /* ~"Všechny to nejspíš nedokážou. Nicméně pokud to chtějí zkusit, jsou vítány a já jim nebudu brát příležitost, připojit se k Vnímavým, pokud si to samy přejí. Mohou se koneckonců něco přiučit."~ */
  IF ~~ THEN REPLY #28340 /* ~"Chápu. Takže tohle je vlastně něco jako přípravná škola?"~ */ GOTO 70
  IF ~~ THEN REPLY #28341 /* ~"Smím se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28342 /* ~"Nejspíš si nevěstinec projdu a podívám se sám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.1 68.0 69.0
  SAY #28343 /* ~"Ano. Doufám, že nauka umění řeči a jejích jemností pomůže zákazníkům i studentkám dozvědět se více o nich samotných. Člověk je omezen pouze tím, jak umí ovládat řeč. Ve schopnosti užít řeč k vyvolání něčích emocí, je úžasná zručnost."~ */
  IF ~~ THEN REPLY #28344 /* ~"Chápu. Smím se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28345 /* ~"Nejspíš si nevěstinec projdu a podívám se sám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #28346 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #28347 /* ~"Tvá společnice má pravdu. Jsem tanar'ri, lépe řečeno sukuba." Lehce si povzdechla. "Je mi líto, ale jsme pro své vlastní dobro v Nižších sférách a vlastně kdekoliv trochu méně známí. Většina mé rasy tráví svůj čas sváděním smrtelníků různými druhy smyslností."~ */
  IF ~~ THEN REPLY #28348 /* ~"A ty...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-From-Grace řekla, že je sukuba,  "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ GOTO 74
  IF ~~ THEN REPLY #28349 /* ~"Chápu. Smím se tě ještě na něco zeptat?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-From-Grace řekla, že je sukuba,  "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ GOTO 49
  IF ~~ THEN REPLY #28350 /* ~"Musím odejít. Sbohem."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-From-Grace řekla, že je sukuba,  "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 49.1 49.4
  SAY #26918 /* ~"Jsem nižší tanar'ri, neboli přesněji sukuba." Pozvdechla si. "Obávám se, že v Nižších Sférách a vlastně kdekoli jinde příliš rozšířené. Většina členů mé rasy tráví čas sváděním smrtelníků různými rozkošemi těla."~ */
  IF ~~ THEN REPLY #26919 /* ~"A ty...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-From-Grace řekla, že je sukuba, "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ GOTO 74
  IF ~~ THEN REPLY #26920 /* ~"Aha. Můžu se tě zeptat ještě na něco?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-From-Grace řekla, že je sukuba, "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ GOTO 49
  IF ~~ THEN REPLY #26921 /* ~"Musím už jít. Sbohem."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-From-Grace řekla, že je sukuba, "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.0 73.0
  SAY #26922 /* ~"Ráda bych si myslela, že jsem se od ostatních odlišila... je to rozhodně příliš triviální a neproduktivní způsob, jak trávit čas tady v mnohovesmíru. Je toho mnohem více k prožívání, co myslíš?"~ */
  IF ~~ THEN REPLY #26923 /* ~"Možná ano. Můžu se tě zeptat ještě na něco?"~ */ GOTO 49
  IF ~~ THEN REPLY #28351 /* ~"Ano. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 49.10
  SAY #28352 /* ~"Vnímaví jsou Sigilské společenství, které je založeno na zkušenostech. Bez citů a vjemů bychom jen slepě bloudili mnohovesmírem. Proto Vnímaví vyhledávají zkušenosti jak je to jen možné - jakmile všechno zvíme, pravda mnohovesmíru se sama ukáže.~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #28353 /* ~"Zajímavá filosofie. Mohu se také stát Vnímavým?"~ */ GOTO 76
  IF ~~ THEN REPLY #28354 /* ~"Chápu. Můžu ti ještě položit pár otázek?"~ */ GOTO 49
  IF ~~ THEN REPLY #28355 /* ~"Možná to tak je. Tak či tak, musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #28356 /* ~Usmála se. "K tomu stát se Vnímavým, potřebuješ být pouze žákem života."~ */
  IF ~~ THEN REPLY #28357 /* ~"Myslel jsem tím, že bych se rád připojil k jejich společenstvu."~ */ JOURNAL #27464 /* ~Fall-From-Grace mi navrhla, ať se podívám do Městské haly, jestli se chci přidat ke Společenství Vnímavých. Někdo z nich by mi prý mohl pomoct.~ */ GOTO 77
  IF ~~ THEN REPLY #28358 /* ~"Chápu. Můžu ti ještě položit pár otázek?"~ */ GOTO 49
  IF ~~ THEN REPLY #28359 /* ~"Dobrá. Musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #28360 /* ~"Zajisté... odpusť, že tě škádlím." Přikývla Grace. "Pokud se chceš připojit k Vnímavým, poptej se v Městské hale. Tam bude určitě někdo schopen ti pomoci."~ */
  IF ~~ THEN REPLY #28361 /* ~"Chápu. Můžu ti ještě položit pár otázek?"~ */ GOTO 49
  IF ~~ THEN REPLY #28362 /* ~"Díky. Já tedy půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 49.18
  SAY #28363 /* ~"Nuže..." Lehce se pousmála. "Je to od tebe trošku arogantní."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28364 /* ~"Raději budu se svými záměry upřímný. Zdáš se mi neobyčejně milá a dobře znalá v cestách Sfér. Společník s takovým druhem zkušeností je vždy vítán."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28365 /* ~"Raději budu se svými záměry upřímný. Zdáš se mi neobyčejně milá a dobře znalá v cestách Sfér. Společník s takovým druhem zkušeností je vždy vítán."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28366 /* ~"To také jsem."~ */ GOTO 79
  IF ~~ THEN REPLY #28367 /* ~"Myslím tím, jak vzrušující to tu může být?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28368 /* ~"Patříš k Vnímavým. Určitě je nějaká mez, od které se zde už nemůžeš nic naučit."~ */ GOTO 83
  IF ~~ THEN REPLY #28369 /* ~"Pak tedy stahuji svůj návrh. Mohu se tě místo toho na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28370 /* ~"Pak tedy přijmi mou omluvu. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.2 117.1 118.0 118.2 119.1
  SAY #28371 /* ~"Vážím si tvé upřímnosti. Ale budu ti vzdorovat svou vlastní: Proč bych měla putovat s někým jako jsi ty?"~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28372 /* ~"Ty tvrdíš, že tě nezajímá cestování s nesmrtelným, který ztratil paměť a prozkoumává Sféry na vlastní pěst?"~ */ GOTO 80
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28373 /* ~"Slečno Grace, hodlám se vydat do míst, na kterých možná ještě nikdy nikdo nebyl... nebo jich nemohl dosáhnout. Zajímá tě to?"~ */ GOTO 82
  IF ~~ THEN REPLY #28374 /* ~"Jak vzrušující to tu může být?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28375 /* ~"Patříš k Vnímavým. Určitě je nějaká mez, od které se zde už nemůžeš nic naučit."~ */ GOTO 83
  IF ~~ THEN REPLY #28376 /* ~"Stahuji tedy svůj návrh. Mohu se tě místo toho na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28377 /* ~"Beru zpět svůj návrh. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0 82.0 83.0
  SAY #28378 /* ~"Oh, *nesmírně* mě to zajímá." Pravila s lehkým úsměvem. "Nechápej to špatně, takový návrh je velmi zajímavý."~ */
  IF ~~ THEN REPLY #28379 /* ~"Přidáš se tedy ke mně a budeš se mnou cestovat?"~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #28380 /* ~"Pokud si to opravdu přeješ, pak pro mne musíš něco udělat. V tomto sídle se nachází deset studujících. Chtěla bych, aby sis se všemi promluvil a poté se vrátil ke mně se svými myšlenkami. Teprve pak uvidíme, zdali budeme putovat společně, či nikoli."~ */
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28381 /* ~"Už jsem s nimi mluvil.. ale nalezl jsem jen devět žákyň. Nemohu najít desátou."~ */ JOURNAL #27463 /* ~Přesvědčíl jsem Fall-From-Grace, aby se stala mou společnicí. Dala mi podmínku: Mám si promluvit se všemi deseti jejími studentkami v Nevěstinci a pak se k ní vrátit. Už jsem mluvil s devíti z nich, ale desátá se mi stále vyhýbá.~ */ GOTO 120
  IF ~~ THEN REPLY #28382 /* ~"Dobrá. Mohu ti dát ještě pár otázek předtím než půjdu?"~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~Přesvědčíl jsem Fall-From-Grace, aby se stala mou společnicí. Dala mi podmínku: Mám si promluvit se všemi deseti jejími studentkami v Nevěstinci a pak se k ní vrátit.~ */ GOTO 49
  IF ~~ THEN REPLY #28383 /* ~"Půjdu si s nimi tedy promluvit. Jakmile si promluvím se všemi, vrátím se sem."~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~Přesvědčíl jsem Fall-From-Grace, aby se stala mou společnicí. Dala mi podmínku: Mám si promluvit se všemi deseti jejími studentkami v Nevěstinci a pak se k ní vrátit.~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 79.1
  SAY #28384 /* ~"To vskutku určitě." Položila si bradu do dlaně, chvilku přemýšlejíc. "Avšak..."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28385 /* ~"Ty tvrdíš, že tě nezajímá cestování s nesmrtelným který ztratil paměť a prozkoumává Sféry na vlastní pěst?"~ */ GOTO 80
  IF ~~ THEN REPLY #28386 /* ~"Jak vzrušující to tu může být?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28387 /* ~"Patříš k Vnímavým. Určitě je nějaká mez, od které se zde už nemůžeš nic naučit."~ */ GOTO 83
  IF ~~ THEN REPLY #28388 /* ~"Nevadí. Mohu se tě místo toho na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28389 /* ~"Přemýšlej o tom a já se za čas vrátím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 78.3 78.4 79.2 79.3 82.1 82.2 117.2 117.3 118.3 118.4 119.2 119.3
  SAY #28390 /* ~"Myslím že bys byl překvapen. Jestliže mě chceš jako společnici na svých cestách, musíš mi dát nějaký závažnější důvod, nežli tohle."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28391 /* ~"Ty tvrdíš, že tě nezajímá cestování s nesmrtelným, který ztratil paměť a prozkoumává Sféry na vlastní pěst?"~ */ GOTO 80
  IF ~~ THEN REPLY #28392 /* ~"Nevadí. Mohu se tě místo toho na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28393 /* ~"Dobrá, uvidím jestli budu moci najít nějaký závažnější důvod. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #28394 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 49.8
  SAY #28395 /* ~"Pomoc? A o jaký druh pomoci se ti jedná?"~ */
  IF ~~ THEN REPLY #28396 /* ~"Patrně jsem ztratil vzpomínky... buď jak buď, ztratil jsem sám sebe."~ */ GOTO 86
  IF ~~ THEN REPLY #28397 /* ~"Nevadí. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28398 /* ~"Možná si o tom popovídáme někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #28399 /* ~"Ty jsi byl stižen amnezií?" Pravila bolestně Fall-From-Grace. "To je děsivé! Máš nějaké tušení, jak k tomu mohlo dojít?"~ */
  IF ~~ THEN REPLY #28400 /* ~"Ani ne... nic co bych si pamatoval. Probral jsem se na stole v márnici a všechno předtím se utápí ve tmě."~ */ GOTO 87
  IF ~~ THEN REPLY #28401 /* ~"Nevadí. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28402 /* ~"Možná si o tom popovídáme někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #28403 /* ~"Ty ses probral v márnici?"~ */
  IF ~  Global("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28404 /* ~"Myslím, že si mě Sběrači spletli s mrtvým... nebo jsem byl mrtvý... nebo něco. Vše co vím je, že se mi rány hojí rychleji. Možná jsem nesmrtelný. Ale tím si nejsem úplně jistý."~ */ DO ~SetGlobal("Grace_Companion","GLOBAL",1)
~ GOTO 88
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28405 /* ~"Myslím, že si mě Sběrači spletli s mrtvým... nebo jsem byl mrtvý... nebo něco. Vše co vím je, že se mi rány hojí rychleji. Možná jsem nesmrtelný. Ale tím si nejsem úplně jistý."~ */ GOTO 88
  IF ~~ THEN REPLY #28406 /* ~"Nevadí. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28407 /* ~"Možná si o tom popovídáme někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0 87.1
  SAY #28408 /* ~Zdá se, že si tě Fall-From-Grace odhaduje se znovu obnoveným zájmem. "Ty jizvy co máš na těle." Natáhla ruku, jakoby se tě chtěla dotknout. "Mohu?"~ */
  IF ~~ THEN REPLY #28409 /* ~"Oh... jistě."~ */ GOTO 89
  IF ~~ THEN REPLY #28410 /* ~"Ano."~ */ GOTO 89
  IF ~~ THEN REPLY #28411 /* ~"Prozatím bych o tom už více nediskutoval. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28412 /* ~"Možná si o tom popovídáme někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1
  SAY #28413 /* ~Fall-From-Grace táhla lehce svůj prst po tvé hrudi, sledujíc stopy jizev, držíce se křivek smíchaných s některými z tvých tetování. Vypadá fascinovaně. "Tyhle jizvy tě, zdá se, musely stát několik životů, než jsi je vůbec mohl nasbírat."~ */
  IF ~~ THEN REPLY #28414 /* ~"To určitě ano... myslím, že některé jsem utržil celkem nedávno."~ */ GOTO 90
  IF ~~ THEN REPLY #28415 /* ~"Prozatím bych o tom už více nediskutoval. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28416 /* ~"Možná si o tom popovídáme někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #28417 /* ~Fall-From-Grace ustoupila. "Některé z těch jizev vypadají smrtelné. Aspoň pro normálního člověka." Přemýšlejíc si zaťukala na bradu. "Co hodláš dělat teď?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #28418 /* ~"Potřebuji získat zpět své vzpomínky a svůj život. Hodlám proslídit Sféry a hledat sám v sobě, dokud si nebudu moci dát dohromady kdo jsem a co mě do tohoto stavu přivedlo."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #28419 /* ~"Potřebuji získat zpět své vzpomínky a svůj život. Hodlám proslídit Sféry a hledat sám v sobě, dokud si nebudu moci dát dohromady kdo jsem a co mě do tohoto stavu přivedlo."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~~ THEN REPLY #28420 /* ~"To opravdu nevím. Aspoň prozatím, budu pouze hledat něco, co mi pomůže zjistit kdo jsem a co se mi stalo."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",2)
~ GOTO 91
  IF ~~ THEN REPLY #28421 /* ~"Nehodlám dělat nic. Jestli existují odpovědi, pak ke mně přijdou... časem."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",3)
~ GOTO 91
  IF ~~ THEN REPLY #28422 /* ~"Prozatím bych o tom už více nediskutoval. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28423 /* ~"Možná si o tom popovídáme někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1 90.2 90.3
  SAY #28424 /* ~Fall-From-Grace stále přemýšlí, prstem si ťukajíc na bradu. "Musím říct, že jsem nikdy nepotkala muže, který ztratil svou identitu takovým způsobem." Pozvedla obočí. "Odpusť mi, ale tvůj stav je úchvatný."~ */
  IF ~~ THEN REPLY #28425 /* ~"No, těší mě, že si to zrovna *ty* myslíš."~ */ GOTO 92
  IF ~~ THEN REPLY #28426 /* ~"To je."~ */ GOTO 93
  IF ~~ THEN REPLY #28427 /* ~"'Úchvatný?' Strašlivý je přesnější. Chci se dozvědět kdo jsem, co mám dělat, kdo jsou mí nepřátelé a kdo mí přátelé."~ */ GOTO 92
  IF ~~ THEN REPLY #28428 /* ~"Prozatím bych o tom už více nediskutoval. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28429 /* ~"Možná si o tom popovídáme někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0 91.2
  SAY #28430 /* ~"Urazila jsem tě svými slovy." Pravila Fall-From-Grace se skloněnou hlavou. "Omlouvám se, pokud tedy mou omluvu přijmeš."~ */
  IF ~~ THEN REPLY #28431 /* ~"Omluva přijata."~ */ GOTO 93
  IF ~~ THEN REPLY #28432 /* ~"Nevadí, nic se nestalo."~ */ GOTO 93
  IF ~~ THEN REPLY #28433 /* ~"Prozatím bych o tom už více nediskutoval. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28434 /* ~"Možná si o tom popovídáme někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1 92.0 92.1
  SAY #28435 /* ~Fall-From-Grace přikývla. "Pokud ti to pomůže, projdi si nevěstinec. Většina našich žákyň je dobře znalá v umění řeči. Možná ti některá z nich pomůže vyvolat tvé vzpomínky."~ */
  IF ~~ THEN REPLY #28436 /* ~"Nejspíš to udělám. Ale mohu se tě napřed na něco zeptat?"~ */ JOURNAL #27461 /* ~Fall-From-Grace mi navrhla, abych si promluvil s jejími studentkami v Nevěstinci, že rozhovor s nimi by mohl vyvolat jiskřičky vzpomínek na to, kdo vlastně jsem.~ */ GOTO 49
  IF ~~ THEN REPLY #28437 /* ~"Jsem ti vděčen. Promluvím si s nimi. Sbohem."~ */ JOURNAL #27461 /* ~Fall-From-Grace mi navrhla, abych si promluvil s jejími studentkami v Nevěstinci, že rozhovor s nimi by mohl vyvolat jiskřičky vzpomínek na to, kdo vlastně jsem.~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 49.13
  SAY #28438 /* ~"Válka krve je spor, který zuří na Nižších sférách mezi baatezu a tanar'ri. Bojují za to, zda bude zlo zákonné či chaotické." Fall-From-Grace se odmlčela. "To je válka, které je lepší se za každou cenu vyhnout. Nechť si tanar'ri a baatezu sráží hlavy a nechají zbytek Sfér žít v míru... nebo aspoň relativním míru."~ */
  IF ~~ THEN REPLY #28439 /* ~"Relativní mír?"~ */ GOTO 95
  IF ~~ THEN REPLY #28440 /* ~"Používají lidské vojáky?"~ */ GOTO 96
  IF ~~ THEN REPLY #28441 /* ~"Jak dlouho to celé trvá?"~ */ GOTO 97
  IF ~~ THEN REPLY #28442 /* ~"Sloužila jsi v ní?"~ */ GOTO 98
  IF ~~ THEN REPLY #28443 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28444 /* ~"Rozumím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 96.0 97.0 98.1 99.1 100.1 101.1 102.0 103.0
  SAY #28445 /* ~"Nuže, Válka se tak rozrostla, že většina ras do ní byla vtažena, aniž by o to stála. Ignorovat ji, se nezřídka ukázalo zrovna tak nebezpečné, jako se jí zúčastnit."~ */
  IF ~~ THEN REPLY #28446 /* ~"Používají lidské vojáky?"~ */ GOTO 96
  IF ~~ THEN REPLY #28447 /* ~"Jak dlouho to celé trvá?"~ */ GOTO 97
  IF ~~ THEN REPLY #28448 /* ~"Sloužila jsi v ní?"~ */ GOTO 98
  IF ~~ THEN REPLY #28449 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28450 /* ~"Rozumím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 97.1 98.2 99.2 100.2 101.2 102.1 103.1
  SAY #28451 /* ~"Když je příležitost, tak ano. Je spousta lidských žoldnéřů, kteří se účastní války. Slouží buď jako vojáci, nejnižší pěšáci, nebo jako žrádlo pro fiendy."~ */
  IF ~~ THEN REPLY #28452 /* ~"Říkala jsi, že dokud zuří válka, zbytek Sfér je v 'relativnímu míru?'"~ */ GOTO 95
  IF ~~ THEN REPLY #28453 /* ~"Jak dlouho to celé trvá?"~ */ GOTO 97
  IF ~~ THEN REPLY #28454 /* ~"Jak dlouho to celé trvá?"~ */ GOTO 98
  IF ~~ THEN REPLY #28455 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28456 /* ~"Rozumím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.2 95.1 96.1 98.3 99.3 100.3 101.3 102.2 103.2
  SAY #28457 /* ~"Podle toho, co praví kroniky, boje Války krve začaly od dob kdy baatezu poprvé potkali tanar'ri... už v *dávné* minulosti. Nejsem si jistá, jestli existuje lidský výraz, který by dokázal zahrnout čas od tehdejšího po dnešní." Fall-From-Grace potřásla hlavou. "Obávám se, že žádný z baatezu nebo tanar'ri spolu vlastně nikdy nemluvili."~ */
  IF ~~ THEN REPLY #28458 /* ~"Říkala jsi, že dokud zuřila válka, zbytek Sfér byl v 'relativnímu míru?'"~ */ GOTO 95
  IF ~~ THEN REPLY #28459 /* ~"Používají lidské vojáky?"~ */ GOTO 96
  IF ~~ THEN REPLY #28460 /* ~"Sloužila jsi v ní?"~ */ GOTO 98
  IF ~~ THEN REPLY #28461 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28462 /* ~"Rozumím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.3 95.2 96.2 97.2 103.3
  SAY #28463 /* ~"Ne. Ale má matka ano. Sukuby obvykle lákaly smrtelníky, kteří přivedli své duše do pekla, jen aby z nich vytvořili více tanar'ri, kteří zemřou ve Válce krve."~ */
  IF ~~ THEN REPLY #28464 /* ~"Tvá matka? Ona sloužila ve Válce krve?"~ */ GOTO 99
  IF ~~ THEN REPLY #28465 /* ~"Říkala jsi že dokud zuřila válka, zbytek Sfér byl v 'relativnímu míru?'"~ */ GOTO 95
  IF ~~ THEN REPLY #28466 /* ~"Používají lidské vojáky?"~ */ GOTO 96
  IF ~~ THEN REPLY #28467 /* ~"Jak dlouho to celé trvá?"~ */ GOTO 97
  IF ~~ THEN REPLY #28468 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28469 /* ~"Rozumím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #28470 /* ~"Ano. Byla obklopena bezpočtem nejhezčích, ale oklamaných smrtelníků. Nyní spočívá v pekle, za to že prodala vlastní děti do otroctví."~ */
  IF ~~ THEN REPLY #28471 /* ~"Ty... Tys byla matkou prodána do otroctví?"~ */ GOTO 100
  IF ~~ THEN REPLY #28472 /* ~"Říkalas, že po dobu co zuří válka, žije zbytek sfér v 'relativním míru?'"~ */ GOTO 95
  IF ~~ THEN REPLY #28473 /* ~"Používají lidské vojáky?"~ */ GOTO 96
  IF ~~ THEN REPLY #28474 /* ~"Jak dlouho to celé trvá?"~ */ GOTO 97
  IF ~~ THEN REPLY #28475 /* ~"Neobtěžují tě tyhle otázky?"~ */ GOTO 103
  IF ~~ THEN REPLY #28476 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28477 /* ~"Rozumím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #28478 /* ~"Na nějaký čas. V soutěži improvizace jsem vyhrála svou svobodu. Ale to už je hodně dávno."~ */
  IF ~~ THEN REPLY #28479 /* ~"Komu tě prodala?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Fall-From-Grace mi řekla, že její vlastní matka ji prodala do otroctví... k nejhorším nepřátelům tanar'riů - baatezu. Fall-From-Grace zřejmě vyhrála svou svobodu v soutěži improvizace se svým pánem baatezu. O detailech se nezmínila.~ */ GOTO 101
  IF ~~ THEN REPLY #28480 /* ~"Říkalas, že po dobu co zuří válka, žije zbytek sfér v 'relativním míru?'"~ */ GOTO 95
  IF ~~ THEN REPLY #28481 /* ~"Používají lidské vojáky?"~ */ GOTO 96
  IF ~~ THEN REPLY #28482 /* ~"Jak dlouho to trvá?"~ */ GOTO 97
  IF ~~ THEN REPLY #28483 /* ~"Neobtěžují tě tyhle dotazy?"~ */ GOTO 103
  IF ~~ THEN REPLY #28484 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28485 /* ~"Rozumím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #28486 /* ~"Prodala mě baatezu. Nejspíš doufala, že mě zabijí. Alespoň myslím. Navzdory jejím znalostem o spoustě jiných věcí, o jejich kultuře toho věděla málo.~ */
  IF ~~ THEN REPLY #28487 /* ~"Prodala tě zapřísáhlým nepřátelům tanar'ri?"~ */ GOTO 102
  IF ~~ THEN REPLY #28488 /* ~"Říkalas, že po dobu co zuří válka, žije zbytek sfér v 'relativním míru?'"~ */ GOTO 95
  IF ~~ THEN REPLY #28489 /* ~"Používají lidské vojáky?"~ */ GOTO 96
  IF ~~ THEN REPLY #28490 /* ~"Jak dlouho to trvá?"~ */ GOTO 97
  IF ~~ THEN REPLY #28491 /* ~"Neobtěžují tě tyhle dotazy?"~ */ GOTO 103
  IF ~~ THEN REPLY #28492 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28493 /* ~"Chápu. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #28494 /* ~"Ano." Fall-From-Grace se narovnala. "Je tu ještě něco, co by ses rád dozvěděl?"~ */
  IF ~~ THEN REPLY #28495 /* ~"Říkalas, že po dobu co zuří válka, žije zbytek sfér v 'relativním míru?'"~ */ GOTO 95
  IF ~~ THEN REPLY #28496 /* ~"Používají lidské vojáky?"~ */ GOTO 96
  IF ~~ THEN REPLY #28497 /* ~"Jak dlouho to trvá?"~ */ GOTO 97
  IF ~~ THEN REPLY #28498 /* ~"Neobtěžují tě tyhle dotazy?"~ */ GOTO 103
  IF ~~ THEN REPLY #28499 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28500 /* ~"Rozumím. Díky za zprávy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.4 100.4 101.4 102.3
  SAY #28501 /* ~"Ó ne, vůbec. Nejlepší bude, když budeš vědět, že Válka krve je v pozadí většiny událostí ve Sférách; je důležité pochopit, co to je a proč se to děje."~ */
  IF ~~ THEN REPLY #28502 /* ~"Říkalas, že po dobu co zuří válka, žije zbytek sfér v 'relativním míru?'"~ */ GOTO 95
  IF ~~ THEN REPLY #28503 /* ~"Používají lidské vojáky?"~ */ GOTO 96
  IF ~~ THEN REPLY #28504 /* ~"Jak dlouho to trvá?"~ */ GOTO 97
  IF ~~ THEN REPLY #28505 /* ~"Sloužila jsi v ní?"~ */ GOTO 98
  IF ~~ THEN REPLY #28506 /* ~"Mám ještě pár otázek, které nejsou spjaty s Válkou krve."~ */ GOTO 49
  IF ~~ THEN REPLY #28507 /* ~"Chápu. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 49.11
  SAY #28508 /* ~"To jméno je mi povědomé." Fall-From-Grace se na chvíli odmlčela a přemýšlela. "O tomto jméně vznikla spousta hloupých bajek a většina z nich ji bere jako mýtus. Ale já věřím, že opravdu existovala a že si tu při svém pobytu připadala jako ve vězení." Zdá se zmatená. "Proč se ptáš?"~ */
  IF ~~ THEN REPLY #28509 /* ~"Hodlám ji vyhledat."~ */ GOTO 105
  IF ~  Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28510 /* ~"Co o ní ještě víš?"~ */ GOTO 109
  IF ~~ THEN REPLY #28511 /* ~"Nevadí. Mám ještě nějaké otázky..."~ */ GOTO 49
  IF ~~ THEN REPLY #28512 /* ~"Nemyslím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #28513 /* ~Grace pozvedla obočí. "Doopravdy? Něco mě nutí, zeptat se proč."~ */
  IF ~~ THEN REPLY #28514 /* ~"Potřebuji informace, které má ona."~ */ GOTO 106
  IF ~~ THEN REPLY #28515 /* ~"Nevadí. Ještě bych se na něco zeptal..."~ */ GOTO 49
  IF ~~ THEN REPLY #28516 /* ~"Není důvod. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #28517 /* ~"A tyhle informace už nikdo jiný nemá?"~ */
  IF ~~ THEN REPLY #28518 /* ~"Domnívám se, že pouze Ravel drží vědomosti, které potřebuji."~ */ JOURNAL #27459 /* ~Fall-From-Grace mě varovala před Ravel...Řekla mi, že jestli je jenom pár příběhů o té čarodějnici pravdivých, je asi tou nejhorší a nejmocnější čarodějnicí, co kdy kráčela po Sférách.~ */ GOTO 107
  IF ~~ THEN REPLY #28519 /* ~"Nevadí. Ještě bych se na něco zeptal..."~ */ GOTO 49
  IF ~~ THEN REPLY #28520 /* ~"To nevím, ale hodlám to zjistit. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #28521 /* ~Grace se lehce opřela rukou o tvou paži. "Vezmi v úvahu tohle - pokud Ravel vskutku existuje, pak je neskutečně mocná a vychytralá. A pokud je na pověstech o jejích skutcích byť jen zlomek pravdy, pak je z ní zrůda, která objevila nový smysl zla. Pátrat po ní není úkol, který by měl být brán na lehkou váhu."~ */
  IF ~  InParty("Grace")
~ THEN REPLY #28522 /* ~"Uvědomuji si to."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 108
  IF ~  !InParty("Grace")
~ THEN REPLY #28523 /* ~"Uvědomuji si to. Víš o Ravel ještě něco jiného?"~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 109
  IF ~  !InParty("Grace")
~ THEN REPLY #28524 /* ~"Rozumím. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~  !InParty("Grace")
~ THEN REPLY #28525 /* ~"Já vím. Nicméně ji musím najít. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #28526 /* ~"Dobrá, Ještě nikdy jsem nepotkala mýtus. Mohla by to být hezká procházka." Usmála se. "Zkoušel jsi někdy dělat cokoliv nudného?"~ */
  IF ~~ THEN REPLY #28527 /* ~"Nezkoušel jsem... víš ještě něco o Ravel?"~ */ GOTO 109
  IF ~~ THEN REPLY #28528 /* ~"Ne, pokud jsem tomu sám nepřispěl. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28529 /* ~"Možná jsem něco takového dělal v jiné inkarnaci, ale teď ne. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 49.12 104.1 107.1 108.0
  SAY #28530 /* ~"Říkalo se, že byla jedna z čarodějek z Šedých Pustin a věřilo se, že ovládá mazanost a síly daleko mocnější, než její sestry. Přišla do Sigilu před dávným časem a legendy praví, že v důsledku zla, které napáchala při svém pobytu, ohrozila samotnou podstatu světa. Nyní se o ní mluví spíše jako o výmyslu, jako o postavičce z dětských říkanek." Grace se odmlčela. "Myslím si, že s ní Paní Bolesti naložila tak, jako nakládá se všemi hrozbami Sigilu."~ */
  IF ~~ THEN REPLY #28531 /* ~"Jak?"~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ GOTO 110
  IF ~~ THEN REPLY #28532 /* ~"Co je Šedá Pustina?"~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ GOTO 111
  IF ~~ THEN REPLY #28533 /* ~"Existuje ještě někdo, kdo by o ní mohl vědět?"~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ GOTO 112
  IF ~~ THEN REPLY #28534 /* ~"Mohu se tě ještě na něco zeptat?"~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ GOTO 49
  IF ~~ THEN REPLY #28535 /* ~"Rozumím. Díky za informace. Sbohem."~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 112.0
  SAY #28536 /* ~"Ravel byla nejspíš poslána do bludiště. Jedné z věznic Paní Bolesti."~ */
  IF ~~ THEN REPLY #28537 /* ~"Bludiště? Co to je?"~ */ JOURNAL #27457 /* ~Fall-From-Grace mi řekla, že Ravel byla uvězněna v jednom z budišť Paní Bolesti.~ */ GOTO 123
  IF ~~ THEN REPLY #28538 /* ~"Co je Šedá Pustina?"~ */ GOTO 111
  IF ~~ THEN REPLY #28539 /* ~"Existuje ještě někdo, kdo by o ní mohl vědět?"~ */ GOTO 112
  IF ~~ THEN REPLY #28540 /* ~"Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28541 /* ~"Rozumím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 109.1 110.1 112.1 123.1 124.1 125.0
  SAY #28542 /* ~"Zničená a zkažená sféra, která leží 'mezi' Baatorem a Abyssem. Často byla použita jako bojiště ve Válce krve."~ */
  IF ~~ THEN REPLY #28543 /* ~"Víš, co se stalo Ravel?"~ */ GOTO 110
  IF ~~ THEN REPLY #28544 /* ~"Existuje ještě někdo, kdo by o ní mohl vědět?"~ */ GOTO 112
  IF ~~ THEN REPLY #28545 /* ~"Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28546 /* ~"Rozumím. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 109.2 110.2 111.1 123.2 124.2 125.1
  SAY #28547 /* ~"Někdo v Městské hale by o ní mohl něco vědět."~ */
  IF ~~ THEN REPLY #28548 /* ~"Víš co se stalo Ravel?"~ */ JOURNAL #27456 /* ~Fall-From-Grace řekla, že někdo v Městské hale by mohl vědět více o Ravel.~ */ GOTO 110
  IF ~~ THEN REPLY #28549 /* ~"Co je Šedá Pustina?"~ */ JOURNAL #27456 /* ~Fall-From-Grace řekla, že někdo v Městské hale by mohl vědět více o Ravel.~ */ GOTO 111
  IF ~~ THEN REPLY #28550 /* ~"Mohu se tě ještě na něco zeptat?"~ */ JOURNAL #27456 /* ~Fall-From-Grace řekla, že někdo v Městské hale by mohl vědět více o Ravel.~ */ GOTO 49
  IF ~~ THEN REPLY #28551 /* ~"Rozumím. Díky za informace. Sbohem."~ */ JOURNAL #27456 /* ~Fall-From-Grace řekla, že někdo v Městské hale by mohl vědět více o Ravel.~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 51.1
  SAY #28552 /* ~Fall-From-Grace pozvedla obočí. "Opravdu?"~ */
  IF ~~ THEN REPLY #28553 /* ~"Ano... ale je to dlouhý příběh, možná delší, než je mi známo. Spíš mě teď zajímá, co je tohle místo zač."~ */ GOTO 57
  IF ~~ THEN REPLY #28554 /* ~Ano, ale tohle je opravdu příběh pro jiný čas. Musím odejít. Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 52.3
  SAY #28555 /* ~Přikývla. "Jsem potěšena, že se ti líbí. Sama jsem si ho zamilovala."~ */
  IF ~~ THEN REPLY #28556 /* ~"Co vlastně znamená?"~ */ GOTO 115
  IF ~~ THEN REPLY #28557 /* ~"Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28558 /* ~"Dnes nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #28559 /* ~"Význam jmen, je velmi komplikovaná věc. Může jím být řečeno mnoho a spoustu je lepší vůbec neříkat. Ale myslím, že tohle povídání necháme na jindy."~ */
  IF ~~ THEN REPLY #28560 /* ~"Je Fall-From-Grace tvé pravé jméno?"~ */ GOTO 116
  IF ~~ THEN REPLY #28561 /* ~"Dobrá tedy. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28562 /* ~"Pak tedy odpusť že jsem tě vyrušil. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #28563 /* ~"Možná." Lehce se pousmála. "Možná ne. Existují jména, jež jsou dána a jména, jež jsou přijatá. Kdo může tvrdit, které z nich je opravdové? Já ne."~ */
  IF ~~ THEN REPLY #28564 /* ~"Dobrá tedy. Mohu se tě ještě na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28565 /* ~"Odpusť že tě ruším. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #28566 /* ~"Putovat s tebou?" Fall-From-Grace se lehce usmála. Zdá se, že ignoruje tvé společníky. "To je od tebe poměrně drzá nabídka."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28567 /* ~"Raději budu se svými záměry upřímný. Zdáš se mi neobyčejně milá a dobře znalá v cestách Sfér. Společník s takovým druhem zkušeností je vždy vítán."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28568 /* ~"To také je."~ */ GOTO 79
  IF ~~ THEN REPLY #28569 /* ~"Myslím, jak vzrušující může tohle místo být?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28570 /* ~"Patříš k Vnímavým. Určitě je nějaká mez, od které se zde už nemůžeš nic naučit."~ */ GOTO 83
  IF ~~ THEN REPLY #28571 /* ~"Pak tedy stahuji svůj návrh. Mohu se tě místo toho na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28572 /* ~"Pak tedy přijmi mou omluvu. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #28573 /* ~"Putovat s tebou?" Fall-From-Grace se lehce usmála. Zdá se, že Annah zcela ignoruje. "To je od tebe poměrně arogantní nabídka."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28574 /* ~"Raději budu se svými záměry upřímný. Zdáš se mi neobyčejně milá a dobře znalá v cestách Sfér. Společník s takovým druhem zkušeností je vždy vítán."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28575 /* ~"Raději budu se svými záměry upřímný. Zdáš se mi neobyčejně milá a dobře znalá v cestách Sfér. Společník s takovým druhem zkušeností je vždy vítán."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28576 /* ~"To také jsem."~ */ GOTO 79
  IF ~~ THEN REPLY #28577 /* ~"Myslím, jak vzrušující může tohle místo být?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28578 /* ~"Patříš k Vnímavým. Určitě je nějaká mez, od které se zde už nemůžeš nic naučit."~ */ GOTO 83
  IF ~~ THEN REPLY #28579 /* ~"Pak tedy stahuji svůj návrh. Mohu se tě místo toho na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28580 /* ~"Pak tedy přijmi mou omluvu. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #28581 /* ~"Putovat s tebou?" Fall-From-Grace se lehce usmála. Zdá se, že ignoruje Morteho. "To je od tebe poměrně arogantní nabídka."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28582 /* ~"Raději budu se svými záměry upřímný. Zdáš se mi neobyčejně milá a dobře znalá v cestách Sfér. Společník s takovým druhem zkušeností je vždy vítán."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28583 /* ~"To také jsem."~ */ GOTO 79
  IF ~~ THEN REPLY #28584 /* ~"Myslím, jak vzrušující může tohle místo být?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28585 /* ~"Patříš k Vnímavým. Určitě je nějaká mez, od které se zde už nemůžeš nic naučit."~ */ GOTO 83
  IF ~~ THEN REPLY #28586 /* ~"Pak tedy stahuji svůj návrh. Mohu se tě místo toho na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28587 /* ~"Pak tedy přijmi mou omluvu. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 49.14 81.0
  SAY #28588 /* ~"A ty nemůžeš najít desátou žákyni? Jak podivné."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28589 /* ~"Myslím, že tím desátým žákem jsem já. Pokud je to tak, mluvil jsem už se všemi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28590 /* ~"Myslím, že tím desátým žákem jsem já. Pokud je to tak, mluvil jsem už se všemi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"Viděl jsem pod nevěstincem deset kamenů. A jeden byl prázdný... proto se domnívám, že je tu jen devět prostitutek. Desátý *žák* jsem tedy já. Pokud je to tak, pak jsem už mluvil se všemi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28592 /* ~"Domnívám se, že desátým žákem je Luis... svým způsobem."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28593 /* ~"Můžeš mi říct, kde bych mohl najít desátého žáka?"~ */ GOTO 122
  IF ~~ THEN REPLY #28594 /* ~"Nejspíš jsem nějakou přehlédl. Mohl bych se teď na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28595 /* ~"Budu se lépe dívat a snad toho desátého žáka najdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0 120.1 120.2 120.3 122.0 122.1 122.2 122.3
  SAY #28596 /* ~Lehce přikývla. "Velmi dobře. A tvůj názor?"~ */
  IF ~~ THEN REPLY #28597 /* ~"Ty a já opustíme tohle místo a prozkoumáme Sféry. Není tu už pro nikoho z nás žádná užitečná zkušenost."~ */ GOTO 203
  IF ~~ THEN REPLY #61636 /* ~"Naučil jsem se, co to znamená být Vnímavý, a že je lepší hledat zkušenosti, než čekat, až přijdou ony k tobě."~ */ GOTO 203
  IF ~  Global("Luis_Student","GLOBAL",1)
~ THEN REPLY #61638 /* ~"Luis opravdu potřebuje tesaře, aby uklidnil to svoje libido."~ */ GOTO 204
  IF ~  Global("Luis_Student","GLOBAL",0)
GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #61639 /* ~"Ty zástěny v Nevěstinci jsou zbytečné. Měly by se použít jako palivové dříví."~ */ GOTO 204
  IF ~~ THEN REPLY #61640 /* ~"Učení v takovémhle zakrytém prostředí jenom ubližuje studentovi. A samotné Sféry jsou většinu ten nejlepší učitel."~ */ GOTO 203
END

IF ~~ THEN BEGIN 122 // from: 120.4
  SAY #28598 /* ~"Je tu někde kolem... možná by ses měl lépe dívat."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28599 /* ~"Myslím, že tím desátým žákem jsem já. Pokud je to tak, mluvil jsem už se všemi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28600 /* ~"Myslím, že tím desátým žákem jsem já. Pokud je to tak, mluvil jsem už se všemi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"Viděl jsem pod nevěstincem deset kamenů. A jeden byl prázdný... proto se domnívám, že je tu jen devět prostitutek. Desátý *žák* jsem tedy já. Pokud je to tak, pak jsem už mluvil se všemi."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28602 /* ~"Domnívám se, že desátým žákem je Luis... svým způsobem."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28603 /* ~"Nejspíš jsem nějakou přehlédl. Mohl bych se teď na něco zeptat?"~ */ GOTO 49
  IF ~~ THEN REPLY #28604 /* ~"Budu se lépe dívat a snad toho desátého žáka najdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 110.0
  SAY #28605 /* ~Grace spojila ruce, a dotýkajíc se palci a prsty vytvořila neforemný kruh. "Říká se, že Paní má moc vzít části Sigilu..." Překvapeně koukáš, jak se obraz Graciina malého prstu odpojil od ruky a plul vzduchem, ohýbaje se do malého kroužku. "...a vytvořit labyrint."~ */
  IF ~~ THEN REPLY #28606 /* ~"Pokračuj..."~ */ GOTO 124
  IF ~~ THEN REPLY #28607 /* ~"Chápu. Můžeš mi říct ještě něco o sféře ze které pochází Ravel... o Šedé pustině?"~ */ GOTO 111
  IF ~~ THEN REPLY #28608 /* ~"Myslím, že rozumím. Existuje ještě někdo, kdo by mohl o Ravel něco vědět?"~ */ GOTO 112
  IF ~~ THEN REPLY #28609 /* ~"Nevadí. Mohu ti položit ještě nějaké otázky?"~ */ GOTO 49
  IF ~~ THEN REPLY #28610 /* ~"Chápu. To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #28611 /* ~Malý kroužek se vznáší ve vzduchu a poté se začne pomalu roztáčet. "Část Sigilu, kterou vezme, polapí vězně; pokud tě uvězní, není odtud úniku. Může se to stát kdykoli, když půjdeš po ulici, projdeš dveřmi..." Tleskla rukama. "...a potom jsi někde jinde." Uvnitř kroužku najednou vidíš mihotavý pohyb, skoro jako by se někdo vevnitř procházel.~ */
  IF ~~ THEN REPLY #28612 /* ~"Pokračuj..."~ */ GOTO 125
  IF ~~ THEN REPLY #28613 /* ~"Chápu. Můžeš mi říct ještě něco o sféře ze které pochází Ravel... o Šedé Pustině?"~ */ GOTO 111
  IF ~~ THEN REPLY #28614 /* ~"Myslím, že rozumím. Existuje ještě někdo, kdo by mohl o Ravel něco vědět?"~ */ GOTO 112
  IF ~~ THEN REPLY #28615 /* ~"Nevadí. Mohu ti položit ještě nějaké otázky?"~ */ GOTO 49
  IF ~~ THEN REPLY #28616 /* ~"Chápu. To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #28617 /* ~Grace pokračuje, malé přízračné bludiště se jí odráží v očích. "Říká se, že existuje portál, který vede z každého labyrintu. Ale je těžké jej objevit. Možná je tam, aby dal vězni pocit naděje. Možná je tam, aby vězně trápil." Přízračné bludiště se rozplynulo. "Možná z obou důvodů."~ */
  IF ~~ THEN REPLY #28618 /* ~"Chápu. Můžeš mi říct ještě něco o sféře ze které pochází Ravel... o Šedé Pustině?"~ */ GOTO 111
  IF ~~ THEN REPLY #28619 /* ~"Myslím, že rozumím. Existuje ještě někdo, kdo by mohl o Ravel něco vědět?"~ */ GOTO 112
  IF ~~ THEN REPLY #28620 /* ~"Nevadí. Mohu ti položit ještě nějaké otázky?"~ */ GOTO 49
  IF ~~ THEN REPLY #28621 /* ~"Chápu. To je vše co jsem si přál vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from:
  SAY #28896 /* ~Grace vzala muže na vědomí s pokývnutím a úsměvem. "Jsi tak laskavý, pane."~ */
  IF ~~ THEN EXTERN ~DCWCAFEM~ 20
END

IF ~~ THEN BEGIN 127 // from:
  SAY #30528 /* ~Grace tiše zašeptala. "Advokát je ten, kdo projednává případy před Sigilskými soudy. Navíc dodává rady ohledně zákonů těm, kdož o to požádají."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 10
END

IF ~~ THEN BEGIN 128 // from:
  SAY #30827 /* ~Lehce se usmála. "To nevadí, Schopný. Jsem si jistá, že by to urazilo pouze Tuenyho, a jak víš, jeho poddaní ho zaživa pohřbili před více než třemi stoletími."~ */
  IF ~~ THEN EXTERN ~DABLE~ 5
END

IF ~~ THEN BEGIN 129 // from:
  SAY #30828 /* ~Grace se usmála a zdvořile se vložila do rozhovoru: "A proč si myslíš, že jsi vždy vítán, můj dobrý Schopný?"~ */
  IF ~~ THEN EXTERN ~DABLE~ 40
END

IF ~~ THEN BEGIN 130 // from:
  SAY #32697 /* ~"Mladá Sarhava? Sarhava Vhjul, nejsi to ty?"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 25
END

IF ~~ THEN BEGIN 131 // from:
  SAY #32698 /* ~Fall-From-Grace se lehounce uklonila. "Tvá slova jsou velice dobře volená, na rozdíl od těch, které jsme zaslechli dříve."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 26
END

IF ~~ THEN BEGIN 132 // from:
  SAY #32699 /* ~"Lituji, že byla vůbec vyslovena." Její tón se lehce změnil, ale jemná důtka způsobila, že se mladá žena zatvářila jako po ráně bičem. "Bolí mě, když vidím svou studentku chovat se takto nevhodně..."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 27
END

IF ~~ THEN BEGIN 133 // from:
  SAY #32700 /* ~"Toto jsou mí společníci, se kterými cestuji. Očekávala bych, že jim bude vzdávána stejná úcta jako mně. To je znamení a také odpovědnost těch... s šlechtickým rodem."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32701 /* ~Pokračuj.~ */ EXTERN ~DANNAH~ 177
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #32702 /* ~Pokračuj.~ */ EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 134 // from:
  SAY #33080 /* ~"Nepřipadá mi složité uvěřit, že by žena mohla zastavit Válku Krve."~ */
  IF ~~ THEN REPLY #33082 /* ~"Ale stejně je fiendům povolen přístup do Sigilu?"~ */ EXTERN ~DGHYSIS~ 25
  IF ~~ THEN REPLY #33083 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ EXTERN ~DGHYSIS~ 11
  IF ~~ THEN REPLY #33084 /* ~"Už nemám další otázky."~ */ EXTERN ~DGHYSIS~ 9
END

IF ~~ THEN BEGIN 135 // from:
  SAY #33081 /* ~"Žádná nebyla. Máš docela pravdu."~ */
  IF ~~ THEN REPLY #33085 /* ~"Jaké další jednotky slouží ve Válce Krve?"~ */ EXTERN ~DGHYSIS~ 48
  IF ~~ THEN REPLY #33086 /* ~"Chtěl bych se zeptat na něco jiného..."~ */ EXIT
  IF ~~ THEN REPLY #33087 /* ~"Už nemám další otázky."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 136 // from:
  SAY #34014 /* ~Fall-From-Grace zvedla pohled. "Chtěl bys, abych s tebou zase cestovala?"~ [FFG247] */
  IF ~~ THEN REPLY #34015 /* ~"Ano. Pokud se na to cítíš."~ */ GOTO 137
  IF ~~ THEN REPLY #34016 /* ~"Teď zrovna ne... Jenom jsem se stavil, podívat se, jak se máš."~ */ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #34017 /* ~Přikývla. "Bude mi potěšením."~ [FFG249] */
  IF ~~ THEN REPLY #34018 /* ~"Pojďme."~ */ DO ~ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 136.1
  SAY #34019 /* ~Přikývla. "Děkuju ti. To bylo milé gesto." Lehce se usmála. "Pokud bys někdy v budoucnosti potřeboval mou pomoc, najdeš mě zde."~ */
  IF ~~ THEN REPLY #34020 /* ~"Díky, Grace. Beru tě za slovo."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",0)
InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 139 // from: 205.10 206.2 213.1 214.1 215.0 216.1 217.1 218.0 239.1 240.3 248.1 249.4 250.2 251.0 267.1 268.1 270.3 271.2 272.1 273.4 274.2 276.0 279.8 280.5 281.9 284.1 286.1 287.3 288.2 289.3 290.3 291.4 292.3 293.3 294.4 295.2 296.4 297.4 298.4 299.3 300.4 301.1 302.3 303.1 304.3 305.2 307.1 308.2 309.3 310.3 311.3 312.2 313.2 314.1 316.2 317.1 319.2 320.3 321.2 322.2 323.4 324.1 325.2 326.2 327.3 328.2 329.1 330.6 331.2 332.1 333.1 334.1 335.5 336.1 337.3 338.3 339.1 343.1 344.2 345.2 346.2 347.2 357.5 359.2 360.1 361.1
  SAY #34021 /* ~"Ano?"~ [FFG003] */
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #34022 /* ~"Můžeš mi říct o tanar'ri?"~ */ GOTO 206
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61947 /* ~"Ta křídla na tvých zádech... co jsi zač?"~ */ GOTO 214
  IF ~  NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61948 /* ~"Ta křídla na tvých zádech... co jsi zač?"~ */ EXTERN ~DANNAH~ 308
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61949 /* ~"Ta křídla na tvých zádech... co jsi zač?"~ */ EXTERN ~DMORTE~ 612
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61950 /* ~"Pokud se mohu zeptat, Paní Grace... ta křídla na tvých zádech... ty nejsi člověk, že?"~ */ GOTO 214
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61951 /* ~"Pokud se mohu zeptat, Paní Grace... ta křídla na tvých zádech... ty nejsi člověk, že?"~ */ EXTERN ~DANNAH~ 308
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("Dannah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61952 /* ~"Pokud se mohu zeptat, Paní Grace... ta křídla na tvých zádech... ty nejsi člověk, že?"~ */ EXTERN ~DMORTE~ 612
  IF ~  Global("Grace_Name","GLOBAL",0)
~ THEN REPLY #61953 /* ~"Jak ses dostala ke jménu Fall-From-Grace, Upadlá v nemilost?"~ */ GOTO 239
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61954 /* ~"Proč ti říkají Fall-From-Grace, Upadlá z milosti?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61955 /* ~"Proč ti říkají Fall-From-Grace, Upadlá z milosti?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61956 /* ~"Proč ti říkají Fall-From-Grace, Upadlá z milosti?"~ */ GOTO 247
  IF ~  Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #61957 /* ~"Jak  ses dostala ke jménu Fall-From-Grace, Upadlá z milosti?"~ */ GOTO 248
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #61958 /* ~"Můžeš mi říct něco o Vnímavých?"~ */ GOTO 216
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #61959 /* ~"Můžeš mě naučit něco z Umění, Grace?"~ */ GOTO 267
  IF ~  NumInPartyLT(3)
~ THEN REPLY #61960 /* ~"Chtěl jsem si promluvit o nás..."~ */ GOTO 279
  IF ~  NumInPartyGT(2)
~ THEN REPLY #61961 /* ~"Chtěl jsem si promluvit o našich společnících..."~ */ GOTO 279
  IF ~~ THEN REPLY #61962 /* ~"Používáš, někdy zbraně?"~ */ GOTO 349
  IF ~~ THEN REPLY #61963 /* ~"Mám nějaké otázky ohledně naší výpravy..."~ */ GOTO 205
  IF ~~ THEN REPLY #61964 /* ~"No nic. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #39578 /* ~Grace se otočila na Yves. "Nemám příběh, který bych dnes s tebou chtěla vyměnit, vypravěčko. Nenechám tě vyplýtvat celou mou zásobu, dokud nejnajdu nějaký nový příběh."~ */
  IF ~~ THEN REPLY #39755 /* ~Požádej jiného společníka.~ */ EXTERN ~DYVES~ 20
  IF ~~ THEN REPLY #39756 /* ~"Mám pro tebe příběh na výměnu, Yves."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39757 /* ~"Měl bych pro tebe otázku Yves..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39758 /* ~"My už půjdem. Měj se, Yves."~ */ EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #42093 /* ~"Myslím, že je slepá ze své vůle a ne jen tak náhodou."~ */
  IF ~~ THEN EXTERN ~DYVANA~ 14
END

IF ~~ THEN BEGIN 142 // from:
  SAY #44259 /* ~"Zdravím, Mistře Goncalve."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 23
END

IF ~~ THEN BEGIN 143 // from:
  SAY #44261 /* ~"S mým přáním není třeba spěchat, Mistře Goncalve; tvé umění vyžaduje čas, a bezpochyby to, jako vše, co pochází z tvých rukou, bude dokonalé. Avšak nejsem zde v této záležitosti. Zde ten muž..." Fall-from-Grace pokynula směrem k tobě. "...si přál s tebou chvilku pohovořit..."~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 24
END

IF ~~ THEN BEGIN 144 // from:
  SAY #49782 /* ~Fall-From-Grace se na muže pozorně podívala. "Řekla bych, že už jsem o tomto druhu pantomimy slyšela. Je běžná v mnoha Základních světech..." Ztišila hlas tak, abys ji mohl slyšet pouze ty. "...a v mnoha z nich je hodně nepopulární."~ */
  IF ~~ THEN REPLY #49783 /* ~Zkus se jej dotknout.~ */ EXTERN ~DMIME~ 2
  IF ~~ THEN REPLY #49784 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #50078 /* ~"Jsem si jistá, že to můžeme posoudit podle toho, o jaký druh fienda se jedná. Pokud je to baatezu, pak přijme dohodu o jeho osvobození. Pokud je to tanar'ri, nedejbože, pak budeme prostě muset kvůli jeho spolupráci předložit silný argument." Mile se usměje. "Tvá výzbroj by měla podpořit tvou logiku."~ */
  IF ~~ THEN REPLY #50079 /* ~"Dobrá. Dono Quisho, co mám udělat?"~ */ EXTERN ~DQUISHO~ 5
  IF ~~ THEN REPLY #50080 /* ~"Sktečně si nechci nic začínat s osvobozováním spoutaných fiendů."~ */ EXTERN ~DQUISHO~ 4
END

IF ~~ THEN BEGIN 146 // from:
  SAY #50147 /* ~"Řekla bych, že očekávat jen jasnou odpověď by bylo trochu málo."~ */
  IF ~~ THEN REPLY #50148 /* ~"Můžeš mu položit pár otázek?"~ */ GOTO 147
  IF ~~ THEN REPLY #50252 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 147 // from: 146.0 148.0 149.0 150.2
  SAY #50149 /* ~Fall-from-Grace přikývla. "Ano, samozřejmě."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50150 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50239 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50240 /* ~"Zeptej se ho, kdo je."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50241 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50242 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50243 /* ~"Zeptej se ho, co dělá."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50244 /* ~"Požádej ho, aby nám pověděl o Paní Bolesti."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50245 /* ~"Požádej ho, aby nám pověděl o Fellovi"~ */ GOTO 150
  IF ~~ THEN REPLY #50251 /* ~"Ne, nic. Pojďme pryč."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 148 // from:
  SAY #50179 /* ~"Říká, že je 'dabus'." Grace se odmlčela. "Málokdy jsem potkala dabuse, který by vůbec měl jméno... přinejmenším něco, co bychom uznali jako jméno. Zdá se, že by byli spíše náchylní k používání symbolů."~ */
  IF ~~ THEN REPLY #50180 /* ~"Můžeš mu položit pár dalších otázek?"~ */ GOTO 147
  IF ~~ THEN REPLY #50181 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 149 // from:
  SAY #50193 /* ~"Říká, že se věnuje svým povinnostem." Otočila se k tobě. "Většinu svého času stráví opravami a demontážemi součástí města. V mnoha ohledech to jsou městští správci."~ */
  IF ~~ THEN REPLY #50194 /* ~"Můžeš mu položit pár dalších otázek?"~ */ GOTO 147
  IF ~~ THEN REPLY #50195 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 150 // from: 147.7
  SAY #50246 /* ~Grace se zamračí. "Nejsem si jistá, zda by bylo moudré dát takovou otázku. Dabus by se mohl urazit, když už Fell není členem jejich komunity..."~ */
  IF ~~ THEN REPLY #50247 /* ~"Můžeš se ho přesto zeptat?"~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50248 /* ~"Dost poučování, prostě se ho zeptej."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50249 /* ~"Můžeš mu dát pár dalších otázek?"~ */ GOTO 147
  IF ~~ THEN REPLY #50250 /* ~"Tak nic. Jdeme."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 151 // from:
  SAY #50686 /* ~"Nevím, o jakém úkolu to mluvíš, Vrischiko, ačkoliv tvá přítomnost zde vyvolává spoustu otázek. Když jsem o tobě slyšela naposled, byla jsi praporečníkem Roty supa. Jak jsi se dostala do Sigilu?"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 5
END

IF ~~ THEN BEGIN 152 // from:
  SAY #50687 /* ~Fall-from-Grace promluvila s chladem, který jsi nikdy předtím neslyšel. Vzduch téměř mrznul, jak zrakem rozpitvává Vrischiku. "To stačí." ~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 6
END

IF ~~ THEN BEGIN 153 // from:
  SAY #50688 /* ~"Je to pravda -"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 12
END

IF ~~ THEN BEGIN 154 // from:
  SAY #50689 /* ~"Od smluv baatezů se lze vymanit, když si dáš pozor na slovíčkaření a když si uvědomíš, že baatezové jsou zavázáni k dodržování svých slov. Jen si prostě musíš ohlídat všechny významy, které by mohly být překrouceny... a já se *výborně vyznám* v jazyce a jeho jemných odstínech. I tak to nebyla jednoduchá záležitost..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 13
END

IF ~~ THEN BEGIN 155 // from:
  SAY #50690 /* ~Fall-from-Grace si zachovává svou dokonalou vyrovnanost a prostě kývne... nicméně, když jsi jí pohleděl do očí, podívala se na tebe poněkud podrážděným pohledem a pak se usmála.~ */
  IF ~~ THEN REPLY #50691 /* ~"Co jsi to říkala o trénování jejích agentů, Vrischiko?"~ */ EXTERN ~DVRISCH~ 14
  IF ~~ THEN REPLY #50692 /* ~"Měl bych jinou otázku, Vrischiko..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50693 /* ~"Chtěl bych se podívat na tvoje zboží, Vrischiko..."~ */ EXTERN ~DVRISCH~ 20
  IF ~~ THEN REPLY #50694 /* ~"To je vše, co jsem chtěl vědět, Vrischiko. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #50695 /* ~"To není účelem mého podniku..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 15
END

IF ~~ THEN BEGIN 157 // from:
  SAY #50696 /* ~"On si velice dobře uvědomuje, proč jsem souhlasila cestovat s ním, Vrischiko... když mě o to sám požádal."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 17
END

IF ~~ THEN BEGIN 158 // from:
  SAY #52554 /* ~"Ravel..." Grace odpověděla tiše, jakoby opatrně. "Smířila jsem se s --"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 37
END

IF ~~ THEN BEGIN 159 // from:
  SAY #52555 /* ~"Protože láska by to nepovolila - a ta dokáže i ty nejsilnější donutit dělat věci podle ní." Hlas Fall-from-Grace je tichý, tázavý. "Že ano, Ravel?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 130
END

IF ~~ THEN BEGIN 160 // from:
  SAY #52556 /* ~"Žádnému stvoření by neměl být takový pocit upírán, Ravel." Grace klidně promlouvá. "Ale dějiny o něčem takovém zrovna nemluví..."~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 131
END

IF ~~ THEN BEGIN 161 // from:
  SAY #52557 /* ~"Paní Bolesti? Ty ses pokoušela *pomoct* jí?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 188
END

IF ~~ THEN BEGIN 162 // from:
  SAY #52558 /* ~"Paní Bolesti? Ty ses pokoušela *pomoct* jí?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 187
END

IF ~~ THEN BEGIN 163 // from:
  SAY #52559 /* ~Grace nic neříká. Pozorně si Ravel prohlíží... a ty sis náhle uvědomil, že Grace hledá u Ravel slabiny.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 79
END

IF ~~ THEN BEGIN 164 // from:
  SAY #52560 /* ~Grace se náhle postavila do bojového postoje, její ruce vzlétly, prsty vytvořily ochranné gesto. Její výraz se ale nezměnil - vypadá to, že takový vývoj situace očekávala.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 83
END

IF ~~ THEN BEGIN 165 // from:
  SAY #52971 /* ~A náhle je tady Fall-From-Grace, její dotek je jemný jako dotek hedvábí, utírá ti slzy z očí, i když cítíš, jak se z tebe valí výkřiky a vzlyky. Utěšuje tě, utírá ti krvavé slzy z obličeje.~ */
  IF ~~ THEN REPLY #52972 /* ~"Já... já... nemůžu... to vydržet... nemohl jsem ji ZASTAVIT, tak jsem CHTĚL, ale nemohl jsem *nic* dělat...!"~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #52973 /* ~Fall-From-Grace se ti zadívala do očí a smutně přikývla, jakoby rozuměla. "A to je povaha *touhy*. Touha po něčem, co nemůžeš změnit nebo vlastnit." Prohlíží si tě, stáhla zpět své ruce, celé od tvé krve. "Budeš v pořádku?"~ */
  IF ~~ THEN REPLY #52974 /* ~"Ano... ano... potřebuju jenom chvilku..."~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52976 /* ~"Velmi dobře..." Fall-From-Grace ustoupila. "Budeme pokračovat, až budeš připraven."~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52977 /* ~Nadechni se, pokus se dát dohromady.~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52978 /* ~Nadechni se, pokus se dát dohromady.~ */ DO ~SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
~ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 168 // from:
  SAY #54023 /* ~"Došla jsem tak daleko a bylo by ode mě neslušné couvnout těsně před koncem." Mírně se usmála. "I kdyby ses zeptal slušně, nedovolila bych to."~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",16)
InParty("Annah")
~ THEN REPLY #54024 /* ~"Takže to vypadá, že nemám na výběr... Annah?"~ */ EXTERN ~DANNAH~ 273
  IF ~  NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",15)
InParty("Annah")
~ THEN REPLY #54025 /* ~"Takže to vypadá, že nemám na výběr... Annah?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("annah")
NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54026 /* ~"Takže to vypadá, že nemám na výběr... Dak'kone?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54027 /* ~"Takže to vypadá, že nemám na výběr... Dak'kone?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54028 /* ~"Takže to vypadá, že nemám na výběr... Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54029 /* ~"Takže to vypadá, že nemám na výběr... Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54030 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54031 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54032 /* ~"Dobrá tedy... podívejme se, co je na druhé straně toho portálu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #54033 /* ~"Kvůli tomu, co Ravel řekla v bludišti." Hlas Grace je jemný a tichý, skoro ho neslyšíš. "Není to tak, Morte?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 562
END

IF ~~ THEN BEGIN 170 // from:
  SAY #54034 /* ~"Kvůli tomu, co Ravel řekla v bludišti. A kvůli tomu symbolu, který nám Fell popsal." Hlas Grace je jemný a tichý, skoro ho neslyšíš. "Není to tak, Morte?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 563
END

IF ~~ THEN BEGIN 171 // from:
  SAY #54067 /* ~"Annah, omlouvám se..."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 268
END

IF ~~ THEN BEGIN 172 // from:
  SAY #54068 /* ~"Pilíř Lebek je pilíř živých hlav, pocházejících ze smrtelníků, kteří svou lží poslali jiné na smrt. Může ti odpovědět na spoustu otázek, protože hodně zná, ale výměnou očekává hodně. Neměl bys mu dávat takové otázky."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 173 // from:
  SAY #54069 /* ~Fall-From-Grace na sobě nedala znát, že by na ní tvá poznámka nějak zapůsobila. Jenom se na tebe podívala. "Nikdy bych se dobrovolně neodevzdala Pilíři Lebek... ale jsem si jista, že to víš, a jenom si děláš legraci. Neměl bys Pilíř takhle dráždit..."~ */
  IF ~~ THEN REPLY #54070 /* ~Pravdivě: "Myslel jsem to vážně. Vlez tam, Grace, nebo tě tam narvu sám."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_3","GLOBALGood",-1)
MoraleDec("Grace",3)
~ GOTO 174
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54071 /* ~"Dobrá. Jaké *jiné* dary přijmeš, Pilíři?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54072 /* ~"Dobrá. Jaké *jiné* dary přijmeš, Pilíři?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54073 /* ~"*Samozřejmě* že jsem si dělal legraci. Pojďme."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54074 /* ~"*Samozřejmě* že jsem si dělal legraci. Pojďme."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #54075 /* ~Grace se odmlčela, pozorně si tě prohlíží. "Máš jistotu, že opravdu chceš udělat tohle? Opravdu bys mě strčil do Pilíře Lebek?"~ */
  IF ~~ THEN REPLY #54076 /* ~"Ano, udělal bych to."~ */ GOTO 175
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54077 /* ~"Ne, neudělal bych to. Jaké *jiné* dary přijmeš, Pilíři?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54078 /* ~"Ne, neudělal bych to. Jaké *jiné* dary přijmeš, Pilíři?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54079 /* ~"Ne, neudělal bych to. Pojďme."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54080 /* ~"Ne, neudělal bych to. Pojďme."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #54082 /* ~Oči Fall-From-Grace jsou náhle tvrdé a chladné jako led, i když její tvář zůstává klidná. "Tak to se s tebou musím rozloučit, Bezejmenný. Pokud by ses dostal z Baatoru, možná se naše cesty opět setkají." A s těmito slovy se změnila na oblak zeleného dýmu.~ */
  IF ~~ THEN REPLY #54083 /* ~"Grace..."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
StartCutSceneMode()
StartCutSceneEx("1001Cut2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY #54765 /* ~Grace vydechla, "Deva... ale ty řetězy ho ani tak nepoutají, jako obluzují jeho mysl..."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 185
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54766 /* ~Grace vydechla, "Deva... ale ty řetězy ho ani tak nepoutají, jako obluzují jeho mysl..."~ */
  IF ~~ THEN REPLY #54874 /* ~"Devo, mám pro tebe nějaké otázky..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54767 /* ~"Nebylo mým úmyslem pokoušet tě, devo. Obávám se, že tvé uvěznění tě nepříznivě ovlivnilo."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 34
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54768 /* ~"Nesouhlasím, Lorde Triasi. Měl jsi v ně zkrátka nadbytek důvěry."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 46
END

IF ~~ THEN BEGIN 180 // from:
  SAY #54769 /* ~Fall-from-Grace se náhle vložila do rozhovoru. "Jaký je tvůj názor na Válku Krve, Lorde Triasi?"~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 47
END

IF ~~ THEN BEGIN 181 // from:
  SAY #54770 /* ~Fall-from-Grace jemně promluvila. "Máš jistotu, že to chceš udělat? Deva může být jediný způsob, jak získat zpět tvé vzpomínky. Ravel nás za ním poslala. Zabiješ ho dříve, než odhalí svá tajemství?"~ */
  IF ~~ THEN REPLY #54875 /* ~Udeř do řetězů.~ */ EXTERN ~DTRIAS~ 50
  IF ~~ THEN REPLY #54876 /* ~Udeř devu.~ */ EXTERN ~DTRIAS~ 98
  IF ~~ THEN REPLY #54877 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54771 /* ~"Myslíš si, že můžeš ukončit Válku Krve tak, že ji přitáhneš před brány Ráje? Zlo v Nižších sférách je nekonečné. Legie Baatoru a Abyssu to jasně ukazují. Než se vyzbrojíš pouze svou pompézní arogancí, měl by sis zapamatovat děsivou moc nekonečného zla soustředěného proti jedinému cíli. Nedávej jim možnost zavést válku do Vyšších Sfér, nebo bude mnohovesmír trpět."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 78
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54772 /* ~"Dá se poučit ze všeho, pokud jsi dostatečně vnímavý, můj pane. Je dobré zapamatovat si, že moudrý muž využije každou příležitost k poučení."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 79
END

IF ~~ THEN BEGIN 184 // from:
  SAY #55712 /* ~"Morteho kritiku stranou. Mechanus je vlastně fascinující místo. Není tam žádné nebe, pouze obrovská kolečka, která se otáčí v prostoru... vyzařují světlo podle svého cyklu a vzniklý efekt doslova bere dech. Logika a řád Sféry může být uklidňující a je tam víc než dost, aby se tam nikdo nemusel nudit, pokud ví kam a jak jít."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 577
END

IF ~~ THEN BEGIN 185 // from:
  SAY #55714 /* ~"Modroni sdílejí běžnou 'energii.' Určitým způsobem je ta energie všechny propojuje. Pokud jeden z nich zemře, jeho energie je absorbována a je z ní vytvořen nový modron. Pokud se modron... vzbouří, přeruší tím toto spojení se svým druhem a nechá si malou část té energie."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55715 /* ~"Takže říkáš, že Nordom je částí Zdroje, ale je od něj odříznut. A když modron zemře, jsou znovu absorbování zdrojem. Bude i Nordom?"~ */ GOTO 188
  IF ~~ THEN REPLY #55717 /* ~"Takže... Nordome, je ten Mechanus zdrojem energie?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55719 /* ~"Aha. Nordome, mám pro tebe ještě další otázky..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55720 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from:
  SAY #55722 /* ~Fall-From-Grace kývla. "Morte má pravdu - modroni sdílejí běžnou 'energii.' Určitým způsobem je ta energie všechny propojuje. Pokud jeden z nich zemře, jeho energie je absorbována a je z ní vytvořen nový modron. Pokud se modron... vzbouří, přeruší tak toto spojení se svým druhem a nechá si malou část té energie."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 579
END

IF ~~ THEN BEGIN 187 // from:
  SAY #55723 /* ~Fall-From-Grace mírně přikývla. "Omlouvám se, Morte. Nechtěla jsem tě urazit."~ */
  IF ~~ THEN REPLY #55725 /* ~"Morte, potřebuju všechny informace, které můžu dostat, takže toho nechej. Pokud má Fall-From-Grace co dodat, potřebuju ji *slyšet*, jasné?"~ */ EXTERN ~DMORTE~ 580
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55727 /* ~"Takže říkáš, že Nordom je částí Zdroje, ale je od něj odříznut. A když modron zemře, jsou znovu absorbování zdrojem. Bude i Nordom?"~ */ EXTERN ~DMORTE~ 583
  IF ~~ THEN REPLY #55729 /* ~"Takže... Nordome, je ten Mechanus zdrojem energie?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55730 /* ~"Dobrá. Nordome, mám pro tebe ještě další otázky..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55731 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #55733 /* ~"Správně."~ */
  IF ~~ THEN REPLY #55735 /* ~"A když zemře, je vytvořený další modron." ~ */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #55736 /* ~"Nordomova energie bude navrácena Zdroji, ale Nordom přestane existovat. Další quadrone modron bude vytvořen, aby ho nahradil."~ */
  IF ~~ THEN REPLY #55738 /* ~"Takže... když se ... vzbouřil, stal se... smrtelným?"~ */ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #55739 /* ~Fall-From-Grace přikývla. "Čirá energie nemůže být zničena - pokud tomu rozumím - ale Nordom jako jednotlivec, jako 'Nordom,' by přestal existovat, ano."~ */
  IF ~~ THEN REPLY #55742 /* ~"Dobrá. Nordome, mám pro tebe ještě další otázky..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55743 /* ~"To je všechno, co jsem chtěl vědět. Pojďme."~ */ EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 191 // from:
  SAY #55745 /* ~"Morte..." Fall-From-Grace se jemně vložila do hovoru. "Musím přiznat, že bez tvých původních informací, bych měla problémy vysvětlit situaci... tvé časté používání metafor a frází způsobuje, že je pro ostatní *mnohem* lehčí pochopit tvé vysvětlení. Díky tomu jsi mnohem lepší učitel než já."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 192 // from:
  SAY #56035 /* ~"Zdravím tě, Advokáte Pekla Fhjulle Jedovatý Jazyku," Grace se lehce uklonila. "Budu mít tvé myšlenky na paměti."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 29
END

IF ~~ THEN BEGIN 193 // from:
  SAY #56036 /* ~Grace zní rozhořčeně. "Naznačuje snad Advokát Pekla Jedovatý Jazyk, že jsme my tanar'ri hrubá rasa?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 61
END

IF ~~ THEN BEGIN 194 // from:
  SAY #56037 /* ~"Určitě máš námitky vůči implementaci zla, než k úrovni. Mnoho mezi tanar'ri by tvrdilo, že čím blíže je někdo k základní povaze zla, tím více blíží ideálu."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 62
END

IF ~~ THEN BEGIN 195 // from:
  SAY #56038 /* ~"Z pohledu baatezu by to pochopitelně mohlo vypadat netolerovatelně. Ale... Advokáte, mnoho filozofů tanar'ri by argumentovalo, že baatezu se zase nedá odpustit vylučování vášní z násilí, vylučování vášně ze samotné esence zla. Baatezu by nejraději nahradili zuřivost chladnou metodickou krutostí. A tak tedy pokračuje stará debata: Co je vyšší zlo? Efektivní zlo, nebo vášnivé zlo?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #56683 /* ~"Znám spravedlnost, Vhailore. Přidávám k ní zkušenosti a moudrost, a pokud je spravedlnost nastavena těmito dvěma pravdami, stává se *silnější*. Znám také milosrdenství a odpuštění, protože bez nich by byly Sféry mnohem krutější místo."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 111
END

IF ~~ THEN BEGIN 197 // from:
  SAY #56688 /* ~"Ne, Vhailore, nejsou. Jsou to nástroje, kterými může být jiná duše spasena, povznesena a zesílena. A tak je i *mnohovesmír* posílen. V tom leží dokonalost, o níž mluvíš."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 112
END

IF ~~ THEN BEGIN 198 // from:
  SAY #56689 /* ~Fall-From-Grace se do toho vložila. "*Já*, Vhailore? Tak mě *suď* svým zrakem, zkus najít slabosti, o kterých tvrdíš, že mě požírají."~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ EXTERN ~DVHAIL~ 113
END

IF ~~ THEN BEGIN 199 // from:
  SAY #56690 /* ~"Na tomto místě se rozdělujeme, Vhailore."~ */
  IF ~~ THEN REPLY #56691 /* ~"Vhailore, zeptám se tě na něco jiného."~ */ EXTERN ~DVHAIL~ 91
  IF ~~ THEN REPLY #56692 /* ~"Už dost, Vhailore. Mám pro tebe další otázky..."~ */ EXTERN ~DVHAIL~ 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56693 /* ~"Tady se musí naše cesty rozdělit, Vhailore. Sbohem."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56694 /* ~"To nic, Vhailore. Pokračujme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #56695 /* ~"Přestaň se vyptávat, Vhailore." Fall-From-Grace promluvila bez jediného náznaku výhrůžky, ale nějak ta slova zní nebezpečně. "Tohle není soud, a ty ji v mé přítomnosti soudit nebudeš. Nech ji být."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 101
END

IF ~~ THEN BEGIN 201 // from:
  SAY #56696 /* ~"Nejprve musíš překonat mně, Vhailore. Nedovolím, abys jí ublížil."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 102
END

IF ~~ THEN BEGIN 202 // from:
  SAY #61423 /* ~Grace přikývla a potichu pravila. "Vrátím se brzy." Pak se otočila a odešla pryč.~ */
  IF ~~ THEN REPLY #61424 /* ~Běž za prostitutkou...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DUCHO~ 8
END

IF ~~ THEN BEGIN 203 // from: 121.0 121.1 121.4
  SAY #61635 /* ~Fall-From-Grace přikývla. "Dobrá tedy. Budu s tebou cestovat, pokud si stále přeješ mou společnost."~ */
  IF ~~ THEN REPLY #61642 /* ~"To ano."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 121.2 121.3
  SAY #61641 /* ~"Ah!" Fall-From-Grace se tiše zasmála, v očích se jí zablesklo. "Praktická myšlenka. Dobrá tedy... budu s tebou cestovat, pokud si stále přeješ mou společnost."~ */
  IF ~~ THEN REPLY #61643 /* ~"To ano."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 205 // from: 139.17 207.3 208.3 209.2 210.1 211.2 212.1 219.4 220.3 221.3 222.3 223.4 224.5 225.5 226.5 227.4 228.4 229.1 230.1 231.1 233.1 234.3 235.3 236.3 237.2 252.3 253.3 254.2 255.4 256.2 257.2 258.2 259.2 260.2 261.1 262.3 264.2 266.0 277.1 278.0 348.0 349.1 350.0 351.1 352.1 353.1 354.1 355.1 356.0
  SAY #61781 /* ~"Ano?"~ */
  IF ~~ THEN REPLY #61974 /* ~"Proč jsi založila Nevěstinec?"~ */ GOTO 207
  IF ~~ THEN REPLY #61975 /* ~"Můžu si přečíst tvůj deník?"~ */ GOTO 277
  IF ~  Global("Know_Yves_Grace","GLOBAL",1)
Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61976 /* ~"Yves říkala, že máš příběh, o který ses s ní nemohla podělit."~ */ GOTO 351
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #61977 /* ~"Rád bych si znovu poslechl příběh o tvé minulosti."~ */ GOTO 352
  IF ~  GlobalGT("Know_Grace_ExSlave","GLOBAL",0)
~ THEN REPLY #61978 /* ~"Vrischika tě zřejmě moc ráda nemá."~ */ GOTO 255
  IF ~  GlobalGT("Torment_Fell","GLOBAL",0)
~ THEN REPLY #61979 /* ~"Můžeš mi říct něco o tom symbolu na mé paži?"~ */ GOTO 348
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #61980 /* ~"Slyšela jsi někdy o noční čarodějnici jménem Ravel?"~ */ GOTO 229
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #61981 /* ~"Můžeš mi zopakovat, co víš o Ravel?"~ */ GOTO 234
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #61982 /* ~"Co víš o Válce Krve?"~ */ GOTO 219
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #61983 /* ~"Když jsme byli v Ravelině bludišti, Ravel řekla, že trpíš... bolí tě něco?"~ */ GOTO 263
  IF ~~ THEN REPLY #61984 /* ~"Vlastně, místo toho bych se chtěl zeptat na..."~ */ GOTO 139
  IF ~~ THEN REPLY #61985 /* ~"No nic. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 139.0
  SAY #61782 /* ~"Tanar'ri jsou fiendové - někteří jim říkají démoni. Přijali za své zlo a chaos. Žijí v jedovatých sférách Abyssu, kde se krmí vlastní zuřivostí a útočí na celý mnohovesmír, ničí vše, čeho se dotknou. Neustále se snaží pokoušet ostatní, aby konali zločiny z vášně a neřesti."~ */
  IF ~~ THEN REPLY #61986 /* ~"A ty jsi tanar'ri?"~ */ GOTO 213
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61987 /* ~"Jak  ses dostala do Sigilu?"~ */ GOTO 352
  IF ~~ THEN REPLY #61988 /* ~"Aha. Můžu ti položit ještě další otázku?"~ */ GOTO 139
  IF ~~ THEN REPLY #61989 /* ~"Díky za vysvětlení... Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 205.0
  SAY #61783 /* ~"Založila jsem nevěstinec, aby dala chlípnému vzrušení více možností, jak se vyjádřit nejenom prostřednictvím těla. V konverzaci a verbálních aktech se dá nalézt mnohé potěšení."~ */
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",1)
~ THEN REPLY #61991 /* ~"Proč jsi založila takové místo?"~ */ GOTO 210
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",0)
~ THEN REPLY #61992 /* ~"Proč jsi založila takové místo?"~ */ GOTO 208
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61993 /* ~"Jestli pocházíš z Abyssu, jak ses dostala do Sigilu?"~ */ GOTO 352
  IF ~~ THEN REPLY #61994 /* ~"Aha. Můžu ti položit ještě další otázku?"~ */ GOTO 205
  IF ~~ THEN REPLY #61995 /* ~"Díky za vysvětlení... Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.1
  SAY #61784 /* ~Fall-From-Grace zdvihla obočí. "To je podivná otázka." Zamračila se. "Nevzpomínám si, že by mi ji kdo položil. Alespoň ne takto přímo."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #61996 /* ~"Omlouvám se, Paní Grace. Nechtěl jsem být tak přímý, jsem jenom zvědavý."~ */ GOTO 209
  IF ~~ THEN REPLY #61997 /* ~"Takže... proč?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #61998 /* ~"No, připadá mi podivné, že by sukuba založila takové místo... samotný cíl tohoto místa je proti tvé povaze."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62000 /* ~"No tak nic. Můžu ti položit ještě další otázku?"~ */ GOTO 205
  IF ~~ THEN REPLY #62002 /* ~"Zapomeň na vysvětlení... Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #61990 /* ~"Oh, není se třeba omlouvat. Ráda si s tebou o důvodech promluvím, jestli chceš."~ */
  IF ~~ THEN REPLY #62011 /* ~"Ano, rád bych si to poslechl."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #62012 /* ~"No, připadá mi podivné, že by sukuba založila takové místo... samotný cíl tohoto místa je proti tvé povaze."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62015 /* ~"Teď zrovna ne. Můžu ti položit ještě další otázku?"~ */ GOTO 205
  IF ~~ THEN REPLY #62016 /* ~"Možná jindy... Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 207.0 208.1 208.2 209.0 209.1
  SAY #62004 /* ~"Část odpovědi na tvou otázku leží ve znalosti, že jsem členkou Společenstva Vjemu. Naše společenstvo věří, že jeden by měl zažít z mnohovesmíru tolik, kolik jenom dokáže."~ */
  IF ~~ THEN REPLY #62006 /* ~"A proto jsi založila Nevěstinec?"~ */ GOTO 211
  IF ~~ THEN REPLY #62008 /* ~"Aha. Už nepotřebuju další vysvětlení. Můžu ti položit ještě další otázku?"~ */ GOTO 205
  IF ~~ THEN REPLY #62010 /* ~"Díky za vysvětlení... Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #62017 /* ~"Nevěstinec je určený pro utěšení touhy i zatvrzelých intelektuálů. Má stimulovat mysl, zvyšovat uvědomění sebe sama i ostatních, nalézat nové způsoby, jak *zažít* jinou osobu. Je určený pro ty, kteří hledají něco víc než plytké fyzické uspokojení, které zaplňuje Úl a Dolní Čtvrt."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62018 /* ~"No já bych jim neříkal plyt... Eh, chtěl jsem říct, že tomu rozumím. Takže nevěstinec je v podstatě něco jako škola?"~ */ GOTO 212
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62019 /* ~"Aha. Takže tohle zařízení je určené pro intelektuální styk ne pro ten... jiný styk. Takže Nevěstinec je v podstatě škola?"~ */ GOTO 212
  IF ~~ THEN REPLY #62020 /* ~"Můžu ti položit ještě další otázku?"~ */ GOTO 205
  IF ~~ THEN REPLY #62021 /* ~"Díky za vysvětlení... Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0 211.1
  SAY #62023 /* ~"Ano. Doufám, že se učením umění jazyka a jeho jemností naučí návštěvníci i studenti více o sobě. Nedostatečné pochopení jazyka omezuje. Používání jazyka k vyvolávání emocí u ostatních je fantastická schopnost."~ */
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #62024 /* ~"Jestli pocházíš z Abyssu, jak ses dostala do Sigilu?"~ */ GOTO 352
  IF ~~ THEN REPLY #62025 /* ~"Aha. Můžu ti položit ještě další otázku?"~ */ GOTO 205
  IF ~~ THEN REPLY #62026 /* ~"Díky za vysvětlení... Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 206.0
  SAY #62027 /* ~"To je správné. Jsem nižší tanar'ri, přesněji sukuba." Lehce si povzdychla. "Obávám se, že jsme příliš běžné v Nižších Sférách i jinde. Většina členů mé rasy tráví čas sváděním smrtelníků různými pokušeními těla."~ */
  IF ~~ THEN REPLY #62028 /* ~"A ty...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-From-Grace řekla, že je sukuba,  "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ GOTO 215
  IF ~~ THEN REPLY #62029 /* ~"Aha. Můžu ti položit ještě další otázku?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-From-Grace řekla, že je sukuba,  "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ GOTO 139
  IF ~~ THEN REPLY #62030 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~Fall-From-Grace řekla, že je sukuba,  "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 139.1 139.4
  SAY #62031 /* ~" Jsem nižší tanar'ri, přesněji sukuba." Lehce si povzdychla. "Obávám se, že jsme příliš běžné v Nižších Sférách i jinde. Většina členů mé rasy tráví čas sváděním smrtelníků různými pokušeními těla."~ */
  IF ~~ THEN REPLY #62032 /* ~"A ty...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-From-Grace řekla, že je sukuba, "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ GOTO 215
  IF ~~ THEN REPLY #62033 /* ~"Aha. Můžu ti položit ještě další otázku?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-From-Grace řekla, že je sukuba, "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ GOTO 139
  IF ~~ THEN REPLY #62034 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~Fall-From-Grace řekla, že je sukuba, "nižší tanar'ri," jedna z fiendek z Nižších Sfér. Její rasa zjevně vyhledává smrtelníky a svádí je, aby mohla vzít jejich duše do Abyssu. Okouzlující.~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 213.0 214.0
  SAY #62035 /* ~"Ráda bych si myslela, že jsem se od toho distancovala... je to rozhodně triviální a neproduktivní způsob trávení času v mnohovesmíru. Život je o něčem víc, souhlasíš?" ~ */
  IF ~~ THEN REPLY #62036 /* ~"Myslím, že ano. Můžu ti položit ještě další otázku?"~ */ GOTO 139
  IF ~~ THEN REPLY #62037 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 139.12
  SAY #62038 /* ~"Vnímaví jsou společenstvem Sigilu, které je zaměřené na zkušenosti. Bez zkušeností, prožitků, pocitů, jsme co se týče mnohovesmíru slepí. A tak Vnímaví vyhledávají zkušenosti, jak to jenom jde. Až prožijeme vše, odhalí se pravda mnohovesmíru sama."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #62039 /* ~"Zajímavá filozofie. Mohl bych se k Vnímavým přidat?"~ */ GOTO 217
  IF ~~ THEN REPLY #62040 /* ~"Aha. Můžu ti položit ještě další otázku?"~ */ GOTO 139
  IF ~~ THEN REPLY #62041 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #62042 /* ~Usmála se. "Pokud se chceš přidat k Vnímavým, stačí být studentem života."~ */
  IF ~~ THEN REPLY #62043 /* ~"Myslel jsem tím, že bych se chtě ke společenstvu přidat."~ */ JOURNAL #27464 /* ~Fall-From-Grace mi navrhla, ať se podívám do Městské haly, jestli se chci přidat ke Společenství Vnímavých. Někdo z nich by mi prý mohl pomoct.~ */ GOTO 218
  IF ~~ THEN REPLY #62044 /* ~"Aha. Můžu ti položit ještě další otázku?"~ */ GOTO 139
  IF ~~ THEN REPLY #62045 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #62046 /* ~"Jistě... omlouvám se za rýpnutí." Grace přikývla. "Jestli se chceš přidat k Vnímavým, zajdi si do Občanské Haly. Někdo ti tam určitě pomůže."~ */
  IF ~~ THEN REPLY #62047 /* ~"Aha. Můžu ti položit ještě další otázku?"~ */ GOTO 139
  IF ~~ THEN REPLY #62048 /* ~"Dobrá tedy. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 205.8 236.1 294.0 294.1 337.0 337.1 338.0 338.1
  SAY #62049 /* ~"Válka Krve je konflikt, který zuří po celých Nižších Sférách mezi baatezu a tanar'ri. Bojují o to, zda má být zlo zákonné nebo chaotické." Grace se odmlčela. "Téhle válce je lepší se vyhnout. Ať se tanar'ri a baatezu mlátí a nechají zbytek Sfér v míru... nebo alespoň v relativním míru."~ */
  IF ~~ THEN REPLY #62050 /* ~"Relativní mír?"~ */ GOTO 220
  IF ~~ THEN REPLY #62051 /* ~"Používají lidské jednotky?"~ */ GOTO 221
  IF ~~ THEN REPLY #62052 /* ~"Jak dlouho už to probíhá?"~ */ GOTO 222
  IF ~~ THEN REPLY #62053 /* ~"Sloužila jsi v ní?"~ */ GOTO 223
  IF ~~ THEN REPLY #62054 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62055 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0 221.0 222.0 223.1 224.1 225.1 226.1 227.0 228.0
  SAY #62056 /* ~"No, Válka je tak velká, že se do ní většina ras dostane proti svému přání. A pokud se ji pokusí ignorovat, je to často ještě horší, než se jí zúčastnit."~ */
  IF ~~ THEN REPLY #62057 /* ~"Používají lidské jednotky?"~ */ GOTO 221
  IF ~~ THEN REPLY #62058 /* ~"Jak dlouho už to probíhá?"~ */ GOTO 222
  IF ~~ THEN REPLY #62059 /* ~"Sloužila jsi v ní?"~ */ GOTO 223
  IF ~~ THEN REPLY #62060 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62061 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 219.1 220.0 222.1 223.2 224.2 225.2 226.2 227.1 228.1
  SAY #62062 /* ~"Příležitostně. Ve Válce Krve bojuje dost lidských žoldáků. Slouží jako vojáci anebo jako krmivo, ať už pro kanóny, nebo pro fiendy."~ */
  IF ~~ THEN REPLY #62063 /* ~"Říkala jsi, že dokud bude válka probíhat, je ve zbytku Sfér relativní mír?"~ */ GOTO 220
  IF ~~ THEN REPLY #62064 /* ~"Jak dlouho už to probíhá?"~ */ GOTO 222
  IF ~~ THEN REPLY #62065 /* ~"Sloužila jsi v ní?"~ */ GOTO 223
  IF ~~ THEN REPLY #62066 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62067 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 219.2 220.1 221.1 223.3 224.3 225.3 226.3 227.2 228.2
  SAY #62068 /* ~"Podle kronik se Válka Krve datuje až k prvnímu setkání baatezu a tanar'ri... a to je *velmi* dávno. Nejsem si jistá, jestli existuje lidský termín, popisující takovou dobu." Grace zavrtěla hlavou.~ */
  IF ~~ THEN REPLY #62069 /* ~"Říkala jsi, že dokud bude válka probíhat, je ve zbytku Sfér relativní mír?"~ */ GOTO 220
  IF ~~ THEN REPLY #62070 /* ~"Používají lidské jednotky?"~ */ GOTO 221
  IF ~~ THEN REPLY #62071 /* ~"Sloužila jsi v ní?"~ */ GOTO 223
  IF ~~ THEN REPLY #62072 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62073 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 219.3 220.2 221.2 222.2 228.3
  SAY #62074 /* ~"Ne. Má matka ano. Sukuby většinou pokoušejí smrtelníky, aby stáhly jejich duše do Abyssu a mohli stvořit další tanar'ri, kteří by zemřeli ve válce."~ */
  IF ~~ THEN REPLY #62075 /* ~"Tvá matka sloužila ve Válce Krve?"~ */ GOTO 224
  IF ~~ THEN REPLY #62076 /* ~"Říkala jsi, že dokud bude válka probíhat, je ve zbytku Sfér relativní mír?"~ */ GOTO 220
  IF ~~ THEN REPLY #62077 /* ~"Používají lidské jednotky?"~ */ GOTO 221
  IF ~~ THEN REPLY #62078 /* ~"Jak dlouho už to probíhá?"~ */ GOTO 222
  IF ~~ THEN REPLY #62079 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62080 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #62081 /* ~"Ano, patřila mezi nejlepší, svedla bezpočet smrtelných mužů. Teď sídlí v Abyssu a prodává své děti do otroctví."~ */
  IF ~~ THEN REPLY #62082 /* ~"Tebe... prodala vlastní matka do otroctví?"~ */ GOTO 225
  IF ~~ THEN REPLY #62083 /* ~"Říkala jsi, že dokud bude válka probíhat, je ve zbytku Sfér relativní mír?"~ */ GOTO 220
  IF ~~ THEN REPLY #62084 /* ~"Používají lidské jednotky?"~ */ GOTO 221
  IF ~~ THEN REPLY #62085 /* ~"Jak dlouho už to probíhá?"~ */ GOTO 222
  IF ~~ THEN REPLY #62086 /* ~"Obtěžují tě tyhle otázky?"~ */ GOTO 228
  IF ~~ THEN REPLY #62087 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62088 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #62089 /* ~"Na čas. Vyhrála jsem svou svobodu v soutěži v improvizaci. To už je velice dávno."~ */
  IF ~~ THEN REPLY #62090 /* ~"Komu tě prodala?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~Fall-From-Grace mi řekla, že její vlastní matka ji prodala do otroctví... k nejhorším nepřátelům tanar'riů - baatezu. Fall-From-Grace zřejmě vyhrála svou svobodu v soutěži improvizace se svým pánem baatezu. O detailech se nezmínila.~ */ GOTO 226
  IF ~~ THEN REPLY #62091 /* ~"Říkala jsi, že dokud bude válka probíhat, je ve zbytku Sfér relativní mír?"~ */ GOTO 220
  IF ~~ THEN REPLY #62092 /* ~"Používají lidské jednotky?"~ */ GOTO 221
  IF ~~ THEN REPLY #62093 /* ~"Jak dlouho už to probíhá?"~ */ GOTO 222
  IF ~~ THEN REPLY #62094 /* ~"Neobtěžují tě tyto otázky?"~ */ GOTO 228
  IF ~~ THEN REPLY #62095 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62096 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #62105 /* ~"Prodala mě baatezu. Myslím si, že předpokládala, že mě zabiji. I když zná spoustu věcí, o jejich kultuře toho mnoho neví."~ */
  IF ~~ THEN REPLY #62106 /* ~"Prodala tě zapřísáhlým nepřátelům tanar'ri?"~ */ GOTO 227
  IF ~~ THEN REPLY #62107 /* ~"Říkala jsi, že dokud bude válka probíhat, je ve zbytku Sfér relativní mír?"~ */ GOTO 220
  IF ~~ THEN REPLY #62108 /* ~"Používají lidské jednotky?"~ */ GOTO 221
  IF ~~ THEN REPLY #62109 /* ~"Jak dlouho už to probíhá?"~ */ GOTO 222
  IF ~~ THEN REPLY #62110 /* ~"Neobtěžují tě tyto otázky?"~ */ GOTO 228
  IF ~~ THEN REPLY #62111 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62112 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #62113 /* ~"Ano. Je ještě něco, co bys chtěl vědět?"~ */
  IF ~~ THEN REPLY #62114 /* ~"Říkala jsi, že dokud bude válka probíhat, je ve zbytku Sfér relativní mír?"~ */ GOTO 220
  IF ~~ THEN REPLY #62115 /* ~"Používají lidské jednotky?"~ */ GOTO 221
  IF ~~ THEN REPLY #62116 /* ~"Jak dlouho už to probíhá?"~ */ GOTO 222
  IF ~~ THEN REPLY #62117 /* ~"Neobtěžují tě tyto otázky?"~ */ GOTO 228
  IF ~~ THEN REPLY #62118 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62119 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 224.4 225.4 226.4 227.3
  SAY #62120 /* ~"Oh, ne, vůbec ne. Měl bys vědět, že Válka Krve leží za většinou událostí ve Sférách. Je důležité vědět, co to je a kde se to odehrává."~ */
  IF ~~ THEN REPLY #62121 /* ~"Říkala jsi, že dokud bude válka probíhat, je ve zbytku Sfér relativní mír?"~ */ GOTO 220
  IF ~~ THEN REPLY #62122 /* ~"Používají lidské jednotky?"~ */ GOTO 221
  IF ~~ THEN REPLY #62123 /* ~"Jak dlouho už to probíhá?"~ */ GOTO 222
  IF ~~ THEN REPLY #62124 /* ~"Sloužila jsi v ní?"~ */ GOTO 223
  IF ~~ THEN REPLY #62125 /* ~"Mám ještě další otázky, které nesouvisí z Válkou Krve."~ */ GOTO 205
  IF ~~ THEN REPLY #62126 /* ~"Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 205.6
  SAY #62127 /* ~"Znám to jméno." Grace se odmlčela a chvíli přemýšlí. "O tomto jméně se hodně povídá a většina ji prohlašuje za mýtus, ale já předpokládám, že existovala a že během svého pobytu v Kleci tady vzbudila velký dojem." Vypadá překvapeně. "Proč se ptáš?"~ */
  IF ~~ THEN REPLY #62128 /* ~"Chci ji najít."~ */ GOTO 230
  IF ~~ THEN REPLY #62129 /* ~"No nic. Mám ještě nějaké otázky..."~ */ GOTO 205
  IF ~~ THEN REPLY #62130 /* ~"Nemám důvod... Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #62131 /* ~Grace pozdvihla obočí. "Opravdu? Nemohu si pomoct, ale musím se zeptat proč."~ */
  IF ~~ THEN REPLY #62132 /* ~"Potřebuju informaci, kterou má."~ */ GOTO 231
  IF ~~ THEN REPLY #62133 /* ~"No nic. Mám ještě nějaké otázky..."~ */ GOTO 205
  IF ~~ THEN REPLY #62134 /* ~"Nemám důvod... Už jsem slyšel dost. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #62135 /* ~"Tu informaci nikdo jiný nemá?"~ */
  IF ~~ THEN REPLY #62136 /* ~"Předpokládám, že tu znalost, kterou hledám, má jenom Ravel."~ */ JOURNAL #27460 /* ~Fall-From-Grace mi řekla, že její vlastní matka ji prodala do otroctví... k nejhorším nepřátelům tanar'riů - baatezu. Fall-From-Grace zřejmě vyhrála svou svobodu v soutěži improvizace se svým pánem baatezu. O detailech se nezmínila.~ */ GOTO 232
  IF ~~ THEN REPLY #62137 /* ~"No nic. Mám ještě nějaké otázky..."~ */ GOTO 205
  IF ~~ THEN REPLY #62138 /* ~"Nevím, ale chci to zjistit. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #62139 /* ~Grace ti položila ruku na paži. "Uvažuj nad tímhle - pokud Ravel opravdu existuje, je velice mocná a mazaná. Pokud jsou pravdivé jenom zlomky pověstí o ní, tak je to stvoření, které objevilo nový význam zla. Hledání jí, to není výprava, který by se dala brát na lehkou váhu."~ */
  IF ~~ THEN REPLY #62140 /* ~"To si uvědomuju."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #62141 /* ~"No, nikdy jsem nepotkala Mýtus. Mohlo by to být docela zvláštní." Usmála se. "Děláš někdy něco nudného?"~ */
  IF ~~ THEN REPLY #62142 /* ~"Nezkouším to... Víš ještě něco o Ravel?"~ */ GOTO 234
  IF ~~ THEN REPLY #62145 /* ~"Ne, když to jinak nejde. Můžu ti položit ještě další otázku?"~ */ GOTO 205
  IF ~~ THEN REPLY #62146 /* ~"Možná v jiné inkarnaci, ale ne teď. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 205.7 233.0
  SAY #62147 /* ~"Prý to byla jedna z čarodějek z Šedých Pustin a prý měla mnohem větší moc, než její sestry a také byla mazanější. Přišla před dávnými časy do Sigilu a kromě zla, které napáchala za svého pobytu, prý její činy ohrozily samotnou Klec. Teď existuje především jako fikce, jako postava v dětských příbězích." Grace se odmlčela. "Myslím si, že s ní Paní Bolesti provedla to samé, co s jinými nebezpečími pro Sigil."~ */
  IF ~~ THEN REPLY #62148 /* ~"Co?"~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ GOTO 235
  IF ~~ THEN REPLY #62149 /* ~"Co jsou to Šedé Pustiny?"~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ GOTO 236
  IF ~~ THEN REPLY #62150 /* ~"Existuje někdo, kdo by o ní mohl vědět víc?"~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ GOTO 237
  IF ~~ THEN REPLY #62151 /* ~"Můžu ti položit ještě další otázku?"~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ GOTO 205
  IF ~~ THEN REPLY #62152 /* ~"Aha. Pojďme dál."~ */ JOURNAL #27458 /* ~Fall-From-Grace mi řekla, že Ravel je noční čarodějnice, jedna ze sester, které se potulují Šedými Pustinami. Má mnohem větší moc než její sestry a do Sigilu přišla před dávnou dobou. Během svého pobytu rozzlobila Paní Bolesti a byla potrestána.~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0 236.0 237.0
  SAY #62153 /* ~"Ravel byla nejspíš uvržena do bludiště. Jednoho z vězení Paní."~ */
  IF ~~ THEN REPLY #62154 /* ~"Bludiště? Co je to?"~ */ JOURNAL #27457 /* ~Fall-From-Grace mi řekla, že Ravel byla uvězněna v jednom z budišť Paní Bolesti.~ */ GOTO 252
  IF ~~ THEN REPLY #62155 /* ~"Co jsou to Šedé Pustiny?"~ */ GOTO 236
  IF ~~ THEN REPLY #62156 /* ~"Existuje někdo, kdo by o ní mohl vědět víc?"~ */ GOTO 237
  IF ~~ THEN REPLY #62157 /* ~"Můžu ti položit ještě další otázku?"~ */ GOTO 205
  IF ~~ THEN REPLY #62158 /* ~"Aha. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 234.1 235.1 237.1 252.1 253.1 254.0
  SAY #62159 /* ~"Prokletá sféra, která leží 'mezi' Baatorem a Abyssem. Je to časté bitevní pole ve Válce Krve."~ */
  IF ~~ THEN REPLY #62160 /* ~"Víš, co se Ravel stalo?"~ */ GOTO 235
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62161 /* ~"Dost k Ravel... co je to Válka Krve?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~~ THEN REPLY #62162 /* ~"Existuje někdo, kdo by o ní mohl vědět víc?"~ */ GOTO 237
  IF ~~ THEN REPLY #62163 /* ~"Můžu ti položit ještě další otázku?"~ */ GOTO 205
  IF ~~ THEN REPLY #62164 /* ~"Aha. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 234.2 235.2 236.2 252.2 253.2 254.1
  SAY #62165 /* ~"Někdo v Hale by o ní měl vědět více."~ */
  IF ~~ THEN REPLY #62166 /* ~"Víš, co se Ravel stalo?"~ */ JOURNAL #27457 /* ~Fall-From-Grace mi řekla, že Ravel byla uvězněna v jednom z budišť Paní Bolesti.~ */ GOTO 235
  IF ~~ THEN REPLY #62167 /* ~"Co jsou to Šedé Pustiny?"~ */ JOURNAL #27457 /* ~Fall-From-Grace mi řekla, že Ravel byla uvězněna v jednom z budišť Paní Bolesti.~ */ GOTO 236
  IF ~~ THEN REPLY #62168 /* ~"Můžu ti položit ještě další otázku?"~ */ JOURNAL #27457 /* ~Fall-From-Grace mi řekla, že Ravel byla uvězněna v jednom z budišť Paní Bolesti.~ */ GOTO 205
  IF ~~ THEN REPLY #62169 /* ~"Možná tam zamíříme. Pojďme dál."~ */ JOURNAL #27457 /* ~Fall-From-Grace mi řekla, že Ravel byla uvězněna v jednom z budišť Paní Bolesti.~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from:
  SAY #62170 /* ~NULL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 239 // from: 139.7
  SAY #62171 /* ~"Význam jmen je komplikovaný subjekt. Je toho mnoho, co se dá říct, ale ještě víc co by se raději říkat nemělo."~ */
  IF ~~ THEN REPLY #62172 /* ~"Je Fall-From-Grace tvé pravé jméno?"~ */ GOTO 240
  IF ~~ THEN REPLY #62173 /* ~"Tak dobrá tedy. Můžu ti položit ještě další otázku?"~ */ GOTO 139
  IF ~~ THEN REPLY #62175 /* ~"Promluvíme si tedy později. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #62176 /* ~"Možná." Lehce se usmála. "Možná ne. Jsou jména, která jsou daná, a jména, která jsou získána. Kdo může říct, které je pravé?" ~ */
  IF ~~ THEN REPLY #62178 /* ~"Myslím, že jméno, které je získané, je důležitější."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",1)
~ GOTO 241
  IF ~~ THEN REPLY #62179 /* ~"Myslím, že jméno, které je dané, je důležitější."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",2)
~ GOTO 242
  IF ~~ THEN REPLY #62181 /* ~"Nejsem si jistý, jakou hodnotu přiřazuju jménu."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",3)
~ GOTO 243
  IF ~~ THEN REPLY #62182 /* ~"Tak dobrá tedy. Můžu ti položit ještě další otázku?"~ */ GOTO 139
  IF ~~ THEN REPLY #62183 /* ~"Už o tom nebudeme mluvit. Pojďme dál."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #62184 /* ~"Možná. Proč si to myslíš?"~ */
  IF ~~ THEN REPLY #62185 /* ~"Protože jméno, které je získané, není libovolné. To jméno mluví o tom, čeho jsi dosáhla."~ */ GOTO 244
END

IF ~~ THEN BEGIN 242 // from: 240.1
  SAY #62186 /* ~"Možná. Proč si to myslíš?"~ */
  IF ~~ THEN REPLY #62187 /* ~"Protože tak tě lidé vnímají. A jejich vjem může převážit tvé vlastní porozumění sebe sama.~ */ GOTO 244
END

IF ~~ THEN BEGIN 243 // from: 240.2
  SAY #62188 /* ~Dívá se na tebe se zájmem v očích. "Opravdu?"~ */
  IF ~~ THEN REPLY #62189 /* ~"Jméno je jenom plášť z písmen, přehozený přes osobu, nic víc. Jméno ti může někdy o osobě něco říct, možná ti dokonce pomůže definovat tu osobu, ale není to to, co ta osoba *je*."~ */ GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 241.0 242.0 243.0
  SAY #62190 /* ~Grace přikývla. "Zajímavá myšlenka."~ */
  IF ~  Global("Grace_Name","GLOBAL",1)
~ THEN REPLY #62191 /* ~"Tak proč ti říkají Fall-from-Grace, Upadlá v nemilost?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
~ THEN REPLY #62192 /* ~"Tak proč ti říkají Fall-from-Grace, Upadlá v nemilost?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
~ THEN REPLY #62193 /* ~"Tak proč ti říkají Fall-from-Grace, Upadlá v nemilost?"~ */ GOTO 247
END

IF ~~ THEN BEGIN 245 // from: 139.8 244.0
  SAY #62194 /* ~"Záleží na tom?" Usmála se. "Je to vysloužené jméno."~ */
  IF ~~ THEN REPLY #62195 /* ~"Mně na tom záleží. Rád bych věděl, proč ti tak říkají."~ */ GOTO 248
END

IF ~~ THEN BEGIN 246 // from: 139.9 244.1
  SAY #62196 /* ~"Záleží na tom?" Usmála se. "Je to dané jméno."~ */
  IF ~~ THEN REPLY #62197 /* ~"Mě na tom záleží. Rád bych věděl, jak  ses k takovému jménu dostala."~ */ GOTO 248
END

IF ~~ THEN BEGIN 247 // from: 139.10 244.2
  SAY #62198 /* ~"Záleží na tom?" Usmála se. "Je to jenom plášť z písmen."~ */
  IF ~~ THEN REPLY #62199 /* ~"Mě na tom záleží. Rád bych věděl, jak  ses k takovému jménu dostala."~ */ GOTO 248
END

IF ~~ THEN BEGIN 248 // from: 139.11 245.0 246.0 247.0
  SAY #62200 /* ~"Odpadla jsem od svého lidu... někteří by řekli, že jsem se nad svůj lid povznesla, ale pád mi *zní* přesněji." Tázavě se na tebe podívala. "Dává ti to smysl?"~ */
  IF ~~ THEN REPLY #62201 /* ~"Ano, dozajista. Kolem dokola, 'Fall' významově v sobě zahrnuje i ztrátu, je to takový vedlejší efekt."~ */ GOTO 249
  IF ~~ THEN REPLY #62202 /* ~"Ano, vskutku. Trochu bych změnil téma a zeptal se na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62203 /* ~"Ano... Myslím že už chápu. Každopádně mi to prozatím postačuje."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #62204 /* ~Fall-From-Grace je vteřinku zticha, pak zamyšleně přikývne. "Ano... snad to je důvod, kvůli němuž jsem měla onen pocit. Já... již před časem souhlasila se ztrátou, nicméně jméno se nezměnilo."~ */
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62205 /* ~"Určitě jsi s tím souhlasila?"~ */ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62206 /* ~"Takže ty jsi tedy s tím svolila? Ravel měla očividně jiný názor."~ */ GOTO 263
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62207 /* ~"Můžeš tedy potvrdit, že jsi s tím souhlasila?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62208 /* ~"Určitě jsi s tím svolila? Ravel byla očividně jiného názoru."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 263
  IF ~~ THEN REPLY #62209 /* ~"Tak jo. Hm, vrtá mi hlavou ještě pár otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62210 /* ~"Rozumím. Vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 250 // from: 249.0 249.2
  SAY #62211 /* ~Pohled Fall-From-Grace se střetl s tvým a opět se cítiš doslova zaplaven tou dokonalou modří, jež její zrak doslova vyzařuje... tentokrát jakoby na tebe útočilo rozbouřené moře. "Domnívala jsem se tak. Nicméně, fakt že jsme si o tom spolu promluvili, mě přivedl na jisté myšlenky. Něco jsem si konečně uvědomila." Usmála se na tebe. "A za to ti děkuji."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62212 /* ~"Tak, až si budeš chtít o tom promluvit, neváhej. Dobrá?"~ */ GOTO 251
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62213 /* ~"Inu, když se rozhodneš o tom diskutovat, nemusíš se ostýchat mi to dát vedět. Domluveno?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 251
  IF ~~ THEN REPLY #62214 /* ~"Tak fajn. Teď bych rád položil následující otázku..."~ */ GOTO 139
  IF ~~ THEN REPLY #62215 /* ~"Výborně. Můžeme vyrazit."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 250.0 250.1
  SAY #62216 /* ~Přitakala. "Jsi skutečně laskav. Zařídím se podle toho."~ */
  IF ~~ THEN REPLY #62217 /* ~"Srozuměno. Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 139
  IF ~~ THEN REPLY #62218 /* ~"V pořádku. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 235.0
  SAY #62219 /* ~Grace přiblížila ruce k sobě tak, aby se prsty dotýkaly. "O Paní kolují zvěsti, že dokáže manipulovat s částmi Sigilu..." Překvapeně sleduješ průhlednou minikopii Graceina prstu kterak se odděluje od její ruky, vznáší ve vzduchu a pomaličku vnořuje do kruhu jejích prstů. "... a vytvořit bludiště."~ */
  IF ~~ THEN REPLY #62220 /* ~"Jen pokračuj..."~ */ GOTO 253
  IF ~~ THEN REPLY #62221 /* ~"Rozumím. Co mi tak ještě můžeš prozradit o Ravelině sféře - sféře, odkud pochází... Šedé pustině?"~ */ GOTO 236
  IF ~~ THEN REPLY #62222 /* ~"Řekl bych, že tomu rozumím. A neznáš náhodou ještě někoho, kdo má informace o Ravel?"~ */ GOTO 237
  IF ~~ THEN REPLY #62223 /* ~"To je fuk. Můžeš mi ještě odpovědět na..."~ */ GOTO 205
  IF ~~ THEN REPLY #62224 /* ~"Chápu. Jo, to bude asi tak všechno, co jsem chtěl zjistit. Tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #62225 /* ~Průhledný kroužek se vznáší ve vzduchu a pak se jme pomalu otáčet. "Ta část Sigilu, kterou uchopí, vězní našeho viníka; neexistuje odsud úniková cesta. A celé se to může odehrát kdykoliv, při procházce po ulici, průchodu dveřmi..." Tleskla. "...a pak se ocitneš úplně někde jinde." Uvnitř průhledného kroužku náhle zahlédneš náznak pohybu, jakoby někdo uvnitř chodil.~ */
  IF ~~ THEN REPLY #62226 /* ~"Pokračuj..."~ */ GOTO 254
  IF ~~ THEN REPLY #62227 /* ~"Rozumím. Víš ještě něco o Ravelině domovské sféře... Šeré pustině?"~ */ GOTO 236
  IF ~~ THEN REPLY #62228 /* ~"Asi ti rozumím. Čirou náhodou nevíš ještě o někom, kdo by mohl Ravel znát?"~ */ GOTO 237
  IF ~~ THEN REPLY #62229 /* ~"Nech to plavat. Trochu bych změnil téma a zeptal se na..."~ */ GOTO 205
  IF ~~ THEN REPLY #62230 /* ~"Chápu. To bude tak vše, co jsem potřeboval vědět. Můžeme vyrazit."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #62231 /* ~Grace pokračuje, přičemž se průhledné bludišťátko zrcadlí v jejích očích. "Povídá se, že každé takové bludiště obsahuje portál vedoucí na svobodu, ale vůbec není snadné ho odhalit. Možná je zakomponovám uvnitř, aby vězni poskytl naději. A možná proto, aby ho to vědomí nenechalo klidně spát." Zobrazení se rozptýlilo ve vzduchu. "Dost možná kvůli obojímu."~ */
  IF ~~ THEN REPLY #62232 /* ~"Rozumím. Co mi ještě můžeš prozradit o Ravelině sféře, o místě, odkud pochází... Šeré pustině?"~ */ GOTO 236
  IF ~~ THEN REPLY #62233 /* ~"Řekl bych, že už rozumím. Hm, nevíš ještě o někom, kdo by mohl mít informace o Ravel?"~ */ GOTO 237
  IF ~~ THEN REPLY #62234 /* ~"To je fuk. Ještě by se mi hodily informace ohledně..."~ */ GOTO 205
  IF ~~ THEN REPLY #62235 /* ~"Chápu. 
"I see. Toť vše, co jsem se přál dozvědět. Vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 205.4
  SAY #62236 /* ~"Nikoliv, ona ne. Ji neviním.~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62237 /* ~"Co měla na mysli, když tě označila za nohsleda družiny baatezanů?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62238 /* ~"Co myslela tím, když tě nazvala přívržencem družiny baatezanů?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62239 /* ~"Co mělo znamenat to, že jsi byla nohsledem družiny baatezanů - alespoň podle její verze?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62240 /* ~"Proč ne?"~ */ GOTO 262
  IF ~~ THEN REPLY #62241 /* ~Mohl bych se ještě na pár věcí přeptat?~ */ GOTO 205
  IF ~~ THEN REPLY #62242 /* ~"Rozumím. Toť vše, co jsem se přál dozvědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 255.0 262.0
  SAY #62243 /* ~"Už jsme to jednou probírali. Určitou část svého života jsem byla otrokem baatezanů. Byl to krušný čas, uštědřili mi mnoho bolesti a utrpení."~ */
  IF ~~ THEN REPLY #62244 /* ~"Abych pravdu řekl, spíš mě zajímaly detaily ohledně tvého bytí "přívržencem skupiny", jak zmiňovala Vrichika. Co tím vlastně myslela?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62245 /* ~"Nechme to plavat. Ale vysvětli mi, tobě nevadí, že tě Vrischika nenávidí? Říkala jsi, že ji za to neodsuzuješ..."~ */ GOTO 262
  IF ~~ THEN REPLY #62246 /* ~"Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 205
  IF ~~ THEN REPLY #62247 /* ~"Toť vše, co jsem si přál zjistit. Pohyb pohyb."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 255.2 262.2
  SAY #62248 /* ~"Jistou část svého života jsem byla otrokem baatezanů - ale ta doba je již hodně vzdálená. Svou svobodu jsem získala při utkání v improvizačních schopnostech."~ */
  IF ~~ THEN REPLY #62249 /* ~"Abych pravdu řekl, spíš mě zajímaly detaily ohledně tvého bytí "nohsledem skupiny", jak zmiňovala Vrichika. Co tím vlastně myslela?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62250 /* ~"Chápu. Ale vysvětli mi, tobě nevadí, že tě Vrischika nenávidí? Pověděla jsi, že ji za to neodsuzuješ..."~ */ GOTO 262
  IF ~~ THEN REPLY #62251 /* ~"Teď bych rád položil následující otázku..."~ */ GOTO 205
  IF ~~ THEN REPLY #62252 /* ~"To bude vše, co jsem se přál dozvědět. Vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 258 // from: 255.1 262.1
  SAY #62253 /* ~"Dokážeš se rozpomenout na mou minulost tak, jak jsem tě s ní seznamila? Určitě?"~ */
  IF ~~ THEN REPLY #62254 /* ~"Abych byl upřímný, spíš mě zajímaly detaily ohledně tvého bytí "přívržencem skupiny", jak zmiňovala Vrichika. Co tím vlastně myslela?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62255 /* ~"Nechme to tedy plavat. Ale pověz mi, tobě nevadí, že tě Vrischika nenávidí? Říkala jsi, že ji za to neodsuzuješ..."~ */ GOTO 262
  IF ~~ THEN REPLY #62256 /* ~"Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 205
  IF ~~ THEN REPLY #62257 /* ~"Rozumím. To bude vše, co jsem si přál zjistit. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 256.0 257.0 258.0
  SAY #62258 /* ~Obličej Fall-From-Grace zaujal zvláštní výraz... určitou dobu tě studuje, snaží se vyčíst náznak nápovědy z tvých rysů. Poté se odhodlá promluvit, ale hlasem tišším než obvykle: "Záleží na tom?"~ */
  IF ~~ THEN REPLY #62259 /* ~"Ano, mě ano. Rád bych se dozvěděl víc o těch, jež mě doprovází."~ */ DO ~SetGlobal("Grace_Camp_Follower_Answer","GLOBAL",1)
~ GOTO 260
  IF ~~ THEN REPLY #62260 /* ~"Vlastně ani ne. Ale pověz mi, tobě nevadí, že tě Vrischika nenávidí? Říkala jsi, že ji za to neodsuzuješ..."~ */ GOTO 262
  IF ~~ THEN REPLY #62261 /* ~"Můžeš mi ještě odpovědět na..."~ */ GOTO 205
  IF ~~ THEN REPLY #62262 /* ~"Toť vše, co jsem se přál dozvědět. Tak pohyb pohyb."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 259.0
  SAY #62263 /* ~"Odpověď na tvou otázku hledej v tom, co ti teď vyjevím. Baatezané a lidé se *liší*. Oni prahnou po moci, nejsou posedlí svými těly narozdíl od lidských protějšků; nezajímá je znásilňování či jakékoliv jiné ponižující sexuální pratiky jež naopak používají s oblibou lidé na své vězně. Utrpení působené baatezu je mnohem sofistikovanější a daleko ničivější než *pouhopouhé* trýznění těla. Jizvy po něm vytrvají. Toto ses chtěl dozvědět?"~ */
  IF ~~ THEN REPLY #62264 /* ~"Ano. Prostě jsem chtěl poznat svůj doprovod, to je vše."~ */ GOTO 261
  IF ~~ THEN REPLY #62265 /* ~"Ano. Ale pověz mi, tobě nevadí, že tě Vrischika nenávidí? Říkala jsi, že ji za to neodsuzuješ..."~ */ GOTO 262
  IF ~~ THEN REPLY #62266 /* ~"Trochu bych změnil téma a zeptal se na..."~ */ GOTO 205
  IF ~~ THEN REPLY #62267 /* ~"Toť vše, co jsem si přál zjistit. Vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #62268 /* ~"Domnívala jsem se, že jsi již byl obeznámen." Fall-From-Grace mírně naklonila hlavu. "Mýlila jsem se."~ */
  IF ~~ THEN REPLY #62269 /* ~"Sděl mi - tobě nevadí, že tě Vrischika nenávidí? Pravila jsi, že ji za to neodsuzuješ..."~ */ GOTO 262
  IF ~~ THEN REPLY #62270 /* ~"Ještě bych potřeboval informace ohledně..."~ */ GOTO 205
  IF ~~ THEN REPLY #62271 /* ~"To bude vše, co jsem se přál dozvědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 255.3 256.1 257.1 258.1 259.1 260.1 261.0
  SAY #62272 /* ~"Vrischika je tanar'ri - fiend, stejně jako já, ale jiného druhu. Je alu-fiend. Abys mohl porozumět Vrischice, musíš vědět, že tanar'rský společenský systém je založen na chaosu a ten jako takový nerozeznává a neakceptuje pojmy jako jsou spravedlnost či nespravedlnost, poctivost, slušnost či podlost a jiné. Alu-fiendi jsou zde nahlíženi coby bytosti... nepatřičné. Beze smyslu. Což v mnoha ohledech je ještě horší než ortel smrti."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62273 /* ~"Co měla na mysli, když tě označila za nohsleda družiny baatezanů?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62274 /* ~"Co myslela tím, když tě nazvala přívržencem družiny baatezanů?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62275 /* ~"Co mělo znamenat to, že jsi byla nohsledem družiny baatezanů - alespoň podle její verze?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62276 /* ~"Chápu. Ještě bych se přeptal na..."~ */ GOTO 205
  IF ~~ THEN REPLY #62277 /* ~"To bude vše, co jsem si přál zjistit. Pohyb pohyb."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from: 205.9 249.1 249.3
  SAY #62278 /* ~Fall-From-Grace se na pár chvil odmlčí a její zamíří někam od vzdálených končin. Když svůj pohled namíří zpátky na tebe, z jejích očí vyzařuje prazvláštní blankyt, odstín, jež na tebe křičí smutkem, zármutkem a slzami.~ */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.0
  SAY #62279 /* ~"Ravelinými očím pichlavým jako divoké ostružiní skutečně nic neunikne, věci, jež jiní nevnímají, i když se třeba týkají přímo jejich nitra." Pomalu přikývla. "Čas... od času se bolest znovu přihlásí, nedá na sebe zapomenout. Už jsem se poučila, jak *složité* je změnit něčí charakter."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62280 /* ~"Jsi v pořádku?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 265
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62281 /* ~"Budeš v pořádku?"~ */ GOTO 265
  IF ~~ THEN REPLY #62282 /* ~"Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 205
  IF ~~ THEN REPLY #62283 /* ~"Toť vše, co jsem se přál dozvědět. Vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1
  SAY #62284 /* ~Téměř nezřetelně se pousmála a její pohled se střetl s tvým. "Ano... jsi hodný, že se ptáš. Prožitá bolest se nedá zapomenout, ale jinak sama se sebou jsem se smířila již před staletími."~ */
  IF ~~ THEN REPLY #62285 /* ~"Dobrá te-"~ */ GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY #62286 /* ~Grace tě uťala: "jsem ti vděčná za tvou péči. Nemůžu říci, že by mi byla nepříjemná."~ */
  IF ~~ THEN REPLY #62287 /* ~"Jen jsem se chtěl ujistit, že jsi v pořádku. Jinak bych se tě chtěl ještě na něco pozeptat."~ */ GOTO 205
  IF ~~ THEN REPLY #62288 /* ~"Samo. Jen jsem se chtěl ujistit. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 267 // from: 139.13
  SAY #62289 /* ~Fall-From-Grace lehce zavrtěla hlavou. "Ne, tomu nevěřím. Magické učení... se liší od mých motliteb."~ */
  IF ~~ THEN REPLY #62290 /* ~"Co jsi tím chtěla říct?"~ */ GOTO 268
  IF ~~ THEN REPLY #62291 /* ~"Koneckonců, nechme to plavat. Mohl bych položit ještě pár otázek?"~ */ GOTO 139
  IF ~~ THEN REPLY #62292 /* ~"Toť vše, co jsem si přál zjistit. Tak pohyb pohyb."~ */ EXIT
END

IF ~~ THEN BEGIN 268 // from: 267.0
  SAY #62293 /* ~"Mé schopnosti pramení z víry, nikoliv ze zpracovávání energie, jak to činí pravá magie. Magie je *ústrojí*, díky němuž energie mnohovesmíru může být spoutána a zužitkována - skrze různé rituály, posuňky a zařízení. Svou 'sílu' čerpám nejrůznějšími způsoby. Má víra a její podstata mi umožňuje poznat jistou nepatrnou část mnohovesmíru."~ */
  IF ~~ THEN REPLY #62294 /* ~"Podstata tvé víry? A v co že to věříš?"~ */ GOTO 269
  IF ~~ THEN REPLY #62295 /* ~"Rozumím. Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 139
  IF ~~ THEN REPLY #62296 /* ~"To bude vše, co jsem se přál dozvědět. Vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #62297 /* ~"Má víra tkví v *Poznání.* Věřím, že osoba se může změnit - k lepšímu - čím větší část mnohovesmíru dokáže obsáhnout a obráceně - čím větší procento veškerenstva se sezná s touto postavou. Má víra v Poznání mi dovoluje..." Odmlčela se, přemýšlejíc.~ */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY #62425 /* ~"Domnívám se, že nejlepší vysvětlení je následující: Má víra mi umožňuje *nazírat* na věci odlišně. Když takto zkoumám veškerenstvo, dozvídám se jak 'měnit' stav věcí - zcelit ránu, nahlédnout do cizího srdce a tak podobně. To vše se odehrává na základě mého přání."~ */
  IF ~~ THEN REPLY #62426 /* ~"Nicméně tyto tvoje 'změny' silně připomínají kouzla - jak se vlastně učíš jejich provádění? Nosíš s sebou knihu kouzel?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62427 /* ~"Věříš v Poznání kvůli svému pobytu s baatezu?"~ */ GOTO 273
  IF ~~ THEN REPLY #62428 /* ~"Chtěl bych získat tvůj pohled na svět. Můžeš mi říci jak na to?"~ */ GOTO 271
  IF ~~ THEN REPLY #62429 /* ~"Rozumím. Trochu bych změnil téma a zeptal se na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62430 /* ~"To bude vše, co jsem si přál zjistit. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.2
  SAY #62431 /* ~"Ne, to nedokážu. Chceš-li změnit své vnímání mnohovesmíru, musíš se to sám naučit... a bude to tvým vlastním způsobem, skrze své vlastní smysly." Nepatrně se pousmála. "Ale já se domnívám, že ze všech lidí zrovna *ty* mé vedení potřebuješ nejméně - zjišťuji totiž, že já sama se od tebe dozvídám mnohem více, než bych ti sama byla schopna poskytnout."~ */
  IF ~~ THEN REPLY #62432 /* ~"Ty tvoje 'změny' silně připomínají kouzla - jak se vlastně učíš jejich provádění? Máš s sebou knihu kouzel?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62433 /* ~"Věříš v Poznání kvůli svému pobytu s baatezu?"~ */ GOTO 273
  IF ~~ THEN REPLY #62434 /* ~"Chápu. Teď bych potřeboval ještě informace ohledně..."~ */ GOTO 139
  IF ~~ THEN REPLY #62435 /* ~"Toť vše, co jsem se přál dozvědět. Pohyb pohyb."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 270.0 271.0 273.3
  SAY #62436 /* ~"Nikoliv, schopnost 'kouzlit', jak to nazýváš - se ke mně navrací poté, co jsem si odpočinula a patřičně se soustředila. Své síly mohu znova koncentrovat po plnohodnotném spánku. Avšak obávám se, že k tomu, abych dokázala 'pozměnit' mnohovesmír kolem sebe je zapotřebí dostatek víry, což vyčerpává mysl. Dále pak nestačí toliko vědět, jak změnu provést - k tomu je zapotřebí disponovat patřičnou silou. ~ */
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62437 /* ~"Věříš v Poznání kvůli svému pobytu s baatezu?"~ */ GOTO 273
  IF ~~ THEN REPLY #62438 /* ~"Rozumím. Ještě bych se přeptal na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62439 /* ~"Toť vše, co jsem si přál dozvědět. Vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.1 271.1 272.0
  SAY #62440 /* ~Fall-From-Grace přikývla. "Dlouho jsem to zvažovala a nakonec jsem došla k závěru, že ano." Tázavě na tebe pohlédla. "Domnívám se, že je tomu tak, poněvadž jsem spokojená s tím, čím jsem se stala. Vlastně si myslím, že by to nebylo možné bez všech těch poznatků, jež jsem načerpala za svůj život."~ */
  IF ~  Global("Good_Grace_2","GLOBAL",0)
Global("Chaotic_Grace_1","GLOBAL",0)
~ THEN REPLY #62441 /* ~"Neřekl bych, že to mělo co do činění se získáváním zkušenosti... Ne, řekl bych, důležité na tom je jak se svými poznatky naložíš, nikoliv jak je získáš."~ */ GOTO 274
  IF ~  Global("Good_Grace_2","GLOBAL",1)
~ THEN REPLY #62442 /* ~"Jak už jsem se zmiňoval, nemyslím si, že to mělo co do činění se získáváním zkušeností... Ne, podle mě podstatné je jak se svými poznatky naložíš, nikoliv jak je získáš. Byla to právě tvá vnitřní síla, jež tě pozměnila."~ */ GOTO 274
  IF ~  Global("Chaotic_Grace_1","GLOBAL",1)
~ THEN REPLY #62443 /* ~"Už jsem to určitě říkal - neřekl bych, že to mělo co do činění se získáváním zkušeností... Ne, podle mě podstatné je jak se svými poznatky naložíš, nikoliv jak je získáš. Mohla za to tvá vnitřní síla, ta tě změnila."~ */ GOTO 274
  IF ~~ THEN REPLY #62444 /* ~"Ty tvoje 'změny' silně připomínají kouzla - jak se vlastně učíš jejich provádění? Máš s sebou knihu kouzel?"~ */ GOTO 272
  IF ~~ THEN REPLY #62445 /* ~"Chápu. Vrtá mi hlavou ještě pár otázek, mohu se zeptat?"~ */ GOTO 139
  IF ~~ THEN REPLY #62446 /* ~"To bude vše, co jsem se přál dozvědět. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0 273.1 273.2
  SAY #62447 /* ~Fall-From-Grace pomalu přitakala, vypadá zamyšleně. "Tvá slova jsou pravdivá." ~ */
  IF ~~ THEN REPLY #62448 /* ~Pravda: "Můj nazor je takový: kdyby mnoho jiných bylo vystaveno všemu, co jsi zažila ty, poklesli by ve své víře a finálně podrobeni byli. Zatímco ty ses dokázala vzchopit, *ponaučit se*, zkrátka, posílila ses tím, co tě nezničilo. Ukazuje to na jediné - úžasnou sílu vůle i charakteru."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62449 /* ~Lichotivá lež: "Myslím si tolik: mnoho jiných byvše vystaveno tomu, co jsi zakusila ty, poklesli by ve své víře a finálně porobeni byli. Zatímco ty ses dokázala vzchopit, *ponaučit se*, jednoduše posílila ses tím, jenž tě nezničilo. Ukazuje to na jediné - opravdovou sílu vůle i osobnosti."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62450 /* ~"Snad ano. Teď bych rád položil následující otázku..."~ */ GOTO 139
  IF ~~ THEN REPLY #62451 /* ~"Již nemám více na srdci. Tak pohyb pohyb."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 274.0 274.1
  SAY #62452 /* ~Fall-From-Grace si tě mlčenlivě prohlíží. ~ */
  IF ~~ THEN REPLY #62453 /* ~Pravda: "... a kvůli tomu tě obdivuji. Nejen pro tvou vnitřní sílu - rovněž že jsi podstoupila veškeré útrapy, strasti a hrůzy a nic z toho tě negativně nepoznamenalo. Dokázala si z těchto životních zkušeností vytěžit to dobré. Neznám mnoho těch, jenž by se ti mohli rovnat."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_2","GLOBALGood",1)
~ GOTO 276
  IF ~~ THEN REPLY #62454 /* ~Lichotivá lež:"... a proto tě obdivuji. Nejen kvůli tvé vnitřní síle - podstoupila jsi všemožné strádání, strasti a děsy a nic z toho tě negativně nepoznamenalo. Zvládla jsi z těchto životních zkušeností vytěžit to dobré. Není mnoho těch, co by se ti mohli rovnat."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALChaotic_Grace_1","GLOBALLaw",-1)
~ GOTO 276
  IF ~~ THEN REPLY #62455 /* ~"A to je vše."~ */ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 275.0 275.1 275.2
  SAY #62456 /* ~Fall-From-Grace se posmála a pak přikývla. "Děkuji ti za tvá vlídná slova. Rozhodně bych tě však nerada zklamala, musím přiznat že můj charakter může vypadat silnější než skutečně je. Stále se snažím každý nový prožitek brát jako příležitost k ponaučení."~ */
  IF ~~ THEN REPLY #62457 /* ~"To mohu jenom schvalovat. Teď bych trochu změnil téma a zeptal se na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62458 /* ~"Moudré. Vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 277 // from: 205.1
  SAY #62459 /* ~"Ne."~ */
  IF ~~ THEN REPLY #62460 /* ~"Prosím?"~ */ GOTO 278
  IF ~~ THEN REPLY #62461 /* ~"Dobrá tedy. Ještě bych se přeptal na..."~ */ GOTO 205
  IF ~~ THEN REPLY #62462 /* ~"Byl jsem jenom zvědavý. Tak, můžeme jít."~ */ EXIT
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #62463 /* ~Grace se pousmála. "Každá dáma má své tajemství."~ */
  IF ~~ THEN REPLY #62464 /* ~"Tak fajn. Ale vrtá mi hlavou ještě pár otázek..."~ */ GOTO 205
  IF ~~ THEN REPLY #62465 /* ~"Vrtalo mi to hlavou, tak jsem se zeptal. Teď se pohnem."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 139.14 139.15 280.4 281.8 284.0 286.0 287.2 288.1 289.2 290.2 291.3 292.2 293.2 294.3 295.1 296.3 297.3 298.3 299.2 300.3 301.0 302.2 303.0 304.2 305.1 307.0 308.1 309.2 310.2 311.2 312.1 313.1 314.0 316.1 317.0 319.1 320.2 321.1 322.1 323.3 324.0 325.1 326.1 327.2 328.1 329.0 343.0 344.1 345.1 346.1 347.1 357.4 359.1 360.0 361.0
  SAY #62466 /* ~"O kom konkrétně by sis chtěl pohovořit?"~ */
  IF ~~ THEN REPLY #62467 /* ~"Vlastně, téma dne bych měl být já."~ */ GOTO 357
  IF ~~ THEN REPLY #62468 /* ~"O tobě."~ */ GOTO 280
  IF ~  InParty("Morte")
~ THEN REPLY #62469 /* ~"O Mortovi."~ */ GOTO 296
  IF ~  InParty("Annah")
~ THEN REPLY #62470 /* ~"O Annah."~ */ GOTO 340
  IF ~  InParty("Dakkon")
~ THEN REPLY #62471 /* ~"O Dak'konovi."~ */ GOTO 308
  IF ~  InParty("Nordom")
~ THEN REPLY #62472 /* ~"O Nordomovi."~ */ GOTO 315
  IF ~  InParty("Ignus")
~ THEN REPLY #62473 /* ~"O Ignovi."~ */ GOTO 318
  IF ~  InParty("Vhail")
~ THEN REPLY #62474 /* ~"O Vhailorovi."~ */ GOTO 325
  IF ~~ THEN REPLY #62475 /* ~"Áá, nechme být toho nesmyslu, radši se tě zeptám na něco jiného."~ */ GOTO 139
  IF ~~ THEN REPLY #62476 /* ~"Nevadí, nechme to na jindy. Teď vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.1
  SAY #62477 /* ~"O mě? Skutečně?" Chvíli o tvé výzvě přemítá, pak přitaká. "V pořádku, pokud tě zajímá něco, co se mě týká, klidně se ptej."~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62478 /* ~"Chci ti jenom říct, jak jsem tehdy v bludišti políbil Ravel..."~ */ GOTO 281
  IF ~~ THEN REPLY #62479 /* ~"Vlastně se chci zeptat, co ke mně cítíš?"~ */ GOTO 287
  IF ~~ THEN REPLY #62480 /* ~"Co si myslíš o současné situaci?"~ */ GOTO 330
  IF ~~ THEN REPLY #62481 /* ~"Napadá tě, kým nebo čím bych mohl být?"~ */ GOTO 288
  IF ~~ THEN REPLY #62482 /* ~"Nechme to plavat, pohovořme si o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62483 /* ~"Opustil bych úplně toto téma. Zvlášť když mi vrtá hlavou ještě pár otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62484 /* ~"Nechme to na jindy. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 281 // from: 280.0 357.0
  SAY #62485 /* ~Grace pozdvihla dlaň a přerušila tok tvé řeči. "Není potřeba se hlouběji tímto tématem zabývat. Musím rozhodně přiznat, že oceňuji tvou odvahu - není mnoho lidí, jež by si troufli políbit živoucí mýtus, obzvláště zosobňuje-li jej Ravel."~ */
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62486 /* ~Pravda: "Políbil jsem Ravel, protože ona si jistě nemyslela, že bych toho byl schopen - to je ten důvod. Podezříval jsem ji, že mě zkouší."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62487 /* ~Lež: "Políbil jsem Ravel, protože jsem ji podezříval, že mě zkouší. Abych jí dokázal, že jsem toho schopen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62488 /* ~Pravda: "Políbil jsem ji, poněvadž jsem v tu chvíli měl pocit, že je to to nejlepší, co můžu udělat - ale neptej se mě jak jsem na to přišel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62489 /* ~Lež: "Políbil jsem ji, poněvadž mě právě přišlo na um, že je to to nejlepší, co můžu udělat - ale neptej se mě jak jsem na to přišel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62490 /* ~Pravda: "Ravel jsem políbil čistě ze své vlastní vůle... nicméně její původní podoba je doost odpudivá.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62491 /* ~Lež: "Políbil jsem ji proto, protože jsem chtěl. Ale je teda pěkně hnusná ve své prapůvodní podobě."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62492 /* ~Pravda: "Vlastně jsem políbíl Ravel, protože celou dobu chci políbit tebe."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_2","GLOBALLaw",1)
~ GOTO 285
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62493 /* ~Lichotivá lež: "Tedy, hmm, políbíl jsem Ravel, poněvadž celou dobu chci políbit tebe."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_3","GLOBALLaw",-1)
~ GOTO 285
  IF ~~ THEN REPLY #62494 /* ~"Tak tedy dobrá. Ještě by mě zajímalo pár odpovědí..."~ */ GOTO 279
  IF ~~ THEN REPLY #62495 /* ~"Trochu bych změnil téma a zeptal se na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62496 /* ~"Tak tedy již o tom nebudeme mluvit. A teď pohyb pohyb."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 281.2 281.3 281.4 281.5
  SAY #62497 /* ~"Zkoušela tě."~ */
  IF ~~ THEN REPLY #62498 /* ~"Co tím myslíš?"~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 281.0 281.1 282.0
  SAY #62499 /* ~"Podle mého jsou Raveliny schopnosti co se týče tebe značně omezené, což je zřejmě jedna z věcí, které ji přitahují. Jedině skrze přímý kontakt dokáže něco zjistit.~ */
  IF ~~ THEN REPLY #62500 /* ~"A co si myslíš, že se snažila zjistit?"~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #62501 /* ~"No, řekla bych, že ji zajímalo, zda pro tebe něco znamená - a polibek je jeden ze způsobů, jak se tento odhad dá provést."~ */
  IF ~~ THEN REPLY #62502 /* ~"Paráda. Tak a teď si proberme někoho dalšího..."~ */ GOTO 279
  IF ~~ THEN REPLY #62503 /* ~"Ještě bych se přeptal na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62504 /* ~"Tak o tom už nebudeme mluvit. Vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 285 // from: 281.6 281.7
  SAY #62505 /* ~"Pak tedy že jsi ji políbil, bylo to nejlepší, cos mohl udělat. I když to pro tebe znamenalo značný risk - políbít sukuba rovná se pohlédnout smrti do očí.~ */
  IF ~~ THEN REPLY #62506 /* ~"Co tím chceš říct?"~ */ JOURNAL #61616 /* ~Fall-From-Grace mi řekla že může polibkem z oběti vysát život... z nějakého důvodu mě to povzbudilo. Nemůžu normálně umřít. Hmmmm. Možná by se to časem mohlo hodit. Musím si to zapamatovat.~ */ GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #62507 /* ~"Sukubus zabíji smrtelníky tak, že je políbí a přitom z nich vysaje životní sílu. Ačkoliv je to pro oběť nadmíru příjemný zážitek, nemůže si jej patřičně vychutnat."~ */
  IF ~~ THEN REPLY #62508 /* ~"Aj, já... ehm, no, změňme téma, jo?"~ */ GOTO 279
  IF ~~ THEN REPLY #62509 /* ~"Hmmmm. Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62510 /* ~"Úchvatné... tedy, chtěl jsem říci dechberoucí. Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 287 // from: 280.1 357.1
  SAY #62511 /* ~Grace se pousmála. "Každá dáma má své tajemství."~ */
  IF ~~ THEN REPLY #62512 /* ~"Tak to bych se moc rád dozvěděl tvůj názor na současnou situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62513 /* ~"Výborně. Nenapadá tě kým nebo čím bych tak mohl být?"~ */ GOTO 288
  IF ~~ THEN REPLY #62514 /* ~"Tak to nechme plavat. Probereme někoho jiného..."~ */ GOTO 279
  IF ~~ THEN REPLY #62515 /* ~"Tak to nech být. Teď bych rád položil následující otázku..."~ */ GOTO 139
  IF ~~ THEN REPLY #62516 /* ~"Třeba jindy. Pohyb pohyb."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 280.3 287.1 357.3
  SAY #62517 /* ~Grace se v zamyšlení zamračila. "Dobrovolně přiznávám, že jsi tak trochu hádanka." Usmála se, "Ale já tajemství shledávám poutavými. Tak co, pokusíme se vrhnout trochu světla na současný stav?"~ */
  IF ~~ THEN REPLY #62518 /* ~"Ano."~ */ GOTO 289
  IF ~~ THEN REPLY #62519 /* ~"Ne, nechme to na později. Teď bych si rád promluvil o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62520 /* ~"Nech to plavat. Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 139
  IF ~~ THEN REPLY #62521 /* ~"Třebas příště. Teď vyražme."~ */ EXIT
END

IF ~~ THEN BEGIN 289 // from: 288.0
  SAY #62522 /* ~"Tak za prvé, přestože je dost možné, že jsi tiefling nebo nějaký poměrně vzácný míšenec, můj odhad je, že jsi člověk... nebo aspoň kdysi byl.~ */
  IF ~~ THEN REPLY #62523 /* ~"V pořádku... pokračuj."~ */ GOTO 290
  IF ~~ THEN REPLY #62524 /* ~"Možná je zde ještě něco, co by mohlo objasnit stávající situaci..."~ */ GOTO 330
  IF ~~ THEN REPLY #62525 /* ~"Když o tom tak uvažuju, raději to odložme. Což takhle promluvit si o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62526 /* ~"Vlastně je mi to fuk. Ale potřeboval bych informace ohledně..."~ */ GOTO 139
  IF ~~ THEN REPLY #62527 /* ~"Můžeme to dokončit jindy. Ale teď vyrážíme."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #62528 /* ~"Podle zjevu bych tě odhadla na zhruba třicátníka - bohužel všechny ty jizvy a sešívání znemožňují přesnější určení."~ */
  IF ~~ THEN REPLY #62529 /* ~"Mluv dál... pokračuj."~ */ GOTO 291
  IF ~~ THEN REPLY #62530 /* ~"Možná je zde ještě něco, co by mohlo objasnit stávající situaci..."~ */ GOTO 330
  IF ~~ THEN REPLY #62531 /* ~"Když o tom přemýšlím, raději to odložme. Což takhle promluvit si o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62532 /* ~"Vlastně mi to je vcelku jedno. Ještě bych se přeptal na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62533 /* ~"Popovídáme si o tom jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #62534 /* ~"Klíčem ke tvé minulosti je paměť a jak to vypadá, jistá místa, zážitky a lidé dokáží aktivovat a přívést na povrch téměř zapomenuté vzpomínky. Čili je ve tvém vlastním zájmu navštívit co možná nejvíce míst a promluvit si s co nejvíce inteligentními bytostmi... ve zkratce prostě poznat svůj vesmír jak nejvíc to půjde."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 292
  IF ~~ THEN REPLY #62535 /* ~"Rada jako od Vnímavce, co?"~ */ GOTO 295
  IF ~~ THEN REPLY #62536 /* ~"Možná existuje ještě něco, co by dokázalo vrhnout trochu světla na stávající situaci..."~ */ GOTO 330
  IF ~~ THEN REPLY #62537 /* ~"V pořádku. Což takhle promluvit si o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62538 /* ~"Áááni mi na tom nezáleží. Ale vrtá mi hlavou ještě pár otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62539 /* ~"Promluvíme si o tom jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.0
  SAY #62540 /* ~"Ravel nám toho prozradila více a tyto informace bychom neměli jen tak přejít. Obzvláště to o tvé smrtelnosti mi přijde vcelku důležité - jednak fakt ze se někam ztratila a za druhé pokud by se jí někdo zmocnil, nevěstilo by to pro tebe nic dobrého."~ */
  IF ~~ THEN REPLY #62541 /* ~"Pokračuj..."~ */ GOTO 293
  IF ~~ THEN REPLY #62542 /* ~"Možná je zde ještě něco, co by mohlo objasnit stávající situaci..."~ */ GOTO 330
  IF ~~ THEN REPLY #62543 /* ~"V pořádku. Což takhle si probrat někoho jiného..."~ */ GOTO 279
  IF ~~ THEN REPLY #62544 /* ~"Je mi to jedno. Teď bych rád položil následující otázku..."~ */ GOTO 139
  IF ~~ THEN REPLY #62545 /* ~"Promluvíme si o tom příště."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 292.0
  SAY #62546 /* ~"Ještě jedna věc mi přijde zvláště znepokojivá. Ravel se zmiňovala o negativním  vztahu mezi tvou myslí a tvými skony - jakoby naznačovala, že při každém úmrtí přijdeš o část svých vzpomínek."~ */
  IF ~~ THEN REPLY #62547 /* ~"Mluv dál."~ */ GOTO 294
  IF ~~ THEN REPLY #62548 /* ~"Třebas existuje ještě něco, co by mohlo objasnit stávající situaci..."~ */ GOTO 330
  IF ~~ THEN REPLY #62549 /* ~"Dobrá. A teď pro změnu bychom mohli diskutovat o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62550 /* ~"Ne, nesejde na tom. Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 139
  IF ~~ THEN REPLY #62551 /* ~"Promluvíme si o tom jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 293.0
  SAY #62552 /* ~"No a poslední věc - zmiňovala se, že tvé jizvy vypráví o 'válce fiendů' - to by odpovídalo Válce krve."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62553 /* ~"Co je to Válka krve?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62554 /* ~"Jsem již obeznámen s Válkou krve. Ale zajímá mě, co bys mi o tom mohla říci ty."~ */ GOTO 219
  IF ~~ THEN REPLY #62555 /* ~"Snad je zde ještě něco, co by mohlo objasnit stávající situaci..."~ */ GOTO 330
  IF ~~ THEN REPLY #62556 /* ~"Dobrá. Což takhle probrat někoho jiného..."~ */ GOTO 279
  IF ~~ THEN REPLY #62557 /* ~"Nech to plavat. Ještě bych potřeboval informace ohledně..."~ */ GOTO 139
  IF ~~ THEN REPLY #62558 /* ~"Promluvíme si o tom příště."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 291.1
  SAY #62559 /* ~Fall-From-Grace se v zadumání usmála. "Nedoporučovala bych ti to, pokud bych si to sama nevyzkoušela. A kdybys ty sám nevěděl, že je to správné."~ */
  IF ~~ THEN REPLY #62560 /* ~"Snad je zde ještě něco, co by dokázalo trochu objasnit stávající situaci..."~ */ GOTO 330
  IF ~~ THEN REPLY #62561 /* ~"V pořádku. Promluvme si teď o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62562 /* ~"Fajn. Trochu bych změnil téma a zeptal se na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62563 /* ~"Podebatujeme o tom příště."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 279.2
  SAY #62564 /* ~"Morte je ze všech nejdivnější... Už jsem toho za svůj život viděla skutečně hodně, ale nic jemu podobného. Chová se podoben mimiru. Očividně je studnou vědomostí, ale já v jeho blízkosti..." Nasála vzduch a pokrčila nos, "cítím pach Baatoru."~ */
  IF ~~ THEN REPLY #62565 /* ~"Zápach Baatoru?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~~ THEN REPLY #62566 /* ~"Mimir?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Mimir","GLOBALKnow_Mimir",0)
~ GOTO 299
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62567 /* ~"Už jsem odhalil, proč tomu tak bylo - celé se to nakonec vyvrbilo tak, že jsem ho vytrhl z Pilíře lebek v Baatoru, je to už hodně dávno."~ */ GOTO 304
  IF ~~ THEN REPLY #62568 /* ~"Rozumím. Mohli bychom se teď věnovat zase někomu jinému..."~ */ GOTO 279
  IF ~~ THEN REPLY #62569 /* ~"Ještě bych se přeptal na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62570 /* ~"Promluvíme si o tom jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 296.0 298.0
  SAY #62571 /* ~"Ano. Ale dozajista není baatezu... nebo alespoň žádný z druhů, které jsem poznala. Pach, co je z něj cítit, mi vždy připomíná, abych neodkládala ostražitost, když s ním jednám."~ */
  IF ~~ THEN REPLY #62572 /* ~"Co znamená 'baatezu' a 'Baatorský', jak jsi o tom mluvila?"~ */ GOTO 298
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62573 /* ~"Co jsi to předtím povídala o 'mimirech'?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62574 /* ~"Co jsi to předtím vykládala o 'mimirech'?"~ */ GOTO 299
  IF ~~ THEN REPLY #62575 /* ~"Chápu. Můžeme se teď vrhnout na někoho dalšího..."~ */ GOTO 279
  IF ~~ THEN REPLY #62576 /* ~"Hmmm. Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62577 /* ~"Prodiskutujeme to příště."~ */ EXIT
END

IF ~~ THEN BEGIN 298 // from: 297.0
  SAY #62578 /* ~"Omlouvám se... Baator je jednou z vnějších sfér, domov baatezanů, což je rasa fiendů. Jsou to zlá stvoření, nicméně jejich chování a organizace vykazuje mnoho známek zákonného uspořádání. Někteří je zvou 'ďáblové'. Mají stanovenou hierarchii, využívají smluv... zkrátka jsou v mnoha ohledech podobni byrokratům... tedy, zlým byrokratům.~ */
  IF ~~ THEN REPLY #62579 /* ~"Co jsi to povídala ohledně toho Baatorského pachu?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62580 /* ~"Můžeš zopakovat informace ohledně 'mimirů'?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62581 /* ~"Již dříve jsi se zmínila o 'mimirech'. Mohla bys mi to drobet připomenout?"~ */ GOTO 299
  IF ~~ THEN REPLY #62582 /* ~"Rozumím. Což takhle si probrat někoho jiného..."~ */ GOTO 279
  IF ~~ THEN REPLY #62583 /* ~"Hmmm. Teď bych rád položil následující otázku..."~ */ GOTO 139
  IF ~~ THEN REPLY #62584 /* ~"Promluvíme si o tom jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 296.1 297.1 297.2 298.1 298.2
  SAY #62585 /* ~"Mimorové se ze všeho nejvíce podobají encyklopediím. Vlastník mu položí otázku a pokud mimir vlastní danou informaci, zodpoví dotaz."~ */
  IF ~  Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #62586 /* ~"A Morte je mimir?"~ */ DO ~SetGlobal("Grace_Silver_Mimir","GLOBAL",1)
~ GOTO 300
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62587 /* ~"Tedy, Morte není mimir - ukázalo se, že před dávnou dobou jsem ho v Baatoru vytrhl z Pilíře lebek."~ */ GOTO 304
  IF ~~ THEN REPLY #62588 /* ~"Chápu. Můžeme si teď probrat někoho jiného..."~ */ GOTO 279
  IF ~~ THEN REPLY #62589 /* ~"Hmmm. Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 139
  IF ~~ THEN REPLY #62590 /* ~"Podebatujeme o tom příště."~ */ EXIT
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #62591 /* ~"Těžko tomu uvěřit. Morte postrádá stříbřítý kov, kterýžto mimirové obvykle mívají. A také se mi zdá, že má vlastní vůli. Rozhodně se odlišuje od běžných mimirů." Grace lehce pokrčila rameny. "*Může* být jedním z nich, ale není ani trochu podobem žádnému z těch, které jsem doposud potkala."~ */
  IF ~~ THEN REPLY #62592 /* ~"Mám za to, že Morte je mimir."~ */ GOTO 301
  IF ~  Global("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #62593 /* ~"Morte se prohlásil za mimira."~ */ GOTO 302
  IF ~~ THEN REPLY #62594 /* ~"Taky se mi nepozdává, že by Morte byl mimir."~ */ GOTO 303
  IF ~~ THEN REPLY #62595 /* ~"Rozumím. Co takhle si promluvit o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62596 /* ~"Hmmm. Ještě bych potřeboval informace ohledně..."~ */ GOTO 139
  IF ~~ THEN REPLY #62597 /* ~"Promluvíme si o tom jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 301 // from: 300.0 302.0
  SAY #62598 /* ~"Tedy toto téma bylo vyčerpáno."~ */
  IF ~~ THEN REPLY #62599 /* ~"Mohli bychom si vzít na mušku někoho dalšího..."~ */ GOTO 279
  IF ~~ THEN REPLY #62600 /* ~"Trochu bych změnil téma a zeptal se na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62601 /* ~"Dobrá, tak pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 302 // from: 300.1
  SAY #62602 /* ~"Skutečně? Prazvláštní. Nu což."~ */
  IF ~~ THEN REPLY #62603 /* ~"Věřím mu."~ */ GOTO 301
  IF ~~ THEN REPLY #62604 /* ~"Ne, nějak mi to nesedí, nevěřím mu."~ */ GOTO 303
  IF ~~ THEN REPLY #62605 /* ~"A co takhle si probrat někoho jiného..."~ */ GOTO 279
  IF ~~ THEN REPLY #62606 /* ~"Ještě bych se přeptal na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62607 /* ~"Myslím tedy, že je čas se pohnout."~ */ EXIT
END

IF ~~ THEN BEGIN 303 // from: 300.2 302.1
  SAY #62608 /* ~"Myslím, že existuje nějaká zkouška pravosti... ale já bych ji rozhodně nedoporučovala, bereš-li ho za svého přítele. Pakliže ano, pak bys neměl pochybovat o jeho slovech a vzít za bernou minci, co o sobě tvrdí."~ */
  IF ~~ THEN REPLY #62609 /* ~"Chápu. Což takhle si vzít na paškál někoho dalšího..."~ */ GOTO 279
  IF ~~ THEN REPLY #62610 /* ~"Vrtá mi hlavou ještě pár otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62611 /* ~"V pořádku. Můžeme nyní náš dialog ukončit, téma je vyčerpáno."~ */ EXIT
END

IF ~~ THEN BEGIN 304 // from: 296.2 299.1
  SAY #62612 /* ~"Ano, to by vysvětlovalo množství jeho vědomostí. Nicméně - " Fall-From-Grace se odmlčela, "v Pilíři neskončí jen tak leckdo. K tomu je zapotřebí... jistá souhra okolností."~ */
  IF ~~ THEN REPLY #62613 /* ~"Jaké okolnosti?"~ */ DO ~SetGlobal("Know_Pillar_Circumstances","GLOBAL",1)
~ GOTO 305
  IF ~  Global("Know_Pillar_Circumstances","GLOBAL",1)
~ THEN REPLY #62614 /* ~"Již jsem s nimi byl obeznámen - musíš zalhat a tato tvá lež povede k něčímu skonu, což?"~ */ GOTO 307
  IF ~~ THEN REPLY #62615 /* ~"Chápu. Můžeme si teď promluvit o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62616 /* ~"Teď bych rád položil následující otázku..."~ */ GOTO 139
  IF ~~ THEN REPLY #62617 /* ~"To by prozatím mohlo stačit. Čas na další cestu."~ */ EXIT
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #62618 /* ~"Pilíř lebek je sloup složený z živých hlav takových, jejichž majitelé svou lží způsobili něčí smrt. Dokáže zodpovědět značné množství dotazů, protože jeho znalosti jsou obrovské. Ale stejně tak cena za inforace od něj je značná."~ */
  IF ~~ THEN REPLY #62619 /* ~"Takže když takto Morte skončil, musel někomu zalhat a dotyčný následně zemřel, že?~ */ GOTO 307
  IF ~~ THEN REPLY #62620 /* ~"Rozumím. Což takhle si probrat někoho jiného..."~ */ GOTO 279
  IF ~~ THEN REPLY #62621 /* ~"Hmmmm. Zajímalo by mě ještě pár odpovědí..."~ */ GOTO 139
  IF ~~ THEN REPLY #62622 /* ~"Dobrá. Vlastně, to je všechno."~ */ EXIT
END

IF ~~ THEN BEGIN 306 // from:
  SAY #62623 /* ~NULL NODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 307 // from: 304.1 305.0
  SAY #62624 /* ~"Přesně."~ */
  IF ~~ THEN REPLY #62625 /* ~"Chápu. Promluvme si teď o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62626 /* ~"Ještě bych potřeboval informace ohledně..."~ */ GOTO 139
  IF ~~ THEN REPLY #62627 /* ~"Hmmm. Jednou se ho na to přeptám. Teď ale pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 308 // from: 279.4
  SAY #62628 /* ~"Dak'kon?" Grace pozdvihla obočí. "Vůbec se nechová jako průmerný githzerai, výrazně se odlišuje."~ */
  IF ~~ THEN REPLY #62629 /* ~"Skutečně? Jak konkrétně?"~ */ GOTO 309
  IF ~~ THEN REPLY #62630 /* ~"Opusťme téma. Proberme si někoho jiného..."~ */ GOTO 279
  IF ~~ THEN REPLY #62631 /* ~"Dovolil bych si teď malinko odbočit - vrtá mi hlavou ještě pár otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62632 /* ~"Můžeme to prodiskutovat jindy. Teď se hneme z místa."~ */ EXIT
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #62633 /* ~"Slouží ti. Už jenom tohle ho v očích jeho lidu cejchuje za párie. Celá jeho rasa kdysi dávno byla zotročena, takže pouhopouhá *připomínka* jakéhokoliv omezení osobní svobody je pro ně... odporná."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #62634 /* ~"Ano, je to již dlouho, co mi složil přísahu věrnosti a poslušnosti, trvající do mého skonu. Odehrálo se to poté, co jsem mu zachránil život. V té době netušil, že jsem nesmrtelný."~ */ GOTO 310
  IF ~~ THEN REPLY #62635 /* ~"Ještě něco?"~ */ GOTO 313
  IF ~~ THEN REPLY #62636 /* ~"Rozumím. Což takhle podebatovat o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62637 /* ~"Trochu bych změnil téma a zeptal se na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62638 /* ~"Přeložil bych náš rozhovor na jindy. Teď bychom měli vyrazit."~ */ EXIT
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #62639 /* ~"Vskutku? Jakožto githzerai... dozajista tím musí trpět. Jak se ti podařilo zachránit jeho život?"~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62640 /* ~"Poté, co vypadl z Shra'kt'loru, jedna z mých předchozích inkarnací ho nalezla na Limbu, umírajícího. Předala mu Nerozřešený Zerthimonův kruh, což je jejich posvátná kniha."~ */ GOTO 311
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62641 /* ~"Já nevím. Zachránilo ho jiné vtělení a o celé události nemám potuchy. Můžeš mi o něm říci něco dalšího?"~ */ GOTO 313
  IF ~~ THEN REPLY #62642 /* ~"Je to skutečně dlouhý příběh. Koukni, což takhle místo něj se pustit do někoho dalšího..."~ */ GOTO 279
  IF ~~ THEN REPLY #62643 /* ~"Nevadí. Ještě bych se přeptal na..."~ */ GOTO 139
  IF ~~ THEN REPLY #62644 /* ~"Povyprávím ti o tom někdy jindy. Teď musíme jít."~ */ EXIT
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #62645 /* ~"Mohu-li se zeptat, nevíš náhodou *proč* ho tvé vtělení zachránilo?"~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62646 /* ~"Myslím, že důvodem byl jeho *karach* meč."~ */ GOTO 312
  IF ~~ THEN REPLY #62647 /* ~"Vůbec nic mě nenapadá; jeho pohnutky jsou mi zahaleny. Víš ještě něco dalšího, co se týká Dak'kona?"~ */ GOTO 313
  IF ~~ THEN REPLY #62648 /* ~"Ten příběh je vskutku dlouhý. Poslechni, raději bych se dozvěděl informace o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62649 /* ~"Inu, nechme to být. Teď bych rád položil následující otázku..."~ */ GOTO 139
  IF ~~ THEN REPLY #62650 /* ~"Povím ti o tom všem příště. Je čas vyrazit."~ */ EXIT
END

IF ~~ THEN BEGIN 312 // from: 311.0
  SAY #62651 /* ~"Podivné." Fall-From-Grace. "Víš, zbraň, která odráží vůli svého nositele se stává mocnou, když její majitel zná sám sebe."~ */
  IF ~~ THEN REPLY #62652 /* ~"Možná, že jsem ho zachránil právě proto. Můžeš mi říct ještě něco o Dak'konovi?"~ */ GOTO 313
  IF ~~ THEN REPLY #62653 /* ~"Nejpíš. Ale ještě bych si s tebou chtěl promluvit o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62654 /* ~"Mám ještě další otázku..."~ */ GOTO 139
  IF ~~ THEN REPLY #62655 /* ~"Tak abysme zase šli."~ */ EXIT
END

IF ~~ THEN BEGIN 313 // from: 309.1 310.1 311.1 312.0
  SAY #62656 /* ~"Dak'kon ke všemu přistupuje svým osobitým stylem. A to je na githzeraie docela zvláštní. Githové mívají sklon k nepředvídatelnosti - poslouchají raději instikt než mysl."~ */
  IF ~~ THEN REPLY #62657 /* ~"Ještě něco?"~ */ GOTO 314
  IF ~~ THEN REPLY #62658 /* ~"Aha. Chtěl bych si popovídat ještě o někom..."~ */ GOTO 279
  IF ~~ THEN REPLY #62659 /* ~"Mám ještě jiné otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62660 /* ~"Tak abysme zase šli."~ */ EXIT
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #62661 /* ~"Jeví se jako oddaný githzerai a věrný spojenec."~ */
  IF ~~ THEN REPLY #62662 /* ~"To taky je. Ale teď bychsi rád promluvil ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62663 /* ~"Vskutku. Mám ale ještě pár otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62664 /* ~"Já vím. Ale teď už zase půjdem, ne?"~ */ EXIT
END

IF ~~ THEN BEGIN 315 // from: 279.5
  SAY #62665 /* ~"Nordom je nesmírně oddaný modronský tulák. I kdyby se do jeho systému probojoval chaos, přesto by Nordom zůstal krajně logickým stvořením očekávajícím příkazy. Jeho logičnost může být velkým přínosem na cestách. A ke všemu, jestli si tě zvolil za vůdce, zůtane ti velice loajální."~ */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #62666 /* ~"Problémy by mohly vyvstat, kdyby byl Nordom nucen použít zásady etikety... podobné věci nejsou normálním mordonům nijak srozumitelné." Na chvíli se odmlčela. "Mohla bych ti poskytnout nějaké rady ohledně Nordoma, jestli by si chtěl."~ */
  IF ~~ THEN REPLY #62667 /* ~"Zajisté. Jaké to jsou?"~ */ GOTO 317
  IF ~~ THEN REPLY #62668 /* ~"Prozatím ne. Radši bych si s tebou popovídal ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62669 /* ~"Možná později. Teď mám ještě jiné otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62670 /* ~"Teď ne - musíme už jít."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #62671 /* ~"Nordom ztratil představu o svém bytí - když mu pomůžeš porozumět jeho postavení, jeho místu v uspořádání družiny, a tomu, co ho přivedlo do stavu, v jakém je teď, pomůžeš mu tak, aby poznal sám sebe. To je můj názor."~ */
  IF ~~ THEN REPLY #62672 /* ~"Poslechnu tedy tvou radu. Teď si ale chci ještě popovídat o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62673 /* ~"Promluvím si s ním později. Teď bych měl ještě pár otázeček..."~ */ GOTO 139
  IF ~~ THEN REPLY #62674 /* ~"Hmmm. Uvídím, co se dá dělat, díky. Ale teď bychom už měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 279.6
  SAY #62675 /* ~"Uděláš dobře, když s ním už nebudeš cestovat dále. Je šílený, a je schopný provést činy ohromného ničení. Pokud tomu rozumím, byl přeměněn v součást elementální sféry ohně... taková přeměna může zahubit mnoho smrtelníků."~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0
  SAY #62676 /* ~"On nejenže přežil tuto zkoušku, on v ní dokonce uspěl. Ovládá uchvacující sílu - bude-li dotlačen k měření sil, pochybuji, že ten, kdo bude stát proti němu bude mít nějakou šanci. Modlím se, aby k ničemu takovému nedošlo."~ */
  IF ~~ THEN REPLY #62677 /* ~"Jestliže je Ignus tak mocný, proč tedy na kažého neútočí od pohledu? Proč se vůbec courá s námi?"~ */ GOTO 320
  IF ~~ THEN REPLY #62678 /* ~"Aha. Chtěl bych si s tebou promluvit ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62679 /* ~"To já taky. Ale teď mi radši pověz ještě o něčem jiném..."~ */ GOTO 139
  IF ~~ THEN REPLY #62680 /* ~"Hmmm. Tak abysme zase šli, ne?"~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #62681 /* ~"To nevím. Ale nemyslím, že by nás to bylo kvůli jeho lásce k nám; podle mě považuje nás všechny za bezvýznamné - ovšem ne tebe."~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62682 /* ~"Nejpíš to bude tím, že jsem v minulosti byl jeho učitelem."~ */ GOTO 322
  IF ~~ THEN REPLY #62683 /* ~"Mě? Proč zrovna mě?"~ */ GOTO 321
  IF ~~ THEN REPLY #62684 /* ~"Chtěl bych si promluvit ještě o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62685 /* ~"Mám ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62686 /* ~"Hmmm. Takže zase půjdem."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.1
  SAY #62687 /* ~"To také nevím. Ale cožpak sis nevšiml, že zatím udělal všechno, co sis přál? Úplně bez řečí. Kdybych ho o něco požádala já, uposlechnutí by bylo to poslední, co by mohl udělat." ~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62688 /* ~"Nejpíš to bude tím, že jsem v minulosti byl jeho učitelem."~ */ GOTO 322
  IF ~~ THEN REPLY #62689 /* ~"Chtěl bych si promluvit ještě o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62690 /* ~"Mám ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62691 /* ~"Hmmm. Takže zase půjdem."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 320.0 321.0
  SAY #62692 /* ~"Ty jsi byl jeho učitelem?"~ */
  IF ~~ THEN REPLY #62693 /* ~"Ano... jedna z mých minulých existencí ho vyučila Umění, takže teď mě nejpíš stále ještě pokládá za svého mistra."~ */ GOTO 323
  IF ~~ THEN REPLY #62694 /* ~"Zapomeň na to. Chtěl bych si promluvit ještě o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62695 /* ~"To je dlouhý příběh. Teď bych ti ale chtěl položit pár jiných otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62696 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.0
  SAY #62697 /* ~Fall-From-Grace pokýval zamyšleně hlavou. "Tím se to tedy vysvětluje." Přejela tě pohledem. "Trápí tě, když ho takhle vidíš?"~ */
  IF ~~ THEN REPLY #62698 /* ~"Já nejsem zodpovědný za to, čím se Ignus stal. Jestli mě to trápí? Ne."~ */ GOTO 324
  IF ~~ THEN REPLY #62699 /* ~"Cítím trochu zodpovědnosti - Možná že způsoby, jakými jsem ho vyučoval, ho mohli přivést k šílenství. Ale nevím to jistě."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62700 /* ~"Ano, trápí. Lituji toho, že se mé minulé životy týkaly Ignuse a upálily ho."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62701 /* ~"Nechci o tom teď mluvit. Radši mi pověz ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62702 /* ~"Zapomeň na to. Měl bych ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62703 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0 323.1 323.2
  SAY #62704 /* ~"Ignus shořel zevnitř takovým žárem, za jaký by se ani v Baatoru nestyděli. Stal se více než čarodějem, více než mužem. Stal se silou. Nemůžu nijak pomoci, ale zajímalo by mě, zda to měl v sobě předtím, než jste se potkali."~ */
  IF ~~ THEN REPLY #62705 /* ~"To nevím. Pověz mi ale ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62706 /* ~"Hmmm. Měl bych ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62707 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 279.7
  SAY #62708 /* ~"Jakékoliv styky s Nemylosrdným jsou riskantí záležitostí. Obávám se, že s Vhailorem se šance na nebezpečí ještě zvyšuje. Spravedlnost je pro něj víc, než jen posedlost; spravedlnost je jeho součást. Měj se na pozoru, jak se před ním chováš a jak jednáš, protože nás všechny obezřatně pozoruje. To už mají Nemilosrdní v povaze."~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62709 /* ~"Měl bych se za něco přiznat... Nejspíš jsem zodpovědný za Vhailorovo uvěznění pod Curstem na tak dlouhou dobu."~ */ GOTO 326
  IF ~~ THEN REPLY #62710 /* ~"Ach tak. Pověz mi ale ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62711 /* ~"Měl bych ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62712 /* ~"Tak fajn. Abysme zase šli, nemyslíš?"~ */ EXIT
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #62713 /* ~"Co tím myslíš?"~ */
  IF ~~ THEN REPLY #62714 /* ~"Měl jsem vzpomínku... vybavilo se mi, jak ho zavírám do cely kvůli tomu, že mě už dlouho pronásledoval. Ale nechtěl jsem ho zabít, jenom ho udržet ve vězění, abych ho měl z cesty."~ */ GOTO 327
  IF ~~ THEN REPLY #62715 /* ~"Ale nic. Radši mi ještě pověz o někom jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62716 /* ~"Zapomeň na to. Mám ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62717 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #62718 /* ~"Když tě tak dlouho pronásledoval, proč jsi ho zavíral? Proč jsi ho prostě nezabil?"~ */
  IF ~~ THEN REPLY #62719 /* ~"No, nejsem si jist, že bych ho mohl zabít - smrt už se o něj pokoušela a jak to tak vypadaá, tak neodvedlamoc dobrou práci."~ */ GOTO 328
  IF ~~ THEN REPLY #62720 /* ~"Víš, možná, že to bude znít divně, ale měl jsem divný pocit, že jsem ho nezabil, protože on mě mohl zabít."~ */ GOTO 329
  IF ~~ THEN REPLY #62721 /* ~"Zapomeň na to. Radši mi pocěz ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62722 /* ~"Zapomeň na to. Mám ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62723 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #62724 /* ~"To máš pravdu. Podpírá ho totiž víra a víra je mocná věc."~ */
  IF ~~ THEN REPLY #62725 /* ~"Víš, možná, že to bude znít divně, ale měl jsem divný pocit, že jsem ho nezabil, protože on mě mohl zabít."~ */ GOTO 329
  IF ~~ THEN REPLY #62726 /* ~"To je. No, co takhle začít pomlouvat někoho dalšího?"~ */ GOTO 279
  IF ~~ THEN REPLY #62727 /* ~"Mám ještě jinou otázku..."~ */ GOTO 139
  IF ~~ THEN REPLY #62728 /* ~"Tak už pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 327.1 328.0
  SAY #62729 /* ~Fall-From-Grace kývla. "Dokonce i nesmrtelný může chtít využít šanci stát se smrtelným. Je spousta těch, pro které nesmrtelnost není požehnáním. Mohl sis přát, aby Vhailor byl držen v náručí nesmrtelnosti, až jednou přijde den, kdy už to nebudeš moci snést."~ */
  IF ~~ THEN REPLY #62730 /* ~"Aha. Ještě bych si s tebou chtěl promluvit o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62731 /* ~"Hmmm. Mám ještě pár otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62732 /* ~"Zajímavá myšlenka, ale už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 280.2 287.0 289.1 290.1 291.2 292.1 293.1 294.2 295.0 331.1 332.0 333.0 334.0 335.4 336.0 337.2 338.2 339.0 357.2
  SAY #62733 /* ~"Víš ještě něco, co by mohlo být užitěčné?"~ */
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #62734 /* ~"No, stíny jdou stále po mé smrti -- mám pocit, že mě pronásledují, ale nevím proč."~ */ GOTO 331
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
~ THEN REPLY #62735 /* ~"No, myslím, že někdo tam venku mě chce zabít... tak moc, až jsem postavil hrobku pastí, abych ho zabil. Podle nápisu v té hrobce přišel On až po mně... aspoň to tak vypadá, pokud si mé inkarnace pamatují."~ */ GOTO 334
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62736 /* ~"Ještě jedna věc: nebyl jsem vždy nesmrtelný... to ze mě udělala Ravel."~ */ GOTO 335
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62737 /* ~"Když jsem mluvil s Ravel, pověděla mi, že tetování na mé kůži hovoří o 'válce fiendů.' Nevíš, co tím myslela?"~ */ GOTO 338
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #62738 /* ~"No, Pilíř lebek mi pověděl, že 'vrhám stín na existenci' - že kdykoliv zemřu, zemře i někdo na mém místě."~ */ GOTO 333
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
~ THEN REPLY #62739 /* ~"Trias říkal, že je tu 'strážce' v této Pevnosti lítosti a že drží mou smrtelnost jako vězně."~ */ GOTO 339
  IF ~~ THEN REPLY #62740 /* ~"Vlastně nic důležitého. Mám ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62741 /* ~"Ale nic. Snad někdy jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #62742 /* ~"Stíny?" Fall-From-Grace na chvíli umlkla. "Stíny jsou vrhány mrtvými. Nemají ale ve zvyku lovit, spíše leží a čekají na oběti. Divné."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 332
  IF ~~ THEN REPLY #62743 /* ~"Rád bych slyšel jiné tvoje názory na mou situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62744 /* ~"Mám ještě jiné otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62745 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 331.0
  SAY #62746 /* ~"A Ravel řekla, že ty stíny vrháš ty - možná že je snad nějakým způsobem přitahuješ k sobě." Fall-From-Grace si chvíli mnula bradu. "Je těžké říct to určitě."~ */
  IF ~~ THEN REPLY #62747 /* ~"Rád bych slyšel jiné tvoje názory na mou situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62748 /* ~"Mám ještě jiné otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62749 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.4
  SAY #62750 /* ~"Zdá se, že vše, co se nějak týká Raveliných kouzel, je zřídkakdy někomu k prospěchu." Fall-From-Gracein hlas poklesl. "Divem zůstává počet tvých úmrtí... a počet těch, které jsi vzal s sebou."~ */
  IF ~~ THEN REPLY #62751 /* ~"Rád bych slyšel jiné tvoje názory na mou situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62752 /* ~"Mám ještě jiné otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62753 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 330.1
  SAY #62754 /* ~"Pak... Ať už je ten zabiják kdokoliv, musí žít už dlouhou dobu, aby tě mohl pronásledovat" Chvíli si mnula bradu. "Mohl by snad také být nesmrtelný?"~ */
  IF ~~ THEN REPLY #62755 /* ~"Možná. Ale rád bych slyšel jiné tvoje názory na mou situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62756 /* ~"Mám ještě jiné otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62757 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 330.2
  SAY #62758 /* ~"Sám teď tedy říkáš, že nesmtelnost není tvůj úděl od přírody, což nás zavádí k další otázce: *Proč* si Ravel přála tvou nesmrtelnost? Nemáš snad ponětí, proč udělala takovouhle věc?"~ */
  IF ~  Global("Ravel_Hair","GLOBAL",1)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62759 /* ~"Nevím to sice jistě, ale myslím, že to bylo, aby mi pomohla utéct z "klece", aby mi dala svobodu."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",1)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62760 /* ~"Nevím to sice jistě, ale myslím, že to bylo, aby mi pomohla utéct z "klece", aby mi dala svobodu."~ */ GOTO 336
  IF ~  Global("Ravel_Hair","GLOBAL",0)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62761 /* ~"To nevím - vím jen, že jsem jí sám žádal, aby to udělala."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",0)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62762 /* ~"To nevím - vím jen, že jsem jí sám žádal, aby to udělala."~ */ GOTO 336
  IF ~~ THEN REPLY #62763 /* ~"Zatím ne. Ale teď bych rád slyšel jiné tvoje názory na mou situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62764 /* ~"To nevím. Chtěl jse se tě zeptat na něco jiného."~ */ GOTO 139
  IF ~~ THEN REPLY #62765 /* ~"Dovyprávíme si to někdy příště."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.1 335.3
  SAY #62766 /* ~"Zvláštní. Tohle by nejpíš měla být první věc, kterou bys měl objevit... pouze až budeš mít přesnou představu o minulosi, můžeš odhalit, co skrývá budoucnost."~ */
  IF ~~ THEN REPLY #62767 /* ~"Rád bych slyšel jiné tvoje názory na mou situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62768 /* ~"Mám ještě jiné otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62769 /* ~"Dovyprávíme si to někdy příště. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 337 // from: 335.0 335.2
  SAY #62770 /* ~"Hmmmm. Ravel řekla něco, co mě moc zajímá... zmiňovala s o válce fiendů, což nepochybně znamená válku krve. Příjde mi to docela podivné. Místo, které Ravel považovala za svůj domov, sloužilo poměrně často jako bitevní pole. Možná, že to, co tě k Ravel přivedlo, se přece jen nějak týká Války krve."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62771 /* ~"Co je to ta Válka krve?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Fall-From-Grace řekla, že válkou fiendů na kterou se odkazovala Ravel, pravděpodobně myslela Válku Krve, konflikt mezi rasami baatezů and tanar'riů. Vnukla mi, že moje jednání s Ravel by mohlo s Válkou Krve nějak souviset. ~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62772 /* ~"Co je to ta Válka krve?"~ */ GOTO 219
  IF ~~ THEN REPLY #62773 /* ~"Je to možné. Ale rád bych si vyslechl ještě další tvé názory na mojí situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62774 /* ~"Možná. Ale chtěl bych ti položit ještě pár dalších otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62775 /* ~"To nevím. Ale pojďme už."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 330.3
  SAY #62776 /* ~"Hmmmm. A 'válka fiendů' nepochabně znamená Válku krve." Fall-From-Grace kývla. "Víš, Velká pustina, sféra, kterou Ravel považovala za svůj domov, často sloužila jako bitevní pole. Možná, že to, co tě k Ravel přivedlo, se přece jen nějak týká Války krve."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62777 /* ~"Co je to ta Válka krve?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~Fall-From-Grace řekla, že válkou fiendů na kterou se odkazovala Ravel, pravděpodobně myslela Válku Krve, konflikt mezi rasami baatezů and tanar'riů. Vnukla mi, že moje jednání s Ravel by mohlo s Válkou Krve nějak souviset. ~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62778 /* ~"Co je to ta Válka krve?"~ */ JOURNAL #61615 /* ~Fall-From-Grace řekla, že válkou fiendů na kterou se odkazovala Ravel, pravděpodobně myslela Válku Krve, konflikt mezi rasami baatezů and tanar'riů. Vnukla mi, že moje jednání s Ravel by mohlo s Válkou Krve nějak souviset. ~ */ GOTO 219
  IF ~~ THEN REPLY #62779 /* ~"Je to možné. Ale rád bych si vyslechl ještě další tvé názory na mojí situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62780 /* ~"Možná. Ale chtěl bych ti položit ještě pár dalších otázek..."~ */ GOTO 139
  IF ~~ THEN REPLY #62781 /* ~"To nevím. Ale pojďme už."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 330.5
  SAY #62782 /* ~"Podle mě musíš tohoto strážce najít a promluvit si s ním. Rozhovor s ním by mohl mnohé objasnit. Nejpíš ale tento strážce nebude chtít, aby se ti smrtelnost vrátila."~ */
  IF ~~ THEN REPLY #62783 /* ~"Je to možné. Ale rád bych si vyslechl ještě další tvé názory na mojí situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62784 /* ~"Mám ještě jiné otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62785 /* ~"Možná že ano - ale to ho budu muset zklamat. Jdeme."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 279.3
  SAY #62786 /* ~"Ona je silná a mocná a navíc poměrně vášnivá. Mnohokrát dříve jsem ji chtěla poznat a poprosit jí, aby přišla do Nevěstince... možná, že věci by se měly jinak." Grace tě na chvíli zkoumala. "Co si o ní myslíš?"~ */
  IF ~~ THEN REPLY #62787 /* ~"Myslím, že se o tebe moc nezajímá."~ */ GOTO 341
  IF ~~ THEN REPLY #62788 /* ~"No, možná bych se do ní mohl zamilovat."~ */ GOTO 342
  IF ~~ THEN REPLY #62789 /* ~"Mám jí za přítele, nic víc."~ */ GOTO 343
  IF ~~ THEN REPLY #62790 /* ~"Moc se nestarám o ní ani o ostatní."~ */ GOTO 343
  IF ~~ THEN REPLY #62791 /* ~"Nesnáším jí."~ */ GOTO 344
  IF ~~ THEN REPLY #62792 /* ~"Nedůvěřuju jí."~ */ GOTO 346
  IF ~~ THEN REPLY #62793 /* ~"I ona může být užitečná, nic víc."~ */ GOTO 343
  IF ~~ THEN REPLY #62794 /* ~"Radši bych o tom nemluvil."~ */ GOTO 347
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #62795 /* ~"Tomu rozumím..." Grace se usmála. "Ale nenechám tě vyhnout se mojí otázce tak lehce. Co si o ní myslíš?"~ */
  IF ~~ THEN REPLY #62796 /* ~"No, možná bych se do ní mohl zamilovat."~ */ GOTO 342
  IF ~~ THEN REPLY #62797 /* ~"Mám jí za přítele, nic víc."~ */ GOTO 343
  IF ~~ THEN REPLY #62798 /* ~"Moc se nestarám o ní ani o ostatní."~ */ GOTO 343
  IF ~~ THEN REPLY #62799 /* ~"Nesnáším jí."~ */ GOTO 344
  IF ~~ THEN REPLY #62800 /* ~"Nedůvěřuju jí."~ */ GOTO 346
  IF ~~ THEN REPLY #62801 /* ~"I ona může být užitečná, nic víc."~ */ GOTO 343
  IF ~~ THEN REPLY #62802 /* ~"Radši bych o tom nemluvil."~ */ GOTO 347
END

IF ~~ THEN BEGIN 342 // from: 340.1 341.0
  SAY #62803 /* ~"A mám jí to říct?"~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62804 /* ~"Já nevím... Nejspíš bych jí tak akorát ublížil, jako zrovna Deionaře, a stejně jako životům ostatních, kterých jsem se dotknul. Možná bude nejlepší nechat ji o samotě."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62805 /* ~"Já nevím... Nejspíš bych jí tak akorát ublížil, jako zrovna Deionaře, a stejně jako životům ostatních, kterých jsem se dotknul. Možná bude nejlepší nechat ji o samotě."~ */ GOTO 359
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62806 /* ~"Já nevím... Nejspíš bych jí tak akorát ublížil, jako zrovna Deionaře, a stejně jako životům ostatních, kterých jsem se dotkl - a to jsem se nezmínil o Ravel. Nedokážu si vůbec představit, proč ji to ke mně přitahuje, i když jsem jí ublížil stejně tak. Možná bych si měl dávat pozor na své city."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62807 /* ~"Já nevím... Nejspíš bych jí tak akorát ublížil, jako zrovna Deionaře, a stejně jako životům ostatních, kterých jsem se dotkl -  a to jsem se nezmínil o Ravel. Nedokážu si vůbec představit, proč ji to ke mně přitahuje, i když jsem jí ublížil stejně tak. Možná bych si měl dávat pozor na své city."~ */ GOTO 359
  IF ~~ THEN REPLY #62808 /* ~"Řeknu jí to, až budu chtít."~ */ GOTO 343
  IF ~~ THEN REPLY #62809 /* ~"Nevím... ještě uvidíme."~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 340.2 340.3 340.6 341.1 341.2 341.5 342.4 342.5 345.0 346.0
  SAY #62810 /* ~"Tak fajn."~ */
  IF ~~ THEN REPLY #62811 /* ~"Chtěl bych si promluvit ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62812 /* ~"Měl bych ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62813 /* ~"Tak dobrá. Už tedy půjdem."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 340.4 341.3
  SAY #62814 /* ~"Pročpak?"~ */
  IF ~~ THEN REPLY #62815 /* ~"Hlavně ten její přízvuk... a taky fakt, že ona může za to, že první místo, které jsem viděl, byla Márnice. Je to pouliční zlodějka šmrnclá s fiendem a čmuchá do všeho, co dělám. Mám pokračovat?"~ */ GOTO 345
  IF ~~ THEN REPLY #62816 /* ~"Chtěl bych si radši promluvit ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62817 /* ~"Měl bych ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62818 /* ~"Zapomeň na to. Už radši půjdem."~ */ EXIT
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #62819 /* ~"Tak proč si ní tedy cestuješ?"~ */
  IF ~~ THEN REPLY #62820 /* ~"I ona může být užitečná - až do té chvíle, dokud snesu její společnost, bude všechno v pořádku."~ */ GOTO 343
  IF ~~ THEN REPLY #62821 /* ~"Zapomeň na to. Chtěl bych si radši promluvt o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62822 /* ~"Nevšímej si toho. Měl bych ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62823 /* ~"O tom si promluvíme někdy jindy. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 340.5 341.4
  SAY #62824 /* ~"A proč jí nedůvěřuješ?"~ */
  IF ~~ THEN REPLY #62825 /* ~"Takže, našla mě po mé smrti v Uličce neustálých vzdechů i navzdory tomu, že tam se žádný obyčejný sběrač neodváží, dále je Pharodova adoptovaná dcera a k tomu všemu je to zlodějka šmrnclá s fiendem. Mám pokračovat?" ~ */ GOTO 343
  IF ~~ THEN REPLY #62826 /* ~"Zapomeň na to. Chtěl bych si radši promluvt o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62827 /* ~"Nevšímej si toho. Měl bych ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62828 /* ~"O tom si promluvíme někdy jindy. Teď už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 347 // from: 340.7 341.6
  SAY #62829 /* ~"Mlčení je přípustné." Grace se usmála. "Udržovat ho ale může být obtížné."~ */
  IF ~~ THEN REPLY #62830 /* ~"To určitě víš z vlastní zkušenosti."~ */ GOTO 361
  IF ~~ THEN REPLY #62831 /* ~"Dobrá, dobrá... Co takhle zdrbat někoho dalšího?"~ */ GOTO 279
  IF ~~ THEN REPLY #62832 /* ~"Radši bych ti položil jiné otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62833 /* ~"Možná že ano. Ale pojďme už."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 205.5
  SAY #62834 /* ~Grace řekla jemně: "Muka." Na chviličku se zahleděla do smybolu na tvé ruce. "Fell říká..." Zhluboka se nadechla. "že tělo si uvědomuje své utrpení, i když mysl zapomíná. Fell říká, že runa působí jako magnet a přitahuje k tobě další utrápené duše."~ */
  IF ~~ THEN REPLY #62835 /* ~"Měl bych ještě další otázky..."~ */ GOTO 205
  IF ~~ THEN REPLY #62836 /* ~"Možná je to tak. Ale už bysme měli jít."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 139.16
  SAY #62837 /* ~"Ne... zřídkakdy je potřeba a já shledávám, že nedokážu snést dotek chladné oceli či železa po dlouhou dobu. Každopádně mám spoustu... přirozených obranných schopností, které dokáží odrazit útočníka."~ */
  IF ~~ THEN REPLY #62838 /* ~"Jako třeba?"~ */ JOURNAL #61616 /* ~Fall-From-Grace mi řekla že může polibkem z oběti vysát život... z nějakého důvodu mě to povzbudilo. Nemůžu normálně umřít. Hmmmm. Možná by se to časem mohlo hodit. Musím si to zapamatovat.~ */ GOTO 350
  IF ~~ THEN REPLY #62839 /* ~"Ou. Měl bych ještě pár otázek..."~ */ GOTO 205
  IF ~~ THEN REPLY #62840 /* ~"Emm... aha. Už abysme zase šli, ne?"~ */ EXIT
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #62841 /* ~"Polibek sukuby je pro smrtelné osudový - ačkoliv si zřídkakdy uvědomují nějaké nebezpečí, dokud jim sama smrt nevisí nad hlavou." Fall-From-Grace si povzdechla. "K tomuto se uchyluji, když potřeba volá."~ */
  IF ~~ THEN REPLY #62842 /* ~"A... ha. Zeptal bych se ještě na něco..."~ */ GOTO 205
  IF ~~ THEN REPLY #62843 /* ~"Úchvatné... err, teda, děsivé. Ale pojďme už."~ */ EXIT
END

IF ~~ THEN BEGIN 351 // from: 205.2
  SAY #62844 /* ~"To je pravda. Yves už ke své záhadnosti nepotřebuje přibírat další historky... a má historka jí nepomůže najít pravdu."~ */
  IF ~~ THEN REPLY #62845 /* ~"Povíš mi jí?"~ */ GOTO 352
  IF ~~ THEN REPLY #62846 /* ~"Chápu. Zeptal bych se ještě na něco..."~ */ GOTO 205
  IF ~~ THEN REPLY #62847 /* ~"Asi ano. Ale pojďme už."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 205.3 206.1 207.2 212.0 351.0
  SAY #62848 /* ~"Je to dlouhý příběh a není tak zajímavý, jak by se některým mohlo zdát." Povzdechla si. "Proplétá se spolu s dalšími příběhy o válce a otroctví - a není to veselé vyprávění."~ */
  IF ~~ THEN REPLY #62849 /* ~"Přesto bych ho rád slyšel."~ */ GOTO 353
  IF ~~ THEN REPLY #62850 /* ~"Chápu. Mám ještě pár dalších otázek..."~ */ GOTO 205
  IF ~~ THEN REPLY #62851 /* ~"Tak tedy pojďme od toho."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #62852 /* ~"Tak dobrá... víš, má minulost není příliš dlouhá, alespoň podle tanar'riských standartů. Nevím, jestli jsi zrovna ty s tanar'ri příbuzný, ale my jsme plémě z Abyssu, vrávoravá rasa Sfér plná chaosu a zatemnělých srdcí."~ */
  IF ~~ THEN REPLY #62853 /* ~"Pokračuj..."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ GOTO 354
  IF ~~ THEN REPLY #62854 /* ~"Zapomenem na to. Radši mi pověz o něčem jiném..."~ */ GOTO 205
  IF ~~ THEN REPLY #62855 /* ~"Už jsem slyšel dost. Půjdem zase dál."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #62856 /* ~"Jsem tanar'ri, fiend, sukuba... vyrostla jsem na první sféře Abyssu. Už sama moje matka byla sukuba - a, což už ti určitě došlo, sukuby se pokoušejí přivést smrtelné duše do Abyssu. Má matka patřila mezi špičku, sváděla zástupy smrtelných mužů k jejich věčnému zatracení. Nyní sídlí v Abyssu a prodává své vlastní děti do otroctví."~ */
  IF ~~ THEN REPLY #62857 /* ~"Tvá matka tě prodala do otroctví?"~ */ GOTO 355
  IF ~~ THEN REPLY #62858 /* ~"Zapomenem na to. Radši mi pověz o něčem jiném..."~ */ GOTO 205
  IF ~~ THEN REPLY #62859 /* ~"Už jsem slyšel dost. Půjdem zase dál."~ */ EXIT
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #62860 /* ~"Ano, prodala mě baatezům, pokrevním nepřátelům tanar'riské rasy. Nejspíš očekávala, že mě tam zabijí -- ale navzdory její moudrosti ohledně ostatních ví přesto pouze málo o jejich kultuře a zálibě v trápení jiných. Takže mě tam samozřejmě nezabili..."~ */
  IF ~~ THEN REPLY #62861 /* ~"Jak jsi odtamtud utekla?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 356
  IF ~~ THEN REPLY #62862 /* ~"Zapomenem na to. Radši mi pověz o něčem jiném..."~ */ GOTO 205
  IF ~~ THEN REPLY #62863 /* ~"Už jsem slyšel dost. Půjdem zase dál."~ */ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #62864 /* ~"Baatezu jsou hrdou rasou. Myšlenka na to, že by je snad tanar'ri mohli v něčem porazit, je pro ně nepřípustná. Takže jsem vyzvala jednoho z nejpyšnějších balorů k měření schopnosti improvizace a díky mé tanar'riské podstatě se mi dostalo postupu - pochop, tanar'ri jsou stvoření chaosu, jsou divocí a nepředvídatelní. Baatezu jsou zase prohnanější a mají 'ukázněné' srdce. Rozumí sice improvizaci, ale nejsou zrovna jejími nejlepšími provaděči. Takto jsem si tedy vydobyla svobodu - a má cesta mě přivedla až do Sigilu."~ */
  IF ~~ THEN REPLY #62865 /* ~"Aha. Měl bych ještě další otázky..."~ */ GOTO 205
  IF ~~ THEN REPLY #62866 /* ~"Tak to by prozatím bylo vše. Pojďme už."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from: 279.0
  SAY #62867 /* ~"O čem by sis chtěl promluvit?"~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62868 /* ~"Chtěl bych vědět... víš, když jsem tam v Bludišti políbil Ravel, tak..."~ */ GOTO 281
  IF ~~ THEN REPLY #62869 /* ~"Abych řekl pravdu, obávám se tvých citů ke mně."~ */ GOTO 287
  IF ~~ THEN REPLY #62870 /* ~"Rád bych si poslechl tvůj názor na mou situaci."~ */ GOTO 330
  IF ~~ THEN REPLY #62871 /* ~"Nemáš nějaké ponětí, kdo nebo co bych mohl být?"~ */ GOTO 288
  IF ~~ THEN REPLY #62872 /* ~"Vlastně o ničem. Radši mi pověz o něčem jiném..."~ */ GOTO 279
  IF ~~ THEN REPLY #62873 /* ~"Zapomeň na to. Mám ještě další otázky..."~ */ GOTO 139
  IF ~~ THEN REPLY #62874 /* ~"To není důležité. Musíme už jít."~ */ EXIT
END

IF ~~ THEN BEGIN 358 // from: 342.0 342.2
  SAY #62875 /* ~"Deionarra byla ta žena ze Senzorického kamene, nebo ne? Ta, která milovala tvé minulé vtělení?"~ */
  IF ~~ THEN REPLY #62876 /* ~"Ano, to byla ona. Provedl jsem jí něco hrozného, nevím ale co."~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 342.1 342.3 358.0
  SAY #62877 /* ~"Na to ti můžu říct jen toto - pokud je láska poctivá a pevná, dokáže pohnout samotnými sférami, a v mých zkušenostech není nic pravdivějšího než 'poctivost', kterou jeden cítí k druhému."~ */
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN GOTO 360
  IF ~~ THEN REPLY #62879 /* ~"Možná máš pravdu. Chtěl bych si promluvit ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62880 /* ~"Asi je to tak. Pověz mi ale ještě o něčem..."~ */ GOTO 139
  IF ~~ THEN REPLY #62881 /* ~"Pojdmě už. Tohle probereme někdy jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #62882 /* ~"Než se rozhodneš uchránit jiné před tvými city, uvědom si toto - láska je mocná, tak mocná, že si našla i cestu do Ravelina pokřiveného černého srdce a dotek lásky jí přiměl k tomu, aby si vážila jiného více než sebe samé. Copak nevíš, že ta *síla* dokáže měnit srdce stejně jako to Ravelino? Přes všechny bolesti jaké by mohla láska způsobit, myslím, že něco by se dalo říct i o dobru, které vytvořila." ~ */
  IF ~~ THEN REPLY #62883 /* ~"Možná máš pravdu. Chtěl bych si ale promluvit ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62884 /* ~"Asi je to tak. Pověz mi ale ještě o něčem..."~ */ GOTO 139
  IF ~~ THEN REPLY #62885 /* ~"Pojdmě už. Tohle probereme někdy jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 361 // from: 347.0
  SAY #62886 /* ~"Tak - tohle jsem si zasloužila." Fall-From-Grace se usmála. "No, povím ti tohle - city jednoho k tomu druhému mohou hýbat Sférami samotnými a neexistuje v nich nic pravdivějšího, než právě mezilidské pocity. Neskrývej je."~ */
  IF ~~ THEN REPLY #62887 /* ~"Možná máš pravdu. Chtěl bych si ale promluvit ještě o někom dalším..."~ */ GOTO 279
  IF ~~ THEN REPLY #62888 /* ~"Asi je to tak. Pověz mi ale ještě o něčem..."~ */ GOTO 139
  IF ~~ THEN REPLY #62889 /* ~"Pojdmě už. Tohle probereme někdy jindy."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from:
  SAY #63241 /* ~"Tisíce."~ [FFG299] */
  IF ~~ THEN EXTERN ~BMORTE~ 33
END

IF ~~ THEN BEGIN 363 // from:
  SAY #63245 /* ~"Víš, Morte, v některých sférách používají vtipálky jako palivo."~ [FFG300] */
  IF ~~ THEN EXTERN ~BMORTE~ 35
END

IF ~~ THEN BEGIN 364 // from:
  SAY #63246 /* ~"Zdá se, že tvé štěstí nás pokrývá všechny."~ [FFG301] */
  IF ~~ THEN EXTERN ~BMORTE~ 37
END

IF ~~ THEN BEGIN 365 // from:
  SAY #63248 /* ~"Ne, ona není pěkná. Ale snadno by mohla být krásná."~ [FFG322] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #63469 /* ~"Nejspíš tak dlouho, jak budu moct."~ [FFG317] */
  IF ~~ THEN EXTERN ~BANNAH~ 17
END

IF ~~ THEN BEGIN 367 // from:
  SAY #63470 /* ~"Nevím, jestli se někdy vrátím."~ [FFG318] */
  IF ~~ THEN EXTERN ~BANNAH~ 19
END

IF ~~ THEN BEGIN 368 // from:
  SAY #63471 /* ~"Budu dávat pozor. Ujišťuji tě, že nemám podobné choutky."~ [FFG319] */
  IF ~~ THEN EXTERN ~BANNAH~ 21
END

IF ~~ THEN BEGIN 369 // from:
  SAY #63472 /* ~"Ne tak zhurta, Annah. Bylo by lepší, kdyby sis osvěžila mysl. Taky v tobě proudí fiendská krev a máš spoustu nesporných kvalit."~ [FFG319A] */
  IF ~~ THEN EXTERN ~BANNAH~ 22
END

IF ~~ THEN BEGIN 370 // from:
  SAY #63473 /* ~"Annah, žárlivost je dvojsečná zbraň. Když budeš--"~ [FFG320] */
  IF ~~ THEN EXTERN ~BANNAH~ 24
END

IF ~~ THEN BEGIN 371 // from:
  SAY #63474 /* ~"Jak myslíš."~ [FFG320A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from:
  SAY #63475 /* ~"Podívej Annnah, možná by -"~ [FFG321] */
  IF ~~ THEN EXTERN ~BANNAH~ 26
END

IF ~~ THEN BEGIN 373 // from:
  SAY #63697 /* ~"No tak, Morte."~ [FFG332] */
  IF ~~ THEN EXTERN ~DMORTE~ 642
END

IF ~~ THEN BEGIN 374 // from:
  SAY #63698 /* ~"Oh? Včetně Modronů?"~ [FFG302] */
  IF ~~ THEN EXTERN ~BNORDOM~ 28
END

IF ~~ THEN BEGIN 375 // from:
  SAY #63699 /* ~"Pročpak, kdo ti to pověděl, milý Nordone?"~ [FFG303] */
  IF ~~ THEN EXTERN ~DMORTE~ 644
END

IF ~~ THEN BEGIN 376 // from:
  SAY #63700 /* ~"Eh, prosím?"~ [FFG333] */
  IF ~~ THEN EXTERN ~BNORDOM~ 31
END

IF ~~ THEN BEGIN 377 // from:
  SAY #63701 /* ~"Prosím?"~ [FFG334] */
  IF ~~ THEN EXTERN ~BNORDOM~ 33
END

IF ~~ THEN BEGIN 378 // from:
  SAY #63702 /* ~"Proč? Mě připadá docela pohodlné. Kromě toho, líbí se mi křídla."~ [FFG334A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 34
END

IF ~~ THEN BEGIN 379 // from:
  SAY #63703 /* ~"Copak? Snad se mě nesnažíš svést?"~ [FFG334B] */
  IF ~~ THEN EXTERN ~BNORDOM~ 35
END

IF ~~ THEN BEGIN 380 // from:
  SAY #63860 /* ~"Takový 'hřích' nezlomí žádný Tanar'riho zákon, Vhailore. Má cesta je mým rozhodnutím a svobodnou volbou, nikoli trestem."~ [FFG304] */
  IF ~~ THEN EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",3)
~ THEN BEGIN 381 // from:
  SAY #68209 /* ~Tvá moc se dotkla Fall-From-Grace. Pomalu se zvedla na nohy - i když je dezorientovaná, nějak se jí daří udržet si svou vyrovnanost.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68210 /* ~"Fall-From-Grace - jsme v Pevnosti Lítosti a já našel svého vraha, je to má smrtelnost - která získala vlastní život. Potřebuju tvou pomoc."~ */ DO ~SetGlobal("Fortress_Grace","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 382
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68354 /* ~FALL-FROM-GRACE.~ */ GOTO 383
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #68211 /* ~Pomalu přikývla, jakoby se do ní s tvými slovy vrátila síla. "Obávám se, že teď, když jsme sem vstoupili, nás tohle místo jen tak nepropustí."~ [FFG070] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68212 /* ~"Uvidíme..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68213 /* ~"Uvidíme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68214 /* ~"Uvidíme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68215 /* ~"Uvidíme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68242 /* ~"Uvidíme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68435 /* ~"Uvidíme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68436 /* ~"Uvidíme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68445 /* ~"Uvidíme..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 381.1
  SAY #68355 /* ~Fall-From-Grace zvedla pohled a chvíli se ti dívá přímo do očí, pak se usmála - ale je to jenom slaboučký úsměv, který v sobě má více smutku než cokoli jiného. "Tvůj hlas - konečně jsi nalezl sám sebe?"~ */
  IF ~~ THEN REPLY #68356 /* ~ANO. CENA BYLA... VYSOKÁ. CENA BYLA MNOHO ŽIVOTŮ, MÝCH I CIZÍCH.~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #68357 /* ~"Cena takové věci bývá málokdy určena v penězích." Fall-From-Grace studuje tvůj výraz. "Jsi stále-"~ */
  IF ~~ THEN REPLY #68358 /* ~JSEM STÁLE TEN, KOHO ZNÁŠ, ALE MÁ PERSPEKTIVA SE... ZMĚNILA. NEZAPOMNĚL JSEM NA TEBE, POKUD JE TO, ČEHO SE OBÁVÁŠ.~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #68359 /* ~Fall-From-Grace se znovu usmála, tím samým smutným úsměvem, co dříve. "Ne, toho jsem se neobávala."~ */
  IF ~~ THEN REPLY #68360 /* ~NEMOHU TADY UŽ MOC DLOUHO ZŮSTAT. MŮJ TREST ČEKÁ A BRZY KE MNĚ DORAZÍ OSUD. VRÁTÍM TĚ DO SIGILU, JESTLI CHCEŠ.~ */ GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #68361 /* ~"To není mým přáním." Fall-From-Grace se natáhle kupředu a lehce se dotkla tvé paže. Cítíš slabounké zabrnění, pak ruku stáhla. "Já tě *najdu*, ať budeš kdekoli v Nižších Sférách - stejně jako budeš ty schopen najít mne."~ */
  IF ~~ THEN REPLY #68362 /* ~MŮŽE TO TRVAT DLOUHO. TAM, KDE BUDU UPOUTÁN, SE ČAS NEMĚŘÍ NA ROKY. A ZLOČINY, KTERÉ JSEM SPÁCHAL JSOU SILNĚJŠÍ NEŽ JAKÁKOLI KLEC.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #68363 /* ~"Žádná klec nás nezadrží a žádná Sféra nás neoddělí." Tvář Fall-From-Grace ztuhla, jako kámen. "Mysli na mne a znovu se setkáme."~ */
  IF ~~ THEN REPLY #68364 /* ~NEZAPOMENU, CO JSI PRO MĚ OBĚTOVALA.~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 387.0
  SAY #68365 /* ~Zavrtěla hlavou. "Jenom nezapomeň na mne."~ */
  IF ~~ THEN REPLY #68366 /* ~ČAS NIČÍ VŠE. ALE JÁ S NÍM BUDU BOJOVAT TAK DLOUHO, JAK JEN DOKÁŽU.~ */ GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #68367 /* ~"Čas není tvým nepřítele. Tím je věčnost."~ [FFG196] */
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68368 /* ~MOŽNÁ. SBOHEM, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68369 /* ~MOŽNÁ. SBOHEM, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68370 /* ~MOŽNÁ. SBOHEM, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68371 /* ~MOŽNÁ. SBOHEM, GRACE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68499 /* ~MOŽNÁ. SBOHEM, GRACE.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68500 /* ~MOŽNÁ. SBOHEM, GRACE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68501 /* ~MOŽNÁ. SBOHEM, GRACE.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",4)
~ THEN BEGIN 390 // from:
  SAY #68416 /* ~Grace přikývla. "Obávám se, že teď, když jsme sem vstoupili, nás toto místo jen tak lehce nepropustí."~ [FFG070] */
  IF ~~ THEN REPLY #68417 /* ~"To ještě uvidíme. Nejdřív se budeme věnovat mé smrtelnosti..."~ */ EXIT
END
