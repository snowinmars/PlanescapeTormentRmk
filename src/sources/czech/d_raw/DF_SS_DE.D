// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_DE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_DE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51731 /* ~Základna modrého kamene byla vytesána tak, že vypadá jako by vtékala do podstavce, na kterém stojí. Ze stran spadají proudy dokonale azurových slz, jež lemují nápis pod podstavcem: "Touha."~ */
  IF ~~ THEN REPLY #51732 /* ~Začni seanci.~ */ GOTO 1
  IF ~~ THEN REPLY #52857 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52858 /* ~Jak jsi položil ruce na kámen, jeho povrch se pod tvým dotekem zavlnil. Tvýma rukama přejel mráz, jako bys strčil ruce do horského potůčku...~ */
  IF ~~ THEN REPLY #52859 /* ~Zavři oči, ponoř se do zážitku...~ */ GOTO 2
  IF ~~ THEN REPLY #52860 /* ~Setřes ze sebe prožitek, nechej kámen být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #52861 /* ~Zavřel jsi oči. Mrknul jsi a znovu je otevřel - tvé oči jsou plné slz, jsi naplněný hrozivým pocitem topení se. Jak se tebou tento pocit rozlévá, cítíš v hrudi tlak, *hlad*, jedovatý jako had, který se ti ZAKUSUJE do srdce, máš pocit, jako by měla tvá hruď *explodovat*. Zoufale se snažíš uklidnit, soustředit, ale vše, co se děje, jsou další slzy...~ */
  IF ~~ THEN REPLY #52862 /* ~Utři si slzy...~ */ GOTO 3
  IF ~~ THEN REPLY #52863 /* ~Opusť zkušenost.~ */ GOTO 35
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #52864 /* ~Zvedl jsi ruku, aby sis utřel slzy - tvé ruce jsou jemné, něžné ženské ruce. Setřely z tvé tváře záplavu slz. Slzy, které ti utkvěly na dlani, září odraženým světlem...~ */
  IF ~~ THEN REPLY #52865 /* ~Otoč se ke světlům...~ */ GOTO 4
  IF ~~ THEN REPLY #52866 /* ~Opusť zkušenost.~ */ GOTO 35
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #52867 /* ~Světlo vychází ze svícnů, které jsou zde v tvém útočišti, přišla jsi sem dát své myšlenky dohromady, soustředit se na budoucnost, vyčistit svou mysl před cestou. Ale... nemůžeš se *soustředit*! Tvé myšlenky zůstávají v přítomnosti, chycené tím hrozivým pocitem, který se usadil v tvé hrudi. Co to MYSLEL...?!~ */
  IF ~~ THEN REPLY #52868 /* ~Zavři oči, povzdychni si...~ */ GOTO 5
  IF ~~ THEN REPLY #52869 /* ~Opusť zkušenost.~ */ GOTO 35
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #52870 /* ~Zavřela jsi oči, ale jeho slova se ti ozývají v mysli, stokrát, TISÍCKRÁT. Vrátí se JEŠTĚ NĚKDY?! Slyšíš šepot, ozvěnu: "Jenom ty. JENOM ty." Ale stejně jsi ZAVÁHALA, těsně na prahu, a on si musel myslet, že máš STRACH jít, ale to ne, ty máš STRACH zůstat, a ten strach... had v tvém nitru se znovu pohnul, jeho zuby se zahryzávají do tvého srdce, plní ho *jedem*. Slzy znovu přicházejí, stékají po tvých tvářích v malých vodopádech, jeho slova se ozývají v tvé mysli...~ */
  IF ~~ THEN REPLY #52871 /* ~Ozvěna: "Jenom ty. JENOM ty."~ */ DO ~SetGlobal("Sensory_Deionarra","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #52872 /* ~Opusť zkušenost.~ */ GOTO 35
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #52873 /* ~Tvé oči se otevřely - to je JEHO hlas! Otočila ses a zalapala po dechu. Támhle stojí, v celé své síle, ve stínu, vchází do světla poletujících svícnů, a ty cítíš, jak se had kroutí a UMÍRÁ... on se vrátil! Jeho tvář je bez výrazu, ale ty tam vidíš stopu jeho radosti, že tě zase vidí. Nakonec se pro tebe vrát-~ */
  IF ~~ THEN REPLY #52874 /* ~Ozvěna: "Jenom ty mi můžeš pomoci, Deionarro. Ale bylo ode mě špatné, že jsem tě požádal o pomoc..."~ */ GOTO 7
  IF ~~ THEN REPLY #52875 /* ~Opusť zkušenost.~ */ GOTO 35
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52876 /* ~Mluvíš... Deionarra... ale ty, to jsi TY, s šedou kůží, jako socha, vycházíš ze světla - to jsi tak *zjizvený?!* Tvé tělo vypadá, jako kdyby je vykoupali v žiletkách, zranění, tetování, hrozné - ale, vidíš se skrze OČI DEIONARRY, a ona vidí... jak tě může VIDĚT takhle, zahaluje tě do PLÁŠTĚ, vidí tě s takovým *světlem*, s takovou hroznou touhou, *světlo*... pro ni... jak... jak to může takhle CÍTIT...?~ */
  IF ~~ THEN REPLY #52877 /* ~Zkus se soustředit, dát se dohromady, vydržet ve vzpomínce...~ */ GOTO 8
  IF ~~ THEN REPLY #52878 /* ~Opusť zkušenost.~ */ GOTO 35
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #52879 /* ~Tvá vize se trhá, zdvojuje, dokud nejsi tím mužem, vycházejícím ze světla, JSI to ty, ale NE ty... cítíš se ROZTRŽENÝ. Je to zážitek Deionarry, ale v tom samém čase i *tvůj*, a ty... co...~ */
  IF ~~ THEN REPLY #52880 /* ~Ozvěna: "Žádal jsem po tobě příliš, když jsem chtěl, abys mě doprovodila, Deionarro. Neměl jsem právo vystavovat tě takovému nebezpečí, jenom kvůli mně..."~ */ GOTO 9
  IF ~~ THEN REPLY #52881 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #52882 /* ~Jsou to tvá slova, ale jsou to slova chirurga, zvolená s chladnou hlavou, beze STOPY emoce. S každým slovem cítíš, jak se vevnitř SMĚJEŠ, víš, co ta (sklíčená) dívka uvidí svýma (touhou zaslepenýma) očima, a kdo - ty jsi TA osoba, ten muž který ji PŘEKRUCUJE každým slovem, VÍŠ, jak mocná jsou ta slova pro ni, jako šípy z balisty, pronikají její hrudí, zasahují srdce... ale ona v tvém návratu VIDÍ pouze ULEHČENÍ. Jak... jak může CÍTIT... a nevědět, co po ní chceš...?~ */
  IF ~~ THEN REPLY #52883 /* ~Ozvěna: "Přišel jsem tě žádat o odpuštění, Deionarro. Vrátím se k tobě, jakmile budu moci - "~ */ GOTO 10
  IF ~~ THEN REPLY #52884 /* ~Opusť zkušenost.~ */ GOTO 35
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #52885 /* ~Tvá vize se zase trhá, zdvojuje, krvácí, dokud zase nestojíš tváří v tvář sám sobě, snažíš se zoufale promluvit, VAROVAT Deionarru, že tohle není člověk, ale monstrum, které zabíjí pro své vlastní potřeby, on se o tebe NESTARÁ, Deionarro, jsi pro něj jenom NÁSTROJ, NÁSTROJ, který potřebuje. Ale Deionarra promluvila a ty jí nedokážeš ZASTAVIT...~ */
  IF ~~ THEN REPLY #52886 /* ~Ozvěna: "Riskovala bych *tisíce* nebezpečí, objala bych pro tebe i věčnost, má Lásko! Já se *nebojím!* Poslouchej mě - doprovodím tě, i kdyby se samotné Sféry proti nám - "~ */ GOTO 11
  IF ~~ THEN REPLY #52887 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52888 /* ~"...i kdyby se samotné Sféry proti nám spikly..." Cítíš, jak se vevnitř tříští, ulehčení, uspokojení - jeho USPOKOJENÍ z jejích slov, VĚDĚL, že je vyřkne, vždycky VÍ, a její slova lásky zní jako zabouchnutí mříží kolem tvého srdce. Je v pasti. Je tvá, ale musíš si být *jistý*, takže jsi udeřil ještě jednou hřebík na hlavičku...~ */
  IF ~~ THEN REPLY #52889 /* ~Ozvěna: "Cesta je nebezpečná. Musíš být silná... *mnohem* silnější, než jsi teď."~ */ GOTO 12
  IF ~~ THEN REPLY #52890 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52891 /* ~Plave její myslí, úleva, vlna úlevy, konec touhy, ale s jeho slovy TOUŽÍŠ ještě víc, nevšímáš si jeho manipulací... musíš být silná, a můžeš být s ním! Tvé myšlení je jako v ohni... protože ty můžeš být silnější, silnější, než si on dokáže představit, neznáš strach, ZEMŘELA bys pro něj...!~ */
  IF ~~ THEN REPLY #52892 /* ~Ozvěna: "Mohu být silná, má Lásko, já budu - "~ */ GOTO 13
  IF ~~ THEN REPLY #52893 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #52894 /* ~Její slova ho minula, sklouzla jako kapka vody. Had v její hrudi, ten hryzající její srdce jedovými zuby byl nahrazen hadem v mase. Ona si ničeho z toho nevšímá, a jeho další slova jsou naplánována, pečlivě, tak pečlivě...~ */
  IF ~~ THEN REPLY #52895 /* ~Ozvěna: "Nemohu zaručit, že uspějeme, Deionarro, ale udělám, co bude v mých silách, abych tě ochránil. A to samé budu očekávat od tebe."~ */ GOTO 14
  IF ~~ THEN REPLY #52896 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #52897 /* ~"Možná bude nutné, abys něco *obětovala*." Při těchto posledních, hrozných slovech, cítíš, jak tě něco TRHÁ na kusy, chce jí ublížit... takže chce ublížit TOBĚ, protože ty jsi ONA, a on jí chce UBLÍŽIT, ale ty POTŘEBUJEŠ,  aby jí nic nebylo a - chceš ŘVÁT, ZAŘVAT NA NI, ŽE JE V NEBEZPEČÍ, UTÍKEJ, UTÍKEJ, DEIONARRO, PROTOŽE JEHO OČI VŠE PŘEMOHOU A -~ */
  IF ~~ THEN REPLY #52898 /* ~Ozvěna: "Jistě, má Lásko. Život je obětování. To jsem se naučila."~ */ GOTO 15
  IF ~~ THEN REPLY #52899 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #52909 /* ~Ty... ona... ona... říkáš ta slova, a při nich cítíš, jak vevnitř umíráš. Jsi jenom pozorovatel, a sledoval jsi, jak ta žena zemřela, protože ta slova jsou rozsudkem smrti. Ale ona stále mluví...~ */
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52910 /* ~Ozvěna: "Já... zanechala jsem ti odkaz u otce, Lásko. Chtěj šestou, třetí, Ká a Es. V tom jsem ti vše zanechala. Není to moc, ale s tím jsem tam nechala..."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52913 /* ~Viděl jsem poslední dny Deionarry v jednom ze senzorických kamenů v Privátním Senzoriu. Řekla mi... tomu ve vzpomínce... že mi zanechala odkaz. Mohlo by se to hodit...~ */ GOTO 16
  IF ~  GlobalGT("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52911 /* ~Ozvěna: "Já... zanechala jsem ti odkaz u otce, Lásko. Chtěj šestou, třetí, Ká a Es. V tom jsem ti vše zanechala. Není to moc, ale s tím jsem tam nechala..."~ */ GOTO 16
  IF ~~ THEN REPLY #52912 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #52914 /* ~Ty... on... vlna *podráždění* se přes tebe převalila. Stiskl jsi zuby, aby se podráždění neukázalo na tvé tváři. Musí *vždycky* takhle žvanit, i když ses jí *neptal*?! Musí - ale ne - ne, zadrž podráždění uvnitř, jenom trocha uklouzla...~ */
  IF ~~ THEN REPLY #52915 /* ~Ozvěna: "No tak, já nemůžu UMŘÍT, Deionarro. Takové hlouposti nejsou NUTNÉ..."~ */ GOTO 17
  IF ~~ THEN REPLY #52916 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #52917 /* ~Ona... ty... je zasažená STRACHEM, strachem, který se v ní hromadí... ty, ty, jak ho pozoruješ, ty se mračíš, a ty ho musíš rychle opravit! Musí znát důvody, a poznat moudrost v nich skrytou, takže na něj tvé plánování udělá dojem! Mluv! Mluv, než se otočí...~ */
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52918 /* ~Ozvěna: "Vím, že se často chovám hloupě, lásko, ale ty jsi sám řekl, že MŮŽEŠ zapomenout, když jsi vážně zraněn. V odkazu jsou věci, které ti pomohou vzpomenout si, pokud bys zapomněl."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52922 /* ~V té vzpomínce Deionarry v senzorickém kameni... Vím, že mi navrhla, ať si nechám odkaz, a vím, že se to zalíbilo mé předchozí inkarnaci. Možná si odkaz nechal, jenom jako pojistku. Kdybych jenom zjistil číslo odkazu, mohl bych si ho vyzvednout.~ */ GOTO 18
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
GlobalGT("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52919 /* ~Ozvěna: "Vím, že se často chovám hloupě, lásko, ale ty jsi sám řekl, že MŮŽEŠ zapomenout, když jsi vážně zraněn. V odkazu jsou věci, které ti pomohou vzpomenout si, pokud bys zapomněl."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52923 /* ~V té vzpomínce Deionarry v senzorickém kameni... Vím, že mi navrhla, ať si nechám odkaz, a vím, že se to zalíbilo mé předchozí inkarnaci. Možná si odkaz nechal, jenom jako pojistku. Kdybych jenom zjistil číslo odkazu, mohl bych si ho vyzvednout.~ */ GOTO 18
  IF ~  GlobalGT("Memory_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52920 /* ~Ozvěna: "Vím, že se často chovám hloupě, lásko, ale ty jsi sám řekl, že MŮŽEŠ zapomenout, když jsi vážně zraněn. V odkazu jsou věci, které ti pomohou vzpomenout si, pokud bys zapomněl."~ */ GOTO 18
  IF ~~ THEN REPLY #52921 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1 17.2
  SAY #52924 /* ~Ona... chladně si ji prohlížíš svýma očima, přejíždíš pohledem po jejím nakrčeném obočí, zkrouceném obavami, zoufalstvím. Zachovala se, jak jsi *očekával*... ale je tady něco v tom, co říká...~ */
  IF ~~ THEN REPLY #52925 /* ~Ozvěna: "Možná... ale doufám, že v tom odkazu nezůstalo nic *cenného*. Nechci, abys tady nechávala něco, co se nám může hodit na cestách."~ */ GOTO 19
  IF ~~ THEN REPLY #52926 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #52927 /* ~Její iluze je roztříštěná, jen na chvíli - sleduješ, tiše, jak emoce padají k zemi, tříští se jako sklo. "...co se může hodit..." tak běžná větička, ale dokonce i Deionarra VIDÍ, a ty doufáš, alespoň na chvíli, DOUFÁŠ, že ho UVIDÍ takového, jako je... had, HAD...~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #52928 /* ~...a tvá naděje umírá, jak se v očích Deionarry emoce znovu objevily, střípky se zvedly ze země, iluze je zase pohromadě, ale drobný úlomek bolesti zůstává. Myslí si, že provedla něco hloupého! Ale udělala to pro NĚJ! Musíš... musíš to napravit, ale jak?! Musíš ho přesvědčit, že je odkaz nedůležitý, ale to NENÍ, NENÍ. Je to VŠE...~ */
  IF ~~ THEN REPLY #52929 /* ~Ozvěna: "Odkaz, má Lásko je... je to jenom pár věcí, které ti pomohou vzpomenout si-"~ */ GOTO 21
  IF ~~ THEN REPLY #52930 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #52931 /* ~Kosa slov dopadá na Deionarru, tak rychle, tak ostře, že nestíháš sledovat její trasu...~ */
  IF ~~ THEN REPLY #52932 /* ~Ozvěna: "Odkaz? Věci, které děláš, Deionarro... takové...*romantické* gesto. Na tom nezáleží..."~ */ GOTO 22
  IF ~~ THEN REPLY #52933 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #52934 /* ~Ne! Ona... ty... Deionarra... tys ho zahnala pryč, jako předešlou noc! Cítíš, jak se had znovu kroutí, znovuzrozen, omotává se kolem tvého srdce. Je to slaboučké zasyčení, ale on neslyší...~ */
  IF ~~ THEN REPLY #52935 /* ~Ozvěna: "Nechceš... nechceš si také nechat odkaz, má lásko? Pro sebe... nebo pro kohokoli, koho chceš. Může ti pomoct vzpomenout, jestli si něco necháš pro sebe... nebo pro někoho, koho miluješ..."~ */ GOTO 23
  IF ~~ THEN REPLY #52936 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #52937 /* ~Slovní úder znovu dopadá, hrozivý a rychlý. Ale tentokrát se iluze udržela, a had je skryt. Had je mazaný a neukáže se, dokud se nechystá udeřit.~ */
  IF ~~ THEN REPLY #52938 /* ~Ozvěna: "Odkaz pro mě? Nepravděpodobné... Věci, které bych si zanechal, by nebyly v bezpečí v žádné advokátské kanceláři, Deionarro. Ale dost už... Musím jít." ~ */ GOTO 24
  IF ~~ THEN REPLY #52939 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #52940 /* ~Odchází! Musíš ho donutit, aby zůstal... a zkušenost se kolem tebe KROUTÍ, hrozivá, táhne tě ke konečné scéně... OTÁZKA, kterou ona... ty... chce položit, neptej se, Deinoarro! Neptej se! BUĎ ZTICHA!~ */
  IF ~~ THEN REPLY #52941 /* ~Ozvěna: "Lásko, než půjdeš..." ~ */ GOTO 25
  IF ~~ THEN REPLY #52942 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52943 /* ~JEHO ZLOST JEHO PODRÁŽDĚNÍ CO *TEĎ* TA HOLKA, *TEĎ* TY UŘVANÁ COURO~ */
  IF ~~ THEN REPLY #52944 /* ~Ozvěna: "'Než půjdu?' Vypadá to, že tohle mi nehrozí. No tak, Deinarro, nepočkají tyhle otázky na ráno? Je toho tolik-"~ */ GOTO 26
  IF ~~ THEN REPLY #52945 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #52946 /* ~ONA... ONA... ONA SE ZOUFALE TOPÍ ŘEKNI TO ŘEKNI TO A ONA... TY... ŘEKNI TO~ */
  IF ~~ THEN REPLY #52947 /* ~Ozvěna: "*Chceš*, abych šla s tebou, má Lásko?"~ */ GOTO 27
  IF ~~ THEN REPLY #52948 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #52949 /* ~Vír emocí umírá. Tohle je konec. Ta slova, která on... ty... se právě chystá vyslovit, jsou pravdivá, ale ta pravda není tou pravdou, kterou ona vidí. Nejsou to lži, jenom chladná vypočítavost. *Samozřejmě* že tě chce s sebou, Deionarro. Je ti to jasné, až moc jasné: dal do toho příliš mnoho, než aby nechal tu ubohou dívku jít.~ */
  IF ~~ THEN REPLY #52950 /* ~Ozvěna: "Samozřejmě, Deionarro. Nepožádal bych tě, abys šla, pokud bych nechtěl tvou společnost. *Víš*, co k tobě cítím..."~ */ GOTO 28
  IF ~~ THEN REPLY #52951 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #52952 /* ~V jeho mysli je studené ticho, pak zasyčení myšlenky, odpověď tak ostrá a smrtící, jako ostří dýky. Lež přichází snadno, bez přítěží emocí.~ */
  IF ~~ THEN REPLY #52953 /* ~Ozvěna: "Miluju tě, Deionarro."~ */ GOTO 29
  IF ~~ THEN REPLY #52954 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #52955 /* ~A ty chceš ŘVÁT, jak cítiš lež, která se přes ni přelila jako ZÁŘ, ale je tady STÍN PRAVDY, HADÍ POLIBEK, A ON TI CHCE UBLÍŽIT A ONA TO *NEVIDÍ* CHCEŠ ZAVOLAT, ALE ONA PLÁČE ŠTĚSTÍM DOKONCE I KDYŽ - DOKONCE I KDYŽ...~ */
  IF ~~ THEN REPLY #52956 /* ~Plač štěstím... zklamáním... radostí... zoufalstvím...~ */ GOTO 30
  IF ~~ THEN REPLY #52957 /* ~Odtrhni se od prožitku.~ */ GOTO 35
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #52958 /* ~Emoce se přes tebe převalily, jakoby ses topil, TOPIL, potřebuješ promluvit, TOUŽÍŠ po promluvení, ale nemůžeš... a...~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #52959 /* ~Odtrhni se od prožitku.~ */ GOTO 32
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52960 /* ~Odtrhni se od prožitku.~ */ GOTO 31
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52961 /* ~Odtrhni se od prožitku.~ */ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #52962 /* ~...a ječíš, ječíš, jak odtrháváš ruce od kamene, po tvářích ti stékají krvavé slzy, v potůčcích kanou po tvých pažích, na tvé ruce, pokrývají kámen. Krev! Její krev! A... ty ji nemůžeš VAROVAT... a nemůžeš přestat PLAKAT...~ */
  IF ~~ THEN EXTERN ~DANNAH~ 260
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52963 /* ~...a ječíš, ječíš, jak odtrháváš ruce od kamene, po tvářích ti stékají krvavé slzy, v potůčcích kanou po tvých pažích, na tvé ruce, pokrývají kámen. Krev! Její krev! A... ty ji nemůžeš VAROVAT... a nemůžeš přestat PLAKAT...~ */
  IF ~~ THEN EXTERN ~DGRACE~ 165
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #52964 /* ~...a ječíš, ječíš, jak odtrháváš ruce od kamene, po tvářích ti stékají krvavé slzy, v potůčcích kanou po tvých pažích, na tvé ruce, pokrývají kámen. Krev! Její krev! A... ty ji nemůžeš VAROVAT... a nemůžeš přestat PLAKAT...~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52965 /* ~Pokus se dát své myšlenky dohromady...~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52966 /* ~Pokus se dát své myšlenky dohromady...~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #52967 /* ~I když bys chtěl vzpomínky zahnat, držíš se jich, protože víš, že je důležité zapamatovat si je. To jsi byl *ty*, v té vzpomínce... byla to vzpomínka Deionarry, ale protože jsi to byl ty, tvé vzpomínky tě zaplavily, a ty jsi CÍTIL obě strany najednou. Kdo jsi BYL? Kdo byl ten... ten stín tebe samotného?~ */
  IF ~~ THEN REPLY #52968 /* ~Jdi od kamene pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.1 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.2 16.1 17.3 18.1 20.1 21.1 22.1 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #52969 /* ~Setřásl jsi ze sebe ten pocit, ale jen s velkou námahou - máš dojem, jako bys plaval oceánem, *bojuješ*, rveš se, snažíš se prodrat na povrch. Zhluboka ses nadechl, tvá hlava se pročistila a ty ses ocitl před azurově modrým kamenem.~ */
  IF ~~ THEN REPLY #52970 /* ~Jdi od kamene pryč.~ */ EXIT
END
