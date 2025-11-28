init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dhall_logic import DhallLogic
    dhallLogic = DhallLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDHALL.DLG
# ###


# s0 # say822
label dhall_s0: # externs morte_s103
    nr 'Předtím, než Morte dokončí své řečnění, písař začne mohutně kašlat. Po chvíli se kašel uklidní a písařovo dýchání začne znovu provázet ošklivé sípání.{#dhall_s0_1}'

    jump morte_s104  # EXTERN


# s1 # say826
label dhall_s1: # externs morte_s104
    nr 'Ještě předtím, než Morte skončí svou řeč, tě přejedou písařovy šedé oči. "Už léta mě tíží toto břemeno, Neklidný." Odložil psací brk. "…a to teď nepočítám hluchotu jako jednu ze svých nemocí."{#dhall_s1_1}'

    menu:
        '"„Neklidný?“ Ty mě snad znáš?"{#dhall_s1_r827}':
            # a0 # r827
            $ dhallLogic.r827_action()
            jump dhall_s44


# s2 # say829
label dhall_s2: # from 21.0
    nr '"Neznáš tu ženu, která byla pohřbena dole v pamětní síni? Myslel jsem, že v minulosti cestovala s tebou…" Dhall vypadá, jako by ho chytal další záchvat kašle, ale pak znovu popadne dech. "Nebo se mýlím?"{#dhall_s2_1}'

    menu:
        '"Kde je její tělo?"{#dhall_s2_r5070}' if dhallLogic.r5070_condition():
            # a1 # r5070
            jump dhall_s42

        '"Nic o ní nevím."{#dhall_s2_r5071}' if dhallLogic.r5071_condition():
            # a2 # r5071
            jump dhall_s43

        '"Tvrdí, že ji znám, ale já si na ni nepamatuju."{#dhall_s2_r5072}' if dhallLogic.r5072_condition():
            # a3 # r5072
            jump dhall_s28

        '"Říkal jsi, že byli i další. Kdo další je tady?"{#dhall_s2_r5073}' if dhallLogic.r5073_condition():
            # a4 # r5073
            jump dhall_s12

        '"Říkal jsi, že byli i další. Kdo další je tady?"{#dhall_s2_r5074}' if dhallLogic.r5074_condition():
            # a5 # r5074
            jump dhall_s12

        '"Možná. Mám pro tebe další otázky…"{#dhall_s2_r6063}':
            # a6 # r6063
            jump dhall_s9

        '"Půjdu do haly dolů a zkusím najít její tělo."{#dhall_s2_r6064}' if dhallLogic.r6064_condition():
            # a7 # r6064
            jump dhall_s11

        '"Možná ne. Sbohem."{#dhall_s2_r13288}' if dhallLogic.r13288_condition():
            # a8 # r13288
            jump dhall_s11


# s3 # say832
label dhall_s3: # from 9.0
    nr 'Dhall na tebe kouká. "Víš to jistě?"{#dhall_s3_1}'

    menu:
        '"Ano. To je dobrý převlek."{#dhall_s3_r830}' if dhallLogic.r830_condition():
            # a9 # r830
            $ dhallLogic.r830_action()
            jump dhall_s4

        '"Ano. To je dobrý převlek."{#dhall_s3_r831}' if dhallLogic.r831_condition():
            # a10 # r831
            $ dhallLogic.r831_action()
            jump dhall_s4

        '"Ne, po zralém uvážení, snad jsem si to dostatečně představil. Podívej, měl bych nějaké další otázky…"{#dhall_s3_r834}':
            # a11 # r834
            jump dhall_s9


# s4 # say833
label dhall_s4: # from 3.0 3.1
    nr '"Já…" Dhalla popadl úporný kašel. Po minutě nebo dvou, zase chytil dech a povídá. "Já… bych měl hned informovat stráže."{#dhall_s4_1}'

    menu:
        '"Díky. Měl bych nějaké další otázky…"{#dhall_s4_r836}':
            # a12 # r836
            jump dhall_s9

        '"Skvělé. Sbohem."{#dhall_s4_r837}':
            # a13 # r837
            jump dhall_s11


# s5 # say838
label dhall_s5: # - # IF ~  Global("Dhall","GLOBAL",0)
    nr 'Písař vypadá velice staře… jeho kůže je vrásčitá a má barvu starého pergamenu. Šedé oči jsou vsazeny do hranatého obličeje a velká bílá bradka mu splývá po šatech jako vodopád. Jeho dech je trhaný a nepravidelný, ale ani tak občasné záchvaty kašle nezpomalují pohyb jeho psacího brku.{#dhall_s5_1}'

    menu:
        '"Zdravím."{#dhall_s5_r839}' if dhallLogic.r839_condition():
            # a14 # r839
            jump morte_s102  # EXTERN

        '"Zdravím."{#dhall_s5_r835}' if dhallLogic.r835_condition():
            # a15 # r835
            jump dhall_s7

        '"Zdravím."{#dhall_s5_r5058}' if dhallLogic.r5058_condition():
            # a16 # r5058
            jump dhall_s6

        'Nechej starého písaře být.{#dhall_s5_r5060}':
            # a17 # r5060
            jump dhall_dispose


# s6 # say841
label dhall_s6: # from 5.2
    nr 'Jeho šedé oči tě přejely, když zvedl hlavu od své knihy. "Obával jsem se, že to budeš ty, kdo je zodpovědný za útoky tady v Márnici. Tohle…" lehce zakašlal, pak se mu podařilo nadechnout se. "Tohle není pro tebe cesta, jak vstoupit do dalšího života."{#dhall_s6_1}'

    menu:
        '"Jenom sem se bránil. Mám pro tebe nějaké otázky než se ze mne stane vzácnost…"{#dhall_s6_r842}' if dhallLogic.r842_condition():
            # a18 # r842
            jump dhall_s9

        '"Sdílet trochu smrti s vámi zbožňovateli-mrtvol není takový zločin, co se mne týče. A teď mám na tebe nějaké otázky…"{#dhall_s6_r843}' if dhallLogic.r843_condition():
            # a19 # r843
            $ dhallLogic.r843_action()
            jump dhall_s9

        '"Znáš mě?"{#dhall_s6_r5062}' if dhallLogic.r5062_condition():
            # a20 # r5062
            jump dhall_s44

        '"Sbohem."{#dhall_s6_r5063}':
            # a21 # r5063
            jump dhall_dispose


