init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.giantsk_logic import GiantskLogic
    giantskLogic = GiantskLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DGIANTSK.DLG
# ###


# s0 # say292
label giantsk_s0: # - # IF ~  True()
    nr 'Před tebou je obří kostlivec v ozdobném bronzovém brnění, které je vpleteno do jeho žeber a přes kostlivcovu hruď bylo vyryto několik propracovaných symbolů. Zajímalo by tě, odkud pochází; nemáš povědomí, že by existovali lidé takových rozměrů. Mohutná šavle v jeho rukou vypadá, jako by vážila tolik, co nákladní vagón.{#giantsk_s0_}'

    menu:
        '"Přemýšlím nad tím, kdybych měl držet tu šavli chvíli v ruce. Asi bych se jejím držením hodně rychle unavil."{#giantsk_s0_r293}':
            # a0 # r293
            $ giantskLogic.r293_action()
            jump giantsk_s1

        '"Takže jak dlouho už tady stojíš? Dlouho?"{#giantsk_s0_r1165}':
            # a1 # r1165
            $ giantskLogic.r1165_action()
            jump giantsk_s1

        'Prozkoumej gigantického kostlivce… opatrně.{#giantsk_s0_r3996}':
            # a2 # r3996
            jump giantsk_s4

        'Zkus zrušit kouzla, zabudovaná do kostlivcovy zbroje.{#giantsk_s0_r3997}' if giantskLogic.r3997_condition():
            # a3 # r3997
            jump giantsk_s9

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s0_r3998}' if giantskLogic.r3998_condition():
            # a4 # r3998
            jump giantsk_s2

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s0_r3999}' if giantskLogic.r3999_condition():
            # a5 # r3999
            jump giantsk_s3

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s0_r4000}' if giantskLogic.r4000_condition():
            # a6 # r4000
            jump giantsk_s2

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s0_r4001}' if giantskLogic.r4001_condition():
            # a7 # r4001
            jump giantsk_s3

        '"Hej, co TENHLE kostlivec, Morte? Bude ti jako tělo stačit?"{#giantsk_s0_r4002}' if giantskLogic.r4002_condition():
            # a8 # r4002
            jump morte_s73  # EXTERN

        'Použij na kostlivce schopnost Kosti-vyprávějte.{#giantsk_s0_r4003}' if giantskLogic.r4003_condition():
            # a9 # r4003
            jump giantsk_s1

        'Nechej kostlivce být.{#giantsk_s0_r4004}':
            # a10 # r4004
            jump giantsk_dispose


# s1 # say1166
label giantsk_s1: # from 0.0 0.1 0.9 # IF ~  False()
    nr 'Kostlivec vypadá, že je příliš dlouho mrtev na to, aby ti odpověděl na tvou otázku. A dokonce i jeho hlava je příliš vysoko na to, aby tě uslyšel.{#giantsk_s1_}'

    menu:
        'Prozkoumej obřího kostlivce… opatrně.{#giantsk_s1_r1167}':
            # a11 # r1167
            jump giantsk_s4

        'Zkus zrušit kouzla, zabudovaná do kostlivcovy zbroje.{#giantsk_s1_r4035}' if giantskLogic.r4035_condition():
            # a12 # r4035
            jump giantsk_s9

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s1_r4036}' if giantskLogic.r4036_condition():
            # a13 # r4036
            jump giantsk_s2

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s1_r4037}' if giantskLogic.r4037_condition():
            # a14 # r4037
            jump giantsk_s3

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s1_r4038}' if giantskLogic.r4038_condition():
            # a15 # r4038
            jump giantsk_s2

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s1_r4039}' if giantskLogic.r4039_condition():
            # a16 # r4039
            jump giantsk_s3

        '"Hej, co TENHLE kostlivec, Morte? Bude ti jako tělo stačit?"{#giantsk_s1_r4040}' if giantskLogic.r4040_condition():
            # a17 # r4040
            jump morte_s73  # EXTERN

        'Nechej kostlivce být.{#giantsk_s1_r4041}':
            # a18 # r4041
            jump giantsk_dispose


# s2 # say4005
label giantsk_s2: # from 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
    nr 'Když ses dotkl kostlivce, po celé márnici začaly hlasitě zvonit zvony… a s rychlostí dobře namazaného blesku se kostlivec probudil a pozvedl meč k útoku!{#giantsk_s2_}'

    menu:
        '"Budeš si přát, abys zůstal mrtvý, Kostro…"{#giantsk_s2_r4042}':
            # a19 # r4042
            $ giantskLogic.r4042_action()
            jump giantsk_dispose


