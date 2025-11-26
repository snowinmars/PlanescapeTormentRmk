// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAMRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAMRYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3020 /* ~Vidíš otrhaného muže s hranatou čelistí. Otočil se k tobě s širokým úsměvem. "Jak se máš, kámo? Dobrej den, dobrej den!" Chvíli na tebe pošilhává, pak natáhl ruku k pozdravu.~ */
  IF ~~ THEN REPLY #3021 /* ~Potřes mu rukou: "Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36645 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36646 /* ~"Hamrys k tvým službám, člen Harmonia a tvůrce kvalitních rakví pro právě odešlé. Mám pocit, že tě znám, ne...? Hm, jestlipak si vzpomenu..." Na chvíli se odmlčel a přemýšlí. "Když jsem byl ještě v Harmoniu, měl jsem na jména dobrou paměť. Znal jsem každého v celé Čtvrti..."~ */
  IF ~~ THEN REPLY #36647 /* ~Lži: "Jmenuju se Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Hamrys_1","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36648 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36649 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 14.2 15.3 16.1 17.1 18.0 19.0 20.1 21.0 23.1 24.1 25.1 29.1 31.1 32.1 33.1 34.1 35.1 36.1 37.2 38.3 39.1 40.1 41.1 42.1 43.1 45.0 47.0 48.1 49.2 50.2 52.1 54.2 55.2 57.1 59.1 60.0 61.3 62.1 63.1 64.1 65.0 66.0 67.2 68.2 69.1 71.2 72.2 73.0 74.1 76.0
  SAY #36650 /* ~Kývl na tebe. "Ptej se. " Široce se na tebe usmál.~ */
  IF ~  Global("Dream","GLOBAL",3)
Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36651 /* ~"Potřebuju koupit polštář do rakve."~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36652 /* ~"Hledám někoho jménem Lothar, nebo taky Pán Kostí..."~ */ GOTO 19
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36653 /* ~"Měl jsem lebku a někdo mi ji ukradnul. Nevíš, kdo by to mohl udělat?"~ */ GOTO 20
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #36654 /* ~"Ztratil jsem deník. Neviděl jsi nějaký?"~ */ GOTO 22
  IF ~  Global("Know_Hamrys_Father","GLOBAL",1)
~ THEN REPLY #36655 /* ~"Slyšel jsem, že tvůj otec zemřel. Můžeš mi říct, co se mu stalo?"~ */ GOTO 41
  IF ~  !Global("Release_Dimtree","GLOBAL",5)
