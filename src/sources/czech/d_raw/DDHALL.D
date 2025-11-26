// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDHALL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDHALL~

IF ~~ THEN BEGIN 0 // from:
  SAY #822 /* ~Předtím, než Morte dokončí své řečnění, písař začne mohutně kašlat. Po chvíli se kašel uklidní a písařovo dýchání začne znovu provázet ošklivé sípání.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 104
END

IF ~~ THEN BEGIN 1 // from:
  SAY #826 /* ~Ještě předtím, než Morte skončí svou řeč, tě přejedou písařovy šedé oči. "Už léta mě tíží toto břemeno, Neklidný." Odložil psací brk. "...a to teď nepočítám hluchotu jako jednu ze svých nemocí."~ */
  IF ~~ THEN REPLY #827 /* ~"'Neklidný?' Ty mě snad znáš?"~ */ DO ~SetGlobal("0202_Dhall_Face_Player","AR0202",1)
~ GOTO 44
END

IF ~~ THEN BEGIN 2 // from: 21.0
  SAY #829 /* ~"Neznáš tu ženu, která byla pohřbena dole v pamětní síni? Myslel jsem, že v minulosti cestovala s tebou..." Dhall vypadá, jako by ho chytal další záchvat kašle, ale pak znovu popadne dech. "Nebo se mýlím?"~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5070 /* ~"Kde je její tělo?"~ */ GOTO 42
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5071 /* ~"Nic o ní nevím."~ */ GOTO 43
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #5072 /* ~"Tvrdí, že ji znám, ale já si na ni nepamatuju."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #5073 /* ~"Říkal jsi, že byli i další. Kdo další je tady?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #5074 /* ~"Říkal jsi, že byli i další. Kdo další je tady?"~ */ GOTO 12
  IF ~~ THEN REPLY #6063 /* ~"Možná. Mám pro tebe další otázky..."~ */ GOTO 9
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #6064 /* ~"Půjdu do haly dolů a zkusím najít její tělo."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #13288 /* ~"Možná ne. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 9.0
  SAY #832 /* ~Dhall na tebe kouká. "Víš to jistě?"~ */
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",0)
~ THEN REPLY #830 /* ~"Ano. To je dobrý převlek."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",2)
~ JOURNAL #39468 /* ~Řekl jsem písaři Dhallovi o Vaxisovi a jeho přestrojení. Dhall řekl, že na Vaxise pošle ostatní Spalovače, jakmile to bude možné.~ */ GOTO 4
  IF ~  Global("Lawful_Vaxis_1","GLOBAL",1)
~ THEN REPLY #831 /* ~"Ano. To je dobrý převlek."~ */ DO ~AddexperienceParty(250)
SetGlobal("Betray_Vaxis","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dhall_2","GLOBALGood",-3)
~ JOURNAL #39469 /* ~Slíbil jsem Vaxisovi, že ho Spalovačům nezradím, ale co? Řekl jsem písaři Dhallovi o Vaxisovi a jeho přestrojení. Dhall řekl, že na Vaxise pošle ostatní Spalovače, jakmile to bude možné.~ */ GOTO 4
  IF ~~ THEN REPLY #834 /* ~"Ne, po zralém uvážení, snad jsem si to dostatečně představil. Podívej, měl bych nějaké další otázky..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #833 /* ~"Já..." Dhalla popadl úporný kašel. Po minutě nebo dvou, zase chytil dech a povídá. "Já... bych měl hned informovat stráže."~ */
  IF ~~ THEN REPLY #836 /* ~"Díky. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #837 /* ~"Skvělé. Sbohem."~ */ GOTO 11
END