# s3 # say4006
label giantsk_s3: # from 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
    nr 'Už jsi to skoro udělal, ale náhle ses zarazil… a tvé oči jsou přitahovány ke kostlivcově zbroji. Něco na symbolech vyrytých do hrudního plátu tě zastavilo. Pokud jsou tihle kostlivci stráže, mohl bys je… probudit.{#giantsk_s3_}'

    menu:
        '"To je riziko, které jsem ochotný podstoupit…"{#giantsk_s3_r4043}':
            # a20 # r4043
            jump giantsk_s2

        'Prozkoumej gigantického kostlivce… opatrně.{#giantsk_s3_r4044}':
            # a21 # r4044
            jump giantsk_s4

        'Nechej kostlivce být.{#giantsk_s3_r4046}':
            # a22 # r4046
            jump giantsk_dispose


# s4 # say4007
label giantsk_s4: # from 0.2 1.0 3.1 7.1 15.1 16.3
    nr 'Složité bronzové brnění je přišroubováno ke kostlivcovým žebrům a lopatkám. Když si prohlížíš kostru pod zbrojí, všiml sis, že stejné svorky, které drží zbroj, jsou použity i na všech kloubech kostlivce. Kolem jeho rukou a nohou jsou omotané silné kožené pásy, ve vzoru, který připomíná svaly a šlachy.{#giantsk_s4_}'

    menu:
        'Prozkoumej brnění.{#giantsk_s4_r4045}':
            # a23 # r4045
            jump giantsk_s5

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s4_r4048}' if giantskLogic.r4048_condition():
            # a24 # r4048
            jump giantsk_s2

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s4_r4049}' if giantskLogic.r4049_condition():
            # a25 # r4049
            jump giantsk_s3

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s4_r4050}' if giantskLogic.r4050_condition():
            # a26 # r4050
            jump giantsk_s2

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s4_r4051}' if giantskLogic.r4051_condition():
            # a27 # r4051
            jump giantsk_s3

        '"Hej, co TENHLE kostlivec, Morte? Bude ti jako tělo stačit?"{#giantsk_s4_r4052}' if giantskLogic.r4052_condition():
            # a28 # r4052
            jump morte_s73  # EXTERN

        'Nechej kostlivce být.{#giantsk_s4_r4053}':
            # a29 # r4053
            jump giantsk_dispose


# s5 # say4008
label giantsk_s5: # from 4.0
    nr 'Navzdory zjevnému věku zbroje vypadá stále dobře. Lehce září, vyryté symboly jakoby plavaly, lehce se pohybují pokaždé, když se na ně pokoušíš zaostřit pohled.{#giantsk_s5_}'

    menu:
        'Prostuduj si symboly.{#giantsk_s5_r4054}' if giantskLogic.r4054_condition():
            # a30 # r4054
            jump giantsk_s6

        'Prostuduj si symboly.{#giantsk_s5_r4055}' if giantskLogic.r4055_condition():
            # a31 # r4055
            jump giantsk_s6

        'Prostudovat symboly.{#giantsk_s5_r64293}' if giantskLogic.r64293_condition():
            # a32 # r64293
            jump giantsk_s7

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s5_r4056}' if giantskLogic.r4056_condition():
            # a33 # r4056
            jump giantsk_s2

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s5_r4057}' if giantskLogic.r4057_condition():
            # a34 # r4057
            jump giantsk_s3

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s5_r4058}' if giantskLogic.r4058_condition():
            # a35 # r4058
            jump giantsk_s2

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s5_r4059}' if giantskLogic.r4059_condition():
            # a36 # r4059
            jump giantsk_s3

        '"Hej, co TENHLE kostlivec, Morte? Bude ti jako tělo stačit?"{#giantsk_s5_r4060}' if giantskLogic.r4060_condition():
            # a37 # r4060
            jump morte_s73  # EXTERN

        'Nechej kostlivce být.{#giantsk_s5_r4061}':
            # a38 # r4061
            jump giantsk_dispose