# s7 # say844
label dhall_s7: # from 5.1
    nr 'Písař přestal psát do knihy před ním a pak se na tebe podíval. Jeho oči jsou jako dva hřebíky zaražené do lebky. "Tak…" Jeho hlas zní unaveně, jako kdyby tu samou věc opakoval již mnohokrát předtím. "Probudil ses ze svého spánku a vrátil ses do svého snu." Pokračuje uctivě dál. "Vítej… znovu, Neklidný."{#dhall_s7_1}'

    menu:
        '"„Neklidný?“ Ty mne snad znáš?"{#dhall_s7_r845}':
            # a22 # r845
            jump dhall_s44


# s8 # say851
label dhall_s8: # from 22.0
    nr '"Musíš pochopit. Tvá existence je pro nás rouháním. Mnoho členů z našeho společenství by nejraděj poručilo tě zpopelnit… kdyby věděli o tvém strádání."{#dhall_s8_1}'

    menu:
        '"Jsi Spalovač. Ale nevypadá to, že bys mi udělal tu laskavost a zabil mne. Proč ne?"{#dhall_s8_r940}':
            # a23 # r940
            jump dhall_s23

        '"Řekni mi něco více o Márnici."{#dhall_s8_r911}':
            # a24 # r911
            jump dhall_s32

        '"Měl bych nějaké další otázky…"{#dhall_s8_r913}':
            # a25 # r913
            jump dhall_s9

        '"Slyšel jsem dost. Sbohem, Dhalle."{#dhall_s8_r6038}':
            # a26 # r6038
            jump dhall_s11


# s9 # say852
label dhall_s9: # from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
    nr '"Dobře. Co si tedy přeješ vědět?"{#dhall_s9_1}'

    menu:
        '"Věděl si, ze ve východních komnatách se pohybuje někdo, kdo se svým převlekem maskuje jako zombie?"{#dhall_s9_r854}' if dhallLogic.r854_condition():
            # a27 # r854
            jump dhall_s3

        '"Co je tohle za místo?"{#dhall_s9_r857}':
            # a28 # r857
            jump dhall_s10

        '"Jak jsem se sem dostal?"{#dhall_s9_r855}':
            # a29 # r855
            jump dhall_s15

        '"Můžeš mi říct, jak se odsud dostanu?"{#dhall_s9_r858}' if dhallLogic.r858_condition():
            # a30 # r858
            jump dhall_s13

        '"Víš, kdo jsem?"{#dhall_s9_r5069}':
            # a31 # r5069
            $ dhallLogic.j39460_s9_r5069_action()
            jump dhall_s21

        '"Co tady děláš?"{#dhall_s9_r5748}':
            # a32 # r5748
            jump dhall_s25

        '"Připadáš mi nemocný. Není ti dobře?"{#dhall_s9_r6065}':
            # a33 # r6065
            jump dhall_s26

        '"Nic… Sbohem, Dhalle."{#dhall_s9_r41663}':
            # a34 # r41663
            jump dhall_s11


# s10 # say859
label dhall_s10: # from 9.1
    nr '"Jsi v Márnici, Neklidný. Znovu jsi… přišel…" Předtím, než dokončí větu, dá se Dhall do úporného kašle. Po chvilce se zklidní a začne znovu při dýchání sípat. "…toto je vyčkávací místnost pro ty, kteří odejdou ze stínu tohoto života."{#dhall_s10_1}'

    menu:
        '"Řekni mi o Márnici."{#dhall_s10_r861}':
            # a35 # r861
            jump dhall_s32

        '"*Neklidný?*"{#dhall_s10_r860}':
            # a36 # r860
            jump dhall_s38

        '"Stíny tohoto života?"{#dhall_s10_r862}':
            # a37 # r862
            jump dhall_s33

        '"Znovu…? Já už jsem tu byl víckrát než jednou?"{#dhall_s10_r863}':
            # a38 # r863
            jump dhall_s14

        '"Jak jsem se sem dostal?"{#dhall_s10_r864}':
            # a39 # r864
            jump dhall_s15

        '"Měl bych nějaké další otázky…"{#dhall_s10_r865}':
            # a40 # r865
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s10_r866}':
            # a41 # r866
            jump dhall_s11


# s11 # say867
label dhall_s11: # from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
    nr 'Když už se chystáš k odchodu, Dhall ti říká. "Věz toto: Nezávidím ti, Neklidný. Kdybych byl znovuzrozený jako ty, tak bych to považoval za kletbu, kterou bych nemohl nést. Musíš se s tím vyrovnat. Za nějakou dobu se sem zase vrátíš…" Dhall kašle a z jeho hrdla vychází chraptivý zvuk. "Je to úděl všech věcí složených z masa a kostí."{#dhall_s11_1}'

    menu:
        '"Snad se ještě setkáme, Dhalle."{#dhall_s11_r41564}':
            # a42 # r41564
            jump dhall_dispose


# s12 # say868
label dhall_s12: # from 2.3 2.4 42.2 42.3 43.1 43.2
    nr '"Nepochybně jsou, ale já neznám jejich jména a ani nevím, kde leží. Mnoho takových, jako jsi ty, sem přišlo způsobem, kterým se sem dostává většina těl. Pár jich přežilo. " Dhall ukazuje na tebe. "Všichni mrtví přicházejí sem. Někteří museli jednou přijít s tebou."{#dhall_s12_1}'

    menu:
        '"Kde je ta žena, o které ses zmínil?"{#dhall_s12_r870}' if dhallLogic.r870_condition():
            # a43 # r870
            jump dhall_s42

        '"Nevidím nic špatného v tvých důvodech. Měl bych nějaké další otázky…"{#dhall_s12_r871}':
            # a44 # r871
            jump dhall_s9

        '"Podívám se po nich. Možná mi můžou pomoct zažehnout jiskřičku v paměti. Sbohem."{#dhall_s12_r872}':
            # a45 # r872
            jump dhall_s11