~ THEN REPLY #36656 /* ~"Kdo je tvůj přítel?"~ */ GOTO 42
  IF ~~ THEN REPLY #36657 /* ~"Můžeš mi říct o této čtvrti?"~ */ GOTO 46
  IF ~~ THEN REPLY #36658 /* ~"Co mi můžeš říct o Sigilu?"~ */ GOTO 55
  IF ~~ THEN REPLY #36659 /* ~"Už budu muset jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36660 /* ~Kývl na tebe. "Ah! Přišel jsi tedy nakupovat. Ujišťuju tě, že to, co dělám, dělám s láskou... pravá hodnota mé profese je ve vytváření rakví... v jejich výrobě, a dělám to dobře. Je to akt dokonale přesné kreace, každý kousek musí zapadat do dalšího ve prospěch celku. Je to jako metafora filozofie harmonia... Vytváříme řád, a ten je krásný..."~ */
  IF ~~ THEN REPLY #36661 /* ~"Jenom potřebuju polštář..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36662 /* ~Znovu ti kývl. "Potřebuju padesát měďáků na základní desky použité při konstrukci, i když výdaje nezahrnují čas. Většinou jsou vybělené, nebo pokryté barvou dle výběru zákazníka. Desky samotné jsou většinou silné šestnáctinu stopy, možná dokonce silnější, záleží to na povaze mrtvoly, jestli se bude pohřbívat lidská bytost nebo ne. Nebo když má zákazník strach, že by se pohřbený pokoušel vstát." Směje se.~ */
  IF ~~ THEN REPLY #36663 /* ~"Jenom potřebuju polštář..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36664 /* ~Znovu ti pokynul. "Někteří dávají přednost Bytopianské borovici, která je sice fajn a navíc tradiční materiál, ale já preferuji těžký Arboreánský dub, zvláště pro jeho pořádnou váhu. Dokonce i dvacetina palce dubu je mnohem silnější než klasická palcová deska borovice..." Na chvíli se odmlčel.~ */
  IF ~~ THEN REPLY #36665 /* ~"Řekl jsem, že jenom potřebuju polštář..."~ */ GOTO 6
  IF ~~ THEN REPLY #36666 /* ~"Už toho mám dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36667 /* ~Kývl na tebe. "Potom potřebuju spoustu ocelových vrutů, široké asi čtvrtinu palce. Spousta obchodů v okolí je má, takže není žádný problém je získat. A také potřebuju nějaké kovové hřebíčky, pro úpravu interiéru. A pak jsou tady ještě vycpávky a rohové kování, to už záleží na tom, jakou rakev si zákazník přeje."~ */
  IF ~~ THEN REPLY #36668 /* ~"Posloucháš mě? Řekl jsem, že jenom potřebuju polštář!"~ */ GOTO 7
  IF ~~ THEN REPLY #36669 /* ~"Už toho mám dost. Sbohem~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36670 /* ~Poškrábal se po tváři. "A i když většinou nechávám rakev v barvě přírodního dřeva, někdy chce zákazník rakev namalovat nebo dokonce pokrýt řezbami... Většinou takovou jemnou práci nedělám, i když mi docela jde, ale raději ji přenechám jinému řemeslníkovi..." Na chvíli se odmlčel, aby popadl dech. "A rukojeti, to už je zase úplně jiná záležitost." Vědoucně zakýval hlavou.~ */
  IF ~~ THEN REPLY #36671 /* ~Povzdychni si: "Co je s rukojeťmi?"~ */ GOTO 8
  IF ~~ THEN REPLY #36672 /* ~"Jestli nezavřeš hubu a nedáš mi ten polštář, praštím tě... silně."~ */ GOTO 10
  IF ~~ THEN REPLY #36673 /* ~"Už toho mám dost. Sbohem~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #36674 /* ~"Velká věc, takové rukojeti: všechno kolem nich záleží na způsobu, jakým bude rakev přenášena. Pokud máš cvičené muže, kteří ponesou rakev ve výši ramen, nemusíš se o rukojeti vůbec starat, profesionální pohřebníci je nikdy nepoužívají. Pokud nesou rakev přátelé a rodina, jsou rukojeti nutné. Potřebuješ provazové, nebo dokonce kovové..." Uspokojeně se na tebe dívá.~ */
  IF ~~ THEN REPLY #36675 /* ~"To je všechno fajn, ale já jsem si přišel pro polštář. Máš nějaký?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36676 /* ~"Dám ti příklad: Myslím, že nejkrásnější rakev, kterou jsem kdy viděl, byla z čisté borovice. Nevím, kde ji získali, jestli z místa jako je Bytopie nebo odněkud jinud... no, na tom nezáleží. Byla dohromady spojena kolíky z nádherného sekvojového dřeva. Celkový efekt tak trochu kazila spousta konopného provazu, kterým byla rakev omotaná. Jistě, nosiči ji potřebují někde chytit, ale zničit celou tu krásu tak odporně smotaným špagátem..." Hamrys smutně zavrtěl hlavou.~ */
  IF ~~ THEN REPLY #36677 /* ~"Jsem si jistý, že to je fascinující, ale já chci jenom polštář..."~ */ GOTO 10
  IF ~~ THEN REPLY #36678 /* ~"Už toho mám dost. Sbohem~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 9.0
  SAY #36679 /* ~"Pak je tady záležitost velikosti. Někdy to může být docela složité, snažím se to dělat sám, jelikož někdy mě klient odmítne informovat o rase zemřelého nebo zapomene detail jako je třeba šíře stehen... což je velice důležité. Pokud je klient ještě naživu, snažím se, aby se do rakve vešel, i kdyby před smrtí 'narostl' jestli mi rozumíš..." Odmlčel se. "Pak je tady samotná konstrukce..."~ */
  IF ~~ THEN REPLY #36680 /* ~"Hamrysi..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36681 /* ~"Existuje mnoho rozdílných způsobů, jak přichytit stěny k podlaze rakve nebo mezi sebou. Někteří používají vnitřní šrouby nebo rohovky. Nebo také můžeš použít metodu fiendských zubů a pouze vyřezat do desek jazýčky tak, aby do sebe přiléhající desky zapadaly, jako fiendské zuby. Vyžaduje to trochu více práce a spoustu přesnosti, ale výsledek je velice hezký a také pevný." Odmlčel se, aby mohl popadnout dech.~ */
  IF ~~ THEN REPLY #36682 /* ~"Hamrysi..."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36683 /* ~"Pak je tady víko. Víko potřebuje lemování kolem okraje, udělané z pruhu dřeva přibitého k bedně nebo vyřezaného přímo do okraje. Jakmile máš do hlavní krabice vyvrtané hlavní díry, zašroubuješ do víka vruty..." Máš pocit, že už nepřestane kecat, když se tak rozjel..~ */
  IF ~~ THEN REPLY #36684 /* ~"Jestli nezavřeš hubu a nedáš mi polštář, praštím tě. Silně."~ */ GOTO 13
  IF ~~ THEN REPLY #36685 /* ~"Už toho mám dost. Sbohem~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36686 /* ~Máš pocit, že jsi konečně získal jeho pozornost. Zamračil se na tebe a zatvářil se zmateně. "Pardon?"~ */
  IF ~~ THEN REPLY #36687 /* ~"Řekl jsem, že potřebuju polštář do rakve. To je všechno, jenom polštář. Máš nějaký?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36688 /* ~Vypadá, že se mu ulehčilo. Usmál se. "Polštář? Eh, já myslel, že potřebuješ celou rakev." Znovu se poškrábal na tváři. "Je mi líto, ale polštáře mi právě došly. Nevím, kdy je budu znovu mít, když je teď skladiště zavřené..."~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36689 /* ~"Skladiště?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36690 /* ~"Ano, zmínil ses o problému. Jaký že je to problém?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #36691 /* ~"Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36692 /* ~"Už toho mám dost. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #36693 /* ~"Ano...  skladiště, kde si uschovávám své zboží, má nějaké interní problémy. Nový  management nebo takový nějaký nesmysl. V poslední době jsem si nemohl doplnit zásoby." Zamračil se. "Harmonium by nikdy nenechalo dojít věci tak daleko a nezpůsobilo by zákazníkům takové problémy." Jeho hlas ztichl, zjevně přemýšlí. Pohlédl na tebe. "Možná by ses na to mohl pro mě podívat?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36694 /* ~"Už jsem tam byl, zajdu si tam pro ten polštář."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36695 /* ~"Řekl bych, že nemám na výběr, jestli chci polštář. Udělám to."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Vypadá to, že ve skladišti jsou nějaké problémy. Pokud chci polštář do rakve, musím je najít a vyřešit.~ */ GOTO 16
  IF ~~ THEN REPLY #36696 /* ~"Není to můj problém... proč si to nevyřešíš sám?"~ */ GOTO 17
  IF ~~ THEN REPLY #36697 /* ~"Promyslím si to. Mám nějaké otázky."~ */ GOTO 2
  IF ~~ THEN REPLY #36698 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.0 67.0 68.0
  SAY #36699 /* ~Usmál se od ucha k uchu. "Výborně. Pokud ten problém vyřešíš, můžeš si jeden polštář nechat zdarma..."Na tváři se mu zase objevil ten poučující výraz. "Možná to nevypadá jako dostačující odměna, tak ti alespoň vysvětlím konstrukci takových polštářů..."~ */
  IF ~~ THEN REPLY #36700 /* ~"Ne díky! Hned s tím začnu. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #36701 /* ~"Příště. Mám nějaké otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY #36702 /* ~Zamračil se. "Zkusil jsem to, ale bezúspěšně. Byl jsem s celou záležitostí u Harmonia, ale tentokrát mi nebyli schopní pomoct." Nevinně se na tebe dívá a zvedl ruce. "Jestli opravdu potřebuješ ten polštář..." Dívá se na tebe s očekáváním.~ */
  IF ~~ THEN REPLY #36703 /* ~"Dobře. Podívám se na to."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Vypadá to, že ve skladišti jsou nějaké problémy. Pokud chci polštář do rakve, musím je najít a vyřešit.~ */ GOTO 16
  IF ~~ THEN REPLY #36704 /* ~"Promyslím si to. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36705 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0
  SAY #36706 /* ~Lusknul prsty. "Jistě! Adahn! Věděl jsem, že tě znám. Potřebuješ mé služby?" Prohlíží si tě s úsměvem, rozhodl se zažertovat si na tvůj účet. "Připadá mi, pane, že opravdu nutně potřebuješ rakev, nebo budeš brzy potřebovat." Vypadá to, že ho jeho vlastní vtip hodně pobavil.~ */
  IF ~~ THEN REPLY #36707 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36708 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.1
  SAY #36709 /* ~Přemýšlivě se zamračil. "Nemůžu říct s jistotou, že bych o něm slyšel. Pán Kostí, říkáš? Zajímavý titul." Usmál se. "V určitém smyslu by se dalo říct, že by to mohl být i můj titul, když tak pracuju s mrtvolami. Ano, vím, že většina z nich je ještě pokrytá masem, ale byla spousta případů, kdy jsem vyráběl rakev pouze pro kosti. Tenkrát jsem tu měl chlápka, kterému něco obralo kosti do hladka, nikdy se nezjistilo, co to vlastně bylo..."~ */
  IF ~~ THEN REPLY #36710 /* ~Přeruš: "Mám ještě pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #36711 /* ~"Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36712 /* ~Pozdvihl obočí, pak pokrčil rameny. "Nevím, kdo by mohl něco takového udělat. Už jsem pohřbil hezkých pár lebek. Většinu lidí nenapadne, kdo by mohl v rakvi pohřbít samotnou lebku, ale znám spoustu zajímavých příběhů o zvláštních požadavcích na rakev. Mezi nimi je několik případů, kdy chtěli lidé pohřbít jenom lebku, jelikož zbytek osoby se většinou nedal najít. Byl tady jeden muž, kterého banda Chaotiků tak zřídila..."~ */
  IF ~~ THEN REPLY #36713 /* ~Přeruš: "Co je to Chaotik?"~ */ GOTO 21
  IF ~~ THEN REPLY #36714 /* ~Přeruš: "Mám ještě pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #36715 /* ~"Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36716 /* ~Než odpověděl, na chvíli se odmlčel. "Na tuhle otázku se nedá jen tak odpovědět, příteli. Jsou jednou z frakcí Sigilu, která věří v chaos." Chvíli přemýšlí, pak pokrčil rameny. "Většinou se s nimi nedá ani mluvit, jenom hýkají nějaké nesmyslné věty a přeskakují z věci na věc. Jejich mysl, jestli vůbec nějakou mají, musí tvořit hromada zmatku. No, jak už jsem říkal..."~ */
  IF ~~ THEN REPLY #36717 /* ~Přeruš: "Mám ještě pár dalších otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #36718 /* ~"Teď už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.3
  SAY #36719 /* ~Pokrčil rameny. "Nemůžu říct, že bych někdy nějaký viděl, kromě svého vlastního. Zapisuju si různé záznamy o mé práci, je to opravdu fascinující čtení, když si to přečtu o měsíc dva později." Přikývl a díval se na tebe, jako bys přesně rozuměl, o čem to vlastně mluví.~ */
  IF ~~ THEN REPLY #36720 /* ~"To je fajn, ale..."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36721 /* ~Pokračuje dál. "Mluvil jsem s několika tiskaři v Úřednické čtvrti, zda by je nechtěli vydat tiskem. Řekl jsem jim, že obsahují docela zasvěcený názor o různých aspektech městského života, který jsem si vytvořil během služby u Harmonia. I když nemám žádný formální výcvik ve psaní, spousta lidí mi potvrdila, že můj styl je docela překvapující. Dost už ale. Myslím, že pro tebe bude jednodušší, když si to poslechneš sám, rád ti přečtu některé z lepších pasáží..."~ */
  IF ~~ THEN REPLY #36722 /* ~"Dobře, pokračuj."~ */ GOTO 24
  IF ~~ THEN REPLY #36723 /* ~"Teď zrovna ne, mám nějaké otázky."~ */ GOTO 2
  IF ~~ THEN REPLY #36724 /* ~"Pro dnešek už mám dost, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36725 /* ~Hamrys ti přečetl několik pasáží svých monotónních záznamů, které jsou neuvěřitelně nudné. Když už jsi přišel na způsob, jak utéct, zmínil něco o svém otci, co jsi přesně nezachytil. Z nějakého důvodu ti to připadá důležité.~ */
  IF ~~ THEN REPLY #36726 /* ~"Počkej, řekl jsi, že tvůj otec zmizel?"~ */ GOTO 25
  IF ~~ THEN REPLY #36727 /* ~"To je fajn, ale já mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36728 /* ~"Pro dnešek už mám dost, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36729 /* ~Hamrys zvedl ruku, jako že tě slyší, a pokračoval, dokud nedočetl odstavec svého příšerně nudného deníku. "Tak co si myslíš? Překvapivě zasvěcenější, než by se dalo čekat od obyčejného člena Harmonia, ne?" Usmál se. Tvoje přerušení ignoruje.~ */
  IF ~~ THEN REPLY #36730 /* ~"Ano, velmi. Řekl jsi, že tvůj otec zmizel?"~ */ GOTO 26
  IF ~~ THEN REPLY #36731 /* ~"Vlastně, tvé deníky jsou... víc, než dokážu najednou zvládnout. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36732 /* ~"Slyšel jsem od tebe víc, než dokážu za jeden život zvládnout. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 41.0
  SAY #36733 /* ~Přikývl. "Ó ano. Před mnoha, mnoha lety. Můj otec byl talentovaný kameník, konstruoval sarkofágy, ale byl také docela dobrý v návrhu hrobek. Lidé z celého Sigilu..." Místnost ti začíná mizet z pohledu, když se ti ve vědomí začíná objevovat vzpomínka...~ */
  IF ~  !Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36734 /* ~Uklidni se a zkus si vzpomenout.~ */ DO ~SetGlobal("Hamrys_Mem","AR0506",1)
