// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORNCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORNCO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2943 /* ~Půvabná žena středních let kolem chodí jako ve spánku, bezmyšlenkovitě si přitom okusuje nehty. Její oči jakoby nebyly na ničem zaostřeny. Je oblečena elegantně, ale trochu neupraveně. Její vlasy jsou trochu rozcuchané.~ */
  IF ~~ THEN REPLY #31262 /* ~"Zdravím..."~ */ GOTO 1
  IF ~~ THEN REPLY #31263 /* ~Nechej ženu být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #31261 /* ~"Hm?" Vytáhla palec z úst a upravila si pramen vlasů, který jí padl do očí.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31264 /* ~"Nejsi náhodou Paní Trnočesá?"~ */ GOTO 2
  IF ~~ THEN REPLY #31265 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31266 /* ~"Nevšímej si mě. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 19.0
  SAY #31267 /* ~Její oči se na chvíli rozšířily. Stočila pohled pryč. "Ne. Ne, nejsem, pane."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31268 /* ~"Ale já myslím, že jsi. Řekli mi o cvičitelce mágů v Městské hale."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31269 /* ~"Jsi špatný lhář, víš?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31270 /* ~"A kdo tedy jsi, jestli se mohu zeptat?"~ */ GOTO 17
  IF ~~ THEN REPLY #31271 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31272 /* ~"Tak to tedy půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 17.0 18.0 18.1
  SAY #31273 /* ~Paní Trnočesá nasadila mrzutý výraz. "A co kdybych byla ta žena? Co pak?"~ */
  IF ~~ THEN REPLY #31274 /* ~"Doufal jsem, že bych se mohl naučit něco o magických uměních."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31030 /* ~Potkal jsem Paní Trnočesou, učitelku mágů z Úřednické čtvrti v jednom ze senzorií Haly. Nechce mě cvičit... i když netuším, proč.~ */ GOTO 4
  IF ~~ THEN REPLY #31275 /* ~"Mám na tebe nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31276 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 14.1 16.0
  SAY #31277 /* ~"V tom případě tvé naděje rozmetám na kusy. Už nechci učit magii... a teď mě prosím nechej být."~ */
  IF ~~ THEN REPLY #31278 /* ~"Ale proč ne?"~ */ GOTO 5
  IF ~~ THEN REPLY #31279 /* ~"Než odejdu, mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31280 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #31281 /* ~"Jako by to byl tvůj problém!"~ */
  IF ~~ THEN REPLY #31282 /* ~"Ale... já se chci vzdělávat a ty mě můžeš učit. Určitě najdu způsob, jak tě přesvědčit, abys mě trénovala."~ */ GOTO 8
  IF ~~ THEN REPLY #31283 /* ~"Tak fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 7.1
  SAY #31284 /* ~Potřásla hlavou. "Není to tak vždy... mágové jsou fyzicky nedokonalí, naše kouzla toliko pomáhají proti této nedokonalosti. Pokud je něčí čarodějnictví ztraceno, schopnost boje stále zůstává."~ */
  IF ~~ THEN REPLY #31285 /* ~"Aha. Mám ještě otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31286 /* ~"Rozumím. Díky a Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.3 3.1 4.1 6.0 13.0 13.1 14.2 16.1 17.3 19.1 20.1
  SAY #31287 /* ~"Dobrá, ptej se, na co chceš," promluvila apaticky.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31288 /* ~"Nejsi náhodou Paní Trnočesá?"~ */ GOTO 2
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31289 /* ~"Qui-Sai mě nebude cvičit... říká, že v boji jsou kouzla efektivnější než zbraně. Jaký je tvůj názor?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Qui-Sai mě odmítl trénovat na válečníka, tvrdil, že je lepší být mágem. Ale já mluvil s Paní Trnočesou, magickou cvičitelkou Haly, a ta mi řekla, jak jsou mágové fyzicky nedostateční, jejich kouzla jsou jenom pomůcky proti té nedokonalosti. To by měl být dobrý protiargument pro Qui-Saie.~ */ GOTO 6
  IF ~~ THEN REPLY #31290 /* ~"Chtěl bych se zeptat na tebe..."~ */ GOTO 13
  IF ~~ THEN REPLY #31291 /* ~"Chtěl bych se zeptat na tohle místo..."~ */ GOTO 13
  IF ~~ THEN REPLY #31292 /* ~"No vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #31293 /* ~Hlasitě si povzdechla a pokračuje v okusování nehtů. "Pochybuji, že je něco, co bys mi mohl nabídnout, co nedokážu získat sama. Senzorické krystaly mi dávají vše, co si nemohu koupit za své bohatství."~ */
  IF ~~ THEN REPLY #31294 /* ~"Senzorické krystaly?"~ */ GOTO 9
  IF ~~ THEN REPLY #31295 /* ~"Tak fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #31296 /* ~"Mmm. Ano... každý krystal v sobě má zaznamenanou nějakou zkušenost. Když jsem sem poprvé přišla, netrávila jsem s nimi moc času. Až teď si uvědomuji, o co jsem přicházela..."~ */
  IF ~~ THEN REPLY #31297 /* ~"O co jsi přicházela?"~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",2)
