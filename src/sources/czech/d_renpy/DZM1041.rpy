init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1041_logic import Zm1041Logic
    zm1041Logic = Zm1041Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1041.DLG
# ###


# s0 # say6573
label zm1041_s0: # - # IF ~  Global("Bei","GLOBAL",0)
    nr 'Tato oživená mužská mrtvola má na čele vyřezáno číslo "1041". Navzdory vyschlému tělu je zřejmé, že její rysy byly za života poněkud „exotické“. Je celkem v dobrém stavu. Rty zombie byly sešity - nejspíš proto, aby se předešlo jejímu neustálému nářku - a silně páchne formaldehydem.'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"' if zm1041Logic.r6576_condition():
            # a0 # r6576
            $ zm1041Logic.r6576_action()
            jump zm1041_s1

        '"Tak… je tam dál vidět něco zajímavého?"' if zm1041Logic.r6577_condition():
            # a1 # r6577
            jump zm1041_s1

        '"Vím, že nejsi zombie, jasný? Mě neoklameš."' if zm1041Logic.r6578_condition():
            # a2 # r6578
            jump zm1041_s1

        'Použij svou schopnost Kosti-vyprávějte na mrtvolu.' if zm1041Logic.r6579_condition():
            # a3 # r6579
            jump zm1041_s2

        'Použij svou schopnost Kosti-vyprávějte na mrtvolu.' if zm1041Logic.r6580_condition():
            # a4 # r6580
            jump zm1041_s37

        '"Rád jsem si s tebou popovídal. Sbohem."':
            # a5 # r6581
            jump zm1041_dispose

        'Zanechej mrtvolu mrtvolou.':
            # a6 # r9095
            jump zm1041_dispose


# s1 # say6574
label zm1041_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.'

    menu:
        'Nechej mrtvolu být.':
            # a7 # r6582
            jump zm1041_dispose


# s2 # say6575
label zm1041_s2: # from 0.3
    nr 'Mrtvola na moment zavrávorala, jak se duše vrátila do svého někdejšího příbytku. Její mandlové oči ztmavly a nad bledým tělem se objevil slabý bronzový přísvit. Narovnala se a oprášila si šaty.  Duch si konečně všiml toho, kdo jej vyvolal, chvíli se na tebe zvědavě zadíval a pak se lehce uklonil.'

    menu:
        'Také se ukloň.':
            # a8 # r6583
            $ zm1041Logic.r6583_action()
            jump zm1041_s3

        '"Měl bych pár otázek…"':
            # a9 # r9096
            $ zm1041Logic.r9096_action()
            jump zm1041_s4

        'Opusť ducha.':
            # a10 # r9097
            $ zm1041Logic.r9097_action()
            jump zm1041_dispose


# s3 # say9060
label zm1041_s3: # from 2.0
    nr 'Duch se na chvíli usmál, jako by byl potěšen. Potom se uklidnil, stoupl si s jednou rukou za zády a začal přednášet jemným, zpěvavým hlasem:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  Jen to dořekl, vypadá spokojeně a čeká na tvou odpověď.'

    menu:
        '"Já.. err…"':
            # a11 # r9098
            jump zm1041_s5

        '"Vůbec netuším, co to povídáš… můžeš vlastně rozumět ty mě?"':
            # a12 # r9099
            jump zm1041_s5

        '"Nedokážu ti porozumět. Sbohem."':
            # a13 # r9100
            jump zm1041_dispose


# s4 # say9061
label zm1041_s4: # from 2.1
    nr 'Chtěl ses na něco zeptat, ale než jsi stačil cokoliv říct, duch začal přednášet jemným, zpěvavým hlasem:  "Suiang jianne shyr nan bye yih nan; "Dong feng wu lih bay hua tsarn; "Chuen tsarn daw syy sy fang jinn; "Lah Jiuh cherng huei ley shyy gan."  Jen to dořekl, vypadá spokojeně a čeká na tvou odpověď.'

    menu:
        '"Já… err…"':
            # a14 # r9101
            jump zm1041_s5

        '"Vůbec netuším, co to povídáš… můžeš vlastně rozumět ty mě?"':
            # a15 # r9102
            jump zm1041_s5

        '"Nedokážu ti porozumět. Sbohem."':
            # a16 # r9103
            jump zm1041_dispose