PlaySoundNotRanged("SPTR_01")
AddexperienceParty(500)
~ JOURNAL #36029 /* ~Myslím, že jsem si najal Hamrysova otce, aby mi postavil hrobku a pak jsem ho zabil. Opravdu nevím, proč bych měl něco takového udělat.~ */ GOTO 27
  IF ~~ THEN REPLY #36735 /* ~Potlač to a poslouchej dál Hamryse.~ */ GOTO 29
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #68426 /* ~Uklidni se, zkus si vzpomenout.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.2
  SAY #36736 /* ~Vidíš se přímo v tomto obchodě, mluvíš se starším mužem, v rohu sedí malé dítě a hraje si. Na stole mezi tebou a mužem je složka plná plánů. Vypadá to, že ti vysvětluje nějaké složitosti s konstrukcí hrobky. Tvá vize zmizela, když ses pokusil prozkoumat detaily plánů.~ */
  IF ~~ THEN REPLY #36737 /* ~Pokračuj.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #36738 /* ~Když se ti vrátil zrak, stojíš v jeskyni před hrobkou. Nad vchodem vidíš slogan: Konstruováno pro Věčnost, čistě vysekaný v kameni. Obchodník stojí vedle tebe, na tváři má široký úsměv. Jde směrem k hrobce. Rychle jsi ho dohonil a vytasil dýku...~ */
  IF ~~ THEN REPLY #36739 /* ~Pokračuj.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.1 28.0
  SAY #36740 /* ~Jsi zpátky v Hamrysově obchodě. Znepokojeně se na tebe dívá. "Jsi v pořádku, pane?"~ */
  IF ~~ THEN REPLY #36741 /* ~"Řekni mi, co se stalo tvému otci."~ */ GOTO 30
  IF ~~ THEN REPLY #36742 /* ~"Jsem v pořádku, mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36743 /* ~"Ne, Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36744 /* ~"Jednoho dne zkrátka zmizel, zanechal za sebou spoustu rozdělané práce. Trvalo dlouho, než jsem splatil dluhy, které způsobilo jeho zmizení, a vlastně i doteď mám ještě několik nedořešených účtů. Ale mám pro práci nadšení..." Povzdychl si a na tváři má výraz, jakoby se díval do dálky...~ */
  IF ~~ THEN REPLY #36745 /* ~"Pokračuj."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #36746 /* ~Pokrčil rameny. "Promiň, jenom jsem přemýšlel. Zmizení mého otce byl důvod, proč jsem se přidal k Harmoniu a později jej opustil. Nejprve jsem strašně toužil zjistit, co se mu stalo, později jsem cítil nutkání pokračovat v jeho životní práci." Povzdechl si. "Nikdy jsem nenalezl odpovědi, které jsem hledal. Bylo to tak tajemné..." Jeho hlas ztichl.~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36747 /* ~"Nechal si tvůj otec plány hrobek, které vytvořil?"~ */ GOTO 32
  IF ~~ THEN REPLY #36748 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36749 /* ~"Už půjdu, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36750 /* ~Chvíli přemýšlí. "Ano. Poté, co jsem dospěl a zdědil obchod, jsem prošel všechny jeho záznamy. Byla jich docela velká hromada. Proč se ptáš?"~ */
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36751 /* ~"Když ti popíšu hrobku, dokážeš mi říct, jestli to byla práce tvého otce?"~ */ GOTO 33
  IF ~~ THEN REPLY #36752 /* ~"Jen tak, mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36753 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36754 /* ~Zamyšleně se zamračil, pak pokrčil rameny. "Můžu to zkusit. Díky tréninku v Harmoniu mám výbornou paměť, snad rozpoznám práci svého otce, pokud mi dáš dost detailů." Dívá se na tebe s očekáváním.~ */
  IF ~~ THEN REPLY #36755 /* ~Popiš mu z paměti hrobku.~ */ GOTO 34
  IF ~~ THEN REPLY #36756 /* ~"Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36757 /* ~"To nic, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36758 /* ~Chvíli přemýšlí. "Nepochybuju, že hrobka, kterou jsi mi popsal, je prací mého otce, ten slogan, který jsi zmínil, je rodinnou značkou už několik generací." Odmlčel se a divně se na tebe podíval. "Ta hrobka, kde je umístěna?"~ */
  IF ~~ THEN REPLY #36759 /* ~Popiš mu umístění hrobky.~ */ GOTO 35
  IF ~~ THEN REPLY #36760 /* ~"Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36761 /* ~"To nic, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36762 /* ~Detailně jsi mu popsal umístění, překvapujíc sám sebe znalostmi oblasti, které odněkud máš. Hamrys se na tebe podivně dívá. "To je divné, nepamatuji si, že by vůbec někdo měl povoleno postavit na tom místě hrobku. Spalovači si dávají hodně pozor na stavby a pozemky, zvláště když jde o podzemí Sigilu..."~ */
  IF ~~ THEN REPLY #36763 /* ~"Takže jsi poznal to místo?"~ */ GOTO 36
  IF ~~ THEN REPLY #36764 /* ~"Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36765 /* ~"To nic, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36766 /* ~Přikývl. "Ó ano. Připadá mi to jako Katakomby Přemožených národů." Odmlčel se. "Nikdy jsem tam nebyl, ale mnohokrát jsem o nich slyšel, když jsem ještě pobýval v Harmoniu."~ */
  IF ~~ THEN REPLY #36767 /* ~"Potřebuju vědět, jestli si tvůj otec nechal plány té hrobky."~ */ GOTO 37
  IF ~~ THEN REPLY #36768 /* ~"Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36769 /* ~"To nic, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #36770 /* ~"Ano...  skladiště, kde uschovávám své zboží se stará i o mé obchodní dokumenty. Mají ale teď nějaké interní problémy. Nový management nebo nějaký takový nesmysl. V poslední době jsem nemohl doplnit zásoby a pochybuju, že bych z nich dostal nějaké dokumenty." Zamračil se. "Harmonium by nikdy nenechalo dojít věci tak daleko a nezpůsobilo by takové problémy zákazníkům." Jeho hlas ztichl, zřejmě nad něčím přemýšlí. Po chvílí se k tobě otočil. "Mohl bys pro mě tu záležitost vyřídit?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36771 /* ~"Skladiště?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36772 /* ~"Ano, zmínil jsi se o nějakém problému. Cože to bylo?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #36773 /* ~"Mám jiné otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36774 /* ~"To nic, budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #36775 /* ~"Ano... skladiště má nějaké interní problémy, ať už to znamená cokoli. Nemůžu od nich nic získat, dokud se ta záležitost nevyřeší."" Zamračil se. "Harmonium by nikdy nenechalo dojít věci tak daleko a nezpůsobilo by takové problémy zákazníkům." Jeho hlas ztichl, zřejmě nad něčím přemýšlí. Po chvílí se k tobě otočil. "Mohl bys pro mě tu záležitost vyřídit?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36776 /* ~"Už jsem ten problém vyřešil, jenom tam zajdu pro ty plány."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36777 /* ~"Asi nemám na výběr, jestli chci ty plány. Udělám to."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Vypadá to, že ve skladišti jsou nějaké problémy. Pokud chci získat plány hrobky, musím je najít a vyřešit.~ */ GOTO 39
  IF ~~ THEN REPLY #36778 /* ~"To není můj problém... proč si to nevyřešíš sám?"~ */ GOTO 40
  IF ~~ THEN REPLY #36779 /* ~"Promyslím si to. Mám nějaké otázky."~ */ GOTO 2
  IF ~~ THEN REPLY #36780 /* ~"Musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1 40.0 71.0 72.0
  SAY #36781 /* ~Usmál se od ucha k uchu. "Výborně. Jestli to nějak vyřešíš, můžeš si ty plány nechat zadarmo." Zase má na tváři ten *poučující* výraz. "Možná to nevypadá, že jsou dostatečnou platbou, ale nech mě, ať ti povím o problémech, které se objevily při vytváření těch plánů..."~ */
  IF ~~ THEN REPLY #36782 /* ~"Ne díky! Hned s tím začnu. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #36783 /* ~"Příště. Mám nějaké otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #36784 /* ~Zamračil se. "Zkoušel jsem to, ale neměl jsem úspěch. Šel jsem s tou věcí k Harmoniu, ale v tomhle mi nebyli schopní pomoct." Nevinně se na tebe dívá. "Pokud opravdu potřebuješ ty plány..." Dívá se na tebe s očekáváním.~ */
  IF ~~ THEN REPLY #36785 /* ~"Dobře. Podívám se na to."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 39
  IF ~~ THEN REPLY #36786 /* ~"Promyslím si to. Mám nějaké otázky..."~ */ JOURNAL #36028 /* ~Vypadá to, že ve skladišti jsou nějaké problémy. Pokud chci získat plány hrobky, musím je najít a vyřešit.~ */ GOTO 2
  IF ~~ THEN REPLY #36787 /* ~"Zapomeň na to. Sbohem."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.4
  SAY #36788 /* ~Zamračil se na tebe. "No, zmizel před nějakou dobou, takže předpokládám, že je mrtev. Kde jsi to slyšel?"~ */
  IF ~~ THEN REPLY #36789 /* ~"Už si nevzpomínám. Řekl jsi, že zmizel?"~ */ GOTO 26
  IF ~~ THEN REPLY #36790 /* ~"To nic, Mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36791 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.5
  SAY #36792 /* ~Podíval se na zákazníka. "Kalnostrom?" Pokrčil rameny, jako by nad tím ještě nepřemýšlel. Je tichý, moc toho neřekne, že, Kalnostrome?" Kalnostrom neodpovídá, dál se prázdně tváří. O několik sekund později přikývl. Hamrys pokrčil rameny a otočil se k tobě. "Přišel sem jednoho dne před pár týdny a od té doby je tu pravidelně. Nic si nekoupil, ale nedělá žádné problémy, tak ho tu nechávám. Vypadá neškodně. Víš, když jsem sloužil u Harmonia, část naší práce bylo vzít ostatní občany pod naše ochranná křídla, poskytnout jim přístřešek před chaosem panujícím na ulicích..."~ */
  IF ~  Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36793 /* ~"Víš o tom, že je to zombie?"~ */ GOTO 43
  IF ~  !Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36794 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36795 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #36796 /* ~Zamračil se a podíval se na Kalnostroma, pak obrátil pohled k tobě. "Co to kecáš za nesmysly? Kalnostrom není žádná zombie. Jo, je tichý a moc se nepohybuje, ale to jenom proto, že je to dobrý posluchač..."~ */
  IF ~~ THEN REPLY #36797 /* ~Prašti do Kalnostroma. "Hele, Kalnostrom je zombie."~ */ GOTO 44
  IF ~~ THEN REPLY #36798 /* ~"To nic. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36799 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #36800 /* ~Hamrys se na tebe šokovaně dívá. "Co to ve jménu Harmonia-?!" Praštil jsi Kalnostroma do lebky. Tvrdě. Ani nemrknul. Hamrys zrudnul a začal řvát. "Zašel jsi příliš daleko! Nenechám tě mlátit mé zákazníky! Zatýkám, tě ve jménu Harmonia ---" Zarazil se a překvapeně se dívá na Kalnostroma, který stále ještě nijak nezareagoval.~ */
  IF ~~ THEN REPLY #36801 /* ~"Je to zombie, Hamrysi..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #36802 /* ~Hamrys na Kalnostroma zmateně zírá. "Zajímalo by mně, jak zemřel." Máš pocit, že Hamrys to stále nechápe. "Ještě včera vypadal docela živě." Odmlčel se, tentokrát proto, že mu konečně došla slova. "No, vypadá to, že starej Kalnostrom bude potřebovat rakev. To je dobře, že skončil tady. Teď ale, jaká rakev by byla nejvhodnější..." Vypadá to, že tě čeká další přednáška.~ */
  IF ~~ THEN REPLY #36803 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36804 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 2.6
  SAY #36805 /* ~"Ano,  Dolní Čtvrť..." Naklonil se kupředu, jako by něco vysvětloval malému dítěti. "...víš, většina nováčků a dokonce i někteří starousedlíci ve Čtvrti si myslí, že se tak jmenuje jednoduše proto, že není tak prestižní jako jiné čtvrti, ale to není všechno. To vůbec není všechno. Víš, z čeho to jméno vzniklo?" Pozoruje tě s očekáváním.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #36806 /* ~"Kvůli portálům do Nižších Sfér?"~ */ GOTO 47
  IF ~~ THEN REPLY #36807 /* ~"Ne, nevím, kde Čtvrť získala své jméno."~ */ GOTO 48
  IF ~~ THEN REPLY #36808 /* ~"To mě nezajímá, odkud má tohle místo jméno. Můžeš mi radši říct, co je tady zajímavého?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #36809 /* ~Přikývl, zjevně zklamán, že už to víš. "Ano, jistě. Tyto portály do Nižších Sfér také způsobují ten smog tady..." Podíval se vzhůru, jakoby si představoval nebe nad hlavou. "ale jsem si jistý, že o tomhle prokletí Čtvrti už také víš..."~ */
  IF ~~ THEN REPLY #36810 /* ~"Ano, mám ještě nějaké další otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36811 /* ~"Ne, řekni mi o tom."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.1
  SAY #36812 /* ~"To kvůli portálům do Nižších Sfér! To ony jsou důvod, proč je celé okolí zakryté smogem, vyvěrají z nich jedovaté plyny a výpary. Naštěstí větry odvanou většinu toho svinstva, ale ti ve Čtvrti, kteří mají slabší zdraví, kvůli tomu trpí a jsou nemocní." Smutně zavrtěl hlavou. "Naštěstí mě můj trénink v Harmoniu připravil na nebezpečná prostředí. A po mých výpravách v Nižších Sférách pro mě smog není nebezpečný..."~ */
  IF ~~ THEN REPLY #36813 /* ~"Co je tady ve čtvrti zajímavého?"~ */ GOTO 49
  IF ~~ THEN REPLY #36814 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36815 /* ~"Budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2 48.0
  SAY #36816 /* ~Usmál se od ucha k uchu. "Spousta, spousta. Kde začít...Pokud přeskočíme kovárny, pivovary a destilačky rozseté mezi spoustou spalovaných odpadků, když už nemluvíme o hnízdech alchymistů, krematoriích, palírnách uhlí a vezmeme si Čtvrť jako celek, tak by se dalo říct... No, máme tady slévárnu, dobývací věž a..." Odmlčel se a přemýšlí.~ */
  IF ~~ THEN REPLY #36817 /* ~"Pověz mi o slévárně."~ */ GOTO 50
  IF ~~ THEN REPLY #36818 /* ~"Pověz mi o dobývací věži."~ */ GOTO 51
  IF ~~ THEN REPLY #36819 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36820 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0 52.0
  SAY #36821 /* ~"Velká slévárna je hlavní stan Věřících ve Zdroj, kterým se také říká Boží lidé, protože podle jejich víry může vše dosáhnout božství. " Zavrtěl hlavou. "Velká slévárna je jako jejich filozofie. Velká budova, která neprodukuje nic kromě kouře."  Směje se."Tím myslím, kdy kdo naposledy viděl některého z nich stát se Mocností? Nikdo za celou jejich historii nedosáhl toho jejich cíle."~ */
  IF ~~ THEN REPLY #36822 /* ~"Pověz mi o Božích lidech."~ */ GOTO 53
  IF ~~ THEN REPLY #36823 /* ~"Pověz mi o dobývací věži."~ */ GOTO 51
  IF ~~ THEN REPLY #36824 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36825 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1 54.0
  SAY #36826 /* ~"Ten zjizvený železný vrak? Je to tajemné, ale já o tom něco vím. Za prvé, nebylo to tam vždy. Jednu noc to dorazilo a nikdo neviděl, jak se to tam dostalo. Byl jsi už u ní? Zažila spoustu bitev a vypadá to na bitvy, které si většina lidí nedokáže ani představit. Já, který jsem viděl okraje Války Krve, dokonce jsem zapíchnul jednoho dva tanarri spolu se svými kamarády z Harmonia, já mám znalosti trochu větší. A ty jizvy na věži vypadají, že se sbíraly minimálně několik století." Na chvíli se odmlčel.~ */
  IF ~~ THEN REPLY #36827 /* ~"Pokračuj."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #36828 /* ~"A teď pozorně poslouchej. Díky zkušenosti jsem rozeznal některé ze stop, které zdobí stěny věže. Některé jsou od zásahů kyseliny, jiné od magie, některé jsou od ostří tanarri, jiné vypadají jako stopy po výbuchu explozivních koulí nebo od bičů baatezu. Ale spousta zbraní, které se na stěnách podepsaly, jsou mi neznámé a já jsem dobře obeznámen s hromadou zbraní z mnoha různých světů a sfér. Takže by mě zajímalo, co je zavřené uvnitř věže. Frajer, který se nakonec dostane dovnitř, bude mít v ruce nejspíš úplné muzeum zbraní. Nepřipadá ti to zajímavé?" Upřeně se na tebe dívá.~ */
  IF ~~ THEN REPLY #36829 /* ~"Pověz mi o slévárně."~ */ GOTO 50
  IF ~~ THEN REPLY #36830 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36831 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.0
  SAY #36832 /* ~"Vlastně, příteli, 'Boží lidé', to je termín, který používají laici. Správné jméno jejich organizace je Věřící ve Zdroj. Mají zajímavou, ale trochu nedomyšlenou filozofii. Věří, že každý má možnost dostat se na božskou úroveň jednoduše co nejlepším využíváním sebe sama." Nevěřícně zavrtěl hlavou a odmlčel se, aby si promyslel další slova.~ */
  IF ~~ THEN REPLY #36833 /* ~"Pokračuj."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #36834 /* ~"Jak má služba u Harmonia rychle dokázala, existuje spousta těch, kteří se k božství určitě nikdy nedostanou, ať už se budou snažit, jak dlouho budou chtít." Odfrkl si. "Věřící ve Zdroj ale pracují dost těžce..." Pokrčil rameny. "...a jejich malé společenství je k ostatním docela příjemné."~ */
  IF ~~ THEN REPLY #36835 /* ~"Pověz mi o dobývací věži."~ */ GOTO 51
  IF ~~ THEN REPLY #36836 /* ~"Můžeš mi říct o ostatních společenstvech?"~ */ GOTO 61
  IF ~~ THEN REPLY #36837 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36838 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 2.7
  SAY #36839 /* ~"Sigil..." Dlouze si povzdechl. "Sigil je město v centru všech věcí, alespoň tak spousta lidí věří. Je to město dveří, jsou tady doslova tisíce portálů. Je to domov samotné Paní Bolesti." Pokrčil rameny. "Sigil... Sigilem se dá zaplnit tisíce svazků, nebo možná i tisíce knihoven..."~ */
  IF ~~ THEN REPLY #36840 /* ~"Pověz mi o Paní Bolesti."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #36841 /* ~"Zmínil ses o portálech. Znáš nějaké?"~ */ GOTO 65
  IF ~~ THEN REPLY #36842 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36843 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #36844 /* ~" Paní Bolesti..." Hamrys se k tobě naklonil a poněkud se ztišil. "Jedna z největších záhad mnohovesmíru, jak věří spousta lidí. Myslím, že bezpochyby dokázala, že ženy jsou nejnebezpečnější stvoření v mnohovesmíru..." Povzdechl si. ~ */
  IF ~~ THEN REPLY #36845 /* ~"Pokračuj."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #36846 /* ~"Někteří říkají, že je bohyně, Mocnost, která si vybrala Sigil jako svůj domov. Pravda ale je, že porušuje pravidla všech Mocností, o kterých jsem byť jenom slyšel. Mocnosti potřebují věřící - ti jim dodávají moc, ale Paní nemá ráda, když je uctívána. Lidé, kteří to dělají, skončí v jejím stínu, maso servané z kostí neviditelnými čepelemi. Už jsem v životě viděl spoustu hrozných věcí, ze kterých by jinému muži zeslábly kolena a možná také svěrače. Ale to se s pohledem na oběť Paní nedá ani srovnávat."~ */
  IF ~~ THEN REPLY #36847 /* ~"Zajímavé, co ještě mi můžeš říct?"~ */ GOTO 58
  IF ~~ THEN REPLY #36848 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36849 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #36850 /* ~"Dále, nějak nechce v Sigilu bohy. Víš, možná to nevíš, ale do Sigilu nemůže vstoupit žádná mocnost, ani Zeus ani Ra, ani žádná jiná. Říká se, že přítomnost Paní je nějak udržuje venku. Nemůžou se dostat dovnitř a to je štve, což si určitě dokážeš přestavit. Sigil je sladké ovoce, které by si chtěl utrhnout každý, takže Mocnosti se neustále rozhlíží a hledají cestu do Sigilu. Ale neuspěly."~ */
  IF ~~ THEN REPLY #36851 /* ~"Pokračuj."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #36852 /* ~"No a jde to ještě dál. Nejenom, že je Paní drží venku, zabraňuje komukoli ve městě městu nějak ublížit. Od naší frakce, Harmonia, má pomoc, jelikož my máme rádi pořádek. Ale jednou za čas se objeví nějaký hlupák, který si vezme do hlavy, že se bude rvát na ulicích města, možná zabije pár dabusů, vytvoří trochu chaosu, nebo začne kouzlit kouzla hromadného ničení. A to není dobrá věc. Paní to většinou naštve. Nemá ráda, když někdo rýpe do jejího města. Zabije tě... nebo strčí do bludiště... když budeš dělat něco takového."~ */
  IF ~~ THEN REPLY #36853 /* ~"Strčí do bludiště?"~ */ GOTO 60
  IF ~~ THEN REPLY #36854 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36855 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #36856 /* ~"Neslyšel jsi o bludištích?" Překvapeně se na tebe dívá. "Ty jsi ale zelenáč. Paní má mimodimenzionální vězení, kam může strčit zvlášť otravné osoby. Vezme kousek Sigilu, přetvoří ho do bludiště a pak ho od Sigilu odřízne. Jednou v noci půjdeš domů, nebo budeš procházet nějakým průchodem a najednou se všechno změní. Nebudeš na místě, které si pamatuješ. Budeš v pasti. Říká se, že z každého bludiště se dá uprchnout, ale než to tajemství vyřešíš, budeš dávno mrtvý."~ */
  IF ~~ THEN REPLY #36857 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36858 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.1 62.0 63.0 64.0
  SAY #36859 /* ~Usmál se na tebe, zjevně rád, že může mluvit. "Jistě, příteli, můžu ti říct něco o Harmoniu, Nemilosrdných nebo Guvnérech. Se kterými mám začít?"~ */
  IF ~~ THEN REPLY #36860 /* ~"Guvnéři."~ */ GOTO 62
  IF ~~ THEN REPLY #36861 /* ~"Harmonium."~ */ GOTO 63
  IF ~~ THEN REPLY #36862 /* ~"Nemilosrdní."~ */ GOTO 64
  IF ~~ THEN REPLY #36863 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36864 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #36865 /* ~Pokýval hlavou. "Správné jméno jejich frakce je Bratrstvo Řádu. Jsou zasvěceni zákonu a znalostem, tráví většinu svého času zkoumáním všech aspektů zákona. Nemluvím jenom o lidech, kteří dělají zákony. Jejich hledání jde mnohem hlouběji. Chtějí vědět, jak funguje, čím se řídí úplně všechno. Kvůli jejich zaměření na zákon také řídí soudy v Sigilu a fungují jako právníci, advokáti a podobně..."~ */
  IF ~~ THEN REPLY #36866 /* ~"Pověz mi o dalším společenství..."~ */ GOTO 61
  IF ~~ THEN REPLY #36867 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36868 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #36869 /* ~Pyšně se postavil. "Nejdůležitější frakcí Sigilu je pochopitelně Harmonium. Jsme společenství zasvěcené dodržování zákonu a pořádku v Sigilu, není žádný důležitější úkol. Pokroku se dá dosáhnout pouze ve stavu míru a harmonie. Existují takoví, kteří si myslí opak, ale ti nemají naše odhodlání, proto tedy musí selhat."~ */
  IF ~~ THEN REPLY #36870 /* ~"Pověz mi o dalším společenství..."~ */ GOTO 61
  IF ~~ THEN REPLY #36871 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36872 /* ~"Už musím jí, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #36873 /* ~Usmál se. "Nemilosrdní se starají o spravedlnost. Pro ně je spravedlnost vše. Je absolutní a perfektní. Zasvěcují své životy spravedlnosti, která ale musí být vykonávaná správně, podle zákona. Pevně věří, že aplikováním spravedlnosti na mnohovesmír ho mohou očistit od zla a učinit ho dokonalým."~ */
  IF ~~ THEN REPLY #36874 /* ~"Pověz mi o dalším společenství..."~ */ GOTO 61
  IF ~~ THEN REPLY #36875 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36876 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 55.1
  SAY #36877 /* ~Směje se."Portály? Jestli vím o portálech?" Odmlčel se. "No, neznám žádný osobně, kromě těch nejběžnějších. Myslím, že se dají najít prakticky v každé Čtvrti... portály jsou zábavné věcičky, poletují kolem, jindy náhle zmizí... Těžko se pak hledají." Pokrčil rameny.~ */
  IF ~~ THEN REPLY #36878 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36879 /* ~"Už musím jít sbohem."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 66 // from:
  SAY #36880 /* ~"No, zdravím! Hledáte příhodnou rakev?" Přívětivě se usmívá.~ */
  IF ~~ THEN REPLY #36881 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36882 /* ~"Už musím jít, sbohem."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 68 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",1)