~ JOURNAL #31299 /* ~Paní Trnočesá je asi závislá na senzorických krystalech. Raději tráví své dny tříděním cizích zkušeností, než aby pokračovala ve svých povinnostech instruktora magie. Zajímalo by mě, jak bych ji mohl přesvědčit, ať znovu učí...~ */ GOTO 10
  IF ~~ THEN REPLY #31298 /* ~"Tak fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31300 /* ~S úsměvem přikývla. Její oči zeskelnatěly a držení těla poněkud ztuhlo. "Člověk tady může strávit několik životů, zde mezi krystaly... zkušenost za zkušeností... pouhá slova jejich velkolepost nedokáží vyjádřit. Můžu ti jenom navrhnout, ať si to zkusíš sám, pane."~ */
  IF ~~ THEN REPLY #31301 /* ~"Připadáš mi... jako bys byla na kamenech závislá."~ */ GOTO 11
  IF ~~ THEN REPLY #31302 /* ~"Možná ano. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #31303 /* ~Vyštěkla na tebe: "Nesmysl! Mohla bych přestat kdykoli si budu přát. Já si *vybrala* obdivování těch zázraků. Proč bych měla plýtvat čas učením pitomých nevděčných mágů, když můžu zůstat zde s těmi skvělými kameny a každý den prožívat desítky životů?"~ */
  IF ~~ THEN REPLY #31304 /* ~"Nemyslím si, že krystaly jsou zde jen pro to. Neměla bys vyhledávat vlastní vjemy, aby ses o ně později mohla podělit?"~ */ GOTO 12
  IF ~~ THEN REPLY #31305 /* ~"Tak tedy nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #31306 /* ~"Hpmh! Co si *ty* myslíš, mě nezajímá. Sbohem."~ */
  IF ~~ THEN REPLY #31307 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2 7.3
  SAY #31308 /* ~Když začínáš klást otázku, uvědomil sis, že se na tebe nedívá... dokonce ti ani nevěnuje pozornost.~ */
  IF ~  GlobalLT("Thorncombe","GLOBAL",2)
