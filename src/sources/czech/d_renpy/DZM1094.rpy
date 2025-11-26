init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1094_logic import Zm1094Logic
    zm1094Logic = Zm1094Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1094.DLG
# ###


# s0 # say6562
label zm1094_s0: # - # IF ~  Global("Asonje","GLOBAL",0)
    nr 'Tato chodící mrtvola má na čele vyřezáno číslo "1094". Ústa má sešita a kolem ní se povaluje chemický pach čerstvého formaldehydu. Navzdory bledým, propadlým rysům a neživým mléčným očím je jasné, že to byl kdysi pohledný mladík.'

    menu:
        '"Tak… je tam dál vidět něco zajímavého?"' if zm1094Logic.r6565_condition():
            # a0 # r6565
            $ zm1094Logic.r6565_action()
            jump zm1094_s1

        '"Tak… je tam dál vidět něco zajímavého?"' if zm1094Logic.r6566_condition():
            # a1 # r6566
            jump zm1094_s1

        '"Vím, že nejsi zombie, jasný? Mě neoklameš."' if zm1094Logic.r6567_condition():
            # a2 # r6567
            jump zm1094_s1

        'Použij svou schopnost Kosti vyprávějte na mrtvolu.' if zm1094Logic.r6568_condition():
            # a3 # r6568
            $ zm1094Logic.r6568_action()
            jump zm1094_s2

        '"Rád jsem si s tebou popovídal. Sbohem."':
            # a4 # r6569
            jump zm1094_dispose

        'Nechej mrtvolu být.':
            # a5 # r6570
            jump zm1094_dispose


# s1 # say6563
label zm1094_s1: # from 0.0 0.1 0.2
    nr 'Mrtvola na tebe stále zírá.'

    menu:
        'Nechej mrtvolu být.':
            # a6 # r6571
            jump zm1094_dispose


# s2 # say6564
label zm1094_s2: # from 0.3
    nr 'Mrtvola se na chvíli zachvěla, jak ještě jednou vnikl duch do této opuštěné smrtelné skořápky. Na vteřinu se v očích zombie objevilo zdání života a začala se kolem sebe rozhlížet s výrazem zvědavé rozpačitosti v obličeji. Celé tělo teď vypadá, jako by bylo obklopeno jemnou, zlatou aurou.'

    menu:
        '"Rád bych se tě na něco zeptal…"':
            # a7 # r6572
            jump zm1094_s3

        'Opusť ducha.':
            # a8 # r9246
            jump zm1094_dispose


# s3 # say9224
label zm1094_s3: # from 2.0
    nr 'Náhle se zdá, že tě duch konečně bere na vědomí. Velice vřele a přátelsky se na tebe usmál, čímž očividně překvapil všechny stehy kolem své pusy natolik, že popraskaly úžasem. Do jeho očí se poté vedral udivený výraz a duch si svými prsty přejel přes rty, načež pokrčil rameny a kývl hlavou na pozdrav. "Kde… kde to jsem? Jaké to podivné místo. Z… znám tě?" Z jeho vyschlého hrdla se ozvalo mírné zakašlání.'

    menu:
        '"Hele, duchu, *ty* budeš odpovídat na *moje* otázky. Jasný?"':
            # a9 # r9247
            $ zm1094Logic.r9247_action()
            jump zm1094_s4

        '"Jsi… teda aspoň tvoje ostatky… v márnici."':
            # a10 # r9248
            jump zm1094_s13

        '"Ne, nemyslím, že bys mě znal. A teď bych pro tebe měl pár otázek…"':
            # a11 # r9249
            jump zm1094_s14

        '"No, to je důvod k zamyšlení. Sbohem."':
            # a12 # r9250
            jump zm1094_dispose