~ THEN BEGIN 67 // from:
  SAY #36883 /* ~Hamrys se na tebe usmál. "Přeju znovu dobrý den, pane. Nenapadlo tě, že bys mi mohl pomoct s tou událostí ve skladišti?"~ */
  IF ~~ THEN REPLY #36884 /* ~"Ano, Pomůžu ti."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Vypadá to, že ve skladišti jsou nějaké problémy. Pokud chci polštář do rakve, musím je najít a vyřešit.~ */ GOTO 16
  IF ~~ THEN REPLY #36885 /* ~"Ne, ještě jsem se nerozmyslel. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #36886 /* ~"Mám nějaké otázky..."~ */ GOTO 2
END

IF WEIGHT #7 /* Triggers after states #: 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",2)
~ THEN BEGIN 68 // from:
  SAY #36887 /* ~Hamrys se na tebe usmál. "Přeju znovu dobrý den, pane. Rozmyslel jste si to a pomůžete mi vyřešit tu situaci ve skladišti?"~ */
  IF ~~ THEN REPLY #36888 /* ~"Ano, Pomůžu ti."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~Vypadá to, že ve skladišti jsou nějaké problémy. Pokud chci polštář do rakve, musím je najít a vyřešit.~ */ GOTO 16
  IF ~~ THEN REPLY #36889 /* ~"Ne. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #36890 /* ~"Mám nějaké otázky..."~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",3)