# s5 # say9062
label zm1041_s5: # from 3.0 3.1 4.0 4.1
    nr 'Duch na chvíli přestal, jako by přemýšlel. Potom začal mluvit znovu zastřeným, ještě hlubším hlasem. "Musíš mi odpustit, vzácný pane.  Byla to hodně dlouhá doba co jsem naposledy mluvil tvým jazykem. Neměj obavu, můj duch byl předvolán, aby ti odpověděl na tvé otázky; co tedy ode mně potřebuješ vědět?"'

    menu:
        '"Kdo jsi?"':
            # a17 # r9104
            jump zm1041_s6

        '"Odkud pocházíš?"':
            # a18 # r9105
            jump zm1041_s7

        '"Jak ses sem dostal? Jako zombie?"':
            # a19 # r9106
            jump zm1041_s8

        '"Kde jsi… kde přebývá tvá duše… teď?"':
            # a20 # r9107
            jump zm1041_s11

        '"Co víš o tomto místě?"':
            # a21 # r9108
            jump zm1041_s9

        '"Neznáš náhodou muže jménem Pharod?"' if zm1041Logic.r9109_condition():
            # a22 # r9109
            jump zm1041_s10

        '"Ale nic, zapomeň na to."':
            # a23 # r9110
            jump zm1041_dispose


# s6 # say9063
label zm1041_s6: # from 5.0 14.0
    nr '"Je těžké odpovědět kdo jsem… kdo jsem *byl*. Byl jsem znám jako Zhuang Bei, učitel a ochránce Liu Xixi, dcery Censora Chi„an.'

    menu:
        '"Vychovatel a tělesný strážce?"':
            # a24 # r9111
            jump zm1041_s12

        '"Hmm. To zní úchvatně."':
            # a25 # r9112
            jump zm1041_s13

        '"Ach tak. Měl bych pro tebe ještě pár otázek…"':
            # a26 # r9113
            jump zm1041_s14

        '"Tak to je prozatím vše. Sbohem."':
            # a27 # r9114
            jump zm1041_dispose


# s7 # say9064
label zm1041_s7: # from 5.1 14.1
    nr '"Jsem z místa, které se nazývá Shou Lung… místa, které jsem kdysi považoval za střed vesmíru." Vypadá jako by našel potěšení v přemýšlení. "Mnoho míst, mnoho světů. Kdysi jsem se považoval za opravdu učeného muže, ale teď teprve vidím, jak málo jsem věděl, když jsem zemřel…"'

    menu:
        '"Jak ses z toho „Shou Lung“ dostal až sem?"':
            # a28 # r9115
            jump zm1041_s16

        '"Ach tak. Měl bych ještě pár otázek…"':
            # a29 # r9116
            jump zm1041_s14

        '"Tak to by prozatím bylo všechno. Sbohem."':
            # a30 # r9117
            jump zm1041_dispose


# s8 # say9065
label zm1041_s8: # from 5.2 14.2
    nr '"Byl jsem zavražděn jedním z mužů, se kterými jsem se dostal do tohoto světa. Honil jsem ho v tomhle městě mnoho, mnoho týdnů -- to bylo tehdy, když jsem se učil tvoji řeč -- ale on mě našel první. Profesionální zabiják, chytil mě a zabil, když jsem spal."'

    menu:
        '"Ty jsi spadnul do tohohle světa?"':
            # a31 # r9118
            jump zm1041_s16

        '"Chytal jsi vraha?"':
            # a32 # r9119
            jump zm1041_s16

        '"Ano, ale víš, jak to, že tvá mrtvola pracuje na tomto místě?"':
            # a33 # r9120
            jump zm1041_s17

        '"Mluvíš touto řečí příliš dobře na to, jak krátkou dobu ses ji učil."':
            # a34 # r9121
            jump zm1041_s18

        '"Můžu se tě zeptat ještě na něco?"':
            # a35 # r9122
            jump zm1041_s14

        '"No, už abych zase šel. Měj se."':
            # a36 # r9123
            jump zm1041_dispose


