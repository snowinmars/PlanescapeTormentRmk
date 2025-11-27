init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1094_logic import Zm1094Logic
    zm1094Logic = Zm1094Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1094.DLG
# ###


# s0 # say6562
label zm1094_s0: # - # IF ~  Global("Asonje","GLOBAL",0)
    nr 'Tato chodící mrtvola má na čele vyřezáno číslo "1094". Ústa má sešita a kolem ní se povaluje chemický pach čerstvého formaldehydu. Navzdory bledým, propadlým rysům a neživým mléčným očím je jasné, že to byl kdysi pohledný mladík.{#zm1094_s0_}'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"{#zm1094_s0_r6565}' if zm1094Logic.r6565_condition():
            # a0 # r6565
            $ zm1094Logic.r6565_action()
            jump zm1094_s1

        '"Tak… je tam dál vidět něco zajímavého?"{#zm1094_s0_r6566}' if zm1094Logic.r6566_condition():
            # a1 # r6566
            jump zm1094_s1

        '"Vím, že nejsi zombie, jasný? Mě neoklameš."{#zm1094_s0_r6567}' if zm1094Logic.r6567_condition():
            # a2 # r6567
            jump zm1094_s1

        'Použij svou schopnost Kosti vyprávějte na mrtvolu.{#zm1094_s0_r6568}' if zm1094Logic.r6568_condition():
            # a3 # r6568
            $ zm1094Logic.r6568_action()
            jump zm1094_s2

        '"Rád jsem si s tebou popovídal. Sbohem."{#zm1094_s0_r6569}':
            # a4 # r6569
            jump zm1094_dispose

        'Nechej mrtvolu být.{#zm1094_s0_r6570}':
            # a5 # r6570
            jump zm1094_dispose