IF ~  Global("Dhall","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #838 /* ~Písař vypadá velice staře... jeho kůže je vrásčitá a má barvu starého pergamenu. Šedé oči jsou vsazeny do hranatého obličeje a velká bílá bradka mu splývá po šatech jako vodopád. Jeho dech je trhaný a nepravidelný, ale ani tak občasné záchvaty kašle nezpomalují pohyb jeho psacího brku.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #839 /* ~"Zdravím."~ */ EXTERN ~DMORTE~ 102
  IF ~  !NearbyDialog("DMorte")
Global("Mortuary_Alert","GLOBAL",0)
~ THEN REPLY #835 /* ~"Zdravím."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
Global("Mortuary_Alert","GLOBAL",1)
~ THEN REPLY #5058 /* ~"Zdravím."~ */ GOTO 6
  IF ~~ THEN REPLY #5060 /* ~Nechej starého písaře být.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #841 /* ~Jeho šedé oči tě přejely, když zvedl hlavu od své knihy. "Obával jsem se, že to budeš ty, kdo je zodpovědný za útoky tady v Márnici. Tohle..." lehce zakašlal, pak se mu podařilo nadechnout se. "Tohle není pro tebe cesta, jak vstoupit do dalšího života."~ */
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #842 /* ~"Jenom sem se bránil. Mám pro tebe nějaké otázky než se ze mne stane vzácnost..."~ */ GOTO 9
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #843 /* ~"Sdílet trochu smrti s vámi zbožňovateli-mrtvol není takový zločin, co se mne týče. A teď mám na tebe nějaké otázky..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dhall_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Dhall","GLOBAL",0)
~ THEN REPLY #5062 /* ~"Znáš mě?"~ */ GOTO 44
  IF ~~ THEN REPLY #5063 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #844 /* ~Písař přestal psát do knihy před ním a pak se na tebe podíval. Jeho oči jsou jako dva hřebíky zaražené do lebky. "Tak..." Jeho hlas zní unaveně, jako kdyby tu samou věc opakoval již mnohokrát předtím. "Probudil ses ze svého spánku a vrátil ses do svého snu." Pokračuje uctivě dál. "Vítej... znovu, Neklidný."~ */
  IF ~~ THEN REPLY #845 /* ~"'Neklidný?' Ty mne snad znáš?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 8 // from: 22.0
  SAY #851 /* ~"Musíš pochopit. Tvá existence je pro nás rouháním. Mnoho členů z našeho společenství by nejraděj poručilo tě zpopelnit... kdyby věděli o tvém strádání."~ */
  IF ~~ THEN REPLY #940 /* ~"Jsi Spalovač. Ale nevypadá to, že bys mi udělal tu laskavost a zabil mne. Proč ne?"~ */ GOTO 23
  IF ~~ THEN REPLY #911 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #913 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6038 /* ~"Slyšel jsem dost. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
  SAY #852 /* ~"Dobře. Co si tedy přeješ vědět?"~ */
  IF ~  Global("Vaxis","GLOBAL",1)
!Dead("Vaxis")
Global("Vaxis_Leave","GLOBAL",0)
Global("Betray_Vaxis","GLOBAL",0)
~ THEN REPLY #854 /* ~"Věděl si, ze ve východních komnatách se pohybuje někdo, kdo se svým převlekem maskuje jako zombie?"~ */ GOTO 3
  IF ~~ THEN REPLY #857 /* ~"Co je tohle za místo?"~ */ GOTO 10
  IF ~~ THEN REPLY #855 /* ~"Jak jsem se sem dostal?"~ */ GOTO 15
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
Global("AR0200_Visited","GLOBAL",0)
~ THEN REPLY #858 /* ~"Můžeš mi říct, jak se odsud dostanu?"~ */ GOTO 13
  IF ~~ THEN REPLY #5069 /* ~"Víš, kdo jsem?"~ */ JOURNAL #39460 /* ~Zeptal jsem se Dhalla, jestli mě znal a on odpověděl, že o mně ví jen málo - a ještě méně o společnících, kteří se mnou dříve cestovali. Jejich těla jsou někde v Márnici... možná že když je uvidím, přivolá to nějaké vzpomínky.~ */ GOTO 21
  IF ~~ THEN REPLY #5748 /* ~"Co tady děláš?"~ */ GOTO 25
  IF ~~ THEN REPLY #6065 /* ~"Připadáš mi nemocný. Není ti dobře?"~ */ GOTO 26
  IF ~~ THEN REPLY #41663 /* ~"Nic... Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #859 /* ~"Jsi v Márnici, Neklidný. Znovu jsi... přišel..." Předtím, než dokončí větu, dá se Dhall do úporného kašle. Po chvilce se zklidní a začne znovu při dýchání sípat. "...toto je vyčkávací místnost pro ty, kteří odejdou ze stínu tohoto života."~ */
  IF ~~ THEN REPLY #861 /* ~"Řekni mi o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #860 /* ~"*Neklidný?*"~ */ GOTO 38
  IF ~~ THEN REPLY #862 /* ~"Stíny tohoto života?"~ */ GOTO 33
  IF ~~ THEN REPLY #863 /* ~"Znovu...? Já už jsem tu byl víckrát než jednou?"~ */ GOTO 14
  IF ~~ THEN REPLY #864 /* ~"Jak jsem se sem dostal?"~ */ GOTO 15
  IF ~~ THEN REPLY #865 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #866 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
  SAY #867 /* ~Když už se chystáš k odchodu, Dhall ti říká. "Věz toto: Nezávidím ti, Neklidný. Kdybych byl znovuzrozený jako ty, tak bych to považoval za kletbu, kterou bych nemohl nést. Musíš se s tím vyrovnat. Za nějakou dobu se sem zase vrátíš..." Dhall kašle a z jeho hrdla vychází chraptivý zvuk. "Je to úděl všech věcí složených z masa a kostí."~ */
  IF ~~ THEN REPLY #41564 /* ~"Snad se ještě setkáme, Dhalle."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.3 2.4 42.2 42.3 43.1 43.2
  SAY #868 /* ~"Nepochybně jsou, ale já neznám jejich jména a ani nevím, kde leží. Mnoho takových, jako jsi ty, sem přišlo způsobem, kterým se sem dostává většina těl. Pár jich přežilo. " Dhall ukazuje na tebe. "Všichni mrtví přicházejí sem. Někteří museli jednou přijít s tebou."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #870 /* ~"Kde je ta žena, o které ses zmínil?"~ */ GOTO 42
  IF ~~ THEN REPLY #871 /* ~"Nevidím nic špatného v tvých důvodech. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #872 /* ~"Podívám se po nich. Možná mi můžou pomoct zažehnout jiskřičku v paměti. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #875 /* ~"Hmmm... vstupní brána je zcela jistě východ, ale tam zase nedovolí projít nikomu jinému než Spalovači..." Dhall se pustil do úporného kašle a po chvilce pokračuje. "...jeden ze strážných u vstupní brány má k bráně i klíč, ale určitě ti ji neotevře, pokud nebudeš hodně přesvědčivý."~ */
  IF ~~ THEN REPLY #876 /* ~"Aha. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #877 /* ~"Pak tedy sbohem, Dhalle."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #878 /* ~"Ano, *znovu.* Už jsi sem byl přinesen mnohokrát, Neklidný. Doufal jsem, že tentokrát to bylo naposledy, když jsem uvážil ta hrozná poranění na tvém těle." Nadechne se. "Kdy se konečně vzdáš svého vzteku a odejdeš ze stínů tohoto života?"~ */
  IF ~~ THEN REPLY #880 /* ~"*Neklidný?*"~ */ GOTO 38
  IF ~~ THEN REPLY #881 /* ~"Zranění?"~ */ GOTO 34
  IF ~~ THEN REPLY #883 /* ~"Stíny života?"~ */ GOTO 33
  IF ~~ THEN REPLY #879 /* ~"Řekni mi něco víc o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #5751 /* ~"Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #5752 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 9.2 10.4 32.5
  SAY #885 /* ~Dhall si pohrdavě odfrkne, jako kdyby se to protivilo jeho mysli. "Tvoje rezavá kára tě dopravila do Márnice, Neklidný. Měl bys pomyslit na to, že v tom voze, co tě sem dovezl, jsi ležel jako král na povrchu na to, kolik lidí uvnitř smrdělo a hnilo."~ */
  IF ~~ THEN REPLY #886 /* ~"Přijel jsem sem vozem?"~ */ JOURNAL #39463 /* ~Zřejmě sem mé tělo dovezl Pharod na vozíku, společně s hromadou dalších mrtvol. Byl jsem *mrtvý*, když to udělal?~ */ GOTO 16
  IF ~~ THEN REPLY #887 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #888 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #889 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #890 /* ~"Ano... tvé tělo bylo někde mezi hromadou zbytků mrtvých těl." Dhalla přepadl ostrý nával kašle, po minutě konečně znovu chytil dech. "Tvůj 'nosič' Pharod byl, ostatně jako vždy, potěšen, že dostal zase pár měďáků za odvezení hromady z vás před brány Márnice."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #891 /* ~"Kdo je tenhle Pharod?"~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #892 /* ~"To zní, jako bys Pharoda neměl moc v lásce."~ */ GOTO 35
  IF ~~ THEN REPLY #893 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #894 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #5753 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #895 /* ~"On je... sběrač mrtvých." Dhall se zhluboka nadechne a pak pokračuje. "Máme v našem městě takové lidi, kteří odklízejí mrtvá těla těch, kdož prošli cestou Pravé smrti, a přináší je k nám, aby jejich ostatky mohly být důstojně pohřbeny."~ */
  IF ~~ THEN REPLY #897 /* ~"Kde můžu najít tohohle 'Pharoda?'"~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #898 /* ~"To zní jako bys Pharoda neměl moc v lásce."~ */ GOTO 35
  IF ~~ THEN REPLY #899 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #5754 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6031 /* ~"Tak to půjdu najít toho Pharoda. Sbohem, Dhalle."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 29.1 31.0 35.1 36.1
  SAY #900 /* ~"Jestli události půjdou tak jak mají, Neklidný, je tu mnohem větší šance, že tě Pharod najde a znovu přinese ještě předtím, než ty zjistíš, v které stoce momentálně Pharod žije." ~ */
  IF ~~ THEN REPLY #902 /* ~"Nicméně musím ho najít."~ */ GOTO 19
  IF ~~ THEN REPLY #903 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #904 /* ~"Aha. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #5755 /* ~"Mám pocit, že se naše cesty ještě zkříží. Sbohem, Dhalle."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.4 18.0 18.3 29.3 31.2
  SAY #901 /* ~Do Dhallova tónu se vkradlo lehké varování. "Nehledej Pharoda, Neklidný. Jsem si jistý, že kruh by se opět uzavřel, s tebou bez žádných zkušeností a Pharodem o pár měďáků bohatším. Přijmi smrt, Neklidný. Nezachovávej na věky svůj kruh utrpení."~ */
  IF ~~ THEN REPLY #906 /* ~"*Musím* ho najít. Víš, kde ho najdu?"~ */ JOURNAL #39464 /* ~Dhall mi řekl, že Pharoda najdu mimo Márnici, na místě zvaném "Úl". Vypadá to, že nechce, abych hledal Pharoda, ale on neztratil paměť a nevstal z mrtvých, takže si může své názory nechat jen pro sebe. Dhall mi navrhl, ať se zeptám lidí v Úlu, kde by se dal Pharod najít.~ */ GOTO 20
  IF ~~ THEN REPLY #905 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #907 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #5756 /* ~"Už se s tebou nemůžu dál bavit. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #908 /* ~Dhall se na chvíli odmlčí. Když konečně začne mluvit, vypadá to, že tak činí neochotně. "Nevím, v jakém kanálu teď zrovna Pharod bydlí, ale měl bys ho najít někde za branami Márnice, v Úlu. Snad tam někdo bude vědět, kde ho najdeš."~ */
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #910 /* ~"To zní, jako bys neměl Pharoda moc v lásce."~ */ GOTO 35
  IF ~~ THEN REPLY #909 /* ~"Můžeš mi říct něco více o Márnici?"~ */ GOTO 32
  IF ~~ THEN REPLY #5757 /* ~"Děkuju ti. Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6030 /* ~"Půjdu tam a poptám se. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 21 // from: 9.4
  SAY #914 /* ~"Já o tobě vím opravdu málo, Neklidný. O něco více vím o těch, kdož putovali s tebou, a kteří jsou nyní v našem držení." Dhall se nadechne. "Žádám tě, aby se k tobě už nikdo do party nepřipojoval, Neklidný -- kam půjdeš ty, půjde i neštěstí. Nes si své břímě úplně sám."~ */
  IF ~~ THEN REPLY #921 /* ~"Jsou tu i ostatní, kteří se mnou putovali? Jsou tady?"~ */ JOURNAL #39461 /* ~Dhall mi řekl, že jedna z žen, která se mnou cestovala, je pohřbena v pamětní hale v prvním patře Márnice.~ */ GOTO 2
  IF ~~ THEN REPLY #922 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #923 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 22 // from: 47.0
  SAY #915 /* ~Dhall si povzdychne. "Říká se, že existují duše, které nikdy nedocílí Pravé smrti. Smrt je opustila a jejich jména nikdy nebudou zapsána do Knihy mrtvých. Probudit se ze smrti, jako se to stalo tobě... naznačuje, že jsi jednou z těchto duší. Tvá existence není v našem společenství vítána."~ */
  IF ~~ THEN REPLY #917 /* ~"'Není vítána?' To nezní, jako bych se zrovna nacházel v dobré situaci."~ */ GOTO 8
  IF ~~ THEN REPLY #918 /* ~"Aha. Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #919 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #920 /* ~"Myslím, že jsem slyšel dost. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 23 // from: 8.0
  SAY #924 /* ~"Protože vnutit ti naši pravdu není správné. Musíš se vzdát těchto stínů života sám, a to ne proto, že jsme tě donutili." Dhall vypadá, jako by měl propadnout dalšímu návalu kašle, ale dokázal jej s vypětím sil zadržet. "Dokud budu zastávat tento post, budu chránit tvé právo najít skutečnou pravdu."~ */
  IF ~~ THEN REPLY #927 /* ~"Jaké je tvoje místo tady?"~ */ GOTO 25
  IF ~~ THEN REPLY #928 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #925 /* ~"Dobře. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6039 /* ~"Slyšel jsem dost. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 24 // from: 25.0
  SAY #929 /* ~"Jsem písař, co dělá seznamy schránek, které přicházejí do našich hal, Neklidný." Dhall se dal do úporného kašle a pak se uklidnil. "Znám pouze obličeje těch, kteří leží na našich kamenných deskách. Tajemství tvé existence je bezpečně uloženo u mne."~ */
  IF ~~ THEN REPLY #1305 /* ~"Řekni mi více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #6041 /* ~"Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6042 /* ~"Vypadá to, že ti něco dlužím. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 9.5 23.0
  SAY #930 /* ~"Jsem písař, co dělá seznamy všech schránek, které přicházejí do Márnice." Dhall si znovu odkašlal, pak se zhluboka nadýchl. "Dokud Márnicí poteče proud mrtvých těl, budu zastávat toto místo."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #931 /* ~"Říkal jsi, že jsem tu byl víckrát než jednou. Jak to, že mne tedy Spalovači nepoznali?"~ */ JOURNAL #39462 /* ~Dhall mi řekl, že před ostatními Spalovači tají mé návraty do Márnice. Jelikož je písař v Přijímací místnosti, je jedním z mála, kteří vidí mé tělo, když sem dorazí.~ */ GOTO 24
  IF ~~ THEN REPLY #932 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #933 /* ~"Aha. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6040 /* ~"Dobrá tedy. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 26 // from: 9.6
  SAY #934 /* ~"Nyní jsem blízko Pravé smrti, Neklidný. Nebude to dlouho trvat a já se dostanu za Nekonečnou hranici, kde konečně najdu klid, který hledám. Už jsem moc unavený..." Dhall se hluboce nadechl. "Sféry už nebude zajímat někdo takový, jako jsem já."~ */
  IF ~~ THEN REPLY #935 /* ~"Nekonečná hranice?"~ */ GOTO 41
  IF ~~ THEN REPLY #936 /* ~"Víš to jistě? Možná bych ti mohl nějakým způsobem pomoct."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dhall_1","GLOBALGood",1)
~ GOTO 27
  IF ~~ THEN REPLY #937 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #960 /* ~"Sbohem, Dhalle. "~ */ GOTO 11
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #938 /* ~"Nepřeji si žít věčně nebo žít znovu, Neklidný. Nesnesl bych to."~ */
  IF ~~ THEN REPLY #1303 /* ~"Dobře. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #1304 /* ~"Tak to bude vše. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 28 // from: 2.2 42.1
  SAY #939 /* ~"Ona s tebou *mluvila*?" Dhallův hlas zašeptá. "Máš snad *horečku*, Neklidný? Ona dosáhla Pravé smrti a přešla hranici ještě před tebou."~ */
  IF ~~ THEN REPLY #981 /* ~"Mluvila se mnou, Dhalle. Její duše tu přebývá."~ */ GOTO 30
  IF ~~ THEN REPLY #982 /* ~"Snad bych si to vybavil. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #873 /* ~"Nejsem si jist, zdali dosáhla Pravé smrti. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 29 // from: 36.0
  SAY #941 /* ~Dhall se pozastavil. "Nejspíše. Postrádáš něco... zvláště cenného?" Jeho hlas poklesl a zamračil se. "Pharod nedělá výjimky, vezme si od tebe všechno, co není pevně spojeno k tvému tělu a někdy ani dokonce tohle nestačí k uspokojení jeho nenasytné duše."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #942 /* ~"Postrádám deník."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #943 /* ~"Hmmm. Víš, kde bych mohl najít Pharoda?"~ */ GOTO 18
  IF ~~ THEN REPLY #944 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #6026 /* ~"Možná bych si měl promluvit s Pharodem. Sbohem, Dhalle."~ */ GOTO 19
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #874 /* ~"Aha. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #945 /* ~Dhall nakreslil před sebou prstem půlkruh. "To je nemocná duše, Neklidný. Modlím se, aby se ti ten rozhovor zdál... ale teď se obávám, že se ti nezdál."~ */
  IF ~~ THEN REPLY #946 /* ~"Snad jsem si to vybavil. Měl bych nějaké další otázky."~ */ GOTO 9
  IF ~~ THEN REPLY #947 /* ~"Snad si o tom více promluvíme později. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #850 /* ~"Deník? Jestli to mělo nějakou cenu, pak to zcela určitě uvízlo v rukou Pharoda."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #948 /* ~"Kde bych mohl najít toho Pharoda?"~ */ GOTO 18
  IF ~~ THEN REPLY #949 /* ~"Aha. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #6027 /* ~"Tak to ho vyhledám. Sbohem, Dhalle."~ */ GOTO 19
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #6066 /* ~"Aha. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 32 // from: 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
  SAY #950 /* ~"Je to místo, kam jsou přinášeni mrtví, aby byli pohřbeni nebo zpopelněni. Je to naše zodpovědnost coby Spalovačů, postarat se o mrtvé, o ty, kteří opustili tento stín života a došli cestou k Pravé smrti." Dhallův hlas poklesl. "Tvá zranění jsou asi mnohem horší, když nepoznáváš tohle místo. Vždyť je tohle skoro tvůj domov."~ */
  IF ~~ THEN REPLY #951 /* ~"Stín života?"~ */ GOTO 33
  IF ~~ THEN REPLY #953 /* ~"Pravé smrti?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #954 /* ~"Spalovači?"~ */ GOTO 47
  IF ~~ THEN REPLY #955 /* ~"Sigil?"~ */ GOTO 37
  IF ~~ THEN REPLY #956 /* ~"Zranění?"~ */ GOTO 34
  IF ~~ THEN REPLY #846 /* ~"Jak jsem se sem dostal?"~ */ GOTO 15
  IF ~~ THEN REPLY #5735 /* ~"Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6062 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 33 // from: 10.2 14.2 32.0 41.0 47.2 49.0
  SAY #957 /* ~"Ano, stín. Víš, Neklidný, tento život... není skutečný. Tvůj život, můj život, to jsou stíny, jiskry toho, čím kdysi život býval. Tento 'život' je tam, kde skončíme *potom*, co zemřeme. A tady zůstaneme... uvězněni. V pasti. Dokud nedosáhneme Pravé smrti."~ */
  IF ~~ THEN REPLY #958 /* ~"Pravé smrti?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #959 /* ~"Proč si myslíš, že tenhle život není skutečný?"~ */ GOTO 50
  IF ~~ THEN REPLY #5736 /* ~"Řekni mi víc o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #5737 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #5738 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 14.1 32.4
  SAY #961 /* ~"Ano, ta zranění, která zdobí tvé tělo... vypadají, jako by už poslala nějakého muže cestou Pravé smrti. Teď se zdá, že mnohé z těchto ran se již uzdravily." Dhall se nahlas na chvíli rozkašlal a pak se uklidnil. "Ale toto jsou pouze povrchová zranění."~ */
  IF ~~ THEN REPLY #1301 /* ~"Pouze povrchová zranění? Co tím máš na mysli?"~ */ JOURNAL #39470 /* ~Dhall řekl, že rány, které jsem utrpěl, jsou nedůležité v porovnání s ranami uštědřenými mé mysli... zašel dokonce tak daleko, že tato zranění považuje za příčinu mé ztráty paměti a varoval mě, že mentální poškození může být horší než jenom amnézie. Ta myšlenka mě zneklidňuje - vůbec by mi nevadilo, kdyby mi sdělil taky nějaké dobré zprávy...~ */ GOTO 53
  IF ~~ THEN REPLY #1302 /* ~"Řekni mi více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #5746 /* ~"Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #5747 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from: 16.1 17.1 20.0
  SAY #962 /* ~"Je tu několik lidí, kterých si vážím, Neklidný." Dhall se úporně rozkašle a pak se zklidní. "Pharod není jedním z nich. Nosí svůj zkažený věhlas jako jakýsi odznak čestnosti a přitom volně okrádá mrtvé. Je to vrchní přemísťovač, křižující darebák toho nejnižšího řádu."~ */
  IF ~~ THEN REPLY #963 /* ~"'Vrchní přemísťovač?'"~ */ GOTO 36
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #964 /* ~"Víš, kde bych mohl najít Pharoda?"~ */ GOTO 18
  IF ~~ THEN REPLY #965 /* ~"Aha. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6028 /* ~"Povzbudivé. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #966 /* ~"Vrchní přemísťovač..." Dhall se rozkašle. "...no, zloděj. Všichni mrtví, které Pharod přinese k našim zdím, už přijdou oloupeni o tu trochu, co měli u sebe, což je připraví i o důstojnost, kterou měli za svého skutečného života. Pharod si vezme cokoliv, co může vydolovat z jejich ztuhlých prstů."~ */
  IF ~~ THEN REPLY #967 /* ~"Vzal si ten Pharod taky něco ode *mne?*"~ */ GOTO 29
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #968 /* ~"Víš, kde bych mohl najít Pharoda?"~ */ GOTO 18
  IF ~~ THEN REPLY #969 /* ~"Aha. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6029 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 37 // from: 32.3
  SAY #970 /* ~"Sigil je naše krásné město, Neklidný."~ */
  IF ~~ THEN REPLY #971 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #972 /* ~"Aha. Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #5758 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 38 // from: 10.1 14.0
  SAY #973 /* ~"Neklidný je jméno jako každé jiné..." Dhall zakašle. "Něco tě drží tady, že ano? Něco, co musí být vysvětleno, nějaký chtíč, který musí být potlačen předtím než budeš moci dosáhnout Pravé smrti?"~ */
  IF ~~ THEN REPLY #974 /* ~"Pravé smrti?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #975 /* ~"Řekni mi něco více o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #5749 /* ~"Mám ještě jiné otázky...~ */ GOTO 9
  IF ~~ THEN REPLY #5750 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 39 // from:
  SAY #884 /* ~"Uděláš to, co jsi udělal vždycky, Neklidný. Najdeš toho popudlivého srabáckého blbce, Pharoda Červovlasa, a požádáš ho o to, co ti vzal. A pak znovu začneš marně pátrat, budeš se pokoušet plnit nesmyslné úkoly, sbírat ty zbytečné věci a nakonec tě někdo zase sejme a ty se ocitneš tady. Ušetři si čas a promluv si teď se mnou, aspoň nebudeme muset tuhle konverzaci muset opakovat, až se ti zase ztratí paměť."~ */
  IF ~~ THEN REPLY #976 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #977 /* ~"Sbohem, Dhalle."~ */ EXIT
END

IF ~  Global("Dhall","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #978 /* ~Dhall na tebe prohlédl, když ses přiblížil." Tak ses vrátil..." Dhall se těžce nadýchne, najednou se hlasitě rozkašle. Po chvíli se uklidní a začne znovu těžce oddychovat. "... znovu tě vítám, Neklidný."~ */
  IF ~~ THEN REPLY #979 /* ~"Měl bych na tebe nějaké další otázky, Dhalle."~ */ GOTO 9
  IF ~~ THEN REPLY #980 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 26.0 52.0
  SAY #983 /* ~"Hranice mezi stínem života a Pravou smrtí."~ */
  IF ~~ THEN REPLY #984 /* ~"Stín života?"~ */ GOTO 33
  IF ~~ THEN REPLY #985 /* ~"Pravé smrti?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #5739 /* ~"Řekni mi víc o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #5740 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #5741 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 42 // from: 2.0 12.0 43.0
  SAY #5075 /* ~"V severovýchodní pamětní hale o patro níž. Podívej se na tamní katafalky... na některé desce by mělo být její jméno. Možná že to ti osvěží paměť."~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5076 /* ~"Nevím. Ani si nepamatuju, že bych cestoval s nějakou ženou."~ */ GOTO 43
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #5077 /* ~"No, ona tvrdí, že mě zná, ale já si na ni nepamatuju."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #5078 /* ~"Říkal jsi, že byli i další. Kdo další je tady?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #5079 /* ~"Říkal jsi, že byli i další. Kdo další je tady?"~ */ GOTO 12
  IF ~~ THEN REPLY #6067 /* ~"Možná se po ní podívám. Než půjdu, chtěl bych se tě ještě na pár věcí zeptat..."~ */ GOTO 9
  IF ~~ THEN REPLY #6068 /* ~"Půjdu do haly dolů a zkusím najít její tělo."~ */ GOTO 11
END

IF ~~ THEN BEGIN 43 // from: 2.1 42.0
  SAY #5080 /* ~Dhall na to neodpověděl. Jenom na tebe tiše zírá.~ */
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #5081 /* ~"Kde ji můžu najít?"~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #5082 /* ~"Předtím jsi říkal, že tady byli se mnou pohřbení další, kteří cestovali se mnou. Kde jsou?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #5083 /* ~"Předtím jsi říkal, že tady byli se mnou pohřbení další, kteří cestovali se mnou. Kde jsou?"~ */ GOTO 12
  IF ~~ THEN REPLY #6069 /* ~"Mám pro tebe další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6070 /* ~"Sbohem tedy."~ */ GOTO 11
END

IF ~~ THEN BEGIN 44 // from: 1.0 6.2 7.0
  SAY #840 /* ~"Znát tě? Já..." v písařově hlase je znát trochu zahořklosti, když mluví. "*Nikdy* jsem tě neznal, Neklidný. Ne víc než jak jsi ty znal sám sebe." Na chvíli se odmlčí. "Co se tebe týče, tys zapomněl, že ano?"~ */
  IF ~~ THEN REPLY #1327 /* ~"*Kdo* jsi?"~ */ DO ~SetGlobal("Dhall","GLOBAL",1)
~ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #5728 /* ~"Jako vždy, otázka. A špatná otázka, jako vždy." Lehce se uklonil, ale pohyb v něm vyvolal záchvat kašle. "Já..." Na chvíli se odmlčel a snaží se dýchat pravidelně. "Já... jsem Dhall."~ */
  IF ~~ THEN REPLY #5731 /* ~"Možná bys mi mohl odpovědět na pár otázek, Dhalle..."~ */ JOURNAL #39459 /* ~V Márnici jsem potkal nemocného písaře jménem Dhall... věděl, že jsem na vše zapomněl ještě předtím, než jsem s ním promluvil. Znal jsem ho dříve, než jsem ztratil paměť? Doufal jsem, že dostanu nějaké odpovědi, ale vše, co mám, je více a více otázek.~ */ GOTO 9
  IF ~~ THEN REPLY #5732 /* ~"Na tohle nemám čas. Sbohem."~ */ JOURNAL #39459 /* ~V Márnici jsem potkal nemocného písaře jménem Dhall... věděl, že jsem na vše zapomněl ještě předtím, než jsem s ním promluvil. Znal jsem ho dříve, než jsem ztratil paměť? Doufal jsem, že dostanu nějaké odpovědi, ale vše, co mám, je více a více otázek.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #5730 /* ~"Dobrá tedy, Neklidný." Dhall přikývl. "Ale myslím si, že v tomto případě není čas tvým nepřítelem." Zvedl své pero. "Až si budeš chtít znovu promluvit, budu zde."~ */
  IF ~~ THEN REPLY #40005 /* ~"Snad se ještě uvidíme. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 32.2
  SAY #847 /* ~"My Spalovači jsme společenstvím, které sdružuje ty z lidí, kteří jsou schopni rozpoznat klam tohoto života. Očekáváme další život a pomáháme ostatním na jejich cestě."~ */
  IF ~  Global("Morte_Mortuary_Walkthrough_1","GLOBAL",1)
~ THEN REPLY #6032 /* ~"Možná bys mi mohl vysvětlit, proč mě chtějí Spalovači zabít."~ */ GOTO 22
  IF ~~ THEN REPLY #6033 /* ~"Pravá smrt?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Dustmen","GLOBALKnow_Dustmen",0)
~ GOTO 48
  IF ~~ THEN REPLY #6034 /* ~"Stín, který je tento život?"~ */ GOTO 33
  IF ~~ THEN REPLY #6035 /* ~"Řekni  mi víc o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #6036 /* ~"Mám pro tebe další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6037 /* ~"Sbohem tedy."~ */ GOTO 11
END

IF ~~ THEN BEGIN 48 // from: 32.1 33.0 38.0 41.1 47.1
  SAY #848 /* ~"Pravá smrt je nebytí. Je to stav postrádající smysl, city, hněv." Dhall si odkašlal, pak se nadechl. "Stav nevinnosti."~ */
  IF ~~ THEN REPLY #6043 /* ~"To zní jako konec, zapomnění, nicota. Proč by to někdo chtěl?"~ */ GOTO 49
  IF ~~ THEN REPLY #6044 /* ~"Oh. Můžeš mi říct víc o Márnici?"~ */ GOTO 32
  IF ~~ THEN REPLY #6045 /* ~"Já... Aha. Mám další otázky."~ */ GOTO 9
  IF ~~ THEN REPLY #6046 /* ~"Už musím jít. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #849 /* ~"Je to horší než zůstat ve stínu toho života, který už jsem jednou zažil? To si nemyslím."~ */
  IF ~~ THEN REPLY #6047 /* ~"Stín života?"~ */ GOTO 33
  IF ~~ THEN REPLY #6048 /* ~"Řekni mi víc o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #6049 /* ~"Já... Aha. Mám další otázky."~ */ GOTO 9
  IF ~~ THEN REPLY #6050 /* ~"Už musím jít. Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 50 // from: 33.1
  SAY #853 /* ~"Co tě přivádí k myšlence, že *je* tento život skutečný? Podívej se do sebe. Necítíš, že tam něco chybí?" Dhall potřásl hlavou. "Toto je očistec. Zde je jenom žal. Neštěstí. Trápení. To nejsou prvky, které tvoří 'život.' Jsou to části klece, která nás zadržuje v tomto stínu."~ */
  IF ~~ THEN REPLY #6051 /* ~"Myslím, že tě dostal tvůj fatalismus. Ty elementy jsou částí života, ale ne celkem."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dhall_2","GLOBALGood",1)
~ GOTO 51
  IF ~~ THEN REPLY #6052 /* ~"Vězní nás? Jak?"~ */ GOTO 51
  IF ~~ THEN REPLY #6053 /* ~"Dost filozofování. Co mají všechny ty řeči společné s mým probuzením tady?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dhall_3","GLOBALGood",-1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0 50.1 50.2
  SAY #5733 /* ~Dhall zavrtěl hlavou. "Vášně mají váhu, moc. Mnozí jsou jimi připoutáni k tomuto stínu života. Dokud se někdo drží emocí, bude se neustále znovuoživovat v tomto 'životě,' stále trpět, nikdy nepoznaje čistotu Pravé Smrti."~ */
  IF ~~ THEN REPLY #6054 /* ~"Já... Aha. A jak se dá uniknout tomu cyklu ožívání a dosáhnout té... Pravé Smrti?"~ */ GOTO 52
  IF ~~ THEN REPLY #6055 /* ~"Řekni mi víc o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #6056 /* ~"Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6057 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #5734 /* ~"Zruš své vášně. Zbav se touhy po citech. Až budeš doopravdy očištěn, pak cyklus ožívání skončí a dosáhneš míru." Dhall si povzdychl... zní to, jako by v jeho hrdle rachotila sama smrt. "Za těmito našimi skořápkami, za Věčnou Hranicí, leží mír, který každá duše hledá."~ */
  IF ~~ THEN REPLY #6058 /* ~"Věčná Hranice?"~ */ GOTO 41
  IF ~~ THEN REPLY #6059 /* ~"Řekni mi víc o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #6060 /* ~"Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #6061 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END

IF ~~ THEN BEGIN 53 // from: 34.0
  SAY #5742 /* ~"Mluvím o zraněních mysli. Zapomněl jsi mnoho, že? Možná pravá zranění zasahují mnohem hlouběji než jizvy, co zdobí tvůj povrch." Dhall znovu zakašlal. "Ale to je něco, co můžeš jistě vědět jenom ty."~ */
  IF ~~ THEN REPLY #5743 /* ~"Řekni mi víc o Márnici."~ */ GOTO 32
  IF ~~ THEN REPLY #5744 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #5745 /* ~"Sbohem, Dhalle."~ */ GOTO 11
END