# s9 # say9066
label zm1041_s9: # from 5.4 14.4
    nr '"Tahle budova? vůbec nic; slyšel jsem o ní, vím, že má mrtvola zde byla a sloužila, ale to je vše." "Nevím skoro nic o tomhle velkém městě, „Sigil.“ Týdny jsem zde strávil hledáním mužů, s nimiž jsem se do tohoto světa dostal a studováním řeči; ačkoliv mě to mrzelo, měl jsem jen málo času na jiné věci. Mohl jsem se toho tolik naučit z mnoha zázraků tohoto místa…"'

    menu:
        '"Tvá mrtvola tu slouží? Jak se něco takového přihodilo?"':
            # a37 # r9124
            jump zm1041_s17

        '"Ty jsi spadnul do tohoto světa?"':
            # a38 # r9125
            jump zm1041_s16

        '"Mluvíš touto řečí příliš dobře na to, jak krátkou dobu ses ji učil."':
            # a39 # r9126
            jump zm1041_s18

        '"Můžu se tě zeptat ještě na něco?"':
            # a40 # r9127
            jump zm1041_s14

        '"Už nejspíš půjdu. Snad si ještě někdy popovídáme."':
            # a41 # r9128
            jump zm1041_dispose


# s10 # say9067
label zm1041_s10: # from 5.5 14.5
    nr '"Ne, to jméno mi nic neříká. Je mi líto, že jsem ti s tím nemohl pomoct."'

    menu:
        '"Rozumím ti. Měl bych ještě pár otázeček…"':
            # a42 # r9129
            jump zm1041_s14

        '"Už nejspíš půjdu. Snad si ještě někdy popovídáme."':
            # a43 # r9130
            jump zm1041_dispose


# s11 # say9068
label zm1041_s11: # from 5.3 14.3
    nr 'Duch na chvíli vypadal zarmouceně. "Já… můj duch se zdržuje v království známého soudce, Yen-Wang-Yeha: v Paláci Soudu."'

    menu:
        '"Děje se něco? Je to snad špatné místo?"':
            # a44 # r9131
            jump zm1041_s15

        '"Ach tak. Měl bych ještě pár otázeček…"':
            # a45 # r9132
            jump zm1041_s14

        '"Tak to by bylo zatím všechno. Sbohem."':
            # a46 # r9133
            jump zm1041_dispose


# s12 # say9069
label zm1041_s12: # from 6.0 16.1
    nr '"Ne; to není tak nezvyklé v místech, odkud pocházím. Byla to moje povinnost být neustále nablízku Slečně Liu, nejenom ji chránit před zraněním, ale také ji vzdělávat. Jak vidíš, měl jsem výbornou pověst jak ve výuce tak i v šermu. Možná jsem jí mohl posloužit více, kdybych byl lepší v šermu, ačkoliv…"'

    menu:
        '"Sloužil jí lépe? Copak jsi v něčem selhal?"':
            # a47 # r9134
            jump zm1041_s16

        '"Mno, měl bych pro tebe ještě pár otázek…"':
            # a48 # r9135
            jump zm1041_s14

        '"Tak tedy, loučím se s tebou. Sbohem."':
            # a49 # r9136
            jump zm1041_dispose


# s13 # say9070
label zm1041_s13: # from 6.1
    nr '"Impozantní? Ano, možná příliš na můj vkus. Já… zklamal jsem Slečnu Liu i Censora."'

    menu:
        '"Jak to?"':
            # a50 # r9137
            jump zm1041_s16

        '"Měl bych pro tebe ještě pár otázek…"':
            # a51 # r9138
            jump zm1041_s14

        '"Chápu tě. Snad si ještě budeme moci promluvit někdy v budoucnu."':
            # a52 # r9139
            jump zm1041_dispose