# s13 # say875
label dhall_s13: # from 9.3
    nr '"Hmmm… vstupní brána je zcela jistě východ, ale tam zase nedovolí projít nikomu jinému než Spalovači…" Dhall se pustil do úporného kašle a po chvilce pokračuje. "…jeden ze strážných u vstupní brány má k bráně i klíč, ale určitě ti ji neotevře, pokud nebudeš hodně přesvědčivý."{#dhall_s13_1}'

    menu:
        '"Aha. Měl bych nějaké další otázky…"{#dhall_s13_r876}':
            # a46 # r876
            jump dhall_s9

        '"Pak tedy sbohem, Dhalle."{#dhall_s13_r877}':
            # a47 # r877
            jump dhall_dispose


# s14 # say878
label dhall_s14: # from 10.3
    nr '"Ano, *znovu.* Už jsi sem byl přinesen mnohokrát, Neklidný. Doufal jsem, že tentokrát to bylo naposledy, když jsem uvážil ta hrozná poranění na tvém těle." Nadechne se. "Kdy se konečně vzdáš svého vzteku a odejdeš ze stínů tohoto života?"{#dhall_s14_1}'

    menu:
        '"*Neklidný?*"{#dhall_s14_r880}':
            # a48 # r880
            jump dhall_s38

        '"Zranění?"{#dhall_s14_r881}':
            # a49 # r881
            jump dhall_s34

        '"Stíny života?"{#dhall_s14_r883}':
            # a50 # r883
            jump dhall_s33

        '"Řekni mi něco víc o Márnici."{#dhall_s14_r879}':
            # a51 # r879
            jump dhall_s32

        '"Mám ještě jiné otázky…"{#dhall_s14_r5751}':
            # a52 # r5751
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s14_r5752}':
            # a53 # r5752
            jump dhall_s11


# s15 # say885
label dhall_s15: # from 9.2 10.4 32.5
    nr 'Dhall si pohrdavě odfrkne, jako kdyby se to protivilo jeho mysli. "Tvoje rezavá kára tě dopravila do Márnice, Neklidný. Měl bys pomyslit na to, že v tom voze, co tě sem dovezl, jsi ležel jako král na povrchu na to, kolik lidí uvnitř smrdělo a hnilo."{#dhall_s15_1}'

    menu:
        '"Přijel jsem sem vozem?"{#dhall_s15_r886}':
            # a54 # r886
            $ dhallLogic.j39463_s15_r886_action()
            jump dhall_s16

        '"Řekni mi něco více o Márnici."{#dhall_s15_r887}':
            # a55 # r887
            jump dhall_s32

        '"Měl bych nějaké další otázky…"{#dhall_s15_r888}':
            # a56 # r888
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s15_r889}':
            # a57 # r889
            jump dhall_s11


# s16 # say890
label dhall_s16: # from 15.0
    nr '"Ano… tvé tělo bylo někde mezi hromadou zbytků mrtvých těl." Dhalla přepadl ostrý nával kašle, po minutě konečně znovu chytil dech. "Tvůj „nosič“ Pharod byl, ostatně jako vždy, potěšen, že dostal zase pár měďáků za odvezení hromady z vás před brány Márnice."{#dhall_s16_1}'

    menu:
        '"Kdo je tenhle Pharod?"{#dhall_s16_r891}' if dhallLogic.r891_condition():
            # a58 # r891
            jump dhall_s17

        '"To zní, jako bys Pharoda neměl moc v lásce."{#dhall_s16_r892}' if dhallLogic.r892_condition():
            # a59 # r892
            jump dhall_s35

        '"Řekni mi něco více o Márnici."{#dhall_s16_r893}':
            # a60 # r893
            jump dhall_s32

        '"Měl bych nějaké další otázky…"{#dhall_s16_r894}':
            # a61 # r894
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s16_r5753}':
            # a62 # r5753
            jump dhall_s11


# s17 # say895
label dhall_s17: # from 16.0
    nr '"On je… sběrač mrtvých." Dhall se zhluboka nadechne a pak pokračuje. "Máme v našem městě takové lidi, kteří odklízejí mrtvá těla těch, kdož prošli cestou Pravé smrti, a přináší je k nám, aby jejich ostatky mohly být důstojně pohřbeny."{#dhall_s17_1}'

    menu:
        '"Kde můžu najít tohohle „Pharoda?“"{#dhall_s17_r897}':
            # a63 # r897
            jump dhall_s18

        '"To zní jako bys Pharoda neměl moc v lásce."{#dhall_s17_r898}' if dhallLogic.r898_condition():
            # a64 # r898
            jump dhall_s35

        '"Řekni mi něco více o Márnici."{#dhall_s17_r899}':
            # a65 # r899
            jump dhall_s32

        '"Aha. Mám ještě jiné otázky…"{#dhall_s17_r5754}':
            # a66 # r5754
            jump dhall_s9

        '"Tak to půjdu najít toho Pharoda. Sbohem, Dhalle."{#dhall_s17_r6031}':
            # a67 # r6031
            jump dhall_s19


# s18 # say900
label dhall_s18: # from 17.0 29.1 31.0 35.1 36.1
    nr '"Jestli události půjdou tak jak mají, Neklidný, je tu mnohem větší šance, že tě Pharod najde a znovu přinese ještě předtím, než ty zjistíš, v které stoce momentálně Pharod žije."{#dhall_s18_1}'

    menu:
        '"Nicméně musím ho najít."{#dhall_s18_r902}':
            # a68 # r902
            jump dhall_s19

        '"Řekni mi něco více o Márnici."{#dhall_s18_r903}':
            # a69 # r903
            jump dhall_s32

        '"Aha. Měl bych nějaké další otázky…"{#dhall_s18_r904}':
            # a70 # r904
            jump dhall_s9

        '"Mám pocit, že se naše cesty ještě zkříží. Sbohem, Dhalle."{#dhall_s18_r5755}':
            # a71 # r5755
            jump dhall_s19


# s19 # say901
label dhall_s19: # from 17.4 18.0 18.3 29.3 31.2
    nr 'Do Dhallova tónu se vkradlo lehké varování. "Nehledej Pharoda, Neklidný. Jsem si jistý, že kruh by se opět uzavřel, s tebou bez žádných zkušeností a Pharodem o pár měďáků bohatším. Přijmi smrt, Neklidný. Nezachovávej na věky svůj kruh utrpení."{#dhall_s19_1}'

    menu:
        '"*Musím* ho najít. Víš, kde ho najdu?"{#dhall_s19_r906}':
            # a72 # r906
            $ dhallLogic.j39464_s19_r906_action()
            jump dhall_s20

        '"Řekni mi něco více o Márnici."{#dhall_s19_r905}':
            # a73 # r905
            jump dhall_s32

        '"Měl bych nějaké další otázky…"{#dhall_s19_r907}':
            # a74 # r907
            jump dhall_s9

        '"Už se s tebou nemůžu dál bavit. Sbohem, Dhalle."{#dhall_s19_r5756}':
            # a75 # r5756
            jump dhall_s11