# s4 # say9225
label zm1094_s4: # from 3.0
    nr 'Duchovo přátelské chování se během okamžiku vypařilo. Na moment se na tebe zamračil, z jeho zchřadlých šedých rtů mu visely cáry rozervaných stehů. "Jak myslíš, ptej se na co chceš." Zadíval se do prázdna, očividně znuděný.'

    menu:
        '"Kdo vlastně jsi?"':
            # a13 # r9251
            jump zm1094_s5

        '"Odkud pocházíš?"':
            # a14 # r9252
            jump zm1094_s6

        '"Jak ses sem dostal? Tím myslím tvoje tělo."':
            # a15 # r9253
            jump zm1094_s7

        '"Kde jsi… kde tvá duše spočívá… teď?"':
            # a16 # r9254
            jump zm1094_s8

        '"Co všechno víš o tomto místě?"':
            # a17 # r9255
            jump zm1094_s9

        '"Neznáš náhodou někoho jménem Pharod?"' if zm1094Logic.r9256_condition():
            # a18 # r9256
            jump zm1094_s10

        '"Vlastně už nic nepotřebuju. Sbohem."':
            # a19 # r9257
            jump zm1094_dispose


# s5 # say9226
label zm1094_s5: # from 4.0 11.0
    nr '"Jmenuju se Asonje. Už můžu jít?"'

    menu:
        '"Nemůžeš, chci se tě totiž na něco zeptat…"':
            # a20 # r9258
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."':
            # a21 # r9259
            jump zm1094_dispose


# s6 # say9227
label zm1094_s6: # from 4.1 11.1
    nr '"Nemůžu si vzpomenout. Ještě něco dalšího?"'

    menu:
        '"Ano. Několik dalších otázek…"':
            # a22 # r9260
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."':
            # a23 # r9261
            jump zm1094_dispose


# s7 # say9228
label zm1094_s7: # from 4.2 11.2
    nr 'Duch pokrčil rameny a zadíval se do neznáma. "To nedovedu říct. Z jakých příčin? Nevím." Pevně sevřel své rty a nešťastně se na tebe podíval, v očích se mu zlostně zablesklo. "Potřebuješ ode mne ještě něco jiného?"'

    menu:
        '"Ano. Několik dalších otázek…"':
            # a24 # r9262
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."':
            # a25 # r9263
            jump zm1094_dispose


# s8 # say9229
label zm1094_s8: # from 4.3 11.3
    nr '"Má duše existuje v Arborei…" Na chviličku se odmlčel, pevně pohroužen do svých myšlenek. "A teď bych si přál vrátit se zpět do mého domova. Pryč od tvého sobectví, netaktnosti a otravných otázek. Můžu tedy jít?"'

    menu:
        '"Nemůžeš, chci se tě totiž na něco zeptat…"':
            # a26 # r9264
            jump zm1094_s11

        '"Ano, můžeš. Sbohem."':
            # a27 # r9265
            jump zm1094_dispose


# s9 # say9230
label zm1094_s9: # from 4.4 11.4
    nr 'Byl jsi obdarován popudlivým pohledem. "Samozřejmě že nic!" Zatřásl znuděně hlavou, rozervané stehy se mu houpaly na rtech.'

    menu:
        '"A jak se tedy tvoje mrtvola dostala k práci tady?"':
            # a28 # r9266
            jump zm1094_s12

        '"Mám ještě další otázečku…"':
            # a29 # r9267
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."':
            # a30 # r9268
            jump zm1094_dispose


# s10 # say9231
label zm1094_s10: # from 4.5 11.5
    nr '"Ne." Začínáš mít dojem, že o tebe duše nemá ani prachbídný zájem.'

    menu:
        '"Tak se tě ještě na něco zeptám…"':
            # a31 # r9269
            jump zm1094_s11

        '"Víc už od tebe nepotřebuji. Sbohem."':
            # a32 # r9270
            jump zm1094_dispose


