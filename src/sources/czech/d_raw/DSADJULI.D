// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSADJULI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSADJULI~

IF ~  Global("SadJuli","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2982 /* ~Mladá žena s tmavými vlasy apaticky zírá do prostoru, nešťastně vzdychá a občas přejede prsty po švech svých zelených sametových šatů. Dá se jenom těžce odhadnout, jestli se nudí, nebo je v depresi.~ */
  IF ~~ THEN REPLY #2984 /* ~"Zdravím..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2983 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40226 /* ~Letmo na tebe pohlédla a pak se trochu od tebe odsunula. "Zdravím... jmenuju se Juliette. Jak ti můžu... oh, nezlob se. Nech mě být, prosím." Podrážděně si povzdechla.~ */
  IF ~~ THEN REPLY #40280 /* ~"Co se ti nelíbí?"~ */ GOTO 2
  IF ~~ THEN REPLY #40281 /* ~"Mám nějaké otázky, hlavně..."~ */ GOTO 24
  IF ~~ THEN REPLY #40282 /* ~"V pořádku; sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 35.0
  SAY #40227 /* ~"Oh, vcelku nic. Jen to, že jsem ztratila čas zíráním do tváře jednotvárnosti, čekajíc, či něco nezničí tu její příšernost. A nějak mě to nebaví."~ */
  IF ~~ THEN REPLY #40283 /* ~"Je tvůj život tak nudný?"~ */ GOTO 3
  IF ~~ THEN REPLY #40284 /* ~"Vím. Mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40285 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 26.0
  SAY #40228 /* ~"Je to bída." povzdechla si, zavřela oči a začala si masírovat spánky. "Příšerně nudné!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40286 /* ~"Možná bych to mohl udělat pro vás zajímavější, má paní."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #40287 /* ~"Jsem si jist, že bych mohl do tvého života přidat trochu vzrušení ..."~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #40288 /* ~"Jsem si jist, že bych mohl do tvého života přidat trochu vzrušení ..."~ */ GOTO 5
  IF ~~ THEN REPLY #40289 /* ~"Vím. Mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40290 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #40229 /* ~"Ne, ne... to jsem tím neměla na mysli. Já již mám muže, pane a vroucně ho miluji. Chci jen..." zamyšleně si mnula bradu "...něco *víc* z našeho poměru."~ */
  IF ~~ THEN REPLY #66195 /* ~"Váš vztah něco postrádá?"~ */ GOTO 7
  IF ~~ THEN REPLY #66196 /* ~"Nějaký problém se vztahem?"~ */ GOTO 8
  IF ~~ THEN REPLY #66197 /* ~"Aha. Mám pár otázek..."~ */ GOTO 24
  IF ~~ THEN REPLY #66198 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #40230 /* ~Zachichotala se na tebe a převrátila oči. "V nejlepším případě pochybný. Já již mám muže, pane a vroucně ho miluji. Chci jen..." zamyšleně si mnula bradu "...něco *víc* z našeho poměru."~ */
  IF ~~ THEN REPLY #66199 /* ~"Váš vztah něco postrádá?"~ */ GOTO 7
  IF ~~ THEN REPLY #66200 /* ~"Nějaký problém se vztahem?"~ */ GOTO 8
  IF ~~ THEN REPLY #66201 /* ~"Aha. Mám pár otázek..."~ */ GOTO 24
  IF ~~ THEN REPLY #66202 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #40231 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0
  SAY #40232 /* ~"Jediná věc, co mi *chybí* je vzrušení, pane. Naše rodiny přijaly novinu našich námluv nádherně, jeho sourozenci měli rádi mé sourozence a naši přátelé si mysleli, že naše spojení je požehnáno vyšší Silou. Všechno bylo dobré a v pořádku, ale život šel dál..." Zamračila se. "...tak *hladce.* Není dobré mít tak bezproblémové námluvy."~ */
  IF ~~ THEN REPLY #66747 /* ~"To teda nechápu..."~ */ GOTO 10
  IF ~~ THEN REPLY #66748 /* ~"Aha. Mám pár otázek..."~ */ GOTO 24
  IF ~~ THEN REPLY #66749 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1
  SAY #40233 /* ~"Ano, je tu problém..." Rozzlobila se. "...v tom, že tu nejsou žádné problémy, o kterých by se dalo hovořit! Naše rodiny přijaly novinu našich námluv nádherně, jeho sourozenci měli rádi mé sourozence a naši přátelé si mysleli, že naše spojení je požehnáno vyšší Silou. Všechno bylo dobře a v pořádku, ale život šel dál..." Zamračila se. "...tak *hladce.* Není dobré mít také bezproblémové námluvy."~ */
  IF ~~ THEN REPLY #66750 /* ~"To teda nechápu..."~ */ GOTO 10
  IF ~~ THEN REPLY #66751 /* ~"Aha. Mám pár otázek..."~ */ GOTO 24
  IF ~~ THEN REPLY #66752 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #40234 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0
  SAY #40235 /* ~"Neříkej! Měl jsi někdy takové námluvy?" Krátce na tebe pohlédla. "Jo, vypadá to, že tvůj život je naplněn množstvím různých problémů, soudím podle pobledlosti tvé kůže."~ */
  IF ~~ THEN REPLY #66203 /* ~"Není to nic, o čem bych chtěl mluvit..."~ */ GOTO 11
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #40298 /* ~"Vážně si nemohu vzpomenout, že bych měl nějaké námluvy."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #40299 /* ~"Nemohu si vzpomenout, že bych měl nějaké námluvy. Ale zbytky mého původního já nasvědčují, že tam nějaké problémy byly."~ */ GOTO 11
  IF ~~ THEN REPLY #40300 /* ~"Vím. Mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40301 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #40236 /* ~"Vždyť všichni moji přátelé mají tak zajímavé problémy... jsou se vším nespokojeni, spory rodin, dýka druhému do zad, otrávení, šílení sourozenci a zlostní otcové s velkými meči. Já mám muže, jehož rodina miluje mě a kterou miluje svět." Znovu si povzdechla. "Velký zdroj nepříjemností. Jak bych jen mohla najít způsob, kterým bych si okořenila život..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 427
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40302 /* ~"Nezní to moc rozumně, Juliette. Uvaž, co říkáš."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40303 /* ~"Co jsi tím měla na mysli?"~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40304 /* ~"Vím. Mám nějaké otázky..."~ */ GOTO 24
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40305 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #40237 /* ~"Přesto bych chtěla zažít nepříjemnosti. Chtěla bych vědět, jaké by to bylo, mít nevydařené námluvy... ale jenom s ním, s nikým jiným." povzdechla. "Ah, jak zvláštní věc, láska. Může být tak nudná a nemá použití při úsilí Vnímavých."~ */
  IF ~~ THEN REPLY #40307 /* ~"Co jsi myslela tím "okořenit si život?"~ */ GOTO 13
  IF ~~ THEN REPLY #40308 /* ~"Vnímavá?"~ */ GOTO 25
  IF ~~ THEN REPLY #40309 /* ~"Vím. Mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40310 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.0
  SAY #40238 /* ~"Nejsem si jista. Nějaký prvek nebezpečí. Nebo žárlivost. Něco *intenzivní.*"~ */
  IF ~~ THEN REPLY #40311 /* ~"Proč nemáš tajnou lásku?"~ */ GOTO 14
  IF ~~ THEN REPLY #40312 /* ~"Proč neuděláš několik falešných dopisů, jakoby od své tajné lásky?"~ */ GOTO 19
  IF ~~ THEN REPLY #40313 /* ~"Mohu předstírat, že jsem žárlivý nápadník, kdybys chtěla."~ */ GOTO 21
  IF ~~ THEN REPLY #40314 /* ~"Vím. Mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40315 /* ~"Hodně štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40239 /* ~Hryže si ret. "Ve *skutečnosti* bych ho nikdy nemohla podvádět, neb ho přespříliš miluji! Ale možná... mohla bych mít falešného?" Kriticky si tě přeměřila. "Nevypadáš na člověka, který se straní nebezpečí. Chtěl by ses stát mým nápadníkem?"~ */
  IF ~~ THEN REPLY #40316 /* ~"Ano; udělám to."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40317 /* ~"Co za to?"~ */ GOTO 15
  IF ~~ THEN REPLY #40318 /* ~"Ne... ale mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40319 /* ~"Ne děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 22.1
  SAY #40240 /* ~Juliette se zamračila. "Moje společnost a vděk bude dostatečná."~ */
  IF ~~ THEN REPLY #40320 /* ~"V pořádku; udělám to tedy."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40321 /* ~"Ne, to nestačí."~ */ GOTO 16
  IF ~~ THEN REPLY #40322 /* ~"Zapomeň na to. Mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40323 /* ~"Ne dík. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #40241 /* ~Její zamračený pohled se při této komplikaci prohloubil. "Co máš na mysli... nezahrnuje *to* dotýkání se mě?"~ */
  IF ~~ THEN REPLY #40324 /* ~"Ne, ne! Co blázníš!? Chci jen nějaké informace."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #40325 /* ~"Ne, chci nějaké informace."~ */ DO ~SetGlobal("Juli_Info","AR0605",1)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40242 /* ~Juliette si to probrala, pak přikývla. "Velmi dobře. Odpovím ti na co budeš chtít. Dobře?"~ */
  IF ~~ THEN REPLY #40326 /* ~"Souhlas."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40327 /* ~"Ne; neudělám to."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1
  SAY #40243 /* ~"Tak jsme se dostali do slepé uličky. Jsi si jistý, že si to nechceš rozmyslet?"~ */
  IF ~~ THEN REPLY #40328 /* ~"Jasně... udělám to."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40329 /* ~"Ne, promiň. Mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40330 /* ~"Ne. Sbohem, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #40244 /* ~Juliettiny oči se rozjasnili. "Dobrý nápad! Velmi dobrý!" Náhle se však zamračila. "Ale on pozná můj rukopis... napsal bys pro mě nějaký?"~ */
  IF ~~ THEN REPLY #40331 /* ~"Není to nic pro mne. Ale myslím, že mohu pro tebe nějaké najít."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #40332 /* ~"Vážně zapomeň na to. Mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40333 /* ~"Raději ne. Sbohem, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40245 /* ~"Oh, vážně? Výborně! Když nějaký budeš mít, prosím dej ho mé lásce, Montagueovi... měl bys ho najít někde v Městské hale. Pokud jde o dopisy... prosím běž za Scofflawem Pennem. Má tiskárnu v Dolní Čtvrti. Děkuji ti!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66206 /* ~"Počkej... Montague? Je tady problém. Nebude se se mnou bavit."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Juliette mě požádala, ať přinesu jejímu milenci Montaguovi nějaké falešné milostné dopisy. Vysvětlil jsem jí, že Montague se ke mně chová nepřátelsky a nebude se se mnou bavit.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66207 /* ~"Počkej... Montague? Je tady problém... byl zabit."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Juliette mě požádala, ať přinesu jejímu milenci Montaguovi nějaké falešné milostné dopisy. Vysvětlil jsem jí, že Montague zemřel.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40334 /* ~"V pořádku. Sbohem."~ */ JOURNAL #39456 /* ~Souhlasil jsem, že dodám muži jménem Montague falešné milostné dopisy, aby si myslel že má jeho milenka dalšího přítele - Juliette zjevně nestačí úroveň vzrušení v jejich vztahu. Jakmile získám dopisy, mám mu je donést do Městské haly jako 'důkaz' jejího zahýbání. Juliette mi navrhla, ať si promluvím se Scofflawem Pennem, kterého bych měl najít v jeho Tiskárně v Dolní Čtvrti.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #40246 /* ~Juliette na tebe letmo pohlédla, pak se ušklíbla. "Oh, velmi o tom pochybuji. Vlastně, tahle myšlenka není až tak šílená jak jsem prvně myslela. I dívat se na tebe mi připadá *nebezpečné*." Podívala se ti do očí, jako kdyby hodnotila koně. "Jsi tak drsný a nebezpečný jak ukazuje tvůj vzhled?"~ */
  IF ~~ THEN REPLY #40335 /* ~"Ujišťuji tě, že mě dělá drsnější než jsem."~ */ GOTO 22
  IF ~~ THEN REPLY #40336 /* ~"Ano, jsem."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #40247 /* ~"Tedy, udělal bys to pro mě?"~ */
  IF ~~ THEN REPLY #40337 /* ~"Ano, udělám to."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",1)
~ GOTO 23
  IF ~~ THEN REPLY #40338 /* ~"Dobře, co za to dostanu?"~ */ GOTO 15
  IF ~~ THEN REPLY #40339 /* ~"Doopravdy... ne. Mám nějaké otázky..."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 14.0 15.0 17.0 18.0 22.0
  SAY #40248 /* ~"Výborně! Moje láska, Montague, by měl být k nalezení někde v Městské hale. Děkuji ti!"~ */
  IF ~  Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66210 /* ~"Počkej... Montague? Je tady problém. Nebude se se mnou bavit."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Juliette mě požádala, ať před jejím milencem Montaguem zahraju žárlivého nápadníka. Vysvětlil jsem jí, že Montague se ke mně chová nepřátelsky a nebude se se mnou bavit.~ */ GOTO 43
  IF ~  Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66211 /* ~"Počkej... Montague? Je tady problém... byl zabit."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Juliette mě požádala, ať před jejím milencem Montaguem zahraju žárlivého nápadníka. Vysvětlil jsem jí, že Montague zemřel.~ */ GOTO 50
  IF ~  Global("Montague_Problem","GLOBAL",0)
~ THEN REPLY #40341 /* ~"V pořádku. Dám s ním řeč... sbohem."~ */ JOURNAL #39455 /* ~Souhlasil jsem, že budu předvádět žárlivého nápadníka Julietty, jedné z prostitutek Nevěstince duševních rozkoší. Mám najít jejího milence Montague, někde v Městské hale a žádat, aby ji kvůli mně opustil.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.1 2.1 3.3 4.2 5.2 7.1 8.1 10.3 11.3 12.2 13.3 14.2 15.2 18.1 19.1 22.2 26.1 27.1 28.0 29.1 30.0 31.0 32.0 33.1 34.0 35.1 38.0 39.1 39.2 40.0 40.1 42.0 42.1 43.1 43.2 46.0 47.0 48.0 49.0
  SAY #40249 /* ~Juliette převrátila oči, "Oh, pojďme na to, když to musí být."~ */
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40342 /* ~"Co tu děláš?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40343 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40344 /* ~"Co mi můžeš říct o tiché prostitutce?"~ */ GOTO 25
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40345 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ GOTO 25
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40346 /* ~"Pokouším se najít Vivianinu voňavku... nevíš náhodou, kde by mohla být?"~ */ GOTO 25
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40347 /* ~"Hledám Marissin Karmínový závoj... nevíš, kde může být?"~ */ GOTO 25
  IF ~  GlobalLT("SadJuli","GLOBAL",2)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40348 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 25
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalLT("SadJuli","GLOBAL",2)
~ THEN REPLY #40349 /* ~"Už jsem mluvil s devíti prostitutkami... nevíš, kde by mohla být desátá?"~ */ GOTO 25
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40350 /* ~"Co tu děláš?"~ */ GOTO 27
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40351 /* ~"Můžeš mi něco říct o tomhle místě?"~ */ GOTO 29
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #63596 /* ~"Co mi můžeš říct o tiché nevěstce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 49
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67848 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~Jedna z prostitutek mi řekla, ať se na mlčící prostitutku Ecco zeptám Dolory. Dolora se prý občas baví s bývalým milencem Ecco, který ji znal ještě před tím, než přestala mluvit.~ */ GOTO 49
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40352 /* ~"Slyšel jsem, že Kesai-Serris je Ravelina dcera. Je to pravda?"~ */ DO ~SetGlobal("Know_Kim_Kes","AR0605",1)
~ JOURNAL #39457 /* ~Juliette mi řekla, že Kimasxi Zmijíjazyk, jedna z prostitutek v Nevěstinci, je nevlastní sestra Kesai-Serris, o které mi řekli, že je dcera Ravel.~ */ GOTO 48
  IF ~  Global("Scent_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40353 /* ~"Pokouším se najít Vivianinu voňavku... nevíš náhodou, kde by mohla být?"~ */ JOURNAL #66727 /* ~Jedna z prostitutek mi řekla, ať se zeptám Nenny, jestli neví něco o tom, kdo vzal Vivian její osobní voňavku. Nenny zřejmě neustále pobíhá kolem a sleduje, co dělají ostatní.~ */ GOTO 30
  IF ~  Global("Veil_Quest","AR0605",1)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40354 /* ~"Hledám Marissin Karmínový závoj... nevíš, kde může být?"~ */ JOURNAL #66728 /* ~Jedna z prostitutek mi řekla, ať se zeptám Nenny, jestli neviděla Marissin závoj. Nenny zřejmě neustále pobíhá kolem a sleduje, co dělají ostatní.~ */ GOTO 31
  IF ~  GlobalGT("SadJuli","GLOBAL",1)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40355 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~Zeptal jsem se jedné z protitutek na Ravel a ona mi řekla, ať si o ní promluvím s Yves. Yves prý sbírá nejrůznější příběhy, a pravděpodobně ve svém repertoáru bude mít i nějaký o Ravel.~ */ GOTO 32
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",1)
~ THEN REPLY #40356 /* ~"Už jsem mluvil s devíti prostitutkami... nevíš, kde by mohla být desátá?"~ */ GOTO 33
  IF ~~ THEN REPLY #40357 /* ~"Vážně nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.1 24.0 24.1 24.2 24.3 24.4 24.5 24.6 24.7
  SAY #40250 /* ~Juliette vydechla dlouhý a bezmocný vzdych. Uvědomil sis, že se na tebe ani náhodou nedívá.~ */
  IF ~~ THEN REPLY #40358 /* ~"Juliette? Slyšelas mě?"~ */ JOURNAL #66753 /* ~Juliette, jedna z prostitutek Nevěstince duševních rozkoší mi odmítá odpovídat na otázky. Jediná věc, která ji zajímá, je vyprávění o jejím nudném ubohém životě.~ */ GOTO 26
  IF ~~ THEN REPLY #40359 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #40251 /* ~"Hmm? Oh, já jsem tě popravdě neposlouchala - omlouvám se. Ale ty zajisté potřebuješ odpovědi na své otázky týkající se mého nudného života a nudy okolo něho...?"~ */
  IF ~~ THEN REPLY #40360 /* ~"Je tvůj život tak nudný?"~ */ GOTO 3
  IF ~~ THEN REPLY #40361 /* ~"Vážně, ano, měl jsem otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40362 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.8
  SAY #40252 /* ~"Připravuji se tu, abych se stala jednou z Vnímavých. Paní Grace je naše učitelka. Všechny prostitutky jsou její studentky."~ */
  IF ~~ THEN REPLY #40363 /* ~"Vnímaví?"~ */ GOTO 28
  IF ~~ THEN REPLY #40364 /* ~"Mám další otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40365 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 29.0
  SAY #40253 /* ~Juliette přikývla. "Člen Společenství Vjemu, frakce oddané vjemům a zkušenostem. Na otázky týkající se Vnímavých ti lépe zodpoví paní Grace než já."~ */
  IF ~~ THEN REPLY #40366 /* ~"Mám další otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40367 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.9
  SAY #40254 /* ~Juliette se culí. "Nevěstinec... je škola pro Vnímavé. Paní Grace je naše učitelka a mimochodem, víc způsobilá odpovídat na takovéhle otázky. Možná by bylo lepší, kdyby sis promluvil s ní?"~ */
  IF ~~ THEN REPLY #40389 /* ~"Chystáš se stát se... Vnímavým?"~ */ GOTO 28
  IF ~~ THEN REPLY #40390 /* ~"Ne právě teď. Mám další otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40391 /* ~"Možná jo. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.13
  SAY #40255 /* ~Juliette smutně potřásla hlavou. "Strašně ji lituji! Chudák žena. Přiznám se, občas jsem se vplížila do její komůrky a použila jeden nebo dva její parfémy... ale být tak troufalá a vzít Vivianinu vlastní, osobní vůni? Nesnesitelná drzost! V žádném případě, zeptejte se na to mladé Nenny. Stále okolo poletovala a každého pozorovala."~ */
  IF ~~ THEN REPLY #40392 /* ~"Mám další otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40393 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.14
  SAY #40256 /* ~"Oh, kdo by chtěl *hledat* takovou věc? Já, například, doufám, že tahle nezpůsobná a totálně protivná ženská bude stísněna ve svém pokoji dokud tu budu já! Ale odpověď na tvou otázku, ne; neviděla jsem to, a také nevím, kde by to mohlo být. Možná Nenny - stále bloudí kolem a všechno pozoruje."~ */
  IF ~~ THEN REPLY #40394 /* ~"Mám další otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40395 /* ~"To je všechno co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.15
  SAY #40257 /* ~"Ravel Puzzle-co? Kdo?" Juliette se zdála být zmatená. "Vážně je to něčí jméno? Když je, Yves by ji mohla znát. Zná nesčetné množství historek a tak by mohla znát i nějakou o téhle 'Ravel'."~ */
  IF ~~ THEN REPLY #40396 /* ~"Nevadí. Mám další otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40397 /* ~"Zapomeň na to, Juliette. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.16
  SAY #40258 /* ~"O čem to *mluvíš*?"~ */
  IF ~~ THEN REPLY #40398 /* ~"Desátá prostitutka - kdo je to?"~ */ GOTO 34
  IF ~~ THEN REPLY #40399 /* ~"Nevadí. Mám další otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40400 /* ~"Zapomeň na to, Juliette. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #40259 /* ~"Nemám ponětí o kom hovoříš."~ */
  IF ~~ THEN REPLY #40401 /* ~"Tak to mám teda další otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40402 /* ~"Tak v tom případě sbohem."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
Global("Jul_Mission_1","GLOBAL",0)
Global("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 35 // from:
  SAY #40260 /* ~Vidíš smutnou Juliette, dívajíc se smutněji než jindy. Sotva bere na vědomí tvou přítomnost, krátce na tebe pohlédne, než začne opět zírat do prázdného prostoru.~ */
  IF ~~ THEN REPLY #40403 /* ~"Co je špatně, Juliette?"~ */ GOTO 2
  IF ~~ THEN REPLY #40404 /* ~"Mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40405 /* ~"Jenom procházím kolem, Julliete. Sbohem."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_1","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #40261 /* ~Juliette na tebe pohlédla s nadějí. "Dobře? Máš něco?"~ */
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #40406 /* ~"Ne, ještě ne. Sbohem."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66215 /* ~"Je tady problém. Nebude se se mnou bavit."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66208 /* ~Juliette mě požádala, ať přinesu jejímu milenci Montaguovi nějaké falešné milostné dopisy. Vysvětlil jsem jí, že Montague se ke mně chová nepřátelsky a nebude se se mnou bavit.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66216 /* ~"Je tady problém... byl zabit."~ */ DO ~SetGlobal("Jul_Mission_1","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66209 /* ~Juliette mě požádala, ať přinesu jejímu milenci Montaguovi nějaké falešné milostné dopisy. Vysvětlil jsem jí, že Montague zemřel.~ */ GOTO 50
  IF ~  Global("Jul_Mission_1","GLOBAL",2)
~ THEN REPLY #40407 /* ~"Ano, vlastně ano. Má zlomené srdce a rozhodl se nechat tě tvé 'nové lásce.'"~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~Řekl jsem Juliette, co se stalo s Montaguem. Zhroutila se, je z ní teď vzlykající troska.~ */ GOTO 37
  IF ~  Global("Jul_Mission_1","GLOBAL",3)
~ THEN REPLY #40408 /* ~"Montague tě chtěl nechat tvé nové lásce a tak jsem mu řekl, že to všechno byl jenom podfuk. Teď si ale nejsem jistý, co vlastně udělá."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Řekl jsem Juliette, co se stalo s Montaguem. Nebyla potěšená, když slyšela, co se stalo, ale souhlasila, že mi odpoví na moje otázky.~ */ GOTO 39
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40409 /* ~"Montague vypadal, že ho to nezajímá... pamatuju si, že říkal, že 'ho to v každém případě nudí.'"~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Řekl jsem Juliette, co se stalo s Montaguem. Nebyla potěšená, když slyšela, co se stalo, ale souhlasila, že mi odpoví na moje otázky.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",4)
~ THEN REPLY #40410 /* ~"Dal jsem mu ty dopisy, ale... nedostal jsem z něj žádnou reakci. Navrhuju ti, aby sis s ním promluvila."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Řekl jsem Juliette, co se stalo s Montaguem. Nebyla potěšená, když slyšela, co se stalo, ale souhlasila, že mi odpoví na moje otázky.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40411 /* ~"Montague vypadal, že ho to nezajímá... Pamatuju si, že se zmínil o nějaké své další milence."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Řekl jsem Juliette, co se stalo s Montaguem. Nebyla potěšená, když slyšela, co se stalo, ale souhlasila, že mi odpoví na moje otázky.~ */ GOTO 42
  IF ~  Global("Jul_Mission_1","GLOBAL",5)
~ THEN REPLY #40412 /* ~"Dal jsem mu ty dopisy, ale... nedostal jsem z něj žádnou reakci. Navrhuju ti, aby sis s ním sama trochu promluvila."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Řekl jsem Juliette, co se stalo s Montaguem. Nebyla potěšená, když slyšela, co se stalo, ale souhlasila, že mi odpoví na moje otázky.~ */ GOTO 43
END

IF ~~ THEN BEGIN 37 // from: 36.3 45.0 50.0
  SAY #40262 /* ~Juliette vypadá šokovaná a o sekundu později začíná žalostně naříkat a fňukat.~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40413 /* ~"Dost křiku... Chci mít své otázky zodpovězené a to hned. Máme přece dohodu."~ */ GOTO 38
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #66151 /* ~"Já... mám nějaké otázky..., Juliette..."~ */ GOTO 38
  IF ~~ THEN REPLY #40414 /* ~"Je to ostuda, že to takhle dopadlo. Přijdu později, Juliette. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #40415 /* ~Tiše odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #40263 /* ~Ovládne své vzlykání a stírajíc si slzy, znovu na tebe pohlédne.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 39 // from: 36.4 44.4
  SAY #40264 /* ~"Řek jsi mu to...? Sakra! Co mám teď dělat?!"~ */
  IF ~~ THEN REPLY #40418 /* ~"Jelikož teď ví všechno, můžeš si s ním rovnou promluvit o svých pocitech, co se vašeho vztahu týče."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40419 /* ~"To je tvé rozhodnutí - já udělal svoje. A teď chci, abys mi odpověděla na moje otázky. Hned..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40420 /* ~"Nejsem si jist. Ale mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40421 /* ~"Nevím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 43.0
  SAY #40265 /* ~Juliette přikývla. "Ano, máš pravdu. Děkuji ti."~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40422 /* ~"Jistě. A teď chci odpovědi na své otázky..."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40423 /* ~"Jistě. Teď mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40424 /* ~"Potěšení na moje straně. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #40266 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 36.7 45.1 45.2
  SAY #40267 /* ~Juliette vypadá šokovaná. "On... *co* on řek!? Jak bych mohla být taková... oh! Zdá se, že má můj vztah potíže, které jsem tak chtěla a jen kvůli své melancholii je neviděla!"~ */
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40426 /* ~"Možná. Ať je to jak chce, já svou část udělal... A teď bych rád odpovědi na moje otázky."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40427 /* ~"Možná. Teď mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40428 /* ~"Možná. Sbohem, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 20.0 23.0 36.1 36.6 36.8 44.1
  SAY #40268 /* ~Juliette zklamaně zaskřípala zuby. "Oooo! Jak strašně frustrující! Pak tedy budu muset zkusit něco jiného."~ */
  IF ~~ THEN REPLY #40429 /* ~"Tak proč si s ním o tom zkrátka *nepromluvíš*? Nejdřív by sis s ním měla otevřeně promluvit, než začneš něco takového plánovat."~ */ GOTO 40
  IF ~  Global("Juli_Info","AR0605",1)
~ THEN REPLY #40430 /* ~"Možná. V každém případě já svou část splnil... A teď bych rád odpovědi na mé otázky."~ */ GOTO 24
  IF ~  Global("Juli_Info","AR0605",0)
~ THEN REPLY #40431 /* ~"Možná. Teď mám nějaké otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40432 /* ~"Možná. Sbohem, Juliette."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",1)
GlobalGT("Jul_Mission_2","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #40269 /* ~Juliette na tebe pohlédla s nadějí. "Dobře? Ještě něco?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #40433 /* ~"Ne, ještě ne. Sbohem."~ */ EXIT
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
!Dead("Montagu")
~ THEN REPLY #66217 /* ~"Je tady problém. Nebude se se mnou bavit."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",6)
SetGlobal("SadJuli","GLOBAL",3)
~ JOURNAL #66213 /* ~Juliette mě požádala, ať před jejím milencem Montaguem zahraju žárlivého nápadníka. Vysvětlil jsem jí, že Montague se ke mně chová nepřátelsky a nebude se se mnou bavit.~ */ GOTO 43
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
Global("Montague_Problem","GLOBAL",1)
Dead("Montagu")
~ THEN REPLY #66218 /* ~"Je tady problém... byl zabit."~ */ DO ~SetGlobal("Jul_Mission_2","GLOBAL",7)
SetGlobal("SadJuli","GLOBAL",2)
~ JOURNAL #66214 /* ~Juliette mě požádala, ať před jejím milencem Montaguem zahraju žárlivého nápadníka. Vysvětlil jsem jí, že Montague zemřel.~ */ GOTO 50
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40434 /* ~"Ano, vlastně ano. Má zlomené srdce a rozhodl se, že tě přenechá mně."~ */ DO ~SetGlobal("SadJuli","GLOBAL",2)
AddexperienceParty(10000)
~ JOURNAL #39458 /* ~Řekl jsem Juliette, co se stalo s Montaguem. Zhroutila se, je z ní teď vzlykající troska.~ */ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",3)
~ THEN REPLY #40435 /* ~"Montague tě chtěl přenechat mně a tak jsem mu řekl, že to všechno byl podfuk. Teď si nejsem jistý, co udělá."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ JOURNAL #39467 /* ~Řekl jsem Juliette, co se stalo s Montaguem. Nebyla potěšená, když slyšela, co se stalo, ale souhlasila, že mi odpoví na moje otázky.~ */ GOTO 39
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40436 /* ~"Montague vypadal, že ho to nezajímá..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40437 /* ~"Vznesl jsem svoje požadavky, jenže... nedostal jsem z něj žádnou reakci. Ale nechtěl se mnou bojovat. Navrhuju ti, aby sis s ním sama promluvila."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40438 /* ~"Montague vypadal, že ho to nezajímá..."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40439 /* ~"Vznesl jsem svoje požadavky, ale... nedostal jsem z něj žádnou reakci. Navrhuju ti, aby sis s ním sama promluvila."~ */ DO ~SetGlobal("SadJuli","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.3 44.5 44.6 44.7 44.8
  SAY #40270 /* ~"Nechce tedy o mne bojovat?"~ */
  IF ~  Global("Jul_Mission_2","GLOBAL",2)
~ THEN REPLY #40440 /* ~"Ne."~ */ GOTO 37
  IF ~  Global("Jul_Mission_2","GLOBAL",4)
~ THEN REPLY #40441 /* ~"Ne. Montague vypadal, že ho to nezajímá... pamatuju si, že říkal, že 'ho to v každém případě nudí.'"~ */ GOTO 42
  IF ~  Global("Jul_Mission_2","GLOBAL",5)
~ THEN REPLY #40442 /* ~"Ne. Pamatuju si, že zmínil něco o své další milence."~ */ GOTO 42
END

IF ~  Global("SadJuli","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #40271 /* ~Juliette vypadá hůř, než jsi ji kdy viděl. Její tvář je unavená a bledá s černými body v krví zalitých očích. Nabízí ti nejistý úsměv při snaze vypadat mile.~ */
  IF ~~ THEN REPLY #40443 /* ~"Mám nějaké otázky, Juliette."~ */ GOTO 24
  IF ~~ THEN REPLY #40444 /* ~"Jenom procházím kolem. Sbohem, Juliette."~ */ EXIT
END

IF ~  Global("SadJuli","GLOBAL",3)
~ THEN BEGIN 47 // from:
  SAY #40272 /* ~"Zdravím. Ptej se mě na co chceš?"~ */
  IF ~~ THEN REPLY #40445 /* ~"Ano, mám..."~ */ GOTO 24
  IF ~~ THEN REPLY #40446 /* ~"Ne, jenom procházím kolem. Sbohem, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 24.12
  SAY #40273 /* ~"Ravel... hmm... ah! Myslím, že jsem tohle jméno již před tím slyšela. Nevím nic konkrétního, ale *slyšela* jsem nějakou fámu. Mohl by ses na tuhle otázku zeptat Kimasxi Zmijíhojazyku... jsou poloviční sestry s Kesai, jak jistě víš."~ */
  IF ~~ THEN REPLY #40447 /* ~"Tak? Zajímavé. Mám další otázky..."~ */ GOTO 24
  IF ~~ THEN REPLY #40448 /* ~"Aha... to je vše, co chci zatím vědět. Sbohem, Juliette."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.10 24.11
  SAY #40274 /* ~"Oh, ta Ecco, o které ses zmínil. Říkají, že se zapřísáhla, že již nikdy znovu nepromluví z nějaké příčiny. Nemohu si vysvětlit, proč by někdo dělal takovou věc."~ */
  IF ~~ THEN REPLY #40449 /* ~"Mám další otázku..."~ */ GOTO 24
  IF ~~ THEN REPLY #40450 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 20.1 23.1 36.2 44.2
  SAY #66204 /* ~Juliette se ušklíbla. "Co? Určitě je to nějaká krutá hra, kterou se mnou zkoušíš hrát..." Náhle zalapala po dechu a zakryla si ústa. "Ne... ne! Vidím, že říkáš pravdu! On... zase měl souboj?"~ */
  IF ~~ THEN REPLY #66205 /* ~"Ano... něco v tom smyslu."~ */ GOTO 37
END
