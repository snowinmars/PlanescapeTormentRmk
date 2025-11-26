// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINGRESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DINGRESS~

IF ~  Global("Ingress","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3408 /* ~Vidíš divokou ženu zabalenou v hadrech. Její vlasy jsou rozcuchané a špinavé. Paže jí pokrývají spáleniny, její pravá ruka je jenom spečený kus masa... vypadá... roztaveně, jako vosk vystavený žáru.~ */
  IF ~~ THEN REPLY #3409 /* ~"Zdravím."~ */ DO ~SetGlobal("Ingress","GLOBAL",1)
~ JOURNAL #28839 /* ~Potkal jsem znetvořenou ženu jménem Ingress v části města před Márnicí. Byla nepředstavitelně zjizvená - není pochyb, že všechna tato zranění poznamenala i její mysl.~ */ GOTO 1
  IF ~~ THEN REPLY #6167 /* ~Nechej ženu na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6168 /* ~"Co vode mně chceš?" Přízvuk té ženy je silný a je pro tebe obtížné pochopit, co vlastně říká. "Chceš abych vodešla? NEVOPUSTÍM todle město, prostě to nedokážu. Já nemůžu, zkoušela jsem to, todle nejni město, je to všecko vězení."~ */
  IF ~~ THEN REPLY #6169 /* ~"Všecko?"~ */ DO ~SetGlobal("Ingress","GLOBAL",2)
~ GOTO 2
  IF ~~ THEN REPLY #6170 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.1 18.2
  SAY #6171 /* ~"Sou tam světy, sou tam..." V jejích očích probleskuje šílenství. "...sféry utopený v písku, pole zaplavený kopřivama, nedohledný světy, ve kterejch tvoje ruce a nohy žijou vlastním životem, města z prachu - v nich sou lidi taky celý z prachu a šeptaj popel, dům bez dvéří, Země Soumraku, zpívající vichry..." Začíná tiše vzlykat, ale už nemá žádné slzy. "A stíny... sou tam příšerný stíny."~ */
  IF ~~ THEN REPLY #6172 /* ~"Kde jsou tato místa?"~ */ DO ~SetGlobal("Ingress","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #6173 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #6174 /* ~"Kde? Kde sou tadle místa?" Mávla pahýlem své pravé ruky v gestu objímajícím celé město. "Sou TADY všude. Dvéře, dvéře odtud *kamkoliv.*"~ */
  IF ~~ THEN REPLY #6175 /* ~"Dveře?"~ */ GOTO 4
  IF ~~ THEN REPLY #6176 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 18.3
  SAY #6177 /* ~"Ty! Ty to nevíš?!" Úkosem se na tebe podívala a začala jektat zuby. "Ti řeknu, co vím: Dej si bacha na každý místo kolem kerýho deš, nebo kerýho se v tomdle třikrát prokletým městě dotkneš... Dvéře, brány, podloubí, vokna, rámy od vobrazů, votevřený huby soch, místa mezi policema... Dej si bacha na JAKÝKOLI místo vohraničený ze všech stran. VŠECKO sou to dvéře na jiný místa."~ */
  IF ~~ THEN REPLY #6178 /* ~"Co tím myslíš?"~ */ DO ~SetGlobal("Ingress","GLOBAL",4)
~ GOTO 5
  IF ~~ THEN REPLY #6179 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.4
  SAY #6180 /* ~"Každý dvéře maj svůj KLÍČ a s ním pak ukážou svou skutečnou podstatu... Z kamennýho voblouku se stane portál, z rámu vod vobrazu se stane portál, z vokna se stane portál... a všecky šílej po tom, aby tě zatáhly někam JINAM. Ukradnou tě pryč..." Zvedla pahýl své pravé ruky. "A někdy si to, co číhá na druhý straně vezme kousek tebe, jako DESÁTEK."~ */
  IF ~~ THEN REPLY #6181 /* ~"Jaké jsou ty klíče?"~ */ GOTO 6
  IF ~~ THEN REPLY #6182 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #6183 /* ~"Klíče. Klíčů je tolik, kolik je ve městě dvéři. Co dvéře to klíč, co klíč to ňáký dvéře." Zase začala jektat zuby, jako by jí byla zima. "A klíč je...? Klíčem může bejt *cokoliv*. Emoce, železnej hřebík drženej mezi tvým druhým a pátým prstem, nebo myšlenka - třikrát na něco vzpomeneš, pak vzpomeneš na cosi opačnýho, či to může bejt třeba skleněná růže."~ */
  IF ~~ THEN REPLY #6184 /* ~"A to všechno jsou klíče, které otevírají tyto dveře?"~ */ JOURNAL #28838 /* ~Ingress mě varovala před *dveřmi* ve městě... vysvětlila mi, že každé ohraničené místo - rám obrazu, průchod či okno - každá z těchto věcí se může stát portálem na nějaké místo, pokud bych jím prošel s tím správným klíčem. A ten klíč by mohl být prakticky cokoli...  hmotný či nehmotný: kovové hřebíky, myšlenka myšlená třikrát za sebou, skleněná růže, jistá emoce... každá z těchto věcí by mohla otevřít nějaký portál.~ */ GOTO 7
  IF ~~ THEN REPLY #6185 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6186 /* ~"Jo." Začala jektat zuby, semkla rty a zašilhala očima. "A-A-ano. Nejde jít pryč... nejde vodejít..."~ */
  IF ~~ THEN REPLY #6187 /* ~"Jak ses sem dostala?"~ */ DO ~SetGlobal("Ingress","GLOBAL",5)
~ JOURNAL #28837 /* ~Ingress byla do tohoto města přenesena jedním z portálů v její rodné zemi... tenkrát si pobrukovala písničku na pasece se dvěma navzájem do sebe zaklíněnými spadlými stromy a otevřela tak portál do tohoto města. Prošla mezi stromy a už nikdy se jí nepodařilo vrátit se zpět.~ */ GOTO 8
  IF ~~ THEN REPLY #6188 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 18.5
  SAY #6189 /* ~"Ze..." Trošku se uklidnila a její oči se zahleděly někam daleko. "Přišla sem z místa jinýho než je todle, už je to skoro celej život. Broukala sem si písničku na mýtině se dvěma mrtvejma stromama, kerý asi někdy spadly najednou a zaklínily se do sebe. Mezi zkříženejma kmenama se votevřely zářivý dvéře a já přes ně uviděla na druhý straně todle město... Prošla sem skrz a skončila tu."~ */
  IF ~~ THEN REPLY #6190 /* ~"Zkusila ses vrátit?"~ */ GOTO 9
  IF ~~ THEN REPLY #6191 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6192 /* ~"Zkusila!" Začíná zase posmrkávat, ale nepláče. "Zkusila! VŠECHNY dvéře vocaď vedou na JINÝ místa." Otřásla se a chytila pahýl své pravé ruky. "Prošla sem třikrát deseti portály, někerejma záměrně, někerejma náhodou, žádnej z nich nebyl ten správnej. Nemůžu najít cestu zpátky..."~ */
  IF ~~ THEN REPLY #6193 /* ~"Musí tu být přece portál, který tě vezme zpět."~ */ GOTO 10
  IF ~~ THEN REPLY #6194 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #6195 /* ~"Nemůžu vocaď odejít! Z tohodle náměstí! A tam - místo smrti za branou, na mě čeká!" Ukázala na Márnici za branou, když se pak obrátila zpět k tobě, zatvářila se zoufale. "V tomdle městě nemůžu jít nikam!"~ */
  IF ~~ THEN REPLY #6196 /* ~"Nemůžeš jít nikam? Co tím myslíš?"~ */ GOTO 11
  IF ~~ THEN REPLY #6197 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #6198 /* ~"Cokoli by mohly bejt dvéře. Voblouk tam, dvéře támdle, ty by taky mohly bejt portál, neznám klíč, mohlo by mě to poslat na další příšerný místo..." Zase začala jektat zuby. "...držím se dál vod uzavřenejch prostor, všechno by mohly bejt dvéře, na mně by moh bejt klíč a dyž vo tom nebudu vědět..."~ */
  IF ~~ THEN REPLY #6199 /* ~"Ty... ty se bojíš projít JAKÝMIKOLIV dveřmi, protože by to *mohl* být portál?"~ */ GOTO 12
  IF ~~ THEN REPLY #6200 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #6201 /* ~Přikývla, jektajíc zuby. ~ */
  IF ~~ THEN REPLY #6202 /* ~"Jak dlouho už se takhle bojíš?"~ */ GOTO 13
  IF ~~ THEN REPLY #6203 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #6204 /* ~Zašilhala. "Vod tý doby, co sem prošla přes poslední portál na místo, kde moje ruka..." Zmlkla. "To sem tu byla desátej rok... Teď tu sem čtyřicátej." Začala jektat zuby.~ */
  IF ~~ THEN REPLY #6205 /* ~"Třicet let? Ty jsi neprošla *žádnými* *dveřmi* už třicet let?"~ */ GOTO 14
  IF ~~ THEN REPLY #6206 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6207 /* ~Zdá se, že se její zrak lehce rozjasnil. Podívala se na tebe, stále jektajíc zuby.~ */
  IF ~~ THEN REPLY #6208 /* ~"Pokud ses dostala sem, musí tady být portál, který tě může vzít zpět. Jde jen o to ho najít --"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #6209 /* ~"Tak moc se bát projít *jakýmikoliv* dveřmi, to je --"~ */ GOTO 15
  IF ~~ THEN REPLY #6210 /* ~"Ty jsi *šílená*, ženo! Musíš být blázen, když nechceš projít čímkoliv, co by mohly být dveře --"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #6211 /* ~"Je mi líto, už musím jít."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #6212 /* ~Usmála se. Nejektala zuby, protože by jí byla zima... její zuby se pohybují uvnitř úst a dásně se kroutí, jak se v nich zuby posouvají. Vidíš jak se vysunují a zasunují, jektaje při tom, jak do sebe navzájem naráží.~ */
  IF ~~ THEN REPLY #6213 /* ~"Co...?"~ */ GOTO 16
  IF ~~ THEN REPLY #6214 /* ~"Uh... bude lepší, když půjdu... sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #6215 /* ~Zasyčela na tebe. "Stačí vlízt omylem do jedinýho portálu, aby ses začal BÁT. Prošla sem třicetima, přišla sem vo ruku, popálila se a ztratila zdravej rozum." Podívala se na své nohy. "Už nikdy, už nikdy."~ */
  IF ~~ THEN REPLY #6216 /* ~"Je mi líto... jestli existuje nějaký způsob, jak ti pomoci, najdu ho. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_1","GLOBALGood",1)
~ JOURNAL #28836 /* ~Ingress je uvězněna v okovech strachu před portály... její zkušenosti se "sférochodectvím" ji tu zanechaly tak vystrašenou, že nedokáže projít *čimkoliv*, co by jen mohlo být portálem. Pokud by se mi ve městě podařilo potkat nějakého zkušeného sférochodce, snad bych mohl najít způsob, jak ji dostat zpět domů.~ */ EXIT
  IF ~~ THEN REPLY #6217 /* ~"Pak tedy zemři ve městě, které se bojíš opustit. Nech svůj strach, ať tě ovládá. Sbohem a hodně štěstí."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_1","GLOBALGood",-1)
~ JOURNAL #28835 /* ~Pološílená Ingress se tolik obává vlastního stínu i čehokoliv, co by jen mohlo být portálem, že žije jako toulavý pes na ulicích města. Získala si pouze mé nejmenší či dokonce žádné sympatie... přesto, kdyby se mi podařilo setkat se s nějakým zkušeným sférochodcem, který by věděl o portálu, jímž sem Ingress přicestovala, měl bych jí to dojít říct. ~ */ EXIT
  IF ~~ THEN REPLY #6218 /* ~"Vezmu si tvé varování k srdci. Sbohem."~ */ JOURNAL #28836 /* ~Ingress je uvězněna v okovech strachu před portály... její zkušenosti se "sférochodectvím" ji tu zanechaly tak vystrašenou, že nedokáže projít *čimkoliv*, co by jen mohlo být portálem. Pokud by se mi ve městě podařilo potkat nějakého zkušeného sférochodce, snad bych mohl najít způsob, jak ji dostat zpět domů.~ */ EXIT
END

IF ~  GlobalGT("Ingress","GLOBAL",0)
GlobalLT("Ingress","GLOBAL",7)
~ THEN BEGIN 17 // from:
  SAY #6219 /* ~Vidíš Ingress. Je schoulena ve svém plášti ze špinavých hadrů a jektá zuby. Neustále se ostražitě rozhlíží, jako by očekávala, že ji někdo napadne.~ */
  IF ~~ THEN REPLY #6220 /* ~"Buď zdráva, Ingress."~ */ GOTO 18
  IF ~~ THEN REPLY #6221 /* ~Nechej ji na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #6222 /* ~"Co? Ty!" Zašilhala na tebe. "Co po mně chceš teď?! Chceš abych vodešla? NEVOPUSTÍM todle město, prostě to nedokážu. Já nemůžu, zkoušela jsem to, todle nejni město, je to všecko vězení."~ */
  IF ~  Global("Ingress","GLOBAL",6)
!Dead("Candrian")
~ THEN REPLY #6228 /* ~"Ingress, našel jsem někoho, kdo tě může vzít zpátky do tvé domovské sféry."~ */ DO ~SetGlobal("Ingress","GLOBAL",7)
~ GOTO 19
  IF ~  Global("Ingress","GLOBAL",1)
~ THEN REPLY #6223 /* ~"Všechno vězení? Jak to myslíš?"~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",2)
~ THEN REPLY #6224 /* ~"Řekni mi ještě jednou o těch místech... těch sférách, které jsi navštívila."~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",3)
~ THEN REPLY #6225 /* ~"Co byly ty dveře, o kterých jsi mluvila?"~ */ GOTO 4
  IF ~  Global("Ingress","GLOBAL",4)
~ THEN REPLY #6226 /* ~"Co byly ty klíče, o kterých jsi mluvila?"~ */ GOTO 5
  IF ~  Global("Ingress","GLOBAL",5)
~ THEN REPLY #6227 /* ~"Jak ses sem dostala?"~ */ GOTO 8
  IF ~~ THEN REPLY #28840 /* ~"Nerad jsem tě rušil, Ingress. Dávej na sebe pozor."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #28815 /* ~Ingress si tiše povzdychla. "Chci jít. Chci OPUSTIT tohle místo."~ */
  IF ~~ THEN REPLY #28841 /* ~"Jmenuje se Candrian. Zakrátko by ti měl pomoci... spolehni se na něj, ano?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #28816 /* ~Ingress nic neříká, pouze tiše kývá hlavou, její zuby si mezitím švitoří v puse.~ */
  IF ~~ THEN REPLY #28842 /* ~"Vrátím se za Candrianem k Doutnajícímu nebožtíkovi a ujistím se, že všechno běží jak na drátku. Vydrž, Ingress."~ */ JOURNAL #28834 /* ~Pověděl jsem Ingress, že Candrian se pro ni brzy zastaví a pomůže jí najít cestu zpět domů. Mám se s Cadrianem setkat U Doutnajícího nebožtíka, abych potvrdil, že všechno je tak, jak má být. ~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",7)
~ THEN BEGIN 21 // from:
  SAY #28817 /* ~Ingress tě pozoruje se zlostí v očích. "Cun - dri- unh?"~ */
  IF ~  !Dead("Candrian")
~ THEN REPLY #28843 /* ~"Ne, Já nejsem Candrian... ale měl by ti už brzy pomoci. Jenom se za ním vrátím k Doutnajícímu nebožtíkovi a ujistím se, že všechno běží hladce. Vydrž, Ingress."~ */ EXIT
  IF ~  Dead("Candrian")
~ THEN REPLY #28844 /* ~"Ne, Já nejsem Candrian... Candriana potkal nešťastný konec - zemřel. Naštěstí to znamená, že ty a Candrian se setkáte ve stejný den. Sbohem."~ */ EXIT
END