# s11 # say9232
label zm1094_s11: # from 5.0 6.0 7.0 8.0 9.1 10.0 12.0 27.0
    nr 'Na tvá slova si duch dlouze povzdychl, čímž nasytil okolní vzduch další dávkou formaldehydu přímo ze svých plic. "Ano, ano… jen se ptej."'

    menu:
        '"Kdo vlastně jsi?"':
            # a33 # r9271
            jump zm1094_s5

        '"Odkud pocházíš?"':
            # a34 # r9272
            jump zm1094_s6

        '"Jak ses sem dostal? Tím myslím tvoje tělo."':
            # a35 # r9273
            jump zm1094_s7

        '"Kde jsi… kde tvá duše spočívá… teď?"':
            # a36 # r9274
            jump zm1094_s8

        '"Co všechno víš o tomto místě?"':
            # a37 # r9275
            jump zm1094_s9

        '"Neznáš náhodou člověka jménem Pharod?"' if zm1094Logic.r9276_condition():
            # a38 # r9276
            jump zm1094_s10

        '"Vlastně už nic nepotřebuju. Sbohem."':
            # a39 # r9277
            jump zm1094_dispose


# s12 # say9233
label zm1094_s12: # from 9.0
    nr '"Mám stejné otázky jako tvá prostá mysl. Pokud dovolíš, vrátím se zase zpět tam, kam patřím."'

    menu:
        '"Ne. Mám pro tebe další otázku…"':
            # a40 # r9278
            jump zm1094_s11

        '"Tak to je prozatím vše. Sbohem."':
            # a41 # r9279
            jump zm1094_dispose


# s13 # say9234
label zm1094_s13: # from 3.1
    nr 'Po tvých slovech se zmateně rozhlédl, ale pak se zasmál. "Ano! Tak to už dává smysl?, ne? A teď - znám tě?" Naklonil hlavu na jednu stranu a intenzivně se do tebe zahleděl. Hádání tvé pravé identity nejspíš považuje za nějakou zábavnou hru.'

    menu:
        '"O tom velice pochybuju. A teď, chtěl bych se tě na něco zeptat…"':
            # a42 # r9280
            jump zm1094_s14

        '"To je důvod k zamyšlení. Sbohem."':
            # a43 # r9281
            jump zm1094_dispose


# s14 # say9235
label zm1094_s14: # from 3.2 13.0
    nr 'Duch pokrčil rameny a mírně se pousmál. "Nejspíš máš pravdu! Takže… na co ses mě chtěl zeptat?" S nepřítomným pohledem si začal vytahovat zbylé stehy ze rtů a házet je na zem, jeden za druhým.'

    menu:
        '"Kdo vlastně jsi?"' if zm1094Logic.r9282_condition():
            # a44 # r9282
            jump zm1094_s15

        '"Kdo jsi?"' if zm1094Logic.r9286_condition():
            # a45 # r9286
            jump zm1094_s25

        '"Odkud pocházíš?"':
            # a46 # r9287
            jump zm1094_s16

        '"Jak ses sem vlastně dostal? Tím myslím tvoje tělo."':
            # a47 # r9288
            jump zm1094_s17

        '"Kde jsi… kde tvá duše spočívá… nyní?"':
            # a48 # r9317
            jump zm1094_s18

        '"Co všechno víš o tomto místě?"':
            # a49 # r9318
            jump zm1094_s19

        '"Neznáš náhodou někoho jménem Pharod?"' if zm1094Logic.r9319_condition():
            # a50 # r9319
            jump zm1094_s20

        '"Vlastně už nic nepotřebuju. Sbohem."':
            # a51 # r9320
            jump zm1094_dispose


# s15 # say9236
label zm1094_s15: # from 14.0 22.0
    nr '"Jmenoval jsem se Asonje. Mohl bych vědět, jak ty?"'

    menu:
        '"Já… já nevím."':
            # a52 # r9289
            $ zm1094Logic.r9289_action()
            jump zm1094_s21

        '"To ti povím někdy jindy. Teď se chci zeptat na něco jiného…"':
            # a53 # r9290
            $ zm1094Logic.r9290_action()
            jump zm1094_s22

        '"Dozvíš se to někdy jindy. Sbohem."':
            # a54 # r9291
            $ zm1094Logic.r9291_action()
            jump zm1094_dispose