# s14 # say9071
label zm1041_s14: # from 6.2 7.1 8.4 9.3 10.0 11.1 12.1 13.1 15.2 17.1 18.0 19.0 20.1 21.1 22.0 23.1 24.0 25.0 26.0 27.1 28.0 29.0 30.0 31.2 32.1 33.2 34.0 35.2 36.0 37.0 38.1
    nr 'Duch se naklonil, v neočekávaně půvabném pohybu, k vysušené mrtvole. "Prosím, vyslov své přání."'

    menu:
        '"Kdo jsi?"':
            # a53 # r9140
            jump zm1041_s6

        '"Odkud vlastně jsi?"':
            # a54 # r9141
            jump zm1041_s7

        '"Jak ses dostal až sem? Teda myslím zombie."':
            # a55 # r9142
            jump zm1041_s8

        '"Kde jsi… kde tvůj duch spočívá… v tomto čase?"':
            # a56 # r9143
            jump zm1041_s11

        '"Co všechno víš o tomto místě?"':
            # a57 # r9144
            jump zm1041_s9

        '"Neznáš náhodou někoho jménem Pharod?"' if zm1041Logic.r9145_condition():
            # a58 # r9145
            jump zm1041_s10

        '"Co jsi to prve povídal?"':
            # a59 # r9146
            jump zm1041_s26

        '"Vlastně nic nechci. Sbohem."':
            # a60 # r9147
            jump zm1041_dispose


# s15 # say9072
label zm1041_s15: # from 11.0
    nr '"Dobrá, uvidíš…" Duch se na chvíli zamyslel, zatímco o sebe třel odumřelé ruky mrtvoly. "Když jsem vešel, po krátké chvíli čekání byl jsem uveden k mému poslednímu, *opravdovému* cíli. Avšak, během mé cesty Palácem tam nastaly nějaké nepokoje, a já jsem zůstal sám v postranním pokoji se slibem, že se o mně za chvíli postarají."'

    menu:
        '"A…?"':
            # a61 # r9148
            jump zm1041_s19

        '"Konečné místo určení? Kam jsi měl být poslán?"':
            # a62 # r9149
            jump zm1041_s20

        '"Počkej… Chci se zeptat ještě na něco - dřív než začneš vyprávět."':
            # a63 # r9150
            jump zm1041_s14

        '"Zbytek si snad poslechnu někdy příště. Sbohem."':
            # a64 # r9151
            jump zm1041_dispose


# s16 # say9073
label zm1041_s16: # from 7.0 8.0 8.1 9.1 12.0 13.0
    nr '"Řeknu ti celý příběh. Jako učitel a ochránce Liu Xixi, jsem byl samozřejmě pověřen její výukou i ochranou. Jednoho krásného večera jsme stáli na balkoně nad nádvořím, kde jsem ji učil rozpoznávat různá souhvězdí.'

    menu:
        '"Pokračuj, prosím."':
            # a65 # r9152
            jump zm1041_s21

        '"Vychovatel *a* tělesný strážce?"':
            # a66 # r9153
            jump zm1041_s12

        '"Zbytek si snad poslechnu někdy příště. Sbohem."':
            # a67 # r9154
            jump zm1041_dispose


# s17 # say9074
label zm1041_s17: # from 8.2 9.0
    nr '"Ah, tamto. Jedné noci jsem byl na ulici osloven ženou; byla z organizace nazvané Spalovači, stejné, která dohlížela nad tímto komplexem." "Navrhla mi, oplátkou za menší obnos peněz, že má mrtvola by mohla být… použita… zde po mém úmrtí."'

    menu:
        '"A tobě se to nezdá trošičku divný?"':
            # a68 # r9155
            jump zm1041_s22

        '"Hmm. Měl bych další otázku, jestli ti to teda nevadí…"':
            # a69 # r9156
            jump zm1041_s14

        '"To by snad bylo všechno. Alespoň prozatím. Měj se."':
            # a70 # r9157
            jump zm1041_dispose


# s18 # say9075
label zm1041_s18: # from 8.3 9.2
    nr '"Lingvistika, po pravdě, je oblast, která mě velmi zajímá. Když jsem se stal učedníkem, zjistil jsem, že se velmi lehce učím nové jazyky, bez jakýchkoliv potíží."'

    menu:
        '"Tím by se to všechno vysvětlilo. Další otázečka…"':
            # a71 # r9158
            jump zm1041_s14

        '"Chápu. Díky, žes se mnou promluvil. Sbohem."':
            # a72 # r9159
            jump zm1041_dispose