# s20 # say908
label dhall_s20: # from 19.0
    nr 'Dhall se na chvíli odmlčí. Když konečně začne mluvit, vypadá to, že tak činí neochotně. "Nevím, v jakém kanálu teď zrovna Pharod bydlí, ale měl bys ho najít někde za branami Márnice, v Úlu. Snad tam někdo bude vědět, kde ho najdeš."{#dhall_s20_1}'

    menu:
        '"To zní, jako bys neměl Pharoda moc v lásce."{#dhall_s20_r910}' if dhallLogic.r910_condition():
            # a76 # r910
            jump dhall_s35

        '"Můžeš mi říct něco více o Márnici?"{#dhall_s20_r909}':
            # a77 # r909
            jump dhall_s32

        '"Děkuju ti. Mám ještě jiné otázky…"{#dhall_s20_r5757}':
            # a78 # r5757
            jump dhall_s9

        '"Půjdu tam a poptám se. Sbohem."{#dhall_s20_r6030}':
            # a79 # r6030
            jump dhall_s11


# s21 # say914
label dhall_s21: # from 9.4
    nr '"Já o tobě vím opravdu málo, Neklidný. O něco více vím o těch, kdož putovali s tebou, a kteří jsou nyní v našem držení." Dhall se nadechne. "Žádám tě, aby se k tobě už nikdo do party nepřipojoval, Neklidný -- kam půjdeš ty, půjde i neštěstí. Nes si své břímě úplně sám."{#dhall_s21_1}'

    menu:
        '"Jsou tu i ostatní, kteří se mnou putovali? Jsou tady?"{#dhall_s21_r921}':
            # a80 # r921
            $ dhallLogic.j39461_s21_r921_action()
            jump dhall_s2

        '"Měl bych nějaké další otázky…"{#dhall_s21_r922}':
            # a81 # r922
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s21_r923}':
            # a82 # r923
            jump dhall_s11


# s22 # say915
label dhall_s22: # from 47.0
    nr 'Dhall si povzdychne. "Říká se, že existují duše, které nikdy nedocílí Pravé smrti. Smrt je opustila a jejich jména nikdy nebudou zapsána do Knihy mrtvých. Probudit se ze smrti, jako se to stalo tobě… naznačuje, že jsi jednou z těchto duší. Tvá existence není v našem společenství vítána."{#dhall_s22_1}'

    menu:
        '"„Není vítána?“ To nezní, jako bych se zrovna nacházel v dobré situaci."{#dhall_s22_r917}':
            # a83 # r917
            jump dhall_s8

        '"Aha. Řekni mi něco více o Márnici."{#dhall_s22_r918}':
            # a84 # r918
            jump dhall_s32

        '"Měl bych nějaké další otázky…"{#dhall_s22_r919}':
            # a85 # r919
            jump dhall_s9

        '"Myslím, že jsem slyšel dost. Sbohem, Dhalle."{#dhall_s22_r920}':
            # a86 # r920
            jump dhall_s11


# s23 # say924
label dhall_s23: # from 8.0
    nr '"Protože vnutit ti naši pravdu není správné. Musíš se vzdát těchto stínů života sám, a to ne proto, že jsme tě donutili." Dhall vypadá, jako by měl propadnout dalšímu návalu kašle, ale dokázal jej s vypětím sil zadržet. "Dokud budu zastávat tento post, budu chránit tvé právo najít skutečnou pravdu."{#dhall_s23_1}'

    menu:
        '"Jaké je tvoje místo tady?"{#dhall_s23_r927}':
            # a87 # r927
            jump dhall_s25

        '"Řekni mi něco více o Márnici."{#dhall_s23_r928}':
            # a88 # r928
            jump dhall_s32

        '"Dobře. Měl bych nějaké další otázky…"{#dhall_s23_r925}':
            # a89 # r925
            jump dhall_s9

        '"Slyšel jsem dost. Sbohem, Dhalle."{#dhall_s23_r6039}':
            # a90 # r6039
            jump dhall_s11


# s24 # say929
label dhall_s24: # from 25.0
    nr '"Jsem písař, co dělá seznamy schránek, které přicházejí do našich hal, Neklidný." Dhall se dal do úporného kašle a pak se uklidnil. "Znám pouze obličeje těch, kteří leží na našich kamenných deskách. Tajemství tvé existence je bezpečně uloženo u mne."{#dhall_s24_1}'

    menu:
        '"Řekni mi více o Márnici."{#dhall_s24_r1305}':
            # a91 # r1305
            jump dhall_s32

        '"Mám ještě jiné otázky…"{#dhall_s24_r6041}':
            # a92 # r6041
            jump dhall_s9

        '"Vypadá to, že ti něco dlužím. Sbohem, Dhalle."{#dhall_s24_r6042}':
            # a93 # r6042
            jump dhall_s11


# s25 # say930
label dhall_s25: # from 9.5 23.0
    nr '"Jsem písař, co dělá seznamy všech schránek, které přicházejí do Márnice." Dhall si znovu odkašlal, pak se zhluboka nadýchl. "Dokud Márnicí poteče proud mrtvých těl, budu zastávat toto místo."{#dhall_s25_1}'

    menu:
        '"Říkal jsi, že jsem tu byl víckrát než jednou. Jak to, že mne tedy Spalovači nepoznali?"{#dhall_s25_r931}' if dhallLogic.r931_condition():
            # a94 # r931
            $ dhallLogic.j39462_s25_r931_action()
            jump dhall_s24

        '"Řekni mi něco více o Márnici."{#dhall_s25_r932}':
            # a95 # r932
            jump dhall_s32

        '"Aha. Měl bych nějaké další otázky…"{#dhall_s25_r933}':
            # a96 # r933
            jump dhall_s9

        '"Dobrá tedy. Sbohem, Dhalle."{#dhall_s25_r6040}':
            # a97 # r6040
            jump dhall_s11