# s6 # say4009
label giantsk_s6: # from 5.0 5.1
    nr 'Téměř nevědomě jsi uvolnil svůj zrak a zahleděl se na symboly. Po chvíli se symboly přestaly hýbat a změnily se na sérii run. Vzor run ti připomíná řetěz… a s touhle myšlenkou sis náhle uvědomil, že tyto runy tvoří nějaké ochranné očarování.{#giantsk_s6_}'

    menu:
        'Prozkoumej runy a zkus si vzpomenout na kouzlo.{#giantsk_s6_r4062}' if giantskLogic.r4062_condition():
            # a39 # r4062
            jump giantsk_s8

        'Prozkoumej runy a zkus si vzpomenout na kouzlo.{#giantsk_s6_r4063}' if giantskLogic.r4063_condition():
            # a40 # r4063
            jump giantsk_s7

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s6_r4064}' if giantskLogic.r4064_condition():
            # a41 # r4064
            jump giantsk_s2

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s6_r4065}' if giantskLogic.r4065_condition():
            # a42 # r4065
            jump giantsk_s3

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s6_r4066}' if giantskLogic.r4066_condition():
            # a43 # r4066
            jump giantsk_s2

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s6_r4067}' if giantskLogic.r4067_condition():
            # a44 # r4067
            jump giantsk_s3

        '"Hej, co TENHLE kostlivec, Morte? Bude ti jako tělo stačit?"{#giantsk_s6_r4068}' if giantskLogic.r4068_condition():
            # a45 # r4068
            jump morte_s73  # EXTERN

        'Nechej kostlivce být.{#giantsk_s6_r4069}':
            # a46 # r4069
            jump giantsk_dispose


# s7 # say4010
label giantsk_s7: # from 5.2 6.1 7.2
    nr 'Chvíli studuješ runy, ale nedaří se ti kouzlo rozšifrovat. Vypadá dost komplikovaně a ty máš problémy s koncentrací.{#giantsk_s7_}'

    menu:
        'Porovnat runy s runami v Knize kostí a popela.{#giantsk_s7_r64294}' if giantskLogic.r64294_condition():
            # a47 # r64294
            jump giantsk_s15

        'Prozkoumej kostlivce ještě jednou.{#giantsk_s7_r4070}':
            # a48 # r4070
            jump giantsk_s4

        'Prozkoumej ještě jednou runy.{#giantsk_s7_r4071}':
            # a49 # r4071
            jump giantsk_s7

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s7_r4072}' if giantskLogic.r4072_condition():
            # a50 # r4072
            jump giantsk_s2

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s7_r4073}' if giantskLogic.r4073_condition():
            # a51 # r4073
            jump giantsk_s3

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s7_r4074}' if giantskLogic.r4074_condition():
            # a52 # r4074
            jump giantsk_s2

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s7_r4075}' if giantskLogic.r4075_condition():
            # a53 # r4075
            jump giantsk_s3

        '"Hej, co TENHLE kostlivec, Morte? Bude ti jako tělo stačit?"{#giantsk_s7_r4076}' if giantskLogic.r4076_condition():
            # a54 # r4076
            jump morte_s73  # EXTERN

        'Nechej kostlivce být.{#giantsk_s7_r4077}':
            # a55 # r4077
            jump giantsk_dispose


# s8 # say4011
label giantsk_s8: # from 6.0
    nr 'Studuješ runy, jak se vlní po povrchu hrudního plátu. Na nejzákladnější úrovni jsou runy očarování slabší zbroje, ale několik run ve tvaru lebky a sférické stopy kolem okrajů zbroje znamenají, že je do kouzla přimotáno další nekromantické a ochranné zaklínadlo. Pokud se kostlivce dotkneš, pravděpodobně ho probudíš… a on se bude bránit.{#giantsk_s8_}'

    menu:
        'Podívej se, jestli můžeš kouzla nějak rozrušit.{#giantsk_s8_r4079}' if giantskLogic.r4079_condition():
            # a56 # r4079
            $ giantskLogic.r4079_action()
            jump giantsk_s9

        'Podívej se, jestli můžeš kouzla nějak rozrušit.{#giantsk_s8_r4080}' if giantskLogic.r4080_condition():
            # a57 # r4080
            jump giantsk_s9

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s8_r4081}' if giantskLogic.r4081_condition():
            # a58 # r4081
            jump giantsk_s2

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s8_r4082}' if giantskLogic.r4082_condition():
            # a59 # r4082
            jump giantsk_s3

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s8_r4083}' if giantskLogic.r4083_condition():
            # a60 # r4083
            jump giantsk_s2

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s8_r4084}' if giantskLogic.r4084_condition():
            # a61 # r4084
            jump giantsk_s3

        '"Hej, co TENHLE kostlivec, Morte? Bude ti jako tělo stačit?"{#giantsk_s8_r4085}' if giantskLogic.r4085_condition():
            # a62 # r4085
            jump morte_s73  # EXTERN

        'Nechej kostlivce být.{#giantsk_s8_r4078}':
            # a63 # r4078
            jump giantsk_dispose