# s19 # say9076
label zm1041_s19: # from 15.0 20.0
    nr '"No tak vidíš… nikdo se pro mne nevrátil. Čekal jsem tiše několik dní, ale vypadalo to, že to nemělo žádný smysl. Nakonec jsem z té místnosti odešel, abych prozkoumal palác doufaje, že najdu někoho kdo mě nasměruje…" Mírně si vydechl, z jeho výdechu je cítit slabá vůně balzamovací tekutiny. "Je tam 9 001 místností; když jsem do nějaké přišel, byl jsem pouze nasměrován do další. Vypadalo to, že tam zůstanu navěky."'

    menu:
        '"A mohl bych ti položit ještě další otázku…"':
            # a73 # r9160
            jump zm1041_s14

        '"Můžu snad být v něčem nápomocen?"':
            # a74 # r9161
            $ zm1041Logic.r9161_action()
            jump zm1041_s24

        '"Pošetilý blázne… zajímalo by mě, jak dlouho tě nechali jen tak se potulovat."':
            # a75 # r9162
            $ zm1041Logic.r9162_action()
            jump zm1041_s25

        '"Přeji ti mnoho štěstí. Sbohem."':
            # a76 # r9163
            jump zm1041_dispose


# s20 # say9077
label zm1041_s20: # from 15.1
    nr '"To nemohu říci. Je to všechno tak frustrující!" na chvilku se odmlčel, aby se uklidnil, protáhnul si ztuhlé maso a šlachy na koleně, čímž se znovu dostal do klidu.'

    menu:
        '"Pokračuj, prosím, ve svém vyprávění."':
            # a77 # r9164
            jump zm1041_s19

        '"To si dokážu představit… Mám ještě další otázku…"':
            # a78 # r9165
            jump zm1041_s14

        '"Snad si ještě najdu čas doposlechnout si to jindy. Sbohem."':
            # a79 # r9166
            jump zm1041_dispose


# s21 # say9078
label zm1041_s21: # from 16.0
    nr '"Tak dobrá. Jak jsme tam postávali, dva zabijáci se znenadání dostali ze střechy na balkón, podle všeho aby zavraždili nebo unesli Slečnu Liu. Zatímco jsem pokřikoval na stráže, vytáhl jsem svou zbraň a vrhl jsem se jí na pomoc. Ve vzniknuvší bitvě se nám nějak podařilo rozbít zábradlí a všichni čtyři jsme spadli přímo do Nefritového portálu."'

    menu:
        '"Kamže? Do Nefritového portálu?"':
            # a80 # r9167
            jump zm1041_s23

        '"Počkej… ještě bych se chtěl zeptat na něco jiného."':
            # a81 # r9168
            jump zm1041_s14

        '"Možná se ještě uvidíme a ty mi to budeš moct dovyprávět. Zatím se měj."':
            # a82 # r9169
            jump zm1041_dispose


# s22 # say9079
label zm1041_s22: # from 17.0
    nr '"Možná ze začátku… ta myšlenka se mi zdá tak trošku… No ale, když jsem s ní chviličku mluvil, uvědomil jsem si, že ti -- Spalovači -- si myslí o smrti téměř to samé, co já. Mé tělo? Nic víc, než jen povoz na cestě k cíli. Věřím jejich „Pravé smrti“ - dostat se do povzneseného stavu, kterého já osobně chci dosáhnout… navždy se osvobodit ze sevření hmotného světa. Moje mrtvola, která už splnila svůj účel coby má smrtelná schránka, by tu měla ještě vykonat nějakou malou službičku. Tak je to mnohem lepší." Duch se na tebe zdvořile usmál.'

    menu:
        '"Chápu tě. Ještě bych se rád na něco zeptal…"':
            # a83 # r9170
            jump zm1041_s14

        '"Zajímavé, ale teď už bych měl asi jít. Sbohem."':
            # a84 # r9171
            jump zm1041_dispose