# s26 # say934
label dhall_s26: # from 9.6
    nr '"Nyní jsem blízko Pravé smrti, Neklidný. Nebude to dlouho trvat a já se dostanu za Nekonečnou hranici, kde konečně najdu klid, který hledám. Už jsem moc unavený…" Dhall se hluboce nadechl. "Sféry už nebude zajímat někdo takový, jako jsem já."{#dhall_s26_1}'

    menu:
        '"Nekonečná hranice?"{#dhall_s26_r935}':
            # a98 # r935
            jump dhall_s41

        '"Víš to jistě? Možná bych ti mohl nějakým způsobem pomoct."{#dhall_s26_r936}':
            # a99 # r936
            $ dhallLogic.r936_action()
            jump dhall_s27

        '"Měl bych nějaké další otázky…"{#dhall_s26_r937}':
            # a100 # r937
            jump dhall_s9

        '"Sbohem, Dhalle. "{#dhall_s26_r960}':
            # a101 # r960
            jump dhall_s11


# s27 # say938
label dhall_s27: # from 26.1
    nr '"Nepřeji si žít věčně nebo žít znovu, Neklidný. Nesnesl bych to."{#dhall_s27_1}'

    menu:
        '"Dobře. Měl bych nějaké další otázky…"{#dhall_s27_r1303}':
            # a102 # r1303
            jump dhall_s9

        '"Tak to bude vše. Sbohem, Dhalle."{#dhall_s27_r1304}':
            # a103 # r1304
            jump dhall_s11


# s28 # say939
label dhall_s28: # from 2.2 42.1
    nr '"Ona s tebou *mluvila*?" Dhallův hlas zašeptá. "Máš snad *horečku*, Neklidný? Ona dosáhla Pravé smrti a přešla hranici ještě před tebou."{#dhall_s28_1}'

    menu:
        '"Mluvila se mnou, Dhalle. Její duše tu přebývá."{#dhall_s28_r981}':
            # a104 # r981
            jump dhall_s30

        '"Snad bych si to vybavil. Měl bych nějaké další otázky…"{#dhall_s28_r982}':
            # a105 # r982
            jump dhall_s9

        '"Nejsem si jist, zdali dosáhla Pravé smrti. Sbohem, Dhalle."{#dhall_s28_r873}':
            # a106 # r873
            jump dhall_s11


# s29 # say941
label dhall_s29: # from 36.0
    nr 'Dhall se pozastavil. "Nejspíše. Postrádáš něco… zvláště cenného?" Jeho hlas poklesl a zamračil se. "Pharod nedělá výjimky, vezme si od tebe všechno, co není pevně spojeno k tvému tělu a někdy ani dokonce tohle nestačí k uspokojení jeho nenasytné duše."{#dhall_s29_1}'

    menu:
        '"Postrádám deník."{#dhall_s29_r942}' if dhallLogic.r942_condition():
            # a107 # r942
            jump dhall_s31

        '"Hmmm. Víš, kde bych mohl najít Pharoda?"{#dhall_s29_r943}' if dhallLogic.r943_condition():
            # a108 # r943
            jump dhall_s18

        '"Měl bych nějaké další otázky…"{#dhall_s29_r944}':
            # a109 # r944
            jump dhall_s9

        '"Možná bych si měl promluvit s Pharodem. Sbohem, Dhalle."{#dhall_s29_r6026}' if dhallLogic.r6026_condition():
            # a110 # r6026
            jump dhall_s19

        '"Aha. Sbohem, Dhalle."{#dhall_s29_r874}' if dhallLogic.r874_condition():
            # a111 # r874
            jump dhall_s11


# s30 # say945
label dhall_s30: # from 28.0
    nr 'Dhall nakreslil před sebou prstem půlkruh. "To je nemocná duše, Neklidný. Modlím se, aby se ti ten rozhovor zdál… ale teď se obávám, že se ti nezdál."{#dhall_s30_1}'

    menu:
        '"Snad jsem si to vybavil. Měl bych nějaké další otázky."{#dhall_s30_r946}':
            # a112 # r946
            jump dhall_s9

        '"Snad si o tom více promluvíme později. Sbohem, Dhalle."{#dhall_s30_r947}':
            # a113 # r947
            jump dhall_s11


# s31 # say850
label dhall_s31: # from 29.0
    nr '"Deník? Jestli to mělo nějakou cenu, pak to zcela určitě uvízlo v rukou Pharoda."{#dhall_s31_1}'

    menu:
        '"Kde bych mohl najít toho Pharoda?"{#dhall_s31_r948}' if dhallLogic.r948_condition():
            # a114 # r948
            jump dhall_s18

        '"Aha. Měl bych nějaké další otázky…"{#dhall_s31_r949}':
            # a115 # r949
            jump dhall_s9

        '"Tak to ho vyhledám. Sbohem, Dhalle."{#dhall_s31_r6027}' if dhallLogic.r6027_condition():
            # a116 # r6027
            jump dhall_s19

        '"Aha. Sbohem, Dhalle."{#dhall_s31_r6066}' if dhallLogic.r6066_condition():
            # a117 # r6066
            jump dhall_s11


# s32 # say950
label dhall_s32: # from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
    nr '"Je to místo, kam jsou přinášeni mrtví, aby byli pohřbeni nebo zpopelněni. Je to naše zodpovědnost coby Spalovačů, postarat se o mrtvé, o ty, kteří opustili tento stín života a došli cestou k Pravé smrti." Dhallův hlas poklesl. "Tvá zranění jsou asi mnohem horší, když nepoznáváš tohle místo. Vždyť je tohle skoro tvůj domov."{#dhall_s32_1}'

    menu:
        '"Stín života?"{#dhall_s32_r951}':
            # a118 # r951
            jump dhall_s33

        '"Pravé smrti?"{#dhall_s32_r953}':
            # a119 # r953
            $ dhallLogic.r953_action()
            jump dhall_s48

        '"Spalovači?"{#dhall_s32_r954}':
            # a120 # r954
            jump dhall_s47

        '"Sigil?"{#dhall_s32_r955}':
            # a121 # r955
            jump dhall_s37

        '"Zranění?"{#dhall_s32_r956}':
            # a122 # r956
            jump dhall_s34

        '"Jak jsem se sem dostal?"{#dhall_s32_r846}':
            # a123 # r846
            jump dhall_s15

        '"Mám ještě jiné otázky…"{#dhall_s32_r5735}':
            # a124 # r5735
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s32_r6062}':
            # a125 # r6062
            jump dhall_s11