# s9 # say4012
label giantsk_s9: # from 0.3 1.1 8.0 8.1
    nr 'Máš podezření že smazání runového vzoru by mohlo uvolnit zaklínadla, ale vypadá to složitě… vzor je komplikovaný a seškrábnutí špatné části by mohlo kostlivce probudit.{#giantsk_s9_}'

    menu:
        'Porovnej vzory s kouzly v Knize kostí a popela, podívej se, jestli se dá určit, jak by mohla být obrana prolomena.{#giantsk_s9_r64296}' if giantskLogic.r64296_condition():
            # a64 # r64296
            jump giantsk_s16

        'Nejprve zruš runy, které drží brnění, potom nekromantické a nakonec ochranné očarování.{#giantsk_s9_r4086}':
            # a65 # r4086
            jump giantsk_s10

        'Nejprve zruš runy ochrany, potom jdi pozpátku po runovém vzoru a zruš necromancerské očarování brnění.{#giantsk_s9_r4087}' if giantskLogic.r4087_condition():
            # a66 # r4087
            $ giantskLogic.r4087_action()
            jump giantsk_s11

        'Nejprve zruš runy ochrany, potom jdi pozpátku po runovém vzoru a zruš necromancerské očarování brnění.{#giantsk_s9_r4088}' if giantskLogic.r4088_condition():
            # a67 # r4088
            $ giantskLogic.r4088_action()
            jump giantsk_s13

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s9_r4089}' if giantskLogic.r4089_condition():
            # a68 # r4089
            jump giantsk_s2

        'Zkus vytáhnout kostlivci meč z rukou.{#giantsk_s9_r4090}' if giantskLogic.r4090_condition():
            # a69 # r4090
            jump giantsk_s3

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s9_r4091}' if giantskLogic.r4091_condition():
            # a70 # r4091
            jump giantsk_s2

        'Zkus vyrvat šrouby, které drží kostlivcovo brnění.{#giantsk_s9_r4092}' if giantskLogic.r4092_condition():
            # a71 # r4092
            jump giantsk_s3

        '"Hej, co TENHLE kostlivec, Morte? Bude ti jako tělo stačit?"{#giantsk_s9_r4093}' if giantskLogic.r4093_condition():
            # a72 # r4093
            jump morte_s73  # EXTERN

        'Nechej kostlivce být.{#giantsk_s9_r4094}':
            # a73 # r4094
            jump giantsk_dispose


# s10 # say4013
label giantsk_s10: # from 9.1 16.0
    nr 'Když jsi začal mazat runy, zdobící hrudní plát, začaly po celé márnici zvonit zvony… a s kostlivec bleskově procitá a s napřaženým mečem útočí!{#giantsk_s10_}'

    menu:
        '"Budeš si přát, abys zůstal mrtvý, Kostro…"{#giantsk_s10_r4095}':
            # a74 # r4095
            $ giantskLogic.r4095_action()
            jump giantsk_dispose


# s11 # say4014
label giantsk_s11: # from 9.2 16.1
    nr 'Ze začátku je práce složitá a pořádně ti brnká na nervy, ale tvá mysl se postupně zaostřuje a runy se pod tvým útokem začínají rozplétat. Během několika minut je gigantický skeleton zbaven kouzel, která ho drží pohromadě. Rozpadl se a dopadá na zem za zvuku tříštěných kostí a silného cinkání kovu!{#giantsk_s11_}'

    menu:
        '"Zatracená hromada kostí!"{#giantsk_s11_r4096}':
            # a75 # r4096
            $ giantskLogic.r4096_action()
            jump giantsk_s12


# s12 # say4015
label giantsk_s12: # from 11.0
    nr 'Chvíli čekáš, ale na zvuk nikdo nezareagoval. Rychle jsi rozložil části kostlivce po zemi. Většina je příliš stará anebo příliš těžká, aby se daly použít, ale našel jsi kus kostlivcova prsního plátu s většinou run. Máš pocit, že by se to mohlo hodit.{#giantsk_s12_}'

    menu:
        '"Tak si to zkrátka vezmu…"{#giantsk_s12_r4097}':
            # a76 # r4097
            $ giantskLogic.r4097_action()
            jump giantsk_dispose