# s23 # say9080
label zm1041_s23: # from 21.0
    nr '"Ach! Odpusť mi, že jsem předpokládal tvou obeznámenost s touto… Nefritový portál je jakýsi okrouhlý bazén, který leží na Nádvoří. Je vydlážděn bílými a zelenými kočičími hlavami. Říká se mu portál, protože se proslýchá, že občas se na jeho třpytivé hladině objeví obraz - pohled do jiného světa."'

    menu:
        '"Prosím, pokračuj ve svém vyprávění."':
            # a85 # r9172
            jump zm1041_s27

        '"Ještě než začneš, se tě chci na něco zeptat…"':
            # a86 # r9173
            jump zm1041_s14

        '"Tak to je snad všechno. Sbohem."':
            # a87 # r9174
            jump zm1041_dispose


# s24 # say9081
label zm1041_s24: # from 19.1
    nr '"Tvá nabídka je velice laskavá. Bohužel se obávám, že zde není nic, co bys mohl udělat… Jsem si jist, že se časem opět navrátím na svou cestu životem. Přesto ti děkuji."'

    menu:
        '"Zajisté. Já… můžu se tě ještě na něco zeptat?"':
            # a88 # r9175
            jump zm1041_s14

        '"Žádné obavy. Stejně už bych měl jít; sbohem.""Žádné obavy. Stejně už bych měl jít; sbohem."':
            # a89 # r9176
            jump zm1041_dispose


# s25 # say9082
label zm1041_s25: # from 19.2 33.1 35.1
    nr 'Duch na tebe mrazivě pohleděl, mdlé plamínky se rozhořely kdesi hluboko v jeho očích; zdá se, že jsi ho urazil.'

    menu:
        '"Omlouvám se. Mohl bych se ještě na něco zeptat?"':
            # a90 # r9177
            jump zm1041_s14

        'Odejdi, nechej ducha vznášet se tam, kde je.':
            # a91 # r9178
            jump zm1041_dispose


# s26 # say9083
label zm1041_s26: # from 14.6
    nr '"Ach, to… err… to byla báseň. Velmi těžce se to překládá. Nemáš snad ještě jinou, lepší otázku?" Neklidně se na tebe usmál.'

    menu:
        '"Ano… ano, měl bych…"':
            # a92 # r9179
            jump zm1041_s14

        '"Ne… rád bych se totiž o té básni dozvěděl něco bližšího."':
            # a93 # r9180
            jump zm1041_s28

        '"Ne. Jestli to ale nebude tím, že jsem na odchodu. Sbohem."':
            # a94 # r9181
            jump zm1041_dispose


# s27 # say9084
label zm1041_s27: # from 23.0
    nr '"Jak už jsem říkal, spadli jsme do Nefritového portálu. Dřív mě nikdy ani nenapadlo, že by to mohl být skutečně portál, ale teď už vím, že je to pravda! Náhle jsem si totiž uvědomil, že ležím se zlomenou nohou v nějaké neznámé aleji. Pak jsem ze zorientoval v čase, pouze abych viděl, jak zabijáci utíkají a jak jeden z nich přitom nese Liu Xixi přehozenou přes rameno."'

    menu:
        '"Vskutku dost divné. Pokračuj, prosím."':
            # a95 # r9182
            jump zm1041_s31

        '"Vydrž. Rád bych se zeptal ještě na něco jiného…"':
            # a96 # r9183
            jump zm1041_s14

        '"Ah, děkuji ti. Ale… už bych měl asi jít. Sbohem."':
            # a97 # r9184
            jump zm1041_dispose