# s33 # say957
label dhall_s33: # from 10.2 14.2 32.0 41.0 47.2 49.0
    nr '"Ano, stín. Víš, Neklidný, tento život… není skutečný. Tvůj život, můj život, to jsou stíny, jiskry toho, čím kdysi život býval. Tento „život“ je tam, kde skončíme *potom*, co zemřeme. A tady zůstaneme… uvězněni. V pasti. Dokud nedosáhneme Pravé smrti."{#dhall_s33_1}'

    menu:
        '"Pravé smrti?"{#dhall_s33_r958}':
            # a126 # r958
            $ dhallLogic.r958_action()
            jump dhall_s48

        '"Proč si myslíš, že tenhle život není skutečný?"{#dhall_s33_r959}':
            # a127 # r959
            jump dhall_s50

        '"Řekni mi víc o Márnici."{#dhall_s33_r5736}':
            # a128 # r5736
            jump dhall_s32

        '"Aha. Mám ještě jiné otázky…"{#dhall_s33_r5737}':
            # a129 # r5737
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s33_r5738}':
            # a130 # r5738
            jump dhall_s11


# s34 # say961
label dhall_s34: # from 14.1 32.4
    nr '"Ano, ta zranění, která zdobí tvé tělo… vypadají, jako by už poslala nějakého muže cestou Pravé smrti. Teď se zdá, že mnohé z těchto ran se již uzdravily." Dhall se nahlas na chvíli rozkašlal a pak se uklidnil. "Ale toto jsou pouze povrchová zranění."{#dhall_s34_1}'

    menu:
        '"Pouze povrchová zranění? Co tím máš na mysli?"{#dhall_s34_r1301}':
            # a131 # r1301
            $ dhallLogic.j39470_s34_r1301_action()
            jump dhall_s53

        '"Řekni mi více o Márnici."{#dhall_s34_r1302}':
            # a132 # r1302
            jump dhall_s32

        '"Mám ještě jiné otázky…"{#dhall_s34_r5746}':
            # a133 # r5746
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s34_r5747}':
            # a134 # r5747
            jump dhall_s11


# s35 # say962
label dhall_s35: # from 16.1 17.1 20.0
    nr '"Je tu několik lidí, kterých si vážím, Neklidný." Dhall se úporně rozkašle a pak se zklidní. "Pharod není jedním z nich. Nosí svůj zkažený věhlas jako jakýsi odznak čestnosti a přitom volně okrádá mrtvé. Je to vrchní přemísťovač, křižující darebák toho nejnižšího řádu."{#dhall_s35_1}'

    menu:
        '"„Vrchní přemísťovač?“"{#dhall_s35_r963}':
            # a135 # r963
            jump dhall_s36

        '"Víš, kde bych mohl najít Pharoda?"{#dhall_s35_r964}' if dhallLogic.r964_condition():
            # a136 # r964
            jump dhall_s18

        '"Aha. Měl bych nějaké další otázky…"{#dhall_s35_r965}':
            # a137 # r965
            jump dhall_s9

        '"Povzbudivé. Sbohem, Dhalle."{#dhall_s35_r6028}':
            # a138 # r6028
            jump dhall_s11


# s36 # say966
label dhall_s36: # from 35.0
    nr '"Vrchní přemísťovač…" Dhall se rozkašle. "…no, zloděj. Všichni mrtví, které Pharod přinese k našim zdím, už přijdou oloupeni o tu trochu, co měli u sebe, což je připraví i o důstojnost, kterou měli za svého skutečného života. Pharod si vezme cokoliv, co může vydolovat z jejich ztuhlých prstů."{#dhall_s36_1}'

    menu:
        '"Vzal si ten Pharod taky něco ode *mne?*"{#dhall_s36_r967}':
            # a139 # r967
            jump dhall_s29

        '"Víš, kde bych mohl najít Pharoda?"{#dhall_s36_r968}' if dhallLogic.r968_condition():
            # a140 # r968
            jump dhall_s18

        '"Aha. Měl bych nějaké další otázky…"{#dhall_s36_r969}':
            # a141 # r969
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s36_r6029}':
            # a142 # r6029
            jump dhall_s11


# s37 # say970
label dhall_s37: # from 32.3
    nr '"Sigil je naše krásné město, Neklidný."{#dhall_s37_1}'

    menu:
        '"Řekni mi něco více o Márnici."{#dhall_s37_r971}':
            # a143 # r971
            jump dhall_s32

        '"Aha. Měl bych nějaké další otázky…"{#dhall_s37_r972}':
            # a144 # r972
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s37_r5758}':
            # a145 # r5758
            jump dhall_s11


# s38 # say973
label dhall_s38: # from 10.1 14.0
    nr '"Neklidný je jméno jako každé jiné…" Dhall zakašle. "Něco tě drží tady, že ano? Něco, co musí být vysvětleno, nějaký chtíč, který musí být potlačen předtím než budeš moci dosáhnout Pravé smrti?"{#dhall_s38_1}'

    menu:
        '"Pravé smrti?"{#dhall_s38_r974}':
            # a146 # r974
            $ dhallLogic.r974_action()
            jump dhall_s48

        '"Řekni mi něco více o Márnici."{#dhall_s38_r975}':
            # a147 # r975
            jump dhall_s32

        '"Mám ještě jiné otázky…{#dhall_s38_r5749}':
            # a148 # r5749
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s38_r5750}':
            # a149 # r5750
            jump dhall_s11


# s39 # say884
label dhall_s39: # -
    nr '"Uděláš to, co jsi udělal vždycky, Neklidný. Najdeš toho popudlivého srabáckého blbce, Pharoda Červovlasa, a požádáš ho o to, co ti vzal. A pak znovu začneš marně pátrat, budeš se pokoušet plnit nesmyslné úkoly, sbírat ty zbytečné věci a nakonec tě někdo zase sejme a ty se ocitneš tady. Ušetři si čas a promluv si teď se mnou, aspoň nebudeme muset tuhle konverzaci muset opakovat, až se ti zase ztratí paměť."{#dhall_s39_1}'

    menu:
        '"Měl bych nějaké další otázky…"{#dhall_s39_r976}':
            # a150 # r976
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s39_r977}':
            # a151 # r977
            jump dhall_dispose


