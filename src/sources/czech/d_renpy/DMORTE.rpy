init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte_logic import MorteLogic
    morteLogic = MorteLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE.DLG
# ###


# s0 # say986
label morte_s0: # -
    nr '"Hej, šéfe. Seš v pořádku? Hraješ si na mrtváka nebo se jenom snažíš oblbnout Spalovače? Už jsem si v jednu chvíli fakt myslel, že seš úplně tuhej."'

    menu:
        '"Kdo jsi?"':
            # a0 # r987
            jump morte_s1

        'Ignoruj tu ukecanou lebku a prohledej místnost.':
            # a1 # r989
            jump morte_dispose

        'Zhluboka se nadýchni, zakruť hlavou a ignoruj lebku, která na tebe mluví.':
            # a2 # r988
            jump morte_dispose

        '"Jsem si jist, že máš tisíc "mouder", která chceš říct, Morte, ale já potřebuju abys zavřel klapačku a připojil se ke mně, TEĎ HNED."':
            # a3 # r17833
            $ morteLogic.r17833_action()
            jump morte_dispose


# s1 # say990
label morte_s1: # from 0.0 29.0 31.0
    nr '"Já?" Lebka vypadá pobouřeně. "Co kdybys začal *ty* první, zjizvenče? Kdo seš?"'

    menu:
        '"Já… nevím."':
            # a4 # r992
            jump morte_s2

        '"Já nevím… nemůžu si vzpomenout."':
            # a5 # r995
            jump morte_s3

        '"Já se tě ptal první, lebko."':
            # a6 # r993
            jump morte_s4

        'Ignoruj lebku a prohledej místnost.':
            # a7 # r991
            jump morte_dispose


# s2 # say997
label morte_s2: # from 1.0 4.0 5.0
    nr '"Ty nevíš, kdo seš, jo? Tos mi *měl* rovnou říct, „vyliž si, kámo.“ Dobře, to je v pohodě… předstírejme, že seš úplně mimo. Uvidím jestli jsem ve formě. Já jsem Morte. Zdravím tě, vítej a tak dále a tak dále."'

    menu:
        '"Kde to jsem, Morte?"':
            # a8 # r998
            jump morte_s6

        '"Víš, jak se odtud můžu teď dostat pryč?"' if morteLogic.r1006_condition():
            # a9 # r1006
            jump morte_s21

        '"Jak jsem se sem dostal?"':
            # a10 # r1080
            jump morte_s20

        'Ignoruj Morteho a zkontroluj místnost.':
            # a11 # r1087
            jump morte_dispose


# s3 # say999
label morte_s3: # from 1.1 4.1 5.1
    nr '"Ty si *nevzpomínáš?* To teda musela bejt noc. Doufám, žes nikoho nezranil… jmenuju se Morte. Zdravím tě, vítej a tak dále a tak dále." Na chvíli mlčí. "Řekněme, že se tě *musím* na něco zeptat: seš jeden z těch Vnímavejch co sami sebe mrzačej nebo tě někdo podaroval těmahle hezkejma jizvama?"'

    menu:
        '"Vnímavejch?"':
            # a12 # r1000
            jump morte_s12

        '"Jizvy?"':
            # a13 # r1001
            jump morte_s13

        'Ignoruj Morteho a zkontroluj místnost.':
            # a14 # r1002
            jump morte_dispose


# s4 # say1003
label morte_s4: # from 1.2
    nr '"Jo a já se tě ptal druhej. Jak se menuješ?"'

    menu:
        '"Já… nevím."':
            # a15 # r1004
            jump morte_s2

        '"Já nevím… nemůžu si vzpomenout."':
            # a16 # r1005
            jump morte_s3

        '"Ty první, lebko."':
            # a17 # r1007
            jump morte_s5

        'Ignoruj lebku a prohledej místnost.':
            # a18 # r994
            jump morte_dispose


# s5 # say1008
label morte_s5: # from 4.2
    nr '"Chlape, ty seš víc kluzkej než mokrá guma. Dobře, dobře… *budu* teda hodnej kluk… já, já sem Morte. Morte Rictusgrin. A teď mi řekni to svoje nešťastný méno?"'

    menu:
        '"Já… nevím."':
            # a19 # r1009
            jump morte_s2

        '"Já nevím… nemůžu si na nic vzpomenout."':
            # a20 # r1010
            jump morte_s3

        'Ignoruj Morteho a zkontroluj místnost.':
            # a21 # r1011
            jump morte_dispose


# s6 # say1012
label morte_s6: # from 2.0 29.1 31.1
    nr '"Teď seš v díře zvané Márnice… je to velká černá stavba připomínající svou architekturou gravidního pavouka."'

    menu:
        '"„Márnice?“ Jsem mrtvý?"':
            # a22 # r1013
            jump morte_s7

        '"Jak se odtud dostanu pryč?"' if morteLogic.r1015_condition():
            # a23 # r1015
            jump morte_s21

        'Ignoruj Morteho a zkontroluj místnost.':
            # a24 # r1085
            jump morte_dispose


# s7 # say1014
label morte_s7: # from 6.0 9.0
    nr '"No, teď to sám nevím… ale Márnice má prostě nejblíž k márnici, nic jinýho v tom šéfe nehledej. Chlapíci sem tahaj mrtvoly, jiní je pohřbívaj a spalujou a kdybys měl *opravdový* štěstí, probudil by ses jako otrok. Není to zrovna nejlepší místo na Sférách. Bejt tebou, prokopal bych se nejbližším východem ven a dal bych tomudle místu sbohem."'

    menu:
        '"Promiň… „Márnice?“ Co je tohle za místo?"':
            # a25 # r1016
            jump morte_s10

        '"Probudit se jako otrok?"':
            # a26 # r1017
            jump morte_s9

        '"Dokud ještě můžu chodit?"':
            # a27 # r1018
            jump morte_s11

        '"Říkáš, že sem lidi tahají mrtvá těla? Takhle jsem se sem dostal?"' if morteLogic.r1019_condition():
            # a28 # r1019
            jump morte_s8

        'Ignoruj Morteho a zkontroluj místnost.':
            # a29 # r1020
            jump morte_dispose


# s8 # say1021
label morte_s8: # from 7.3
    nr 'Zmlkne. "Joo, myslím, že jo. Možná si nějakej povaleč myslel, žes byl mrtvej a sebral tě z ulice. To tvoje zjizvený tělo *mě* dost zblblo… možná bys měl najít toho chlápka, co tě sem dotáhnul a zeptat se ho, ne?" Morte přikyvuje. "Sem rád, že je tvoje hlava ještě vcelku."'

    menu:
        '"Proč by mě sem někdo přivedl?"':
            # a30 # r1029
            jump morte_s14

        '"Měl bych nějaké další otázky…"':
            # a31 # r1030
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a32 # r1137
            jump morte_dispose


# s9 # say1022
label morte_s9: # from 7.1
    nr '"Joo, vypadáš naprosto rozkošně… s výjimkou použití toho smradlavýho formaldehydu a zpětnýho přišití tvý nohy, která ti upadla, je to paráda."'

    menu:
        '"Předpokládám, že jsem tady? Jsem mrtvý?"':
            # a33 # r1113
            jump morte_s7

        '"Jak vypadám? Jsem hodně zjizvený?"':
            # a34 # r1114
            jump morte_s13

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a35 # r1115
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a36 # r1116
            jump morte_dispose


# s10 # say1023
label morte_s10: # from 7.0
    nr '"No… přesně jak sem řek, Márnice. Seš v pohodě, šéfe? Nevypadáš moc dobře."'

    menu:
        '"Předpokládám, že jsem tady? Jsem mrtvý?"':
            # a37 # r1109
            jump morte_s16

        '"Jak *vypadám*? Jak hodně jsem zjizvený?"':
            # a38 # r1110
            jump morte_s13

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a39 # r1111
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a40 # r1112
            jump morte_dispose


# s11 # say1024
label morte_s11: # from 7.2
    nr '"Šéfe, já bych to viděl tak, že tvoje povalování na tomhle šutru bylo pouze mrhání časem. Jestli chceš vědět můj názor, vypadáš, jako bys v noci souložil s chlastem."'

    menu:
        '"Je to možný, že jsem mrtvý? A proto jsem tady?"':
            # a41 # r1133
            jump morte_s16

        '"Jak moc špatně vypadám?"':
            # a42 # r1134
            jump morte_s13

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a43 # r1135
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a44 # r1136
            jump morte_dispose


# s12 # say1025
label morte_s12: # from 3.0 33.0
    nr '"Ty nevíš kdo jsou to Vnímaví? Aaaa, *běž* se léčit! Je to skupina hňupů, která všechno co se na sférách vyskytuje, musí odzkoušet, včetně… no teď to nebudu rozebírat. Jak jsi k těm jizvám přišel?"'

    menu:
        '"Jizvy?"':
            # a45 # r1027
            jump morte_s13

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a46 # r1028
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a47 # r1143
            jump morte_dispose


# s13 # say1026
label morte_s13: # from 3.1 9.1 10.1 11.1 12.0 33.1
    nr '"To je jako by se nějakej čipera rozhodl, že tě pomaluje nožem. Máš jizvy opravdu všude… dokonce i na zádech, jizvy nemáš snad jenom na…" Zmlkne. "Řekněme, že máš na zádech celou tetovací galerii, šéfe. Snad se to dá i přečíst…"'

    menu:
        '"Co se říká?"':
            # a48 # r1088
            $ morteLogic.r1088_action()
            jump morte_s34

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a49 # r1089
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a50 # r1090
            jump morte_dispose


# s14 # say1031
label morte_s14: # from 8.0 29.3
    nr '"Někteří lidi sbíraj mrtvoly z ulic a prodávají je sem za škváru. Není to zrovna nejlepší způsob obživy, ale když žiješ v týdle díře na Sférách, tvý možnosti jsou hodně omezený."'

    menu:
        '"Škváru? Jakou škváru„?"':
            # a51 # r1032
            jump morte_s15

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a52 # r1033
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a53 # r1142
            jump morte_dispose


# s15 # say1034
label morte_s15: # from 14.0
    nr '"No… prachy. Škvára jsou prachy. Tam odkud pocházíš, to snad neměli?"'

    menu:
        '"Nemůžu si vzpomenout, odkud sem."':
            # a54 # r1035
            jump morte_s19

        '"Zapomeň na to. Měl bych nějaké další otázky…"':
            # a55 # r1036
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a56 # r1138
            jump morte_dispose


# s16 # say1037
label morte_s16: # from 10.0 11.0
    nr 'Odmlčí se. "Nevím. Ty se mnou *mluvíš*… ty chodící mrtvoly tady okolo to obvykle nedělají. Já bych to viděl tak, že Spalovači udělali chybu a tys nebyl ještě mrtvej. Nevzpomeneš si, nepodepsal jsi nějakej druh smlouvy? Když se nad tím zamyslím, obvykle si nechaj podepisovat různý druhy legálních papírů před tím, než můžou někoho zapsat do Knihy mrtvejch."'

    menu:
        '"Co… smlouva? Ne, nevzpomínám si, že bych nějakou podepisoval. Já… si nevzpomínám totiž skoro na nic."':
            # a57 # r1038
            jump morte_s32

        '"Knihy mrtvých?"':
            # a58 # r1039
            jump morte_s17

        '"Legálních?"':
            # a59 # r1040
            jump morte_s18

        '"Zapomeň na to. Měl bych nějaké další otázky…"':
            # a60 # r1041
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a61 # r1150
            jump morte_dispose


# s17 # say1042
label morte_s17: # from 16.1 18.0
    nr '"Joo, „knihy mrtvejch.“ Znáš to? Hmm, možná taky ne. Podívej, zapomeň na „knihu mrtvejch.“ Ty seš naživu, takže v ní zapsanej nejseš."'

    menu:
        '"Co to bylo ta legální… smlouva… o které ses zmiňoval?"':
            # a62 # r1151
            jump morte_s18

        '"Měl bych nějaké další otázky…"':
            # a63 # r1152
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a64 # r1153
            jump morte_dispose


# s18 # say1043
label morte_s18: # from 16.2 17.0
    nr '"Jo, nechtěl bys náhodou rozbít tyhle cihly? V Sigilu platí takový práva, že nemůžeš ani vypustit duši bez toho aniž bys nepodepsal jednu z těchhle smluv."'

    menu:
        '"Cos to říkal o „knize mrtvých?“"':
            # a65 # r1154
            jump morte_s17

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a66 # r1155
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a67 # r1156
            jump morte_dispose


# s19 # say1044
label morte_s19: # from 15.0
    nr '"U všemocnýho Boha a jeho mámy, *ty* seš úplně mimo. Vůbec tě nenapadá odkud pocházíš? Někde v neznámý dáli, národ Blbců postrádá svýho krále. To jsi byl vždycky takhle neznalej?"'

    menu:
        '"Já nevím… nemůžu si na nic vzpomenout."':
            # a68 # r1139
            jump morte_s32

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a69 # r1140
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a70 # r1141
            jump morte_dispose


# s20 # say1045
label morte_s20: # from 2.2 31.2
    nr '"Šéfe, nic kloudnýho mě nenapadá. I když musím uznat, pěkně sis tu hrál na mrtvolku. Když jsi tu ležel, vůbec sem neviděl hejbat se tvou hruď, oči ani nemrkly… no prostě nic. Tys chlastal? Tak ses sem dostal?"'

    menu:
        '"Já nevím… nemůžu si na nic vzpomenout."':
            # a71 # r1097
            jump morte_s32

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a72 # r1098
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a73 # r1099
            jump morte_dispose


# s21 # say1046
label morte_s21: # from 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1
    nr '"Jo, to *je* dobrá otázka. Ubíhá ti čas, šéfe. Spalovači tě najdou a budou se snažit napravit ten "problém" s tvým vzkříšením tak, že tě hoděj do krematoria. A jestli si chceš dál tady hrát na mrtváka, dostaneš se do krematoria stejně. Takže co budem teď dělat?"'

    menu:
        '"Spalovači?"':
            # a74 # r1047
            jump morte_s30

        '"Já… uteču."':
            # a75 # r1048
            jump morte_s22

        '"Vysvětlím ti postavení těchhle… Spalovačů."':
            # a76 # r1049
            jump morte_s25

        '"Co mám dělat?"' if morteLogic.r1050_condition():
            # a77 # r1050
            jump morte_s23

        '"Proč mi to neřekneš? Zní to jako bys už znal odpověď."' if morteLogic.r1051_condition():
            # a78 # r1051
            jump morte_s23

        'Ignoruj Morteho a zkontroluj místnost.':
            # a79 # r1081
            jump morte_dispose


# s22 # say1052
label morte_s22: # from 21.1
    nr '"Ooo, *skvělej* nápad, šéfe! Proč *sem* na tohle nepřišel dřív? Jak chceš asi utýct, co? Dám ti takový malý vodítko: to vyžaduje trochu spolupráce."'

    menu:
        '"To mě zajímá. Pokračuj."':
            # a80 # r1053
            jump morte_s23

        '"Zapomeň na to. Měl bych nějaké další otázky…"':
            # a81 # r1054
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a82 # r1145
            jump morte_dispose


# s23 # say1055
label morte_s23: # from 21.3 21.4 22.0 26.0
    nr '"Jak tak koukám, je úplně jasný, že musíš odtud vypadnout. Co se týče mě, já si můžu dovolit tady ještě počkat. Jediný nebezpečí *pro mne* je to, že tu chcípnu nudou. Mohli bysme si navzájem podat pomocnou ruku."'

    menu:
        '"Mluv dál…"':
            # a83 # r1058
            jump morte_s24

        '"Vždyť nemáš žádný ruce. Jak bys mi *ty* mohl pomoct?"':
            # a84 # r1059
            jump morte_s24

        '"Zapomeň na to. Měl bych nějaké další otázky…"':
            # a85 # r1060
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a86 # r1146
            jump morte_dispose


# s24 # say1061
label morte_s24: # from 23.0 23.1
    nr '"Možná to tak nevypadá, ale mohl bych ti pomoct vocaď vypadnout a ty bys zase mohl pomoct vocaď mně. Sice nemám ruce, takže sem trošku v nevýhodě, ale ty máš zase v hlavě prázdno. Já mám hodně zkušeností a vědomostí o tom, jak se z týdle díry dostat ven. Spolupracujme a dejme *naše hlavy dohromady.* Domluveno, šéfe?"'

    menu:
        '"Dohodnuto."':
            # a87 # r1057
            jump morte_s28

        '"Domluveno. Mám takový divný pocit, že osud tomu chtěl, abychom cestovali spolu, Morte."':
            # a88 # r1062
            jump morte_s27

        '"Zapomeň na to. Měl bych nějaké další otázky…"':
            # a89 # r1063
            jump morte_s31

        '"Ne díky. Povídání s tebou je dost únavný. Najdu si cestu odtud sám."':
            # a90 # r1147
            jump morte_dispose


# s25 # say1064
label morte_s25: # from 21.2
    nr '"Ooo, *skvělej* nápad, šéfe! Proč *jsem* na to nepřišel dřív?" Jeho tón hlasu zní posměvačně. "Mimochodem, pane Spalovač, zemřel sem a pak sem se probudil na kamenný desce vaší malý Márničky. Můžete mi prosím pomoct?" Jo, oni ti pomůžou, to teda joo. Budou se na tebe pár sekund dívat, pak zavolaj stráže a mrsknou tě do tvojí soukromý pece."'

    menu:
        '"To zní trošku přehnaně drsně… proč by to dělali?"':
            # a91 # r1065
            jump morte_s26

        '"Nno, jejich strážní by museli být zatraceně dobří hoši, aby mě dostali."':
            # a92 # r1066
            jump morte_s26

        '"Zapomeň na to. Měl bych nějaké další otázky…"':
            # a93 # r1067
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a94 # r1149
            jump morte_dispose


# s26 # say1068
label morte_s26: # from 25.0 25.1
    nr '"Věř mi… vůbec nezáleží na tom, jestli si myslíš, jakej seš tvrdej chlapák nebo co jim řekneš, oni tě zkrátka dostanou. Nemáš dost síly na to, aby ses proboural zdima týdle krypty a ani nemůžeš přežít žár Ohně z Elementární sféry. Probuzení z mrtvých je dost velkej problém, co se týče tady těch hlídačů. Nebuď idiot."'

    menu:
        '"Takže tvůj plán je…?"':
            # a95 # r1069
            jump morte_s23

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a96 # r1070
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a97 # r1148
            jump morte_dispose


# s27 # say1071
label morte_s27: # from 24.1
    nr '"Osud může nakopat prdel každýmu, koho znáš. Poslouchej, šéfe. Podívej se na to, jak často se „zlo“ a „osud“ dostavujou spolu v jedný chvíli, a pak porozumíš jednomu z malých životních tajemství. Nejlepší věcí, kterou můžeš udělat, je říct osudu, aby si sbalil svejch pět švestek a šel o dům dál; je tu *vždycky* jiná volba, kterou ti osud nemůže nabídnout."'

    menu:
        '"Budu si to pamatovat."':
            # a98 # r1073
            jump morte_s28

        '"Už bylo dost keců. Jakej máš plán?"':
            # a99 # r1074
            jump morte_s28


# s28 # say1072
label morte_s28: # from 24.0 27.0 27.1
    nr '"Fajn… tak padáme pryč, dejme tomuhle místu sbohem. Všechny dveře jsou zavřený, takže by se nám šiknul klíč. Možný je, že ho bude mít jedna z těch chodících mrtvol."'

    menu:
        '"Chodící mrtvoly?"':
            # a100 # r1079
            $ morteLogic.r1079_action()
            jump morte_s240


# s29 # say996
label morte_s29: # -
    nr '"Ooo, takže *teď* by sis chtěl znova pokecat s Mortem, joo?"'

    menu:
        '"Kdo jsi?"':
            # a101 # r1075
            jump morte_s1

        '"Kde to jsem?"':
            # a102 # r1076
            jump morte_s6

        '"Víš, jak se můžu dostat odtud ven?"' if morteLogic.r1077_condition():
            # a103 # r1077
            jump morte_s21

        '"Jak jsem se sem dostal?"':
            # a104 # r1078
            jump morte_s14

        'Ignoruj Morteho a zkontroluj místnost.':
            # a105 # r1086
            jump morte_dispose


# s30 # say1082
label morte_s30: # from 21.0
    nr '"Spalovači? Oni hlídaj tohle místo tady. Nemůžeš je přehlídnout… jsou to ty lidičky s přičmoudlejma ksichtama. Říkaj si „Spalovači“ a hrajou si na to, že jsou společenství, ale je to jenom zkažená banda zbožňovatelů mrtvol. Já jen abys věděl, s kým máš tu čest."'

    menu:
        '"Takže jak se odtud dostanu pryč?"' if morteLogic.r1083_condition():
            # a106 # r1083
            jump morte_s21

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a107 # r1084
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a108 # r1144
            jump morte_dispose


# s31 # say1091
label morte_s31: # from 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2
    nr '"Jooo? *Jaký* otázky?"'

    menu:
        '"Kdo jsi?"':
            # a109 # r1092
            jump morte_s1

        '"Kde to jsem?"':
            # a110 # r1093
            jump morte_s6

        '"Jak jsem se sem dostal?"':
            # a111 # r1094
            jump morte_s20

        '"Jak se odtud dostanu pryč?"' if morteLogic.r1095_condition():
            # a112 # r1095
            jump morte_s21

        'Ignoruj Morteho a zkontroluj místnost.':
            # a113 # r1096
            jump morte_dispose


# s32 # say1100
label morte_s32: # from 16.0 19.0 20.0
    nr '"Ty si nepamatuješ *nic?* Ale no taak, to je kupa tanarijských sraček. To myslíš vážně?"'

    menu:
        '"Ano."':
            # a114 # r1101
            jump morte_s33

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a115 # r1102
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a116 # r1103
            jump morte_dispose


# s33 # say1104
label morte_s33: # from 32.0
    nr '"U všemocnýho Boha a jeho matky… dobře šéfe, s největší pravděpodobností se tvoje vzpomínky ponořily někam do neznáma. Se štěstím zase brzo vyplujou na povrch, věř mi. Tos teda musel mít krušnou noc. Doufám, žes nikoho nezranil nebo neporušil zákon… když už spolu mluvíme, řekni mi, seš jeden z těch Vnímavejch, co sebe mrzačej nebo ti někdo daroval tyhle nádherný jizvy?"'

    menu:
        '"Vnímavý?"':
            # a117 # r1105
            jump morte_s12

        '"Jizvy?"':
            # a118 # r1106
            jump morte_s13

        '"Měl bych nějaké další otázky…"':
            # a119 # r1107
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a120 # r1108
            jump morte_dispose


# s34 # say1117
label morte_s34: # from 13.0
    nr '"Hohó! Tak se mi zdá, že tu máš napsaný pokyny…" prohodil Morte. "Tak se na to podíváme… začíná to…  POZNÁMKA: "Vím, že se cítíš, jako bys vypil několik džberů bahna z řeky Styx, ale teď by ses měl trošičku soustředit. Někde kolem tebe by se měl povalovat deník, který ti osvětlí, co se vlastně děje. Zbytek ti dopoví Pharod, pokud tedy ještě není zapsán v Knize mrtvých.  Hlavně ten deník neztrať, protože pak bychom zase byli ve styxském bahně. A ať už děláš cokoliv, neříkej NIKOMU, kdo jsi nebo co se ti stalo, jinak by ses taky mohl pěkně rychle podívat do krematoria."'

    menu:
        '"No už se nedivím, že mě ta záda tak bolí. Znáš člověka jménem Pharod?"':
            # a121 # r1118
            jump morte_s36

        '"Neviděl jsi tady někde můj deník když jsem tady ležel?"':
            # a122 # r1119
            jump morte_s35

        '"Nevíš jak se odtud dostanu pryč?"' if morteLogic.r1120_condition():
            # a123 # r1120
            jump morte_s21

        '"Měl bych nějaké další otázky…"':
            # a124 # r1121
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a125 # r1122
            jump morte_dispose


# s35 # say1123
label morte_s35: # from 34.1 36.0
    nr '"Ne… byl jsi svlečenej až na kůži když tě sem přivezli. Ostatně, vypadá to, že máš kus deníku napsanýho na tvým těle."'

    menu:
        '"Znáš někoho jménem Pharod?"':
            # a126 # r1124
            jump morte_s36

        '"Jak se odtud dostanu pryč?"' if morteLogic.r1125_condition():
            # a127 # r1125
            jump morte_s21

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a128 # r1126
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a129 # r1127
            jump morte_dispose


# s36 # say1128
label morte_s36: # from 34.0 35.0
    nr '"Nikdo, koho bych měl znát. Ještě jednou, neznám hodně lidí. Ale nějaký troubové určitě budou vědět, kde toho chlapa najít… až se dostanem tady vocaď, tak potom."'

    menu:
        '"Měl jsem u sebe deník, když sem tu ležel?"':
            # a130 # r1129
            jump morte_s35

        '"Jak se odtud dostanu pryč?"' if morteLogic.r1130_condition():
            # a131 # r1130
            jump morte_s21

        '"Nevadí. Měl bych nějaké další otázky…"':
            # a132 # r1131
            jump morte_s31

        'Ignoruj Morteho a zkontroluj místnost.':
            # a133 # r1132
            jump morte_dispose


# s37 # say1818
label morte_s37: # -
    nr '"To je ale štěstí! To, co hledáme, jsme asi ztratili v tvém bytě."'

    menu:
        '"Vlastně jsem někde přišel o deník."':
            # a134 # r1820
            jump harlotn_s2  # EXTERN

        '"Možná bys mi mohla pomoct najít jednu věc, která mi chybí."':
            # a135 # r1819
            jump harlotn_s3  # EXTERN

        '"Nic mi nechybí, ale mám nějaké otázky…"':
            # a136 # r1821
            jump harlotn_s9  # EXTERN

        '"Už musím jít. Sbohem."':
            # a137 # r1822
            jump harlotn_s11  # EXTERN


# s38 # say1844
label morte_s38: # -
    nr '"Hele, náčelníku, mohl bys mi pučit nějaký ty drobný, hm… víš… vono už to bylo fakt strašně dlouho, co sem naposled…"'

    menu:
        '"Uh… no, řekl bych, že *moc* velkou škodu tím nenapáchám…"':
            # a138 # r1845
            $ morteLogic.r1845_action()
            jump harlotn_s7  # EXTERN

        '"Ani se tě nechci zeptat, jak to chceš provést."':
            # a139 # r1846
            $ morteLogic.r1846_action()
            jump harlotn_s7  # EXTERN

        '"Hele… my už opravdu musíme jít, Morte. Sbohem, slečno."':
            # a140 # r1847
            $ morteLogic.r1847_action()
            jump morte_dispose


# s39 # say2000
label morte_s39: # -
    nr '"Myslí peníze."'

    menu:
        '"Oh."':
            # a141 # r2001
            jump annah_s5  # EXTERN


# s40 # say2048
label morte_s40: # -
    nr '"Nedivím se, že nejste ty a tvůj ocas na prodej. Pochybuju, že by měl někdo zájem…"'

    menu:
        '"Uh…"':
            # a142 # r2049
            jump annah_s13  # EXTERN


# s41 # say2067
label morte_s41: # -
    nr '"Je to tiefling, náčelníku. Maj v sobě krev fienda a tak sou paranoidní a střelený… ale má hezkej vocas, to jo. Škoda že je přilepenej na tak hnusným těle."'

    menu:
        '"Uau…"':
            # a143 # r2068
            jump annah_s17  # EXTERN

        '"Hej, to bylo dobrý, Morte."':
            # a144 # r2069
            jump annah_s17  # EXTERN


# s42 # say2074
label morte_s42: # -
    nr '"Proč to *nezkusíš* a neurveš mi tu čelist, kočičko?! Slyším tady akorát prázdný držkování ňáký sračky z Úlu! No tak, jednu mi vraž! Zkus to! A uhryžu ti nohy!"'

    menu:
        '"Dost!"':
            # a145 # r2076
            jump annah_s18  # EXTERN

        '"Dost! Jdeme pryč."':
            # a146 # r2075
            jump annah_s14  # EXTERN


# s43 # say2079
label morte_s43: # -
    nr '"Mimir je mluvící encyklopedie. To jsem jako já, šéfe."'

    menu:
        '"Rozumím."':
            # a147 # r2080
            $ morteLogic.r2080_action()
            jump annah_s21  # EXTERN


# s44 # say2348
label morte_s44: # -
    nr '"Vzdej to, šéfe. Mluvit na githa, to je jako zkoušet se pomilovat s plamenometem. Pojďme."'

    menu:
        '"Gith?"' if morteLogic.r9029_condition():
            # a148 # r9029
            $ morteLogic.r9029_action()
            jump morte_s135

        '"Gith?"' if morteLogic.r9030_condition():
            # a149 # r9030
            jump morte_s135

        '"Ještě nejsem připravený odejít. Nejdřív se ho na něco zeptám…"':
            # a150 # r9031
            jump gith_s7  # EXTERN

        'Nechej githa být.':
            # a151 # r9032
            jump morte_dispose


# s45 # say2354
label morte_s45: # -
    nr '"Já bych se nevobtěžoval vykecáváním s tímdle… ignorantem. Vypadněme vocaď, šéfe. Bordely čekají."'

    menu:
        '"Ještě nejsem připravený odejít. Nejdřív se ho na něco zeptám…"':
            # a152 # r9033
            jump gith_s7  # EXTERN

        'Nechej githa být.':
            # a153 # r9034
            jump morte_dispose


# s46 # say2601
label morte_s46: # externs zf916_s2 zf916_s1 zf916_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a154 # r2603
            $ morteLogic.r2603_action()
            jump morte_s47

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a155 # r2602
            $ morteLogic.r2602_action()
            jump morte_s47


# s47 # say2604
label morte_s47: # from 46.0 46.1 121.1 121.2
    nr '"Co? Seš SLEPEJ?! Mrkala na mě!  Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNĚ, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a156 # r2605
            $ morteLogic.r2605_action()
            jump morte_s49

        '"Myslím, že si to jenom namlouváš. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a157 # r2606
            jump morte_s48

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a158 # r2607
            jump morte_s48

        '"No jo, Morte. Pojďme."':
            # a159 # r2608
            jump morte_dispose


# s48 # say2609
label morte_s48: # from 47.1 47.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÝ noci s nějakejma nadrženejma právě zemřelejma kočkama, zatímco ty se někde jen tak poflakuješ, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a160 # r2610
            jump morte_dispose


# s49 # say2611
label morte_s49: # from 47.0
    nr '"Tebou? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kterej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a161 # r2612
            jump morte_dispose


# s50 # say2709
label morte_s50: # -
    nr '"Co? Co je to? Otravuje tě ta holka?"'

    jump test_s7  # EXTERN


# s51 # say2711
label morte_s51: # -
    nr '"I believe it. Maybe he„d better return to your main menu and leave me out of it."'

    jump test_s0  # EXTERN


# s52 # say2782
label morte_s52: # -
    nr '"Oh, u všech Mocností! Zatracenej dabus."'

    menu:
        '"Co se děje?"':
            # a162 # r2783
            jump morte_s53


# s53 # say2788
label morte_s53: # from 52.0
    nr '"Je to dabus. „Mluví“ v rébusech, těch pitomých slovních hříčkách. Jestli mu nerozumíš, budeme muset najít nějakého domorodce, nebo jiný způsob, jak se s ním domluvit… teda jestli to chceme. Otravná banda. Podle mě *uměj* mluvit, ale baví je srát ostatní těma pitomejma rébusama."'

    menu:
        '"Co je to dabus?"':
            # a163 # r2791
            jump morte_s54


# s54 # say2789
label morte_s54: # from 53.0
    nr '"Prej sou to mluvčí Paní Bolesti. Poletujou kolem, bouraj, opravujou a záplatujou Sigil podle toho, jak jim zrovna v kebuli cinká. Jsou horší než mouchy." Morte si povzdychl. "Ale nemůžeš je nasekat do hambáče. Paní by to… rozzlobilo."'

    menu:
        '"„Paní Bolesti?“ Kdo to je?"' if morteLogic.r6952_condition():
            # a164 # r6952
            $ morteLogic.r6952_action()
            jump morte_s113

        '"Co bys mi mohl říci o Paní Bolesti?"' if morteLogic.r6953_condition():
            # a165 # r6953
            jump morte_s113

        '"Aha."' if morteLogic.r6954_condition():
            # a166 # r6954
            jump dabus_s3  # EXTERN


# s55 # say3473
label morte_s55: # externs eivene_s3
    nr '"Myslím, že ta kočka může bejt kapku nahluchlá, šéfíku. Vykašlem se na to, ne?"'

    menu:
        '"Co to má s rukama?"':
            # a167 # r3474
            $ morteLogic.j38205_s55_r3474_action()
            jump morte_s56

        'Zaťukej jí na rameno, získej její pozornost.':
            # a168 # r3475
            jump eivene_s4  # EXTERN

        'Nechej ji být.':
            # a169 # r3476
            jump morte_dispose


# s56 # say3477
label morte_s56: # from 55.0
    nr '"Eh… je to *tiefling*, šéfe. Maj v žilách fiendskou krev, většinou proto, že se někerej jejich předek zapletl s nějakým fiendem. Maj z toho kapku pomotanou hlavu… a taky pomotaně vypadaj."'

    menu:
        'Zaťukej jí na rameno, získej její pozornost.':
            # a170 # r3478
            jump eivene_s4  # EXTERN

        'Nechej ji být.':
            # a171 # r3479
            jump morte_dispose


# s57 # say3480
label morte_s57: # externs eivene_s20
    nr '"Myslím, že ta kočka může bejt kapku nahluchlá, náčelníku. Vykašlem se na to, ne?"'

    menu:
        '"Co to má s rukama?"':
            # a172 # r3483
            $ morteLogic.j38205_s57_r3483_action()
            jump morte_s58

        'Odejdi.':
            # a173 # r3484
            jump morte_dispose


# s58 # say3481
label morte_s58: # from 57.0
    nr '"Eh… je to *tiefling*, šéfe. Maj v žilách fiendskou krev, většinou proto, že se někerej jejich předek zapletl s nějakým fiendem. Maj z toho kapku pomotanou hlavu… a taky pomotaně vypadaj."'

    menu:
        'Odejdi.':
            # a174 # r3482
            jump morte_dispose


# s59 # say3487
label morte_s59: # externs eivene_s9
    nr '"Vypadá to, že máš novou kámošku, náčelníku. Mám vás nechat chvilku o samotě…?"'

    menu:
        '"Kašli na to, Morte."':
            # a175 # r3488
            jump eivene_s11  # EXTERN

        'Hrej si dál na zombie.':
            # a176 # r3489
            jump eivene_s11  # EXTERN

        'Odstrč ženu od sebe.':
            # a177 # r3490
            jump eivene_s10  # EXTERN


# s60 # say3492
label morte_s60: # externs eivene_s13
    nr '"Tohle je podruhé v životě, kdy děkuju za to, že nemám nos."'

    jump eivene_s14  # EXTERN


# s61 # say3870
label morte_s61: # externs dust_s40
    nr '"Hej! Hej! Co děláš?"'

    menu:
        '"*Chtěl* jsem si s tím chlápkem promluvit. Nějaký problém?"':
            # a178 # r3871
            $ morteLogic.r3871_action()
            jump morte_s62

        '"Nic, pokračujme dál."':
            # a179 # r3872
            jump morte_dispose


# s62 # say3873
label morte_s62: # from 61.0
    nr '"Pokud chceš kecat s Spalovákama, tak mě z toho teda vynech. Oni a já nejsme zrovna kámoši. A ty by ses s nima taky neměl nějak moc bratříčkovat. Než si stačíš uvědomit, pohřběj tě nebo ugriluj v kremačce. Nebuď debil, vypadněme vocaď."'

    menu:
        '"Díky za radu, ale já si s tím chlápkem stejně promluvím."':
            # a180 # r3874
            $ morteLogic.r3874_action()
            jump morte_s64

        '"Souhlasím, pojďme dál."':
            # a181 # r3875
            jump morte_dispose


# s63 # say3876
label morte_s63: # externs dust_s40
    nr '"Hej! Jsi hluchý? Co děláš?"'

    menu:
        '"Hele, chci si promluvit s tímhle chlápkem. Nějaký problém?"':
            # a182 # r3877
            $ morteLogic.r3877_action()
            jump morte_s64

        '"Nic, pokračujme dál."':
            # a183 # r3878
            jump morte_dispose


# s64 # say3879
label morte_s64: # from 62.0 63.0
    nr '"No tak mě *neposlouchej* - je to tvůj pohřeb."'

    menu:
        '"Jo, a ty mi zazpíváš rekviem. A teď buď zticha."':
            # a184 # r3880
            jump dust_s3  # EXTERN

        '"Nah, máš pravdu. Zapomeň na to. Jdeme dál."':
            # a185 # r3881
            jump morte_dispose


# s65 # say3964
label morte_s65: # -
    nr '"Uau, šéfe. To je vandalismus! Ty nesmysly byly asi to jediný, co tu kupu kostí drželo pohromadě. Nekromancie s takovejma funguje jenom do určitý míry, víš?"'

    menu:
        '"Takže?"':
            # a186 # r3965
            $ morteLogic.r3965_action()
            jump morte_s66

        '"Oh… nechtěl jsem způsobit žádnou trvalou škodu."':
            # a187 # r3966
            $ morteLogic.r3966_action()
            jump morte_s66

        '"No dobrá, tak nic. Možná příště."':
            # a188 # r3967
            jump morte_s66


# s66 # say3968
label morte_s66: # from 65.0 65.1 65.2
    nr '"Oh, to není problém." Morte se podivně zakýval, jako by krčil rameny. "Jenom sem si nebyl jistej, estli to víš, nebo ne. No, jen pokračuj."'

    menu:
        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r3969_condition():
            # a189 # r3969
            jump skelw_s4  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r3970_condition():
            # a190 # r3970
            jump skelw_s5  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r3971_condition():
            # a191 # r3971
            jump skelw_s6  # EXTERN

        'To nic. Možná příště.' if morteLogic.r3972_condition():
            # a192 # r3972
            $ morteLogic.r3972_action()
            jump morte_s67

        'To nic. Možná příště.' if morteLogic.r3973_condition():
            # a193 # r3973
            jump morte_dispose


# s67 # say3974
label morte_s67: # from 66.3
    nr '"Hmmm. Zajímalo by mě, jestli by tomuhle šedovousovi vadilo, kdybych si půjčil jeho tělo…"'

    menu:
        '"Šedovous?"':
            # a194 # r3975
            jump morte_s68

        '"No, myslím si, že není v pozici, kdy by mohl něco namítat."':
            # a195 # r3976
            jump morte_s69

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a196 # r3977
            jump morte_s70


# s68 # say3978
label morte_s68: # from 67.0
    nr '"Šedovous… to víš, starej paprika, dědek… zkrátka někdo starej."'

    menu:
        '"Nemyslím si, že je v postavení, kdy by mohl něco namítat."':
            # a197 # r3979
            jump morte_s69

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a198 # r3980
            jump morte_s70


# s69 # say3981
label morte_s69: # from 67.1 68.0
    nr 'Morte si chvíli prohlíží kostlivce, pak zavrtí hlavou. "Ne… potřebuju trochu čerstvějšího. A něco s trochou víc důstojnosti… tendle je celej popraskanej a polámanej."'

    menu:
        '"A ty ne?"':
            # a199 # r3982
            jump morte_s70

        '"Dobrá tedy. Pojďme."':
            # a200 # r3983
            jump morte_dispose


# s70 # say3984
label morte_s70: # from 67.2 68.1 69.0 127.0
    nr '"Oh, seš hromada směšnosti." Morte na tebe zlobně zírá. "Kromě toho,  TY MÁŠ tak co mluvit, vole. Lituju všechny chudinky zrcadla, který potkáš."'

    menu:
        '"Jo tak? No *JÁ* mám alespoň všechny své části."':
            # a201 # r3985
            jump morte_s71

        '"Pojďme."':
            # a202 # r3986
            jump morte_dispose


# s71 # say3987
label morte_s71: # from 70.0
    nr 'Morte si odfrkl. Nejsi si zrovna jistý, jak to dokázal bez plic.'

    menu:
        '"Víš, Morte, není nic lepšího a uspokojujícího, než chodit kolem, rozhazovat rukama, dýchat plícemi ostrý vzduch. Je to SKVĚLÝ, mít tělo."':
            # a203 # r3988
            $ morteLogic.r3988_action()
            jump morte_s72

        '"Pojďme."':
            # a204 # r3989
            jump morte_dispose


# s72 # say3990
label morte_s72: # from 71.0
    nr '"Musím ti říct, že mé rozhodnutí pomoct ti utéct z přípravny, jsem přidal do svýho narůstajícího seznamu věcí, kterejch lituju." Morte si znovu odfrkl. "Měl jsem tě nechat shnít… aspoň o trochu víc."'

    menu:
        '"Jsem rád, že to tak cítíš. Pojďme."':
            # a205 # r3991
            jump morte_dispose


# s73 # say4018
label morte_s73: # externs giantsk_s9 giantsk_s8 giantsk_s7 giantsk_s6 giantsk_s5 giantsk_s4 giantsk_s1 giantsk_s0
    nr 'Morte se zašklebil.'

    menu:
        '"Uh, je to ano, nebo…?"':
            # a206 # r4019
            jump morte_s74


# s74 # say4020
label morte_s74: # from 73.0
    nr '"Oh… sorry." Morte přiletěl k hlavě kostlivce, chvíli na ní zírá a pak sletěl dolů, studujíc zbroj a meč. "Jo, ano. Ano, myslím, že tenhle bude akorát."'

    menu:
        '"Dobrá tedy… dej mi vteřinku, ať mu můžu urvat hlavu."' if morteLogic.r4023_condition():
            # a207 # r4023
            jump giantsk_s2  # EXTERN

        '"Dobrá tedy… dej mi vteřinku, ať mu můžu urvat hlavu."' if morteLogic.r4024_condition():
            # a208 # r4024
            jump giantsk_s3  # EXTERN

        '"No, já nevím. Připadá mi to, že tohle bys asi nezvládl."':
            # a209 # r4025
            jump morte_s75

        '"Myslím, že bude lepší, když ho necháme být."':
            # a210 # r4026
            jump morte_s75


# s75 # say4021
label morte_s75: # from 74.2 74.3
    nr '"Tak proč ses mě PTAL, jestli ho chci? Cvičíš si krutost, parchante?" Morte se rozhořčeně zakýval. "Po všem, co jsem pro tebe udělal…"'

    menu:
        '"Dobrá tedy… dej mi vteřinku, ať mu můžu urvat hlavu."' if morteLogic.r4027_condition():
            # a211 # r4027
            jump giantsk_s2  # EXTERN

        '"Dobrá tedy… dej mi vteřinku, ať mu můžu urvat hlavu."' if morteLogic.r4028_condition():
            # a212 # r4028
            jump giantsk_s3  # EXTERN

        '"Myslím na tvé bezpečí, Morte. Bojím se, že kdybych tvoji hlavu připevnil k té věci, mohlo by ti to nějak ublížit…"':
            # a213 # r4029
            $ morteLogic.r4029_action()
            jump morte_s76

        '"Stejně si myslím, že bychom ho raději měli nechat být. Pojďme odtud."':
            # a214 # r4030
            jump morte_dispose


# s76 # say4022
label morte_s76: # from 75.2
    nr 'Morte na tebe chvíli zírá. "Co? Copak jsme se snad VZALI? Co je to za kecy „Nechci, aby sis ublížil“?" Morte se tváří zlostně. "Kdyby ses OPRAVDU staral, našel bys způsob, jak přidělat moji hlavu na toho kostlivce."'

    menu:
        '"Dobrá tedy… dej mi vteřinku, ať mu můžu urvat hlavu."' if morteLogic.r4031_condition():
            # a215 # r4031
            jump giantsk_s2  # EXTERN

        '"Dobrá tedy… dej mi vteřinku, ať mu můžu urvat hlavu."' if morteLogic.r4032_condition():
            # a216 # r4032
            jump giantsk_s3  # EXTERN

        '"Promiň, ale tolik se o tebe nestarám. Pojďme."':
            # a217 # r4033
            jump morte_dispose

        '"A já bych řekl, že ho raději necháme být. Pojďme."' if morteLogic.r4034_condition():
            # a218 # r4034
            jump morte_dispose


# s77 # say4134
label morte_s77: # -
    nr '"Hej! Hej! Co děláš?"'

    menu:
        '"*Chtěl* jsem si s tím chlápkem promluvit. Nějaký problém?"':
            # a219 # r4144
            $ morteLogic.r4144_action()
            jump morte_s78

        '"Nic, pokračujme dál."':
            # a220 # r4145
            $ morteLogic.r4145_action()
            jump morte_dispose


# s78 # say4135
label morte_s78: # from 77.0
    nr '"Pokud chceš kecat s Spalovákama, tak mě z toho teda vynech. Oni a já nejsme zrovna kámoši. A ty by ses s nima taky neměl nějak moc bratříčkovat. Než si stačíš uvědomit, pohřběj tě nebo ugriluj v kremačce. Nebuď debil, vypadněme vocaď."'

    menu:
        '"Díky za radu, ale já si s ním stejně promluvím."':
            # a221 # r4142
            $ morteLogic.r4142_action()
            jump morte_s80

        '"Souhlasím, pojďme dál."':
            # a222 # r4143
            $ morteLogic.r4143_action()
            jump morte_dispose


# s79 # say4136
label morte_s79: # -
    nr '"Hej! Jsi hluchý? Co děláš?"'

    menu:
        '"Hele, chci si promluvit s tímhle chlápkem. Nějaký problém?"':
            # a223 # r4140
            $ morteLogic.r4140_action()
            jump morte_s80

        '"Nic, pokračujme dál."':
            # a224 # r4141
            jump morte_dispose


# s80 # say4137
label morte_s80: # from 78.0 79.0
    nr '"No tak mě *neposlouchej* - je to tvůj pohřeb."'

    menu:
        '"Jo, a ty mi zazpíváš rekviem. A teď buď zticha."':
            # a225 # r4138
            jump dustgu_s12  # EXTERN

        '"Nah, máš pravdu. Zapomeň na to. Jdeme dál."':
            # a226 # r4139
            jump morte_dispose


# s81 # say4338
label morte_s81: # externs dustfem_s40
    nr '"Hej! Hej! Co děláš?"'

    menu:
        '"Hele, chci si promluvit s touhle ženskou. Nějaký problém?"':
            # a227 # r4339
            $ morteLogic.r4339_action()
            jump morte_s82

        '"Nic, pokračujme dál."':
            # a228 # r4340
            jump morte_dispose


# s82 # say4341
label morte_s82: # from 81.0
    nr '"Pokud chceš kecat s Spalovákama, tak mě z toho teda vynech. Oni a já nejsme zrovna kámoši. A ty by ses s nima taky neměl nějak moc bratříčkovat. Než si stačíš uvědomit, pohřběj tě nebo ugriluj v kremačce. Nebuď debil, vypadněme vocaď."'

    menu:
        '"Díky za radu, ale já si s ní *stejně* promluvím."':
            # a229 # r4342
            $ morteLogic.r4342_action()
            jump morte_s84

        '"Souhlasím, pojďme dál."':
            # a230 # r4343
            jump morte_dispose


# s83 # say4344
label morte_s83: # externs dustfem_s40
    nr '"Hej! Jsi hluchá? Co děláš?"'

    menu:
        '"Hele, jdu si promluvit s touhle ženskou. Nějaký problém?"':
            # a231 # r4345
            $ morteLogic.r4345_action()
            jump morte_s84

        '"Nic, pokračujme dál."':
            # a232 # r4346
            jump morte_dispose


# s84 # say4347
label morte_s84: # from 82.0 83.0
    nr '"Tak mě *neposlouchej* - je to tvůj pohřeb."'

    menu:
        '"Jo, a ty mi zazpíváš rekviem. A teď buď zticha."':
            # a233 # r4348
            jump dustfem_s3  # EXTERN

        '"Nah, máš pravdu. Zapomeň na to. Jdeme dál."':
            # a234 # r4349
            jump morte_dispose


# s85 # say4675
label morte_s85: # externs vaxis_s9
    nr 'Morte se šeptem vložil do řeči. "U mocností… ten vůl je *Anarchista.* Maskovat se za zombie, to je první věc, která by ty vypatlané blbečky napadla."'

    menu:
        '"Anarchista?"':
            # a235 # r4676
            $ morteLogic.j64512_s85_r4676_action()
            jump morte_s86


# s86 # say4677
label morte_s86: # from 85.0
    nr '"Anarchisti… to je frakce…" Morte se tváří, jako by chtěl dlouze zanadávat, ale pak si všiml, že ho zombie pozorně poslouchá. "…oni, ehm, chtěj *osvobodit* každého od vlády. Zničit starý řád a zavést nový, který by neměl vůbec žádný řád."'

    menu:
        'Pravdivě: "To zní docela ušlechtile - pořádek občas potřebuje pořádnou likvidaci."':
            # a236 # r4678
            $ morteLogic.r4678_action()
            jump vaxis_s11  # EXTERN

        'Lži: "To zní ušlechtile. Kterýkoli anarchista, který usiluje o takový cíl je *rozhodně* můj přítel."':
            # a237 # r4679
            $ morteLogic.r4679_action()
            jump vaxis_s11  # EXTERN

        '"To zní docela… nefunkčně."':
            # a238 # r4680
            jump vaxis_s10  # EXTERN

        '"To je jedna z největších hovadin, jaké jsem kdy slyšel."':
            # a239 # r4681
            jump vaxis_s10  # EXTERN

        'Pravdivě: "To mi nepřipadá rozumné. Nějaký pořádek, řád, musí být vždycky.':
            # a240 # r4682
            $ morteLogic.r4682_action()
            jump vaxis_s10  # EXTERN


# s87 # say4683
label morte_s87: # externs vaxis_s13
    nr 'ŠEptá: "Myslí tím, že jsi šílený, blázen, magor, hňup… a já si to myslím taky. A teď se vykašli na ty řeči typu „Vstal jsem z mrtvých“, jasný?! Štveš mě s tím."'

    menu:
        '"Já štvu TEBE?"':
            # a241 # r4684
            jump morte_s88

        '"Chtěl jsem jenom vědět, o čem ta… mrtvola mluvila. Jasný?"':
            # a242 # r4685
            jump morte_s88

        '"To není moje vina, že nikdo na tomhle šíleném místě nemluví jako normální osoba… nebo VYPADÁ jako normál."' if morteLogic.r4686_condition():
            # a243 # r4686
            jump morte_s88

        '"Hele, já mu NEBUDU lhát. Chci s ním jednat na rovinu."':
            # a244 # r4687
            $ morteLogic.r4687_action()
            jump morte_s88


# s88 # say4688
label morte_s88: # from 87.0 87.1 87.2 87.3
    nr 'Morte si povzdychl. "Hele, šéfe. Vem rozum do hrsti. Nemůžeš chodit kolem a říkat každýmu pokaždé PRAVDU. Nemůžeme si dovolit, aby si nás vomarkoval každej čórovač, kterýho potkáme, ne?"'

    menu:
        '"Čórovač? Omarkoval? Co to - uh, no nic."':
            # a245 # r4689
            jump vaxis_s15  # EXTERN

        '" Nechej toho, Morte."':
            # a246 # r4690
            jump vaxis_s15  # EXTERN

        '"Já si to… zapamatuju. A teď si chci promluvit s tou „zombie“."':
            # a247 # r4691
            jump vaxis_s15  # EXTERN


# s89 # say4692
label morte_s89: # externs vaxis_s23
    nr '"Počkej…" Morte zní překvapeně. "Ten vůl je *Anarchista.* Maskovat se za zombie, to je první věc, která by ty vymazané blbečky napadla."'

    menu:
        '"Anarchista?"':
            # a248 # r4693
            $ morteLogic.j64512_s89_r4693_action()
            jump morte_s90


# s90 # say4694
label morte_s90: # from 89.0
    nr '"Anarchisti jsou společenstvím, které se snaží likvidovat místní autority a hledají způsob, jak zničit cokoli, co smrdí řádem nebo kontrolou." Morte si odfrkl. "Anarchisti si myslej, že každej vůl ve sférách bude volnej a šťastnej, když si bude moct najít vlastní „pravdu“, jakmile bude všechna vláda zlikvidována. Chtěj nastolit novej pořádek - vůbec žádnej."'

    menu:
        'Pravdivě: "To zní docela ušlechtile - pořádek občas potřebuje pořádnou likvidaci."':
            # a249 # r4695
            $ morteLogic.r4695_action()
            jump vaxis_s71  # EXTERN

        '"To zní docela… nefunkčně."':
            # a250 # r4696
            jump vaxis_s71  # EXTERN

        '"To je jedna z největších hovadin, jaké jsem kdy slyšel."':
            # a251 # r4697
            jump vaxis_s71  # EXTERN

        '"No jo."':
            # a252 # r4698
            jump vaxis_s71  # EXTERN

        'Pravdivě: "To mi nepřipadá rozumné. Nějaký pořádek, řád, musí být vždycky.':
            # a253 # r4699
            $ morteLogic.r4699_action()
            jump vaxis_s71  # EXTERN


# s91 # say4700
label morte_s91: # externs vaxis_s46
    nr '"Ten vůl Pharod prý prodává spoustu mrtváků - mrtvol - Spalovačům. To dělaj Sběrači - sbírají mrtvý těla a prodávají je Spalovačům. Ale ten Pharod jich prej prodává tolik, že si Spalovači myslej, že je strká do knihy mrtvejch lidi dřív, než nadešel jejich čas - to jako že je zabíjí."'

    menu:
        '"Aha. Chtěl jsem vědět ještě něco…"':
            # a254 # r4701
            jump vaxis_s43  # EXTERN

        '"Ten Pharod zní jako světec. Možná budu mít nějaké otázky později. Nikam nechoď."':
            # a255 # r4702
            jump morte_dispose


# s92 # say4703
label morte_s92: # externs vaxis_s47
    nr '"Chce vědět, jestli tě někdo okradl. Což se asi stalo."'

    menu:
        '"Aha. Chtěl jsem vědět ještě něco…"':
            # a256 # r4704
            jump vaxis_s43  # EXTERN

        '"Jo, už se těším, až toho zloděje najdu. Hele, možná budu mít nějaké otázky později. Nikam nechoď."':
            # a257 # r4705
            jump morte_dispose


# s93 # say4706
label morte_s93: # externs vaxis_s39
    nr '"Jó, sou pěkně blbí."'

    jump vaxis_s61  # EXTERN


# s94 # say4708
label morte_s94: # externs vaxis_s65
    nr '"Nemůžu uvěřit, že si to necháš udělat. Seš totálně bláznivej?"'

    menu:
        '"Připouštím, je to pěkně tvrdý…"' if morteLogic.r64535_condition():
            # a258 # r64535
            $ morteLogic.r64535_action()
            jump vaxis_s66  # EXTERN

        '"Připouštím, je to pěkně tvrdý…"' if morteLogic.r64534_condition():
            # a259 # r64534
            $ morteLogic.r64534_action()
            jump vaxis_s66  # EXTERN


# s95 # say4710
label morte_s95: # externs vaxis_s66
    nr '"Nemůžeš ty stehy na jeho tlamě pořádně utáhnout?"'

    menu:
        '"Fer na to, Murte --"':
            # a260 # r4711
            jump vaxis_s67  # EXTERN

        '"Mmm-HMMPH!"':
            # a261 # r4712
            jump vaxis_s67  # EXTERN


# s96 # say5029
label morte_s96: # -
    nr '"Hej! Hej! Co to děláš?"'

    menu:
        '"*Chtěl* jsem si s tím chlápkem promluvit. Problém?"':
            # a262 # r5030
            $ morteLogic.r5030_action()
            jump morte_s97

        '"Nic, jdeme dál."':
            # a263 # r5031
            jump morte_dispose


# s97 # say5032
label morte_s97: # from 96.0
    nr '"Jestli si chceš vykecávat držku se Spalovákama, tak mě z toho teda vynech, jo? Já a voni nejsme zrovna nejlepší kámoši, to teda ne. A ty bys s nima taky neměl nějak moc kámošit. Vypadáš jako něco, co by nejraděj upálili nebo někam pohřbili. A nejspíš by na příležitost moc nečekali. Nebuď magor, zkrátka se seber a poď, vypadnem."'

    menu:
        '"Dík za radu, ale já si s tímhle chlápkem *stejně* promluvím."':
            # a264 # r5033
            $ morteLogic.r5033_action()
            jump morte_s99

        '"Souhlasím, jdeme dál."':
            # a265 # r5034
            jump morte_dispose


# s98 # say5035
label morte_s98: # -
    nr '"Hej! Jsi hluchej? Co to děláš?"'

    menu:
        '"Podívej, já si s tímhle chlápkem chci promluvit. Problém?"':
            # a266 # r5036
            $ morteLogic.r5036_action()
            jump morte_s99

        '"Nic. Pojďme dál."':
            # a267 # r5037
            jump morte_dispose


# s99 # say5038
label morte_s99: # from 97.0 98.0
    nr '"Tak mě teda *neposlouchej*. Je to tvůj pohřeb."'

    menu:
        '"Jo, a ty mi můžeš zazpívat žalozpěvy. A teď buď zticha."':
            # a268 # r5039
            jump soego_s3  # EXTERN

        '"Pchá, máš pravdu. Zapomeň na to. Jdeme dál."':
            # a269 # r5040
            jump morte_dispose


# s100 # say5041
label morte_s100: # externs soego_s20
    nr '"Co to *děláš?!* Jestli ho chceš zabít, tak to udělej!"'

    menu:
        '"Já to *udělal*! Zlomil jsem mu vaz! Neměl by se hýbat!"':
            # a270 # r5042
            jump soego_s21  # EXTERN


# s101 # say5043
label morte_s101: # externs soego_s10
    nr '"Alespoň že dokáže chodit." Morte si odfrkl. "Poletování kolem je docela zábava, ale ztrácí to svůj půvab, když dostaneš chuť někomu nakopat prdel."'

    jump soego_s11  # EXTERN


# s102 # say5049
label morte_s102: # externs dhall_s5
    nr '"Hele, šéfe! Co to děláš?!"'

    menu:
        '"Chtěl bych si s tímhle písařem promluvit. Mohl by vědět něco o tom, jak jsem se sem dostal."':
            # a271 # r5050
            jump morte_s103


# s103 # say5052
label morte_s103: # from 102.0
    nr '"Hele, vykecávání držky se Spalovákáma by měla bejt ta POSLEDNÍ věc --"'

    jump dhall_s0  # EXTERN


# s104 # say5053
label morte_s104: # externs dhall_s0
    nr '"A už vůbec bys neměl kecat s nemocnejma Spalovákama. No tak, pojď, vypadneme. Čím rychlejc z tohodle místa vypadneme, tím líp --"'

    jump dhall_s1  # EXTERN


# s105 # say6071
label morte_s105: # externs deionarra_s8 deionarra_s48 deionarra_s26 deionarra_s19 deionarra_s0
    nr '"Seš zpátky se mnou, šéfe? Si byl tak ňák kapku mimo."'

    menu:
        '"Ne, jsem v pořádku. Nevíš, co to bylo za ducha?"':
            # a272 # r6075
            $ morteLogic.r6075_action()
            jump morte_s106

        '"Jsem v pořádku. Jdeme dál."':
            # a273 # r6076
            jump morte_dispose


# s106 # say6072
label morte_s106: # from 105.0
    nr '"Eh? Duch?"'

    menu:
        '"Ten přelud, s kterým jsem mluvil. Žena."':
            # a274 # r6077
            jump morte_s107


# s107 # say6073
label morte_s107: # from 106.0
    nr '"Ty ses vykecával s nějakou ženskou? Kde? Kde?" Morte se rozhlíží, vypadá rozrušeně. "Jak vypadala?"'

    menu:
        '"Stála na hrobu, tys ji neviděl?"':
            # a275 # r6078
            jump morte_s108


# s108 # say6074
label morte_s108: # from 107.0
    nr '"Eh… ne, akorát si chvilku stál jako socha. Sem měl tak trochu strach, že seš zase ňákej popletenej."'

    menu:
        '"Ne, jsem v pořádku. Myslím. Pojďme dál."':
            # a276 # r6079
            jump morte_dispose


# s109 # say6324
label morte_s109: # -
    nr '"Připomíná mi to práci, kterou jsem kdysi měl." Vypadá zmateně. "Chmm, chci říci… bez rukou."'

    menu:
        'Prozkoumej mrtvolu.' if morteLogic.r6325_condition():
            # a277 # r6325
            jump post_s3  # EXTERN

        'Prozkoumej mrtvolu.' if morteLogic.r6326_condition():
            # a278 # r6326
            jump post_s4  # EXTERN

        '"Hmmm. Jestlipak to funguje i s jinými letáky…"' if morteLogic.r6327_condition():
            # a279 # r6327
            jump post_s5  # EXTERN

        '"Hmmm. Jestlipak to funguje i s jinými letáky…"' if morteLogic.r6328_condition():
            # a280 # r6328
            jump post_s5  # EXTERN

        'Prozkoumej jiné letáky.' if morteLogic.r6329_condition():
            # a281 # r6329
            jump post_s5  # EXTERN

        'Použij schopnost Kosti vyprávějte na mrtvolu.' if morteLogic.r6330_condition():
            # a282 # r6330
            jump post_s2  # EXTERN

        'Nechej mrtvolu být.':
            # a283 # r6331
            jump morte_dispose


# s110 # say6609
label morte_s110: # externs s42_s3 s42_s0
    nr '"Hej, šéfe. Takovej vandalismus. Tydle šrouby byly asi jediná věc, co držela ten pytel kostí pohromadě. Necromancie s těmahle starejma kostma víc nesvede, chápeš?"'

    menu:
        '"Tak?"':
            # a284 # r6658
            $ morteLogic.r6658_action()
            jump s42_s1  # EXTERN

        '"Oh… Nechtěl jsem způsobit trvalé poškození."':
            # a285 # r6659
            $ morteLogic.r6659_action()
            jump s42_s1  # EXTERN

        '"Tak dobrá, nevadí. Snad někdy příště."':
            # a286 # r6660
            jump s42_s1  # EXTERN


# s111 # say6610
label morte_s111: # externs s42_s3 s42_s2 s42_s0
    nr '"Hmmm. Zajímalo by mě, jestli by tomuhle šedovousovi vadilo, kdybych si *já* půjčil jeho tělo…"'

    menu:
        '"„Staroch?“"':
            # a287 # r6661
            jump s42_s1  # EXTERN

        '"Nemyslím, že k tomu má nějaký vztah."':
            # a288 # r6662
            jump s42_s1  # EXTERN

        '"Něco mi říká, že bys byl dvakrát tak otravný, kdybys měl ruce. Jdeme."':
            # a289 # r6663
            jump s42_s1  # EXTERN


# s112 # say6611
label morte_s112: # externs s42_s13
    nr '"Mohl bys to odříznout? Jeho paže odpadnou."'

    menu:
        'Překřiž si ruce na hrudníku.' if morteLogic.r6664_condition():
            # a290 # r6664
            jump s42_s4  # EXTERN

        'Napodob gesto kostlivce… sleduj co se stane.' if morteLogic.r6665_condition():
            # a291 # r6665
            jump s42_s9  # EXTERN

        '"Uh…"':
            # a292 # r6666
            jump s42_s10  # EXTERN

        'Nechej kostlivce být.':
            # a293 # r6667
            jump morte_dispose


# s113 # say6771
label morte_s113: # from 54.0 54.1
    nr '"Vona vládne tomudle městu. Poznáš ji, až ji uvidíš: Má čepele kolem ksichtu, je velikánská jako vobr, lítá nad zemí, právě jako tidle." Morte kývl na dabuse, který se na vás oba díval. "Nikdo vo ní moc neví… vona toho moc nenakecá. Všecko, co vo ní potřebuješ vědět je, že ji nemáš nasrat. Dyž ji uvidíš, tak ti doporučuju: zdrhej."'

    menu:
        '"Aha."':
            # a294 # r2784
            jump dabus_s3  # EXTERN


# s114 # say6784
label morte_s114: # -
    nr 'Morte se pohrdavě ušklíbl. "To dřív prolezu vnitřnostma tanar„riho než rozluštím co tadle kozí hlava chce říct. Chceš tlumočníka? Najdi si nějakýho Sigilana."'

    menu:
        '"Aha."':
            # a295 # r6955
            jump dabus_s3  # EXTERN


# s115 # say6786
label morte_s115: # -
    nr '"Oh, oni *mají* jména. Jsem si tím jistý."'

    jump annah_s43  # EXTERN


# s116 # say6790
label morte_s116: # -
    nr '"To říkáš *ty*, fiendskej spratku."'

    menu:
        '"Nech toho, Morte - mohla by ses ho ještě na něco zeptat, Annah?"':
            # a296 # r6956
            jump annah_s40  # EXTERN

        '"Zapomeň na to. Pojďme."':
            # a297 # r6957
            $ morteLogic.r6957_action()
            jump dabus_s6  # EXTERN


# s117 # say6794
label morte_s117: # -
    nr 'Morte se pohrdavě ušklíbne. "To dřív prolezu vnitřnostma tanar„riho než rozluštím co tyhle lítající kozí hlavy zkoušej říct. Chceš tlumočníka? Vem si na to tohle fiendský mrně." Ukazuje na Annah. "Ona je z Úlu."'

    menu:
        '"Možná udělám…"':
            # a298 # r6958
            jump dabus_s3  # EXTERN


# s118 # say6797
label morte_s118: # -
    nr 'Morte se pohrdavě ušklíbne. "To dřív prolezu vnitřnostma tanar„riho než rozluštím co tyhle lítající kozí hlavy zkoušej říct. Chceš tlumočníka?" Ukáže na Dak“kona. "Vem si Svatějšího-než-ty-a-dvakrát-klidnějšího aby ti to přeložil."'

    menu:
        '"Možná splním…"':
            # a299 # r6959
            jump dabus_s3  # EXTERN


# s119 # say6800
label morte_s119: # -
    nr 'Morte se pohrdavě ušklíbne. "To dřív prolezu vnitřnostma tanar„riho než rozluštím co tyhle lítající kozí hlavy zkoušej říct. Chceš tlumočníka? Vem si na to tanar“riho." Ukazuje na Fall-from-Grace. "Pravděpodobně si s tady těma hochama musela celou dobu vyměňovat novinky."'

    menu:
        '"Snad vyhovím…"':
            # a300 # r6960
            jump dabus_s3  # EXTERN


# s120 # say7040
label morte_s120: # -
    nr 'Odvracíš se, když tu náhle koutkem oka postřehneš, jak na tebe Morte civí. "He?"'

    menu:
        '"Co to je?"':
            # a301 # r7055
            jump morte_s121


# s121 # say7041
label morte_s121: # from 120.0
    nr '"*Všiml* sis, jak na mě ta krásná mrtvola zírala?" Morte klape svými zuby pln očekávání. "Určitě hledá ňákýho šťastlivce, co by jí pomoh vyhřát rakev."'

    menu:
        '"*Prosím*, nezačínej s tím zase."' if morteLogic.r7056_condition():
            # a302 # r7056
            $ morteLogic.r7056_action()
            jump morte_s122

        '"O čem to *mluvíš*?"' if morteLogic.r7057_condition():
            # a303 # r7057
            $ morteLogic.r7057_action()
            jump morte_s47

        '"Co ten tvůj prázdný pohled upřený někam do záhrobí?"' if morteLogic.r7058_condition():
            # a304 # r7058
            $ morteLogic.r7058_action()
            jump morte_s47


# s122 # say7042
label morte_s122: # from 121.0
    nr 'Morte tě nebere na vědomí a pokračuje dále v poněkud zamyšlenějším tónu: "Ve skutečnosti nepotřebuju bejt středem pozornosti… jen bych chtěl bejt vnímanej jako něco víc než jen pouhopouhá lebka, chápeš? Krom základních instinktů, co má každá živá bytost, mám taky city. Chci zkrátka klasický námluvy, nejen čtrnáctidenní flám v mauzoleu."'

    menu:
        '"Ještě chvilku, já tě *drapnu* a někam zahodím, prevíte."':
            # a305 # r7059
            jump morte_s123

        '"Morte, ty *jsi* prostě lebka. Každý tě bude brát čistě jako lebku. Tak už se s tím smiř."':
            # a306 # r7060
            jump morte_s124

        '"Rozumím. Tak už pojďme odsud, fajn?"':
            # a307 # r7061
            jump morte_dispose


# s123 # say7043
label morte_s123: # from 122.0
    nr '"Prrr, šéfíku…" Morte se nenápadně vzdálil z dosahu. "Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kerej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"Ty seš ten *poslední*, kerej by mi měl radit ohledně lásky."':
            # a308 # r7062
            jump morte_s126

        '"Jasně, Morte. Jdeme."':
            # a309 # r7063
            jump morte_dispose


# s124 # say7044
label morte_s124: # from 122.1
    nr '"No teda dobře, jsem jen pouhopouhá lebka, ale mám skutečně vřelý srdce."'

    menu:
        '"Abych pravdu řekl, stejně žádné *nemáš*."':
            # a310 # r7064
            jump morte_s125

        '"To víš že jo, Morte. Padáme."':
            # a311 # r7065
            jump morte_dispose


# s125 # say7045
label morte_s125: # from 124.0
    nr '"Čeho, vmontoval ses do mýho života jen kvůli tomu, abys poplival a pošlapal mý sny a tužby? Budiž tedy po tvém. Srdce teda nemám, zato však duši *rozhodně* jo."'

    menu:
        '"No, vlastně bych si i vsadil, že ty… ale nech to plavat. Vyrážíme."':
            # a312 # r7066
            jump morte_dispose

        '"Jasně, Morte. Jdeme."':
            # a313 # r7067
            jump morte_dispose


# s126 # say7046
label morte_s126: # from 123.0
    nr '"Kdyby ti zbyla aspoň část rozumu z doby, než posledně umřels, věděl bys to líp." Nevěřil bys, že něčí hlas může obsahovat takovou dávku samolibosti, Morte trhá rekordy. "Ve věcech lásky sem napsal naučnou brožuru."'

    menu:
        '"To víš že jo, Morte. Padáme."':
            # a314 # r7068
            jump morte_dispose


# s127 # say7071
label morte_s127: # -
    nr 'Morte chvíli kostru studuje, pak zavrtí hlavou. "Mmm.. tato je moc čistá… nezůstal na ní ani kousek masa. A taky bych nebyl schopný dostat z kostí to bělidlo."'

    menu:
        '"Nejsem schopný posoudit, jestli je „příliš čistá“… ale měl by ses naučit pár věcí o čistotnosti, to rozhodně. Neublížilo by ti to."':
            # a315 # r7076
            jump morte_s70

        '"Dobrá tedy. Jdeme."':
            # a316 # r7077
            jump morte_dispose


# s128 # say7130
label morte_s128: # -
    nr '"Joo!"'

    jump hivef1_s8  # EXTERN


# s129 # say7187
label morte_s129: # -
    nr '"Mimir - mluvící encyklopedie. To sem já, šéfe."'

    menu:
        '"Rozumím. A ty si to koukej zapsat za uši, Morte. Podle toho, jak vypadala, jsem tě od smrti zachránil podruhé."':
            # a317 # r7483
            $ morteLogic.r7483_action()
            jump harlotn_s8  # EXTERN

        '"Vypadnem odsud. Sbohem, slečno."':
            # a318 # r7484
            jump morte_dispose


# s130 # say7188
label morte_s130: # -
    nr 'Morte jenom civí zcela hypnotizován, zatímco ta děvka uvolnila stavidla a spustila na tebe lavinu verbálního hnoje. Nakonec jí došel dech. Morte je chvilku zticha, pak se však otočí k tobě a celou situaci komentuje: "Fíha, šéfíku, to teda bylo něco. Zas mám ňáký skvělý přírůstky do svýho starýho dobrýho výběru nejlepčích urážek a posměšků." Nato se přiblíží k běhně, která lapá po dechu. "Taky tě miluju."~ [MRT387]'

    menu:
        'Odejdi.':
            # a319 # r7485
            $ morteLogic.r7485_action()
            jump morte_dispose


# s131 # say7775
label morte_s131: # -
    nr '"Teda náčelníku," vložil se Morte předtím, než si můžeš se stvořením promluvit. "Vykašli se na to. Nechceš přece vykecávat s každým fiendem na ulici. Nech to plavat."'

    menu:
        '"Můžeš mi odpovědět na…"':
            # a320 # r7776
            jump morte_s132

        'Odejdi od bytosti.':
            # a321 # r7777
            jump morte_dispose


# s132 # say7778
label morte_s132: # from 131.0
    nr '"Ne, nedělej to." Morte pohlédl na stvoření, pak se otočil k tobě a ztišil hlas do šepotu. "Jsou vznětliví. Pojďme pryč."'

    menu:
        '"Já to risknu."':
            # a322 # r7779
            jump bishab_s11  # EXTERN

        'Odejdi od stvoření.':
            # a323 # r7780
            jump morte_dispose


# s133 # say7805
label morte_s133: # -
    nr 'Morte si povzdechl zrovna ve chvíli, když ses chystal promluvit s démonem.'

    menu:
        '"Ano?"':
            # a324 # r7806
            jump morte_s134


# s134 # say7807
label morte_s134: # from 133.0
    nr '"Och, nic… víš, znáš to - chybami se člověk učí." Pokynul hlavou ke stvoření. "Jen do toho."'

    menu:
        '"Já chci."':
            # a325 # r7808
            jump bishab_s11  # EXTERN

        '"Dobrá, nech to být. Jdeme."':
            # a326 # r7809
            jump morte_dispose


# s135 # say2349
label morte_s135: # from 44.0 44.1
    nr '"Jo, „gith“…" Morte se podíval na githa, který na tebe stále zírá. "Promluvíme si o tom později."'

    menu:
        '"Ještě nejsem připravený odejít. Nejdřív se ho na něco zeptám…"':
            # a327 # r9035
            jump gith_s7  # EXTERN

        'Nechej githa být.':
            # a328 # r9036
            jump morte_dispose


# s136 # say9860
label morte_s136: # -
    nr '"No tak, šéfe… zabiješ toho hňupa, než se ti ho podaří probrat!"'

    menu:
        '"Máš pravdu, Morte - pojďme."':
            # a329 # r9882
            jump morte_dispose


# s137 # say11946
label morte_s137: # -
    nr 'Morte připlul blíž. "Vo co gou, šéfe?"'

    menu:
        '"Vidíš tyhle zuby?"':
            # a330 # r11974
            jump morte_s138

        '"Nic, kašli na to."':
            # a331 # r11975
            jump morte_dispose


# s138 # say11947
label morte_s138: # from 137.0
    nr 'Morte se podíval na tvou dlaň. "Eeeeee." Vypadá to, že ho zuby morbidně fascinují. "To jsou ale malí hnusáci, co?"'

    jump morte_dispose


# s139 # say11948
label morte_s139: # -
    nr '"Zapomeň na to." Morte se otřásl. "Ty bys chtěl takový malý hajzlíky v *sobě*?"'

    menu:
        '"No tak, Morte, vypadá to, že se jim líbíš. Podívej se, jak se na tebe dívají."':
            # a332 # r11976
            jump morte_s140

        'Popadni Morteho a narvi mu zuby do tlamy.':
            # a333 # r11977
            $ morteLogic.r11977_action()
            jump morte_s141

        '"Tak to nic."':
            # a334 # r11978
            jump morte_dispose


# s140 # say11949
label morte_s140: # from 139.0
    nr '"Ti malí parchanti ať se ke mně radši nepřibližujou, nebo…" Morte se odmlčel. "Hm, hele, nemám tušáka, čím vyhrožovat zubům."'

    menu:
        'Prozkoumej zuby.':
            # a335 # r11979
            jump morte_dispose

        'Popadni Morteho a narvi mu zuby do tlamy.':
            # a336 # r11980
            $ morteLogic.r11980_action()
            jump morte_s141

        '"Tak to nic."':
            # a337 # r11981
            jump morte_dispose


# s141 # say11950
label morte_s141: # from 139.1 140.1
    nr 'Boj je krátký. Popadl jsi Morteho za hlavu - vlastně jediným způsobem, jak ho můžeš chytit - a když se pokoušel prokousat se na svobodu, zuby vyskočily z tvé dlaně a narvaly se mu do čelisti. Morte vyje, protože Ingressiny zuby okamžitě vyrvaly jeho vlastní zuby a nacpaly se do vzniklých otvorů.'

    menu:
        '"Tak, Morte. Nebylo to zas tak zlý, co?"':
            # a338 # r11982
            $ morteLogic.r11982_action()
            jump morte_s143


# s142 # say11951
label morte_s142: # from 149.0
    nr 'Morte dál vyje. Zuby se usazují, vyrovnávají a zapouštějí kořeny s hrozivým vrtavým kvílením.'

    menu:
        '"Morte? Jsi okej?"':
            # a339 # r11983
            $ morteLogic.r11983_action()
            jump morte_s143


# s143 # say11952
label morte_s143: # from 141.0 142.0
    nr 'Vypadá to, že tě Morte neslyší… vyje a vyje, pak náhle začal zuby bušit o sebe. Podařilo se mu vydat ze sebe tři mohutná, mocná kousnutí, než se horní a spodní zuby navzájem zablokovaly a zabránily mu v otvírání čelistí.'

    menu:
        '"Uau."':
            # a340 # r11984
            jump morte_s144


# s144 # say11953
label morte_s144: # from 143.0
    nr 'Morte si pro sebe něco mumlá, oči má rozšířené.'

    menu:
        '"Takže… líbí se ti?"' if morteLogic.r11985_condition():
            # a341 # r11985
            jump morte_s145

        '"Morte, jsi okej?"' if morteLogic.r11986_condition():
            # a342 # r11986
            jump morte_s150


# s145 # say11954
label morte_s145: # from 144.0
    nr 'Zuby se náhle rozdělily a Morte se zhluboka nadechl. "Za tohle tě *zabiju," řekl. "Tohle od tebe bylo fakt hnusný."'

    menu:
        '"Jaké jsou?"':
            # a343 # r11987
            jump morte_s146


# s146 # say11955
label morte_s146: # from 145.0 150.0
    nr 'Morte zkušebně pohybuje čelistí. "Divný. Ale ne zlý." Náhle se zuby prodloužily do dlouhých ostrých tesáků. "Ooooh! Změnily se.!" Smrskly se na normální velikost, pak opět na tesáky, nakonec zase zpět. "Myslím, že se mi docela líbí."'

    menu:
        '"Promiň, Morte. Nechtěl jsem ti nijak ublížit."' if morteLogic.r11988_condition():
            # a344 # r11988
            jump morte_s147

        '"Vidíš? Neměl jsem pravdu?"' if morteLogic.r11989_condition():
            # a345 # r11989
            jump morte_s147


# s147 # say11956
label morte_s147: # from 146.0 146.1
    nr '"Oh,ale stejně tě za to dostanu." Odpověděl Morte, vyceněné zuby se opět prodloužily na tesáky. "Jen si počkej."'

    menu:
        '"Uh… pomsta nikdy nikomu nepomohla, Morte… uh, pojďme."' if morteLogic.r11990_condition():
            # a346 # r11990
            jump morte_dispose

        '"Však mi později poděkuješ. Uvidíš."' if morteLogic.r11991_condition():
            # a347 # r11991
            jump morte_dispose


# s148 # say11957
label morte_s148: # -
    nr '"Co je špatně?" Morte připlul blíž a podíval se na tvou dlaň. "Hej… vypadá to, jako by se na něco chystaly, že jo?"'

    menu:
        '"To jo, viď ---"':
            # a348 # r11992
            jump morte_s149


# s149 # say11958
label morte_s149: # from 148.0
    nr 'Co se stalo poté, to se dá jenom těžce popsat… a že to byl bolestný pocit. Rychle, nedávajíce ti šanci sevřít je v ruce, zuby vyskočily z tvé dlaně a narvaly se Mortemu do čelisti. Morte vyje, protože Ingressiny zuby okamžitě vyrvaly jeho vlastní chrup a nacpaly se do vzniklých otvorů.'

    menu:
        '"Morte!"':
            # a349 # r11993
            jump morte_s142


# s150 # say11959
label morte_s150: # from 144.1
    nr 'Zuby se náhle rozevřely a Morte se zhluboka nadechl. "Za tohle tě *zabiju*! Ty jsi to plánoval! Já to věděl, že na mě něco chystáš!"'

    menu:
        '"Hele, nechtěl jsem, ať se to stane… dokonce jsem tě varoval. Uh… jaké jsou?"':
            # a350 # r11994
            jump morte_s146


# s151 # say12389
label morte_s151: # -
    nr 'Morte ti zašeptal: "Šéfe, tohle se mi nelíbí. Neměli by tady být. Válka Krve určitě neprobíhá tak, že by nějaký fiend mohl jít na dovolenou. Něco *chcou*. Dej si majzla." Mezitím Tegar„in odpovídá dál svému společníkovi…'

    jump tegarin_s12  # EXTERN


# s152 # say12449
label morte_s152: # -
    nr '"Šéfe, jsem si jistej, že ti dva volové něco chystaj. Mám pocit, že dezertovali a teď hledají něco, co by jim pomohlo v Baatoru povýšit. Nemluv s nima, šéfe… nevíš, jakou hru to hrajou, a mohl by ses spálit… doslova."'

    menu:
        '"Dobrá, Morte. Mám pro ty dva už jenom pár otázek…"':
            # a351 # r12450
            jump aethel_s11  # EXTERN

        '"Dobrá, Morte. Skončil jsem s nimi."':
            # a352 # r12451
            jump morte_dispose


# s153 # say12466
label morte_s153: # -
    nr 'Morte připlul blíž a zašeptal ti do ucha: "*Má* pravdu, šéfe… nechápu, co tě tak vytočilo."'

    menu:
        '"Velmi dobře… jenom jsem se chtěl na něco zeptat…"':
            # a353 # r12553
            jump baria_s4  # EXTERN

        '"Sklapni, ty ukňučená lebko! A ty, kozí-hlavo: Chcípni…"':
            # a354 # r12554
            $ morteLogic.r12554_action()
            jump morte_dispose

        '"Och, ne… to jsi byl *ty*, a budeš toho litovat…"':
            # a355 # r12555
            $ morteLogic.r12555_action()
            jump morte_dispose

        '"Pak na to zapomeň. Sbohem."':
            # a356 # r12556
            $ morteLogic.r12556_action()
            jump morte_dispose


# s154 # say12467
label morte_s154: # -
    nr '"Jo, jo! Dobrý!"'

    jump baria_s20  # EXTERN


# s155 # say12621
label morte_s155: # -
    nr 'Morte vypadá vyveden z konceptu, jak se na něho upřely všechny oči. "Co? Cože?" Máš pocit, že kdyby měl rty, nevinně by si pískal.'

    menu:
        '"Máš nějaké vysvětlení, Morte?"':
            # a357 # r12854
            jump morte_s156

        '"Co je „mimir?“"' if morteLogic.r12855_condition():
            # a358 # r12855
            $ morteLogic.r12855_action()
            jump morte_s157

        '"Nestarej se o něj… mohl bys mi odpovědět?"':
            # a359 # r12856
            jump creed_s30  # EXTERN


# s156 # say12622
label morte_s156: # from 155.0
    nr '"Dobrá. Hele, ještě si poslechnem toho chlapika, jo?" Morte se otočil a upírá na krysaře tvrdý pohled.'

    menu:
        '"Ne… pojďme si poslechnout, co nám vyklopíš, Morte."':
            # a360 # r12857
            jump morte_s158

        '"Na minutku… co je „mimir?“"' if morteLogic.r12858_condition():
            # a361 # r12858
            $ morteLogic.r12858_action()
            jump morte_s157

        'Otoč se zpět na krysaře.':
            # a362 # r12859
            jump creed_s32  # EXTERN


# s157 # say12623
label morte_s157: # from 155.1 156.1
    nr 'Morte koulí očima, jakoby rozpačitě. "To je… mluvící encyklopedie. Nic, na co bych byl pyšný. Hele, ještě si poslechnem toho chlapika, jo?"'

    menu:
        '"Velmi dobře."':
            # a363 # r12860
            $ morteLogic.r12860_action()
            jump creed_s32  # EXTERN

        '"Ne, už jsem slyšel dost. Sbohem, krysaři."':
            # a364 # r12861
            $ morteLogic.r12861_action()
            jump creed_s59  # EXTERN


# s158 # say12624
label morte_s158: # from 156.0
    nr '"Oh,  ve svý podstatě šéfe… proč bych ti pomáhal? Už jsem ti řek všechno užitečný, co *Já* vím. Ať se ten hlupák stará o svoje malichernosti."'

    menu:
        '"Velmi dobře."':
            # a365 # r12862
            jump creed_s32  # EXTERN

        '"Nevadí. Pojďme… sbohem, krysaři."':
            # a366 # r12863
            jump creed_s59  # EXTERN


# s159 # say12625
label morte_s159: # -
    nr '"Ano šéfe! To je postoj!"'

    jump creed_s40  # EXTERN


# s160 # say12626
label morte_s160: # -
    nr '"Mrtvý, šéfe… mrtvý."'

    menu:
        '"Na krysaře vypadáš celkem přátelsky…"':
            # a367 # r12864
            jump creed_s49  # EXTERN

        '"Rozumím. Jiná otázka…"':
            # a368 # r12865
            jump creed_s15  # EXTERN

        '"Díky za informace. Sbohem."':
            # a369 # r12866
            jump creed_s59  # EXTERN


# s161 # say12627
label morte_s161: # -
    nr '"Umřít, šéfe… umřít."'

    menu:
        '"Ah… Co jsi to říkal o lidech platících za mrtvé krysy?"':
            # a370 # r12867
            jump creed_s18  # EXTERN

        '"Aha. Mám otázku o něčem jiném…"':
            # a371 # r12868
            jump creed_s15  # EXTERN

        '"Rozumím. Sbohem."':
            # a372 # r12869
            jump creed_s59  # EXTERN


# s162 # say13748
label morte_s162: # -
    nr '"Nuže, je to strom s příliš mnoha prasklejma větvema." Morte koulí očima. "Rozhovor s Chaotiky nemá žádný smysl, šéfíku. Je to banda pitomců."'

    menu:
        '"Chaotici?"' if morteLogic.r13774_condition():
            # a373 # r13774
            $ morteLogic.r13774_action()
            jump morte_s163

        '"Ještě jednou, kdo že jsou Chaotici?"' if morteLogic.r13775_condition():
            # a374 # r13775
            $ morteLogic.r13775_action()
            jump morte_s163

        '"Stejně si myslím, že bych se od něj mohl něco dozvědět. No nic, pojďme."' if morteLogic.r13776_condition():
            # a375 # r13776
            $ morteLogic.r13776_action()
            jump morte_dispose


# s163 # say13749
label morte_s163: # from 162.0 162.1
    nr '"Jsou společenství, co nemají žádná pravidla… krom toho, aby jim žádná myšlenka příliš dlouho netrápila hlavu. Někdy se jim říká „Chaotici“. Není třeba vysvětlovat proč."'

    menu:
        '"Jak nabírají členy?"':
            # a376 # r13777
            jump morte_s164

        '"Aha. Pojďme."':
            # a377 # r13778
            jump morte_dispose


# s164 # say13750
label morte_s164: # from 163.0
    nr '"Zdá se, že prostě vábí členy jako mouchy… tedy, členy dostatečně bláznivé a zmatené, předpokládám. Nemyslím, že by měli nějaké náběrčí… ačkoliv o nich se vlastně nic jistého říct nedá."'

    menu:
        '"Aha. Díky za informaci."':
            # a378 # r13779
            jump morte_dispose


# s165 # say13828
label morte_s165: # -
    nr '"No, je to strom s příliš mnoha prasklými větvemi." Morte koulí očima. "Rozhovor s Chaotiky nemá žádný smysl, šéfíku. Je to přitroublá banda."'

    menu:
        '"Xaositectové?"' if morteLogic.r13986_condition():
            # a379 # r13986
            $ morteLogic.r13986_action()
            jump morte_s166

        '"Ještě jednou, kdo že jsou Xaositectové?"' if morteLogic.r13987_condition():
            # a380 # r13987
            $ morteLogic.r13987_action()
            jump morte_s166

        '"Stejně si myslím, že bych se od něj mohl něco dozvědět. No nic, pojďme."' if morteLogic.r13988_condition():
            # a381 # r13988
            $ morteLogic.r13988_action()
            jump morte_dispose


# s166 # say13829
label morte_s166: # from 165.0 165.1
    nr '"Jsou společenství, co nemá žádná pravidla… krom toho, aby jim žádná myšlenka příliš dlouho netrápila hlavu. Někdy se jim říká „Chaotici“. Není třeba vysvětlovat proč."'

    menu:
        '"Jak nabírají členy?"' if morteLogic.r13989_condition():
            # a382 # r13989
            jump morte_s167

        '"Aha. Tak teda pojďme."':
            # a383 # r13990
            jump morte_dispose


# s167 # say13830
label morte_s167: # from 166.0
    nr '"Zdá se, že prostě vábí členy jako mouchy… tedy, členy dostatečně bláznivé a zmatené, předpokládám. Nemyslím, že by měli nějaké náboráře… ačkoliv o nich se vlastně nic jistého říct nedá."'

    menu:
        '"Aha. Díky za informaci."':
            # a384 # r13991
            jump morte_dispose


# s168 # say14075
label morte_s168: # -
    nr '"Tak teda fajn…" Zasyčel na tebe Morte. "Pojďme, šéfe. Tento Spalovač by mohl sloužit jako hnojivo."'

    menu:
        '"Dobře. Vypadněme odsud."' if morteLogic.r14275_condition():
            # a385 # r14275
            jump await_s6  # EXTERN

        '"Dobře. Vypadněme odsud."' if morteLogic.r14276_condition():
            # a386 # r14276
            jump await_s6  # EXTERN

        '"Dobře. Vypadněme odsud."' if morteLogic.r14277_condition():
            # a387 # r14277
            jump await_s6  # EXTERN

        '"Dobře. Vypadněme odsud."' if morteLogic.r14278_condition():
            # a388 # r14278
            jump await_s15  # EXTERN


# s169 # say15339
label morte_s169: # -
    nr '"Roztrhni ho na dva kousky, šéfe. Ukaž mu, jak se to dělá!"'

    jump adyzoel_s19  # EXTERN


# s170 # say15340
label morte_s170: # -
    nr '"Jo, odpověz na otázky!"'

    jump adyzoel_s13  # EXTERN


# s171 # say15341
label morte_s171: # -
    nr '"Vsadím deset měděnejch na toho velkýho zjizvenýho!" Morte přilétne k tobě a zašeptá: To jsi jako ty, šéfe. Nepotop nás."'

    jump adyzoel_s20  # EXTERN


# s172 # say15342
label morte_s172: # -
    nr '"Dobře, šéfíku: Dej mu! Zkus na něj nějaký finty!"'

    jump adyzoel_s19  # EXTERN


# s173 # say15343
label morte_s173: # -
    nr '"To je pravda ty nafoukanej, navoněnej, cukroprdelatej elitisto… slyšels ho!"'

    jump adyzoel_s32  # EXTERN


# s174 # say15344
label morte_s174: # -
    nr '"Kdo že *jsem*? Mohl jsem být tvůj otec, ale ta opice mě předběhla na schodech!"'

    menu:
        '"Morte, buď už zticha."':
            # a389 # r15490
            jump morte_s175

        'Nechej Morteho pokračovat.':
            # a390 # r15491
            jump morte_s175


# s175 # say15345
label morte_s175: # from 174.0 174.1
    nr '"Copak princezno? Ztráta slov? Rač si zvednout spadlou čelist, než ti něco vlítne do krku! Jo, jo, slyšelas dobře! Sbal si svý zdobený podprsenky a běž se schovat pod maminčinu sukni, kam patříš! A vyřiď jí že ji pozdravu."'

    menu:
        '"Morte! ztichni už"':
            # a391 # r15492
            $ morteLogic.r15492_action()
            jump morte_s176

        'Nechej Morteho pokračovat.':
            # a392 # r15493
            jump morte_s177


# s176 # say15346
label morte_s176: # from 175.0
    nr '"Co? Ó… promiň, šéfíku. Tenhle druh chlápka mě nebere…"'

    jump adyzoel_s33  # EXTERN


# s177 # say15347
label morte_s177: # from 175.1
    nr '"Proč, jestli jsem neznal nic lepšího, řekl bych-"'

    jump adyzoel_s33  # EXTERN


# s178 # say15348
label morte_s178: # -
    nr '"Co? Já jsem jenom mimir, šéfíku! Neumím se bít!„"'

    $ morteLogic.s178_action()
    jump adyzoel_s35  # EXTERN


# s179 # say15349
label morte_s179: # -
    nr '"To je, uuh… druh mluvící encyklopedie. Nerad o tom mluvím; je to trapné, skutečně."'

    if morteLogic.s179_condition():
        $ morteLogic.s179_action()
        jump adyzoel_s36  # EXTERN
    menu:
        '"Ale ty NEJSI mimir, Morte…"' if morteLogic.r65537_condition():
            # a393 # r65537
            jump adyzoel_s36  # EXTERN


# s180 # say15350
label morte_s180: # -
    nr '"Hele, šéfíku… Ty ho necháš jen tak odejít? Pojď mu nakopat prdel! Půjdu mu po očích, zatímco ty po něm vyjedeš!"'

    menu:
        '"Máš pravdu… jdeme na něj."':
            # a394 # r15494
            jump adyzoel_s19  # EXTERN

        '"Už je čas, Morte. Jdeme."':
            # a395 # r15495
            $ morteLogic.r15495_action()
            jump morte_dispose


# s181 # say16613
label morte_s181: # from 185.0
    nr '"He? Hm, jistě, náčelníku, samo -- jak poroučíš."'

    menu:
        '"Díky. Ale ještě něco mi leží na mysli, Truchlící…"' if morteLogic.r16881_condition():
            # a396 # r16881
            jump mftree_s28  # EXTERN

        '"Morte, já to myslím vážně. Tak mohl bys vyvinout nějakou snahu?"' if morteLogic.r16882_condition():
            # a397 # r16882
            $ morteLogic.r16882_action()
            jump morte_s182

        '"Díky Morte. Sbohem, Truchlící za Stromy."':
            # a398 # r16883
            jump morte_dispose


# s182 # say16614
label morte_s182: # from 181.1
    nr 'Morte na tebe chvíli v tichosti hledí a pak přitaká. "Jistě, můžu. Je-li to pro tebe důležité, udělám to."'

    menu:
        '"Díky. Annah? Mohla bys?"' if morteLogic.r16884_condition():
            # a399 # r16884
            $ morteLogic.r16884_action()
            jump annah_s99  # EXTERN

        '"Díky. Ignusi?"' if morteLogic.r16885_condition():
            # a400 # r16885
            $ morteLogic.r16885_action()
            jump ignus_s11  # EXTERN

        '"Díky. Grace, zvážila bys to?"' if morteLogic.r16886_condition():
            # a401 # r16886
            $ morteLogic.r16886_action()
            jump grace_s14  # EXTERN

        '"Díky. Dak„kone, mohl bys pomoci tomuto muži?"' if morteLogic.r16887_condition():
            # a402 # r16887
            $ morteLogic.r16887_action()
            jump dakkon_s74  # EXTERN

        '"Díky. Dak„kone, pomož tomuto muži."' if morteLogic.r16888_condition():
            # a403 # r16888
            $ morteLogic.r16888_action()
            jump dakkon_s75  # EXTERN

        '"Díky. Nordome, myslíš, že bys mohl pomoci tomuto muži?"' if morteLogic.r16889_condition():
            # a404 # r16889
            $ morteLogic.r16889_action()
            jump nordom_s1  # EXTERN

        '"Díky. Vhailore, zvládl bys pomoci?"' if morteLogic.r16890_condition():
            # a405 # r16890
            $ morteLogic.r16890_action()
            jump vhail_s1  # EXTERN

        '"Díky. Ale ještě něco mi leží na mysli, Truchlící…"':
            # a406 # r16891
            jump mftree_s28  # EXTERN

        '"Díky Morte. Sbohem, Truchlící za Stromy."':
            # a407 # r16892
            jump morte_dispose


# s183 # say16615
label morte_s183: # -
    nr '"Víš, já *fakt* nevidím, že by to někam vedlo. Já si myslím - co tě nepálí, nehas. Stejnak tahle sorta lidí bude po špičkách obcházet na zahradě květák a v žádném případě nezahubí mola nebo červotoče - jsou to přece živé bytosti!"'

    jump nordom_s2  # EXTERN


# s184 # say16616
label morte_s184: # -
    nr '"No, kluku a je to tady. Nemůžu *uveřit* tomu, že se hodláš babrat s takovým nesmyslem!"'

    jump nordom_s3  # EXTERN


# s185 # say16617
label morte_s185: # -
    nr '"Víš, šéfíku, nejsem včerejší, už jsem leccos zažil… ale fakt, že to bylo *možné* mi moc klidné spaní nepřinese.'

    menu:
        '"Děkuji ti, Nordome. Morte, jaký je tvůj názor?"' if morteLogic.r16893_condition():
            # a408 # r16893
            $ morteLogic.r16893_action()
            jump morte_s181

        '"Děkuji ti, Nordome. Annah, můžeš?"' if morteLogic.r16894_condition():
            # a409 # r16894
            $ morteLogic.r16894_action()
            jump annah_s99  # EXTERN

        '"Děkuji ti, Nordome. Ignusi?"' if morteLogic.r16895_condition():
            # a410 # r16895
            $ morteLogic.r16895_action()
            jump ignus_s11  # EXTERN

        '"Děkuji ti, Nordome. Grace, mohla bys to zvážit?"' if morteLogic.r16896_condition():
            # a411 # r16896
            $ morteLogic.r16896_action()
            jump grace_s14  # EXTERN

        '"Děkuji ti, Nordome. Dak„kone, dokázal bys pomoci tomuto muži?"' if morteLogic.r16897_condition():
            # a412 # r16897
            $ morteLogic.r16897_action()
            jump dakkon_s74  # EXTERN

        '"Děkuji ti, Nordome. Dak„kone: pomož tomuto muži."' if morteLogic.r16898_condition():
            # a413 # r16898
            $ morteLogic.r16898_action()
            jump dakkon_s75  # EXTERN

        '"Děkuji ti, Nordome. Vhailore, mohl bys pomoci?"' if morteLogic.r16899_condition():
            # a414 # r16899
            $ morteLogic.r16899_action()
            jump vhail_s1  # EXTERN

        '"Děkuji ti, Nordome. Ještě bych se na něco přeptal, Truchlící…"':
            # a415 # r16900
            jump mftree_s28  # EXTERN

        '"Jsem ti vděčný, Nordome. Sbohem, Truchlící za Stromy."':
            # a416 # r16901
            jump morte_dispose


# s186 # say16618
label morte_s186: # -
    nr '"Sakra! Na to se nemůžu dívat!"'

    jump ignus_s13  # EXTERN


# s187 # say17533
label morte_s187: # -
    nr '"Proč ne, šéfe? Až se budem nudit, můžem do nich kopat, ne? Hmm… No, vlastně do nich budeš kopat za mě. A taky bych chtěl vidět ten patnáct stop dlouhej skok!"'

    menu:
        '"Co myslíš, Annah?"' if morteLogic.r17583_condition():
            # a417 # r17583
            jump annah_s107  # EXTERN

        '"Jednoho si vezmu, obchodníku."' if morteLogic.r17584_condition():
            # a418 # r17584
            $ morteLogic.r17584_action()
            jump 300mer5_s5  # EXTERN

        '"Nechce se mi utrácet. Mám pár otázek, obchodníku…"' if morteLogic.r17585_condition():
            # a419 # r17585
            jump 300mer5_s2  # EXTERN

        '"Nechám si svoje měďáky, obchodníku. Sbohem."' if morteLogic.r17586_condition():
            # a420 # r17586
            jump morte_dispose

        '"Nemám dost peněz, obchodníku, ale mám pár otázek…"' if morteLogic.r17587_condition():
            # a421 # r17587
            jump 300mer5_s2  # EXTERN

        '"Zapomeň na to obchodníku; Nemám na něj peníze. Sbohem."' if morteLogic.r17588_condition():
            # a422 # r17588
            jump morte_dispose


# s188 # say18801
label morte_s188: # -
    nr 'Morte se otočí k Úlanovi. "Vypadni."'

    menu:
        '"Nedostaneš tu lebku."':
            # a423 # r18802
            $ morteLogic.r18802_action()
            jump colylfn_s5  # EXTERN

        '"Toto není tvá lebka."':
            # a424 # r18803
            jump colylfn_s6  # EXTERN

        'Pravda: "Běž, vezmi si ji."':
            # a425 # r18804
            jump colylfn_s9  # EXTERN

        'Zaútoč na něj, dokud se nebrání: "Běž, vezmi si ji."':
            # a426 # r18805
            jump colylfn_s10  # EXTERN

        'Pravda: "Pokud mi nějak dokážeš, že tahle lebka ti právem patří, vrátím ti ji. To je fér"':
            # a427 # r18578
            $ morteLogic.r18578_action()
            jump colylfn_s12  # EXTERN

        '"Kdo jsi?"':
            # a428 # r18807
            jump colylfn_s13  # EXTERN

        '"Koupím od tebe tu lebku. Platí?"':
            # a429 # r18808
            $ morteLogic.r18808_action()
            jump colylfn_s14  # EXTERN


# s189 # say18809
label morte_s189: # -
    nr 'Morte drží jeden z mužových prstů mezi zuby jako cigáro. Kecá přes tento prst: "Dotkni se mě ještě jednou a tvá ruka se přidá k tomuto prstu."'

    menu:
        '"Morte! Vrať tomu chlapovi jeho prst."':
            # a430 # r18810
            jump morte_s190

        '"Chmm. Vypadni, ty psisko."':
            # a431 # r18811
            jump colylfn_s11  # EXTERN

        '"To byla těžká zkouška. Sbohem."':
            # a432 # r18812
            jump colylfn_s11  # EXTERN


# s190 # say18813
label morte_s190: # from 189.0
    nr 'Morte vyplivne prst zpět na chlapa. Prst brnkne o mužovu hruď  a spadne na zem.'

    menu:
        '"Vypadni, pse."':
            # a433 # r18814
            jump colylfn_s11  # EXTERN

        '"To byla těžká zkouška. Sbohem."':
            # a434 # r18815
            jump colylfn_s11  # EXTERN


# s191 # say18816
label morte_s191: # -
    nr 'Morte zahaleká: "Šéfiku, nic tomu mrzákovi nedávej."'

    menu:
        '"Já…"':
            # a435 # r18817
            jump colylfn_s15  # EXTERN


# s192 # say18818
label morte_s192: # -
    nr 'Morte se otočí k chlapovi. "*Nemluvil* jsem s tebou, ty vypatlanej mozku. Až s tebou budu mluvit, tak to poznáš, protože budu vrčet a supět. Pochopils, doufám."'

    jump colylfn_s16  # EXTERN


# s193 # say18819
label morte_s193: # -
    nr '"Šéfe, *ne*"'

    menu:
        'Dej mu pět měďáků.' if morteLogic.r18820_condition():
            # a436 # r18820
            $ morteLogic.r18820_action()
            jump colylfn_s18  # EXTERN

        'Dej mu padesát měďáků.' if morteLogic.r18821_condition():
            # a437 # r18821
            $ morteLogic.r18821_action()
            jump colylfn_s18  # EXTERN

        'Dej mu sto měďáků.' if morteLogic.r18822_condition():
            # a438 # r18822
            $ morteLogic.r18822_action()
            jump colylfn_s18  # EXTERN

        'Dej mu pět set měďáků.' if morteLogic.r18823_condition():
            # a439 # r18823
            $ morteLogic.r18823_action()
            jump colylfn_s18  # EXTERN

        '"Nemám tolik peněz"' if morteLogic.r18824_condition():
            # a440 # r18824
            jump colylfn_s19  # EXTERN

        '"Zapomeň na nabídku. Tahle lebka ti nepatří, takže na ni zapomeň"':
            # a441 # r18825
            jump colylfn_s6  # EXTERN


# s194 # say18826
label morte_s194: # -
    nr '"Putuju s největším idiotem v mnohovesmíru."'

    menu:
        '"…a co teď, Žlutoprstej, hm? Okradu tě, a co ty teď uděláš, hm??"*':
            # a442 # r18827
            jump colylfn_s20  # EXTERN

        '"A teď z jiného soudku, Žlutoprstej, mám pár otázek…"':
            # a443 # r18828
            jump colylfn_s23  # EXTERN

        '"Sbohem, Žlutoprstej."' if morteLogic.r18829_condition():
            # a444 # r18829
            jump colylfn_s41  # EXTERN

        '"Sbohem, Žlutoprstej."' if morteLogic.r18830_condition():
            # a445 # r18830
            $ morteLogic.r18830_action()
            jump morte_dispose


# s195 # say18831
label morte_s195: # -
    nr '"Šéfe. Jdem"'

    jump colylfn_s52  # EXTERN


# s196 # say18832
label morte_s196: # -
    nr '"Není to vůbec  pěkný, v co se měním."'

    menu:
        'Dej mu pět měďáků.' if morteLogic.r18833_condition():
            # a446 # r18833
            $ morteLogic.r18833_action()
            jump colylfn_s53  # EXTERN

        'Dej mu deset měďáků.' if morteLogic.r18834_condition():
            # a447 # r18834
            $ morteLogic.r18834_action()
            jump colylfn_s53  # EXTERN

        'Dej mu padesát měďáků.' if morteLogic.r18835_condition():
            # a448 # r18835
            $ morteLogic.r18835_action()
            jump colylfn_s53  # EXTERN

        'Dej mu sto měďáků.' if morteLogic.r18836_condition():
            # a449 # r18836
            $ morteLogic.r18836_action()
            jump colylfn_s53  # EXTERN

        '"Beru to zpět. Odejdi a nechci tě už vidět."':
            # a450 # r18837
            jump colylfn_s61  # EXTERN


# s197 # say19031
label morte_s197: # -
    nr '"Haló bouchači! Jak se daří tvému příteli ze stěny?"'

    jump ojo_s11  # EXTERN


# s198 # say19032
label morte_s198: # -
    nr 'Morte sklopil hlavu. "Nepovídej, šéfe."'

    menu:
        '"Dobrá. Ojo, mám nějaké otázky."':
            # a451 # r19033
            jump ojo_s12  # EXTERN

        '"To je v pořádku. Pojďme."':
            # a452 # r19034
            jump morte_dispose


# s199 # say19551
label morte_s199: # -
    nr '"Jů, šéfe… jaká to krása, eh? Ne všude se můžeš setkat s takovým lístečkem, jako je tento, víš."'

    menu:
        '"Na shnilých mrtvolách toho nacházím málo atraktivního, Morte, ať už jsou to ženy nebo ne."':
            # a453 # r19666
            jump morte_s200

        '"No, když zapomeneme na ten pach hniloby, červy, rozpadající se maso…"':
            # a454 # r19667
            jump morte_s201


# s200 # say19552
label morte_s200: # from 199.0
    nr 'Morte koulí očima uvnitř celé lebky. "Huh! Jednou uvidíš, co tím myslím."'

    menu:
        'Ignoruj ho a pozdrav zombie.' if morteLogic.r19668_condition():
            # a455 # r19668
            jump zomcitf_s1  # EXTERN

        'Ignoruj ho a pozdrav zombie.' if morteLogic.r19669_condition():
            # a456 # r19669
            jump zomcitf_s3  # EXTERN


# s201 # say19553
label morte_s201: # from 199.1
    nr '"Jo, koukej, to je důvod, proč jsem… hej!" Morte se k tobě otočil čelem. "Pokračuješ v utahování si ze mě?"'

    menu:
        'Ignoruj ho a pozdrav zombie.' if morteLogic.r19670_condition():
            # a457 # r19670
            jump zomcitf_s1  # EXTERN

        'Ignoruj ho a pozdrav zombie.' if morteLogic.r19671_condition():
            # a458 # r19671
            jump zomcitf_s3  # EXTERN


# s202 # say19681
label morte_s202: # -
    nr '"Eh… nejsem si jistý, že si chceš promluvit s tou… věcí."'

    menu:
        '"Proč ne, Morte?"':
            # a459 # r19691
            jump morte_s203

        '"Dobrá tedy. Pojďme."':
            # a460 # r19692
            jump morte_dispose

        'Ignoruj Morteho a pozdrav ghúla.':
            # a461 # r19693
            jump ghocitm_s1  # EXTERN


# s203 # say19682
label morte_s203: # from 202.0
    nr '"Dřív to bývali lidi… oni nebo jejich předci se krmili těly a stalo se z nich tohleto. Pěkně odporná banda, šéfe… nejsou fakt nic víc než zvířata. *Nebezpečný* zvířata, náčelníku. Hodně nebezpečný, zvlášť když ty vypadáš, jako jejich oblíbená potrava."'

    menu:
        '"Dobrá tedy. Pojďme."':
            # a462 # r19694
            jump morte_dispose

        '"Stejně si s ním promluvím."':
            # a463 # r19695
            jump ghocitm_s1  # EXTERN


# s204 # say19702
label morte_s204: # -
    nr '"Eh… nejsem si jistý, že si chceš promluvit s tou… věcí."'

    menu:
        '"Překvapuješ mne, Morte… je to nemrtvé, je to ženská. To tě většinou přece bere."':
            # a464 # r19713
            jump morte_s206

        '"Proč ne, Morte?"':
            # a465 # r19714
            jump morte_s205

        '"Dobrá tedy. Pojďme."':
            # a466 # r19715
            jump morte_dispose

        'Ignoruj Morteho a pozdrav ghúla.':
            # a467 # r19716
            jump ghocitf_s1  # EXTERN


# s205 # say19703
label morte_s205: # from 204.1 206.0
    nr '"Dřív to bývali lidi… oni nebo jejich předci se krmili těly a stalo se z nich tohleto. Pěkně odporná banda, šéfe… nejsou fakt nic víc než zvířata. *Nebezpečný* zvířata, náčelníku. Hodně nebezpečný, zvlášť když ty vypadáš jako jejich oblíbená potrava."'

    menu:
        '"Dobrá tedy. Pojďme."':
            # a468 # r19717
            jump morte_dispose

        '"Stejně si s ní promluvím."':
            # a469 # r19718
            jump ghocitf_s1  # EXTERN


# s206 # say19704
label morte_s206: # from 204.0
    nr '"Není to zrovna to samý. šéfe…"'

    jump morte_s205


# s207 # say20469
label morte_s207: # -
    nr '"Je slepá a skoro hluchá."'

    jump marta_s9  # EXTERN


# s208 # say20470
label morte_s208: # -
    nr '"Myslím, že mluví o orgánech. Doufám, že mluví o orgánech."'

    jump marta_s15  # EXTERN


# s209 # say20471
label morte_s209: # -
    nr 'Morte se otočil k Martě. "Ano, „věcičky“." Pak se otočil k tobě. "Jde o sémantiku."'

    menu:
        '"Marto, proč vytahuješ z mrtvol stehy a zuby?"' if morteLogic.r20612_condition():
            # a470 # r20612
            $ morteLogic.r20612_action()
            jump marta_s16  # EXTERN

        '"Marto, proč vytahuješ z mrtvol stehy a zuby?"' if morteLogic.r20613_condition():
            # a471 # r20613
            $ morteLogic.j20538_s209_r20613_action()
            jump marta_s16  # EXTERN

        '"Uh… dobrá. Musím jít, Marto. Sbohem."':
            # a472 # r20614
            jump morte_dispose


# s210 # say20472
label morte_s210: # -
    nr '"Na tohle se dívat *nebudu*."'

    jump marta_s24  # EXTERN


# s211 # say21602
label morte_s211: # -
    nr '"Oh, Při Mocnostech…! Zatracený dabus."'

    menu:
        '"Co se stalo?"':
            # a473 # r24695
            jump morte_s212


# s212 # say21603
label morte_s212: # from 211.0
    nr '"Je to dabus. Oni „mluví“ v rébusech, tedy v těch debilních hádankách. Jestli nevíš co říká, tak bude lepší najít někoho zdejšího nebo jinej způsob k domluvě s ním… jestli s ním chceme mluvit. Nepříjemná banda. Můj tip? On *umí* mluvit, jenom radši každýho pošle do prdele tou svojí hádankou."'

    menu:
        '"Co je „dabus?“"':
            # a474 # r24696
            jump morte_s213


# s213 # say21604
label morte_s213: # from 212.0
    nr '"Jsou to sluhové Paní bolesti. Vznášejí se ve vzduchu okolo a rozbíjejí, opravují a záplatují Sigil podle jejích přání. Jsou méně než mouchy." Morte vzdychá. "Nicméně je nemůžeš zaplácnout, jinak by Paní byla… rozčarovaná."'

    menu:
        '"„Paní Bolesti?“ Kdo to je?"' if morteLogic.r24697_condition():
            # a475 # r24697
            $ morteLogic.r24697_action()
            jump morte_s214

        '"Co mi můžeš říct o Paní Bolesti?"' if morteLogic.r24698_condition():
            # a476 # r24698
            jump morte_s214

        '"Vím."' if morteLogic.r24699_condition():
            # a477 # r24699
            jump fell_s8  # EXTERN


# s214 # say21605
label morte_s214: # from 213.0 213.1
    nr '"Řídí tohle město. Až ji uvidíš, tak ji poznáš: Má takový čepele kolem obličeje, je vysoká asi jako obr, a vznáší se nad zemí, zrovna jako tady ty chlápkové." Morte ukazuje na dabuse, který vás pozoruje. "Nikdo toho o ní moc neví… ona moc nemluví. Všechno co potřebuješ vědět je, že jí nechceš nasrat. Až jí uvidíš, radím ti: utíkej."'

    menu:
        '"Uh… počkej chvíli. Řekl jsi, že dabusové se vznáší, správně? Jenže tenhle chodí po zemi."' if morteLogic.r24700_condition():
            # a478 # r24700
            jump morte_s215

        '"Uh… počkej chvíli. Řekl jsi, že dabusové se vznáší, správně? Jenže tenhle chodí po zemi."' if morteLogic.r24701_condition():
            # a479 # r24701
            jump morte_s215

        '"Vím."':
            # a480 # r24702
            jump fell_s8  # EXTERN


# s215 # say21606
label morte_s215: # from 214.0 214.1
    nr 'Morte kouká na Daba, a jeho oči se rozšíří. "Á-há! Já vím, že vy kozí hlavy umíte chodit! Já to vím!" Morte se k tobě nadšeně otáčí. "Cha! Tady ten nemůže bejt dost daleko, aby se zvednul ze země."'

    menu:
        '"Možná je to tak…"':
            # a481 # r24703
            jump fell_s8  # EXTERN


# s216 # say21607
label morte_s216: # -
    nr 'Morte se šklebí. "To dřív prolezu vnitřnostma tanar„riho než rozluštím co tadle kozí hlava chce říct. Chceš tlumočníka? Najdi si nějakýho Sigilana."'

    menu:
        '"Vím."':
            # a482 # r24704
            jump fell_s8  # EXTERN


# s217 # say21608
label morte_s217: # -
    nr 'Morte se šklebí. "To dřív prolezu vnitřnostma tanar„riho než rozluštím co tyhle lítající kozí hlavy zkoušej říct. Chceš tlumočníka? Vem si na to to fiendský mrně." Ukazuje na Annah. "Ona je z Úlu."'

    menu:
        '"Možná, že…"':
            # a483 # r24705
            jump fell_s8  # EXTERN


# s218 # say21609
label morte_s218: # -
    nr 'Morte se šklebí. "To dřív prolezu vnitřnostma tanar„riho než rozluštím co tyhle lítající kozí hlavy zkoušej říct. Chceš tlumočníka?" Ukáže na Dak“kona. "Vem si Svatějšího-než-ty-a-dvakrát-klidnějšího aby ti to přeložil."'

    menu:
        '"Možná, že…"':
            # a484 # r24706
            jump fell_s8  # EXTERN


# s219 # say21610
label morte_s219: # -
    nr 'Morte se šklebí. "To dřív prolezu vnitřnostma tanar„riho než rozluštím co tyhle lítající kozí hlavy zkoušej říct. Chceš tlumočníka? Vem si na to tanar“riho." Ukazuje na Fall-from-Grace. "Pravděpodobně si s tady těma hochama musela celou dobu vyměňovat novinky."'

    menu:
        '"Možná, že…"':
            # a485 # r24707
            jump fell_s8  # EXTERN


# s220 # say22061
label morte_s220: # externs soego_s93
    nr '"Chceš je jen zabít. Vnímaví ohrožují Spalovače."'

    menu:
        '"Měl bych jiné otázky…"':
            # a486 # r22062
            jump soego_s83  # EXTERN

        '"To je vše, co jsem si přál vědět. Sbohem."':
            # a487 # r22063
            jump morte_dispose


# s221 # say22849
label morte_s221: # -
    nr 'Morte na tebe třeští oči a kýve hlavou.'

    menu:
        '"Co to je, krychlohrdino? „Morte je stupidní lebka?“ Proč, ano to je, nebo ne, krychlohrdino?"':
            # a488 # r22850
            $ morteLogic.r22850_action()
            jump morte_s222

        'Dej krychli pryč.':
            # a489 # r22851
            jump morte_dispose


# s222 # say22852
label morte_s222: # from 221.0
    nr '"Hej! To jsem neřekl!"'

    menu:
        '"Ale jo! Řekl!"':
            # a490 # r22853
            $ morteLogic.r22853_action()
            jump morte_s223

        'Dej krychli pryč.':
            # a491 # r22854
            jump morte_dispose


# s223 # say22855
label morte_s223: # from 222.0
    nr '"Což --?! Dej mi tu věc!"'

    menu:
        '"Ne, je moje. Každopádně mi tě chtěl vzít. Nemyslíš, krychlohrdino? Jasně, že jo!"':
            # a492 # r22856
            $ morteLogic.r22856_action()
            jump morte_s224

        'Dej krychli pryč.':
            # a493 # r22857
            jump morte_dispose


# s224 # say22858
label morte_s224: # from 223.0
    nr '"Já. Si. To. Jen. Chci. Na. Chvíli. Podržet."'

    menu:
        '"Ale ty nemáš žádný ruce."':
            # a494 # r22859
            jump morte_s225

        'Dej krychli pryč.':
            # a495 # r22860
            jump morte_dispose


# s225 # say22861
label morte_s225: # from 224.0
    nr '"Podržím to v ZUBECH."'

    menu:
        '"Ne, myslím, že už to radši schovám."':
            # a496 # r22862
            jump morte_s226


# s226 # say22863
label morte_s226: # from 225.0
    nr '"Rozmlátím tu modronskou krychli na kousíčky."~ [MRT251]'

    menu:
        '"Slyšíš něco, krychlohrdino? Ani já ne!"':
            # a497 # r22864
            jump morte_dispose


# s227 # say22892
label morte_s227: # -
    nr '"Oooooh!" Jak Craddock upouští páru, Mortemu scvaknou zuby… skoro slyšíš, jak si ve své lebce zapisuje poznámky.~ [MRT387]'

    jump craddo_s15  # EXTERN


# s228 # say24174
label morte_s228: # -
    nr '"Víš, šéfe, dělá se mi na nic z těch jeho… pravidelných… pauz… konec konců… je to … dobrá věc… že zavřel klapačku… teď."'

    menu:
        '"Moc legrační, Morte. Jdeme."':
            # a498 # r24175
            jump morte_dispose


# s229 # say24176
label morte_s229: # -
    nr '"Šéfe, co budeme dělat s nevyčerpatelným zdrojem vody? Kde je ten oheň, huh?"'

    menu:
        '"Může to být užitečné později, Morte. Jdeme."':
            # a499 # r24177
            jump morte_dispose

        '"Děláme správnou věc, Morte."':
            # a500 # r24178
            jump morte_s230


# s230 # say24179
label morte_s230: # from 229.1
    nr '"Děláme správnou věc? V tom případě jsi asi zapomněl, šéfe, žes podnikl vlastní výpravu, aby ses postaral! Hej, cokoliv chceš dělat, tady velíš samozřejmě ty. Tsss…"'

    menu:
        '"Díky za tvůj souhlas, Morte. Jdeme."':
            # a501 # r24180
            jump morte_dispose


# s231 # say24903
label morte_s231: # -
    nr '"Hej… jsi v pořádku? Myslel jsem, že je z tebe určitě chladná mrtvola."'

    menu:
        '"Co…? Kdo jsi?"':
            # a502 # r24904
            $ morteLogic.r24904_action()
            jump morte_s232

        '"Jsem si jist, že se chystáš vyslovit ještě stovky moudrostí, Morte, ale já potřebuji, abys už, proboha, držel hubu a TEĎ se ke mně přidal."':
            # a503 # r24905
            $ morteLogic.r24905_action()
            jump morte_dispose


# s232 # say24906
label morte_s232: # from 231.0
    nr '"Oh… kdo jsem? Co kdybys začal *ty?* Jaké je tvé ctěné jméno?"'

    menu:
        '"Já… nevím. Nemohu si vzpomenout."':
            # a504 # r24907
            jump morte_s233

        '"Ptal jsem se tě *první* lebko."':
            # a505 # r24908
            jump morte_s234


# s233 # say24909
label morte_s233: # from 232.0 234.0 235.0
    nr '"Nemůžeš si vzpomenout na svoje *jméno?* Hehe. Mno, příště, až strávíš noc ve městě, snaž se vyhnout hospodě. Jmenuju se Morte. Jsem tu taky uvězněnej."'

    menu:
        '"Uvězněnej?"':
            # a506 # r24910
            jump morte_s236


# s234 # say24911
label morte_s234: # from 232.1
    nr '"Jo, jenže já jsem se tě ptal *druhej.* Jak se jmenuješ?"'

    menu:
        '"Já… nevím. nemůžu si vzpomenout."':
            # a507 # r24912
            jump morte_s233

        '"Ty první, lebko. Tohle je naposledy, co se tě ptám."':
            # a508 # r24913
            jump morte_s235


# s235 # say24914
label morte_s235: # from 234.1
    nr '"Tssss… seš otravnější, než muchomůrka zelená. Ale no dobře, *budu* hodnej kluk a řeknu ti to. Jmenuju se Morte. Kdo seš ty?"'

    menu:
        '"Já… nevím. nemůžu si vzpomenout."':
            # a509 # r24915
            jump morte_s233


# s236 # say24916
label morte_s236: # from 233.0
    nr '"Jo, zatím co sis tu válel prdel, tak sem  to tu trochu vobhlídl: vyzkoušel jsem všechny dveře, ale tahle místnost je zamčená líp, než kterejkoliv pás cudnosti."'

    menu:
        '"Jsme zamčeni… kde? Co je tohle za místo?"':
            # a510 # r24917
            jump morte_s237


# s237 # say24918
label morte_s237: # from 236.0
    nr '"Jmenuje se to tady „Márnice“… Je to velká černá stavba připomínající svou architekturou gravidního pavouka."'

    menu:
        '"„Márnice?“ Cože… jsem mrtev?"':
            # a511 # r24919
            jump morte_s238


# s238 # say24920
label morte_s238: # from 237.0
    nr '"Z mýho pohledu ne. Máš hodně jizev… vypadáš, jako by po tobě nějakej debil maloval nožem. Přestože všechny důvody, aby sem kdokoliv přišel a dokončil svou vyřezávací práci, jsou k smíchu."'

    menu:
        '"Jak se odtud dostaneme pryč?"':
            # a512 # r24921
            jump morte_s239


# s239 # say24922
label morte_s239: # from 238.0
    nr '"No, všechny dveře jsou zamčené, takže potřebujeme klíč. Je tu šance, že některá z chodících mrtvol v této místnosti ho má."'

    menu:
        '"Chodící mrtvoly?"':
            # a513 # r24923
            jump morte_s240


# s240 # say24924
label morte_s240: # from 28.0 239.0
    nr '"Jo, majitelé Márnice používají mrtvá těla jako levnou pracovní silu. Mrtvoly jsou úplně pitomý, ale jsou neškodné, nezaútočí na tebe, dokud nezaútočíš ty první."'

    menu:
        '"Je tu nějaká jiná cesta? Nechci je pozabíjet jenom kvůli klíči."':
            # a514 # r24925
            $ morteLogic.r24925_action()
            jump morte_s241

        '"Takže mám napadnout jednu z těch mrtvol a obrat ji o klíč?"':
            # a515 # r24926
            jump morte_s242


# s241 # say24927
label morte_s241: # from 240.0
    nr '"Cože, myslíš si snad, že jim bude vadit, když je zabiješ? Oni jsou už MRTVÍ. Ale má to vlastně i světlou stránku: když je zabiješ, můžou si na chvíli odpočinout, než je majitelé pošlou opět do roboty."'

    menu:
        '"Dobře, v pořádku… já tedy jednu sundám a seberu ten klíč."':
            # a516 # r24928
            jump morte_s242


# s242 # say24929
label morte_s242: # from 240.1 241.0
    nr '"Dobře, ale než to spravíš, měl by ses vyzbrojit. Myslím, že v některé z polic jsem viděl skalpel."  POZNÁMKA: Prohledej police v téhle místnosti, abys našel zbraň na mrtvoly.'

    menu:
        '"V pořádku, poohlédnu se po něm."':
            # a517 # r24930
            jump morte_s243


# s243 # say24931
label morte_s243: # from 242.0
    nr '"Ještě něco: Tyhle mrtvoly jsou pomalý jako šneci, ale když nějakou praštíš, je to, jako bys kopl do vosího hnízda. Když tě začnou otravovat, pamatuj si, že můžeš UTÍKAT, ale oni nemůžou. Používej to k vytvoření odstupu od nich, když si budeš chtít oddechnout."  POZNÁMKA: Pro BĚH drž klávesu CTRL a levým tlačítkem myši klikni na místo kam chceš utíkat. Když jsi už blízko smrti, používej běh na útěk před zombie, aby sis  mohl odpočinout.'

    menu:
        '"Dobře. Díky za radu."':
            # a518 # r24932
            $ morteLogic.r24932_action()
            jump morte_dispose


# s244 # say25962
label morte_s244: # -
    nr '"Něco jako mluvící encyklopedie, šéfe. Ale vo tom fakt nechci mluvit."'

    if morteLogic.s244_condition():
        $ morteLogic.s244_action()
        jump cwrushf_s27  # EXTERN
    menu:
        '"Ale ty NEJSI mimir, Morte…"' if morteLogic.r66902_condition():
            # a519 # r66902
            jump cwrushf_s27  # EXTERN


# s245 # say25964
label morte_s245: # -
    nr 'Morte zakýval obočím a rozletěl se k ženě. "To není všechno, co."'

    menu:
        '"Už dost, Morte."':
            # a520 # r25965
            jump morte_s246


# s246 # say25966
label morte_s246: # from 245.0
    nr '"Jó, Jó. Jasan." Morte zatočil očima a začal si mumlat pod nos. "Pfff. Stejně tak bysem moh bejt *mrtvej*…"'

    menu:
        '"Hele, řekla jsi sám o sobě? To oni normálně nedělají?"' if morteLogic.r25967_condition():
            # a521 # r25967
            jump cwrushf_s28  # EXTERN

        '"Mám pro tu ženu nějaké otázky…"':
            # a522 # r25968
            jump cwrushf_s2  # EXTERN

        'Nechej ženu být.':
            # a523 # r25969
            jump morte_dispose


# s247 # say25970
label morte_s247: # -
    nr 'Morte ji přerušil: "No hele, náčelníku, vono to všechno záleží na *kvalitě* mimira. Někerý, jako třeba já, jsou víc očarovaní, než ostatní, to je všechno… Oni si víc… uh… uvědomují sami sebe, tak je to přesný."'

    menu:
        '"Hmm."':
            # a524 # r25971
            jump cwrushf_s29  # EXTERN

        '"Aha."':
            # a525 # r25972
            jump cwrushf_s29  # EXTERN


# s248 # say25973
label morte_s248: # -
    nr '"Hej! Já se jenom snažím kapku pobavit, šéfe!"'

    jump cwrushf_s27  # EXTERN


# s249 # say27285
label morte_s249: # -
    nr '"Dám ti radu, šéfku: Držel bych teď zobák - netřeba víc zdechlin do knihy smrti, než je nutné… zvlášť ženskejch. Navíc, zabíjení by sem mohlo přivést zřízence."'

    menu:
        '"Myslím, že ses o tom ještě nezmínil. *Kdo* jsou ti zřízenci?"':
            # a526 # r27303
            jump morte_s250

        '"Ta těla tady… odkud se vzala?"':
            # a527 # r27304
            jump morte_s252

        '"Proč se zajímáš o těla žen?"':
            # a528 # r27305
            jump morte_s253

        '"Dobře… Já… zkusím si to zapamatovat."':
            # a529 # r27306
            jump morte_s257


# s250 # say27286
label morte_s250: # from 249.0 252.0 256.0
    nr '"Říkají si „Spalovači.“ Nemůžeš je minout: Sou posedlí černou a na xichtě mají rigor mortis. Je to zkažená banda ghúlských uctívačů smrti. Věří, že každej má zemřít… čím dřív tim líp."'

    menu:
        '"To mě trochu mate… proč by se měli tihle Spalovači starat o to, jestli uteču, nebo ne?"':
            # a530 # r27307
            jump morte_s251


# s251 # say27287
label morte_s251: # from 250.0
    nr '"Neposlouchals? Říkal sem, že Spalovači věřej, že KAŽDEJ má zemřít, a čím dřív tím líp. Myslíš si, že těla, cos viděl knize mrtvejch sou šťastnější než ty venku?"'

    menu:
        '"Ta těla, která jsem tady viděl… odkud se sem dostala?"':
            # a531 # r27308
            jump morte_s252

        '"Předtím jsi říkal něco o tom, že bych neměl zabíjet žádná *ženská* těla. Proč?"':
            # a532 # r27309
            jump morte_s253

        '"Dobře… Já… zkusím si to zapamatovat."':
            # a533 # r27310
            jump morte_s257


# s252 # say27288
label morte_s252: # from 249.1 251.0 256.1
    nr '"Smrť  navštěvuje sféry každej den, šéfe. Tihleti to je všechno, co zbylo z ubožáků, kteří po smrti prodali svý těla zřízencům."'

    menu:
        '"Pouč mě…*kdo* jsou ti zřízenci?"':
            # a534 # r27311
            jump morte_s250

        '"Předtím jsi říkal něco o tom, že bych neměl zabíjet žádná *ženská* těla. Proč?"':
            # a535 # r27312
            jump morte_s253

        '"Dobře… Já… zkusím si to zapamatovat."':
            # a536 # r27313
            jump morte_s257


# s253 # say27289
label morte_s253: # from 249.2 251.1 252.1
    nr '"Ccc - děláš si *srandu?* Hele, šéfe, tyhle mrtvý škvrňata sou poslední šance pro bandu tvrdejch mlátiček jako jsme my. Musíme bejt *rytířští* - žádný vosekávání kvůli klíčům, žádný ořezávání hnátů a takový ty věci."'

    menu:
        '"Poslední šance? Co… o čem to mluvíš?"':
            # a537 # r27314
            jump morte_s254


# s254 # say27290
label morte_s254: # from 253.0
    nr '"Šéfe, sou MRTVÍ, MY SME mrtví… chápeš, co tím myslím? Jo?"'

    menu:
        '"Ne… ne, vlastně ne."':
            # a538 # r27315
            jump morte_s255

        '"To nemůžeš myslet vážně."' if morteLogic.r27316_condition():
            # a539 # r27316
            jump morte_s255


# s255 # say27291
label morte_s255: # from 254.0 254.1
    nr '"Šéfe, už se nám tady hrne řada těch kulhajících dám. *Všichni* jsme zemřeli aspoň jednou: máme si o čem vyprávět. Oceňujou chlapy, co maj zkušenost se smrtí jako my."'

    menu:
        '"Ale… počkej… neříkal jsi předtím, že já *nejsem* mrtvý?"':
            # a540 # r27317
            jump morte_s256


# s256 # say27292
label morte_s256: # from 255.0
    nr '"No… dobře, *ty* možná nejseš mrtvej, ale *JÁ* jsem. A jak se tak koukám, vůbec by mi nevadilo sdílet rakev s některou z těchle fajnovejch houževnatejch mrtovolek." Morte začal obdivně klapat zuby. " Jasně, zřízenci by se s nima nejdřív museli rozloučit a to nejni zrovna pravděpodobný."'

    menu:
        '"Kdo že jsou to ti zřízenci?"':
            # a541 # r27318
            jump morte_s250

        '"Ale odkud se tady vzala všechna ta těla?"':
            # a542 # r27319
            jump morte_s252

        '"Dobře… Já… zkusím si to zapamatovat."':
            # a543 # r27320
            jump morte_s257


# s257 # say27293
label morte_s257: # from 249.3 251.2 252.2 256.2
    nr '"Hele, šéfe. Po tom polibku smrti seš furt kapku zmatenej. Takže tady máš dvě rady: Zaprvý, jestli se chceš na něco zeptat, *zeptej* se mě, oukej?"  POZNÁMKA: Jestli si chceš promluvit se členem své party, vyber si „mluv“ z menu a pak klikni levým tlačítkem na toho, s kým chceš hovořit.'

    menu:
        '"Dobře… jestli budu mít nějaké otázky, zeptám se tě."':
            # a544 # r27321
            jump morte_s258


# s258 # say27294
label morte_s258: # from 257.0
    nr '"Zadruhý, jestli si jenom *z poloviny* tak zapomětlivej, jak mi připadáš, začni si šecko zapisovat. Nikdy nevíš, kdy narazíš na něco důležitýho, tak ať na to nezapomeneš."'

    menu:
        '"Jako deník?"':
            # a545 # r27322
            jump morte_s259


# s259 # say27295
label morte_s259: # from 258.0
    nr '"Jo, jako deník. Jestli začneš bejt zmatenej v důležitejch věcech, jako třebas kde seš, prolistuj ho a osvěž si paměť. Jasný?"  POZNÁMKA: Ke svému deníku se dostaneš tlačítkem deník ve spodním pravém rohu světové obrazovky, nebo si vyber tlačítko deník z rychlého menu.'

    menu:
        '"Dobře… Pochopil jsem. Pojďme."':
            # a546 # r27323
            jump morte_dispose


# s260 # say27296
label morte_s260: # -
    nr '"Někde tady kolem na poličce by měl bejt skalpel. Já bych ho nejdřív našel, než bych si dal taneček s některou zdechlinou tady kolem."'

    menu:
        '"Dobře… budu hledat dál."':
            # a547 # r27324
            jump morte_dispose


# s261 # say27297
label morte_s261: # - # IF WEIGHT #8 /* Triggers after states #: 729 444 325 281 742 737 733 487 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Super, našels skalpel, máš bod. A teď jdem na ty mrtvoly… neměj strach, zůstanu vzádu a budu ti dodávat cenný taktický rady."'

    menu:
        '"Možná bys mi mohl *pomoct*, Morte."':
            # a548 # r27325
            jump morte_s262

        '"Dobře."':
            # a549 # r27326
            jump morte_dispose


# s262 # say27298
label morte_s262: # from 261.0
    nr '"Já ti BUDU pomáhat. Dobrá rada, na tu jen tak nenatrefíš, šéfe."'

    menu:
        '"Myslel jsem pomoct s útokem na *mrtvolu*."':
            # a550 # r27327
            jump morte_s263

        '"Dobrá tedy."':
            # a551 # r27328
            jump morte_dispose


# s263 # say27299
label morte_s263: # from 262.0
    nr '"Já? Já  jsem romantik, ne voják. Jenom bych překážel."'

    menu:
        '"Až zaútočím na to tělo, bude lepší, když budeš se mnou, nebo budeš ta další věc, do které vrazím tenhle skalpel."':
            # a552 # r27329
            jump morte_s264

        '"Dobrá tedy."':
            # a553 # r27330
            jump morte_dispose


# s264 # say27300
label morte_s264: # from 263.0
    nr '"Eh… dobře. Píchnu ti s nima."  POZNÁMKA: Jestli chceš, aby Morte zaútočil s tebou, stačí, abyste byli oba označení, když zaútočíš na mrtvolu. Morte se přidá k útoku.'

    menu:
        '"Jsem rád, že si rozumíme. Takže do toho."':
            # a554 # r27331
            jump morte_dispose


# s265 # say27301
label morte_s265: # -
    nr '"Dobře, postaral ses vo tu správnou zdechlinu. Teď musíš najít klíč. Měl by bejt někde na těle. Jakmile ho dostaneme, můžeme vocaď vypadnout."'

    menu:
        '"Dobře."':
            # a555 # r27332
            jump morte_dispose


# s266 # say27302
label morte_s266: # -
    nr '"Dobře, to je ten klíč. Musí pasovat do zámku některejch dveří."'

    menu:
        '"Tak tedy zkusím všechny dveře."':
            # a556 # r27333
            jump morte_dispose


# s267 # say27911
label morte_s267: # -
    nr 'Morte do tvého ucha zasyčel: "Právník."'

    jump cwcafef_s15  # EXTERN


# s268 # say27912
label morte_s268: # -
    nr '"Druh mluvící encyklopedie, šéfe. O tom opravdu nerad mluvím."'

    if morteLogic.s268_condition():
        $ morteLogic.s268_action()
        jump cwcafef_s50  # EXTERN
    menu:
        '"Ale ty NEJSI mimir, Morte…"' if morteLogic.r65536_condition():
            # a557 # r65536
            jump cwcafef_s50  # EXTERN


# s269 # say27913
label morte_s269: # -
    nr 'Morte zakmital obočím a začal plout k ženě. "To není všechno co jsem-"'

    menu:
        '"To stačí, Morte."':
            # a558 # r27914
            jump morte_s270


# s270 # say27915
label morte_s270: # from 269.0
    nr '"Jo, jo. Dobrá." Morte zakoulel očima a začal mumlat. "Tss, já také můžu být *mrtvý*…"'

    menu:
        '"Říkáš… řekla jsi „samo“? Oni obvykle nemluví?"' if morteLogic.r27916_condition():
            # a559 # r27916
            jump cwcafef_s51  # EXTERN

        '"Chci se něco zeptat této ženy…"':
            # a560 # r27917
            jump cwcafef_s4  # EXTERN

        'Odejdi od ženy v klidu.':
            # a561 # r27918
            jump morte_dispose


# s271 # say27919
label morte_s271: # -
    nr 'Morte ji přerušil: "No vidíš, šéfe, je to všechno jenom o rozdílech v *kvalitě* tvého mimira. Někteří - jako já -- jsou více okouzlující než jiní, to je všechno. A navíc… hmm… „vědom si sám sebe,“ to je to správné slovo."'

    menu:
        '"Hmm."':
            # a562 # r27920
            jump cwcafef_s52  # EXTERN

        '"Aha."':
            # a563 # r27921
            jump cwcafef_s52  # EXTERN


# s272 # say27922
label morte_s272: # -
    nr '"Hej! Jenom se to tady snažím pobavit, šéfe!"'

    jump cwcafef_s50  # EXTERN


# s273 # say28036
label morte_s273: # -
    nr 'Morte na tebe znalecky kývl. "Hej, tenhle chlápek není špatnej."'

    menu:
        '"Dobrá, tu máš… vem si své peníze zpět, Malmanere."':
            # a564 # r28041
            $ morteLogic.r28041_action()
            jump malmanr_s13  # EXTERN

        'Hoď deset měďáků po Malmanerovi.':
            # a565 # r28042
            $ morteLogic.r28042_action()
            jump malmanr_s14  # EXTERN

        '"Opravdu? Nic takového jsem neslyšel, Morte. Jdeme."':
            # a566 # r28043
            jump malmanr_s15  # EXTERN


# s274 # say28037
label morte_s274: # -
    nr 'Morte na tebe znalecky kývl. "Hej, tento chlápek není špatný."'

    menu:
        '"Dobrá, tu máš… vem si své peníze zpět, Malmanere."' if morteLogic.r28038_condition():
            # a567 # r28038
            $ morteLogic.r28038_action()
            jump malmanr_s13  # EXTERN

        'Hoď třicet měďáků po Malmanerovi.' if morteLogic.r28039_condition():
            # a568 # r28039
            $ morteLogic.r28039_action()
            jump malmanr_s14  # EXTERN

        '"Dobrá, tu máš… vem si své peníze zpět, Malmanere."' if morteLogic.r28040_condition():
            # a569 # r28040
            $ morteLogic.r28040_action()
            jump malmanr_s13  # EXTERN

        'Hoď padesát měďáků po Malmanerovi.' if morteLogic.r28044_condition():
            # a570 # r28044
            $ morteLogic.r28044_action()
            jump malmanr_s14  # EXTERN

        '"Dobrá, tu máš… vem si své peníze zpět, Malmanere."' if morteLogic.r28045_condition():
            # a571 # r28045
            $ morteLogic.r28045_action()
            jump malmanr_s13  # EXTERN

        'Hoď padesát měďáků po Malmanerovi.' if morteLogic.r28046_condition():
            # a572 # r28046
            $ morteLogic.r28046_action()
            jump malmanr_s14  # EXTERN

        '"Dobrá, tu máš… vem si své peníze zpět, Malmanere."' if morteLogic.r28047_condition():
            # a573 # r28047
            $ morteLogic.r28047_action()
            jump malmanr_s13  # EXTERN

        'Hoď osmdesát měďáků po Malmanerovi.' if morteLogic.r28048_condition():
            # a574 # r28048
            $ morteLogic.r28048_action()
            jump malmanr_s14  # EXTERN

        '"Opravdu? Nic takového jsem neslyšel, Morte. Jdeme."':
            # a575 # r28049
            jump malmanr_s15  # EXTERN


# s275 # say28630
label morte_s275: # -
    nr '"To zní blbě."'

    jump grace_s60  # EXTERN


# s276 # say28631
label morte_s276: # -
    nr '"Je tanar„ri… sukuba šéfiku."'

    jump grace_s72  # EXTERN


# s277 # say28632
label morte_s277: # -
    nr '"To si piš dáblice!" Morte cvaknul zuby. "Jsem PRO aby ta sukuba šla s náma… A bohové vědí, že ty Annah seš vtipná, jako dyby se ti ve střevech producíroval ježek."'

    jump annah_s166  # EXTERN


# s278 # say28633
label morte_s278: # -
    nr '"Hej, počkej minutku! *JÁ* jsem znalec Sfér! Je to má práce šéfiku!"'

    menu:
        '"Mít v partě dva lidi znalé Sfér, mi připadá celkem mazané. A navíc bych Morte řekl, že to bude větší zábava."':
            # a576 # r28634
            jump morte_s279


# s279 # say28635
label morte_s279: # from 278.0
    nr '"Ty to možna vidíš jako zábavu! JÁ to spíš vidím tak, že kdejaké žábě stačí, když na tebe zakoulí očima a ty seš z toho hned celej vedle!" Morte se utišil. "A piš si, že sem to myslel vážně. A sem rád, že sem to zmínil."'

    menu:
        '"Budu si to pamatovat Morte. Slečno Grace, omluv mě pokud budu nějak neomalený, ale nemáš chuť cestovat s námi?"':
            # a577 # r28636
            jump grace_s79  # EXTERN


# s280 # say28637
label morte_s280: # -
    nr '"Co se můj zjizvený společník pokouší říct je, že DVA z nás… Mimochodem, já jsem Morte: omluvte prosím společníkovu nevychovanost, že nás nepředstavil… se domnívají, že by byl opravdu VÝBORNÝ nápad, kdyby ses k nám připojila. Máme spoustu místa pro sukubu. SPOUSTU místa."'

    jump grace_s119  # EXTERN


# s281 # say28738
label morte_s281: # - # IF WEIGHT #4 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  Global("Morte_Stolen","GLOBAL",2) !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Díkes, šéfíku. Neumíš si představit, jak rád zase lítám s tebou." V jeho hlase to zavání sarkasmem. "Naučil sem se novej trik, zatimco jsem tu trčel."'

    menu:
        '"Hurá, sláva. Konečně tě mám zpátky."':
            # a578 # r28743
            $ morteLogic.r28743_action()
            jump morte_dispose

        '"Promiň, kámo. Zkoušel jsem ho oblafnout."' if morteLogic.r28744_condition():
            # a579 # r28744
            $ morteLogic.r28744_action()
            jump morte_s282

        '"Promiň, kámo. Zkoušel jsem ho oblafnout."' if morteLogic.r28745_condition():
            # a580 # r28745
            $ morteLogic.r28745_action()
            jump morte_s283


# s282 # say28739
label morte_s282: # from 281.1
    nr '"Vážně? To se ti podobá, šéfe. Skvělej nápad. Ale protentokrát ti odpouštím. Hlavně to už nedělej znova."'

    menu:
        '"Jak myslíš, Morte. Můžem jít."':
            # a581 # r28746
            jump morte_dispose


# s283 # say28740
label morte_s283: # from 281.2
    nr '"Hele, nevěřím ti ani slůvko. Prostě zapomenem, co se stalo, jo? Teď už bysme měli jít."'

    menu:
        '"Fajn."':
            # a582 # r28747
            jump morte_dispose

        '"Morte, jenom jsem blafoval. To pochopíš."':
            # a583 # r28748
            jump morte_dispose


# s284 # say28741
label morte_s284: # -
    nr '"Díky šéfe. A teď se odsaď vypaříme!" Morte na chvíli ztichl. "Jo, a jen tak mimochodem… tidle hoši dali hlavy dohromady. Naučili mě něco pěkně mazanýho."'

    menu:
        '"Tak jdeme."':
            # a584 # r28749
            jump morte_dispose


# s285 # say28962
label morte_s285: # -
    nr '"Eh… šéfíku? Už jsi někdy viděl sochu, že jo? Víš snad, že sochy nechodí a tak podobně."'

    menu:
        '"Podívej, Morte: ty jsi létající mluvící lebka, která zavrhuje možnost existence živých soch."' if morteLogic.r28967_condition():
            # a585 # r28967
            jump morte_s286

        '"Potkal jsem mága jménem Salabesh, který mluvil o jistém kamenném muži. Jsi to ty?"' if morteLogic.r28968_condition():
            # a586 # r28968
            $ morteLogic.r28968_action()
            jump quisai_s5  # EXTERN

        '"Vím, Morte. Jenom se jí dotknu…"':
            # a587 # r28969
            jump quisai_s3  # EXTERN

        'Odejdi.':
            # a588 # r28970
            jump morte_dispose


# s286 # say28963
label morte_s286: # from 285.0
    nr '"No… eh… hmm. Dělej, jak myslíš."'

    menu:
        '"Potkal jsem mága jménem Salabesh, který mluvil o jistém kamenném muži. Jsi to ty?"' if morteLogic.r28971_condition():
            # a589 # r28971
            $ morteLogic.r28971_action()
            jump quisai_s5  # EXTERN

        '"Hele, Morte, prostě se ho dotknu, jasný?"':
            # a590 # r28972
            jump quisai_s3  # EXTERN

        'Odejdi.':
            # a591 # r28973
            jump morte_dispose


# s287 # say28964
label morte_s287: # -
    nr '"Snad, že by to oblečení bylo na správným místě, šéfíku?"'

    menu:
        '"To byla řečnická otázka, Morte."':
            # a592 # r28974
            jump morte_s288


# s288 # say28965
label morte_s288: # from 287.0
    nr '"Já vím, šéfi. Já vim."'

    menu:
        '"Potkal jsem mága jménem Salabesh, který mluvil o jistém kamenném muži. Jsi to ty?"' if morteLogic.r28975_condition():
            # a593 # r28975
            $ morteLogic.r28975_action()
            jump quisai_s5  # EXTERN

        'Uhoď sochu.':
            # a594 # r28976
            $ morteLogic.r28976_action()
            jump quisai_s23  # EXTERN

        'Odejdi.':
            # a595 # r28977
            jump morte_dispose


# s289 # say28966
label morte_s289: # -
    nr 'Morte obrátil oči v sloup a vydal ze sebe kdákavý zvuk. "Síly, ne! Už ne další mluvící něco… jako… tohle!"'

    menu:
        '"Mám pár dotazů o tobě samém"…':
            # a596 # r28978
            jump quisai_s11  # EXTERN

        '"Chtěl bych se zeptat na něco ohledně tohoto místa."':
            # a597 # r28979
            jump quisai_s30  # EXTERN

        '"Nevíš něco o Ravel Puzzlewell?"' if morteLogic.r28980_condition():
            # a598 # r28980
            jump quisai_s29  # EXTERN

        '"Ještě se stavím později. Sbohem."':
            # a599 # r28981
            jump morte_dispose


# s290 # say29677
label morte_s290: # -
    nr '"Hej, šéfe - má zkřížené prsty!"'

    jump quell_s21  # EXTERN


# s291 # say30527
label morte_s291: # -
    nr 'Morte zašeptal. "Říká, že je právník, poradce. Jeden s těch magorů, co se vykecává na soudech."'

    jump iannis_s10  # EXTERN


# s292 # say30816
label morte_s292: # -
    nr 'Morte se otočil a dívá se za sebe. "Kde?! Kde?!!"'

    jump able_s2  # EXTERN


# s293 # say30817
label morte_s293: # -
    nr 'Morte polknul. "Hele, za tebou! Další lítající lebka!"'

    menu:
        'Podívej se po lebce.' if morteLogic.r30822_condition():
            # a600 # r30822
            jump able_s10  # EXTERN

        'Nechej Morteho, ať se baví.' if morteLogic.r30823_condition():
            # a601 # r30823
            jump able_s10  # EXTERN

        '"No tak, Morte. Chci se ho na něco zeptat…"' if morteLogic.r30824_condition():
            # a602 # r30824
            jump able_s10  # EXTERN


# s294 # say30818
label morte_s294: # -
    nr '"Přímo tam, jak ukazuju! Támhle!"'

    jump able_s11  # EXTERN


# s295 # say30819
label morte_s295: # -
    nr 'Morte podrážděně prohlásil: "Minul jsi je! Celý *průvod* jich byl! To už se asi nikdy nepřihodí, ani za milión otáček Velkého Prstence!"'

    jump able_s12  # EXTERN


# s296 # say30820
label morte_s296: # -
    nr 'Morte trochu poskočil, jako by naznačoval pokrčení rameny. "Raději tomu říkám pronikavý vhled do lidské nátury."'

    menu:
        '"Mám nějaké otázky…"' if morteLogic.r30825_condition():
            # a603 # r30825
            jump able_s16  # EXTERN

        'Získej znovu mužovu pozornost.' if morteLogic.r30826_condition():
            # a604 # r30826
            $ morteLogic.r30826_action()
            jump able_s13  # EXTERN


# s297 # say30821
label morte_s297: # -
    nr '"Hele, šéfe, to JE DOST PRAŠTĚNÝ, ABY TO MOHLO FUNGOVAT!"'

    jump able_s65  # EXTERN


# s298 # say31566
label morte_s298: # -
    nr '"U ostnatých bradavek Paní Bolesti, to je---"  Všechno náhle utichlo, když i poslední tvůj smysl selhal a zmizel do nicoty. ~ [MRT387]'

    menu:
        'Zemři hrozivou smrtí, oběti Gangroighydonovy Příšerné Kletby.':
            # a605 # r31567
            $ morteLogic.r31567_action()
            jump morte_dispose


# s299 # say32367
label morte_s299: # -
    nr '"„Tajemství?!“ Na to ti seru! Snad nebudeme *poslouchat* tyhlety kecy, ne? No ták… pojď, podíváme se po ňáký Vnímavý kočce, která nikdy neměla to potěšení ochutnat vášnivý polibek, jakej dokáže dát jenom lebka." Zavrtěl obočím a slastně zamručel při té (pro něj) nadmíru příjemné představě.'

    menu:
        '"Tiše, Morte. Zůstaneme tady… alespoň na chvíli."':
            # a606 # r32368
            jump deathad_s1  # EXTERN

        'Ignoruj Morteho a poslouchej dál.':
            # a607 # r32369
            jump deathad_s1  # EXTERN

        '"Máš pravdu, Morte - jdeme pryč."':
            # a608 # r32370
            $ morteLogic.r32370_action()
            jump morte_dispose


# s300 # say32371
label morte_s300: # -
    nr 'Morte šeptá:"A začíná další utrpení."'

    menu:
        'Tiše kývni na Morteho.':
            # a609 # r32372
            jump deathad_s2  # EXTERN

        '"Morte - uklidni se."':
            # a610 # r32373
            jump deathad_s2  # EXTERN

        'Ignoruj Morteho a poslouchej dál.':
            # a611 # r32374
            jump deathad_s2  # EXTERN

        '"Hmmm, žádná sranda. Zmizíme, Morte."':
            # a612 # r32375
            $ morteLogic.r32375_action()
            jump morte_dispose


# s301 # say32376
label morte_s301: # -
    nr 'Morte šeptá: "To určo."'

    menu:
        'Tiše kývni na Morteho.':
            # a613 # r32377
            jump deathad_s3  # EXTERN

        '"Morte - buď zticha."':
            # a614 # r32378
            jump deathad_s3  # EXTERN

        'Ignoruj Morteho a poslouchej dál.':
            # a615 # r32379
            jump morte_s303

        '"Hmmm, žádná sranda. Zmizíme, Morte."':
            # a616 # r32380
            $ morteLogic.r32380_action()
            jump morte_dispose


# s302 # say32381
label morte_s302: # -
    nr 'Morte zašeptal: "A nekonečná nuda."'

    menu:
        'Tiše kývni na Morteho.':
            # a617 # r32382
            jump deathad_s5  # EXTERN

        '"Prosím, Morte: ticho."':
            # a618 # r32383
            jump deathad_s5  # EXTERN

        'Ignoruj Morteho a poslouchej dál.':
            # a619 # r32384
            jump deathad_s5  # EXTERN

        '"Hmmm, žádná sranda. Zmizíme, Morte."':
            # a620 # r32385
            $ morteLogic.r32385_action()
            jump morte_dispose


# s303 # say32386
label morte_s303: # from 301.2
    nr 'Morte zašeptal: "Mám pocit, že voba už tušíme, kde to zarazíme, až tady zdechnem."'

    menu:
        'Tiše kývni na Morteho.':
            # a621 # r32387
            jump deathad_s6  # EXTERN

        '"Morte: přestaň mluvit."':
            # a622 # r32388
            jump deathad_s6  # EXTERN

        'Ignoruj Morteho a poslouchej dál.':
            # a623 # r32389
            jump deathad_s6  # EXTERN

        '"Hmmm, žádná sranda. Zmizíme, Morte."':
            # a624 # r32390
            $ morteLogic.r32390_action()
            jump morte_dispose


# s304 # say32391
label morte_s304: # -
    nr 'Morte zašeptal: "A to dyž máš štěstí."'

    menu:
        'Tiše kývni na Morteho.':
            # a625 # r32392
            jump deathad_s8  # EXTERN

        '"To už je dost, Morte."':
            # a626 # r32393
            jump deathad_s8  # EXTERN

        'Ignoruj Morteho a poslouchej dál.':
            # a627 # r32394
            jump deathad_s8  # EXTERN

        '"Hmmm, žádná sranda. Zmizíme, Morte."':
            # a628 # r32395
            $ morteLogic.r32395_action()
            jump morte_dispose


# s305 # say32396
label morte_s305: # -
    nr 'Morte zašeptal: "A to má bejt podněcující, jo? Musíme to šecko dělat *znova?* Pffff, ty vole, už se nemůžu dočkat, až ze mě zasejc bude lítající lebka. Serem na něj. To je ale pako. Se mu to mluví, ale von sám nikdá předtím nezdechnul, hm?"'

    menu:
        'Tiše kývni na Morteho.':
            # a629 # r32397
            jump deathad_s9  # EXTERN

        '"No, tak, Morte. Ticho."':
            # a630 # r32398
            jump deathad_s9  # EXTERN

        'Ignoruj Morteho a poslouchej dál.':
            # a631 # r32399
            jump deathad_s9  # EXTERN

        '"Hmmm, žádná sranda. Zmizíme, Morte."':
            # a632 # r32400
            $ morteLogic.r32400_action()
            jump morte_dispose


# s306 # say32401
label morte_s306: # -
    nr 'Morte zašeptal: "Oh, tohle je ale velkej náklad. Pf."'

    menu:
        'Tiše kývni na Morteho.':
            # a633 # r32402
            jump deathad_s11  # EXTERN

        '"Morte - uklidni se."':
            # a634 # r32403
            jump deathad_s11  # EXTERN

        'Ignoruj Morteho a poslouchej dál.':
            # a635 # r32404
            jump deathad_s11  # EXTERN

        '"Hmmm, žádná sranda. Zmizíme, Morte."':
            # a636 # r32405
            $ morteLogic.r32405_action()
            jump morte_dispose


# s307 # say32406
label morte_s307: # -
    nr 'Morte řekl nahlas: "To je ale něco!"'

    jump deathad_s15  # EXTERN


# s308 # say32407
label morte_s308: # -
    nr 'Morte se snížil, aby ho mluvčí neviděl a pak ti zašeptal: "No tak, náčelníku. Řekni mu, jaký to je ve skutečnosti."'

    menu:
        '"Ano, já mám otázku…"':
            # a637 # r32408
            jump deathad_s17  # EXTERN

        '"Žádné otázky. Můj přítel se přeřekl."':
            # a638 # r32409
            jump deathad_s16  # EXTERN


# s309 # say32410
label morte_s309: # -
    nr '"Skvělý! Další smrt! Zapište si mě taky!" Z publika se ozývá smích. Mluvčí vypadá rozzuřeně.'

    menu:
        '"Co se stane, když zemřou?"':
            # a639 # r32411
            jump deathad_s26  # EXTERN

        '"Mám další otázku…"':
            # a640 # r32412
            jump deathad_s17  # EXTERN

        '"To je vše, co jsem chtěl vědět."':
            # a641 # r32413
            jump deathad_s18  # EXTERN


# s310 # say32651
label morte_s310: # -
    nr '"Mám tý pitomý kočce naplácat na prdel, šéfe?"'

    menu:
        '"Bez slitování, Morte."':
            # a642 # r32661
            jump morte_s316

        '"Ne, Morte… Já to zvládnu."':
            # a643 # r32662
            jump sarhava_s3  # EXTERN


# s311 # say32652
label morte_s311: # -
    nr '"Miluju tvoje zkažený způsoby, náčelníku."'

    jump sarhava_s4  # EXTERN


# s312 # say32653
label morte_s312: # -
    nr 'Jak si klekáš před ženou, Morte vykřiknul: "Šéfe! Ty si děláš srandu! Teda, pokud něco nechystáš, nebo tak…"'

    menu:
        'Ignoruj Morteho a polib ženě botu.':
            # a644 # r32663
            jump sarhava_s14  # EXTERN

        '"Já zkrátka nechci vyvolávat nějaké problémy, Morte. Když si nedám pozor, mohly by sem přijít stráže."':
            # a645 # r32664
            jump morte_s313

        '"Máš pravdu, Morte. Pojďme."':
            # a646 # r32665
            jump sarhava_s13  # EXTERN


# s313 # say32654
label morte_s313: # from 312.1
    nr '"No, máš pravdu… ale…"'

    menu:
        '"Zapomeň na to, Morte. Podívejte, madam… skončeme to, nebo zavolám stráže sám."':
            # a647 # r32666
            jump sarhava_s7  # EXTERN

        '"Máš pravdu, Morte. Pojďme."':
            # a648 # r32667
            jump sarhava_s13  # EXTERN


# s314 # say32655
label morte_s314: # -
    nr 'Morte se zašklebil a zacvakal zubama. "Zkrátka obyčejnej chlápek, co, šéfe?"'

    jump morte_dispose


# s315 # say32656
label morte_s315: # -
    nr '"Uh-oh…"'

    jump morte_dispose


# s316 # say32657
label morte_s316: # from 310.0
    nr 'Morte na tebe mrkl a zavolal na ženu: "Hej, ty! Jo, ty tam, ty drzá malá couro… koukej se na mne, když s tebou mluvím! Z čeho seš taková zahořklá?"'

    jump sarhava_s39  # EXTERN


# s317 # say32658
label morte_s317: # -
    nr '"Á, naše malá Pouštní Princezna je mimo, páč Sultán chtěl dalšího syna? Řekni mi, „Pouštní Princezno“, trávíš každou noc ožralá a skoro mrtvá vzteky, následovaná bandou chtivých patolízalů? Snažíš se takhle ospravedlnit svoji mizernou existenci svýmu fotříkovi? Ha? Nebo sama sobě?"'

    jump sarhava_s40  # EXTERN


# s318 # say32659
label morte_s318: # -
    nr '"Fakt si myslíš, že se díky těm svejm blbejm rvačkám budeš cítit líp? Cejtit se, že máš nějakou cenu, že na něco máš? NE! Pokud je tohle tvůj smutnej patetickej způsob, jak si o sobě zvednout mínění, doporučuju ti, ať to zapíchneš, jdeš domů a vdáš se do harému nějakýho dvořana!"'

    jump sarhava_s41  # EXTERN


# s319 # say32660
label morte_s319: # -
    nr 'Morte se obrátil k tobě. "Vidíš, šéfe, já *vím*, co se tady stane. My *všichni* víme, že v tomhle má starej Morte recht. Ale, oh ne, pyšná malá Pouštní Princezna, zničená na veřejnosti, pokoře-"'

    jump sarhava_s42  # EXTERN


# s320 # say33073
label morte_s320: # -
    nr '"Válka Krve? Nudnější než poslouchat Guvnera, jak povídá o zákonech. Najděme ňáký mladý vnímavý, který potřebujou poučit vo vášni!" Při té představě chtivě zakroutil obočím.'

    menu:
        '"Ne, Morte… Chci si to vyslechnout."':
            # a649 # r33074
            jump ghysis_s1  # EXTERN

        'Ignoruj Morteho a poslouchej dál.':
            # a650 # r33075
            jump ghysis_s1  # EXTERN

        '"Dobře, Morte - půjdeme."':
            # a651 # r33076
            $ morteLogic.r33076_action()
            jump morte_dispose


# s321 # say33300
label morte_s321: # -
    nr 'Morte zakroutil očima a zařval. "Oj! Hele! Mluvící hovno!"'

    jump ghivem_s49  # EXTERN


# s322 # say33301
label morte_s322: # -
    nr 'Morte kývl tvým směrem a promluvil na muže: "Mluvil jsem vo támdle tom zjizveným volovi, kámo… ne vo tobě! Žádnej problém, ne?"'

    menu:
        '"Sleduj, Morte…"':
            # a652 # r33302
            jump ghivem_s51  # EXTERN

        'Ignoruj Morteho.':
            # a653 # r33303
            jump ghivem_s51  # EXTERN


# s323 # say33423
label morte_s323: # -
    nr 'Morte zakroutil očima a zařval. "Oj! Hele! Mluvící hovno!"'

    jump ghivef_s47  # EXTERN


# s324 # say33429
label morte_s324: # -
    nr 'Morte kývl tvým směrem a promluvil na muže: "Mluvil jsem vo támdle tom zjizveným volovi, kámo… ne vo tobě! Žádnej problém, ne?"'

    menu:
        '"Sleduj, Morte…"':
            # a654 # r33430
            jump ghivef_s49  # EXTERN

        'Ignoruj Morteho.':
            # a655 # r33433
            jump ghivef_s49  # EXTERN


# s325 # say33958
label morte_s325: # - # IF WEIGHT #5 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Věděl jsem, že se vrátíš, šéfe! Konečně sis uvědomil, jak moc mě potřebuješ, co?"~ [MRT516]'

    menu:
        '"Jo… pojďme."':
            # a656 # r33959
            $ morteLogic.r33959_action()
            jump morte_dispose

        '"Teď zrovna ne, Morte."':
            # a657 # r33960
            jump morte_s326


# s326 # say33961
label morte_s326: # from 325.1
    nr '"Hmmmph. Dobře, nevím, jak dlouho tady počkám, takže ti dávám POSLEDNÍ šanci. Seš si jistej, že nepotřebuješ mou asistenci jakožto mudrce a všeznalce, o mým bystrým rozumu nemluvě?"'

    menu:
        '"Morte, ty nejsi ani mudrc, ANI nemáš bystrý rozum."':
            # a658 # r33962
            jump morte_s327

        '"Dobře, rozmyslel jsem si to. No tak, pojďme."':
            # a659 # r33963
            $ morteLogic.r33963_action()
            jump morte_dispose

        '"Teď ne, Morte. Možná později."':
            # a660 # r33964
            jump morte_s327


# s327 # say33965
label morte_s327: # from 326.0 326.2
    nr '"Pokoušíš se zranit mé pocity, náčelníku? Proč? Bylo to něco, co sem ti řek? Nebo je to proto, že nemám ruce? Tak co?"'

    menu:
        '"Dobře, rozmyslel jsem si to. No tak, pojďme."':
            # a661 # r33966
            $ morteLogic.r33966_action()
            jump morte_dispose

        '"Nic z toho. Zkrátka teď nepotřebuju tvoji společnost. Sbohem, Morte."':
            # a662 # r33967
            jump morte_s328


# s328 # say33968
label morte_s328: # from 327.1
    nr '"No, já nebudu čekat VĚČNĚ, takže si to rychle rozmysli a vrať se sem pro mě."'

    menu:
        '"Sbohem, Morte."':
            # a663 # r33969
            jump morte_dispose


# s329 # say33970
label morte_s329: # from 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0
    nr '"Co tě žere, náčelníku?"'

    menu:
        '"Můžeš mi znovu přečíst co mám vytetováno na zádech?"':
            # a664 # r65539
            jump morte_s649

        '"Můžeš mi říct aspoň trošku o Sigilu?"':
            # a665 # r65540
            jump morte_s659

        '"Morte… Nechci ti do toho kecat, ale mohl by jsi dělat něco *jiného*, kromě toho tlachání?"' if morteLogic.r65541_condition():
            # a666 # r65541
            jump morte_s663

        '"Morte… které jsou tvé speciální vlohy?"' if morteLogic.r65542_condition():
            # a667 # r65542
            jump morte_s666

        '"Morte, proč si mi neřekl o té poslední řádce tetování na mých zádech?"' if morteLogic.r65543_condition():
            # a668 # r65543
            jump morte_s654

        '"Chtělo by to nějakou radu. Co si myslíš, že bychom měli dělat teď?"':
            # a669 # r65544
            jump morte_s669

        '"Říkal si, že seš mimir, je to tak, Morte?"' if morteLogic.r65545_condition():
            # a670 # r65545
            jump morte_s684

        '"Řekni mi znova jak jsi skončil na Pilíři lebek."' if morteLogic.r65546_condition():
            # a671 # r65546
            jump morte_s693

        '"Morte, proč nechceš déle se mnou cestovat, když jsem tě sundal z pilíře?"' if morteLogic.r65547_condition():
            # a672 # r65547
            jump morte_s715

        '"Co víš o Válce krve?"' if morteLogic.r65548_condition():
            # a673 # r65548
            jump morte_s723

        '"Co víš o čarodějnici Ravel?"' if morteLogic.r65549_condition():
            # a674 # r65549
            jump morte_s722

        '"Jak si zemřel, Morte?"':
            # a675 # r65550
            jump morte_s726

        '"To nic, Morte. Jen zkouším, či si stále se mnou."':
            # a676 # r65551
            jump morte_dispose


# s330 # say34990
label morte_s330: # externs zf114_s2 zf114_s1 zf114_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a677 # r34991
            $ morteLogic.r34991_action()
            jump morte_s331

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a678 # r35001
            $ morteLogic.r35001_action()
            jump morte_s331


# s331 # say34992
label morte_s331: # from 330.0 330.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mě!  Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a679 # r34993
            $ morteLogic.r34993_action()
            jump morte_s332

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a680 # r34996
            jump morte_s333

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a681 # r34999
            jump morte_s333

        '"No jo, Morte. Pojďme."':
            # a682 # r35000
            jump morte_dispose


# s332 # say34994
label morte_s332: # from 331.0
    nr '"Tebou? Jo, to určo! Věř mi, holky, co si prošly hrobem, ty si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kterej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a683 # r34995
            jump morte_dispose


# s333 # say34997
label morte_s333: # from 331.1 331.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÝ noci s nějakejma nadrženejma právě zemřelejma kočkama, zatímco ty se někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a684 # r34998
            jump morte_dispose


# s334 # say35022
label morte_s334: # externs zf594_s2 zf594_s1 zf594_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a685 # r35023
            $ morteLogic.r35023_action()
            jump morte_s335

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a686 # r35033
            $ morteLogic.r35033_action()
            jump morte_s335


# s335 # say35024
label morte_s335: # from 334.0 334.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mě!  Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a687 # r35025
            $ morteLogic.r35025_action()
            jump morte_s336

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a688 # r35028
            jump morte_s337

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a689 # r35031
            jump morte_s337

        '"No jo, Morte. Pojďme."':
            # a690 # r35032
            jump morte_dispose


# s336 # say35026
label morte_s336: # from 335.0
    nr '"Z tebe? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kterej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a691 # r35027
            jump morte_dispose


# s337 # say35029
label morte_s337: # from 335.1 335.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÝ noci s nějakejma nadrženejma právě zemřelejma kočkama, zatímco ty se někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a692 # r35030
            jump morte_dispose


# s338 # say35054
label morte_s338: # externs zf626_s2 zf626_s1 zf626_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a693 # r35055
            $ morteLogic.r35055_action()
            jump morte_s339

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a694 # r35065
            $ morteLogic.r35065_action()
            jump morte_s339


# s339 # say35056
label morte_s339: # from 338.0 338.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mě!  Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a695 # r35057
            $ morteLogic.r35057_action()
            jump morte_s340

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a696 # r35060
            jump morte_s341

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a697 # r35063
            jump morte_s341

        '"No jo, Morte. Pojďme."':
            # a698 # r35064
            jump morte_dispose


# s340 # say35058
label morte_s340: # from 339.0
    nr '"Tebou? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kterej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a699 # r35059
            jump morte_dispose


# s341 # say35061
label morte_s341: # from 339.1 339.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÝ noci s nějakejma nadrženejma právě zemřelejma kočkama, zatímco ty se někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a700 # r35062
            jump morte_dispose


# s342 # say35086
label morte_s342: # externs zf1096_s2 zf1096_s1 zf1096_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a701 # r35087
            $ morteLogic.r35087_action()
            jump morte_s343

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a702 # r35097
            $ morteLogic.r35097_action()
            jump morte_s343


# s343 # say35088
label morte_s343: # from 342.0 342.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mě!  Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a703 # r35089
            $ morteLogic.r35089_action()
            jump morte_s344

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a704 # r35092
            jump morte_s345

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a705 # r35095
            jump morte_s345

        '"No jo, Morte. Pojďme."':
            # a706 # r35096
            jump morte_dispose


# s344 # say35090
label morte_s344: # from 343.0
    nr '"Tebou? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kterej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a707 # r35091
            jump morte_dispose


# s345 # say35093
label morte_s345: # from 343.1 343.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÝ noci s nějakejma nadrženejma právě zemřelejma kočkama, zatímco ty se někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a708 # r35094
            jump morte_dispose


# s346 # say35118
label morte_s346: # externs zf1072_s2 zf1072_s1 zf1072_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a709 # r35119
            $ morteLogic.r35119_action()
            jump morte_s347

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a710 # r35129
            $ morteLogic.r35129_action()
            jump morte_s347


# s347 # say35120
label morte_s347: # from 346.0 346.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mne! Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a711 # r35121
            $ morteLogic.r35121_action()
            jump morte_s348

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a712 # r35124
            jump morte_s349

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a713 # r35127
            jump morte_s349

        '"No jo, Morte. Pojďme."':
            # a714 # r35128
            jump morte_dispose


# s348 # say35122
label morte_s348: # from 347.0
    nr '"Z Tebe? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kerej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a715 # r35123
            jump morte_dispose


# s349 # say35125
label morte_s349: # from 347.1 347.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÉ noci s nějakýma nadrženýma právě zemřelýma kočkama, zatímco ty někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a716 # r35126
            jump morte_dispose


# s350 # say35150
label morte_s350: # externs zf832_s2 zf832_s1 zf832_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a717 # r35151
            $ morteLogic.r35151_action()
            jump morte_s351

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a718 # r35161
            $ morteLogic.r35161_action()
            jump morte_s351


# s351 # say35152
label morte_s351: # from 350.0 350.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mne! Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a719 # r35153
            $ morteLogic.r35153_action()
            jump morte_s352

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a720 # r35156
            jump morte_s353

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a721 # r35159
            jump morte_s353

        '"No jo, Morte. Pojďme."':
            # a722 # r35160
            jump morte_dispose


# s352 # say35154
label morte_s352: # from 351.0
    nr '"Z Tebe? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kerej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a723 # r35155
            jump morte_dispose


# s353 # say35157
label morte_s353: # from 351.1 351.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÉ noci s nějakýma nadrženýma právě zemřelýma kočkama, zatímco ty někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a724 # r35158
            jump morte_dispose


# s354 # say35182
label morte_s354: # externs zf679_s2 zf679_s1 zf679_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a725 # r35183
            $ morteLogic.r35183_action()
            jump morte_s355

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a726 # r35193
            $ morteLogic.r35193_action()
            jump morte_s355


# s355 # say35184
label morte_s355: # from 354.0 354.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mne! Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a727 # r35185
            $ morteLogic.r35185_action()
            jump morte_s356

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a728 # r35188
            jump morte_s357

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a729 # r35191
            jump morte_s357

        '"No jo, Morte. Pojďme."':
            # a730 # r35192
            jump morte_dispose


# s356 # say35186
label morte_s356: # from 355.0
    nr '"Z Tebe? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kerej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a731 # r35187
            jump morte_dispose


# s357 # say35189
label morte_s357: # from 355.1 355.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÉ noci s nějakýma nadrženýma právě zemřelýma kočkama, zatímco ty někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a732 # r35190
            jump morte_dispose


# s358 # say35214
label morte_s358: # externs zf444_s2 zf444_s1 zf444_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a733 # r35215
            $ morteLogic.r35215_action()
            jump morte_s359

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a734 # r35225
            $ morteLogic.r35225_action()
            jump morte_s359


# s359 # say35216
label morte_s359: # from 358.0 358.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mne! Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a735 # r35217
            $ morteLogic.r35217_action()
            jump morte_s360

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a736 # r35220
            jump morte_s361

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a737 # r35223
            jump morte_s361

        '"No jo, Morte. Pojďme."':
            # a738 # r35224
            jump morte_dispose


# s360 # say35218
label morte_s360: # from 359.0
    nr '"Z Tebe? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kerej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a739 # r35219
            jump morte_dispose


# s361 # say35221
label morte_s361: # from 359.1 359.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÉ noci s nějakýma nadrženýma právě zemřelýma kočkama, zatímco ty někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a740 # r35222
            jump morte_dispose


# s362 # say35246
label morte_s362: # externs zf1148_s2 zf1148_s1 zf1148_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a741 # r35247
            $ morteLogic.r35247_action()
            jump morte_s363

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a742 # r35257
            $ morteLogic.r35257_action()
            jump morte_s363


# s363 # say35248
label morte_s363: # from 362.0 362.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mne! Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a743 # r35249
            $ morteLogic.r35249_action()
            jump morte_s364

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a744 # r35252
            jump morte_s365

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a745 # r35255
            jump morte_s365

        '"No jo, Morte. Pojďme."':
            # a746 # r35256
            jump morte_dispose


# s364 # say35250
label morte_s364: # from 363.0
    nr '"Z Tebe? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kerej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a747 # r35251
            jump morte_dispose


# s365 # say35253
label morte_s365: # from 363.1 363.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÉ noci s nějakýma nadrženýma právě zemřelýma kočkama, zatímco ty někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a748 # r35254
            jump morte_dispose


# s366 # say35278
label morte_s366: # externs zf891_s2 zf891_s1 zf891_s0
    nr '"Pssst. Viděls, jak se na mě dívala? Huh? Viděls to? Jak sledovala křivku mé týlní kosti?"'

    menu:
        '"O čem to *mluvíš*?"':
            # a749 # r35279
            $ morteLogic.r35279_action()
            jump morte_s367

        '"Tím myslíš ten prázdný hrobový pohled?"':
            # a750 # r35289
            $ morteLogic.r35289_action()
            jump morte_s367


# s367 # say35280
label morte_s367: # from 366.0 366.1
    nr '"Co? Seš SLEPEJ?! Mrkala na mne! Chtěla mě! CHTĚLA!"'

    menu:
        '"Možná chtěla, abys *šel pryč.* Byla příliš rozrušená ze MNE, než aby věnovala pozornost nějaké pitomé poletující hlavě s velkou hubou."':
            # a751 # r35281
            $ morteLogic.r35281_action()
            jump morte_s368

        '"Myslím, že si to představuješ. Je zombie. Mrtvola. Mrtvá osoba. Nejspíš tě ani nezaregistrovala."':
            # a752 # r35284
            jump morte_s369

        '"Myslím si, že ty a tvoje představivost byste se měli na čas rozejít a dát si pauzu."':
            # a753 # r35287
            jump morte_s369

        '"No jo, Morte. Pojďme."':
            # a754 # r35288
            jump morte_dispose


# s368 # say35282
label morte_s368: # from 367.0
    nr '"Z Tebe? Jo, to určo! Věř mi, holky, co si prošly hrobem, si na fyzičnost moc nepotrpí, nesere je „Já mám tělo“ a „Jsem zjizvenej tvrďák“. Chtějí chlápka, kerej má DUCHA! To sem já, šéfe. Mrtvoly jako TY sou běžnější než zlomená grešle."'

    menu:
        '"No jo, Morte. Pojďme."':
            # a755 # r35283
            jump morte_dispose


# s369 # say35285
label morte_s369: # from 367.1 367.2
    nr '"Jo, jasně. Když seš mrtvej tak dlouho jako já, naučíš se to poznávat. Ty signály jsou pro tebe možná moc NEZŘETELNÝ, ale proto já trávím SVÉ noci s nějakýma nadrženýma právě zemřelýma kočkama, zatímco ty někde jen tak obstáváš, huh? Co je? Co-se-děje? Kde je m-m-moje pamm-mmměť?"'

    menu:
        '"No jo, Morte. Pojďme."':
            # a756 # r35286
            jump morte_dispose


# s370 # say35310
label morte_s370: # from 377.3
    nr '"Hmmm. Zajímalo by mě, jestli by tomuhle šedovousovi vadilo, kdybych si půjčil jeho tělo…"'

    menu:
        '"Šedovous?"':
            # a757 # r35311
            jump morte_s371

        '"Nemyslím si, že je v postavení, kdy by mohl něco namítat."':
            # a758 # r35326
            jump morte_s372

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a759 # r35327
            jump morte_s373


# s371 # say35312
label morte_s371: # from 370.0
    nr '"Šedovous… no, víš, starej paprika, dědek… zkrátka někdo věkovitej."'

    menu:
        '"No, myslím si, že není v pozici, kdy by mohl něco namítat.  Proč si nevzít jeho tělo?"':
            # a760 # r35313
            jump morte_s372

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a761 # r35325
            jump morte_s373


# s372 # say35314
label morte_s372: # from 370.1 371.0
    nr 'Morte si chvíli prohlíží kostlivce, pak zavrtí hlavou. "Pche… potřebuju trochu čerstvějšího. A něco, co má o trochu víc důstojnosti… tendle je celej popraskanej a polámanej."'

    menu:
        '"A ty ne?"':
            # a762 # r35315
            jump morte_s373

        '"Dobrá tedy. Pojďme."':
            # a763 # r35324
            jump morte_dispose


# s373 # say35316
label morte_s373: # from 370.2 371.1 372.0
    nr '"Oh, seš hromada směšnosti." Morte na tebe zlobně zírá. "Kromě toho, TY MÁŠ tak co mluvit, vole. Lituju všechny chudinky zrcadla, který potkáš."'

    menu:
        '"Jo tak? No *JÁ* mám alespoň všechny své části."':
            # a764 # r35317
            jump morte_s374

        '"Pojďme."':
            # a765 # r35323
            jump morte_dispose


# s374 # say35318
label morte_s374: # from 373.0
    nr 'Morte si odfrkl. Nemáš potuchy, jak to bez plic dokázal.'

    menu:
        '"Víš, Morte, není nic lepšího a uspokojujícího, než chodit kolem, rozhazovat rukama, dýchat plícemi ostrý vzduch. Je to SKVĚLÝ, mít tělo."':
            # a766 # r35319
            $ morteLogic.r35319_action()
            jump morte_s375

        '"Pojďme."':
            # a767 # r35322
            jump morte_dispose


# s375 # say35320
label morte_s375: # from 374.0
    nr '"Musím ti říct, že svý rozhodnutí pomoct ti na útěku z přípravny jsem přidal do svýho narůstajícího seznamu věcí, kterejch lituju." Morte si znovu odfrkl. "Měl jsem tě nechat shnít… aspoň o trochu víc."'

    menu:
        '"Jsem rád, že to tak cítíš. Pojďme."':
            # a768 # r35321
            jump morte_dispose


# s376 # say35341
label morte_s376: # externs s1221_s3 s1221_s0
    nr '"Uau, šéfe. To je vandalismus! Ty nesmysly byly asi to jediný, co tu kupu kostí drželo pohromadě. Nekromancie s takovejma funguje jenom do určitý míry, víš?"'

    menu:
        '"Takže?"':
            # a769 # r35342
            $ morteLogic.r35342_action()
            jump morte_s377

        '"Oh… Nechtěl jsem způsobit žádnou trvalou škodu."':
            # a770 # r35360
            $ morteLogic.r35360_action()
            jump morte_s377

        '"Dobra tedy, to nevadí. Možná někdy jindy."':
            # a771 # r35361
            jump morte_s377


# s377 # say35343
label morte_s377: # from 376.0 376.1 376.2
    nr '"Oh, to není problém." Morte se podivně zakýval, jako by krčil rameny. "Jenom sem si nebyl jistej, estli to víš, nebo ne. No, jen pokračuj."'

    menu:
        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35344_condition():
            # a772 # r35344
            jump s1221_s4  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35352_condition():
            # a773 # r35352
            jump s1221_s5  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35355_condition():
            # a774 # r35355
            jump s1221_s6  # EXTERN

        'To nic. Možná někdy jindy.' if morteLogic.r35358_condition():
            # a775 # r35358
            $ morteLogic.r35358_action()
            jump morte_s370

        'To nic. Možná někdy jindy.' if morteLogic.r35359_condition():
            # a776 # r35359
            jump morte_dispose


# s378 # say35387
label morte_s378: # from 385.3
    nr '"Hmmm. Zajímalo by mě, jestli by tomuhle šedovousovi vadilo, kdybych si půjčil jeho tělo…"'

    menu:
        '"Šedovous?"':
            # a777 # r35388
            jump morte_s379

        '"Nemyslím si, že je v postavení, kdy by mohl něco namítat."':
            # a778 # r35403
            jump morte_s380

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a779 # r35404
            jump morte_s381


# s379 # say35389
label morte_s379: # from 378.0
    nr '"Šedovous… no, víš, starej paprika, dědek… zkrátka někdo věkovitej."'

    menu:
        '"No, myslím si, že není v pozici, kdy by mohl něco namítat.  Proč si nevzít jeho tělo?"':
            # a780 # r35390
            jump morte_s380

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a781 # r35402
            jump morte_s381


# s380 # say35391
label morte_s380: # from 378.1 379.0
    nr 'Morte si chvíli prohlíží kostlivce, pak zavrtí hlavou. "Pche… potřebuju trochu čerstvějšího. A něco, co má o trochu víc důstojnosti… tendle je celej popraskanej a polámanej."'

    menu:
        '"A ty ne?"':
            # a782 # r35392
            jump morte_s381

        '"Dobrá tedy. Pojďme."':
            # a783 # r35401
            jump morte_dispose


# s381 # say35393
label morte_s381: # from 378.2 379.1 380.0
    nr '"Oh, seš hromada směšnosti." Morte na tebe zlobmě zírá. "Kromě toho,  TY MÁŠ tak co mluvit, vole. Lituju všechny chudinky zrcadla, který potkáš."'

    menu:
        '"Jo tak? No *JÁ* mám alespoň všechny své části."':
            # a784 # r35394
            jump morte_s382

        '"Pojďme."':
            # a785 # r35400
            jump morte_dispose


# s382 # say35395
label morte_s382: # from 381.0
    nr 'Morte si odfrkl. Nemáš ponětí, jak to bez plic dokázal.'

    menu:
        '"Víš, Morte, není nic lepšího a uspokojujícího, než chodit kolem, rozhazovat rukama, dýchat plícemi ostrý vzduch. Je to SKVĚLÝ, mít tělo."':
            # a786 # r35396
            $ morteLogic.r35396_action()
            jump morte_s383

        '"Pojďme."':
            # a787 # r35399
            jump morte_dispose


# s383 # say35397
label morte_s383: # from 382.0
    nr '"Musím ti říct, že svý rozhodnutí pomoct ti na útěku z přípravny jsem přidal do svýho narůstajícího seznamu věcí, kterejch lituju." Morte si znovu odfrkl. "Měl jsem tě nechat shnít… aspoň o trochu víc."'

    menu:
        '"Jsem rád, že to tak cítíš. Pojďme."':
            # a788 # r35398
            jump morte_dispose


# s384 # say35418
label morte_s384: # externs s748_s3 s748_s0
    nr '"Uau, šéfe. To je vandalismus! Ty nesmysly byly asi to jediný, co tu kupu kostí drželo pohromadě. Nekromancie s takovejma funguje jenom do určitý míry, víš?"'

    menu:
        '"Takže?"':
            # a789 # r35419
            $ morteLogic.r35419_action()
            jump morte_s385

        '"Oh… Nechtěl jsem způsobit žádnou trvalou škodu."':
            # a790 # r35437
            $ morteLogic.r35437_action()
            jump morte_s385

        '"Dobra tedy, to nevadí. Možná někdy jindy."':
            # a791 # r35438
            jump morte_s385


# s385 # say35420
label morte_s385: # from 384.0 384.1 384.2
    nr '"Oh, to není problém." Morte se podivně zakýval, jako by krčil rameny. "Jenom sem si nebyl jistej, estli to víš, nebo ne. No, jen pokračuj."'

    menu:
        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35421_condition():
            # a792 # r35421
            jump s748_s4  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35429_condition():
            # a793 # r35429
            jump s748_s5  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35432_condition():
            # a794 # r35432
            jump s748_s6  # EXTERN

        'To nic. Možná někdy jindy.' if morteLogic.r35435_condition():
            # a795 # r35435
            $ morteLogic.r35435_action()
            jump morte_s378

        'To nic. Možná někdy jindy.' if morteLogic.r35436_condition():
            # a796 # r35436
            jump morte_dispose


# s386 # say35464
label morte_s386: # from 393.3
    nr '"Hmmm. Zajímalo by mě, jestli by tomuhle šedovousovi vadilo, kdybych si půjčil jeho tělo…"'

    menu:
        '"Šedovous?"':
            # a797 # r35465
            jump morte_s387

        '"Nemyslím si, že je v postavení, kdy by mohl něco namítat."':
            # a798 # r35480
            jump morte_s388

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a799 # r35481
            jump morte_s389


# s387 # say35466
label morte_s387: # from 386.0
    nr '"Šedovous… no, víš, starej paprika, dědek… zkrátka někdo věkovitej."'

    menu:
        '"No, myslím si, že není v pozici, kdy by mohl něco namítat.  Proč si nevzít jeho tělo?"':
            # a800 # r35467
            jump morte_s388

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a801 # r35479
            jump morte_s389


# s388 # say35468
label morte_s388: # from 386.1 387.0
    nr 'Morte si chvíli prohlíží kostlivce, pak zavrtí hlavou. "Pche… potřebuju trochu čerstvějšího. A něco, co má o trochu víc důstojnosti… tendle je celej popraskanej a polámanej."'

    menu:
        '"A ty ne?"':
            # a802 # r35469
            jump morte_s389

        '"Dobrá tedy. Pojďme."':
            # a803 # r35478
            jump morte_dispose


# s389 # say35470
label morte_s389: # from 386.2 387.1 388.0
    nr '"Oh, seš hromada směšnosti." Morte na tebe zlobně zírá. "Kromě toho,  TY MÁŠ tak co mluvit, vole. Lituju všechny chudinky zrcadla, který potkáš."'

    menu:
        '"Jo tak? No *JÁ* mám alespoň všechny své části."':
            # a804 # r35471
            jump morte_s390

        '"Pojďme."':
            # a805 # r35477
            jump morte_dispose


# s390 # say35472
label morte_s390: # from 389.0
    nr 'Morte si odfrkl. Nemáš ponětí, jak to bez plic dokázal.'

    menu:
        '"Víš, Morte, není nic lepšího a uspokojujícího, než chodit kolem, rozhazovat rukama, dýchat plícemi ostrý vzduch. Je to SKVĚLÝ, mít tělo."':
            # a806 # r35473
            $ morteLogic.r35473_action()
            jump morte_s391

        '"Pojďme."':
            # a807 # r35476
            jump morte_dispose


# s391 # say35474
label morte_s391: # from 390.0
    nr '"Musím ti říct, že svý rozhodnutí pomoct ti na útěku z přípravny jsem přidal do svýho narůstajícího seznamu věcí, kterejch lituju." Morte si znovu odfrkl. "Měl jsem tě nechat shnít… aspoň o trochu víc."'

    menu:
        '"Jsem rád, že to tak cítíš. Pojďme."':
            # a808 # r35475
            jump morte_dispose


# s392 # say35495
label morte_s392: # externs s996_s3 s996_s0
    nr '"Uau, šéfe. To je vandalismus! Ty nesmysly byly asi to jediný, co tu kupu kostí drželo pohromadě. Nekromancie s takovejma funguje jenom do určitý míry, víš?"'

    menu:
        '"Takže?"':
            # a809 # r35496
            $ morteLogic.r35496_action()
            jump morte_s393

        '"Oh… Nechtěl jsem způsobit žádnou trvalou škodu."':
            # a810 # r35514
            $ morteLogic.r35514_action()
            jump morte_s393

        '"Dobra tedy, to nevadí. Možná někdy jindy."':
            # a811 # r35515
            jump morte_s393


# s393 # say35497
label morte_s393: # from 392.0 392.1 392.2
    nr '"Oh, to není problém." Morte se podivně zakýval, jako by krčil rameny. "Jenom sem si nebyl jistej, estli to víš, nebo ne. No, jen pokračuj."'

    menu:
        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35498_condition():
            # a812 # r35498
            jump s996_s4  # EXTERN

        'Zkus kostlivcovi vytáhnout svorky z kloubů.' if morteLogic.r35506_condition():
            # a813 # r35506
            jump s996_s5  # EXTERN

        'Zkus kostlivcovi vytáhnout svorky z kloubů.' if morteLogic.r35509_condition():
            # a814 # r35509
            jump s996_s6  # EXTERN

        'To nic. Možná někdy jindy.' if morteLogic.r35512_condition():
            # a815 # r35512
            $ morteLogic.r35512_action()
            jump morte_s386

        'To nic. Možná někdy jindy.' if morteLogic.r35513_condition():
            # a816 # r35513
            jump morte_dispose


# s394 # say35541
label morte_s394: # from 401.3
    nr '"Hmmm. Zajímalo by mě, jestli by tomuhle šedovousovi vadilo, kdybych si půjčil jeho tělo…"'

    menu:
        '"Šedovous?"':
            # a817 # r35542
            jump morte_s395

        '"Nemyslím si, že je v postavení, kdy by mohl něco namítat."':
            # a818 # r35557
            jump morte_s396

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a819 # r35558
            jump morte_s397


# s395 # say35543
label morte_s395: # from 394.0
    nr '"Šedovous… no, víš, starej paprika, dědek… zkrátka někdo věkovitej."'

    menu:
        '"No, myslím si, že není v pozici, kdy by mohl něco namítat.  Proč si nevzít jeho tělo?"':
            # a820 # r35544
            jump morte_s396

        '"Něco mi říká, že bys byl dvakrát tak otravnější, kdybys měl ruce. Pojďme."':
            # a821 # r35556
            jump morte_s397


# s396 # say35545
label morte_s396: # from 394.1 395.0
    nr 'Morte si chvíli prohlíží kostlivce, pak zavrtí hlavou. "Pche… potřebuju trochu čerstvějšího. A něco, co má o trochu víc důstojnosti… tendle je celej popraskanej a polámanej."'

    menu:
        '"A ty ne?"':
            # a822 # r35546
            jump morte_s397

        '"Dobrá tedy. Pojďme."':
            # a823 # r35555
            jump morte_dispose


# s397 # say35547
label morte_s397: # from 394.2 395.1 396.0
    nr '"Oh, seš hromada směšnosti." Morte na tebe zlobně zírá. "Kromě toho,  TY MÁŠ tak co mluvit, vole. Lituju všechny chudinky zrcadla, který potkáš."'

    menu:
        '"Jo tak? No *JÁ* mám alespoň všechny své části."':
            # a824 # r35548
            jump morte_s398

        '"Pojďme."':
            # a825 # r35554
            jump morte_dispose


# s398 # say35549
label morte_s398: # from 397.0
    nr 'Morte si odfrkl. Nemáš ponětí, jak to bez plic dokázal.'

    menu:
        '"Víš, Morte, není nic lepšího a uspokojujícího, než chodit kolem, rozhazovat rukama, dýchat plícemi ostrý vzduch. Je to SKVĚLÝ, mít tělo."':
            # a826 # r35550
            $ morteLogic.r35550_action()
            jump morte_s399

        '"Pojďme."':
            # a827 # r35553
            jump morte_dispose


# s399 # say35551
label morte_s399: # from 398.0
    nr '"Musím ti říct, že svý rozhodnutí pomoct ti na útěku z přípravny jsem přidal do svýho narůstajícího seznamu věcí, kterejch lituju." Morte si znovu odfrkl. "Měl jsem tě nechat shnít… aspoň o trochu víc."'

    menu:
        '"Jsem rád, že to tak cítíš. Pojďme."':
            # a828 # r35552
            jump morte_dispose


# s400 # say35572
label morte_s400: # externs s863_s3 s863_s0
    nr '"Uau, šéfe. To je vandalismus! Ty nesmysly byly asi to jediný, co tu kupu kostí drželo pohromadě. Nekromancie s takovejma funguje jenom do určitý míry, víš?"'

    menu:
        '"Takže?"':
            # a829 # r35573
            $ morteLogic.r35573_action()
            jump morte_s401

        '"Oh… Nechtěl jsem způsobit žádnou trvalou škodu."':
            # a830 # r35591
            $ morteLogic.r35591_action()
            jump morte_s401

        '"Dobra tedy, to nevadí. Možná někdy jindy."':
            # a831 # r35592
            jump morte_s401


# s401 # say35574
label morte_s401: # from 400.0 400.1 400.2
    nr '"Oh, to není problém." Morte se podivně zakýval, jako by krčil rameny. "Jenom sem si nebyl jistej, estli to víš, nebo ne. No, jen pokračuj."'

    menu:
        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35575_condition():
            # a832 # r35575
            jump s863_s4  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35583_condition():
            # a833 # r35583
            jump s863_s5  # EXTERN

        'Zkus kostlivci vytáhnout svorky z kloubů.' if morteLogic.r35586_condition():
            # a834 # r35586
            jump s863_s6  # EXTERN

        'To nic. Možná někdy jindy.' if morteLogic.r35589_condition():
            # a835 # r35589
            $ morteLogic.r35589_action()
            jump morte_s394

        'To nic. Možná někdy jindy.' if morteLogic.r35590_condition():
            # a836 # r35590
            jump morte_dispose


# s402 # say38265
label morte_s402: # -
    nr '"Zbožňuju tudle holku!"'

    menu:
        '"A můžeš aspoň psát, nebo dělat pantomimu?"':
            # a837 # r38267
            jump ecco_s7  # EXTERN


# s403 # say38266
label morte_s403: # -
    nr '"Joj!"'

    menu:
        '"Eh?"':
            # a838 # r38268
            jump ecco_s34  # EXTERN


# s404 # say39000
label morte_s404: # -
    nr 'Morte šeptá, "Tohle není dobrý, šéfe. Sleduj svý kroky, nebo zcela odstraní, smetou tvojí mysl ze života… jsou příliš silný ve velkejch skupinách - každej z nich přidá do skupiny mozek. Jsou *smrtící*."'

    jump manyas1_s5  # EXTERN


# s405 # say39001
label morte_s405: # -
    nr 'Morte šeptá, "Tohle není dobrý, šéfe. Sleduj svý kroky, nebo zcela odstraní, smetou tvojí mysl ze života… jsou příliš silný ve velkejch skupinách - každej z nich přidá do skupiny mozek. Jsou *smrtící*."'

    jump manyas1_s58  # EXTERN


# s406 # say39002
label morte_s406: # -
    nr 'Morte šeptá, "Nevím co jsou zač, šéfe, ale sledujou tvý myšlenky. Jsou skupina mysli a každá krysa přidá víc k celkový mysli, a bojujou jako - omlouvám se za ten výraz - krysy zahnaný do kouta. Teď jsou ve svým domě, šéfe, a nemůžou nikam jít. Nebojuj."'

    jump manyas1_s78  # EXTERN


# s407 # say39564
label morte_s407: # -
    nr '"To je ale náhoda! Já taky vodchytávám pěkný pohádky."'

    jump yves_s2  # EXTERN


# s408 # say39565
label morte_s408: # -
    nr '"Já? Proč bych zrovna *já* měl povídat ňáký veršovánky?"'

    menu:
        '"Zapomeň na to."':
            # a839 # r39713
            jump morte_s409

        '"Prostě pověz nějakou historku, Morte."':
            # a840 # r39714
            jump morte_s413


# s409 # say39566
label morte_s409: # from 408.0
    nr '"Ne, ne, já to teda udělám… jenom jsem to tu chtěl trošku oživit. Mám totiž rád, když mě ostatní poslouchaj."'

    menu:
        '"Nic takového, Morte. Nechci to slyšet."':
            # a841 # r39715
            jump morte_s410

        '"Tak dobrá… začni."':
            # a842 # r39716
            $ morteLogic.r39716_action()
            jump morte_s414


# s410 # say39567
label morte_s410: # from 409.0
    nr '"Prosím! No tak? Proooooosím? Je to vážně úžasná historka! Spousta postav, akce, je to takový tajemný a má to výborný zauzlení!"'

    menu:
        '"Nemůže to být tak skvělé."':
            # a843 # r39717
            jump morte_s411

        '"Co je to zauzlení?"':
            # a844 # r39718
            jump morte_s412

        '"Dobrá… začni."':
            # a845 # r39719
            $ morteLogic.r39719_action()
            jump morte_s414


# s411 # say39568
label morte_s411: # from 410.0
    nr '"To teda je! To bys koukal! Já to povim, jo?"'

    menu:
        '"Počkej… co je to zauzlení?"':
            # a846 # r39720
            jump morte_s412

        '"Dobrá… začni."':
            # a847 # r39721
            $ morteLogic.r39721_action()
            jump morte_s414


# s412 # say39569
label morte_s412: # from 410.1 411.0
    nr '"Vím já? Ale zní to zajímavě!"'

    menu:
        '"Dobrá… začni."':
            # a848 # r39722
            $ morteLogic.r39722_action()
            jump morte_s414


# s413 # say39570
label morte_s413: # from 408.1
    nr '"Dobrá, dobrá…"'

    $ morteLogic.s413_action()
    jump morte_s414


# s414 # say39571
label morte_s414: # from 409.1 410.2 411.1 412.0 413.0
    nr '"To takhle seděl stařec v temnotě na cestě, jasný? Nebyl si totiž jistej, kterym směrem má jít, a navíc zapomněl, kdo vlastně je a kam jde. Na chviličku si sednul, aby odpočinul nohám když tu najednou zvedne zrak a co to nevidí? Před ním stojí nějaká postarší ženská, cení na něj zuby, který stejně nemá, a do toho štěbetá: „A teď tvé třetí přání. Co to bude?“"'

    menu:
        '"Pokračuj, Morte…"':
            # a849 # r39724
            jump morte_s415

        '"Počkej… měl bych dotaz na Yves…"':
            # a850 # r39725
            jump yves_s4  # EXTERN

        '"Zbytek si poslechneme jindy, Morte. Sbohem, Yves."':
            # a851 # r39726
            jump morte_dispose


# s415 # say39572
label morte_s415: # from 414.0
    nr '"„Třetí přání?“ Koukal na ní dědouš jako čerstvě vyvoraná myš. „Jak můžu mít třetí přání, když jsem ještě neměl první ani druhé přání?“"'

    menu:
        '"Pokračuj, Morte…"':
            # a852 # r39727
            jump morte_s416

        '"Počkej… měl bych dotaz na Yves…"':
            # a853 # r39728
            jump yves_s4  # EXTERN

        '"Zbytek si poslechneme jindy, Morte. Sbohem, Yves."':
            # a854 # r39729
            jump morte_dispose


# s416 # say39573
label morte_s416: # from 415.0
    nr '"„Už jsi měl dvě přání,“ odpověděla mu ta stará babizna, „ale tvé druhé přání bylo, abych vše uvedla do stavu před tvým prvním přáním. To proto si nic nepamatuješ; zapomněl jsi totiž všechno, co se stalo po tvém úplně prvním přání.“ Vykulila na toho nebohýho dědulu oči. Asi takhle…" Morte na tebe vyvalil oči." Takže teď už ti zbývá jen jedno přání.„"'

    menu:
        '"Pokračuj, Morte…"':
            # a855 # r39752
            jump morte_s417

        '"Vydrž… měl bych dotaz pro Yves…"':
            # a856 # r39753
            jump yves_s4  # EXTERN

        '"Poslechnem si to jindy, Morte. Sbohem, Yves."':
            # a857 # r39754
            jump morte_dispose


# s417 # say39574
label morte_s417: # from 416.0
    nr '"„Tak dobrá,“ řekl jí ten chlap, "Sice tomu nevěřím, ale jak mi může přání ublížit. Přeju si vědět, kdo vlastně jsem.„"  "“Legrační,„ stihla ještě říct čarodějka, než splnila to přání a nastálo zmizela. “Takové bylo tvé první přání.„"'

    jump yves_s55  # EXTERN


# s418 # say39575
label morte_s418: # -
    nr '"Co to himlhergotkrucifix bylo, ty pitomej mnohoúhelníku?! Nic nudnějšího jsem v životě… jsem ještě neslyšel!"'

    jump nordom_s11  # EXTERN


# s419 # say39576
label morte_s419: # -
    nr '"Přikrášlené?"'

    jump nordom_s12  # EXTERN


# s420 # say39577
label morte_s420: # -
    nr '"Ale no tak, fiendko. Přece by ses nestyděla před cizími lidmi."'

    jump annah_s196  # EXTERN


# s421 # say40068
label morte_s421: # -
    nr 'Morte tě oblétl, napodobujíc dívčinu naivnost. "Klobouk dolů, šéfe… má pravdu! Nikdy předtím jsem si to nevšiml… všude máš *jizvy!*"'

    menu:
        '"To jsou všechno staré jizvy. Jsem v pořádku."' if morteLogic.r40069_condition():
            # a858 # r40069
            jump nenny_s2  # EXTERN

        '"Jen lehce; Budu v pořádku."' if morteLogic.r40070_condition():
            # a859 # r40070
            jump nenny_s2  # EXTERN

        '"Ano, jsem. A těžce."' if morteLogic.r40071_condition():
            # a860 # r40071
            jump nenny_s2  # EXTERN

        '"Zapomeň na to. Mám nějaké otázky…"':
            # a861 # r40072
            jump nenny_s3  # EXTERN

        '"Nestarej se. Sbohem."':
            # a862 # r40073
            jump morte_dispose


# s422 # say40074
label morte_s422: # -
    nr 'Morte protočil panenky. "Jsi trochu vepředu, jasně… možná s tím mají co dělat ty tvoje velký kulatý pr-"'

    menu:
        '"Morte, drž hubu."':
            # a863 # r40075
            jump morte_s423


# s423 # say40076
label morte_s423: # from 422.0
    nr 'Morte drží hubu.'

    menu:
        '"To není problém, Nenny."' if morteLogic.r40077_condition():
            # a864 # r40077
            jump nenny_s9  # EXTERN

        '"Dohlédni, aby se to nestalo znovu, Nenny."' if morteLogic.r40078_condition():
            # a865 # r40078
            jump nenny_s9  # EXTERN

        '"Bez problému, slečno."' if morteLogic.r40079_condition():
            # a866 # r40079
            jump nenny_s9  # EXTERN

        '"Dohlédni, aby se to nestalo znovu, dívko."' if morteLogic.r40080_condition():
            # a867 # r40080
            jump nenny_s9  # EXTERN


# s424 # say40081
label morte_s424: # -
    nr '"Hej!"'

    jump nenny_s27  # EXTERN


# s425 # say40082
label morte_s425: # -
    nr 'Morte si mumlá pro sebe. "Myslím si, že je dobrý, že tam je alespoň *něco*."'

    menu:
        '"Mám další otázku, Nenny…"':
            # a868 # r40083
            jump nenny_s3  # EXTERN

        '"To je všechno co jsem chtěl vědět, Nenny. Sbohem."':
            # a869 # r40084
            jump morte_dispose


# s426 # say40222
label morte_s426: # -
    nr '"Oooh, ne… řekni nám to teď."'

    menu:
        '"Ano… prosím, pane: mluv."':
            # a870 # r40223
            jump brocus4_s4  # EXTERN

        '"Nech toho Morte. Mám pro něj jinou otázku…"':
            # a871 # r40224
            jump brocus4_s2  # EXTERN

        '"Zapomeň na to, Morte; jdeme."':
            # a872 # r40225
            jump morte_dispose


# s427 # say40275
label morte_s427: # -
    nr 'Morte přiletěl blíž k tobě šeptaje: "Cejtím k jejímu milenci lítost. Neví, jak to má zlý. Mrně, jako je todle, to není nic než potíž."'

    menu:
        '"Nezní to moc rozumně, Juliette. Uvaž, co říkáš."':
            # a873 # r40276
            jump sadjuli_s12  # EXTERN

        '"Co jsi měla na mysli, Juliette?"':
            # a874 # r40277
            jump sadjuli_s13  # EXTERN

        '"Mám nějaké otázky, Juliette…"':
            # a875 # r40278
            jump sadjuli_s24  # EXTERN

        '"To je všechno co jsem chtěl vědět, Juliette. Sbohem."':
            # a876 # r40279
            jump morte_dispose


# s428 # say40685
label morte_s428: # -
    nr 'Morte tiše zašeptal: "Uau… drsný kotě."'

    menu:
        '"Omlouvám se, má lady… nebyl jsem si jistý, jestli tady někdo je."':
            # a877 # r40686
            jump marissa_s2  # EXTERN

        '"Mám nějaké otázky, má lady…"':
            # a878 # r40687
            jump marissa_s3  # EXTERN

        '"Tak tedy sbohem, má lady."':
            # a879 # r40688
            jump morte_dispose


# s429 # say40846
label morte_s429: # -
    nr '"No tak, šéfe! Sme v baráku plným kočiček, kerý sou nejvíc sexy na týdle straně mnohovesmíru a ty se zastavuješ, abys pokecal s *modronama*?"'

    menu:
        '"Co mi o nich můžeš říct, Morte?"':
            # a880 # r40847
            jump morte_s430

        'Ignoruj Morteho a pozdrav modrony.':
            # a881 # r40848
            $ morteLogic.r40848_action()
            jump brocus6_s3  # EXTERN

        '"Promiň, Morte, ale já si s těmi modrony chci promluvit."':
            # a882 # r40849
            jump morte_s431

        '"Dobře, Morte. Tak pojďme."':
            # a883 # r40850
            jump morte_dispose


# s430 # say40851
label morte_s430: # from 429.0
    nr 'Morte vydal zvuk, znamenající nejvyšší znechucení. "Co k nim říct? Otravný malý chodící hodinový strojky… dycinky se pokoušej udržovat řád a zákon a takový nesmysly po celým mnohovesmíru. A to není *dobrý*, to ne… jenom *řád*. Hele, vykašleme se na ně a půjdeme hodit pokec s nějakým tím sexy kotětem, kerých je tady spousta, co?"'

    menu:
        'Ignoruj Morteho a pozdrav modrony.':
            # a884 # r40852
            $ morteLogic.r40852_action()
            jump brocus6_s3  # EXTERN

        '"Omlouvám se, Morte, ale já si s těmi modrony chci promluvit."':
            # a885 # r40853
            jump morte_s431

        '"Dobře, Morte. Tak pojďme."':
            # a886 # r40854
            jump morte_dispose


# s431 # say40855
label morte_s431: # from 429.2 430.1
    nr 'Morte si hlasitě povzdechl. "Fajn, no jó, jak chceš. Ale pak mi neříkej, že sem tě nevaroval, jasný? Stejně z nich nejspíš nic nevytáhneš, náčelníku… je to divná banda, domluva s nima zrovna není, to se spíš domluvíš s hromadou kamení, ta dává srozumitelnější odpovědi. Někdy."'

    menu:
        '"Zdravím…"':
            # a887 # r40856
            $ morteLogic.r40856_action()
            jump brocus6_s3  # EXTERN


# s432 # say41135
label morte_s432: # -
    nr '"Cokoliv!" Zařval Morte. "Udělej mi cokoliv chceš!"'

    jump kesai_s2  # EXTERN


# s433 # say41136
label morte_s433: # -
    nr '"Je toho dost, abych začal ronit slzy… kdy bylo tohle škvrně, když jsem měl *tělo?!*"'

    jump kesai_s11  # EXTERN


# s434 # say41632
label morte_s434: # -
    nr '"Můj přítel se domnívá, že jsi atraktivní, ale ouha! On občas dokáže dost kecat!"'

    jump kimasxi_s2  # EXTERN


# s435 # say41633
label morte_s435: # from 436.0
    nr '"Jasně šéfiku, cokoli. To je ježibaba, co?" Zahuhňal Morte a zakoulel očima. "Takovýhle miluju!"'

    menu:
        '"Je mi to jasný Morte, ale potřebuju si s ní teď promluvit."':
            # a888 # r41634
            jump kimasxi_s14  # EXTERN

        '"V pořádku… dělej si co chceš Morte."':
            # a889 # r41635
            jump kimasxi_s4  # EXTERN


# s436 # say41636
label morte_s436: # -
    nr '"Tys slyšela slovo „bordel“ a hned sis myslela, že si tady vyděláš nějaký prachy, ty zablešená kozí děvko? Heh! Nemůžu uvěřit, že tě vůbec pustili do dveří, zvlášť, když ještě klapeš těma svejma vochrnutejma chundelatejma hnátama!"'

    menu:
        '"To už by stačilo, nechte toho vy dva."':
            # a890 # r41637
            jump morte_s435

        'Nechej je pokračovat.':
            # a891 # r41638
            jump kimasxi_s3  # EXTERN


# s437 # say41639
label morte_s437: # -
    nr '"*On!* Copak *ON* vypadá dost sprostě,„ Kimasxi Naufouknutýhovno“… ty vypelichaná kozí děvko!"'

    jump kimasxi_s18  # EXTERN


# s438 # say41640
label morte_s438: # -
    nr '"Možná lepší než ty?" Morte na ni zaviklal obočím "Jo? Joo?"'

    jump kimasxi_s20  # EXTERN


# s439 # say41641
label morte_s439: # -
    nr '"Nechci. Ale musím připustit, že sem se jednu nebo dvě věci naučil… dobrej nápad šéfe!"~ [MRT387]'

    menu:
        '"Jasná věc Morte."':
            # a892 # r41642
            jump kimasxi_s21  # EXTERN


# s440 # say41830
label morte_s440: # from 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1
    nr '"Koukni, šéfíku. Zdá se, že ses poněkud rozhozenej po tom polibku smrti, tak pro tebe mám malou radu: Až budeš mít votázku, klidně se mě zeptej, jo?"  POZNÁMKA: Pokud si budeš chtít promluvit se členem družiny, vyber volbu „mluvení“ z rychlého menu a poté levým tlačítkem zvol postavu, se kterou chceš hovořit.'

    menu:
        '"V pořádku… když budu mít nějaké otázky, tak se zeptám."':
            # a893 # r41831
            jump morte_s441


# s441 # say41832
label morte_s441: # from 440.0
    nr '"Zadruhé, pokud seš aspoň z poloviny tak zapomětlivej jak vypadáš, začni si informace zapisovat - když se dovíš něco co by mohlo bejt důležitý, zapiš si to a nezapomeneš."'

    menu:
        '"Kdybych měl ten deník, který sem měl mít, dělal bych to tak."':
            # a894 # r41833
            jump morte_s442


# s442 # say41834
label morte_s442: # from 441.0
    nr '"Tak si udělej novej šéfe. Žádnej problém. Všude kolem se válí spousta pergamenů a ingoustu."'

    menu:
        '"Hmmmm. Dobře. To mi neublíží… založím si teda nový."':
            # a895 # r41835
            jump morte_s443


# s443 # say41836
label morte_s443: # from 442.0
    nr '"Používej ho, aby ses na cestách neztratil. A až si nebudeš jistej v nějakech důležitejch bodech, třeba jako kdo seš… nebo ještě líp, kdo sem *já*… pomůže ti osvěžit paměť."  POZNÁMKA: Pro přístup do deníku zvol přislušnou ikonu v právém dolním rohu na světové obrazovce, nebo vyber ikonu z rychlého menu. Tvůj deník se bude automaticky aktualizovat během hry.'

    menu:
        '"V pořádku… Mám to. Pojďme."':
            # a896 # r41837
            $ morteLogic.j39516_s443_r41837_action()
            jump morte_dispose


# s444 # say41838
label morte_s444: # from 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0 # IF WEIGHT #6 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) Global("AR0200_Visited","GLOBAL",0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Co tě žere šéfiku?"~ [MRT515]'

    menu:
        '"Můžeš mi znovu přečíst co mám vytetováno na zádech?':
            # a897 # r41840
            jump morte_s445

        '"Řekni mi ještě jednou co je tohle za místo?"':
            # a898 # r41841
            jump morte_s450

        '"Je to tu obrovské… Kdo se tady o všechno stará?"' if morteLogic.r41842_condition():
            # a899 # r41842
            jump morte_s451

        '"Můžeš mi znovu říct kdo to tu spravuje?"' if morteLogic.r41843_condition():
            # a900 # r41843
            jump morte_s451

        '"Ty mrtvoly… Odkud pocházejí?"':
            # a901 # r41844
            jump morte_s454

        '"Předtím si říkal cosi o tom, abych nezabíjel "ženské" zombie. Proč?"' if morteLogic.r41845_condition():
            # a902 # r41845
            jump morte_s455

        '"Jak mám použít tyhle obvazy?"' if morteLogic.r41846_condition():
            # a903 # r41846
            jump morte_s453

        '"Teď nic, Morte. Jen jsem se chtěl ujistit, že seš pořád se mnou."' if morteLogic.r41847_condition():
            # a904 # r41847
            jump morte_s440

        '"Teď nic, Morte. Jen jsem se chtěl ujistit, že seš pořád se mnou."' if morteLogic.r41848_condition():
            # a905 # r41848
            jump morte_dispose


# s445 # say41849
label morte_s445: # from 444.0
    nr '"Ale no tak, šéfe. Neříkej, žes to už všecko zas zapomněl."'

    menu:
        '"Potřebuju si jen osvěžit pamět."':
            # a906 # r41850
            jump morte_s446

        '"Kašli na to. Mám nějaký jiný otázky…"':
            # a907 # r41851
            jump morte_s444

        '"Zapomeň na to. Půjdem."' if morteLogic.r41852_condition():
            # a908 # r41852
            jump morte_s440

        '"Zapomeň na to. Půjdem."' if morteLogic.r41853_condition():
            # a909 # r41853
            jump morte_dispose


# s446 # say41854
label morte_s446: # from 445.0
    nr '"Vsaď se že už sem toho slyšel dost." Morte si odchrchlal. "Tak se na to junkem…"  „Vím že se cítíš, jak dybys vypil pár sudů Styxskejch chcánek, ale musíš se SOUSTŘEDIT. Máš u sebe DENÍK, kterej ti může vnýst do života trochu světla. PHAROD ti může pomoct obnovit paměť, esli už ale není v knize mrtvejch.“'

    menu:
        '"Pharod… hmmm. Pojďme dál."':
            # a910 # r41855
            jump morte_s447

        '"Nevadí. Mám jiný otázky…"':
            # a911 # r41856
            jump morte_s444

        '"Kašli na to, už sem slyšel dost. Jdem."' if morteLogic.r41857_condition():
            # a912 # r41857
            jump morte_s440

        '"Kašli na to, už sem slyšel dost. Jdem."' if morteLogic.r41858_condition():
            # a913 # r41858
            jump morte_dispose


# s447 # say41859
label morte_s447: # from 446.0
    nr '"Pudu, pudu… vydrž." Morte se na chvilku odmlčel. "V pohodě, tady je poslední kousek…"  „Neztrať deník, nebo to zase zalomíš ve Styxu. A ať budeš dělat cokoliv, nikomu NEŘÍKEJ KDO seš ani co se ti stalo, jináč tě fofrem pošlou na cyhlídkovou cestu krematoriem. Dělej co řeknu: PŘEČTI deník a najdi Pharoda.“'

    menu:
        '"A to sem u sebe neměl žádnej deník když sem se probral?"':
            # a914 # r41860
            jump morte_s448

        '"V pohodě. Mám ještě jiný otázky…"':
            # a915 # r41861
            jump morte_s444

        '"Kašli na to, už sem slyšel dost. Jdem."' if morteLogic.r41862_condition():
            # a916 # r41862
            jump morte_s440

        '"Kašli na to, už sem slyšel dost. Jdem."' if morteLogic.r41863_condition():
            # a917 # r41863
            jump morte_dispose


# s448 # say41864
label morte_s448: # from 447.0
    nr '"Ne… byls nahej. Jak už sem říkal, podstatnou část deníku máš napsanou na těle."'

    menu:
        '"A seš si jistej, že neznáš nikoho jménem Pharod?"':
            # a918 # r41865
            jump morte_s449

        '"Pravda. Mám ještě jiný otázky…"':
            # a919 # r41866
            jump morte_s444

        '"No dobrá. Jdeme"' if morteLogic.r41867_condition():
            # a920 # r41867
            jump morte_s440

        '"No dobrá. Jdeme"' if morteLogic.r41868_condition():
            # a921 # r41868
            jump morte_dispose


# s449 # say41869
label morte_s449: # from 448.0
    nr '"Ne. Ale nákej kretén ho určitě zná. Musíš se ptát… Teda až vodsaď vypadnem."'

    menu:
        '"Než půjdeme, mám ještě jiný otázky…"':
            # a922 # r41870
            jump morte_s444

        '"No dobrá. Jdeme"' if morteLogic.r41871_condition():
            # a923 # r41871
            jump morte_s440

        '"No dobrá. Jdeme"' if morteLogic.r41872_condition():
            # a924 # r41872
            jump morte_dispose


# s450 # say41873
label morte_s450: # from 444.1
    nr '"Říká se mu „Márnice“… je to velká černá barabizna kerou postavil někdo s architektonickým vkusem těhotnýho pavouka."'

    menu:
        '"Jasně. Ještě se chci na něco zeptat…"':
            # a925 # r41874
            jump morte_s444

        '"Přesně to sem chtěl vědět. Dík."' if morteLogic.r41875_condition():
            # a926 # r41875
            jump morte_s440

        '"Přesně to sem chtěl vědět. Dík."' if morteLogic.r41876_condition():
            # a927 # r41876
            jump morte_dispose


# s451 # say41877
label morte_s451: # from 444.2 444.3
    nr '"Říkaj si „Spalovači.“ Nemůžeš je minout: Sou posedlí temnotou a záhrobním chladem. Sou nějakej druh ghúlskejch poskoků; věří, že všecko musí umřít… a čím dřív, tím líp."'

    menu:
        '"Z toho sem zmatený… proč by mělo Spalovače zajímat jestli odejdu?"':
            # a928 # r41878
            jump morte_s452

        '"Jasně. Mám na tebe ještě nějaký otázky…"':
            # a929 # r41879
            jump morte_s444

        '"Chápu. Budu opatrný."' if morteLogic.r41880_condition():
            # a930 # r41880
            jump morte_s440

        '"Chápu. Budu opatrný."' if morteLogic.r41881_condition():
            # a931 # r41881
            jump morte_dispose


# s452 # say41882
label morte_s452: # from 451.0
    nr '"Copa si neposlouchal?! Říkal sem že Spalovači věří, že všechno živý musí umřít. A to radši dřív než pozdějc. Myslíš že mrtvoly cos viděl jsou štastnější v knize mrtvejch, nebo mimo ni?"'

    menu:
        '"Chápu. Mám pár dalších otázek…"':
            # a932 # r41883
            jump morte_s444

        '"V pohodě… pokusím si to zapamatovat."' if morteLogic.r41884_condition():
            # a933 # r41884
            jump morte_s440

        '"V pohodě… pokusím si to zapamatovat."' if morteLogic.r41885_condition():
            # a934 # r41885
            jump morte_dispose


# s453 # say41886
label morte_s453: # from 444.6
    nr '"No v podstatě… je *použiješ*. Zastaví krvácení a tak."  POZNÁMKA: Pokud chceš obvazy použít na sebe, klikni na ně pravým tlačítkem v inventáři. Když budeš chtíl léčit jinou postavu, dej si obvazy do některého z rychlých slotů v inventáři, vyber tlačítko "použij" z rychlého menu na obrazovce světa, a poté zvol cíl.'

    menu:
        '"Chápu. Mám pár dalších otázek…"':
            # a935 # r41887
            jump morte_s444

        '"Dík. Myslím, že to zvládnu."' if morteLogic.r41888_condition():
            # a936 # r41888
            jump morte_s440

        '"Dík. Myslím, že to zvládnu."' if morteLogic.r41889_condition():
            # a937 # r41889
            jump morte_dispose


# s454 # say41890
label morte_s454: # from 444.4
    nr '"Smrt chodí po Sférách každej den šéfe. Tihle šmajdalové sou to, co zbylo z jejich ubohejch tělních schránek, kterejma se zaprodali."'

    menu:
        '"Chápu. Mám pár dalších otázek…"':
            # a938 # r41891
            jump morte_s444

        '"V pohodě… pokusím si to zapamatovat."' if morteLogic.r41892_condition():
            # a939 # r41892
            jump morte_s440

        '"V pohodě… pokusím si to zapamatovat."' if morteLogic.r41893_condition():
            # a940 # r41893
            jump morte_dispose


# s455 # say41894
label morte_s455: # from 444.5
    nr '"Co - to myslíš *vážně?* Hele šéfe, tydle mrtvý žabky sou poslední šance pro takový fešáky jako sme my. Musíme být *gentlemani*… nebudem je rozsekávat kvůli klíčům, utrhávat jejich ruce a tak podobně ."'

    menu:
        '"Poslední šance? Co to meleš?"':
            # a941 # r41895
            jump morte_s456

        '"Nevadí. Mám ještě nějaký otázky…"':
            # a942 # r41896
            jump morte_s444

        '"V pohodě… pokusím si to zapamatovat."':
            # a943 # r41897
            jump morte_dispose


# s456 # say41898
label morte_s456: # from 455.0
    nr '"Šéfe, VONY sou mrtvý, MY sme mrtvý… chápeš kam tím mířím? Co?'

    menu:
        '"Ne… vlastně ani ne."':
            # a944 # r41899
            jump morte_s457

        '"To nemyslíš vážně."' if morteLogic.r41900_condition():
            # a945 # r41900
            jump morte_s457

        '"Nevadí. Mám ještě nějaký otázky…"':
            # a946 # r41901
            jump morte_s444

        '"Už sem slyšel dost. Jdeme."':
            # a947 # r41902
            jump morte_dispose


# s457 # say41903
label morte_s457: # from 456.0 456.1
    nr '"Šéfe, teď máme u těchhle slečinek jedinečnou šanci. Všichni sme aspoň jednou zaklepali bačkorama: máme si vo čem poklábosit. Vony upřednostňujou chlapy s náším druhem zkušeností."'

    menu:
        '"Počkej… neříkal jsi předtím že já *nejsem* mrtvý?"':
            # a948 # r41904
            jump morte_s458

        '"Nevadí. Mám ještě nějaký otázky…"':
            # a949 # r41905
            jump morte_s444

        '"Už sem slyšel dost. Jdeme."':
            # a950 # r41906
            jump morte_dispose


# s458 # say41907
label morte_s458: # from 457.0
    nr '"No… dobře, možná že *ty* nejseš mrtvej, ale já jo. A z toho důvodu mě nebude vadit, když se s těmadle kráskama co vokolo vidím pomuchlám v nějaké rakvi." Morte začal jakoby v předtuše cvakat zuby. "„Samo že napřed si s nima pohrajou Spalovači, to je jasná věc…"'

    menu:
        '"Mám ještě nějaký otázky Morte.."':
            # a951 # r41908
            jump morte_s444

        '"Už sem slyšel dost. Jdeme."':
            # a952 # r41909
            jump morte_dispose


# s459 # say41910
label morte_s459: # -
    nr '"Při bozích. To je ksakru knížka."'

    menu:
        '"Co to je?"':
            # a953 # r41911
            $ morteLogic.r41911_action()
            jump morte_s460


# s460 # say41913
label morte_s460: # from 459.0
    nr '"Dybych moh hádat, řek bych že to je ta knížka kde sou zapsaný všichni ti chudáci, keří neměli to štestí a zalomili to tady."'

    menu:
        '"Může tam být i moje jméno?"':
            # a954 # r41914
            jump morte_s461


# s461 # say41915
label morte_s461: # from 460.0
    nr '"Ech… no asi jo. Abys to zjistil, měl bys protrénovat klapačku s tamtím Spalovačem. Ale nevím esli je to zrovna dobrej nápad."'

    menu:
        '"No, potřebuju odpovědi. Promluvím si s ním."':
            # a955 # r41916
            jump morte_dispose


# s462 # say41919
label morte_s462: # -
    nr 'Morte zašeptal: "Občas je i blázinec malej."'

    menu:
        '"Jumble mám pár otázek…"':
            # a956 # r41920
            jump jumble_s2  # EXTERN

        '"Ty jsi ten kdo proklel Smradodecha, že jo?"' if morteLogic.r41921_condition():
            # a957 # r41921
            $ morteLogic.r41921_action()
            jump jumble_s8  # EXTERN

        '"Byl bych rád, kdybys sejmul Smradodechovu kletbu."' if morteLogic.r67864_condition():
            # a958 # r67864
            jump jumble_s9  # EXTERN

        '"Musím jít. Sbohem."':
            # a959 # r41922
            jump morte_dispose


# s463 # say41923
label morte_s463: # -
    nr '"Ech, och… zdá se, že sis právě vykoledoval nějakou tu kletbu, šéfe…"'

    menu:
        '"Jumble, cos mi to udělal?"':
            # a960 # r41924
            jump jumble_s7  # EXTERN

        '"Jumble… prosím, vezmi to, cos udělal, zase zpátky."':
            # a961 # r41925
            jump jumble_s7  # EXTERN

        '"Jumble aťs udělal cokoli, vem to zpátky - nebo se ti strašně pomstím."':
            # a962 # r41926
            jump jumble_s7  # EXTERN

        '"Jdeme Morte."':
            # a963 # r41927
            jump morte_dispose


# s464 # say42929
label morte_s464: # -
    nr '"Říkám nevšímej si té žáby… jednej rezervovaně a bezstarostně. Podstatně to věci okoření!"'

    jump montagu_s29  # EXTERN


# s465 # say42930
label morte_s465: # -
    nr '"Věř mi, dítě. Začni ji ignorovat, vytvoř nějaké napětí, nech ji, ať začne být zvědavá, a oni budou škrábat všude kolem, jen aby zjistili, co je to za záležitost. Jasný, šéfe?"'

    menu:
        '"Ano… ona si bude myslet, že něco je špatně, a pro jednou, on bude hrát podle pravidel, spíš než kdyby byl cíl."':
            # a964 # r42931
            jump montagu_s30  # EXTERN

        '"Ne… to je ubohý nápad."':
            # a965 # r42932
            jump montagu_s31  # EXTERN


# s466 # say43543
label morte_s466: # -
    nr '"Tohle je důvod, proč by se githové neměli množit. Pořád pokračují v tom, nebo si to myslí, že „kde jinde bych mohl zabít nějakého mindflayera nebo githyanki“ a tak dále a tak podobně. Myslím, že dokonce neradi pomlouvají jeden druhého. Jsou natvrdlí a často se naštvou, nebo zůstávají stále tak přímí a soustředění, že ztrácí smysl pro humor. Chvástají se svým soustředěním a tím, že mají jedno vědomí a společnou důvěru, jenže všimněte si, že se tato rasa sama rozdělila hned poté, co se rozdělila i jejich mysl. A teď mi řekni, která víra a ideologie nepřinese Sférám zkázu."'

    jump kiina_s35  # EXTERN


# s467 # say43908
label morte_s467: # -
    nr '"Paráda."'

    menu:
        '"Jmenuješ se Nemelle? "Bylo mi řečeno, že znáš ovládací slovo pro tuto láhev."' if morteLogic.r43909_condition():
            # a966 # r43909
            jump neml_s4  # EXTERN

        '"Ty jsi Nemelle? Tvá přítelkyně Aelwyn  se po tobě shání."' if morteLogic.r43910_condition():
            # a967 # r43910
            $ morteLogic.r43910_action()
            jump neml_s6  # EXTERN

        '"Hledáš někoho?"' if morteLogic.r43911_condition():
            # a968 # r43911
            jump neml_s14  # EXTERN

        '"Mám nějaké otázky…"':
            # a969 # r43912
            jump neml_s11  # EXTERN

        '"Nechci nic, Nemelle. Sbohem."':
            # a970 # r43913
            jump morte_dispose


# s468 # say43914
label morte_s468: # -
    nr '"Paráda."'

    jump annah_s209  # EXTERN


# s469 # say43915
label morte_s469: # -
    nr '"No ne! Jaká malá horkokrevná žabka! Prahnoucí po pozornosti? Můžu slintat blahem i k tobě, estli jenom žárlíš…" Morte začal s mlaskáním plout k Annah…'

    jump annah_s210  # EXTERN


# s470 # say43916
label morte_s470: # -
    nr 'Morte se náhle zastavil a odvrátil se s nesrozumitelným mumláním.'

    menu:
        '"Jmenuješ se Nemelle?" Bylo mi řečeno, že znáš ovládací slovo pro tuto láhev."' if morteLogic.r43917_condition():
            # a971 # r43917
            jump neml_s4  # EXTERN

        '"Ty jsi Nemelle? Tvá přítelkyně Aelwyn  se po tobě shání."' if morteLogic.r43918_condition():
            # a972 # r43918
            $ morteLogic.r43918_action()
            jump neml_s6  # EXTERN

        '"Hledáš někoho?"' if morteLogic.r43919_condition():
            # a973 # r43919
            jump neml_s14  # EXTERN

        '"Mám nějaké otázky…"':
            # a974 # r43920
            jump neml_s11  # EXTERN

        '"Nechci nic, Nemelle. Sbohem."':
            # a975 # r43921
            jump morte_dispose


# s471 # say43922
label morte_s471: # -
    nr '"Ale di, šéfiku… Jsem si jistej, že bysme *něco* vymysleli. Co? Co?"'

    menu:
        '"Zapomeň na to, Morte. Jdeme."':
            # a976 # r43923
            jump morte_dispose


# s472 # say44244
label morte_s472: # -
    nr 'Morte připlul blíž a zašeptal: "Ne, já. Vyřídím to. Co, Šéfe? Mrky mrk, šťouchy šťouch…"'

    jump goncal_s20  # EXTERN


# s473 # say44245
label morte_s473: # -
    nr 'Morte se zděsil a skočil do potyčky. "Ne!!! Člověče, *zešílels?!* Hloupě plácáš!"'

    jump annah_s214  # EXTERN


# s474 # say44677
label morte_s474: # -
    nr 'Morte obrátil oči v sloup. "Debilové kupředu…"'

    jump yi'minn_s47  # EXTERN


# s475 # say44944
label morte_s475: # -
    nr '"Miluju Halu!"'

    jump udesire_s2  # EXTERN


# s476 # say45026
label morte_s476: # -
    nr 'Morte hlasitě vzdychl. "Ale no tak sakra, šéfe. To tady fakt zůstanem a budem poslouchat ty debility?"'

    menu:
        '"Buď chvíli zticha, Morte. Chci si to poslechnout."':
            # a977 # r45027
            jump 3planea_s1  # EXTERN

        'Ignoruj Morta a poslouchej dál.':
            # a978 # r45028
            jump 3planea_s1  # EXTERN

        '"Máš pravdu, Morte - pojďme."':
            # a979 # r45029
            $ morteLogic.r45029_action()
            jump morte_dispose


# s477 # say45088
label morte_s477: # externs zm965_s0
    nr '"Hehe. Vypadá to, že tomu tupounovi někdo zapomněl říct, ať už nechodí podle Zákona tří."'

    menu:
        '"Co tím myslíš?"':
            # a980 # r45089
            jump morte_s478


# s478 # say45091
label morte_s478: # from 477.0
    nr '"Tydlecty mrtvoly toho pod čepicí moc nemaj, takže najednou dokážou dělat akorát jednu věc… když jim někdo něco přikáže, tak to budou dělat, dokavad jim někdo nedá jinej rozkaz. Nebo dokud neshnijou a nerozpadnou se na sračky. Tendle kus hniloby asi už dodělal svůj úkol, ale nějak mu někdo zapomněl říct, co má dělat."'

    menu:
        '"Kdo dává mrtvolám rozkazy?"':
            # a981 # r45092
            jump morte_s481

        '"Říkal jsi něco o Zákonu Tří. Cos tím myslel?"':
            # a982 # r45093
            $ morteLogic.j39477_s478_r45093_action()
            jump morte_s479

        '"Dobrá. Tak pojď, jdeme dál."':
            # a983 # r45094
            jump morte_dispose


# s479 # say45095
label morte_s479: # from 478.1 481.0
    nr '"Eh? No tak Zákon tří, to je jeden z těch „zákonů“ ve Sférách, co povídá, že se věci dějou třikrát… nebo že se všecko skládá ze tří částí… nebo že jsou vždycky na výběr tři věci a tak dál."'

    menu:
        '"Mám pocit, že ty tomu moc nevěříš."':
            # a984 # r45096
            jump morte_s480


# s480 # say45098
label morte_s480: # from 479.0
    nr '"Je to pěkná hovadina, esli se ptáš mě. Když si vezmeš jakýkoli číslo a budeš se k němu snažit připlácnout ňákej smysl, dycinky najdeš spoustu náhodnejch shod."'

    menu:
        '"Aha. Říkal jsi něco o tom, že ta mrtvola dostala rozkaz a někdo jí zapomněl přikázat, ať se zastaví. Kdo jim dává rozkazy?"':
            # a985 # r45099
            jump morte_s481

        '"Rozumím. Chci si tuhle zombii ještě prohlídnout…"':
            # a986 # r45100
            jump zm965_s1  # EXTERN

        '"Dobrá. Tak pojď, jdeme dál."':
            # a987 # r45101
            jump morte_dispose


# s481 # say45102
label morte_s481: # from 478.0 480.0
    nr '"Buďto jeden z dozorců nebo jakejkoli nekrofilní nekromancer, co toho chcípáka oživil z Knihy mrtvejch. Nejspíš jeden ze zřízenců… nakonec právě voni potřebujou levnou pracovní sílu. Anebo sexuální rozptýlení…"'

    menu:
        '"Aha. Co jsi to říkal o tom zákonu tří?"':
            # a988 # r45103
            $ morteLogic.j39477_s481_r45103_action()
            jump morte_s479

        '"Rozumím. Chci si tuhle zombii ještě prohlédnout…"':
            # a989 # r45104
            jump zm965_s1  # EXTERN

        '"Dobrá. Tak pojď, jdeme dál."':
            # a990 # r45105
            jump morte_dispose


# s482 # say45540
label morte_s482: # externs zm985_s4 zm985_s0
    nr '"Uch… šéfe… neměl bys…"'

    jump zm985_s3  # EXTERN


# s483 # say45709
label morte_s483: # -
    nr '"Ooh, aukce! Možná bychom tady mohli prodat Annah."'

    jump annah_s215  # EXTERN


# s484 # say45710
label morte_s484: # -
    nr '"Ooh, aukce! Možná bychom tady mohli prodat Dak„kona."'

    jump dakkon_s163  # EXTERN


# s485 # say45711
label morte_s485: # -
    nr '"Ooh, aukce! Možná bychom tady mohli najít nějaké tělo, které by se mi hodilo."'

    menu:
        '"Jasně, Morte. Určitě se zeptám."':
            # a991 # r45712
            jump giltsp_s4  # EXTERN

        '"Jenom pojďme dál."':
            # a992 # r45713
            jump morte_dispose


# s486 # say45714
label morte_s486: # -
    nr '"To musí být láska. Je to láska, že jo, šéfe?"'

    menu:
        '"Nechte toho, vy dva. Potřebuju se tady zeptat na pár věcí."':
            # a993 # r45715
            jump giltsp_s4  # EXTERN

        '"No jo, Morte. Nech ho být."':
            # a994 # r45716
            jump morte_dispose


# s487 # say45996
label morte_s487: # - # IF WEIGHT #0 ~  NumTimesTalkedTo(0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Hej, dívejte se! Další lítající hlava!"'

    jump vault9_s0  # EXTERN


# s488 # say47813
label morte_s488: # -
    nr '"Vypadá to, že tenhle palcát má cosi jako touhu rozumovat."'

    menu:
        '"Ticho. Mám další otázky…"':
            # a995 # r47814
            jump justfer_s8  # EXTERN

        '"Pro tentokrát jsme domluvili."':
            # a996 # r47815
            jump morte_dispose


# s489 # say49443
label morte_s489: # -
    nr '"Ááá, githyanki. Vsadím se, že Dak„kon bude *celý* žhavý pomoct."'

    menu:
        '"Díky za tvůj neocenitelný vstup, Morte. Jdeme."':
            # a997 # r49444
            jump morte_dispose


# s490 # say50162
label morte_s490: # -
    nr '"Och, *mají* jména. Jsem si tím jistý."'

    jump annah_s242  # EXTERN


# s491 # say50164
label morte_s491: # -
    nr '"Jak říkáš *ty*, fiendko."'

    menu:
        '"Klid, Morte - Annah, můžeš se ho zeptat na další otázky?"':
            # a998 # r50165
            jump annah_s240  # EXTERN

        '"Nechejme toho. Raději pojďme."':
            # a999 # r50166
            $ morteLogic.r50166_action()
            jump adabus_s6  # EXTERN


# s492 # say50263
label morte_s492: # -
    nr 'Morte se zasmál. "To bych dřív prošel vnitřnostma tanar„ri než bych rozluštil, co se ty lítající kozohlavci snaží říct. Chceš překladatele? Najdi si rodilýho Sigilana."'

    menu:
        '"Chápu."':
            # a1000 # r50264
            jump adabus_s2  # EXTERN


# s493 # say50266
label morte_s493: # -
    nr 'Morte se zasmál. "To bych dřív prošel vnitřnostma tanar„riho než bych rozluštil, co se ty lítající kozohlavci snaží říct. Chceš překladatele? Máš tady to fiendský mrně." Kývl k Annah. "Ta se narodila v Sigilu."'

    menu:
        '"Možná ano…"':
            # a1001 # r50267
            jump adabus_s2  # EXTERN


# s494 # say50269
label morte_s494: # -
    nr 'Morte se zasmál. "To bych dřív prošel vnitřnostma tanar„ri než bych rozluštil, co se ty lítající kozohlavci snaží říct. Chceš překladatele? Kývl k Dak“konovi. "Přemluv k tlumočení tady toho svatějšího-než-ty-a-dvakrát-tak-tichého."'

    menu:
        '"Možná ano…"':
            # a1002 # r50270
            jump adabus_s2  # EXTERN


# s495 # say50272
label morte_s495: # -
    nr 'Morte se zasmál. "To bych dřív prošel vnitřnostma tanar„ri než bych rozluštil, co se ty lítající kozohlavci snaží říct. Chceš překladatele? Přemluv tady tu sukubu." Kývl k Fall-from-Grace. "Možná si s těmi chlapíky celou dobu vyměňovala klepy."'

    menu:
        '"Možná ano…"':
            # a1003 # r50273
            jump adabus_s2  # EXTERN


# s496 # say50320
label morte_s496: # -
    nr '"Och, ke všem Silám! Přiblblý dabus."'

    menu:
        '"Co se děje?"':
            # a1004 # r50321
            jump morte_s497


# s497 # say50322
label morte_s497: # from 496.0
    nr '"Je to dabus. „Mluví“ v rébusech, v těch otravnejch slovních hlavolamech. Jestli *ty* nevíš, co říká, pak bysme si měli raděj najít nějakýho místního nebo přijít na jinej způsob komunikace s ním… když to budeme chtít. Můj názor? Oni *uměj* mluvit, jenom se snažej radši každýho nasrat luštěním toho, co říkaj."'

    menu:
        '"Co je „dabus?“"':
            # a1005 # r50323
            jump morte_s498


# s498 # say50324
label morte_s498: # from 497.0
    nr '"Říká se, že jsou to domovníci Paní Bolesti. Poletují okolo a bořej, spravují a záplatují Sigil podle jejích vrtochů. Jsou horší než masařky." Morte vzdechl. "Ale zaplácnout je nemůžeš, jinak se Paní… nasere."'

    menu:
        '"„Paní Bolesti?“ Kdo to je?"' if morteLogic.r50325_condition():
            # a1006 # r50325
            $ morteLogic.r50325_action()
            jump morte_s499

        '"Co mi můžeš povědět o Paní Bolesti?"' if morteLogic.r50328_condition():
            # a1007 # r50328
            jump morte_s499

        '"Chápu."' if morteLogic.r50329_condition():
            # a1008 # r50329
            jump adabus_s2  # EXTERN


# s499 # say50326
label morte_s499: # from 498.0 498.1
    nr '"Vede město. Poznáš ji, když ji uvidíš: Má kolem vobličeje takový ty čepele, má velikost obra a poletuje nad zemí zrovna jako tihle chlápci." Morte kývl k dabusovi, který se na vás dva dívá. "Nikdo vo ní moc neví… vona moc nemluví. Všechno co potřebuješ vědět je to, že ji určitě nechceš nasrat. A když ji zmerkneš, pak radím: zdrhej."'

    menu:
        '"Chápu."':
            # a1009 # r50327
            jump adabus_s2  # EXTERN


# s500 # say50410
label morte_s500: # -
    nr '"Cože? Cože? Co v něm bylo, šéfe?"'

    menu:
        '"Nevím co říct, Morte…"':
            # a1010 # r50411
            jump morte_s501

        '"Nic, co by tě zajímalo, Morte."':
            # a1011 # r50412
            jump morte_s501

        'Ukaž mu Kodex.':
            # a1012 # r50413
            jump morte_s503


# s501 # say50414
label morte_s501: # from 500.0 500.1
    nr '"COŽE?! Ty si snad děláš srandu, ne? No ták, ukaž mi to!"'

    menu:
        'Ukaž mu Kodex.':
            # a1013 # r50415
            jump morte_s503

        '"Ne, Morte. Prostě zapomeň na to, že jsi to viděl."':
            # a1014 # r50416
            $ morteLogic.r50416_action()
            jump morte_s502


# s502 # say50417
label morte_s502: # from 501.1
    nr 'Morte mrzutě zamručel… ale nechal ptaní.'

    jump codexi_s2  # EXTERN


# s503 # say50418
label morte_s503: # from 500.2 501.0
    nr 'Morte veplul nad tvé rameno, aby si prohlédl obsah Kodexu. Jeho oči téměř vypadly ze svých důlků, jak prohlížejí stránky: "Ooo. Oooooooo. Och, já… ale… jů."'

    jump codexi_s2  # EXTERN


# s504 # say50697
label morte_s504: # -
    nr '"Huh! Huh! Huh! *Musíš* si dělat srandu, že? To přece *nemůžeš* myslet vážně, šéfe!"'

    menu:
        '"Myslím. Bereš ho, Vrischiko?"':
            # a1015 # r50698
            jump vrisch_s45  # EXTERN

        '"Ne, nemyslím. Měl bych jinou otázku, Vrischiko…"':
            # a1016 # r50699
            jump vrisch_s7  # EXTERN

        '"Máš pravdu, Morte; nebyl to dobrý nápad. Jdeme."':
            # a1017 # r50700
            jump morte_dispose


# s505 # say50701
label morte_s505: # -
    nr '"Nemůžu tomu uvěřit… už jsi klesl pěkně hluboko, šéfe, ale toto už přesahuje všecky meze. Uvidím *tě* v Baatoru, ty zašpérovanej, krátkobrkej, podrazáckej, nevděčnej, poďobanej, hovnožroutskej, umaštěnej, křivozubej ubohej kuse vygumovanýho odpadu! Pamatuj na má slova, ty zasranej hajzle, pokračuj tak dál a brzo budeš mrtvej *nadobro*… a, och, pak budeš mít cos chtěl!"'

    $ morteLogic.s505_action()
    jump vrisch_s46  # EXTERN


# s506 # say52571
label morte_s506: # -
    nr '"Polklo ho to, ale nevím, jestli vyšel z *tamtoho* konce."'

    menu:
        '"Už dost - podívej, Ravel, vzala jsi mi mou smrtelnost, a způsobilo to více škody než užitku. Vezmu si jí zpátky. Myslím, že už jsi ji měla dost dlouho."':
            # a1018 # r52572
            jump ravel_s126  # EXTERN


# s507 # say52573
label morte_s507: # -
    nr '"Myslím, že vím, kdo by měl být zavřený v kleci…"'

    jump ravel_s189  # EXTERN


# s508 # say52574
label morte_s508: # -
    nr '"No, neměl jsem na práci nic LEPŠÍHO než jít do jednoho z bludišť Paní Bolesti a tam se potkat s nejhrozivějším stvořením, který kdy strčilo čumák do Sigilu, tak sem si řek, no proč ne? Proč n-"'

    menu:
        '"Morte, zmlkni. Ravel, já…"':
            # a1019 # r52575
            jump morte_s509


# s509 # say52576
label morte_s509: # from 508.0
    nr '"„Zmlkni?!“" Morte zacvakal zubama. "A to sakra teda ne! Myslím, že už jsme slyšeli dost držkování tý báby, která tady mele něco vo tom, že nemám žádnou kůži! Tak CO že nemám?! Je jasný. VONA kůži má, ale copak jí to nějak pomohlo v jejím skvělým VZHLEDU? Myslí si snad, že se mi *líbí* bejt celou dobu NAHATEJ? A *ještě* jedna věc-"'

    menu:
        '"Morte! Vykašli se na to! Ravel, podívej --"' if morteLogic.r52577_condition():
            # a1020 # r52577
            $ morteLogic.r52577_action()
            jump ravel_s66  # EXTERN

        '"Morte! Vykašli se na to! Ravel, podívej --"' if morteLogic.r52578_condition():
            # a1021 # r52578
            $ morteLogic.r52578_action()
            jump ravel_s67  # EXTERN

        '"Morte! Vykašli se na to! Ravel, podívej --"' if morteLogic.r52579_condition():
            # a1022 # r52579
            jump ravel_s68  # EXTERN


# s510 # say52644
label morte_s510: # -
    nr '"Úchylný. Takže technicky vzato, kde vlastně jsme?"'

    menu:
        '"Odpověď na tohle opravdu nechci znát, Morte."':
            # a1023 # r52771
            jump pregal_s10  # EXTERN


# s511 # say53623
label morte_s511: # -
    nr '"Oh, tak to je *skvělý.*"'

    jump pillar_s5  # EXTERN


# s512 # say53624
label morte_s512: # from 522.0 523.0 524.0
    nr 'Když jsi přistoupil blíže k Pilíři, Morte na tebe zasyčel: "Pssst! Šéfe! Šéfe… poslouchej, ta věc mě nesmí vidět. Musíš mě odsud dostat… nechat mě někde jinde a pak si mě vyzvednout, nebo tak něco…"'

    menu:
        '"Zapomeň na to, Morte. Jdu si s tím promluvit…"' if morteLogic.r53625_condition():
            # a1024 # r53625
            $ morteLogic.r53625_action()
            jump pillar_s9  # EXTERN

        '"Proč, Morte? Co se děje?"' if morteLogic.r53627_condition():
            # a1025 # r53627
            jump morte_s513

        '"Fajn. Tak půjdeme pryč."':
            # a1026 # r53628
            jump morte_dispose


# s513 # say53626
label morte_s513: # from 512.1
    nr '"Eh… Já bych o tom nejraděj nemluvil. Zkrátka pojďme, jo?" Morteho hlas se třese hrůzou. Jeho oči přelétají mezi tebou a obrovským pilířem hlav.'

    menu:
        '"Nemůžeš mít přede mnou tolik tajemství, Morte. Musíš mi říct, o co tady jde."':
            # a1027 # r53629
            $ morteLogic.r53629_action()
            jump morte_s514

        '"Žádné uhýbání, Morte. *Hned* mi řekneš, o co tady jde, nebo si budeš *přát*, abychom si s těma hlavama promluvili."':
            # a1028 # r53630
            $ morteLogic.r53630_action()
            jump morte_s514

        '"Fajn. Tak půjdeme pryč."':
            # a1029 # r53631
            jump morte_dispose


# s514 # say53632
label morte_s514: # from 513.0 513.1
    nr 'Morte si povzdychl, není schopen podívat se ti do očí. Nakonec se podvolil. "Fajn, fajn… Povím ti to. Tenhle pilíř v Avernu, první vrstvě Baatoru, je postavenej z kebulí těch, kteří dovedli jiný na smrt tím, že jim lhali. No… je to právě támdle. Víš, tam jsem skončil. Zbytek si snad domyslíš."'

    menu:
        '"Takže… ty jsi byl jednou z těch hlav?"' if morteLogic.r53662_condition():
            # a1030 # r53662
            jump morte_s516

        '"Takže… ty jsi byl jednou z těch hlav?"' if morteLogic.r53663_condition():
            # a1031 # r53663
            jump morte_s515


# s515 # say53664
label morte_s515: # from 514.1
    nr '"Jo. Trocha jsem upravil skutečnosti… jednou nebo dvakrát. Jenže jeden z mejch návrhů ved k tvý smrti. Jedný z nich. Možná vícero. Fakt nevím, tydle vzpomínky jsou už dávno pryč."'

    menu:
        '"Aha…"':
            # a1032 # r53665
            jump morte_s518


# s516 # say53666
label morte_s516: # from 514.0
    nr '"Jo. Trocha jsem upravil skutečnosti… jednou nebo dvakrát. Jenže jeden z mejch návrhů-"'

    jump annah_s269  # EXTERN


# s517 # say53667
label morte_s517: # -
    nr 'Morte pokračuje dál. "… jeden z mejch *návrhů* vedl k tvý smrti. Jedné z nich. Možná vícero. Fakt nevím, tydle vzpomínky jsou už dávno pryč."'

    jump morte_s518


# s518 # say53668
label morte_s518: # from 515.0 517.0
    nr 'Morte zírá před tvé nohy - nikdy jsi ho neviděl tak zoufalého. "Tydle vzpomínky… hele, šéfe, já si dokonce nepamatuju, že bych *byl* člověk. Nepamatuju si, jakej byl život před Pilířem…"'

    if morteLogic.s518_condition():
        jump dakkon_s183  # EXTERN
    menu:
        '"Pokračuj…"' if morteLogic.r54105_condition():
            # a1033 # r54105
            jump morte_s520


# s519 # say53794
label morte_s519: # -
    nr 'Morte se podíval na Dak„kona, pak na tebe. "Jo. Asi jo. A tak už je to s věcma, když umřeš. Ty… zapomínáš. Řek bych, že sem nebyl zrovna vrchol ctností, když sem byl naživu… ale sakra, kdo je?" Morte si znovu povzdychl. "Já si zkrátka nemůžu pomoct. Není nic horšího, než bejt furt upřímnej. Ale koukni, šéfe, esli mě ta hromada hlav zmerčí, bude mě chtít zpátky - *moc*! To nesmíš dopustit!"'

    menu:
        '"Zapomeň na to, Morte. Jdu si s nimi promluvit…"':
            # a1034 # r53795
            $ morteLogic.r53795_action()
            jump pillar_s9  # EXTERN

        '"Počkej… jak ses dostal z Pilíře?"':
            # a1035 # r53796
            jump morte_s521

        '"Vydrž… proč jsi mi to neřekl všechno už před tím, v Márnici?"':
            # a1036 # r53797
            jump morte_s523

        '"Chviličku. Jak dlouho už mě znáš, Morte?"':
            # a1037 # r53798
            jump morte_s524

        '"Dobrá. Jdeme, Morte."':
            # a1038 # r53799
            jump morte_dispose


# s520 # say53800
label morte_s520: # from 518.1
    nr '"No, každopádně bych řek, že sem nebyl zrovna vrchol ctností, když sem byl naživu… ale sakra, kdo je?" Morte si znovu povzdychl. "Já si zkrátka nemůžu pomoct. Není nic horšího, než bejt furt upřímnej. Ale koukni, šéfe, esli mě ta hromada hlav zmerčí, bude mě chtít zpátky - *moc*! To nesmíš dopustit!"'

    menu:
        '"Zapomeň na to, Morte. Jdu si s nimi promluvit…"':
            # a1039 # r53801
            $ morteLogic.r53801_action()
            jump pillar_s9  # EXTERN

        '"Počkej… jak ses dostal z Pilíře?"':
            # a1040 # r53802
            jump morte_s521

        '"Vydrž… proč jsi mi to neřekl všechno už před tím, v Márnici?"':
            # a1041 # r53803
            jump morte_s523

        '"Chviličku. Jak dlouho už mě znáš, Morte?"':
            # a1042 # r53804
            jump morte_s524

        '"Dobrá. Jdeme, Morte."':
            # a1043 # r53805
            jump morte_dispose


# s521 # say53806
label morte_s521: # from 519.1 520.1 523.1 524.1
    nr '"No… tys mě vytáh ven, náčelníku. Proboxoval sem se na předek Pilíře - byl si tam už dřív, víš - řval sem a ječel, dokud sis mě nevšim. Škemral sem, ať mě vyndáš, přisahal sem, že tě budu následovat, podělím se s tebou o své znalosti až do konce tvých dnů… neuvědomil jsem si, jak dlouho to bude, dokud jsi mě nakonec nevytáh."'

    menu:
        '"A znalosti Pilíře…?"':
            # a1044 # r53807
            $ morteLogic.j53633_s521_r53807_action()
            jump morte_s522


# s522 # say53808
label morte_s522: # from 521.0
    nr '"Oh, to… no, taky sem si neuvědomil, že přindu o většinu vědomostí Pilíře, jakmile budu mimo. U mizernejch mocností, *to* tě teda vytočilo! Ale stejně sis mě nechal u sebe. Nejprv sem se k tobě cítil „vázanej“… jakoby mě tvá magie změnila na ňákýho služebníčka, magického otroka. Ale za pár set let sem si uvědomil, že je toho *víc*… něco mnohem hlubšího. Více než jenom vděčnost, i když ta s tím taky měla co dělat. Cítil sem, že mě k tobě něco táhne, něco *spojuje* s tebou. Možná všecko tvý utrpení, šéfe… tvý muka. Nevím. Možná mi to připomínalo moje vlastní, když sem byl v Pilíři.'

    menu:
        '"Teď si půjdu promluvit s Pilířem…"':
            # a1045 # r53809
            jump morte_s512

        '"Proč jsi mi to neřekl už v Márnici, že mě znáš?"':
            # a1046 # r53810
            jump morte_s523

        '"Jak dlouho už mě znáš, Morte?"':
            # a1047 # r53811
            jump morte_s524

        '"Dobrá. Pojďme pryč, Morte."':
            # a1048 # r53812
            jump morte_dispose


# s523 # say53813
label morte_s523: # from 519.2 520.2 522.1 524.2
    nr 'Morte se náhle začal bránit. "Protože sem *nevěděl*, kdo budeš! Některý z tvých inkarnací byli magoři, zuřiví šílenci! Jednou ses probral přesvědčený, že *já* jsem tvoje lebka a honil jsi mě kolem dokola, zkoušel jsi mě rozmlátit a sežrat… naštěstí tě na ulici srazil vůz. Jiná inkarnace, „dobrá a zákonná“ se mě snažila narvat do Pilíře, protože „to je místo, kam patřím“." Morte si odfrkl. "*Proto*. Krom toho ti nijak neublížilo, když jsi to nevěděl…"'

    menu:
        '"Teď si půjdu promluvit s Pílířem…"':
            # a1049 # r53814
            jump morte_s512

        '"Jak ses dostal z Pilíře ven?"':
            # a1050 # r53815
            jump morte_s521

        '"Jak dlouho už mě znáš, Morte?"':
            # a1051 # r53816
            jump morte_s524

        '"Dobrá. Pojďme pryč, Morte."':
            # a1052 # r53817
            jump morte_dispose


# s524 # say53818
label morte_s524: # from 519.3 520.3 522.2 523.2
    nr '"Nevím. Věky, řek bych. Dělal sem, co sem moh, abych ti pomoh najít cestu, pokaždý ale…" Morte si povzdychl, pozvedl se, aby se ti mohl podívat do očí. "Málokdy ses dostal takhle daleko, šéfe. Vážně. Jenom čtyřikrát nebo pětkrát. Možná že tentokrát… možná tohle „tu“ zjistí, o co tady vlastně jde."'

    menu:
        '"Teď si půjdu promluvit s Pílířem…"':
            # a1053 # r53819
            jump morte_s512

        '"Jak ses dostal z Pilíře ven?"':
            # a1054 # r53820
            jump morte_s521

        '"Proč jsi mi to neřekl už v Márnici, že mě znáš?"':
            # a1055 # r53821
            jump morte_s523

        '"Dobrá. Pojďme pryč, Morte."':
            # a1056 # r53822
            jump morte_dispose


# s525 # say53823
label morte_s525: # -
    nr '"Oh, ne…"'

    jump pillar_s10  # EXTERN


# s526 # say53824
label morte_s526: # -
    nr 'Morte se otřásl hrůzou a zaskřípal zuby. "Nemůžu jít zpátky, šéfe! Nemůžu! Nemůžu! Nemůžu!"'

    menu:
        '"Nevrátil se k tobě. Ale já mám nějaké otázky, Pilíři lebek…"' if morteLogic.r53825_condition():
            # a1057 # r53825
            $ morteLogic.r53825_action()
            jump pillar_s2  # EXTERN

        '"Nevrátil se k tobě. Ale já mám nějaké otázky, Pilíři lebek…"' if morteLogic.r53826_condition():
            # a1058 # r53826
            $ morteLogic.r53826_action()
            jump pillar_s2  # EXTERN

        '"Nevrátil se k tobě, Pilíři lebek. Ale já mám nějaké otázky…"' if morteLogic.r53827_condition():
            # a1059 # r53827
            jump pillar_s12  # EXTERN

        '"Zkrátka pojďme, Morte. No tak pojď."':
            # a1060 # r53828
            jump pillar_s50  # EXTERN


# s527 # say53829
label morte_s527: # -
    nr '"*No* tak, šéfe. Copak jsem ti právě neřekl, co to je? Je to z hlav lhářů, kteří dávali „rady“, které posílaly na smrt. Může ti odpovědět prakticky na každou otázku - ví toho hromadu - ale očekává jako platbu obrovskou cenu! Neptej se ho na takový věci!"'

    jump pillar_s14  # EXTERN


# s528 # say53830
label morte_s528: # -
    nr '"Nedávej mě zpátky, náčelníku. Prosím!"'

    jump pillar_s17  # EXTERN


# s529 # say53831
label morte_s529: # -
    nr '"Šéfe?! Ne! Ne! To *nemůžeš*! No tak!"'

    menu:
        '"Neboj se, Morte - zkrátka tě později zase vytáhnu."' if morteLogic.r53832_condition():
            # a1061 # r53832
            jump morte_s530

        '"Neboj se, Morte - zkrátka tě později zase vytáhnu."' if morteLogic.r53833_condition():
            # a1062 # r53833
            jump morte_s530

        '"Neboj se, Morte - zkrátka tě později zase vytáhnu."' if morteLogic.r53834_condition():
            # a1063 # r53834
            jump morte_s530

        '"Neboj se, Morte - zkrátka tě později zase vytáhnu."' if morteLogic.r53835_condition():
            # a1064 # r53835
            jump morte_s531

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53836_condition():
            # a1065 # r53836
            jump pillar_s19  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53837_condition():
            # a1066 # r53837
            jump pillar_s20  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53838_condition():
            # a1067 # r53838
            jump pillar_s21  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53839_condition():
            # a1068 # r53839
            jump pillar_s22  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53840_condition():
            # a1069 # r53840
            jump pillar_s23  # EXTERN

        '"Zkrátka pojďme, Morte. No tak pojď."':
            # a1070 # r53841
            $ morteLogic.r53841_action()
            jump pillar_s50  # EXTERN


# s530 # say53842
label morte_s530: # from 529.0 529.1 529.2
    nr 'Morte se na tebe pochybovačně podíval. "Seš si *jistej*? Přísaháš? Hej, co to povídám?! Ne! Ne! No tak, *nemůžeš* mě dát zpátky!"'

    menu:
        'Popadni Morteho a vraž ho do Pilíře lebek.':
            # a1071 # r53843
            $ morteLogic.r53843_action()
            jump morte_dispose

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53844_condition():
            # a1072 # r53844
            jump pillar_s19  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53863_condition():
            # a1073 # r53863
            jump pillar_s20  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53864_condition():
            # a1074 # r53864
            jump pillar_s21  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53865_condition():
            # a1075 # r53865
            jump pillar_s22  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53866_condition():
            # a1076 # r53866
            jump pillar_s23  # EXTERN

        '"Zkrátka pojďme, Morte. No tak pojď."':
            # a1077 # r53867
            $ morteLogic.r53867_action()
            jump pillar_s50  # EXTERN


# s531 # say53849
label morte_s531: # from 529.3
    nr 'Morte se na tebe chvíli tiše dívá, ústa dokořán. "COŽE?! Ani omylem! Nejseš ani tak mocnej, jak si bejval… hele, zapomeň na to, to nemůžeš udělat, to nejde! No tak, *nemůžeš* mě dát zpátky!"'

    menu:
        'Popadni Morteho a vraž ho do Pilíře lebek.':
            # a1078 # r53850
            $ morteLogic.r53850_action()
            jump morte_dispose

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53851_condition():
            # a1079 # r53851
            jump pillar_s19  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53852_condition():
            # a1080 # r53852
            jump pillar_s20  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53853_condition():
            # a1081 # r53853
            jump pillar_s21  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53854_condition():
            # a1082 # r53854
            jump pillar_s22  # EXTERN

        '"Dobře, Morte. Pilíři lebek: co jiného přijmeš?"' if morteLogic.r53855_condition():
            # a1083 # r53855
            jump pillar_s23  # EXTERN

        '"Zkrátka pojďme, Morte. No tak pojď."':
            # a1084 # r53856
            $ morteLogic.r53856_action()
            jump pillar_s50  # EXTERN


# s532 # say53857
label morte_s532: # -
    nr '"Uau… počkej! Ne tak rychle! Pilíři… Můžu ti říct, kde je Fjhull Jedovatý Jazyk! No tak, nechceš to vědět? Co kdyby ti dal tohle, místo mně? Eh? Co povíš?"'

    menu:
        '"Nech toho, Morte. Fhjulla neprodáme."':
            # a1085 # r53858
            jump morte_s533

        'Počkej na odpověď Pilíře.':
            # a1086 # r53859
            jump pillar_s19  # EXTERN


# s533 # say53860
label morte_s533: # from 532.0
    nr '"Co? Seš *blázen*?! Prodáš *mě*, ale ne toho *FIENDA*?! Pomáhá ti jenom proto, že musí, protože je prokletej! A co *já*? Kdo tě dostal z Márnice, šéfe? Kdo u tebe zůstane stát - eh, vznášet se - až budeš bojovat proti čemukoli nebo komukoli v Pevnosti Bůhvíčeho? Huh?! Huh?! FHJULL TLUSTOPRD URČITĚ NE, NA TO SI, SAKRA, MŮŽEŠ VSADIT!"'

    menu:
        '"Fajn, fajn. Co na to řekneš, Pilíři?"':
            # a1087 # r53861
            jump pillar_s19  # EXTERN

        '"Promiň, Morte. Jdeš dovnitř."':
            # a1088 # r53862
            jump pillar_s18  # EXTERN


# s534 # say54155
label morte_s534: # from 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0
    nr '"Proč ne, šéfe?" Morte zavrtěl hlavou. "Víš, už jsme byli na mnoha DALŠÍCH děsnejch sférach mnohovesmíru, na který si vzpomenu. Tak proč neudělat další krůček?" Rachotivě si povzdychl. "Jseš připravenej TY? Protože jestli ne…"'

    menu:
        '"Můžeš mi znovu říct vše, co víš o tom, co je za portálem?"':
            # a1089 # r54156
            jump morte_s544

        '"Jsem připravený, Morte. Není už nic, co bych mohl udělat. Jsi se mnou?"':
            # a1090 # r54157
            jump morte_s535

        '"Možná máš pravdu… měl bych se nejdřív připravit."':
            # a1091 # r54158
            jump morte_dispose


# s535 # say54159
label morte_s535: # from 534.1
    nr '"No, já…" Morte se podíval na blýskající závoj a vydal ze sebe další rachotivý vzdych. "Jasně. Pojďme. Kde jinde bychom si mohli pokecat líp, než v Márnici, že?"'

    menu:
        '"Dobrá tedy…"':
            # a1092 # r54160
            $ morteLogic.r54160_action()
            jump morte_dispose


# s536 # say54161
label morte_s536: # -
    nr '"Eh…" Morte zaváhal, kouknul na portál, na tebe, znovu na portál, pak si rachotivě povzdychl. "Hele, tady ti toho *moc* neřeknu, ale… no, je tady něco, co ti musím říct…"'

    menu:
        '"Co je to, Morte?"':
            # a1093 # r54162
            jump morte_s537

        '"Co? No tak, Morte, musíme jít…"':
            # a1094 # r54163
            jump morte_s537


# s537 # say54164
label morte_s537: # from 536.0 536.1
    nr '"No, je to o místě, kam jdeme… nebo vlastně kde… už jsme… *byli.*"'

    menu:
        '"„Kde jsme BYLI?“ O čem to mluvíš?"' if morteLogic.r54165_condition():
            # a1095 # r54165
            jump morte_s540

        '"„Kde jsme BYLI?“ O čem to mluvíš?"' if morteLogic.r54166_condition():
            # a1096 # r54166
            jump dakkon_s174  # EXTERN

        '"„Kde jsme BYLI?“ O čem to mluvíš?"' if morteLogic.r54167_condition():
            # a1097 # r54167
            jump morte_s540


# s538 # say54168
label morte_s538: # -
    nr '"Uh… šéfe?" Morte zaváhal, kouknul na portál, na tebe, znovu na portál, pak si rachotivě povzdychl. "Hele, tady ti toho *moc* neřeknu, ale… no, je tady něco, co ti musím říct…"'

    menu:
        '"Co je to, Morte?"':
            # a1098 # r54169
            jump morte_s539

        '"Co? No tak, Morte, musíme jít…"':
            # a1099 # r54170
            jump morte_s539


# s539 # say54171
label morte_s539: # from 538.0 538.1
    nr '"No, je to o místě, kam jdeme… nebo vlastně kde… už jsme… *byli.*"'

    menu:
        '"„Kde jsme BYLI?“ O čem to mluvíš?"' if morteLogic.r54172_condition():
            # a1100 # r54172
            jump morte_s540

        '"„Kde jsme BYLI?“ O čem to mluvíš?"' if morteLogic.r54173_condition():
            # a1101 # r54173
            jump dakkon_s174  # EXTERN

        '"„Kde jsme BYLI?“ O čem to mluvíš?"' if morteLogic.r54174_condition():
            # a1102 # r54174
            jump morte_s540


# s540 # say54175
label morte_s540: # from 537.0 537.2 539.0 539.2
    nr '"Tohle… uh, není to POPRVÉ, co tímhle procházíme… víš, už jsme v tý „Pevnosti Lítosti“ byli dřív… i když… my… já… tenkrát jsem to nevěděl."'

    menu:
        '"Ty jsi *nevěděl*? Jak je to možné?"':
            # a1103 # r54176
            jump morte_s541

        '"Takže, ÚPLNĚ OD ZAČÁTKU… jsi mi mohl ŘÍCT, kde je ten portál, JAKÝ je klíč k portálu, PROČ jsem nesmrtelný, CO se stalo mé smrtelnosti a skutečnost, že je v té Pevnosti?! Morte! Já tě *ZABIJU*!!!!"':
            # a1104 # r54177
            jump morte_s542

        '"Morte, očekávám vysvětlení… žádné lži nebo okliky. Teď ne. Mluv."':
            # a1105 # r54178
            jump morte_s541

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54179_condition():
            # a1106 # r54179
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54180_condition():
            # a1107 # r54180
            $ morteLogic.r54180_action()
            jump morte_dispose


# s541 # say54181
label morte_s541: # from 540.0 540.2
    nr '"Těžko se to vysvětluje, dokud jsi tam *nebyl*… kromě toho, nevěděl jsi, uh, *druhej* ty -- on nebyl zrovna chlápek, kterej by nám něco ŘEKL. Víš, věděl jsem, že hledal STEJNÝ místo, ale nevěděl jsem proč, kde to bylo, nebo CO to bylo, takže jsem ti nemohl říct NIC, protože jsem NIC nevěděl! Já…  jenom vím, co se stalo, když jsme se tam DOSTALI…'

    menu:
        '"A… co se stalo?"' if morteLogic.r54189_condition():
            # a1108 # r54189
            jump morte_s544

        '"A… co se stalo?"' if morteLogic.r54190_condition():
            # a1109 # r54190
            jump morte_s543

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54191_condition():
            # a1110 # r54191
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54192_condition():
            # a1111 # r54192
            $ morteLogic.r54192_action()
            jump morte_dispose


# s542 # say54193
label morte_s542: # from 540.1
    nr 'Morte zpanikařil. "Ne! Ne! My… já… nic z toho jsem NEVĚDĚL! Ne vždycky jsi nám všechno povídal. Ten… ten *jinej* ty si toho SPOUSTU nechal pro sebe, a my nevěděli PROČ tam jdeme nebo CO je to za místo! Já jenom vím, co se stalo, když jsme se tam dostali…"'

    menu:
        '"A… co se stalo?"' if morteLogic.r54194_condition():
            # a1112 # r54194
            jump morte_s544

        '"A… co se stalo?"' if morteLogic.r54195_condition():
            # a1113 # r54195
            jump morte_s543

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54196_condition():
            # a1114 # r54196
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54197_condition():
            # a1115 # r54197
            $ morteLogic.r54197_action()
            jump morte_dispose


# s543 # say54198
label morte_s543: # from 541.1 542.1
    nr '"No, šli jsme to té - té PEVNOSTI, a než jsme stačili dopadnout na zem, byli jsme ROZDĚLENÍ, bojovali jsme o život… takže *první* věc, kterou ti chci říct, jestli jsi odhodlaný jít dál, že je docela jistý, že každý, kdo projde portálem skončí někde *daleko* od všech ostatních. Ale ty potřebuješ, aby tam s tebou někdo byl…"'

    menu:
        '"Proč to říkáš?"':
            # a1116 # r54199
            jump morte_s545

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54200_condition():
            # a1117 # r54200
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54201_condition():
            # a1118 # r54201
            $ morteLogic.r54201_action()
            jump morte_dispose


# s544 # say54202
label morte_s544: # from 534.0 541.0 542.0
    nr '"No, šli jsme to té - té PEVNOSTI, a než jsme stačili dopadnout na zem, byli jsme ROZDĚLENÍ, bojovali jsme o život… takže *první* věc, kterou ti chci říct, jestli jsi odhodlaný jít dál, že je docela jistý, že každý, kdo projde portálem skončí někde *daleko* od všech ostatních. Ale i když se rozdělíme, můžeme být tvá jediná naděje."'

    menu:
        '"Proč to říkáš?"':
            # a1119 # r54203
            jump morte_s545

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54204_condition():
            # a1120 # r54204
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54205_condition():
            # a1121 # r54205
            $ morteLogic.r54205_action()
            jump morte_dispose


# s545 # say54206
label morte_s545: # from 543.0 544.0
    nr '"Protože ať už tě tam čeká cokoli, v tý Pevnosti, už tě to jednou porazilo… dodneška nevím, jak se ti podařilo přežít, ale jestli znovu padneš, budeš potřebovat někoho, kdo tě z té pevnosti odtáhne…"'

    menu:
        '"Morte, potřebuju, abys mi řekl všechno co o té Pevnosti víš… je to důležité."' if morteLogic.r54207_condition():
            # a1122 # r54207
            jump morte_s547

        '"Morte, potřebuju, abys mi řekl všechno co o té Pevnosti víš… je to důležité."' if morteLogic.r54208_condition():
            # a1123 # r54208
            jump morte_s546

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54209_condition():
            # a1124 # r54209
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54210_condition():
            # a1125 # r54210
            $ morteLogic.r54210_action()
            jump morte_dispose


# s546 # say54211
label morte_s546: # from 545.1
    nr '"Tahle „Pevnost Lítosti“… je velká, na MÍLE, šéfe. Je to Pevnost, ale je to spíš jako samostatná SFÉRA, všechno kamenný, temný, a stíny - všude, úplně všude stíny. Jestli tam půjdeš - měl bys být pořádně připravenej."'

    menu:
        '"Co se stalo, když jsme tam byli poprvé?"':
            # a1126 # r54212
            jump morte_s548

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54213_condition():
            # a1127 # r54213
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54214_condition():
            # a1128 # r54214
            $ morteLogic.r54214_action()
            jump morte_dispose


# s547 # say54215
label morte_s547: # from 545.0
    nr '"Tahle „Pevnost Lítosti“… je velká, na MÍLE, šéfe. Je to Pevnost, ale je to spíš jako samostatná SFÉRA, všechno kamenný, temný, a stíny - všude, úplně všude stíny. Jestli tam půjdeš - měl bys být pořádně připravenej."'

    menu:
        '"Co se stalo, když jsme tam byli poprvé?"':
            # a1129 # r54216
            jump morte_s548

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54217_condition():
            # a1130 # r54217
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54218_condition():
            # a1131 # r54218
            $ morteLogic.r54218_action()
            jump morte_dispose


# s548 # say54219
label morte_s548: # from 546.0 547.0
    nr '"Śéfe, nevím, co se stalo TOBĚ, ale vím, co se stalo MNĚ… Celou dobu jsem pobíhal z chodby do chodby, všude za mnou byly ty stíny, snažily se mě dostat… a pak najednou… najednou jsme byli „venku“, jako by nás někdo vytáhnul zpátky…"'

    menu:
        '"Počkej chvíli. Když říkáš „my“, nezní mi to, jako bys myslel jenom sebe a mně."' if morteLogic.r54220_condition():
            # a1132 # r54220
            jump morte_s565

        '"Počkej chvíli. Když říkáš „my“, nezní mi to, jako bys myslel jenom sebe a mně."' if morteLogic.r54221_condition():
            # a1133 # r54221
            jump morte_s549

        '"Počkej chvíli. Když říkáš „my“, nezní mi to, jako bys myslel jenom sebe a mně."' if morteLogic.r54223_condition():
            # a1134 # r54223
            jump morte_s550

        '"Aha. Je tady ještě něco, co mi můžeš říct?"':
            # a1135 # r54225
            jump morte_s552

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54226_condition():
            # a1136 # r54226
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54227_condition():
            # a1137 # r54227
            $ morteLogic.r54227_action()
            jump morte_dispose


# s549 # say54229
label morte_s549: # from 548.1
    nr 'Morte je chvíli zticha. "Ne… byli tam další. Byl tam… Dak„kon, ta Vnímavá kočka Deionarra, ten slepej lučištník, kterej byl celou dobu ožralej skoro do mrtva a já… a celý to šlo do pekla a zpátky. Je jasný, že jsme to ty, já a Dak“kon zvládli, ale ti druzí dva ne. Nevím, co se jim stalo."'

    menu:
        '"Dak„kon? Ale proč… budu se ho na to muset zeptat. Říkáš, že Deionarra a ten lučištník se z Pevnosti nikdy nevrátili?"' if morteLogic.r54230_condition():
            # a1138 # r54230
            jump morte_s551

        '"Dak„kon? Ale proč… budu se ho na to muset zeptat. Říkáš, že Deionarra a ten lučištník se z Pevnosti nikdy nevrátili?"' if morteLogic.r54231_condition():
            # a1139 # r54231
            jump morte_s551

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54232_condition():
            # a1140 # r54232
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54233_condition():
            # a1141 # r54233
            $ morteLogic.r54233_action()
            jump morte_dispose


# s550 # say54234
label morte_s550: # from 548.2
    nr 'Morte je chvíli zticha. "Ne… byli tam další. Byl tam… ten starej gith Dak„kon, ta Vnímavá kočka Deionarra, ten slepej lučištník, kterej byl celou dobu ožralej skoro do mrtva a já… a celý to šlo do pekla a zpátky. Je jasný, že jsme to ty, já a Dak“kon zvládli, ale ti druzí dva ne. Nevím, co se jim stalo."'

    menu:
        '"Říkáš, že Deionarra a ten lučištník se z Pevnosti nikdy nevrátili?"' if morteLogic.r54235_condition():
            # a1142 # r54235
            jump morte_s551

        '"Říkáš, že ta žena Deionarra a ten lučištník se z Pevnosti nikdy nevrátili?"' if morteLogic.r54236_condition():
            # a1143 # r54236
            jump morte_s551

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54237_condition():
            # a1144 # r54237
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54238_condition():
            # a1145 # r54238
            $ morteLogic.r54238_action()
            jump morte_dispose


# s551 # say54239
label morte_s551: # from 549.0 549.1 550.0 550.1
    nr 'Morte zavrtěl hlavou. "O ničem nevím."'

    menu:
        '"Je ještě něco, co mi můžeš říct o té Pevnosti?"':
            # a1146 # r54240
            jump morte_s552

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54241_condition():
            # a1147 # r54241
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54242_condition():
            # a1148 # r54242
            $ morteLogic.r54242_action()
            jump morte_dispose


# s552 # say54243
label morte_s552: # from 548.3 551.0
    nr '"Nemá ti co říct, náčelníku - akorát že se hned, jak tam dorazíme, rozdělíme. A to místo je VELKÝ a plný plížících se stínů… a někde v té Pevnosti je něco silnější než *kdokoli* z nás. Není co víc říct…"'

    menu:
        '"Máš *jstotu*? Možná je to poslední příležitost k rozmluvě, kterou máme…"':
            # a1149 # r54244
            $ morteLogic.r54244_action()
            jump morte_s553

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54245_condition():
            # a1150 # r54245
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54246_condition():
            # a1151 # r54246
            $ morteLogic.r54246_action()
            jump morte_dispose


# s553 # say54249
label morte_s553: # from 552.0
    nr '"No…" Morte se odmlčel. "Jo, je tady jedna věc, kterou bys měl vědět - TY, kterýho jsem znal dřív, TY, který nás sem ved, ten vůbec nebyl jako ty. Vůbec ne."'

    menu:
        '"Co tím myslíš?"' if morteLogic.r54250_condition():
            # a1152 # r54250
            jump morte_s554

        '"Co tím myslíš?"' if morteLogic.r54252_condition():
            # a1153 # r54252
            jump morte_s555

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54255_condition():
            # a1154 # r54255
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54262_condition():
            # a1155 # r54262
            $ morteLogic.r54262_action()
            jump morte_dispose


# s554 # say54263
label morte_s554: # from 553.0
    nr '"Ten jinej TY, on… jemu na nikom nezáleželo. Na nikom. Klidně jsme mohli v Pevnosti VŠICHNI umřít, a on by ani nemrknul. Takže… já jenom chci, aby ses držel toho rozdílu, protože… no, takhle *tě* mám raději. MNOHEM raději."'

    menu:
        '"Ale to není vše, co mi chceš říct, že?"' if morteLogic.r54264_condition():
            # a1156 # r54264
            jump morte_s556

        '"To je vše?"':
            # a1157 # r54265
            jump morte_s556

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54266_condition():
            # a1158 # r54266
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54267_condition():
            # a1159 # r54267
            $ morteLogic.r54267_action()
            jump morte_dispose


# s555 # say54268
label morte_s555: # from 553.1
    nr '"Všechno, co chci říct je, že navzdory svýmu chování, TY máš silnějšího ducha, než kdy on měl. Ten jinej TY,on… on byl takovej vzdálenej od všeho. Takže… chci, abys na to pamatoval."'

    menu:
        '"Ale to není vše, co mi chceš říct, že?"' if morteLogic.r54269_condition():
            # a1160 # r54269
            jump morte_s556

        '"To je vše?"':
            # a1161 # r54270
            jump morte_s556

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54271_condition():
            # a1162 # r54271
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54272_condition():
            # a1163 # r54272
            $ morteLogic.r54272_action()
            jump morte_dispose


# s556 # say54273
label morte_s556: # from 554.0 554.1 555.0 555.1
    nr '"Ne…" Morte se odmlčel. "Ještě jedna věc - možná jsem toho *druhého* neměl moc rád, ale byl to jeden zatraceně chytrej parchant - nejchytřejší, jakého jsem kdy znal, počítal úplně se vším. Pokud umřel v Pevnosti, znamená to… no…"'

    menu:
        '"Nemyslíš si, že mám šanci na úspěch, viď?"':
            # a1164 # r54274
            jump morte_s557

        '"To nic, Morte. Jsem připraven jít portálem. Jdeš se mnou?"' if morteLogic.r54275_condition():
            # a1165 # r54275
            jump morte_s534

        '"To nic, Morte. Co se stalo, stalo se. Teď jdu skrz portál."' if morteLogic.r54276_condition():
            # a1166 # r54276
            $ morteLogic.r54276_action()
            jump morte_dispose


# s557 # say54277
label morte_s557: # from 556.0
    nr '"Ne…" Morte zavrtěl hlavou. "O tohle nejde, šéfe. Protože ne vždycky je ten nejchytřejší zároveň i nesilnější nebo nejodolnější… někdy dojde na to, kdo jsi, a co *doopravdy* chceš. Tím myslím, kdysi jsi chtěl být nesmrtelný - ale nakonec - je to *opravdu* to, cos chtěl? Zkrátka, buď si jist tím, co tentokrát chceš, to ti říkám."'

    menu:
        '"Rozumím. Podívej, Morte… nikdy jsme o tom vlastně nemluvili, ale víš, že tam se mnou nemusíš jít, že jo? Pochopím to, jestli nebudeš chtít."' if morteLogic.r54278_condition():
            # a1167 # r54278
            $ morteLogic.r54278_action()
            jump morte_s558

        '"Rozumím. Pokud ses vymluvil, pojďme. Jsi připravený?"' if morteLogic.r54279_condition():
            # a1168 # r54279
            jump morte_s534

        '"Rozumím; díky za radu, Morte. Jsem připravený projít portálem."' if morteLogic.r54280_condition():
            # a1169 # r54280
            $ morteLogic.r54280_action()
            jump morte_dispose


# s558 # say54281
label morte_s558: # from 557.0
    nr '"Jo… já vím, šéfe. A nemůžu ti lhát… nechci tam jít… ale půjdu. Jenom si pamatuj, že jakmile projdeme tím portálem, už to nebude jenom o *tobě*. Teď si hraješ i s našima životama a my se zpátky nedostaneme, jestli umřeme."'

    menu:
        '"Tak proč jsi…"' if morteLogic.r54282_condition():
            # a1170 # r54282
            jump grace_s169  # EXTERN

        '"Tak proč jsi…"' if morteLogic.r54283_condition():
            # a1171 # r54283
            jump grace_s170  # EXTERN

        '"Tak proč jsi…"' if morteLogic.r54284_condition():
            # a1172 # r54284
            jump morte_s562

        '"Tak proč jsi…"' if morteLogic.r54285_condition():
            # a1173 # r54285
            jump morte_s563

        '"Tak proč jsi…"' if morteLogic.r54286_condition():
            # a1174 # r54286
            jump morte_s564


# s559 # say54762
label morte_s559: # -
    nr 'Morte zařval. "Ty nevoníš o moc líp. Kdy ses naposled koupal?"'

    jump grace_s176  # EXTERN


# s560 # say54763
label morte_s560: # -
    nr 'Morte zařval. "Ty nevoníš o moc líp. Kdy ses naposled koupal?"'

    jump grace_s177  # EXTERN


# s561 # say54764
label morte_s561: # -
    nr 'Morte zařval. "Ty nevoníš o moc líp. Kdy ses naposled koupal?"'

    jump trias_s8  # EXTERN


# s562 # say54831
label morte_s562: # from 558.2
    nr '"To, co Ravel řekla v bludišti - řekla, že k sobě přitahuješ trpící lidi, jako magnet." Morte zavrtěl hlavou. "Možná proto, že *ty* trpíš celou dobu. Možná, že až to vyřešíš… možná, že *všichni* poznáme kousek míru. Možná."'

    menu:
        '"Možná. Takže… jsi se mnou, Morte?"' if morteLogic.r54832_condition():
            # a1175 # r54832
            jump morte_s534

        '"Rozumím; díky za radu, Morte. Jsem připravený projít portálem."' if morteLogic.r54833_condition():
            # a1176 # r54833
            $ morteLogic.r54833_action()
            jump morte_dispose


# s563 # say54834
label morte_s563: # from 558.3
    nr '"To, co Ravel řekla v bludišti, a to, co nám Fell řekl o tom symbolu - že k sobě přitahuješ trpící lidi, jako magnet." Morte zavrtěl hlavou. "Možná proto, že *ty* trpíš celou dobu. Možná, že až to vyřešíš… možná, že *všichni* poznáme kousek míru. Možná."'

    menu:
        '"Možná. Takže… jsi se mnou, Morte?"' if morteLogic.r54835_condition():
            # a1177 # r54835
            jump morte_s534

        '"Rozumím; díky za radu, Morte. Jsem připravený projít portálem."' if morteLogic.r54836_condition():
            # a1178 # r54836
            $ morteLogic.r54836_action()
            jump morte_dispose


# s564 # say54837
label morte_s564: # from 558.4
    nr '"Znám tě dlouho, šéfe. *Něco* na tobě je - přitajuješ k sobě trpící lidi jako magnet." Morte zavrtěl hlavou. "Možná proto, že *ty* trpíš celou dobu. Možná, že až to vyřešíš… možná že *všichni* poznáme kousek míru. Možná."'

    menu:
        '"Možná. Takže… jsi se mnou, Morte?"' if morteLogic.r54838_condition():
            # a1179 # r54838
            jump morte_s534

        '"Rozumím; díky za radu, Morte. Jsem připravený projít portálem."' if morteLogic.r54839_condition():
            # a1180 # r54839
            $ morteLogic.r54839_action()
            jump morte_dispose


# s565 # say54840
label morte_s565: # from 548.0
    nr 'Morte ztichl.'

    jump dakkon_s175  # EXTERN


# s566 # say54841
label morte_s566: # -
    nr '"Lebka, to jsem byl já," řekl MOrte potichu. "Žena byla nějaká kočka jménem Deionarra; toho lučištníka jsem nikdy neznal…"'

    jump dakkon_s177  # EXTERN


# s567 # say54842
label morte_s567: # -
    nr '"Jo…" Morte se otřásl. "Šéfe, ta Pevnost - *všude* jsou tam stíny…" stíny *všude*…"'

    jump dakkon_s178  # EXTERN


# s568 # say54843
label morte_s568: # -
    nr '"Mluvili ke mně jako Pilíř lebek…" Mortův hlas ztichl. "Oni *věděli*…"'

    menu:
        '"Dobře; hele vy dva: potřebuju, abyste mi řekli o Pevnosti všechno, co víte…"':
            # a1181 # r54844
            jump dakkon_s179  # EXTERN


# s569 # say54845
label morte_s569: # -
    nr '"Nemůžu ti víc říct, šéfe - jenom, že se rozdělíme, jakmile tam dorazíme. A to je VELKÝ místo a všude tam lezou stíny… a někde v té pevnosti je něco mnohem mocnější než *kdokoli* z nás."'

    jump dakkon_s182  # EXTERN


# s570 # say54846
label morte_s570: # -
    nr '"Nemůžu ti víc říct, šéfe - jenom, že se rozdělíme, jakmile tam dorazíme. A to je VELKÝ místo a všude tam lezou stíny… a někde v té pevnosti je něco mnohem mocnější než cokoli, na co jsi kdy narazil."'

    jump dakkon_s182  # EXTERN


# s571 # say55832
label morte_s571: # -
    nr '"Šéfe, máme tady problém - tenhle modron se vzbouřil."'

    menu:
        '"Vzbouřil?"':
            # a1182 # r55833
            jump morte_s572


# s572 # say55834
label morte_s572: # from 571.0
    nr '"Víš, někdy se do modrona dostane kousek chaosu a pak se to stane… no, řekl bych, že *nejlepší* vysvětlení je, že vzbouřenej modron je něco jako… nazpátek modron, převrácenej modron."'

    menu:
        '"Takže tohle je… převrácený modron?"':
            # a1183 # r55836
            jump nordom_s21  # EXTERN


# s573 # say55837
label morte_s573: # -
    nr '"Šéfe, i když je to sranda, páčení stoličky z držky nějakýho baatezu by bylo asi užitečnější, než vykecávání se s tím pitomým polygonem."'

    menu:
        '"*Ty* víš, co jsou mechaničtí duchové, Morte?"':
            # a1184 # r55839
            jump morte_s574


# s574 # say55841
label morte_s574: # from 573.0
    nr '"Šéfe, nemám tušáka, vo čem to ta krychle točí."'

    menu:
        '"Myslel jsem, že ty jsi *expert* na Sféry."':
            # a1185 # r55842
            jump morte_s575

        '"Dobrá tedy. Nordome, mám pro tebe ještě další otázky…"':
            # a1186 # r55843
            jump nordom_s74  # EXTERN

        '"Tak na to zapomeň. Pojďme."':
            # a1187 # r55844
            jump morte_dispose


# s575 # say55845
label morte_s575: # from 574.0
    nr '"Cco- Vím víc, než *ty*, ty vymazanej amneziaku! Kromě toho, tady máš tři kousky znalostí, ať ti v kebuli rachotí aspoň něco: za prvé, nejsou ŽÁDNÍ experti na sféry, za druhé, jsem tomu tvýmu expertovi blíž než kdokoli jiný, koho kdy potkáš, a za třetí, očekávám od tebe nějaký respekt. Proč? Viz druhej kousek."'

    menu:
        '"Dobrá tedy. Nordome, mám pro tebe ještě další otázky…"':
            # a1188 # r55846
            jump nordom_s74  # EXTERN

        '"Tak na to zapomeň. Pojďme."':
            # a1189 # r55847
            jump morte_dispose


# s576 # say55848
label morte_s576: # -
    nr '"Mechanus? Nudný v každým slova smyslu, náčelníku. Představ si plac plnej modronů a velkejch votáčejících se koleček a máš velkou NUDNOU sféru Mechanus. Příliš mnoho zákonů, strašná otrava. Místo, na který nechceš ani myslet, natož ho navštívit."'

    if morteLogic.s576_condition():
        $ morteLogic.s576_action()
        jump grace_s184  # EXTERN
    menu:
        '"Nordome, co jsi to před tím myslel tím „Nulovým domovem?“"' if morteLogic.r55849_condition():
            # a1190 # r55849
            jump nordom_s65  # EXTERN

        '"To nic, Morte. Už jsem slyšel dost. Pojďme."' if morteLogic.r55850_condition():
            # a1191 # r55850
            jump morte_dispose


# s577 # say55855
label morte_s577: # -
    nr '"Promiňte MI, Slečno Kněžko Zbožnosti, ale Mechanus JE nejnudnější místo ve vesmíru… jediná zajímavá věc na něm by byla, kdybys ji navštívila *ty*…" Morte zkroutil očima. "Ale mám pocit že i *to* by za chvíli ztratilo své kouzlo."'

    menu:
        '"Nordome, co jsi to před tím myslel tím „Nulovým domovem?“"':
            # a1192 # r55857
            jump nordom_s65  # EXTERN

        '"To nic, Morte. Už jsem slyšel dost. Pojďme."':
            # a1193 # r55858
            jump morte_dispose


# s578 # say55860
label morte_s578: # -
    nr '"Všichni modroni jsou součásti té „rezervy,“ šéfe, je to něco jako velká energetická banka… když jeden z nich zemře, energie použitá na vytvoření modrona je absorbovaná do banky zpátky a je zní udělanej novej modron. Ale jde o to, že… když modron kapku zblbne, tak se nějak přeruší to spojení, ale modronovi zůstane trochu té energie."'

    if morteLogic.s578_condition():
        jump grace_s186  # EXTERN
    menu:
        '"Takže… Nordome, je ten Mechanus zdrojem energie?"':
            # a1194 # r55862
            jump nordom_s67  # EXTERN

        '"Aha. Nordome, mám pro tebe ještě další otázky…"':
            # a1195 # r55864
            jump nordom_s74  # EXTERN

        '"To je všechno, co jsem chtěl vědět. Pojďme."':
            # a1196 # r55865
            jump morte_dispose


# s579 # say55867
label morte_s579: # -
    nr 'Morte vrhl na Fall-From-Grace vražedný pohled. "*Dovolíš?* Já na tu otázku odpověděl. *JÁ jsem* tady zdroj informací, NE ty, jasný?"'

    jump grace_s187  # EXTERN


# s580 # say55870
label morte_s580: # -
    nr '"Oh, už to chápu. Možná kdybych byl sukuba, poslouchal bys MĚ častějc, že jo? Možná kdybych ti ukázal sem tam kousek holý kůže, konečně bys mě trochu respektoval, he? To je pěkně slabý šéfe, pěkně slabý! Měl bych - "'

    jump grace_s191  # EXTERN


# s581 # say55871
label morte_s581: # -
    nr 'NULOVÝ UZEL'

    jump morte_dispose


# s582 # say55873
label morte_s582: # -
    nr '"Oh, tak?! Já…?! No…! Jo, ty zkrátka… jo, slyšíš to, šéfe, co ta sukuba řekla? Má pravdu. Snáz se mi rozumí, jasný? Takže mě potřebuješ blízko sebe, jasan?"'

    menu:
        '"Správně, takže mám další otázku: oba říkáte, že Nordom je částí toho Zdroje, ale je od něj odříznutý. A když modron zemře, tak ho Zdroj absorbuje. Jak to bude se Nordomem?"' if morteLogic.r55875_condition():
            # a1197 # r55875
            jump morte_s583

        '"Nikdy jsem netvrdil opak, Morte… Takže, Nordome, ten zdroj enegie, o kterém jsi mluvil, ten je z Mechanu?"':
            # a1198 # r55876
            jump nordom_s67  # EXTERN

        '"Dobrá. Nordome, mám pro tebe ještě další otázky…"':
            # a1199 # r55877
            jump nordom_s74  # EXTERN

        '"To je všechno, co jsem chtěl vědět. Pojďme."':
            # a1200 # r55879
            jump morte_dispose


# s583 # say55882
label morte_s583: # from 582.0
    nr 'Morte přikývl.'

    menu:
        '"A když zemře, je vytvořen další Nordom."':
            # a1201 # r55884
            jump morte_s584


# s584 # say55886
label morte_s584: # from 583.0
    nr '"Eh… ne."'

    menu:
        '"Co se stane?"':
            # a1202 # r55887
            jump morte_s585


# s585 # say55890
label morte_s585: # from 584.0
    nr '"No, vezmou si jeho energii, náčelníku, a vyplivnou dalšího modrona, ale už to nebude Nordom, protože on už vlastně není modron. Má v sobě moc ze Sfér. Udělají náhradu, ale nebude jako Nordom."'

    menu:
        '"Takže… tím, že se vzbouřil, se stal… smrtelným?"':
            # a1203 # r55892
            jump morte_s586

        '"Dobrá. Nordome, mám pro tebe ještě další otázky…"':
            # a1204 # r55894
            jump nordom_s74  # EXTERN

        '"To je všechno, co jsem chtěl vědět. Pojďme."':
            # a1205 # r55895
            jump morte_dispose


# s586 # say55897
label morte_s586: # from 585.0
    nr 'Morte se na chvíli odmlčel. "No… jo, dalo by se to tak říct. Kdyby si nevzal do hlavy, že si zahraje na odpadlíka, byl by v pohodě… kdyby umřel, objevil by se úplně stejnej modron. Ale jelikož je „naopak“ - no, ta jeho část, kvůli který je on, bude fuč, jestli umře."'

    menu:
        '"Dobrá. Nordome, mám pro tebe ještě další otázky…"':
            # a1206 # r55898
            jump nordom_s74  # EXTERN

        '"To je všechno, co jsem chtěl vědět. Pojďme."':
            # a1207 # r55900
            jump nordom_s74  # EXTERN


# s587 # say55901
label morte_s587: # -
    nr '"Aighhhh! Pro rány boží a kvůli mému zdravému rozumu, nech toho! Zadřou se mu kolečka, jestli se ho na to budeš vyptávat pořád dokola!"'

    menu:
        '"O *to* mi taky jde, Morte."':
            # a1208 # r55902
            $ morteLogic.r55902_action()
            jump morte_s588

        '"No, chci znát odpověď, tak se jí z něj snažím vypáčit."':
            # a1209 # r55905
            jump morte_s589

        '"To nic. Mám pro Nordoma nějaké jiné otázky…"':
            # a1210 # r55906
            jump nordom_s74  # EXTERN

        '"Zapomeň na to. Pojďme."':
            # a1211 # r55907
            jump morte_dispose


# s588 # say55909
label morte_s588: # from 587.0
    nr '"Oh." Morte se „zašklebil.“ "Mohls něco ŘÍCT. No, jen pokračuj. Jasně…" Morte *zacvakal* zubama v ubohé imitaci Nordoma. "Jestli chceš o modronech něco vědět, měl by ses zeptat MNE."'

    menu:
        '"Dobře, Morte… co mi můžeš říct o modronech?"':
            # a1212 # r55910
            jump morte_s590

        '"To nic. Mám pro Nordoma nějaké jiné otázky…"':
            # a1213 # r55912
            jump nordom_s74  # EXTERN

        '"Zapomeň na to. Pojďme."':
            # a1214 # r55913
            jump morte_dispose


# s589 # say55914
label morte_s589: # from 587.1
    nr '"Hele, šéfe, NORMÁLNÍ modroni skoro vůbec nerozumí ničemu kromě svých základních úkolů, a tímdleten blbej polygon právě vlezl do Sfér. Nesnaž se tu krychli zmást, okej? Alespoň proto, že je docela dobře ozbrojenej. Jestli se chceš na něco zeptat ohledně modronů, ptej se mně, ne jeho."'

    menu:
        '"Dobře, Morte… co mi můžeš říct o modronech?"':
            # a1215 # r55915
            jump morte_s590

        '"To nic. Mám pro Nordoma nějaké jiné otázky…"':
            # a1216 # r55917
            jump nordom_s74  # EXTERN

        '"Zapomeň na to. Pojďme."':
            # a1217 # r55918
            jump morte_dispose


# s590 # say55921
label morte_s590: # from 588.0 589.0
    nr '"Je to takhle, šéfe: Modroni, to sou tydle pitomý geometrický tvary, který pocvakávaj po svý domovský sféře Mechanus -- jsou tak organizovaní, uhlazení, a chtěli by, aby takovej byl i ZBYTEK mnohovesmíru. Proto jsou tak otravní."'

    menu:
        '"Co je špatného na tom, když se někdo snaží mnohovesmír víc zorganizovat?"':
            # a1218 # r55923
            jump morte_s592

        '"Co je Mechanus?"':
            # a1219 # r55925
            $ morteLogic.r55925_action()
            jump morte_s591

        '"To nic. Mám pro Nordoma nějaké jiné otázky…"':
            # a1220 # r55926
            jump nordom_s74  # EXTERN

        '"Zapomeň na to. Pojďme."':
            # a1221 # r55928
            jump morte_dispose


# s591 # say55930
label morte_s591: # from 590.1
    nr '"Je to sféra, odkud jsou všechny tydle pružinkový mechanismy. Zeptej se ho na to, uvidíš, co ti řekne. Tam seděj a všechno uhlazujou a organizujou… zkatalogizuj tohle, dej *tohle* do pořádku, dej *támto* do pořádku, ať je to podle řádu a tak dále."'

    menu:
        'Pravdivě: "To mi zní jako ušlechtilý cíl. Co je špatného na tom, když se někdo snaží mnohovesmír víc zorganizovat?"':
            # a1222 # r55931
            $ morteLogic.r55931_action()
            jump morte_s592

        '"Asi tě to zrovna nenadchlo."':
            # a1223 # r55935
            jump morte_s592

        '"Mám pro Nordoma nějaké jiné otázky…"':
            # a1224 # r55936
            jump nordom_s74  # EXTERN

        '"Zapomeň na to. Pojďme."':
            # a1225 # r55937
            jump morte_dispose


# s592 # say55938
label morte_s592: # from 590.0 591.0 591.1
    nr 'Morte přejel pohledem Nordoma, který drží svou levou kuši u hlavy, jako by jí naslouchal.'

    jump morte_s593


# s593 # say55940
label morte_s593: # from 592.0
    nr '"Protože, šéfe, chaos má svý místo. A dyž bude všecko tak, jak to vidí *modroni*, nebude to zrovna život, kerej by za cosi stál… teda alespoň ne pro mě. Chtěj mít všechno *strukturalizovaný*. Pfuj."'

    menu:
        'Pravdivě: "Souhlasím, chaos má své místo… příliš mnoho řádu a vše bude stagnovat. Hele, mám pro Nordoma nějaké jiné otázky…"':
            # a1226 # r55941
            $ morteLogic.r55941_action()
            jump nordom_s74  # EXTERN

        '"Aha. Hele, mám pro Nordoma nějaké jiné otázky…"':
            # a1227 # r55942
            jump nordom_s74  # EXTERN

        '"Dobrá tedy. Pojďme."':
            # a1228 # r55944
            jump morte_dispose


# s594 # say56029
label morte_s594: # -
    nr '"*Líbí* se mi, jak voní. Je to hezké."'

    jump fhjull_s27  # EXTERN


# s595 # say56030
label morte_s595: # -
    nr '"Vydrž, šéfe… Baator, to jsou ŠPATNÉ zprávy. Ten fiend nám nejspíš lže… a i kdyby byl nějaký „Pilíř Lebek“, určitě najdeme někoho dalšího, kdo ví, jak dosáhnout Pevnosti *bez* toho, že bychom museli jít na jedno z nejnebezpečnějších míst v mnohovesmíru."'

    menu:
        '"Lžeš mi, Jedovatý Jazyku?"':
            # a1229 # r56031
            jump fhjull_s88  # EXTERN

        '"Proč tam nechceš jít, Morte?"':
            # a1230 # r56032
            jump morte_s596


# s596 # say56033
label morte_s596: # from 595.1
    nr '"Je to nebezpečné místo, šéfe. Radši bych tam nešel. Už sem tam byl a vůbec to tam není hezký. Jasný?"'

    menu:
        '"Promluvíme si o tom ještě později. Jedovatý Jazyku, mám nějaké otázky…"':
            # a1231 # r56034
            jump fhjull_s46  # EXTERN


# s597 # say56936
label morte_s597: # -
    nr '"Ten chlápek je *všude*!"'

    menu:
        '"Ano, ale pomohl nám. Pojďme."':
            # a1232 # r56937
            jump morte_dispose


# s598 # say59827
label morte_s598: # -
    nr '(Prázdný)'

    jump morte_dispose


# s599 # say60950
label morte_s599: # -
    nr '"Hej, být mrtvej zas nejni tak špatný. Koukni na to z tý světlý stránky… konečně už nebudeš muset debatovat s těma směšnejma kreténama."'

    menu:
        '"Ticho Morte. Já to zařídím. Můžeš mi říct co se stalo?"':
            # a1233 # r61111
            jump morte_dispose

        '"Zapomeň na to. Odejdu v míru."':
            # a1234 # r61112
            jump morte_dispose


# s600 # say61408
label morte_s600: # -
    nr '"Eh… no tak šéfiku… co na to říkáš? Co dybys pučil starýmu Mortemu zepár drobáků? Už si ani nepamatuju, kdy sem naposled, no však víš…"'

    menu:
        '"Jistě, proč ne. Slečno?"' if morteLogic.r61411_condition():
            # a1235 # r61411
            jump ucho_s9  # EXTERN

        '"Promiň Morte; ale nejsme na tom nejlíp."' if morteLogic.r61412_condition():
            # a1236 # r61412
            jump morte_dispose

        '"Morte, už vážně musíme jít. Sbohem slečno."':
            # a1237 # r61413
            jump morte_dispose


# s601 # say61409
label morte_s601: # -
    nr '"Paráda! Dík šéfiku!" Morte se otočil aby následoval ženu.'

    menu:
        'Počkej dokud se nevrátí.':
            # a1238 # r61414
            $ morteLogic.r61414_action()
            jump ucho_s10  # EXTERN


# s602 # say61410
label morte_s602: # -
    nr 'Zdá se, že Morte jen matně zaregistroval tvou přítomnost a střídavě se pochichtává, nebo vzdychá.'

    menu:
        '"Fajn… nakonec to všechno dobře dopadlo. Sbohem slečno."':
            # a1239 # r61415
            jump morte_dispose


# s603 # say61481
label morte_s603: # -
    nr '"Já? Já jsem hlava Vecny."~ [MRT562]'

    $ morteLogic.s603_action()
    jump morte_dispose


# s604 # say61482
label morte_s604: # -
    nr '"Bohové jsou milosrdní!!"~ [MRT485]'

    $ morteLogic.s604_action()
    jump morte_dispose


# s605 # say61483
label morte_s605: # -
    nr '"Je to dlouhej příběh kterej zahrnuje Hlavu Vecny. Nechci o tom mluvit."~ [MRT559A]'

    jump grace_s3  # EXTERN


# s606 # say61484
label morte_s606: # -
    nr '"Můžeme *prosím* změnit téma?"~ [MRT559B]'

    $ morteLogic.s606_action()
    jump morte_dispose


# s607 # say61485
label morte_s607: # -
    nr '"Já? Já jsem *slaďoušek Morte.*"~ [MRT560]'

    $ morteLogic.s607_action()
    jump morte_dispose


# s608 # say61486
label morte_s608: # -
    nr '"Co mám říct? Jsem *strážníček Morte.*"~ [MRT561]'

    $ morteLogic.s608_action()
    jump morte_dispose


# s609 # say61487
label morte_s609: # -
    nr '"Jen když si budu moct odpočinout na tvých poduškách."~ [MRT486A]'

    jump grace_s7  # EXTERN


# s610 # say61488
label morte_s610: # -
    nr '"Nic! Vůbec nic. Absolutně nic."~ [MRT486B]'

    $ morteLogic.s610_action()
    jump morte_dispose


# s611 # say61489
label morte_s611: # -
    nr '"Arf! Arf! Heh! Heh! Heh!"~ [MRT484]'

    $ morteLogic.s611_action()
    jump morte_dispose


# s612 # say62890
label morte_s612: # -
    nr '"Ona je tanar„ri… sukuba, šefí."'

    jump grace_s213  # EXTERN


# s613 # say63454
label morte_s613: # -
    nr '"No, hele, já se jaksi jen tak někam nepostavím. Víš, to je práce pro nohy."~ [MRT482]'

    jump annah_s1  # EXTERN


# s614 # say63455
label morte_s614: # -
    nr '"Myslel jsem, že vypadáš dobře, ale už vim, že jsem měl šedej zákal!"~ [MRT483]'

    jump annah_s3  # EXTERN


# s615 # say63456
label morte_s615: # -
    nr '"Když si mi poprvý vlezla na oči, myslel sem, že z toho šoku přestanu dejchat."~ [MRT524]'

    $ morteLogic.s615_action()
    jump morte_dispose


# s616 # say63457
label morte_s616: # -
    nr '"Jak se tak říká… NARODIL JSEM SE S MÉNEM!"~ [MRT526]'

    jump annah_s6  # EXTERN


# s617 # say63458
label morte_s617: # -
    nr '"Divný, že to vůbec vytahuješ… no, jenom jsem se jich ptal, kolik by za tebe zaplatili."~ [MRT531]'

    jump annah_s8  # EXTERN


# s618 # say63459
label morte_s618: # -
    nr '"Poslyš, možná by bylo lepší neotvírat vůbec hubu. Vypadáš tak líp."~ [MRT530]'

    jump annah_s10  # EXTERN


# s619 # say63460
label morte_s619: # -
    nr '"Oh, ale ty už sis získala mé srdce."~ [MRT532]'

    jump annah_s12  # EXTERN


# s620 # say63462
label morte_s620: # -
    nr '"Nenapadá mě pitomější možnost."~ [MRT525]'

    $ morteLogic.s620_action()
    jump morte_dispose


# s621 # say63463
label morte_s621: # -
    nr '"Víš, ty si taky tak *trochu* fiend."~ [MRT533A]'

    jump annah_s15  # EXTERN


# s622 # say63464
label morte_s622: # -
    nr '"Hele, mám takovou otázečku. Nejseš náhodou taky tak trochu fiend?"~ [MRT533B]'

    $ morteLogic.s622_action()
    jump morte_dispose


# s623 # say63666
label morte_s623: # -
    nr '"To už jsem postřeh. Proč nejdeš taky pro změnu otravovat šéfíka, co?"~ [MRT563]'

    $ morteLogic.s623_action()
    jump morte_dispose


# s624 # say63667
label morte_s624: # -
    nr '"Kvůli levitaci, ty stupidní pikslo."~ [MRT468A]'

    jump nordom_s2  # EXTERN


# s625 # say63668
label morte_s625: # -
    nr '"Tak proč nejseš i ty výřečnějsí než samotný slova, chrastící pikslo?"~ [MRT469A]'

    $ morteLogic.s625_action()
    jump morte_dispose


# s626 # say63669
label morte_s626: # -
    nr '"Počkej, počkej. Nic takovýho bych já z huby nevypustil!"~ [MRT470B]'

    jump annah_s315  # EXTERN


# s627 # say63670
label morte_s627: # -
    nr '"Ještě nosí Annah oblečení?"~ [MRT565A]'

    jump nordom_s6  # EXTERN


# s628 # say63671
label morte_s628: # -
    nr '"Takže odpovídám: mám cíl."~ [MRT565B]'

    $ morteLogic.s628_action()
    jump morte_dispose


# s629 # say63672
label morte_s629: # -
    nr '"Budeš mít i devatenáctej, jestli nesklapneš poklop."~ [MRT564]'

    $ morteLogic.s629_action()
    jump morte_dispose


# s630 # say63673
label morte_s630: # -
    nr '"Jestli myslíš, že mě otravuješ, kdy se ti zachce, pak jo."~ [MRT569A]'

    jump nordom_s9  # EXTERN


# s631 # say63674
label morte_s631: # -
    nr '"Vítam tě ve sférách, chlapče."~ [MRT569B]'

    $ morteLogic.s631_action()
    jump morte_dispose


# s632 # say63675
label morte_s632: # -
    nr '"Už je Fall-From-Grace nahá?"~ [MRT568A]'

    jump nordom_s11  # EXTERN


# s633 # say63676
label morte_s633: # -
    nr '"Ano, mám cíl."~ [MRT568B]'

    $ morteLogic.s633_action()
    jump morte_dispose


# s634 # say63677
label morte_s634: # -
    nr '"Když se ty, Annah a Fall-From-Grace koupete v Cimmerianským bahně."~ [MRT571A]'

    jump nordom_s13  # EXTERN


# s635 # say63678
label morte_s635: # -
    nr '"Počkej, počkej. Někdo si slovník přečtě, někdo ho ale napíše, víš."~ [MRT572B]'

    $ morteLogic.s635_action()
    jump morte_dispose


# s636 # say63679
label morte_s636: # -
    nr '"Annah, flaška Furyondianskýho ohnivýho jantaru a průvod na Radnici."~ [MRT573]'

    jump nordom_s15  # EXTERN


# s637 # say63680
label morte_s637: # -
    nr '"Drrrrrrrrrrrrrrrrž Hubu!"~ [MRT471D]'

    jump nordom_s17  # EXTERN


# s638 # say63681
label morte_s638: # -
    nr '"Hele, bež otravovat někoho jinýho, příteli Bedno."~ [MRT576A]'

    jump nordom_s19  # EXTERN


# s639 # say63682
label morte_s639: # -
    nr '"Sakra já nevim. Pochop to. Právě je… je… vždyť víš…  no někam si odskočilo."~ [MRT576B]'

    jump nordom_s20  # EXTERN


# s640 # say63683
label morte_s640: # -
    nr '"Já ti ukážu, jestli nezavřeš hubu, err, teda víko."~ [MRT576C]'

    $ morteLogic.s640_action()
    jump morte_dispose


# s641 # say63684
label morte_s641: # -
    nr '"Polib mědvědí prdel."~ [MRT575A]'

    jump grace_s373  # EXTERN


# s642 # say63685
label morte_s642: # -
    nr '"Věř mi. Annah by se ten polibek hodil."~ [MRT575B]'

    $ morteLogic.s642_action()
    jump morte_dispose


# s643 # say63686
label morte_s643: # -
    nr '::Prapodivně zaskřípal::~ [MRT472A]'

    $ morteLogic.s643_action()
    jump morte_dispose


# s644 # say63688
label morte_s644: # -
    nr '"Přiznej se, že sis to vymyslel!"~ [MRT473D]'

    $ morteLogic.s644_action()
    jump morte_dispose


# s645 # say63689
label morte_s645: # -
    nr '"To je čistě biologická záležitost, bedno skopová. No… nic, co bys pochopil."~ [MRT577]'

    $ morteLogic.s645_action()
    jump morte_dispose


# s646 # say63858
label morte_s646: # -
    nr '"Věř mi, nikdy si se s ním nesetkal."~ [MRT475AA]'

    jump vhailor_s1  # EXTERN


# s647 # say64990
label morte_s647: # -
    nr '"Počkej, šéfe… podívej na tohle." Upřením zraku dolů, sis všiml množství špinavých stop, které vedly do výklenku… a neotáčely se. "Musí tu být portál nebo něco."'

    menu:
        '"Portál? Jak ho můžeme otevřít?"':
            # a1240 # r64991
            jump morte_s648

        '"Možná. Pojďme tedy."':
            # a1241 # r64993
            jump morte_dispose


# s648 # say64992
label morte_s648: # from 647.0
    nr '"Nepropadej panice šéfe. Může to být nějaký obyčejný klíč - podívej se na ten provoz, co tudy prochází! Možná by to mohl vědět někdo z těch níže žijících…"'

    menu:
        '"Poptám se kolem. Pojďme tedy."':
            # a1242 # r64994
            jump morte_dispose


# s649 # say65552
label morte_s649: # from 329.0 729.0
    nr '"Ah, *no tak,* šéfe. Neříkej mi, že si znovu zapomněl."'

    menu:
        '"Potřebuji si jen vzpomenout."':
            # a1243 # r65553
            jump morte_s650

        '"Ne, myslím, že jsem už o tom slyšel už všechno - pokračuj, připomeň mi to."' if morteLogic.r65554_condition():
            # a1244 # r65554
            jump morte_s650

        '"V pořádku. Mám nějaké další otázky…"':
            # a1245 # r65555
            jump morte_s329

        '"Zapomeň na to. Pojďme."':
            # a1246 # r65556
            jump morte_dispose


# s650 # say65557
label morte_s650: # from 649.0 649.1
    nr '"Sázím se, že to budu poslouchat ještě dlouho." Morte křičí zplna hrdla. "Podívejme se…"  "Vím, že se cítíš, jako bys vypil několik džberů bahna z řeky Styx, ale teď by ses měl trošičku soustředit. Někde kolem tebe by se měl válet deník, který ti osvětlí, co se vlastně děje. Zbytek ti dopoví Pharod, pokud tedy ještě není zapsán v Knize mrtvých."'

    menu:
        '"Pharod… hmmm. Nepřestávej."' if morteLogic.r65558_condition():
            # a1247 # r65558
            jump morte_s651

        '"Nepřestávej."' if morteLogic.r65559_condition():
            # a1248 # r65559
            jump morte_s651

        '"V pořádku. Chci se tě ještě na něco zeptat…"':
            # a1249 # r65560
            jump morte_s329

        '"Zapomeň na to. Slyšel jsem dost. Pojďme."':
            # a1250 # r65561
            jump morte_dispose


# s651 # say65562
label morte_s651: # from 650.0 650.1
    nr '"Budu, budu, vydrž." Morte na chvíli zmlkl. "V pořádku, toto je poslední…"  "Hlavně ten deník neztrať, protože pak bychom zase byli v bahně Styxu. A ať už děláš cokoliv, neříkej NIKOMU, kdo jsi nebo co se ti stalo, jinak by ses taky mohl pěkně rychle podívat do krematoria. Udělej, co ti říkám: PŘEČTI si deník, pak NAJDI Pharoda."'

    if morteLogic.s651_condition():
        jump morte_s653
    menu:
        '"No tak. Co je tam dál?"' if morteLogic.r65566_condition():
            # a1251 # r65566
            jump morte_s652

        '"A neměl jsem u sebe deník když jsem se probral?"' if morteLogic.r65565_condition():
            # a1252 # r65565
            jump morte_s682

        '"V pořádku, tedy. Mám nějaké další otázky…"':
            # a1253 # r65567
            jump morte_s329

        '"Zapomeň na to. Slyšel jsem dost. Pojďme."':
            # a1254 # r65568
            jump morte_dispose


# s652 # say65563
label morte_s652: # from 651.1
    nr '"O čem to hovoříš, šéfe? Tam není nic víc."'

    menu:
        '"Co například, „Nevěř lebce?“"' if morteLogic.r65569_condition():
            # a1255 # r65569
            $ morteLogic.j65573_s652_r65569_action()
            $ morteLogic.r65569_action()
            jump morte_s654

        '"Co například, „Nevěř lebce?“"' if morteLogic.r65570_condition():
            # a1256 # r65570
            jump morte_s654

        '"Nevadí. Mám další otázky…"':
            # a1257 # r65571
            jump morte_s329

        '"V pořádku, tedy. Pojďme."':
            # a1258 # r65572
            jump morte_dispose


# s653 # say65564
label morte_s653: # from 651.0
    nr '"A samozřejmě, tahle troška nakonec, o nevěřících lebkách."'

    menu:
        '"Co si myslíš, že tahle část znamená? Myslíš, že se to vztahuje na *tebe?*"':
            # a1259 # r65574
            jump morte_s655

        '"V pořádku, tedy. Mám nějaké další otázky…"':
            # a1260 # r65575
            jump morte_s329

        '"V pořádku, tedy. Pojďme."':
            # a1261 # r65576
            jump morte_dispose


# s654 # say65577
label morte_s654: # from 329.4 652.0 652.1 729.4
    nr '"Oh… *ještě* trocha na konec? Považoval jsem to za smyté, tak jsem tuhle řádku nečetl nahlas."'

    menu:
        '"Oh, skutečně? A co myslíš, že to znamená? Myslíš, že se to vztahuje na *tebe?*"':
            # a1262 # r65578
            jump morte_s655

        '"V pořádku, tedy. Mám nějaké další otázky…"':
            # a1263 # r65579
            jump morte_s329

        '"V pořádku, tedy. Pojďme."':
            # a1264 # r65580
            jump morte_dispose


# s655 # say65581
label morte_s655: # from 653.0 654.0
    nr '"Pochybuji. Myslím, že *mi* teď můžeš věřit, šéfe?"'

    menu:
        '"Ty mi *lžeš*, Morte?"':
            # a1265 # r65582
            jump morte_s656

        '"V pořádku, tedy. Mám nějaké další otázky…"':
            # a1266 # r65583
            jump morte_s329

        '"V pořádku, tedy. Pojďme."':
            # a1267 # r65584
            jump morte_dispose


# s656 # say65585
label morte_s656: # from 655.0
    nr '"Ne! No tak, šéfe, co máš za problém? Doteď jsem tě nevedl zlou cestou."'

    menu:
        '"*Doteď.* Nelíbí se mi fakt, že jsi mi ten řádek nepřečetl a rád by jsem věděl, co jsi mi *ještě* nepovažoval za nutné říci, co spolu cestujeme ."':
            # a1268 # r65587
            jump morte_s657

        '"V pořádku, tedy. Mám nějaké další otázky…"':
            # a1269 # r65586
            jump morte_s329

        '"Tedy v pořádku. Pojďme."':
            # a1270 # r65588
            jump morte_dispose


# s657 # say65589
label morte_s657: # from 656.0
    nr '"Nic! Řekl jsem ti všechno… tedy, SKORO všechno, alespoň nic, víš, *nebezpečného.*"'

    menu:
        '"Když je tu JEŠTĚ něco, navrhuji ti říct mi to teď."':
            # a1271 # r65590
            jump morte_s658

        '"V pořádku, tedy. Mám nějaké další otázky…"':
            # a1272 # r65591
            jump morte_s329

        '"Tedy v pořádku. Pojďme."':
            # a1273 # r65592
            jump morte_dispose


# s658 # say65593
label morte_s658: # from 657.0
    nr '"Šéfe, vážně, je to všechno. Nechtěl bych tě natáhnout."'

    menu:
        '"Tedy v pořádku Morte. Mám ještě nějaké otázky…"':
            # a1274 # r65594
            jump morte_s329

        '"Doufám, že ne. Pojďme."':
            # a1275 # r65595
            jump morte_dispose


# s659 # say65596
label morte_s659: # from 329.1 729.1
    nr '"Sigil je město ve tvaru prstenu, který se krčí na vrchole nekonečně vysoké věže, která, jak někteří tvrdí, je středem Sfér… samozřejmě, *jak* může být na vrcholu nekonečně vysoké věže a zároveň být středem Sfér je otázkou."'

    menu:
        '"Ještě něco?"':
            # a1276 # r65597
            jump morte_s660

        '"V pořádku, tedy. Mám nějaké další otázky…"':
            # a1277 # r65598
            jump morte_s329

        '"To je všechno co jsem chtěl vědět. Pojďme."':
            # a1278 # r65599
            jump morte_dispose


# s660 # say65600
label morte_s660: # from 659.0
    nr '"Sigil je taky nazýváno „Městem Dveří,“ hlavně proto, že tam je MNOHO neviditelných dveří, které z něho vedou dovnitř a ven - jako například klenba , dveřní rám, obruč ze sudu, police na knihy, nebo otevřené okno může být portál, při splnění správných podmínek. Zaleží na tom, jestli máš klíč na otevření."'

    menu:
        '"Klíče?"':
            # a1279 # r65601
            jump morte_s661

        '"To nic. Mám ještě nějaké otázky…"':
            # a1280 # r65602
            jump morte_s329

        '"To je všechno, co jsem chtěl vědět. Pojďme."':
            # a1281 # r65603
            jump morte_dispose


# s661 # say65604
label morte_s661: # from 660.0
    nr '"Hele, asi nejlíp se to dá vysvětlit takhle - většina portálů „spí,“ jasný? Zkrátka chrápou a nedělaj ani prrd. Můžeš projít skrze ně, kolem nich nebo přes ně, kopat do nich, ulevit si na ně močák,  a nic se nestane. Každý portál potřebuje něco, co ho „probudí.“ Může to být písnička, kterou si musíš zapískat, pecen týden starého chleba z Bytopie, vzpomínka na to, jak jsi dal svý první číslo s nějakou blonďatou kočkou, cokoli. A pak - BUM - portálem teče šťáva, je vzhůru, celej nažhavenej jako ženská, která mně vidí, a ty si zkrátka skočíš skrz na druhou stranu, ať už je tam cokoli."'

    menu:
        '"Jako třeba kam?"':
            # a1282 # r65605
            jump morte_s662

        '"To nic. Mám ještě nějaké otázky…"':
            # a1283 # r65606
            jump morte_s329

        '"To je všechno, co jsem chtěl vědět. Pojďme."':
            # a1284 # r65607
            jump morte_dispose


# s662 # say65608
label morte_s662: # from 661.0
    nr '"Kdekoli, šéfe. Doslova. Jakýkoli místo, co ti přijde na mozek, tak i tam vede portál. Proto je Sigil ve Sférách tak populární, náčelníku. Se můžeš dostat kamkoli, akorát musíš mít šajnu jak."'

    menu:
        '"Aha. Mám ještě nějaké otázky…"':
            # a1285 # r65609
            jump morte_s329

        '"To je všechno, co jsem chtěl vědět. Pojďme."':
            # a1286 # r65610
            jump morte_dispose


# s663 # say65611
label morte_s663: # from 329.2 729.2
    nr '"Hej! Chřestění držkou, to je moje nejlepší schopnost!" Zacvakal zuby a pak se zašklebil. "Eh? Eh?"'

    menu:
        '"No, to opravdu rád *slyším*."':
            # a1287 # r65612
            jump morte_s664

        '"Jo, vím o tvé Litanii Kleteb, ale spíš by mě zajímalo, co ses přiučil, když jsi byl u Lothara."' if morteLogic.r65613_condition():
            # a1288 # r65613
            jump morte_s667

        '"Mám ještě nějaké otázky…"':
            # a1289 # r65614
            jump morte_s329

        '"To nic. Pojďme."':
            # a1290 # r65615
            jump morte_dispose


# s664 # say65616
label morte_s664: # from 663.0
    nr '"Teďkonc vážně, šéfe. Mám talent na to správný klapání hubou. Zachřestím hubou, vyjde ze mě pár zajímavostí a divil byses, co to dokáže udělat s nějakým citlivým ouškem, co mě slyšelo. Dokážu nadávat, oblbovat, vyhrožovat, posmívat se, dělat z někoho úplnýho magora. Umím bejt sprostej jako kanál plnej nemrtvejch dlaždičů. Dokonce umím i pár nadávek a kleteb, co prej používal nejsprostější kněz Sféry Eagleville. Když se do někoho pustím, vynadám mu tak, že by se červenala i židle v uchyláckým pornošopu."'

    menu:
        '"Uh… a jak může být *tohle* užitečné?"':
            # a1291 # r65617
            jump morte_s665

        '"Mám ještě nějaké otázky…"':
            # a1292 # r65618
            jump morte_s329

        '"To nic. Pojďme."':
            # a1293 # r65619
            jump morte_dispose


# s665 # say65620
label morte_s665: # from 664.0
    nr '"To je jeden z mých mnoha talentů. Říkám tomu Litanie Kleteb. Víš, někdy opravdu dokážeš někoho vytočit jako parní turbínu jediným vhodným komentářem nebo nadávkou. Řeknu pár věcí a z uší jde pára. No je fakt, že potom se většinou příšerně naběhám kolem a bolej mě uši z těch skřeků, co na mě ten chudák řve, ale… chápeš, ne?"'

    menu:
        '"Jak to funguje?"':
            # a1294 # r65621
            $ morteLogic.r65621_action()
            jump morte_s666

        '"Ještě něco?"' if morteLogic.r65622_condition():
            # a1295 # r65622
            jump morte_s667

        '"Mám ještě nějaké otázky…"':
            # a1296 # r65623
            jump morte_s329

        '"Hmmm. To by mohlo být užitečné. Pojďme."':
            # a1297 # r65624
            jump morte_dispose


# s666 # say65626
label morte_s666: # from 329.3 665.0 729.3
    nr '"No, můžu na někoho naplivat tolik nadávek, že bude vidět rudě a pak mě bude honit kolem dokola, aby mi ty kecy narval zpátky do huby."  POZNÁMKA: Morte má speciální schopnost jménem Litanie Kleteb. Je to nemagický výsměch. Pokud cíl neodolá, má postih na brnění, útoky a nebude dělat nic jiného, než že se bude snažit zasáhnout Morta zbraní. Čím více nadávek Morte uslyší, tím lepší bude jeho schopnost. Litanie Kleteb je VELMI efektivní proti mágům.'

    menu:
        '"Můžeš dělat ještě něco dalšího?"' if morteLogic.r65627_condition():
            # a1298 # r65627
            jump morte_s667

        '"Mám ještě nějaké otázky…"':
            # a1299 # r65628
            jump morte_s329

        '"Hmmm. To by mohlo být užitečné. Pojďme."':
            # a1300 # r65629
            jump morte_dispose


# s667 # say65630
label morte_s667: # from 663.1 665.1 666.0
    nr '"No, když jsem tak seděl na pr… teda když jsem odpočíval na Lotharově poličce a čekal, až mě najdeš, zatímco ty sis někde užíval - mimochodem dík, ten odpočinek a nudu jsem fakt potřeboval - tak jsem si našel pár kámošů. Říkali, že kdybych prej potřeboval píchnout, tak že s nima můžu počítat, že stačí zavolat."'

    menu:
        '"Kamarády? Co tím myslíš?"':
            # a1301 # r65631
            $ morteLogic.j65637_s667_r65631_action()
            jump morte_s668

        '"Mám ještě nějaké otázky…"':
            # a1302 # r65632
            jump morte_s329

        '"Tak to rád slyším. Pojďme."':
            # a1303 # r65633
            jump morte_dispose


# s668 # say65634
label morte_s668: # from 667.0
    nr '"No já jenom zapískám a oni se tak nějak ukážou. Je to dobrá banda třískačů. A hryžou jako hladoví psi."  POZNÁMKA: Morte má (teď) speciální schopnost "Dotěrná lebka." Když ji použije, přivolá bandu lebek, která se přihrne a několikrát si zakousne do nepřítele. Síla  a způsobované poškození záleží na Mortově úrovni. Schopnost se dá použít jenom několikrát denně.'

    menu:
        '"Aha. Mám ještě nějaké otázky…"':
            # a1304 # r65635
            jump morte_s329

        '"Tak to rád slyším. Pojďme."':
            # a1305 # r65636
            jump morte_dispose


# s669 # say65638
label morte_s669: # from 329.5 729.5
    nr '"No, tak *já* bych to viděl takhle…"'

    menu:
        '"Pokračuj…"' if morteLogic.r65639_condition():
            # a1306 # r65639
            jump morte_s671

        '"Pokračuj…"' if morteLogic.r65640_condition():
            # a1307 # r65640
            jump morte_s672

        '"Pokračuj…"' if morteLogic.r65641_condition():
            # a1308 # r65641
            jump morte_s673

        '"Pokračuj…"' if morteLogic.r65642_condition():
            # a1309 # r65642
            jump morte_s670

        '"Pokračuj…"' if morteLogic.r65643_condition():
            # a1310 # r65643
            jump morte_s674

        '"Pokračuj…"' if morteLogic.r65644_condition():
            # a1311 # r65644
            jump morte_s675

        '"Pokračuj…"' if morteLogic.r65645_condition():
            # a1312 # r65645
            jump morte_s677

        '"Pokračuj…"' if morteLogic.r65646_condition():
            # a1313 # r65646
            jump morte_s680

        '"Pokračuj…"' if morteLogic.r65647_condition():
            # a1314 # r65647
            jump morte_s681

        '"To nic. Mám ještě nějaké otázky…"':
            # a1315 # r65648
            jump morte_s329

        '"No, když nad tím tak přemýšlím, radši na to zapomeň. Pojďme."':
            # a1316 # r65649
            jump morte_dispose


# s670 # say65650
label morte_s670: # from 669.3
    nr '"Podle toho, jak to vidím já, je to tvoje šou, náčelníku. Nemůžu ti říct skoro nic, co by ti nějak píchlo. Můžu ti vynadat, jestli chceš, ale asi by to nepomohlo. Zkrátka: ničevó! Budeš si muset poradit sám."'

    menu:
        '"Tak to je fakt velká *změna*. Mám ještě nějaké otázky…"':
            # a1317 # r65651
            jump morte_s329

        '"Dobrá. Tak tedy pojďme dál."':
            # a1318 # r65652
            jump morte_dispose


# s671 # say65653
label morte_s671: # from 669.0
    nr '"Si myslím, že bys měl vyčuchat tohohle Pharoda, ať už má prdel schovanou kdekoli. Neměl bys na zádech ten manuál, hehe,  to je dobrý, manuál, kdyby tenhle Pharod o tobě nevěděl něco zajímavýho. Některej z místních MUSÍ vědět, kde bysme ho našli."'

    menu:
        '"Pravda. Mám ještě nějaké otázky…"':
            # a1319 # r65654
            jump morte_s329

        '"Dobrá. Tak ho tedy budeme dál hledat."':
            # a1320 # r65655
            jump morte_dispose


# s672 # say65656
label morte_s672: # from 669.1
    nr '"Bysem řek, že bysme měli najít tudletu bronzovou kouli co nejdřív a pak se s ní vrátit k tomu starýmu kulhavci."'

    menu:
        '"Pravda. Mám ještě nějaké otázky…"':
            # a1321 # r65657
            jump morte_s329

        '"Dobrá. Tak tedy pojďme dál."':
            # a1322 # r65658
            jump morte_dispose


# s673 # say65659
label morte_s673: # from 669.2
    nr '"Bysem řek, že bysme měli zjistit, kde skončila tvá chcíplotina. Možná pak nějak přídem na to, kdo a jak tě napsal do knihy mrtvejch."'

    menu:
        '"Máš pravdu. Mám ještě nějaké otázky…"':
            # a1323 # r65660
            jump morte_s329

        '"Dobrá. Tak tedy pojďme dál."':
            # a1324 # r65661
            jump morte_dispose


# s674 # say65662
label morte_s674: # from 669.4
    nr '"Asi bysme měli najít někoho, kdo vo tobě ví něco víc - a taky jak se z tebe stalo… todle." Morte zakroutil očima. "Někde tady ve Čtvrtích musí bejt nějakej bouchač, co vo tobě bude něco vědět."'

    menu:
        '"Máš pravdu. Mám ještě nějaké otázky…"':
            # a1325 # r65663
            jump morte_s329

        '"Dobrá. Tak tedy pojďme dál."':
            # a1326 # r65664
            jump morte_dispose


# s675 # say65665
label morte_s675: # from 669.5
    nr '"Asi bysme měli zjistit víc vo tý noční čarodějnici Ravel - a já ti povídám, šéfe, že já se na to *netěším*. Nějaký ti zaprášený mudrcové z Občanský Haly by mohli mít nějakýho tušáka, nebo možná bude něco zajímavýho v některým senzorickým šutráku."'

    menu:
        '"Občanská Hala? Senzorické… kameny?"' if morteLogic.r65666_condition():
            # a1327 # r65666
            $ morteLogic.j65669_s675_r65666_action()
            jump morte_s676

        '"Máš pravdu. Mám ještě nějaké otázky…"':
            # a1328 # r65667
            jump morte_s329

        '"Dobrá. Tak tedy pojďme dál."':
            # a1329 # r65668
            jump morte_dispose


# s676 # say65670
label morte_s676: # from 675.0
    nr '"Soráč, náčelníku. Sem zapomněl, že víš sotva tolik, co totální zelenáč přímo ze Základní materiální. Hele, Hala, to je hlavní bejvák Vnímavejch, je to v Úřednický čtvrti. Mají tam knihovny plný senzorickejch šutráků, ve kterých sou uložený zážitky a zkušenosti, a taky tam smrdí hromada mudrců, vědátorů, učitelů a profesorů, kteří by nám mohli prásknout nějaký zajímavosti na tu Ravel."'

    menu:
        '"Máš pravdu. Mám ještě nějaké otázky…"':
            # a1330 # r65671
            jump morte_s329

        '"Dobrá. Tak tedy pojďme dál."':
            # a1331 # r65672
            jump morte_dispose


# s677 # say65673
label morte_s677: # from 669.6
    nr '"No, Ravel skončila v bludišti. Takže asi bude NĚJAKEJ portál a NĚJAKEJ klíč, který by nás tam mohli dostat, teda pokud eště furt chceš."'

    menu:
        '"Nevíš, co by mohl být klíč k jejímu bludišti?"' if morteLogic.r65674_condition():
            # a1332 # r65674
            $ morteLogic.j65678_s677_r65674_action()
            jump morte_s678

        '"Nevíš, kde bych našel portál, který vede do toho bludiště?"':
            # a1333 # r65675
            jump morte_s679

        '"Mám ještě nějaké otázky…"':
            # a1334 # r65676
            jump morte_s329

        '"Dobrá. Tak tedy pojďme dál."':
            # a1335 # r65677
            jump morte_dispose


# s678 # say65679
label morte_s678: # from 677.0
    nr '"Nemám tušáka - hele, přece si to vem: „kousek Ravel?“ To může být cokoli od její uschlý bradavice přes nějaký umělecký dílo, co spáchala, až po trochu uschlejch slin, co jí steklo z pysku. Je to moc povšechný, chápeš? Ale vsadil bych se, že NĚKDO v Občanský Hale by o tom mohl mít tušáka, jak sehnat kousek tý šílený čarodějnice. Pokud to nevyjde, můžem prolízt senzorický šutry, co tam maj. Možná že některej z těch šutráků bude něco vědět."'

    menu:
        '"Nevíš, kde bych našel portál, který vede do toho bludiště?"':
            # a1336 # r65680
            jump morte_s679

        '"Máš pravdu. Mám ještě nějaké otázky…"':
            # a1337 # r65681
            jump morte_s329

        '"Dobrá. Tak budeme hledat dál."':
            # a1338 # r65682
            jump morte_dispose


# s679 # say65683
label morte_s679: # from 677.1 678.0
    nr '"Nemám tušáka, náčelníku. V Sigilu sou tisíce portálů, milióny. Bysem řek, že můžem prubnout Občanskou Halu. Tam asi nebude, ale některej ze senzorickejch šutráků by moh něco vědět. A pokud to nevyjde, tak já povídám todle: Vykašlem se na todleto pobíhání. Dyž nemůžeš něco vyřešit, najdi si někoho schopnýho a otravuj ho tak dlouho, až to vyřeší za tebe. Zkrátka najdeme někoho, kdo nám ten blbej portál UDĚLÁ."'

    menu:
        '"Dobrá tedy. Mám ještě nějaké otázky…"':
            # a1339 # r65684
            jump morte_s329

        '"Dobrá. Tak tedy pojďme dál."':
            # a1340 # r65685
            jump morte_dispose


# s680 # say65686
label morte_s680: # from 669.7
    nr '"Bysem řek, že bysme měli najít, co potřebujem a pak prásknout do bot, až se nám bude vod zadků kouřit, náčelníku. Z tohodle místa mi běhá mráz po zádech a to nemám záda. Jasný?"'

    menu:
        '"To je fakt. Mám ještě nějaké otázky…"':
            # a1341 # r65687
            jump morte_s329

        '"Dobrá tedy. Pojďme dál."':
            # a1342 # r65688
            jump morte_dispose


# s681 # say65689
label morte_s681: # from 669.8
    nr '"Dostals mě, náčelníku. Teď je to tvoje šou - já si tu akorát poletuju někde kolem tebe."'

    menu:
        '"To je fakt. Mám ještě nějaké otázky…"':
            # a1343 # r65690
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1344 # r65691
            jump morte_dispose


# s682 # say65692
label morte_s682: # from 651.2
    nr '"Ne… málem tě stáhli i z kůže. Jak už sem povídal, vypadá to, jako bys měl ten deník naškrábanej na vlastní kůži."'

    menu:
        '"A ty si seš jistý, že neznáš nikoho jménem Pharod?"' if morteLogic.r65693_condition():
            # a1345 # r65693
            jump morte_s683

        '"To je fakt. Mám ještě nějaké otázky…"':
            # a1346 # r65694
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1347 # r65695
            jump morte_dispose


# s683 # say65696
label morte_s683: # from 682.0
    nr '"Ne-e. Ale někdo by to moh vědět. Zeptáme se domorodců."'

    menu:
        '"Než půjdeme, mám ještě nějaké otázky…"':
            # a1348 # r65697
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1349 # r65698
            jump morte_dispose


# s684 # say65699
label morte_s684: # from 329.6 729.6
    nr '"Jo… mimir je lítající encyklopedie. Dáš do něj informaci, vytáhneš z něj informaci."'

    menu:
        '"Ale nejsou mimirové udělaní z nějakého stříbřitého kovu?"' if morteLogic.r65700_condition():
            # a1350 # r65700
            jump morte_s685

        '"Aha. Mám ještě nějaké otázky…"':
            # a1351 # r65701
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1352 # r65702
            jump morte_dispose


# s685 # say65703
label morte_s685: # from 684.0
    nr '"A co? Možná někerý sou, ale *já ne*. A ve Sférách sou i divnější věci, šéfe. Třeba chlast, co některý šílení magoři chlastaj."'

    menu:
        '"Nemyslím si, že jsi mimir, Morte. Co jsi?"':
            # a1353 # r65704
            jump morte_s686

        '"Aha. Mám ještě nějaké otázky…"':
            # a1354 # r65705
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1355 # r65706
            jump morte_dispose


# s686 # say65707
label morte_s686: # from 685.0
    nr '"Co je to za výslech? Co *ty* vůbec víš o mimirech?"'

    menu:
        '"Vím dost, abych poznal, že mi lžeš."' if morteLogic.r65708_condition():
            # a1356 # r65708
            jump morte_s687

        '"Vím dost, abych poznal, že mi lžeš. Nejdřív ten řádek na mých zádech, co jsi mi nepřečetl, tvrdil, že ti nemám věřit, teď tohle. Co si mám podle tebe myslet?"' if morteLogic.r65709_condition():
            # a1357 # r65709
            jump morte_s687

        '"No řekl bych že nic. Mám ještě nějaké otázky…"':
            # a1358 # r65710
            $ morteLogic.j65712_s686_r65710_action()
            jump morte_s329

        '"No tak to nic. Pojďme."':
            # a1359 # r65711
            $ morteLogic.j65712_s686_r65711_action()
            jump morte_dispose


# s687 # say65713
label morte_s687: # from 686.0 686.1
    nr '"Oukej, *nejsem* mimir, ale vím spoustu věcí, takže bych klidně *mohl* bejt mimir."'

    menu:
        '"Tak co tedy jsi?"':
            # a1360 # r65714
            jump morte_s688

        '"To nic. Mám ještě nějaké otázky…"':
            # a1361 # r65715
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1362 # r65716
            jump morte_dispose


# s688 # say65717
label morte_s688: # from 687.0
    nr '"Jsem lítající lebka, co toho spoustu ví."'

    menu:
        '"A co ten Baatorianský zápach, který se kolem tebe šíří?"' if morteLogic.r65718_condition():
            # a1363 # r65718
            jump morte_s690

        '"A co ten Baatorianský zápach, který se kolem tebe šíří?"' if morteLogic.r65719_condition():
            # a1364 # r65719
            jump morte_s689

        '"To nic. Mám ještě nějaké otázky…"':
            # a1365 # r65720
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1366 # r65721
            jump morte_dispose


# s689 # say65722
label morte_s689: # from 688.1
    nr '"Jak TY víš, jak smrdí Baator?!"'

    menu:
        '"Protože jsem tam *byl*, Morte. Procházel jsem Avernem."':
            # a1367 # r65723
            jump morte_s691

        '"To nic. Mám ještě nějaké otázky…"':
            # a1368 # r65724
            jump morte_s329

        '"Zapomeň na to. Pojďme."':
            # a1369 # r65725
            jump morte_dispose


# s690 # say65726
label morte_s690: # from 688.0
    nr '"Jak TY víš, jak smrdí Baator?! Pokud - hej, ty ses o mě bavil s tou tanar„ri, že jo?! Co ví?!!"'

    menu:
        '"No, rozhodně se v něčem trefila. Je to zápach Baatoru, že?"':
            # a1370 # r65727
            jump morte_s691

        '"To nic. Mám ještě nějaké otázky…"':
            # a1371 # r65728
            jump morte_s329

        '"Zapomeň na to. Pojďme."':
            # a1372 # r65729
            jump morte_dispose


# s691 # say65730
label morte_s691: # from 689.0 690.0
    nr '"No, jo, ale - no jo, no. Tak trochu smrdím. *Promiň*."'

    menu:
        '"*Proč* smrdíš po Baatoru?"':
            # a1373 # r65731
            $ morteLogic.r65731_action()
            jump morte_s692


# s692 # say65732
label morte_s692: # from 691.0
    nr '"Byl jsem nějakou dobu v pekle. Dost dlouhou dobu. A toho smradu se už pak jen tak nezbavíš."'

    menu:
        '"Ty jsi byl v pekle? Co jsi tam DĚLAL?"':
            # a1374 # r65733
            $ morteLogic.r65733_action()
            jump morte_s693


# s693 # say65734
label morte_s693: # from 329.7 692.0 729.7
    nr '"No víš, v Avernu, první vrstvě  Baatoru je takovej *pilíř*. Říká se mu Pilíř Lebek, ale je to spíš velká hromada hlav."'

    jump morte_s694


# s694 # say65735
label morte_s694: # from 693.0
    nr '"Podle toho, co jsem slyšel, tak je *prý* většinou z hlav mudrců, učenců a takovejch týpků, kteří zaživa použili svý znalosti tohodle a támhletoho, aby trošinku pokroutili pravdu… tak moc, že díky tomu pak někomu ublížili nebo dokonce někoho zabili. No, když jsem *umřel*, skončil jsem tam. Sranda, co?"'

    menu:
        '"Ani ne."':
            # a1375 # r65846
            jump morte_s695


# s695 # say65736
label morte_s695: # from 694.0
    nr '"Eh…" Morte je chvíli zticha. "Jo, máš pravdu. Vůbec to není sranda. Hele, myslím, že sem toho zaživa spoustu věděl. A možná když jsem něco věděl, neřekl sem o tom pravdu. Možná sem pravdu trošinku překroutil, jednou nebo dvakrát a možná díky tomu někdo skončil v knize mrtvejch o chvilinku dřív, než by měl."'

    menu:
        '"Pamatuješ si kdo?"':
            # a1376 # r65737
            jump morte_s697

        '"Byl jsem to já, že?"' if morteLogic.r65738_condition():
            # a1377 # r65738
            jump morte_s696

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65739_condition():
            # a1378 # r65739
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65740_condition():
            # a1379 # r65740
            jump morte_dispose


# s696 # say65741
label morte_s696: # from 695.1
    nr 'Morte se na tebe chvíli mlčky dívá. "Jo. Nevím, *jak* to vím, šéfe, ale… myslím si to. Myslím si, že to kvůli tobě mě tam poslali. Ale nemůžu si vzpomenout, co se stalo. Dokonce si ani nepamatuju, jaký to bylo, když jsem byl člověk, vlastně si nepamatuju nic před tím. Než jsem se probral v Pilíři."'

    menu:
        '"Proč jsi zapomněl?"':
            # a1380 # r65742
            jump morte_s698

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65743_condition():
            # a1381 # r65743
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65744_condition():
            # a1382 # r65744
            jump morte_dispose


# s697 # say65745
label morte_s697: # from 695.0
    nr '"Nedokážu říct proč, ale myslím si, že jsi to byl *ty*. Alespoň jednou. Ale nemůžu si vzpomenout, co se stalo. Dokonce si ani nepamatuju, jaký to bylo, když jsem byl člověk, vlastně si nepamatuju nic před tím. Než jsem se probral v Pilíři."'

    menu:
        '"Proč jsi zapomněl?"':
            # a1383 # r65746
            jump morte_s698

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65747_condition():
            # a1384 # r65747
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65748_condition():
            # a1385 # r65748
            jump morte_dispose


# s698 # say65749
label morte_s698: # from 696.0 697.0
    nr '"To už tak bývá, když jeden zdechne. Řek bych, že ty o tom víš taky svý. Zkrátka… zapomeneš. Řek bych, že sem zaživa nebyl zrovna zářným příkladem společnosti… ale ksakru, kdo je?" Morte vzdychl. "Si zkrátka nemůžu pomoct. Nic není tak hnusný, jako bejt furt… *upřímnej.*"'

    menu:
        '"Kromě odsouzení do pekel. To mi připadá jako mnohem horší, než říkat pravdu."' if morteLogic.r65750_condition():
            # a1386 # r65750
            $ morteLogic.r65750_action()
            jump morte_s699

        '"No, to je pravda… ale musíš si vybírat lži opatrně."' if morteLogic.r65751_condition():
            # a1387 # r65751
            $ morteLogic.r65751_action()
            jump morte_s699


# s699 # say65752
label morte_s699: # from 698.0 698.1
    nr '"Jo… máš pravdu. *Zase.*" Morte zacvakal zubama. "Bych řek, že všechno to dobro a zlo a lhaní a podvádění tě nakonec ťapnou. A když jsem skončil v knize mrtvejch, byl sem na řadě se splátkama."'

    menu:
        '"Jak jsi utekl z Pilíře?"':
            # a1388 # r65753
            $ morteLogic.j53633_s699_r65753_action()
            jump morte_s700

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65754_condition():
            # a1389 # r65754
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65755_condition():
            # a1390 # r65755
            jump morte_dispose


# s700 # say65757
label morte_s700: # from 699.0
    nr '"No… ty si mi pomoh, šéfe. Když ses ukázal u Pilíře, prorval sem se dopředu. Moje skvělý knouhau a okouzlující osobnost připoutaly tvou pozornost - věděl jsi, že *já* jsem ta hlava, která ví nejvíc. A tak sme se dohodli."'

    menu:
        '"Dohodli?"':
            # a1391 # r65758
            $ morteLogic.r65758_action()
            jump morte_s701

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65759_condition():
            # a1392 # r65759
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65760_condition():
            # a1393 # r65760
            jump morte_dispose


# s701 # say65761
label morte_s701: # from 700.0
    nr 'Jak Morte mluví, tvůj pohled zrudnul, slyšíš vytí, příšerný *skřek*, který vznikl splynutím tisíců hlasů, které ječí, vřískají, řvou a VŠECHNY tě prosí, ječí, žebrají o osvobození, a Mortův hlas… slabý, téměř se v tom rámusu ztrácí. Jeho hlas zní zoufale, vyděšeně a… pateticky, tragicky, *ztraceně.*'

    menu:
        'Ozvěna: "Ty. Lebko. Mluv."':
            # a1394 # r65762
            jump morte_s702

        'Zažeň vzpomínku.':
            # a1395 # r65763
            $ morteLogic.r65763_action()
            jump morte_s706


# s702 # say65764
label morte_s702: # from 701.0
    nr 'Ječící hlasy pozvolna utichly. Sleduješ malou zrudlou lebku, zkroucené rysy tváře, v pekelném světle podivně deformované. Obrátila k tobě své oči. Po tváři jí stéká krev a nějaký odporný výtok, zuby drkotají, jakoby zimou. "Já… já… m-m-m-můžu ti p-p-p-om-moct. Vím-m-m, c-c-co hledáš. Všechny ty h-h-hlavy… všechno vědění… p-prosím, *prosím* tě, uvolni m-mě. Nech mě, ať ti *pomůžu*. Řeknu ti všechno, *všechno*."'

    menu:
        'Ozvěna: "*Řekneš*? PŘÍSAHEJ, lebko. PŘÍSAHEJ, že mi budeš sloužit až do konce mých dnů, jinak tě tady nechám."':
            # a1396 # r65765
            jump morte_s703

        'Zažeň vzpomínku.':
            # a1397 # r65766
            $ morteLogic.r65766_action()
            jump morte_s706


# s703 # say65767
label morte_s703: # from 702.0
    nr '"Přísahám… přísahám, jenom mě prosím, *prosím* uvolni… já…" Vidíš, jak Morte slabě polkl, zahání zbytečky své hrdosti. "Já… já tě prosím. Nech mě, ať ti pomůžu. Prosím."'

    menu:
        'Ozvěna: "Dobrá tedy. Uvolním tě."':
            # a1398 # r65768
            jump morte_s704

        'Zažeň vzpomínku.':
            # a1399 # r65769
            $ morteLogic.r65769_action()
            jump morte_s706


# s704 # say65770
label morte_s704: # from 703.0
    nr 'Pohled se posunul, jako byses pohyboval. Znovu začíná to šílené řvaní a skřehotání, znovu se ozývá ten jek z noční můry, plný výkřiků, nadávek, hrozeb a proseb… cítíš, jak tvé ruce vnikají do špinavé struktury pilíře, cítíš, jak se ti do kůže zarývají zuby, jak ti sežvýkávají kůži a pak… Cítíš, jak se tvé ruce sevřely kolem malé lebky a začínají ji rvát ven, rvou , tahají a vytrhávají ven z pilíře…'

    menu:
        'Ozvěna: "Je VYKONÁNO."':
            # a1400 # r65771
            jump morte_s705

        'Zažeň vzpomínku.':
            # a1401 # r65772
            $ morteLogic.r65772_action()
            jump morte_s706


# s705 # say65773
label morte_s705: # from 704.0
    nr 'Díváš se na krvavou lebku, která spočívá v tvých zjizvených dlaních, pokrytá slizem z pilíře. Zuby jí zacvakaly. Jednou, dvakrát. Připomíná ti to nářek bezmocného novorozeněte a připadá ti to - v očích muže, kterým jsi kdysi býval - neuvěřitelně patetické.'

    menu:
        'Ozvěna: "Uvolnil jsem tě. Teď je tvůj život… a tvá smrt mým majetkem… Morte."' if morteLogic.r65774_condition():
            # a1402 # r65774
            $ morteLogic.r65774_action()
            jump morte_s706

        'Ozvěna: "Uvolnil jsem tě. Teď je tvůj život… a tvá smrt mým majetkem… Morte."' if morteLogic.r65775_condition():
            # a1403 # r65775
            $ morteLogic.r65775_action()
            jump morte_s706


# s706 # say65776
label morte_s706: # from 701.1 702.1 703.1 704.1 705.0 705.1
    nr 'Pohled se ti zamlžil, přeludy minulosti odplouvají pryč. Morte pořád něco povídá. "Chvilku jsme si povídali, ty a já, šéfe, vypracovávali jsme dohodu, která bude vyhovovat mně i tobě. Myslím, že oba jsme na toho druhého udělali dojem. Ty jsi mi potom nabídnul, abych šel s tebou. No a do té doby jsem s tebou tak nějak pořád."'

    menu:
        '"Uh… co se stalo pak?"':
            # a1404 # r65777
            jump morte_s707

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65778_condition():
            # a1405 # r65778
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65779_condition():
            # a1406 # r65779
            jump morte_dispose


# s707 # say65780
label morte_s707: # from 706.0
    nr '"No, nevěděl jsem, že když vyjdu ven z Pilíře, ztratím většinu jeho znalostí… teda, jak jsem to jenom mohl vědět, nikdy jsem mimo tu hnusnou věc nebyl. Ale tys to naštěstí pochopil…"'

    menu:
        '"Ztratil jsi znalosti, které jsi měl…?"':
            # a1407 # r65781
            $ morteLogic.r65781_action()
            jump morte_s708

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65782_condition():
            # a1408 # r65782
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65783_condition():
            # a1409 # r65783
            jump morte_dispose


# s708 # say65784
label morte_s708: # from 707.0
    nr 'Tvůj pohled se znovu zkroutil a zamlžil, zamotala se ti hlava. Cítíš, jak se ti svírají vnitřnosti. A slyšíš praskání a lámání kostí a Mortovo vytí. Vyje bolestí, ječí, prosí někoho, aby toho nechal, aby ho *nezabíjel*.. a tvá ruka znovu udeřila a znovu a znovu…"'

    menu:
        'Ozvěna: "PROKLÍNÁM tě, lebko. LHALA jsi mi. VRAZÍM TĚ ZPÁTKY DO TOHO PROKLETÉHO PILÍŘE A NECHÁM TĚ TAM *CHCÍPNOUT!*"':
            # a1410 # r65785
            jump morte_s709

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65786_condition():
            # a1411 # r65786
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65787_condition():
            # a1412 # r65787
            jump morte_dispose


# s709 # say65788
label morte_s709: # from 708.0
    nr 'Je slyšet chřestění kostí na něčem, co zní jako kov - podlaha nebo zeď. A taky zachřestění vyražených zubů. Slyšíš Morta, jak kňourá jako zmlácený pes a prosí tě, abys-'

    menu:
        'Ozvěna: "VĚZ, ŽE TVÉ UTRPENÍ V PILÍŘI JE *NIC* PROTI MUKÁM, KTERÉ TI PŘIPRAVÍM. BUDEŠ *TRPĚT*."':
            # a1413 # r65789
            $ morteLogic.r65789_action()
            jump morte_s710

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65790_condition():
            # a1414 # r65790
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65791_condition():
            # a1415 # r65791
            jump morte_dispose


# s710 # say65792
label morte_s710: # from 709.0
    nr 'Pohled se znovu zamlžil a Mortův nářek přešel do rytmického blábolení. "Uvědomil sis, že pořád jsem použitelný ke spoustě věcí, a tak jsem zůstal s tebou a od té doby jsem pořád s tebou."'

    menu:
        '"Morte, co jsem chtěl od Pilíře? A jak je to dlouho, co jsem tě uvolnil?"':
            # a1416 # r65793
            jump morte_s711

        '"Uh… zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65794_condition():
            # a1417 # r65794
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65795_condition():
            # a1418 # r65795
            jump morte_dispose


# s711 # say65796
label morte_s711: # from 710.0
    nr 'Morte chvíli přemýšlí. "No, pokud jde o to, jak přesně dlouho, tak to nevím, šéfe - celý věky, řek bych. Pokaždý jsem dělal, co jsem moh, abych ti pomoh, ale…" Morte vzdychl. "Není to lehký. A co týče toho, cos teda jako chtěl od Pilíře, tak to nevím. Jakmile jsi mě vyrval ven, zapomněl jsem to."'

    menu:
        '"Morte, proč jsi mi něco NEŘEKL, když jsme byli ještě v Márnici?"':
            # a1419 # r65797
            jump morte_s712

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65798_condition():
            # a1420 # r65798
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65799_condition():
            # a1421 # r65799
            jump morte_dispose


# s712 # say65800
label morte_s712: # from 711.0
    nr 'Morte se najednou stáhl do obrany. "Protože nikdy *nevím*, co jsi zač! Některé z tvých inkarnací byly šílený, totálně mimo mísu! Jednou ses probral a byl si přesvědčenej, že *já* jsem tvoje lebka a pak jsi mě honil kolem dokola, chtěls mě rozmlátit a sežrat! Naštěstí tě na ulici srazil vůz. Jiná inkarnace, dobrá a zákonná,„ se mě snažila vrazit zpátky do Pilíře, protože “to je místo, kam patřím.„" Morte se zašklebil. "*Proto.* Kromě toho, nic ti to neudělalo, žes to nevěděl…"'

    menu:
        '"Takže ty jsi se mnou byl celou tu dobu?"' if morteLogic.r65801_condition():
            # a1422 # r65801
            jump morte_s713

        '"Zapomeň na to, Morte. Mám ještě nějaké otázky…"' if morteLogic.r65802_condition():
            # a1423 # r65802
            jump morte_s329

        '"To nic, Morte. Pojďme dál."' if morteLogic.r65803_condition():
            # a1424 # r65803
            jump morte_dispose


# s713 # say65804
label morte_s713: # from 712.0
    nr '"No, jó, šéfe. Říkal jsem, že budu. Morte vždycky dodržuje svý sliby." Odmlčel se. "No, většinu z nich. To bylo jednou jedno kotě v Arboree, která ---"'

    $ morteLogic.s713_action()
    jump morte_s714


# s714 # say65805
label morte_s714: # from 713.0
    nr 'Uvědomil sis, že se Mortův tón změnil - přes jeho vtípky jsi poznal, že se snaží něco ukrýt. Něco o tom, proč je s tebou.'

    menu:
        '"Morte, vážně. Proč se mnou pořád cestuješ?"':
            # a1425 # r65806
            jump morte_s715

        '"Dobrá tedy. Mám ještě nějaké otázky…"':
            # a1426 # r65807
            jump morte_s329

        '"To nic, Morte. Pojďme dál."':
            # a1427 # r65808
            jump morte_dispose


# s715 # say65809
label morte_s715: # from 329.8 714.0 729.8
    nr '"Šéfe, říkal jsem ti, že jsem to slíbil, ne?" Vypadá podrážděně. "Proč jinak?"'

    menu:
        '"Já nevím. Nemusel jsi se mnou zůstat, po tom, co jsem tě uvolnil."':
            # a1428 # r65810
            jump morte_s716

        '"To nic. Mám ještě nějaké otázky…"':
            # a1429 # r65811
            jump morte_s329

        '"Zapomeň na to, Morte. Pojďme dál."':
            # a1430 # r65812
            jump morte_dispose


# s716 # say65813
label morte_s716: # from 715.0
    nr '"No jasně že ne, šéfe, ale - " A najednou ti hlavou bleskl nápad, snad tě na něj přivedl jeho tón, ale teď už víš, *proč* s tebou zůstal celou tu dobu.'

    menu:
        '"Cítíš *vinu*. Protože jsi mě před dávnou dobou přivedl na smrt, proto, že ano? A od té doby neustále trpíš."':
            # a1431 # r65814
            jump morte_s717


# s717 # say65815
label morte_s717: # from 716.0
    nr '"Ale, no ták, šéfe. Já? Cítit *vinu*? Neblbni, dyť já jsem Morte."'

    menu:
        '"Ne, myslím si, že je to tohle. Když jsem tě přišel osvobodit od osudu, který sis zasloužil, nemohl jsi jinak, než mi zkusit pomoct. A když jsi mohl odejít, poté, co jsem tě uvolnil, zůstal jsi. Protože jsi cítil, že mi to dlužíš."':
            # a1432 # r65816
            jump morte_s718


# s718 # say65817
label morte_s718: # from 717.0
    nr 'Morte se na tebe chvilku mlčky dívá. "Možná. Víš co je srandovní? Nejdřív jsem nevěděl, co je to za pocit - ono tě to tak nějak pomalu požírá, víš?"'

    jump morte_s719


# s719 # say65818
label morte_s719: # from 718.0
    nr '"Víš, nejdřív sem si myslel, že je to nějakej vedlejší efekt kouzla, co jsi na mě poslal… ale o pár set let později sem si uvědomil, že je to *víc* než to… něco hlubšího. Cítil sem, že mě to k tobě táhne, že sem k tobě nějak *připojenej*. Možná je to všechno to tvý utrpení, šéfe… tvý muka. Já nevím. Možná sem cítil… já fakt nevím, možná sem se cítil *zodpovědnej* za to, co jsem udělal. Co když tě do tohohle stavu dostalo něco, co jsem udělal?"'

    $ morteLogic.s719_action()
    jump morte_s720


# s720 # say65820
label morte_s720: # from 719.0
    nr '"Nemyslím si, že bych - ať už jsem byl kdokoli - měl kdy *vidět* následky svýho lhaní a podvádění. No a když jsem tě viděl poprvé, ještě strčenej v Pilíři, nějak jsem *věděl*, že tebe jsem kdysi zradil. Kdysi… před dávnou dobou." Morte vzdychl. "A to je všechno, co vím."'

    menu:
        '"Aha. Díky, žes mi to vyjasnil, Morte."':
            # a1433 # r65821
            $ morteLogic.r65821_action()
            jump morte_s721


# s721 # say65822
label morte_s721: # from 720.0
    nr '"Né, neděkuj mi…" Morte vzdychl a k tvému překvapení jeho hlas zní silněji, sebevědoměji. Některé praskliny v jeho lebce zmizely, jako by se zahojily. "Kdepak, já bych měl děkovat… Cítím se, jako by mi někdo z ramen sundal váhu všech Sfér - obrazně řečeno, to je jasný."'

    menu:
        '"Mám ještě nějaké otázky…"':
            # a1434 # r65823
            jump morte_s329

        '"Dobrá, Morte. Pojďme dál."':
            # a1435 # r65824
            jump morte_dispose


# s722 # say65826
label morte_s722: # from 329.10 729.10
    nr '"No, je to noční čarodějnice - a určitě byla dost střelená, aby TĚ udělala nesmrtelným, zrovna tebe ze všech lidí. Víš, myslím jako, že si mohla vybrat třeba mně." Morte zakroutil očima. "No ale kdokoli, kdo je dost praštěnej, aby se zkusil porvat s Paní Bolesti, zkrátka není někdo, koho bysme doopravdy chtěli najít."'

    menu:
        '"Aha. Mám ještě nějaké otázky…"':
            # a1436 # r65827
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1437 # r65828
            jump morte_dispose


# s723 # say65829
label morte_s723: # from 329.9 729.9
    nr '"Je to válka. Velká, krvavá, hnusná várka. Odehrává se všude, ale ne vždycky ji můžeš vidět."'

    menu:
        '"Pokračuj…"':
            # a1438 # r65830
            jump morte_s724

        '"To nic. Mám ještě nějaké otázky…"':
            # a1439 # r65831
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1440 # r65832
            jump morte_dispose


# s724 # say65833
label morte_s724: # from 723.0
    nr '"Hele, šéfe, je to válka mezi dvěma hnusnejma rasama: démonama a ďáblama. Bylo nebylo, před dávnejma dobama o sobě nevěděli. Ďáblové byli zlí, ale byli to „řádní“ zlí. Démoni sou taky zlí, ale jsou to větší pohodáři - jsou impulzivnější, chaotičtí, neorganizovaný. Ďáblové sou jako politici, démoni jako řezníci."'

    jump morte_s725


# s725 # say65834
label morte_s725: # from 724.0
    nr '"No a pak se jednoho dne potkali. Podívali se na sebe a ani jedněm se nelíbilo, jak ti druzí provozují zlo. A od tý doby se bijou. Je to jako velká hnusná noční můra. Má to ale přece jenom jednu výhodu. Alespoň se tak bijou mezi sebou a nemají čas otravovat celý Sféry."'

    menu:
        '"Aha. Mám ještě nějaké otázky…"':
            # a1441 # r65835
            jump morte_s329

        '"To je všechno, co jsem chtěl vědět. Pojďme."':
            # a1442 # r65836
            jump morte_dispose


# s726 # say65837
label morte_s726: # from 329.11 729.11
    nr '"Nemám tušáka, šéfe. Sem tak nějak zapomněl, když sem umřel. Ale nedá se říct, že by mě to moc štvalo - alespoň na mě něco po smrti čekalo, i když je to žít jako lítající lebka. Víš, myslím tím, že to klidně mohlo bejt horší."'

    menu:
        '"Co se stalo s tvým tělem?"':
            # a1443 # r65839
            jump morte_s727

        '"Aha. Mám ještě nějaké otázky…"':
            # a1444 # r65840
            jump morte_s329

        '"Dobrá tedy. Pojďme."':
            # a1445 # r65841
            jump morte_dispose


# s727 # say65838
label morte_s727: # from 726.0
    nr '"Eh… já nevím, jasný? Je to zkrátka fuč." Morte se na tebe naštvaně dívá. "Ale nemyslí si, že mi CHYBÍ, protože já jsem šťastnej s tím, jakej sem a nepotřebuju tvý přiblblý rozumování nebo trapný poznámky, jasný?"'

    menu:
        '"Aha. Mám ještě nějaké otázky…"':
            # a1446 # r65842
            jump morte_s329

        '"No jo. Pojďme. Pohni kostrou."':
            # a1447 # r65843
            jump morte_s728


# s728 # say65844
label morte_s728: # from 727.1
    nr 'Morte tě spaluje pohledem. "Nejsem si zrovna jistý, jestli nejseš nějakej druh chodící kletby, kterou mě někdo proklel, aby mě furt sledovala."'

    menu:
        '"Hele, kdo to mluví. Pojďme."':
            # a1448 # r65845
            jump morte_dispose


# s729 # say66344
label morte_s729: # - # IF WEIGHT #7 /* Triggers after states #: 742 737 733 even though they appear after this state */ ~  Global("AR0200_Visited","GLOBAL",1) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Co tě žere, náčelníku?"~ [MRT515]'

    menu:
        '"Můžeš mi znovu přečíst, co mám vytetováno na zádech?"':
            # a1449 # r66345
            jump morte_s649

        '"Můžeš mi říct něco málo o Sigilu?"':
            # a1450 # r66346
            jump morte_s659

        '"Morte… nevadí mi, že jsi se mnou, ale je tady *ještě* něco jiného co dokážeš, kromě kecání?"' if morteLogic.r66347_condition():
            # a1451 # r66347
            jump morte_s663

        '"Morte… jaké že jsou ty tvoje speciální schopnosti?"' if morteLogic.r66348_condition():
            # a1452 # r66348
            jump morte_s666

        '"Morte, proč jsi mi nepřečetl to poslední tetování na mých zádech?"' if morteLogic.r66349_condition():
            # a1453 # r66349
            jump morte_s654

        '"Hodila by se mi nějaká rada. Co myslíš, co bychom měli udělat teď?"':
            # a1454 # r66350
            jump morte_s669

        '"Tys říkal, že jsi mimir, že jo, Morte?"' if morteLogic.r66351_condition():
            # a1455 # r66351
            jump morte_s684

        '"Zopakuj mi, jak jsi skončil v Pilíři Lebek."' if morteLogic.r66352_condition():
            # a1456 # r66352
            jump morte_s693

        '"Morte, proč se mnou pořád cestuješ?"' if morteLogic.r66353_condition():
            # a1457 # r66353
            jump morte_s715

        '"Co víš o Válce Krve?"' if morteLogic.r66354_condition():
            # a1458 # r66354
            jump morte_s723

        '"Co víš o čarodějnici Ravel?"' if morteLogic.r66355_condition():
            # a1459 # r66355
            jump morte_s722

        '"Jak jsi zemřel, Morte?"':
            # a1460 # r66356
            jump morte_s726

        '"Nic, Morte. Jenom kontroluju, jestli jsi se mnou."':
            # a1461 # r66357
            jump morte_dispose


# s730 # say66816
label morte_s730: # -
    nr '"Hej, šéfe, věřil bys tomu? Mohli by dokonce i *mě* něco málo naučit…"~ [MRT387]'

    menu:
        '"Věřím tomu, Morte. Pojďme."':
            # a1462 # r66817
            jump morte_dispose


# s731 # say67510
label morte_s731: # -
    nr '"Jenom bych se rád na chvilinku vmísil a oznámil vám, že nebudu říkat nic, čím bych vám pokazil zábavu, šéfíku. Jenom tady budu obletovat a koukat se. Nevšímejte si mě - jenom tady poletuju a koukám se, to jsem já."'

    jump annah_s418  # EXTERN


# s732 # say67600
label morte_s732: # -
    nr '"Necháte toho, než budu muset sehnat Dabuse, aby vás od sebe oddělil?" Morte si odfrkl. "Nebo mi aspoň dovolte, ať se k vám přidám."'

    jump annah_s446  # EXTERN


# s733 # say68171
label morte_s733: # - # IF WEIGHT #1 ~  Global("Fortress_Morte","GLOBAL",3) Global("Absorb","GLOBAL",0)
    nr 'Když ses po něm natáhnul, Morte náhle promluvil. "Hou hou! Počkej, šéfe.. Je tady uh… pár věcí, který ti musím říct."~ [MRT242]'

    menu:
        '"Morte…?! Ty nejsi mrtvý!"':
            # a1463 # r68176
            $ morteLogic.r68176_action()
            jump morte_s734


# s734 # say68172
label morte_s734: # from 733.0
    nr '"No, jo -- když seš tak dlouho mrtvej jako já, naučíš se to fakt dobře předstírat. Tak ňák sem poslouchal celou tu vaši řeč. Tu moc, co máš, tak tu použij na někoho jinýho - já ji nepotřebuju."'

    menu:
        '"Takže ty bys tady jen tak *ležel*, zatímco já bych dostával nakopáno do prdele?!"':
            # a1464 # r68177
            jump morte_s735


# s735 # say68173
label morte_s735: # from 734.0
    nr '"No *jo*, šéfe. Myslím, jako že kdybys zklamal, budeš potřebovat někoho, kdo si za tebe bude pamatovat. Navíc, víš jak jsem neschopnej v boji - teda pokaď nenadávám ňákýmu kouzelníkovi nebo tak…"'

    menu:
        '"Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68178_condition():
            # a1465 # r68178
            jump morte_s736

        '"Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68189_condition():
            # a1466 # r68189
            $ morteLogic.r68189_action()
            jump morte_dispose

        '"Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68190_condition():
            # a1467 # r68190
            $ morteLogic.r68190_action()
            jump morte_dispose

        '" Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68191_condition():
            # a1468 # r68191
            $ morteLogic.r68191_action()
            jump morte_dispose

        '" Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68192_condition():
            # a1469 # r68192
            $ morteLogic.r68192_action()
            jump morte_dispose

        '" Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68193_condition():
            # a1470 # r68193
            $ morteLogic.r68193_action()
            jump morte_dispose

        '" Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68194_condition():
            # a1471 # r68194
            $ morteLogic.r68194_action()
            jump morte_dispose

        '"Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68239_condition():
            # a1472 # r68239
            $ morteLogic.r68239_action()
            jump morte_dispose

        '"Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68438_condition():
            # a1473 # r68438
            $ morteLogic.r68438_action()
            jump morte_dispose

        '"Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68439_condition():
            # a1474 # r68439
            $ morteLogic.r68439_action()
            jump morte_dispose

        '"Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68446_condition():
            # a1475 # r68446
            $ morteLogic.r68446_action()
            jump morte_dispose

        '"Tak to je možná to, co potřebuju, abys udělal. O tomhle si promluvíme *později*, Morte…"' if morteLogic.r68503_condition():
            # a1476 # r68503
            jump trans_s142  # EXTERN


# s736 # say68174
label morte_s736: # from 735.0
    nr 'Znovu ses natáhnul svou mocí…'

    menu:
        'Oživ Annah.' if morteLogic.r68175_condition():
            # a1477 # r68175
            $ morteLogic.r68175_action()
            jump morte_dispose

        'Oživ Dak„kona.' if morteLogic.r68179_condition():
            # a1478 # r68179
            $ morteLogic.r68179_action()
            jump morte_dispose

        'Oživ Fall-From-Grace.' if morteLogic.r68180_condition():
            # a1479 # r68180
            $ morteLogic.r68180_action()
            jump morte_dispose

        'Oživ Nordoma.' if morteLogic.r68181_condition():
            # a1480 # r68181
            $ morteLogic.r68181_action()
            jump morte_dispose

        'Oživ Ignuse.' if morteLogic.r68182_condition():
            # a1481 # r68182
            $ morteLogic.r68182_action()
            jump morte_dispose

        'Oživ Vhailora.' if morteLogic.r68183_condition():
            # a1482 # r68183
            $ morteLogic.r68183_action()
            jump morte_dispose


# s737 # say68310
label morte_s737: # - # IF WEIGHT #2 ~  Global("Fortress_Morte","GLOBAL",3) GlobalGT("Absorb","GLOBAL",0)
    nr 'Když jsi nasměroval svou moc, Morte se náhle vznesl do vzduchu. ""Eh… momentík, šéfe. Nemusíš mě oživovat, já tady, uh, jenom tak ležel, víš, poslouchal vás dva."'

    menu:
        'TY JSI PŘEDSTÍRAL SMRT.':
            # a1483 # r68311
            jump morte_s738


# s738 # say68312
label morte_s738: # from 737.0
    nr '"No, jo, víš já *už* jsem mrtvej a … uh, šéfe, co se ti to stalo s hlasem?"'

    menu:
        'JÁ… TEĎ JSEM NĚČÍM JINÝM. ČAS BĚŽÍ A BRZY MĚ ČAS A MŮJ OSUD DOŽENOU. VRÁTÍM TĚ DO SIGILU, MORTE, JESTLI CHCEŠ.':
            # a1484 # r68313
            jump morte_s739


# s739 # say68314
label morte_s739: # from 738.0
    nr '"Co --? Vrátíš mě? A co *ty*? No tak, šéfe, možná sem *zbabělec*, ale nemůžu tě jen tak opustiti."'

    menu:
        'MNOHO JE ZLOČINŮ, KTERÉ BYLY SPÁCHÁNY, KDYŽ JSEM BYL ODDĚLEN OD SVÉ SMRTELNOSTI. A TY ZLOČINY… NĚCO STOJÍ. TAM, KDE JÁ BRZY BUDU, TY JÍT NEMŮŽEŠ.':
            # a1485 # r68315
            jump morte_s740


# s740 # say68316
label morte_s740: # from 739.0
    nr '"No, stejně bych s tebou *mohl* jít, šéfe, jestli chceš - víš, už za sebou máme horší-"'

    menu:
        'TENTOKRÁT NE. MOŽNÁ SE ZASE JEDNOHO DNE SETKÁME, TY A JÁ, V JINÉ SFÉŘE. ALE NE TEĎ.':
            # a1486 # r68317
            jump morte_s741


# s741 # say68318
label morte_s741: # from 740.0
    nr 'Morte tě chvilku upřeně sleduje, pak vzdychl. "Ne snad, že bych měl zamlžený oči, ale, no, bylo to fakt fajn, šéfe."~ [MRT109]'

    menu:
        'SBOHEM, MORTE.' if morteLogic.r68319_condition():
            # a1487 # r68319
            $ morteLogic.r68319_action()
            jump morte_dispose

        'SBOHEM, MORTE.' if morteLogic.r68320_condition():
            # a1488 # r68320
            $ morteLogic.r68320_action()
            jump morte_dispose

        'SBOHEM, MORTE.' if morteLogic.r68321_condition():
            # a1489 # r68321
            $ morteLogic.r68321_action()
            jump morte_dispose

        'SBOHEM, MORTE.' if morteLogic.r68322_condition():
            # a1490 # r68322
            $ morteLogic.r68322_action()
            jump morte_dispose

        'SBOHEM, MORTE.' if morteLogic.r68323_condition():
            # a1491 # r68323
            $ morteLogic.r68323_action()
            jump morte_dispose

        'SBOHEM, MORTE.' if morteLogic.r68324_condition():
            # a1492 # r68324
            $ morteLogic.r68324_action()
            jump morte_dispose

        'SBOHEM, MORTE.' if morteLogic.r68325_condition():
            # a1493 # r68325
            $ morteLogic.r68325_action()
            jump morte_dispose

        'SBOHEM, MORTE.' if morteLogic.r68490_condition():
            # a1494 # r68490
            $ morteLogic.r68490_action()
            jump morte_dispose

        'SBOHEM, MORTE.' if morteLogic.r68491_condition():
            # a1495 # r68491
            $ morteLogic.r68491_action()
            jump morte_dispose

        'SBOHEM, MORTE.' if morteLogic.r68492_condition():
            # a1496 # r68492
            $ morteLogic.r68492_action()
            jump morte_dispose


# s742 # say68408
label morte_s742: # - # IF WEIGHT #3 ~  Global("Fortress_Morte","GLOBAL",4)
    nr 'Morte tě chvilku upřeně sleduje, pak vzdychl. "Ne snad, že bych měl zamlžený oči, ale, no, bylo to fakt fajn, šéfe."~ [MRT109]'

    menu:
        '"Tak jdeme na to…"':
            # a1497 # r68409
            jump morte_dispose