# s28 # say9085
label zm1041_s28: # from 26.1
    nr '"Tak dobrá." Na chvilku se zamyslel, zatímco konečky mrtvolných prstů klepal jedním o druhý. Po chvíli začal přednášet v pevném, odměřeném rytmu:  "Je obtížné se potkat, je obtížné se rozejít. "Stovka květin odkvete, severní vítr se odvrátí. "Až jarní červi zahynou, hedvábí se už nevrátí. "Až se z vosku stane prach, pak mohou slzy odeznít."  Zdvořile se na tebe usmál.'

    menu:
        '"Ještě bych měl další otázečku…"':
            # a98 # r9185
            jump zm1041_s14

        '"Zajímavé. Co to znamená?"':
            # a99 # r9186
            jump zm1041_s29

        '"Tím myslíš, že bych měl tvou duši radši nechat na pokoji? Urazil jsem tě snad něčím?"' if zm1041Logic.r9187_condition():
            # a100 # r9187
            jump zm1041_s30

        '"Díky, žes mi to vysvětlil. Zatím se měj."':
            # a101 # r9188
            jump zm1041_dispose


# s29 # say9086
label zm1041_s29: # from 28.1
    nr '"Víš, neříká se mi lehce, že to byl takříkajíc chabý pokus… teď říkám, že bude lepší, když necháš duše mrtvých o samotě. Už netoužím mít cokoli společného s tímto…" Rychlým gestem naznačil, že myslí vše kolem sebe. "…světem."'

    menu:
        '"Hmm. Ještě bych pro tebe měl pár dalších otázek."':
            # a102 # r9189
            jump zm1041_s14

        '"Chápu tě. Sbohem."':
            # a103 # r9190
            jump zm1041_dispose


# s30 # say9087
label zm1041_s30: # from 28.2
    nr '"Ach… mno… ne. Původně jsem to nechtěl říct tak přímo; vyhnout se tak konfrontaci, chápeš. Já prostě už nechci mít nic společného s tímto…" Rychlým gestem naznačil, že myslí vše kolem sebe. "…světem."'

    menu:
        '"Hmm. Ještě bych pro tebe měl pár dalších otázek."':
            # a104 # r9191
            jump zm1041_s14

        '"Chápu tě. Sbohem."':
            # a105 # r9192
            jump zm1041_dispose


# s31 # say9088
label zm1041_s31: # from 27.0
    nr '"No, to je téměř všechno. V bolestech jsem pokulhával kolem, než jsem našel někoho, kdo by vyléčil mou nohu; za své služby si vzal jen drobnou minci, co jsem měl u sebe. Od onoho léčitele a dalších lidí jsem se naučil jazyk místních, zatímco jsem hledal místo s těmi vrahy."'

    menu:
        '"A nikdy už jsi je nenašel, co?"':
            # a106 # r9193
            jump zm1041_s32

        '"Hmm. Víš, zdá se mi divné, jak rychle ses naučil tuto řeč…"':
            # a107 # r9194
            jump zm1041_s38

        '"Ještě než budeš pokračovat, bych se tě rád na něco zeptal…"':
            # a108 # r9195
            jump zm1041_s14

        '"Zbytek si poslechnu zase někdy příště; sbohem."':
            # a109 # r9196
            jump zm1041_dispose


# s32 # say9089
label zm1041_s32: # from 31.0 38.0
    nr '"Jednoho z nich jsem chytil, ale on odmítal promluvit. Popravil jsem ho tedy a jeho hlavu jsem dal do hedvábného pytle, takže jsem ji mohl předat Censorovi, když jsem mu přiváděl jeho dceru zpět." Na okamžik se zamračil a poté opět pokračoval. "Ten druhý zabiják… unikl mi. Vlastně, udělal nejen to; zavraždil mě dřív, než jsem stihl zabít já jeho. Je to smutné, ale už to mám všechno za sebou."'

    menu:
        '"A věděl jsi předtím, jak se vrátit zpět do své země, zachránil jsi tu… „Xi-xi?“':
            # a110 # r9197
            jump zm1041_s33

        '"Zajímavý příběh. Ještě bych se tě rád na něco zeptal…"':
            # a111 # r9198
            jump zm1041_s14

        '"Fascinující. No, asi už půjdu. Takže sbohem."':
            # a112 # r9199
            jump zm1041_dispose