# s40 # say978
label dhall_s40: # - # IF ~  Global("Dhall","GLOBAL",1)
    nr 'Dhall na tebe prohlédl, když ses přiblížil." Tak ses vrátil…" Dhall se těžce nadýchne, najednou se hlasitě rozkašle. Po chvíli se uklidní a začne znovu těžce oddychovat. "… znovu tě vítám, Neklidný."{#dhall_s40_1}'

    menu:
        '"Měl bych na tebe nějaké další otázky, Dhalle."{#dhall_s40_r979}':
            # a152 # r979
            jump dhall_s9

        '"Nevadí. Sbohem."{#dhall_s40_r980}':
            # a153 # r980
            jump dhall_dispose


# s41 # say983
label dhall_s41: # from 26.0 52.0
    nr '"Hranice mezi stínem života a Pravou smrtí."{#dhall_s41_1}'

    menu:
        '"Stín života?"{#dhall_s41_r984}':
            # a154 # r984
            jump dhall_s33

        '"Pravé smrti?"{#dhall_s41_r985}':
            # a155 # r985
            $ dhallLogic.r985_action()
            jump dhall_s48

        '"Řekni mi víc o Márnici."{#dhall_s41_r5739}':
            # a156 # r5739
            jump dhall_s32

        '"Aha. Mám ještě jiné otázky…"{#dhall_s41_r5740}':
            # a157 # r5740
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s41_r5741}':
            # a158 # r5741
            jump dhall_s11


# s42 # say5075
label dhall_s42: # from 2.0 12.0 43.0
    nr '"V severovýchodní pamětní hale o patro níž. Podívej se na tamní katafalky… na některé desce by mělo být její jméno. Možná že to ti osvěží paměť."{#dhall_s42_1}'

    menu:
        '"Nevím. Ani si nepamatuju, že bych cestoval s nějakou ženou."{#dhall_s42_r5076}' if dhallLogic.r5076_condition():
            # a159 # r5076
            jump dhall_s43

        '"No, ona tvrdí, že mě zná, ale já si na ni nepamatuju."{#dhall_s42_r5077}' if dhallLogic.r5077_condition():
            # a160 # r5077
            jump dhall_s28

        '"Říkal jsi, že byli i další. Kdo další je tady?"{#dhall_s42_r5078}' if dhallLogic.r5078_condition():
            # a161 # r5078
            jump dhall_s12

        '"Říkal jsi, že byli i další. Kdo další je tady?"{#dhall_s42_r5079}' if dhallLogic.r5079_condition():
            # a162 # r5079
            jump dhall_s12

        '"Možná se po ní podívám. Než půjdu, chtěl bych se tě ještě na pár věcí zeptat…"{#dhall_s42_r6067}':
            # a163 # r6067
            jump dhall_s9

        '"Půjdu do haly dolů a zkusím najít její tělo."{#dhall_s42_r6068}':
            # a164 # r6068
            jump dhall_s11


# s43 # say5080
label dhall_s43: # from 2.1 42.0
    nr 'Dhall na to neodpověděl. Jenom na tebe tiše zírá.{#dhall_s43_1}'

    menu:
        '"Kde ji můžu najít?"{#dhall_s43_r5081}' if dhallLogic.r5081_condition():
            # a165 # r5081
            jump dhall_s42

        '"Předtím jsi říkal, že tady byli se mnou pohřbení další, kteří cestovali se mnou. Kde jsou?"{#dhall_s43_r5082}' if dhallLogic.r5082_condition():
            # a166 # r5082
            jump dhall_s12

        '"Předtím jsi říkal, že tady byli se mnou pohřbení další, kteří cestovali se mnou. Kde jsou?"{#dhall_s43_r5083}' if dhallLogic.r5083_condition():
            # a167 # r5083
            jump dhall_s12

        '"Mám pro tebe další otázky…"{#dhall_s43_r6069}':
            # a168 # r6069
            jump dhall_s9

        '"Sbohem tedy."{#dhall_s43_r6070}':
            # a169 # r6070
            jump dhall_s11


# s44 # say840
label dhall_s44: # from 1.0 6.2 7.0
    nr '"Znát tě? Já…" v písařově hlase je znát trochu zahořklosti, když mluví. "*Nikdy* jsem tě neznal, Neklidný. Ne víc než jak jsi ty znal sám sebe." Na chvíli se odmlčí. "Co se tebe týče, tys zapomněl, že ano?"{#dhall_s44_1}'

    menu:
        '"*Kdo* jsi?"{#dhall_s44_r1327}':
            # a170 # r1327
            $ dhallLogic.r1327_action()
            jump dhall_s45


# s45 # say5728
label dhall_s45: # from 44.0
    nr '"Jako vždy, otázka. A špatná otázka, jako vždy." Lehce se uklonil, ale pohyb v něm vyvolal záchvat kašle. "Já…" Na chvíli se odmlčel a snaží se dýchat pravidelně. "Já… jsem Dhall."{#dhall_s45_1}'

    menu:
        '"Možná bys mi mohl odpovědět na pár otázek, Dhalle…"{#dhall_s45_r5731}':
            # a171 # r5731
            $ dhallLogic.j39459_s45_r5731_action()
            jump dhall_s9

        '"Na tohle nemám čas. Sbohem."{#dhall_s45_r5732}':
            # a172 # r5732
            $ dhallLogic.j39459_s45_r5732_action()
            jump dhall_s46


# s46 # say5730
label dhall_s46: # from 45.1
    nr '"Dobrá tedy, Neklidný." Dhall přikývl. "Ale myslím si, že v tomto případě není čas tvým nepřítelem." Zvedl své pero. "Až si budeš chtít znovu promluvit, budu zde."{#dhall_s46_1}'

    menu:
        '"Snad se ještě uvidíme. Sbohem."{#dhall_s46_r40005}':
            # a173 # r40005
            jump dhall_dispose