~ THEN REPLY #31309 /* ~"Haló? Mám otázku..."~ */ GOTO 7
  IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN REPLY #31310 /* ~"Paní Trnočesá? Mám otázku..."~ */ GOTO 7
  IF ~~ THEN REPLY #31311 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.1 17.1 18.2
  SAY #31312 /* ~Paní Trnočesá si odfrkla. "A ty jsi příšerně zjizvená ruina muže, více mrtvola obdařené nepovedenou náhražkou života, než cokoli jiného. A teď jdi pryč."~ */
  IF ~~ THEN REPLY #31313 /* ~"Promluv na mě tak ještě jednou a bude mrtvola z *tebe*!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thorn_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #31314 /* ~"Počkej... Doufal jsem, že obdržím trénink v magickém umění."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31315 /* ~"Ještě ne. Mám na tebe nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31316 /* ~"No tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #31317 /* ~Směje se ti. "Jdi se mlátit do hrudníku a vytahovat na někoho, kdo se tě bude bát. Mne to začíná urážet a až se urazím... nemyslím si, že bys chtěl být poblíž, až se to stane."~ */
  IF ~~ THEN REPLY #31318 /* ~"Přesně naopak: zkus to, a uvidíme, ty namyšlená čarodějnice."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31319 /* ~"Já... tak jsem to nemyslel. Přijmi mou omluvu, prosím..."~ */ GOTO 16
  IF ~~ THEN REPLY #31320 /* ~"Jdu pryč, protože mě nudíš. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #31321 /* ~Jdi prostě pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #31322 /* ~Potřásla hlavou a povzdychla si. "Přijímám tvou omluvu, pokud teď odejdeš a necháš mě být."~ */
  IF ~~ THEN REPLY #31323 /* ~"Doufal jsem, že obdržím trénink v magickém umění."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31326 /* ~Potkal jsem Paní Trnočesou, učitelku mágů z Úřednické čtvrti v jednom ze senzorií Haly. Nechce mě cvičit... i když nemám zdání, proč.~ */ GOTO 4
  IF ~~ THEN REPLY #31324 /* ~"Za moment. Mám na tebe nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31325 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2
  SAY #31327 /* ~Nervózně se usmála. "Nikdo důležitý, ujišťuji tě."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31328 /* ~"Ale já si myslím, že jsi, paní. Ty jsi Paní Trnočesá, učitelka mágů z Městské haly."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31329 /* ~"Jsi špatná lhářka, víš o tom?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31330 /* ~"Mohu znát tvé jméno?"~ */ GOTO 18
  IF ~~ THEN REPLY #31331 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31332 /* ~"Tak to tedy půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #31333 /* ~"Co... Já jsem... ehm... Adhana?"~ */
  IF ~  GlobalGT("Adahn","GLOBAL",0)
~ THEN REPLY #31334 /* ~"Dobře, už toho bylo dost. *Oba* víme, kdo jsi, Paní Trnočesá."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31335 /* ~"Ve skutečnosti jsi Paní Trnočesá, učitelka mágů. Mám pravdu?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31336 /* ~"Jsi špatná lhářka, víš o tom?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #31337 /* ~Tato žena se neustále potuluje po senzoriu, chodíc od krystalu ke krystalu. Pohlédla na tebe, ale nevypadá to, že by tě poznala..~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31338 /* ~"Nejsi náhodou Paní Trnočesá?"~ */ GOTO 2
  IF ~~ THEN REPLY #31339 /* ~"Mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31340 /* ~"Nevšímej si mě. Sbohem."~ */ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN BEGIN 20 // from:
  SAY #31341 /* ~Paní Trnočesá na tebe zašilhala, jako by se snažila vzpomenout si, kdo jsi. Náhle se zamračila. "Ty! Doufala jsem, že už mě nebudeš otravovat a tahat zpět do tréninkové místnosti... protože já tam určitě nepůjdu."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #31342 /* ~"Jenom by mě zajímalo, jestli víš, že Salabesh měl z tvého rozhodnutí radost a zažádal, aby byl určen novým učitelem mágů."~ */ GOTO 21
  IF ~~ THEN REPLY #31343 /* ~"Vlastně mám nějaké otázky..."~ */ GOTO 7
  IF ~~ THEN REPLY #31344 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31345 /* ~"Salabesh?! Ten pitomý vrták... ten by se nedokázal pročarovat ani skrz plesnivý pytlík! A o jakém *rozhodnutí* to vůbec mluvíš?"~ */
  IF ~~ THEN REPLY #31346 /* ~"No, přece o tvé rozhodnutí zůstat v senzoriu a už dál necvičit nezkušené mágy."~ */ JOURNAL #31349 /* ~Řekl jsem Paní Trnočesé o Salabeshově plánu získat její pozici učitele magie... je jisté, že ti dva se zrovna nemilují, takže se Paní Trnočesá rychle vrátila zpět do cvičební místnosti mágů, aby překazila jeho plány.~ */ GOTO 22
  IF ~~ THEN REPLY #31347 /* ~"NIc, zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31350 /* ~"Co?! Ale... já...~ */
  IF ~~ THEN REPLY #31351 /* ~"Ano, Paní Trnočesá?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #31352 /* ~Zlobně na tebe zírá. "Hloupé. Velice hloupé. Pokud ještě potkáš Salabeshe, řekni mu, ať se neobtěžuje. Ihned se vrátím do cvičebních místností."~ */
  IF ~~ THEN REPLY #31353 /* ~"Možná se tam potkáme, Paní Trnočesá. Sbohem."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",4)