# s1 # say6563
label zm1094_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.{#zm1094_s1_}'

    menu:
        'Nechej mrtvolu být.{#zm1094_s1_r6571}':
            # a6 # r6571
            jump zm1094_dispose


# s2 # say6564
label zm1094_s2: # from 0.3
    nr 'Mrtvola se na chvíli zachvěla, jak ještě jednou vnikl duch do této opuštěné smrtelné skořápky. Na vteřinu se v očích zombie objevilo zdání života a začala se kolem sebe rozhlížet s výrazem zvědavé rozpačitosti v obličeji. Celé tělo teď vypadá, jako by bylo obklopeno jemnou, zlatou aurou.{#zm1094_s2_}'

    menu:
        '"Rád bych se tě na něco zeptal…"{#zm1094_s2_r6572}':
            # a7 # r6572
            jump zm1094_s3

        'Opusť ducha.{#zm1094_s2_r9246}':
            # a8 # r9246
            jump zm1094_dispose


# s3 # say9224
label zm1094_s3: # from 2.0
    nr 'Náhle se zdá, že tě duch konečně bere na vědomí. Velice vřele a přátelsky se na tebe usmál, čímž očividně překvapil všechny stehy kolem své pusy natolik, že popraskaly úžasem. Do jeho očí se poté vedral udivený výraz a duch si svými prsty přejel přes rty, načež pokrčil rameny a kývl hlavou na pozdrav. "Kde… kde to jsem? Jaké to podivné místo. Z… znám tě?" Z jeho vyschlého hrdla se ozvalo mírné zakašlání.{#zm1094_s3_}'

    menu:
        '"Hele, duchu, *ty* budeš odpovídat na *moje* otázky. Jasný?"{#zm1094_s3_r9247}':
            # a9 # r9247
            $ zm1094Logic.r9247_action()
            jump zm1094_s4

        '"Jsi… teda aspoň tvoje ostatky… v márnici."{#zm1094_s3_r9248}':
            # a10 # r9248
            jump zm1094_s13

        '"Ne, nemyslím, že bys mě znal. A teď bych pro tebe měl pár otázek…"{#zm1094_s3_r9249}':
            # a11 # r9249
            jump zm1094_s14

        '"No, to je důvod k zamyšlení. Sbohem."{#zm1094_s3_r9250}':
            # a12 # r9250
            jump zm1094_dispose


# s4 # say9225
label zm1094_s4: # from 3.0
    nr 'Duchovo přátelské chování se během okamžiku vypařilo. Na moment se na tebe zamračil, z jeho zchřadlých šedých rtů mu visely cáry rozervaných stehů. "Jak myslíš, ptej se na co chceš." Zadíval se do prázdna, očividně znuděný.{#zm1094_s4_}'

    menu:
        '"Kdo vlastně jsi?"{#zm1094_s4_r9251}':
            # a13 # r9251
            jump zm1094_s5

        '"Odkud pocházíš?"{#zm1094_s4_r9252}':
            # a14 # r9252
            jump zm1094_s6

        '"Jak ses sem dostal? Tím myslím tvoje tělo."{#zm1094_s4_r9253}':
            # a15 # r9253
            jump zm1094_s7

        '"Kde jsi… kde tvá duše spočívá… teď?"{#zm1094_s4_r9254}':
            # a16 # r9254
            jump zm1094_s8

        '"Co všechno víš o tomto místě?"{#zm1094_s4_r9255}':
            # a17 # r9255
            jump zm1094_s9

        '"Neznáš náhodou někoho jménem Pharod?"{#zm1094_s4_r9256}' if zm1094Logic.r9256_condition():
            # a18 # r9256
            jump zm1094_s10

        '"Vlastně už nic nepotřebuju. Sbohem."{#zm1094_s4_r9257}':
            # a19 # r9257
            jump zm1094_dispose


# s5 # say9226
label zm1094_s5: # from 4.0 11.0
    nr '"Jmenuju se Asonje. Už můžu jít?"{#zm1094_s5_}'

    menu:
        '"Nemůžeš, chci se tě totiž na něco zeptat…"{#zm1094_s5_r9258}':
            # a20 # r9258
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."{#zm1094_s5_r9259}':
            # a21 # r9259
            jump zm1094_dispose


# s6 # say9227
label zm1094_s6: # from 4.1 11.1
    nr '"Nemůžu si vzpomenout. Ještě něco dalšího?"{#zm1094_s6_}'

    menu:
        '"Ano. Několik dalších otázek…"{#zm1094_s6_r9260}':
            # a22 # r9260
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."{#zm1094_s6_r9261}':
            # a23 # r9261
            jump zm1094_dispose


# s7 # say9228
label zm1094_s7: # from 4.2 11.2
    nr 'Duch pokrčil rameny a zadíval se do neznáma. "To nedovedu říct. Z jakých příčin? Nevím." Pevně sevřel své rty a nešťastně se na tebe podíval, v očích se mu zlostně zablesklo. "Potřebuješ ode mne ještě něco jiného?"{#zm1094_s7_}'

    menu:
        '"Ano. Několik dalších otázek…"{#zm1094_s7_r9262}':
            # a24 # r9262
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."{#zm1094_s7_r9263}':
            # a25 # r9263
            jump zm1094_dispose


# s8 # say9229
label zm1094_s8: # from 4.3 11.3
    nr '"Má duše existuje v Arborei…" Na chviličku se odmlčel, pevně pohroužen do svých myšlenek. "A teď bych si přál vrátit se zpět do mého domova. Pryč od tvého sobectví, netaktnosti a otravných otázek. Můžu tedy jít?"{#zm1094_s8_}'

    menu:
        '"Nemůžeš, chci se tě totiž na něco zeptat…"{#zm1094_s8_r9264}':
            # a26 # r9264
            jump zm1094_s11

        '"Ano, můžeš. Sbohem."{#zm1094_s8_r9265}':
            # a27 # r9265
            jump zm1094_dispose


# s9 # say9230
label zm1094_s9: # from 4.4 11.4
    nr 'Byl jsi obdarován popudlivým pohledem. "Samozřejmě že nic!" Zatřásl znuděně hlavou, rozervané stehy se mu houpaly na rtech.{#zm1094_s9_}'

    menu:
        '"A jak se tedy tvoje mrtvola dostala k práci tady?"{#zm1094_s9_r9266}':
            # a28 # r9266
            jump zm1094_s12

        '"Mám ještě další otázečku…"{#zm1094_s9_r9267}':
            # a29 # r9267
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."{#zm1094_s9_r9268}':
            # a30 # r9268
            jump zm1094_dispose


# s10 # say9231
label zm1094_s10: # from 4.5 11.5
    nr '"Ne." Začínáš mít dojem, že o tebe duše nemá ani prachbídný zájem.{#zm1094_s10_}'

    menu:
        '"Tak se tě ještě na něco zeptám…"{#zm1094_s10_r9269}':
            # a31 # r9269
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."{#zm1094_s10_r9270}':
            # a32 # r9270
            jump zm1094_dispose


# s11 # say9232
label zm1094_s11: # from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
    nr 'Na tvá slova si duch dlouze povzdychl, čímž nasytil okolní vzduch další dávkou formaldehydu přímo ze svých plic. "Ano, ano… jen se ptej."{#zm1094_s11_}'

    menu:
        '"Kdo vlastně jsi?"{#zm1094_s11_r9271}':
            # a33 # r9271
            jump zm1094_s5

        '"Odkud pocházíš?"{#zm1094_s11_r9272}':
            # a34 # r9272
            jump zm1094_s6

        '"Jak ses sem dostal? Tím myslím tvoje tělo."{#zm1094_s11_r9273}':
            # a35 # r9273
            jump zm1094_s7

        '"Kde jsi… kde tvá duše spočívá… teď?"{#zm1094_s11_r9274}':
            # a36 # r9274
            jump zm1094_s8

        '"Co všechno víš o tomto místě?"{#zm1094_s11_r9275}':
            # a37 # r9275
            jump zm1094_s9

        '"Neznáš náhodou člověka jménem Pharod?"{#zm1094_s11_r9276}' if zm1094Logic.r9276_condition():
            # a38 # r9276
            jump zm1094_s10

        '"Vlastně už nic nepotřebuju. Sbohem."{#zm1094_s11_r9277}':
            # a39 # r9277
            jump zm1094_dispose


# s12 # say9233
label zm1094_s12: # from 9.0
    nr '"Mám stejné otázky jako tvá prostá mysl. Pokud dovolíš, vrátím se zase zpět tam, kam patřím."{#zm1094_s12_}'

    menu:
        '"Ne. Mám pro tebe další otázku…"{#zm1094_s12_r9278}':
            # a40 # r9278
            jump zm1094_s11

        '"Tak to je prozatím vše. Sbohem."{#zm1094_s12_r9279}':
            # a41 # r9279
            jump zm1094_dispose


# s13 # say9234
label zm1094_s13: # from 3.1
    nr 'Po tvých slovech se zmateně rozhlédl, ale pak se zasmál. "Ano! Tak to už dává smysl?, ne? A teď - znám tě?" Naklonil hlavu na jednu stranu a intenzivně se do tebe zahleděl. Hádání tvé pravé identity nejspíš považuje za nějakou zábavnou hru.{#zm1094_s13_}'

    menu:
        '"O tom velice pochybuju. A teď, chtěl bych se tě na něco zeptat…"{#zm1094_s13_r9280}':
            # a42 # r9280
            jump zm1094_s14

        '"To je důvod k zamyšlení. Sbohem."{#zm1094_s13_r9281}':
            # a43 # r9281
            jump zm1094_dispose


# s14 # say9235
label zm1094_s14: # from 3.2 13.0
    nr 'Duch pokrčil rameny a mírně se pousmál. "Nejspíš máš pravdu! Takže… na co ses mě chtěl zeptat?" S nepřítomným pohledem si začal vytahovat zbylé stehy ze rtů a házet je na zem, jeden za druhým.{#zm1094_s14_}'

    menu:
        '"Kdo vlastně jsi?"{#zm1094_s14_r9282}' if zm1094Logic.r9282_condition():
            # a44 # r9282
            jump zm1094_s15

        '"Kdo jsi?"{#zm1094_s14_r9286}' if zm1094Logic.r9286_condition():
            # a45 # r9286
            jump zm1094_s25

        '"Odkud pocházíš?"{#zm1094_s14_r9287}':
            # a46 # r9287
            jump zm1094_s16

        '"Jak ses sem vlastně dostal? Tím myslím tvoje tělo."{#zm1094_s14_r9288}':
            # a47 # r9288
            jump zm1094_s17

        '"Kde jsi… kde tvá duše spočívá… nyní?"{#zm1094_s14_r9317}':
            # a48 # r9317
            jump zm1094_s18

        '"Co všechno víš o tomto místě?"{#zm1094_s14_r9318}':
            # a49 # r9318
            jump zm1094_s19

        '"Neznáš náhodou někoho jménem Pharod?"{#zm1094_s14_r9319}' if zm1094Logic.r9319_condition():
            # a50 # r9319
            jump zm1094_s20

        '"Vlastně už nic nepotřebuju. Sbohem."{#zm1094_s14_r9320}':
            # a51 # r9320
            jump zm1094_dispose


# s15 # say9236
label zm1094_s15: # from 14.0 22.0
    nr '"Jmenoval jsem se Asonje. Mohl bych vědět, jak ty?"{#zm1094_s15_}'

    menu:
        '"Já… já nevím."{#zm1094_s15_r9289}':
            # a52 # r9289
            $ zm1094Logic.r9289_action()
            jump zm1094_s21

        '"To ti povím někdy jindy. Teď se chci zeptat na něco jiného…"{#zm1094_s15_r9290}':
            # a53 # r9290
            $ zm1094Logic.r9290_action()
            jump zm1094_s22

        '"Dozvíš se to někdy jindy. Sbohem."{#zm1094_s15_r9291}':
            # a54 # r9291
            $ zm1094Logic.r9291_action()
            jump zm1094_dispose


# s16 # say9237
label zm1094_s16: # from 14.2 22.2
    nr '"Jsem z mnoha míst! Ale abych pravdu řekl, kde jsem se narodil, to sám nevím. Ve svém životě jsem mnoho cestoval a mnoha místům jsem říkal domov. Teď tak říkám Aborei…" Zdá se velmi spokojen.{#zm1094_s16_}'

    menu:
        '"Aha. Mám ještě další otázky…"{#zm1094_s16_r9292}':
            # a55 # r9292
            jump zm1094_s22

        '"Už tě nebudu déle otravovat. Měj se."{#zm1094_s16_r9293}':
            # a56 # r9293
            jump zm1094_dispose


# s17 # say9238
label zm1094_s17: # from 14.3 22.3
    nr 'Ze rtů se mu náhle vypařil smích a duch se na tebe zadíval se znepokojeným pohledem. "To je hrozné… já nevím! Vlastně ani nevím, jak jsem umřel." Pokrčil rameny. "A není to nakonec jedno?" Jeho tváři opět dominuje úsměv typu „sýýýýr“ a tobě začíná docházet, proč měl sešité rty.{#zm1094_s17_}'

    menu:
        '"Měl bych ještě další otázku…"{#zm1094_s17_r9294}':
            # a57 # r9294
            jump zm1094_s22

        '"Už tě nebudu déle otravovat. Měj se."{#zm1094_s17_r9295}':
            # a58 # r9295
            jump zm1094_dispose


# s18 # say9239
label zm1094_s18: # from 14.4 22.4
    nr '"Na místě zvaném Arborea! Je to nejúžasnější místo, jaké si dovedeš představit. Nikdy za svého života jsem neviděl tak klidné a mírumilovné místo. Tak… tak nádherné…" Na okamžik se odmlčel, ztracen v osidlech svých vzpomínek. "Ta krása té země, těch lidí -- velkolepá. Povím ti, opravdu už mi začíná scházet!"{#zm1094_s18_}'

    menu:
        '"Aha. Můžu se tě zeptat ještě na něco?"{#zm1094_s18_r9296}':
            # a59 # r9296
            jump zm1094_s22

        '"Tak to je prozatím vše. Sbohem."{#zm1094_s18_r9297}':
            # a60 # r9297
            jump zm1094_dispose


# s19 # say9240
label zm1094_s19: # from 14.5 22.5
    nr '"Skoro nic. Ze srandy jsem jisté Spalovačce podepsal smlouvu… vyprávěla mi něco o nějakém hrozném místě a pověděla, že si z mojí mrtvoly udělají pomocníka. Řekl jsem si „vždyť tohle tělo stejně nebudu v příštím životě potřebovat, tak proč ne? Vezmu si to stříbro a utratím ho za nějaké dobré víno nebo ženu“. Pousmál se a v jeho očích vzplanuly radostné plamínky.{#zm1094_s19_}'

    menu:
        '"Nevíš náhodou něco o městě mimo Márnici?"{#zm1094_s19_r9298}':
            # a61 # r9298
            jump zm1094_s24

        '"Mohl bych se tě zeptat na pár dalších věcí?"{#zm1094_s19_r9299}':
            # a62 # r9299
            jump zm1094_s22

        '"Už tě nebudu déle otravovat. Měj se."{#zm1094_s19_r9300}':
            # a63 # r9300
            jump zm1094_dispose


# s20 # say9241
label zm1094_s20: # from 14.6 22.6
    nr 'Duch se na chviličku zamyslel. "Ne, obávám se, že o něm jsem nikdy neslyšel. To je nějaký tvůj přítel?"{#zm1094_s20_}'

    menu:
        '"Asi ano. Ještě na něco bych se tě rád zeptal…"{#zm1094_s20_r9301}':
            # a64 # r9301
            jump zm1094_s22

        '"To ještě nevím. Sbohem."{#zm1094_s20_r9302}':
            # a65 # r9302
            jump zm1094_dispose


# s21 # say9242
label zm1094_s21: # from 15.0
    nr 'Zaujatě na tebe pohleděl. "To je divné. Ale přece ti musím nějak říkat, ne?" Tentokrát se na tebe podíval s netrpělivostí v očích.{#zm1094_s21_}'

    menu:
        '"Tak si něco vymysli. Teď bych se tě rád na něco zeptal…"{#zm1094_s21_r9303}':
            # a66 # r9303
            jump zm1094_s22

        'Vymysli si jméno: "Já si nevzpomínám… snad „Adahn?“"{#zm1094_s21_r9304}':
            # a67 # r9304
            $ zm1094Logic.r9304_action()
            jump zm1094_s23

        '"To přece není důležité. Sbohem."{#zm1094_s21_r9305}':
            # a68 # r9305
            jump zm1094_dispose


# s22 # say9243
label zm1094_s22: # from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
    nr '"Jak si přeješ. Jen se ptej!" Spokojeně se usmál a trpělivě očekával tvůj další dotaz. Ani poslední stehy už nevydržely jeho úsměv, který ti už nepřipadá tak zvláštní, jak dříve.{#zm1094_s22_}'

    menu:
        '"Kdo vlastně jsi?"{#zm1094_s22_r9306}' if zm1094Logic.r9306_condition():
            # a69 # r9306
            jump zm1094_s15

        '"Kdo vlastně jsi?"{#zm1094_s22_r9307}' if zm1094Logic.r9307_condition():
            # a70 # r9307
            jump zm1094_s25

        '"Odkud pocházíš?"{#zm1094_s22_r9308}':
            # a71 # r9308
            jump zm1094_s16

        '"Jak ses sem vlastně dostal. Myslím tvoje tělo."{#zm1094_s22_r9309}':
            # a72 # r9309
            jump zm1094_s17

        '"Kde jsi… kde tvá duše spočívá… nyní?"{#zm1094_s22_r9310}':
            # a73 # r9310
            jump zm1094_s18

        '"Co všechno víš o tomto místě?"{#zm1094_s22_r9311}':
            # a74 # r9311
            jump zm1094_s19

        '"Neznáš náhodou někoho jménem Pharod?"{#zm1094_s22_r9312}' if zm1094Logic.r9312_condition():
            # a75 # r9312
            jump zm1094_s20

        '"Vlastně už nic nepotřebuju. Sbohem."{#zm1094_s22_r9321}':
            # a76 # r9321
            jump zm1094_dispose


# s23 # say9244
label zm1094_s23: # from 21.1
    nr 'Když viděl, jak se tváříš, od plic se zasmál. "Tak přece! Takže Adahn, povídáš, příteli. Takže Adahne, máš pro mě snad nějakou otázku?"{#zm1094_s23_}'

    menu:
        '"Ano, jedna by se našla…"{#zm1094_s23_r9313}':
            # a77 # r9313
            jump zm1094_s22

        '"Ne, už musím jít. Sbohem."{#zm1094_s23_r9314}':
            # a78 # r9314
            jump zm1094_dispose


# s24 # say9245
label zm1094_s24: # from 19.0
    nr '"O Sigilu?" Když jsi přikývl, úsměv mrtvoly se roztáhl ještě více. "No, o tohle tě nepřipravím! Jen běž a prozkoumej ho sám! Ztrať se v ulicích, v hospodách, v lidech… ale dávej pozor! Sigil dokáže být nebezpečný stejně jako podivuhodný. Ale to ho přece dělá zajímavým, ne?"{#zm1094_s24_}'

    menu:
        '"Jo, taky si myslím. Ale teď bych se tě chtěl zeptat na něco jiného…"{#zm1094_s24_r9315}':
            # a79 # r9315
            jump zm1094_s22

        '"Asi ano. Sbohem."{#zm1094_s24_r9316}':
            # a80 # r9316
            jump zm1094_dispose


# s25 # say9283
label zm1094_s25: # from 14.1 22.1
    nr '"Jmenoval jsem se Asonje."{#zm1094_s25_}'

    menu:
        '"Měl bych ještě další otázku…"{#zm1094_s25_r9284}':
            # a81 # r9284
            jump zm1094_s22

        '"Tak to je prozatím vše. Sbohem."{#zm1094_s25_r9285}':
            # a82 # r9285
            jump zm1094_dispose


# s26 # say20061
label zm1094_s26: # - # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    nr '"Zas zpátky, hmm?" Široce se usmál.{#zm1094_s26_}'

    menu:
        '"Mám pár otázek…"{#zm1094_s26_r20063}':
            # a83 # r20063
            jump zm1094_s22

        '"Jenom procházím kolem. Sbohem."{#zm1094_s26_r20064}':
            # a84 # r20064
            jump zm1094_dispose


# s27 # say20062
label zm1094_s27: # - # IF ~  Global("Asonje","GLOBAL",3)
    nr '"Oh, ty… zase." Zamračil se a sklopil pohled stranou.{#zm1094_s27_}'

    menu:
        '"Mám pár otázek…"{#zm1094_s27_r20065}':
            # a85 # r20065
            jump zm1094_s11

        '"Jenom procházím kolem. Sbohem."{#zm1094_s27_r20066}':
            # a86 # r20066
            jump zm1094_dispose