# s47 # say847
label dhall_s47: # from 32.2
    nr '"My Spalovači jsme společenstvím, které sdružuje ty z lidí, kteří jsou schopni rozpoznat klam tohoto života. Očekáváme další život a pomáháme ostatním na jejich cestě."{#dhall_s47_1}'

    menu:
        '"Možná bys mi mohl vysvětlit, proč mě chtějí Spalovači zabít."{#dhall_s47_r6032}' if dhallLogic.r6032_condition():
            # a174 # r6032
            jump dhall_s22

        '"Pravá smrt?"{#dhall_s47_r6033}':
            # a175 # r6033
            $ dhallLogic.r6033_action()
            jump dhall_s48

        '"Stín, který je tento život?"{#dhall_s47_r6034}':
            # a176 # r6034
            jump dhall_s33

        '"Řekni  mi víc o Márnici."{#dhall_s47_r6035}':
            # a177 # r6035
            jump dhall_s32

        '"Mám pro tebe další otázky…"{#dhall_s47_r6036}':
            # a178 # r6036
            jump dhall_s9

        '"Sbohem tedy."{#dhall_s47_r6037}':
            # a179 # r6037
            jump dhall_s11


# s48 # say848
label dhall_s48: # from 32.1 33.0 38.0 41.1 47.1
    nr '"Pravá smrt je nebytí. Je to stav postrádající smysl, city, hněv." Dhall si odkašlal, pak se nadechl. "Stav nevinnosti."{#dhall_s48_1}'

    menu:
        '"To zní jako konec, zapomnění, nicota. Proč by to někdo chtěl?"{#dhall_s48_r6043}':
            # a180 # r6043
            jump dhall_s49

        '"Oh. Můžeš mi říct víc o Márnici?"{#dhall_s48_r6044}':
            # a181 # r6044
            jump dhall_s32

        '"Já… Aha. Mám další otázky."{#dhall_s48_r6045}':
            # a182 # r6045
            jump dhall_s9

        '"Už musím jít. Sbohem, Dhalle."{#dhall_s48_r6046}':
            # a183 # r6046
            jump dhall_s11


# s49 # say849
label dhall_s49: # from 48.0
    nr '"Je to horší než zůstat ve stínu toho života, který už jsem jednou zažil? To si nemyslím."{#dhall_s49_1}'

    menu:
        '"Stín života?"{#dhall_s49_r6047}':
            # a184 # r6047
            jump dhall_s33

        '"Řekni mi víc o Márnici."{#dhall_s49_r6048}':
            # a185 # r6048
            jump dhall_s32

        '"Já… Aha. Mám další otázky."{#dhall_s49_r6049}':
            # a186 # r6049
            jump dhall_s9

        '"Už musím jít. Sbohem, Dhalle."{#dhall_s49_r6050}':
            # a187 # r6050
            jump dhall_s11


# s50 # say853
label dhall_s50: # from 33.1
    nr '"Co tě přivádí k myšlence, že *je* tento život skutečný? Podívej se do sebe. Necítíš, že tam něco chybí?" Dhall potřásl hlavou. "Toto je očistec. Zde je jenom žal. Neštěstí. Trápení. To nejsou prvky, které tvoří „život.“ Jsou to části klece, která nás zadržuje v tomto stínu."{#dhall_s50_1}'

    menu:
        '"Myslím, že tě dostal tvůj fatalismus. Ty elementy jsou částí života, ale ne celkem."{#dhall_s50_r6051}':
            # a188 # r6051
            $ dhallLogic.r6051_action()
            jump dhall_s51

        '"Vězní nás? Jak?"{#dhall_s50_r6052}':
            # a189 # r6052
            jump dhall_s51

        '"Dost filozofování. Co mají všechny ty řeči společné s mým probuzením tady?"{#dhall_s50_r6053}':
            # a190 # r6053
            $ dhallLogic.r6053_action()
            jump dhall_s51


# s51 # say5733
label dhall_s51: # from 50.0 50.1 50.2
    nr 'Dhall zavrtěl hlavou. "Vášně mají váhu, moc. Mnozí jsou jimi připoutáni k tomuto stínu života. Dokud se někdo drží emocí, bude se neustále znovuoživovat v tomto „životě,“ stále trpět, nikdy nepoznaje čistotu Pravé Smrti."{#dhall_s51_1}'

    menu:
        '"Já… Aha. A jak se dá uniknout tomu cyklu ožívání a dosáhnout té… Pravé Smrti?"{#dhall_s51_r6054}':
            # a191 # r6054
            jump dhall_s52

        '"Řekni mi víc o Márnici."{#dhall_s51_r6055}':
            # a192 # r6055
            jump dhall_s32

        '"Mám ještě jiné otázky…"{#dhall_s51_r6056}':
            # a193 # r6056
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s51_r6057}':
            # a194 # r6057
            jump dhall_s11


# s52 # say5734
label dhall_s52: # from 51.0
    nr '"Zruš své vášně. Zbav se touhy po citech. Až budeš doopravdy očištěn, pak cyklus ožívání skončí a dosáhneš míru." Dhall si povzdychl… zní to, jako by v jeho hrdle rachotila sama smrt. "Za těmito našimi skořápkami, za Věčnou Hranicí, leží mír, který každá duše hledá."{#dhall_s52_1}'

    menu:
        '"Věčná Hranice?"{#dhall_s52_r6058}':
            # a195 # r6058
            jump dhall_s41

        '"Řekni mi víc o Márnici."{#dhall_s52_r6059}':
            # a196 # r6059
            jump dhall_s32

        '"Mám ještě jiné otázky…"{#dhall_s52_r6060}':
            # a197 # r6060
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s52_r6061}':
            # a198 # r6061
            jump dhall_s11


# s53 # say5742
label dhall_s53: # from 34.0
    nr '"Mluvím o zraněních mysli. Zapomněl jsi mnoho, že? Možná pravá zranění zasahují mnohem hlouběji než jizvy, co zdobí tvůj povrch." Dhall znovu zakašlal. "Ale to je něco, co můžeš jistě vědět jenom ty."{#dhall_s53_1}'

    menu:
        '"Řekni mi víc o Márnici."{#dhall_s53_r5743}':
            # a199 # r5743
            jump dhall_s32

        '"Aha. Mám ještě jiné otázky…"{#dhall_s53_r5744}':
            # a200 # r5744
            jump dhall_s9

        '"Sbohem, Dhalle."{#dhall_s53_r5745}':
            # a201 # r5745
            jump dhall_s11