# s16 # say9237
label zm1094_s16: # from 14.2 22.2
    nr '"Jsem z mnoha míst! Ale abych pravdu řekl, kde jsem se narodil, to sám nevím. Ve svém životě jsem mnoho cestoval a mnoha místům jsem říkal domov. Teď tak říkám Aborei…" Zdá se velmi spokojen.'

    menu:
        '"Aha. Mám ještě další otázky…"':
            # a55 # r9292
            jump zm1094_s22

        '"Už tě nebudu déle otravovat. Měj se."':
            # a56 # r9293
            jump zm1094_dispose


# s17 # say9238
label zm1094_s17: # from 14.3 22.3
    nr 'Ze rtů se mu náhle vypařil smích a duch se na tebe zadíval se znepokojeným pohledem. "To je hrozné… já nevím! Vlastně ani nevím, jak jsem umřel." Pokrčil rameny. "A není to nakonec jedno?" Jeho tváři opět dominuje úsměv typu „sýýýýr“ a tobě začíná docházet, proč měl sešité rty.'

    menu:
        '"Měl bych ještě další otázku…"':
            # a57 # r9294
            jump zm1094_s22

        '"Už tě nebudu déle otravovat. Měj se."':
            # a58 # r9295
            jump zm1094_dispose


# s18 # say9239
label zm1094_s18: # from 14.4 22.4
    nr '"Na místě zvaném Arborea! Je to nejúžasnější místo, jaké si dovedeš představit. Nikdy za svého života jsem neviděl tak klidné a mírumilovné místo. Tak… tak nádherné…" Na okamžik se odmlčel, ztracen v osidlech svých vzpomínek. "Ta krása té země, těch lidí -- velkolepá. Povím ti, opravdu už mi začíná scházet!"'

    menu:
        '"Aha. Můžu se tě zeptat ještě na něco?"':
            # a59 # r9296
            jump zm1094_s22

        '"Tak to je prozatím vše. Sbohem."':
            # a60 # r9297
            jump zm1094_dispose


# s19 # say9240
label zm1094_s19: # from 14.5 22.5
    nr '"Skoro nic. Ze srandy jsem jisté Spalovačce podepsal smlouvu… vyprávěla mi něco o nějakém hrozném místě a pověděla, že si z mojí mrtvoly udělají pomocníka. Řekl jsem si „vždyť tohle tělo stejně nebudu v příštím životě potřebovat, tak proč ne? Vezmu si to stříbro a utratím ho za nějaké dobré víno nebo ženu“. Pousmál se a v jeho očích vzplanuly radostné plamínky.'

    menu:
        '"Nevíš náhodou něco o městě mimo Márnici?"':
            # a61 # r9298
            jump zm1094_s24

        '"Mohl bych se tě zeptat na pár dalších věcí?"':
            # a62 # r9299
            jump zm1094_s22

        '"Už tě nebudu déle otravovat. Měj se."':
            # a63 # r9300
            jump zm1094_dispose


# s20 # say9241
label zm1094_s20: # from 14.6 22.6
    nr 'Duch se na chviličku zamyslel. "Ne, obávám se, že o něm jsem nikdy neslyšel. To je nějaký tvůj přítel?"'

    menu:
        '"Asi ano. Ještě na něco bych se tě rád zeptal…"':
            # a64 # r9301
            jump zm1094_s22

        '"To ještě nevím. Sbohem."':
            # a65 # r9302
            jump zm1094_dispose


# s21 # say9242
label zm1094_s21: # from 15.0
    nr 'Zaujatě na tebe pohleděl. "To je divné. Ale přece ti musím nějak říkat, ne?" Tentokrát se na tebe podíval s netrpělivostí v očích.'

    menu:
        '"Tak si něco vymysli. Teď bych se tě rád na něco zeptal…"':
            # a66 # r9303
            jump zm1094_s22

        'Vymysli si jméno: "Já si nevzpomínám… snad „Adahn?“"':
            # a67 # r9304
            $ zm1094Logic.r9304_action()
            jump zm1094_s23

        '"To přece není důležité. Sbohem."':
            # a68 # r9305
            jump zm1094_dispose