~ THEN BEGIN 69 // from:
  SAY #36891 /* ~Hamrys se na tebe usmál. "Přeju znovu dobrý den, pane. Vyřešil jsi už situaci ve skladišti?"~ */
  IF ~~ THEN REPLY #36892 /* ~"Ne, stále na tom pracuju. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #36893 /* ~"Ne, ale mám na tebe nějaké otázky..."~ */ GOTO 2
END

IF WEIGHT #5 /* Triggers after states #: 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",4)
~ THEN BEGIN 70 // from:
  SAY #36894 /* ~Hamrys se na tebe usmál. "Přeju dobrý den, kámo. Sehnal jsi ten polštář, který jsi hledal?"~ */
  IF ~~ THEN REPLY #52763 /* ~"Ano. Vyřešil jsem problémy ve skladišti a získal polštář."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Pillow_Quest","GLOBAL",5)
~ JOURNAL #66530 /* ~Setkal jsem se s Hamrysem a řekl jsem mu, že se mi podařilo získat ze skladu polštář. Pro jednou mi neumluvil uši, asi ho z toho kecání už začala bolet huba.~ */ GOTO 76
END

IF WEIGHT #4 /* Triggers after states #: 72 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #36897 /* ~Hamrys se na tebe usmál. "Přeju znovu dobrý den, pane. Nenapadlo tě, že bys mi mohl pomoct s tou událostí ve skladišti?"~ */
  IF ~~ THEN REPLY #36912 /* ~"Ano, Pomůžu ti."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Vypadá to, že ve skladišti jsou nějaké problémy. Pokud chci získat plány hrobky, musím je najít a vyřešit.~ */ GOTO 39
  IF ~~ THEN REPLY #36913 /* ~"Ne, ještě jsem se nerozmyslel. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #36914 /* ~"Mám nějaké otázky..."~ */ GOTO 2