# s13 # say4016
label giantsk_s13: # from 9.3 16.2
    nr 'Zrušení kouzla je tentokrát jednodušší, runy se pod tvým útokem rychle rozpletly. Během několika minut přišel kostlivec o kouzla, která ho držela pohromadě. Pamatuješ si, co se stalo poprvé, takže kostlivce chytáš, než spadne na zem a pomalu ho pokládáš. Je svinsky těžký.{#giantsk_s13_}'

    menu:
        '"Uvidíme, co tady máme tentokrát…"{#giantsk_s13_r4098}':
            # a77 # r4098
            $ giantskLogic.r4098_action()
            jump giantsk_s14


# s14 # say4017
label giantsk_s14: # from 13.0
    nr 'Rychle ses prohrabal zbytky kostlivce a opět jsi našel kus hrudního plátu… stejně jako ten první na sobě ještě má fragment runového nápisu. Mohlo by se to ještě hodit.{#giantsk_s14_}'

    menu:
        '"Tak si to zkrátka vezmu…"{#giantsk_s14_r4099}' if giantskLogic.r4099_condition():
            # a78 # r4099
            $ giantskLogic.r4099_action()
            jump giantsk_dispose

        '"Tak si to zkrátka vezmu…"{#giantsk_s14_r4100}' if giantskLogic.r4100_condition():
            # a79 # r4100
            $ giantskLogic.r4100_action()
            jump giantsk_dispose

        '"Tak si to zkrátka vezmu…"{#giantsk_s14_r4101}' if giantskLogic.r4101_condition():
            # a80 # r4101
            $ giantskLogic.r4101_action()
            jump giantsk_dispose


# s15 # say64295
label giantsk_s15: # from 7.0
    nr 'Radíš se se svazkem a porovnáváš nákresy se značkami na hrudním plátu. Pokud to správně chápeš, runy představují kouzlo malé zbroje, ale pár run ve tvaru lebky a kulovité nákresy podél hran zbroje naznačují, že v nich je také vetkáno několik silnějších nekromantických a ochraných kouzel. Dotknutí se kostlivce pravděpodobně způsobí, že se vzbudí… a začne se bránit.{#giantsk_s15_}'

    menu:
        'Poradit se s Knihou kostí a popela, podívej se, jestli se dá určit, jak by mohlo být kouzlo zlomeno.{#giantsk_s15_r64298}':
            # a81 # r64298
            jump giantsk_s16

        'Nech runy být a prozkoumej kostlivce znovu.{#giantsk_s15_r64299}':
            # a82 # r64299
            jump giantsk_s4


# s16 # say64297
label giantsk_s16: # from 9.0 15.0
    nr 'Podle toho co jsi ze svazku zjistil se zdá, že kouzla zbroje platí jen pro hrudní plát, nekromantické kouzlo umožnuje kostlivci obživnout, ale jsou to ochranná kouzla, která mu propůjčí možnost omezeného vnímání svého okolí. Hádáš, že kdyby si poškodil jeho ochranu, bude to chápáno jako útok… ledaže bys ho učinil slepým na tvou přítomnost.{#giantsk_s16_}'

    menu:
        'Nejprve znič runy udržující kouzlo zbroje, pak nekromantické, a pak ochranné.{#giantsk_s16_r64300}':
            # a83 # r64300
            jump giantsk_s10

        'Nejprve znič runy udržující kouzlo zbroje, pak v práci kvůli typu run přestaneš, anuluješ nekromancii, pak ochranné kouzlo.{#giantsk_s16_r64301}' if giantskLogic.r64301_condition():
            # a84 # r64301
            $ giantskLogic.r64301_action()
            jump giantsk_s11

        'Nejprve znič runy udržující kouzlo zbroje, pak v práci kvůli typu run přestaneš, anuluješ nekromancii, pak ochranné kouzlo.{#giantsk_s16_r64302}' if giantskLogic.r64302_condition():
            # a85 # r64302
            $ giantskLogic.r64302_action()
            jump giantsk_s13

        'Nech runy být a prozkoumej kostlivce znovu.{#giantsk_s16_r64303}':
            # a86 # r64303
            jump giantsk_s4