SetGlobal("Thorncombe","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0603cut1",FALSE)
~ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31354 /* ~Paní Trnočesá se na tebe mračí. "Nemám čas na rozhovor... pokud si to budeš přát, můžeš mě později navštívit v cvičební místnosti mágů. Sbohem."~ */
  IF ~~ THEN REPLY #31355 /* ~Odejdi.~ */ EXIT
END

IF ~  GlobalGT("Thorncombe","GLOBAL",3)
~ THEN BEGIN 25 // from:
  SAY #31356 /* ~Paní Trnočesá na tebe kývla, ale není ti jasné, jestli tě poznala nebo ne. Upravuje si oblečení a vlasy a vypadá jako stárnoucí, ale atraktivní šlechtična... stále je však trochu mimo a snadno rozrušitelná. ""Zdravím... jsi zde kvůli tréninku magických umění?"~ */
  IF ~  Global("Thorncombe","GLOBAL",5)
Class(Protagonist,MAGE)
~ THEN REPLY #31357 /* ~"Ano... ukaž mi, jaká kouzla mě můžeš naučit."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~  Global("Thorncombe","GLOBAL",5)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #64643 /* ~"Ano... Chtěl bych se znovu stát kouzelníkem. Mohl bys mi ukázat cestu?"~ */ GOTO 32
  IF ~  Global("Thorncombe","GLOBAL",4)