END

IF WEIGHT #3 /* Triggers after states #: 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",2)
~ THEN BEGIN 72 // from:
  SAY #36915 /* ~Hamrys se na tebe usmál. "Přeju znovu dobrý den, pane. Rozmyslel jste si to a pomůžete mi vyřešit tu situaci ve skladišti?"~ */
  IF ~~ THEN REPLY #36916 /* ~"Ano, Pomůžu ti."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~Vypadá to, že ve skladišti jsou nějaké problémy. Pokud chci získat plány hrobky, musím je najít a vyřešit.~ */ GOTO 39
  IF ~~ THEN REPLY #36917 /* ~"Ne, ještě jsem se nerozmyslel. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #36918 /* ~"Mám nějaké otázky..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 73 // from: 15.0 38.0
  SAY #36919 /* ~Usmál se od ucha k uchu. "Výborně. Můžu ti tedy ještě s něčím pomoct?"~ */
  IF ~~ THEN REPLY #36920 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36921 /* ~"Ne, sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",3)
~ THEN BEGIN 74 // from:
  SAY #50440 /* ~Hamrys se na tebe usměje. "Dobrý den, pane. Už ses vypořádal se situací ve skladišti?"~ */
  IF ~~ THEN REPLY #50441 /* ~"Ne, ještě na tom pracuji. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #50442 /* ~"Ne, ale měl bych pro tebe pár otázek..."~ */ GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",4)