# s22 # say9243
label zm1094_s22: # from 15.1 16.0 17.0 18.0 19.1 20.0 21.0 23.0 24.0 25.0 26.0
    nr '"Jak si přeješ. Jen se ptej!" Spokojeně se usmál a trpělivě očekával tvůj další dotaz. Ani poslední stehy už nevydržely jeho úsměv, který ti už nepřipadá tak zvláštní, jak dříve.'

    menu:
        '"Kdo vlastně jsi?"' if zm1094Logic.r9306_condition():
            # a69 # r9306
            jump zm1094_s15

        '"Kdo vlastně jsi?"' if zm1094Logic.r9307_condition():
            # a70 # r9307
            jump zm1094_s25

        '"Odkud pocházíš?"':
            # a71 # r9308
            jump zm1094_s16

        '"Jak ses sem vlastně dostal. Myslím tvoje tělo."':
            # a72 # r9309
            jump zm1094_s17

        '"Kde jsi… kde tvá duše spočívá… nyní?"':
            # a73 # r9310
            jump zm1094_s18

        '"Co všechno víš o tomto místě?"':
            # a74 # r9311
            jump zm1094_s19

        '"Neznáš náhodou někoho jménem Pharod?"' if zm1094Logic.r9312_condition():
            # a75 # r9312
            jump zm1094_s20

        '"Vlastně už nic nepotřebuju. Sbohem."':
            # a76 # r9321
            jump zm1094_dispose


# s23 # say9244
label zm1094_s23: # from 21.1
    nr 'Když viděl, jak se tváříš, od plic se zasmál. "Tak přece! Takže Adahn, povídáš, příteli. Takže Adahne, máš pro mě snad nějakou otázku?"'

    menu:
        '"Ano, jedna by se našla…"':
            # a77 # r9313
            jump zm1094_s22

        '"Ne, už musím jít. Sbohem."':
            # a78 # r9314
            jump zm1094_dispose


# s24 # say9245
label zm1094_s24: # from 19.0
    nr '"O Sigilu?" Když jsi přikývl, úsměv mrtvoly se roztáhl ještě více. "No, o tohle tě nepřipravím! Jen běž a prozkoumej ho sám! Ztrať se v ulicích, v hospodách, v lidech… ale dávej pozor! Sigil dokáže být nebezpečný stejně jako podivuhodný. Ale to ho přece dělá zajímavým, ne?"'

    menu:
        '"Jo, taky si myslím. Ale teď bych se tě chtěl zeptat na něco jiného…"':
            # a79 # r9315
            jump zm1094_s22

        '"Asi ano. Sbohem."':
            # a80 # r9316
            jump zm1094_dispose


# s25 # say9283
label zm1094_s25: # from 14.1 22.1
    nr '"Jmenoval jsem se Asonje."'

    menu:
        '"Měl bych ještě další otázku…"':
            # a81 # r9284
            jump zm1094_s22

        '"Tak to je prozatím vše. Sbohem."':
            # a82 # r9285
            jump zm1094_dispose


# s26 # say20061
label zm1094_s26: # - # IF ~  GlobalGT("Asonje","GLOBAL",0) GlobalLT("Asonje","GLOBAL",3)
    nr '"Zas zpátky, hmm?" Široce se usmál.'

    menu:
        '"Mám pár otázek…"':
            # a83 # r20063
            jump zm1094_s22

        '"Jenom procházím kolem. Sbohem."':
            # a84 # r20064
            jump zm1094_dispose


# s27 # say20062
label zm1094_s27: # - # IF ~  Global("Asonje","GLOBAL",3)
    nr '"Oh, ty… zase." Zamračil se a sklopil pohled stranou.'

    menu:
        '"Mám pár otázek…"':
            # a85 # r20065
            jump zm1094_s11

        '"Jenom procházím kolem. Sbohem."':
            # a86 # r20066
            jump zm1094_dispose