~ THEN REPLY #31358 /* ~"Ano, jsem."~ */ GOTO 30
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #68458 /* ~"Ne, ale rád bych si koupil nějaká kouzla."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31359 /* ~"Ne, ale mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #31360 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4
  SAY #31364 /* ~"Můj čas a pozornost jsou vyhrazeny pro mé studentky, pane. Doporučuji ti, ať si promluvíš s nimi... nebo s někým, kdo má více času."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31362 /* ~"Počkej: Qui-Sai mě nebude cvičit... říká, že v boji jsou kouzla efektivnější než zbraně. Jaký je tvůj názor?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~Qui-Sai mě odmítl trénovat na válečníka, tvrdil, že je lepší být mágem. Ale já mluvil s Paní Trnočesou, magickou cvičitelkou Haly, a ta mi řekla, jak jsou mágové fyzicky nedostateční, jejich kouzla jsou jenom pomůcky proti té nedokonalosti. To by měl být dobrý protiargument pro Qui-Saie.~ */ GOTO 27
  IF ~~ THEN REPLY #31363 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31365 /* ~Potřásla hlavou. "Není to tak vždy... mágové jsou fyzicky nedokonalí, naše kouzla toliko pomáhají proti této nedokonalosti. Pokud je něčí čarodějnictví ztraceno, schopnost boje stále zůstává."~ */
  IF ~~ THEN REPLY #31366 /* ~"Rozumím. Díky a Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #31367 /* ~Odpověděl jsi na její poslední otázku a ona potěšeně přikývla. "Ty jsi tedy povoláním mág, pokud tomu rozumím?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #31369 /* ~"To jsem."~ */ GOTO 35
  IF ~  !Class(Protagonist,MAGE)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31370 /* ~"Ne... nejsem."~ */ GOTO 29
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31371 /* ~"No, vlastně ne... ale obdržel jsem trénink."~ */ GOTO 29
  IF ~~ THEN REPLY #31372 /* ~"No vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.2
  SAY #31373 /* ~Zavřela oči a vydala ze sebe dlouhý povzdech. "A co tedy chceš, abych tě učila? Neplýtvej už více časem mým ani mých studentů! Sbohem."~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31374 /* ~"Počkej... mohla bys ze mne *udělat* mága?"~ */ GOTO 32
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31375 /* ~"Počkej... Rád bych se znovu vydal cestou magie. Můžeš mi ukázat cestu?"~ */ GOTO 32
  IF ~~ THEN REPLY #31376 /* ~"Sbohem, Paní Trnočesá."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.2
  SAY #31377 /* ~"Dobrá tedy. Odpověz mi na tyto otázky..." Testuje tvou inteligenci a logické myšlení dlouhou sérií logických a slovních hádanek...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #31378 /* ~Odpověz její otázky tak dobře, jak jen dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Thorncombe","GLOBAL",5)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #31379 /* ~Odpověz její otázky tak dobře, jak jen dokážeš.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #31380 /* ~"Je mi líto, jednoduše nevlastníš dost intelektu, abys pochopil základní koncepce magie. Přeji ti ale štěstí na jakékoli jiné životní dráze, kterou si zvolíš; sbohem."~ */
  IF ~~ THEN REPLY #31381 /* ~"Uh... dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1 29.0 29.1
  SAY #31382 /* ~"Ale mohu se *pokusit*. Vzdáš se svého momentálního povolání?"~ */
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31383 /* ~"Ano, chci se vzdát meče ve prospěch magie a znovu se věnovat Umění."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31384 /* ~"Ano, chci zanechat zlodějiny a znovu se věnovat Umění."~ */ GOTO 33
  IF ~  Class(Protagonist,FIGHTER)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31385 /* ~"Ano, chci se vzdát meče ve prospěch magie. Nauč mě cestu Umění."~ */ GOTO 36
  IF ~  Class(Protagonist,THIEF)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31386 /* ~"Ano, chci zanechat zlodějiny a věnovat se Umění."~ */ GOTO 36
  IF ~~ THEN REPLY #31387 /* ~"Ne, raději ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #31388 /* ~"Dobrá tedy. Společně si zopakujeme, co víš o Umění... brzy tě uvedeme zpět na cestu mága."~ */
  IF ~~ THEN REPLY #31389 /* ~Poslouchej a uč se.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31390 /* ~"Učinil jsi na mě dojem. Kdyby mi senzorické krystaly už tolikrát neukázaly nemožné, nevěřila bych, že si někdo dokáže tak rychle vzpomenout na cesty Umění. Jsi připraven na nová kouzla, které tě mohu naučit?"~ */
  IF ~~ THEN REPLY #31391 /* ~"Ano, ukaž mi je prosím."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31392 /* ~"Teď ne, ale vrátím se později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.0
  SAY #31393 /* ~"Jsi připraven vidět kouzla, která tě mohu naučit?"~ */
  IF ~~ THEN REPLY #31394 /* ~"Ano, ukaž mi je prosím."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31395 /* ~"Teď ne, ale vrátím se později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2 32.3
  SAY #31396 /* ~"Dobrá. Naučím tě, co budu moci." Na chvíli se zarazila, ztracena ve vlastních myšlenkách. "Talent pro Umění sám o sobě nestačí. Potřebuješ prostředky, kterými jej soustředíš: kouzla. Kouzla jsou většinou uschována v knize, ačkoli jsem narazila na mágy, kteří si svá uchovávali v papyrových svitcích, kamenných tabulkách, vyšité v hedvábí... nebo na zvířecích kůžích..." Oči jí opět zeskelnatěly a znovu si začíná okusovat nehty.~ */
  IF ~~ THEN REPLY #31397 /* ~"Paní Trnočesá? Co jsi říkala?"~ */ JOURNAL #39474 /* ~Trénoval jsem na mága pod vedením ženy jménem Paní Trnočesá, cvičitelky mágů z Městské haly.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31398 /* ~"Hmm? Oh! Odpusť mi... jak jsem říkala, Umění vyžaduje knihu - nebo něco podobného - než můžeš kouzlit. Umíš číst?"~ */
  IF ~~ THEN REPLY #31399 /* ~"To nevím."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
  IF ~~ THEN REPLY #31400 /* ~"Ano."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #31401 /* ~"Tak tě tedy znovu otestujeme." Z kožené kabely vytáhla svitek. "Můžeš to pro mě přečíst?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #31402 /* ~Prozkoumej svitek.~ */ GOTO 39
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #31403 /* ~Prozkoumej svitek.~ */ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #31404 /* ~Nápis na svitku ti plave před očima, každý symbol se snaží vykroutit z tvého vědomí, když se ho pokoušíš přečíst. Téměř instinktivně uvolňuješ oči, čímž jim umožníš prozkoumat celou stránku najednou... a symboly se náhle spojí: na svitku jsou uvedeny arkánní slabiky, magické komponenty a mystická gesta, kterými ovlivníš tok many... vypadá to na slabší kouzlo šarmu."~ */
  IF ~~ THEN REPLY #31405 /* ~"Je to nižší šarm, že? Vypadá to jako kouzlo, které tě učiní pro ostatní přitažlivější, charismatičtější."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #31406 /* ~Nápis na svitku ti plave před očima, každý symbol se kroutí a uhýbá před pohledem, když se ho pokoušíš přečíst.~ */
  IF ~~ THEN REPLY #31407 /* ~Prozkoumej symboly a pokus se je rozluštit.~ */ GOTO 41
  IF ~~ THEN REPLY #31408 /* ~"Vzdávám to, Paní Trnočesá. Co je tam napsáno?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #31409 /* ~Intenzívně studuješ symboly. Ať se snažíš jak chceš, nápis na svitku stále uhýbá před tvým vědomím, kroutí se a svíjí jako klubko hadů. Jenom snaha sledovat jejich pohyb ti způsobuje bolest v očích.~ */
  IF ~~ THEN REPLY #31410 /* ~Studuj symboly dál, pokus se rozluštit jejich smysl.~ */ GOTO 42
  IF ~~ THEN REPLY #31411 /* ~"Vzdávám to, Paní Trnočesá. Co je tam napsáno?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0 42.0
  SAY #31412 /* ~Studuješ symboly ještě několik minut pod tichým dozorem Paní Trnočesé. Po čase ztratila zájem a její oči začínají pobíhat po místnosti.~ */
  IF ~~ THEN REPLY #31413 /* ~Studuj symboly dál, pokus se rozluštit jejich smysl.~ */ GOTO 42
  IF ~~ THEN REPLY #31414 /* ~"Vzdávám to, Paní Trnočesá. Co je tam napsáno?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.1 41.1 42.1
  SAY #31415 /* ~Když už oddaluješ svitek od očí, téměř instinktivně uvolňuješ pohled, čímž svým očím umožníš prozkoumat celou stránku najednou... a symboly se náhle spojí: na svitku jsou uvedeny arkánní slabiky, magické komponenty a mystická gesta, kterými ovlivníš tok many... vypadá to na slabší kouzlo šarmu."~ */
  IF ~~ THEN REPLY #31416 /* ~"Je to nižší šarm, že? Vypadá to jako kouzlo, které tě učiní pro ostatní přitažlivější, charismatičtější."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.0 43.0
  SAY #31417 /* ~Oči Paní Trnočesé se rozšířily. "Kdo jsi, že mě tak oblbuješ?!" Vytrhla ti svitek z ruky. "Lhal jsi mi? Jsi přece jenom mág? Nebo snad dokonce fiend? Odpověz mi!"~ */
  IF ~~ THEN REPLY #31418 /* ~"Co se děje?"~ */ JOURNAL #31420 /* ~Paní Trnočesá mi dala test... kouzlo nižšího šarmu, napsané na svitku jazykem Umění. Dokázal jsem je rozluštit bez výcviku. Někdy v minulosti jsem se musel naučit, jak přečíst magii.~ */ GOTO 45
  IF ~~ THEN REPLY #31419 /* ~"Ne, pokud vím. Co je špatně?"~ */ JOURNAL #31420 /* ~Paní Trnočesá mi dala test... kouzlo nižšího šarmu, napsané na svitku jazykem Umění. Dokázal jsem je rozluštit bez výcviku. Někdy v minulosti jsem se musel naučit, jak přečíst magii.~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #31421 /* ~"Nečekala jsem... hmm..." Věnovala ti dlouhý, opatrný pohled. "To, co jsi četl, je napsáno jazykem *Umění*. Pokud nejsi mág, měl bys vidět pouze zmatené symboly, totálně bez nějakého smyslu. Ale ty, což je jasné jako amorijské nebe, jsi to pochopil. Jak je to možné?"~ */
  IF ~~ THEN REPLY #31422 /* ~"Já opravdu nevím... pouze jsem *věděl*, co je tam psáno."~ */ GOTO 46
  IF ~~ THEN REPLY #31423 /* ~"Možná že jsem je kdysi znal, ale zapomněl... pohled na ty symboly osvěžil mou paměť."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0 45.1
  SAY #31424 /* ~"Nebo máš možná vrozený talent... na tom ale nezáleží. "Usmála se na tebe. "Právě jsi přeskočil měsíce, možná *roky* studia. Takže, umíš kouzla číst, ale máš na ně knihu?"~ */
  IF ~~ THEN REPLY #31425 /* ~"Kouzelnou knihu? Ne."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #31426 /* ~"A co je tohle?" Ukazuje na tvůj deník.~ */
  IF ~~ THEN REPLY #31427 /* ~"To je můj deník. Zapisuju si zajímavé věci... lidi, které potkám, a tak..."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31428 /* ~"Tak si do něj budeš zapisovat i kouzla." Zamračila se na deník. "Otrhaná věc... ale bude stačit." Chvíli tiše stojí a pozoruje deník. Vypadá to, že se zase ztratila ve svých myšlenkách a pokračuje v okusování nehtů.~ */
  IF ~~ THEN REPLY #31430 /* ~"Paní Trnočesá...?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #31432 /* ~Znovu se na tebe soustředila. "MM?... Ó, ano. Takže: dokud jsou kouzla v tvé knize, jsou bez moci - pouhá slova. Umění vyžaduje, že si kouzla nastuduješ - *zapamatuješ*- než využiješ jejich moc. To vyžaduje čistou mysl,  takže se doporučuje, aby ses před tím vyspal. Rozumíš?"~ */
  IF ~~ THEN REPLY #31433 /* ~"Ano, pokračuj."~ */ GOTO 50
  IF ~~ THEN REPLY #31434 /* ~"Myslím, že tyto základy chápu, Paní Trnočesá."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #31435 /* ~"Výborně. *Před* spaním si vyber kouzla, která si chceš zapamatovat. To je důležité. Poté, co vstaneš, měla by být kouzla připravena v tvé mysli, nabitá manou a připravená k seslání."~ */
  IF ~~ THEN REPLY #31436 /* ~"Kolik kouzel mohu vyvolat?"~ */ GOTO 51
  IF ~~ THEN REPLY #31437 /* ~"Myslím, že tyto základy chápu, Paní Trnočesá."~ */ GOTO 56
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #31438 /* ~"Pouze jedno, možná dvě, než budeš znovu odpočívat... jako mág začátečník nemáš v mysli dost místa pro větší sílu. Dokud se nestaneš v Umění zběhlejší, šetři si svá kouzla. Ale i poté je používej moudře, to ti radím. S nárůstem tvých zkušeností se bude zvyšovat i tvá schopnost zapamatování (memorizace) kouzel."~ */
  IF ~~ THEN REPLY #31439 /* ~"Dobře... Pokračuj..."~ */ GOTO 52
  IF ~~ THEN REPLY #31440 /* ~"Myslím, že tyto základy chápu, Paní Trnočesá."~ */ GOTO 56
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #31441 /* ~Můžeš sesílat pouze kouzla, která máš zapamatována. Takže pokud chceš například využít umění k identifikaci dvou různých magických objektů, kolikrát musíš memorizovat kouzlo identifikace?"~ */
  IF ~~ THEN REPLY #31442 /* ~"Jednou."~ */ GOTO 53
  IF ~~ THEN REPLY #31443 /* ~"Dvakrát."~ */ GOTO 54
  IF ~~ THEN REPLY #31444 /* ~"Uh..."~ */ GOTO 53
  IF ~~ THEN REPLY #31445 /* ~"Myslím, že tyto základy chápu, Paní Trnočesá."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.2
  SAY #31446 /* ~"Dvakrát! Abys mohl zakouzli kouzlo *dvakrát*, musíš ho i *dvakrát* memorizovat."~ */
  IF ~~ THEN REPLY #31447 /* ~"Rozumí. Kde získám další kouzla?"~ */ JOURNAL #31449 /* ~Paní Trnočesá mě naučila základy Umění. Řekla mi, že před odpočinkem si musím vybrat kouzla, která chci používat, prohlédnutím své knihy kouzel a jejich výběrem. Pokud chci být schopen zakouzlit kouzlo vícekrát, musím si ho vícekrát memorizovat. Kdykoli budu odpočívat, probudím se s kouzly ve své paměti, připravenými k seslání. Řekla mi, že budu schopný zakouzlit pouze několik kouzel denně, než se stanu zběhlejším v používání magie. A možná ve městě najdu další učitele, kteří mě mohou naučit další kouzla.~ */ GOTO 55
  IF ~~ THEN REPLY #31448 /* ~"Myslím, že tyto základy chápu, Paní Trnočesá."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.1
  SAY #31450 /* ~Paní Trnočesá přikývla a usmála se. "Ano, správně. Dvakrát."~ */
  IF ~~ THEN REPLY #31451 /* ~"Jak získám více kouzel?"~ */ JOURNAL #31449 /* ~Paní Trnočesá mě naučila základy Umění. Řekla mi, že před odpočinkem si musím vybrat kouzla, která chci používat, prohlédnutím své knihy kouzel a jejich výběrem. Pokud chci být schopen zakouzlit kouzlo vícekrát, musím si ho vícekrát memorizovat. Kdykoli budu odpočívat, probudím se s kouzly ve své paměti, připravenými k seslání. Řekla mi, že budu schopný zakouzlit pouze několik kouzel denně, než se stanu zběhlejším v používání magie. A možná ve městě najdu další učitele, kteří mě mohou naučit další kouzla.~ */ GOTO 55
  IF ~~ THEN REPLY #31452 /* ~"Myslím, že tyto základy chápu, Paní Trnočesá."~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 53.0 54.0
  SAY #31453 /* ~"Vždy hledej šanci naučit se více - dokonce i běžní lidé tě někdy mohou naučit jednouchou magii. Také existují recepty, knihy a dokonce i podivnější předměty, na kterých jsou kouzla. Pokud něco takového najdeš, prostě si kouzlo prozkoumej a případně zkopíruj do své knihy."~ */
  IF ~~ THEN REPLY #31454 /* ~"Mám to."~ */ GOTO 56
  IF ~~ THEN REPLY #31455 /* ~"Myslím, že tyto základy chápu, Paní Trnočesá."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 49.1 50.1 51.1 52.3 53.1 54.1 55.0 55.1
  SAY #31456 /* ~"Vezmi si tyto svitky... jsou to slabší kouzla, která posílí tvou chuť na Umění." Suše se usmála. "Vrať se sem, až zmoudříš a získáš více zkušeností... tvůj trénink už sice nebude zdarma, ale budu ti moci prodat mocnější kouzla, pokud je budeš schopen použít."~ */
  IF ~~ THEN REPLY #31457 /* ~"Děkuji ti, Paní Trnočesá. Sbohem."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
  IF ~~ THEN REPLY #31458 /* ~"Vrátím se tedy později. Sbohem."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
END