~ THEN BEGIN 75 // from:
  SAY #50443 /* ~Hamrys se na tebe usměje. "Zdar, kámo. Získal jsi ty plány, které jsi hledal?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52766 /* ~"Ano. Vyřešil jsem problémy ve skladišti a získal plány hrobky. Stejně tak jsem vyzvednul i polštář do rakve."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",5)
AddexperienceParty(2000)
SetGlobal("Plans_Quest","GLOBAL",5)
~ JOURNAL #66531 /* ~Setkal jsem se s Hamrysem a řekl jsem mu, že se mi podařilo získat ze skladu plány hrobky i polštář. Pro jednou toho neměl moc co říct.~ */ GOTO 76
  IF ~  !Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52767 /* ~"Ano. Vyřešil jsem problémy ve skladišti a získal plány hrobky."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",5)
AddexperienceParty(2000)
~ JOURNAL #66532 /* ~Setkal jsem se s Hamrysem a řekl jsem mu, že se mi podařilo získat ze skladu plány hrobky. Moc mi k tomu neřekl, čímž mě pořádně zmátl.~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 70.0 75.0 75.1
  SAY #52764 /* ~Usmál se a přikývl. "Dobrá práce. Jak jsem řekl, cokoli, co jsi získal ze skladiště, si můžeš nechat jako odměnu. Děkuju ti za tvou pomoc."~ */
  IF ~~ THEN REPLY #61971 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #61972 /* ~"Sbohem, Hamrysi."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Hamrys_Done","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #64164 /* ~"Dobrá, hej ty. Rakev ještě nechceš?" Přívětivě se usmívá. "Jinou práci pro tebe udělat nemůžu, takže... Jak jinak ti můžu pomoct?"~ */
  IF ~~ THEN REPLY #64165 /* ~"Mám nějaké otázky..."~ */ EXIT
  IF ~~ THEN REPLY #64166 /* ~"Nic, sbohem. "~ */ EXIT
END