# s33 # say9090
label zm1041_s33: # from 32.0
    nr '"Ne, ale jsem si jistý, že bych mohl najít pro tebe nějaké řešení. Zaměřme se teď na tohle."'

    menu:
        '"Možná že jsou pořád ještě ve městě. Snad bych ti nějak dokázal pomoci."':
            # a113 # r9200
            $ zm1041Logic.r9200_action()
            jump zm1041_s34

        '"Ono je jednoduché zapomenout se na své povinnosti, když už jsi mrtvý. Nevím, jestli bych se já dokázal vykašlat na něco takového."':
            # a114 # r9201
            $ zm1041Logic.r9201_action()
            jump zm1041_s25

        '"Zajímavé. Můžu se tě ještě na něco zeptat?"':
            # a115 # r9202
            jump zm1041_s14

        '"Hmm. Tak já už půjdu. Měj se dobře."':
            # a116 # r9203
            jump zm1041_dispose


# s34 # say9091
label zm1041_s34: # from 33.0
    nr '"Tvá nabídka z tebe dělá čestného muže… přesto, od doby mé smrti neuplynulo méně než sedmdesát pět let. Muž, jehož rukou jsem zahynul, je teď mrtvý též, stejně tak jako Xixi."'

    menu:
        '"Hmm. No tak nic. Mám ještě nějaké otázky…"':
            # a117 # r9205
            jump zm1041_s14

        '"Zapomeň na to. Sbohem."':
            # a118 # r9206
            jump zm1041_dispose


# s35 # say9092
label zm1041_s35: # -
    nr '"Ten zabiják mohl vypadat podobně jako já, na svém čele měl vytetován lotosový květ." Když si všiml tvých rozpaků, dodal "Lotos je druh květiny, má sedm okvětních lístků. Liu Xixi je mladá dívka; je jí pouze čtrnáct let. Možná že ona nebo ti zabijáci ví, kde se nacházela cesta zpět a jak ji opět aktivovat."'

    menu:
        '"Kdybych ji viděl, udělám, co budu moct, abych jí pomohl - pro tvoji památku."':
            # a119 # r9207
            $ zm1041Logic.r9207_action()
            jump zm1041_s36

        '"Na tohle nemám čas."':
            # a120 # r9208
            $ zm1041Logic.r9208_action()
            jump zm1041_s25

        '"Dobrá. Mám pro tebe ještě pár otázek…"':
            # a121 # r9209
            $ zm1041Logic.r9209_action()
            jump zm1041_s14

        '"Víc už nepotřebuju. Sbohem."':
            # a122 # r9210
            $ zm1041Logic.r9210_action()
            jump zm1041_dispose


# s36 # say9093
label zm1041_s36: # from 35.0
    nr '"Jsi velice čestný muž. Pro mě to už nedělej, nicméně… právě dívce a jejímu otci jsi ohromně pomohl."'

    menu:
        '"Fajn, měl bych ještě pár otázeček…"':
            # a123 # r9211
            jump zm1041_s14

        '"Rozumím. Tak tedy sbohem, duchu."':
            # a124 # r9212
            jump zm1041_dispose


# s37 # say9094
label zm1041_s37: # from 0.4 # IF ~  Global("Bei","GLOBAL",1)
    nr '"Vlastně jsem ani neočekával, že tě znovu uvidím." Duch se ti uctivě poklonil, ale jeho výraz zůstal nezměněn. "Takže, co pro tebe mohu udělat?"'

    menu:
        '"Otázečku…"':
            # a125 # r9213
            jump zm1041_s14

        '"Ale nic; nechám tě tedy na pokoji."':
            # a126 # r9214
            jump zm1041_dispose


# s38 # say9718
label zm1041_s38: # from 31.1
    nr '"Lingvistika je pro mě vlastně velice zajímavá oblast. Když jsem se stal učencem, zjistil jsem, že se dokáži naučit nové jazyky bez jakýchkoli problémů."'

    menu:
        '"To by to vysvětlovalo. Takže vrahy jsi nikdy nenašel?"':
            # a127 # r9719
            jump zm1041_s32

        '"Aha. Teď bych se tě chtěl zeptat ještě na něco jiného…"':
            # a128 # r9720
            jump zm1041_s14

        '"Rozumím. Děkuju za rozhovor. Sbohem."':
            # a129 # r9721
            jump zm1041_dispose
