init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte2_logic import Morte2Logic
    morte2Logic = Morte2Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE2.DLG
# ###


# s0 # say41144
label morte2_s0: # - # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    nr '"Pssst… Nějaký rady, šéfe: Měli bychom bejt víc potichu - není třeba zapisovat více mrtvol do Knihy mrtvých než je doopravdy nutný… hlavně ženy. A když je zabiješ silou, přiláká to sem hlídače."{#morte2_s0_}'

    menu:
        '"Nemyslím si, že jsi se o tom předtím zmínil… *kdo* jsou ti hlídači?"{#morte2_s0_r41145}':
            # a0 # r41145
            $ morte2Logic.r41145_action()
            jump morte2_s1

        '"Ty mrtvoly tady… odkud všechny jsou?"{#morte2_s0_r41146}':
            # a1 # r41146
            $ morte2Logic.r41146_action()
            jump morte2_s3

        '"Proč se staráš o ženská těla?"{#morte2_s0_r41147}':
            # a2 # r41147
            $ morte2Logic.r41147_action()
            jump morte2_s4

        '"V pořádku… já se… pokusím si to zapamatovat."{#morte2_s0_r41148}':
            # a3 # r41148
            $ morte2Logic.r41148_action()
            jump morte2_s8


# s1 # say41149
label morte2_s1: # from 0.0 3.0 7.0
    nr '"Říkají si „Spalovači.“ Nemůžeš je přehlídnout: maj„ vášeň pro temnotu a ztuhlej posmrtnej škleb ve tváři. Je to jenom přiblblá banda ghúlskejch uctívačů smrti; věřej, že všichni musej“ zemřít… čím dřív, tím líp."{#morte2_s1_}'

    menu:
        '"Nechápu to… proč se tihle Spalovači o mne starají, když jsem unikl?"{#morte2_s1_r41150}':
            # a4 # r41150
            jump morte2_s2


# s2 # say41151
label morte2_s2: # from 1.0
    nr '"Ty jsi mě snad neposlouchal?! Říkal jsem, že tihle Spalovači věří, že VŠICHNI musí zemřít, čím dřív, tím líp. Ty si snad myslíš, že ty mrtvoly tady jsou radši v knize mrtvých než mimo ni?"{#morte2_s2_}'

    menu:
        '"Ty mrtvoly tady… odkud všechny jsou?"{#morte2_s2_r41152}':
            # a5 # r41152
            jump morte2_s3

        '"Předtím jsi říkal něco o ujišťění, že jsem nezabil mrtvolu *ženy*. Proč?"{#morte2_s2_r41153}':
            # a6 # r41153
            jump morte2_s4

        '"V pořádku… já se… pokusím si to zapamatovat."{#morte2_s2_r41154}':
            # a7 # r41154
            jump morte2_s8


# s3 # say41155
label morte2_s3: # from 0.1 2.0 7.1
    nr '"Smrt navštěvuje sféry každej den, šéfe. Všichni tihle belhalové měli tu smůlu, že po svý smrti někdo hlídačům prodal jejich mrtvoly."{#morte2_s3_}'

    menu:
        '"Řekni mi… *kdo* jsou tihle hlídači?"{#morte2_s3_r41156}':
            # a8 # r41156
            jump morte2_s1

        '"Předtím jsi říkal něco o ujišťění, že jsem nezabil mrtvolu *ženy*. Proč?"{#morte2_s3_r41157}':
            # a9 # r41157
            jump morte2_s4

        '"V pořádku… já se… pokusím si to zapamatovat."{#morte2_s3_r41158}':
            # a10 # r41158
            jump morte2_s8


# s4 # say41159
label morte2_s4: # from 0.2 2.1 3.1
    nr '"Co - to myslíš *vážně?* Podívej, šefe, tyhle mrtvý škvrňata jsou pro takový bouchače jako my poslední šancí, jak se spárovat. Musíme být *rytířští*… žádné rozsekávání kvůli klíči, žádné utínání jejich údů a tak podobně."{#morte2_s4_}'

    menu:
        '"Poslední šance? O čem to *mluvíš*?"{#morte2_s4_r41160}':
            # a11 # r41160
            jump morte2_s5


# s5 # say41161
label morte2_s5: # from 4.0
    nr '"Šéfe, ONI SOU mrtví, MY SME mrtví… chápeš, kam směřuju? No? Jo?"{#morte2_s5_}'

    menu:
        '"Ne… ne, vlastně ne."{#morte2_s5_r41162}':
            # a12 # r41162
            jump morte2_s6

        '"*Nemůžeš* mluvit srozumitelněji?."{#morte2_s5_r41163}' if morte2Logic.r41163_condition():
            # a13 # r41163
            jump morte2_s6


# s6 # say41164
label morte2_s6: # from 5.0 5.1
    nr '"Šéfe, už máme něco společnýho s těma belhajícíma se ženama. *Všichni* jsme mrtvý minimálně jednou: máme spolu o čem mluvit. Budou si vážit mužů, kerý maj zkušenosti se smrtí, jako třeba my."{#morte2_s6_}'

    menu:
        '"Počkej… neříkal jsi snad, že *nejsem* mrtvý?"{#morte2_s6_r41165}':
            # a14 # r41165
            jump morte2_s7


# s7 # say41166
label morte2_s7: # from 6.0
    nr '"Dobře… v pořádku, *ty* nemusíš bejt mrtvej, ale *já* sem. A dokud ještě stojím, nehodlám se s nějakou z těchhle krásnejch a silnejch mrtvol, kerý tu vidím, dělit o rakev." Morte začal klapat zubama, jako když na něco čeká. "„Možná, že se s nima budou chtít hlídači spárovat jako první, a to není dobrý…"{#morte2_s7_}'

    menu:
        '"Tak znova, kdo jsou ti hlídači?"{#morte2_s7_r41167}':
            # a15 # r41167
            jump morte2_s1

        '"Ale odkud jsou všechna tahle těla?"{#morte2_s7_r41168}':
            # a16 # r41168
            jump morte2_s3

        '"V pořádku… pokusím se si to zapamatovat."{#morte2_s7_r41169}':
            # a17 # r41169
            jump morte2_s8


# s8 # say41170
label morte2_s8: # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    nr '"Podívej se, šéfe. Je jasný, že seš pořád jenom kapku popletenej po tvým setkání se smrtí, takže pro tebe mám dvě malý rady: první, když máš nějakou votázku, *zeptej* se mě, jasný?"  POZNÁMKA: Abys mohl rozprávět se členem party, vyber možnost „mluv“ z rychlého menu a potom klikni levým tlačítkem na člena party, se kterým chceš hovořit.{#morte2_s8_}'

    menu:
        '"Rozumím… když se budu chtít na něco zeptat, tak se zeptám tebe."{#morte2_s8_r41171}':
            # a18 # r41171
            jump morte2_s9


# s9 # say41172
label morte2_s9: # from 8.0
    nr '"Za druhé, když seš takovej *trouba* a pořád něco zapomínáš, začni si zapisovat důležitý věci - dycky, když přijdeš na něco, co *může* bejt důležitý, tak si to zapiš a nemusíš si to pamatovat."{#morte2_s9_}'

    menu:
        '"Jestli mám deník, který bych *snad* měl mít s sebou, budu to dělat."{#morte2_s9_r41173}':
            # a19 # r41173
            jump morte2_s10


# s10 # say41174
label morte2_s10: # from 9.0
    nr '"Tak můžeš začít vod začátku, šéfe. Bez obav. Je tu dost pergamenu a inkoustu, který bys mohl použít."{#morte2_s10_}'

    menu:
        '"Hmmmm. V pořádku. Nemohlo se mu nic stát… ale stejně si udělám nový."{#morte2_s10_r41175}':
            # a20 # r41175
            jump morte2_s11


# s11 # say41176
label morte2_s11: # from 10.0
    nr '"Používej ho, aby sis mohl zapsat své kroky. I když se dokonce mlhavě začneš dostávat k důležitým věcem, například kdo jsi… nebo důležitějším, kdo jsem *já*… použij ho, abys si osvěžil paměť."  POZNÁMKA: Aby ses dostal k deníku, vyber si tlačítko „deník“ v pravém dolním rohu světové obrazovky, nebo si vyber tlačítko „deník“ v rychlém menu. Té zapísky se aktualizují automaticky v průběhu hry.{#morte2_s11_}'

    menu:
        '"Jasně… mám to. Jdeme."{#morte2_s11_r41177}':
            # a21 # r41177
            $ morte2Logic.j39516_s11_r41177_action()
            jump morte2_dispose


# s12 # say41178
label morte2_s12: # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0 # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Co tě žere, šéfe?"{#morte2_s12_}'

    menu:
        '"Můžeš mi znova přečíst to tetování na mých zádech?{#morte2_s12_r41179}':
            # a22 # r41179
            jump morte2_s13

        '"Tak znova, co je tohle za místo?"{#morte2_s12_r41180}':
            # a23 # r41180
            jump morte2_s18

        '"Tohle místo je ohromné… kdo se o to stará?"{#morte2_s12_r41181}' if morte2Logic.r41181_condition():
            # a24 # r41181
            jump morte2_s19

        '"Kdo jsou ti místní hlídači?"{#morte2_s12_r41182}' if morte2Logic.r41182_condition():
            # a25 # r41182
            jump morte2_s19

        '"Ty mrtvoly tady… odkud všechny jsou?"{#morte2_s12_r41183}':
            # a26 # r41183
            jump morte2_s22

        '"Předtím jsi říkal něco o ujišťování se, že jsem nezabil mrtvolu *ženy*. Proč?"{#morte2_s12_r41184}' if morte2Logic.r41184_condition():
            # a27 # r41184
            jump morte2_s23

        '"Jak se používaji tyhle obvazy?"{#morte2_s12_r41185}' if morte2Logic.r41185_condition():
            # a28 # r41185
            jump morte2_s21

        '"Teď nic, Morte. Jenom kontroluju, jestli jsi pořád se mnou."{#morte2_s12_r41186}' if morte2Logic.r41186_condition():
            # a29 # r41186
            jump morte2_s8

        '"Teď nic, Morte. Jenom kontroluju, jestli jsi pořád se mnou."{#morte2_s12_r41187}' if morte2Logic.r41187_condition():
            # a30 # r41187
            jump morte2_dispose


# s13 # say41188
label morte2_s13: # from 12.0
    nr '"Ah, *tak pojď,* šéfe. Ale neříkej mi, že jsi to už zapomněl."{#morte2_s13_}'

    menu:
        '"Potřeboval jsem si osvěžit paměť, to je všechno."{#morte2_s13_r41189}':
            # a31 # r41189
            jump morte2_s14

        '"Tak nic. Nevadí. Mám ještě jiné otázky…"{#morte2_s13_r41190}':
            # a32 # r41190
            jump morte2_s12

        '"Tak na to zapomeň. Jdeme."{#morte2_s13_r41191}' if morte2Logic.r41191_condition():
            # a33 # r41191
            jump morte2_s8

        '"Tak na to zapomeň. Jdeme."{#morte2_s13_r41192}' if morte2Logic.r41192_condition():
            # a34 # r41192
            jump morte2_dispose


# s14 # say41193
label morte2_s14: # from 13.0
    nr '"Vsadím se, že se DOZVÍM tak hodně." Morte si čistí hrdlo. "Tak se na to podíváme…"  „Vím, že se cítíš jako kdybys pil pár soudků bahna ze Styxu, ale potřebuješ se SOUSTŘEDIT. Mezi tvými věcmi je i DENÍK, který vnese kapku světla do té temnoty, která zahaluje, co se stalo. PHAROD ti může doplnit zbytek písně, jestli ještě není v knize mrtvých.“{#morte2_s14_}'

    menu:
        '"Pharod… hmmm. Pojď dál."{#morte2_s14_r41194}':
            # a35 # r41194
            jump morte2_s15

        '"Nevadí. Mám jiné otázky…"{#morte2_s14_r41195}':
            # a36 # r41195
            jump morte2_s12

        '"Zapomeň na to. Už jsem slyšel dost. Jdeme."{#morte2_s14_r41196}' if morte2Logic.r41196_condition():
            # a37 # r41196
            jump morte2_s8

        '"Zapomeň na to. Už jsem slyšel dost. Jdeme."{#morte2_s14_r41197}' if morte2Logic.r41197_condition():
            # a38 # r41197
            jump morte2_dispose


# s15 # say41198
label morte2_s15: # from 14.0
    nr '"Jasně, jasně, vydrž." Morte se na chvíli odmlčel. "Jasně, tady je poslední část…"  „Neztrať deník, jinak budeme zase ve Styxu. A ať děláš co chceš, NEŘÍKEJ nikomu KDO jsi nebo CO se ti stalo, nebo ryclhe poputuješ do krematoria. Dělej, co ti říkám: PŘEČTI si deník, potom NAJDI Pharoda.“{#morte2_s15_}'

    menu:
        '"A neměl jsem deník u sebe, když jsem se probudil?"{#morte2_s15_r41199}':
            # a39 # r41199
            jump morte2_s16

        '"Nevadí. Mám ještě další otázky…"{#morte2_s15_r41200}':
            # a40 # r41200
            jump morte2_s12

        '"Zapomeň na to. Už jsem slyšel dost. Jdeme."{#morte2_s15_r41201}' if morte2Logic.r41201_condition():
            # a41 # r41201
            jump morte2_s8

        '"Zapomeň na to. Už jsem slyšel dost. Jdeme."{#morte2_s15_r41203}' if morte2Logic.r41203_condition():
            # a42 # r41203
            jump morte2_dispose


# s16 # say41202
label morte2_s16: # from 15.0
    nr '"Ne… odřel jsi se až na kůži. Jak jsem už říkal, vypadáš jako kdybys měl celkem dost deníku vyryto do těla."{#morte2_s16_}'

    menu:
        '"A jseš si jistý, že neznáš nikoho jménem Pharod?"{#morte2_s16_r41204}':
            # a43 # r41204
            jump morte2_s17

        '"Dost pravděpodobné. Mám ještě další otázky…"{#morte2_s16_r41205}':
            # a44 # r41205
            jump morte2_s12

        '"Tak dobře. Jdeme."{#morte2_s16_r41206}' if morte2Logic.r41206_condition():
            # a45 # r41206
            jump morte2_s8

        '"Tak dobře. Jdeme."{#morte2_s16_r41207}' if morte2Logic.r41207_condition():
            # a46 # r41207
            jump morte2_dispose


# s17 # say41208
label morte2_s17: # from 16.0
    nr '"Ne. Ale pořád by tady někdo okolo moh vědět kde ho najít. Poptej se kolem… POTOM, co se odtud dostaneme."{#morte2_s17_}'

    menu:
        '"Potřebuji se ještě na něco zeptat než půjdeme…"{#morte2_s17_r41209}':
            # a47 # r41209
            jump morte2_s12

        '"V pořádku. Jdeme."{#morte2_s17_r41210}' if morte2Logic.r41210_condition():
            # a48 # r41210
            jump morte2_s8

        '"V pořádku. Jdeme."{#morte2_s17_r41211}' if morte2Logic.r41211_condition():
            # a49 # r41211
            jump morte2_dispose


# s18 # say41212
label morte2_s18: # from 12.1
    nr '"Říká se tomu „Márnice“… je to velká černá budova se všemi stavitelskými půvaby těhotného pavouka."{#morte2_s18_}'

    menu:
        '"Nech to. Mám pár dalších otázek…"{#morte2_s18_r41213}':
            # a50 # r41213
            jump morte2_s12

        '"To je všechno co jsem chtěl vědět. Díky."{#morte2_s18_r41214}' if morte2Logic.r41214_condition():
            # a51 # r41214
            jump morte2_s8

        '"To je všechno co jsem chtěl vědět. Díky."{#morte2_s18_r41215}' if morte2Logic.r41215_condition():
            # a52 # r41215
            jump morte2_dispose


# s19 # say41216
label morte2_s19: # from 12.2 12.3
    nr '"Říkají si „Spalovači.“ Nemůžeš je přehlídnout: maj„ vášeň pro temnotu a ztuhlý mrtvoly. Je to jenom přiblblá banda ghúlskejch uctívačů smrti; věřej, že všichni musej“ zemřít… čím dřív, tím líp."{#morte2_s19_}'

    menu:
        '"Jsem zmatený… proč se tyhle Spalovači starají o můj únik?"{#morte2_s19_r41217}':
            # a53 # r41217
            jump morte2_s20

        '"Nech to. Mám pár dalších otázek…"{#morte2_s19_r41218}':
            # a54 # r41218
            jump morte2_s12

        '"Rozuměl jsem. Budu opatrný."{#morte2_s19_r41219}' if morte2Logic.r41219_condition():
            # a55 # r41219
            jump morte2_s8

        '"Rozuměl jsem. Budu opatrný."{#morte2_s19_r41220}' if morte2Logic.r41220_condition():
            # a56 # r41220
            jump morte2_dispose


# s20 # say41221
label morte2_s20: # from 19.0
    nr '"Ty jsi snad neposlouchal?! Říkal jsem, že Spalovači věří, že všichni musí zemřít, čím dřív, tím líp. Nebo ty si snad myslíš, že ty těla tady okolo jsou raději v knize mrtvých než mimo ni?"{#morte2_s20_}'

    menu:
        '"Nech to. Mám pár dalších otázek…"{#morte2_s20_r41222}':
            # a57 # r41222
            jump morte2_s12

        '"Jasně… já… se pokusím si to zapamatovat."{#morte2_s20_r41223}' if morte2Logic.r41223_condition():
            # a58 # r41223
            jump morte2_s8

        '"Jasně… já… se pokusím si to zapamatovat."{#morte2_s20_r41224}' if morte2Logic.r41224_condition():
            # a59 # r41224
            jump morte2_dispose


# s21 # say41225
label morte2_s21: # from 12.6
    nr '"Ty, dobře… *použij* je. Pořád krvácíš, a všude."  POZNÁMKA: Abys mohl použít obvazy sám na sebe , klikni na ně pravým tlačítkem v obrazovce inventáře. Abys je použil na někoho jiného, umísti je do jednoho ze slotů pro rychlý přístup, zvol tlačítko "použít" z rychlého menu na světové obrazovce, poté klikni na cíl léčení.{#morte2_s21_}'

    menu:
        '"Nech to. Mám pár dalších otázek…"{#morte2_s21_r41226}':
            # a60 # r41226
            jump morte2_s12

        '"Díky. Myslím, že už s tím umím zacházet."{#morte2_s21_r41227}' if morte2Logic.r41227_condition():
            # a61 # r41227
            jump morte2_s8

        '"Díky. Myslím, že už s tím umím zacházet."{#morte2_s21_r41228}' if morte2Logic.r41228_condition():
            # a62 # r41228
            jump morte2_dispose


# s22 # say41229
label morte2_s22: # from 12.4
    nr '"Smrt navštěvuje Sféry každým dnem, šéfe. Tyhle belhalové jsou všehno, co zustává ze zlých existencí, kteří zaprodali svou duši po smrti hlídačům."{#morte2_s22_}'

    menu:
        '"Nech to. Mám pár dalších otázek…"{#morte2_s22_r41230}':
            # a63 # r41230
            jump morte2_s12

        '"Jasně… já… se pokusím si to zapamatovat."{#morte2_s22_r41231}' if morte2Logic.r41231_condition():
            # a64 # r41231
            jump morte2_s8

        '"Jasně… já… se pokusím si to zapamatovat."{#morte2_s22_r41232}' if morte2Logic.r41232_condition():
            # a65 # r41232
            jump morte2_dispose


# s23 # say41233
label morte2_s23: # from 12.5
    nr '"Co - to myslíš *vážně?* Podívej, šefe, tyhle mrtvý škvrňata jsou pro silné stydlivky jako my poslední šancí, jak se spárovat. Musíme být *rytířští*… žádné rozsekávání kvůli klíči, žádné utínání jejich údů a tak podobně."{#morte2_s23_}'

    menu:
        '"Poslední šance? O čem to *mluvíš*?"{#morte2_s23_r41234}':
            # a66 # r41234
            jump morte2_s24

        '"Nevadí. Mám pro tebe další otázky…"{#morte2_s23_r41235}':
            # a67 # r41235
            jump morte2_s12

        '"Jasně… já… se pokusím si to zapamatovat."{#morte2_s23_r41236}':
            # a68 # r41236
            jump morte2_dispose


# s24 # say41237
label morte2_s24: # from 23.0
    nr '"Šéfe, ONI JSOU mrtví, MY JSME mrtví… chápeš, kam směřuju? Jo? No?"{#morte2_s24_}'

    menu:
        '"Ne… ne, vlastně nechápu."{#morte2_s24_r41238}':
            # a69 # r41238
            jump morte2_s25

        '"Hele *nemůžeš* jít rovnou k věci?"{#morte2_s24_r41239}' if morte2Logic.r41239_condition():
            # a70 # r41239
            jump morte2_s25

        '"Nevadí. Mám pro tebe další otázky…"{#morte2_s24_r41240}':
            # a71 # r41240
            jump morte2_s12

        '"Už jsem slyšel dost. Jdeme."{#morte2_s24_r41241}':
            # a72 # r41241
            jump morte2_dispose


# s25 # say41242
label morte2_s25: # from 24.0 24.1
    nr '"Šéfe, už máme spojovací rys s těma belhajícíma ženama. *Všichni* jsme zemřeli nejméně jednou: máme o čem mluvit. Budou si vážit mužů, kteří mají zkušenosti se smrtí, jako třeba my."{#morte2_s25_}'

    menu:
        '"Počkej… neříkal jsi předtím, že já *nejsem* mrtvý?"{#morte2_s25_r41243}':
            # a73 # r41243
            jump morte2_s26

        '"Nevadí. Mám pro tebe další otázky…"{#morte2_s25_r41244}':
            # a74 # r41244
            jump morte2_s12

        '"Už jsem slyšel dost. Jdeme."{#morte2_s25_r41245}':
            # a75 # r41245
            jump morte2_dispose


# s26 # say41246
label morte2_s26: # from 25.0
    nr '"Dobře… jasný, *ty* nemusíš bejt mrtvej, ale *já* sem. A dokud ještě stojím, nehodlám se s nějakou z těchhle krásnejch a silnejch mrtvol, který tu vidím, dělit o rakev." Morte začal klapat zuby, jako když na něco čeká. "„Možná, že se s nima budou chtít hlídači spárovat jako první, a to není dobrý…"{#morte2_s26_}'

    menu:
        '"Chci se tě ještě na něco zeptat, Morte…"{#morte2_s26_r41247}':
            # a76 # r41247
            jump morte2_s12

        '"Už jsem slyšel dost. Jdeme."{#morte2_s26_r41248}':
            # a77 # r41248
            jump morte2_dispose


# s27 # say41250
label morte2_s27: # - # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    nr '"Věděl jsem že se vrátíš, šéfe! Konečně jsi zjistil, že mě potřebuješ, huh?"{#morte2_s27_}'

    menu:
        '"Jasně… jdeme."{#morte2_s27_r41251}':
            # a78 # r41251
            $ morte2Logic.r41251_action()
            jump morte2_dispose

        '"Teď to není správné, Morte."{#morte2_s27_r41252}':
            # a79 # r41252
            jump morte2_s28


# s28 # say41253
label morte2_s28: # from 27.1
    nr '"Hmmmph. Dobře, nevím, jak dlouho jsme sem chodil čekat, tak ti dávám JEDNU poslední šanci. Jseš si jistý, že nechceš moje chytré rady a mou rychlou hlavu?"{#morte2_s28_}'

    menu:
        '"Morte, nemáš OBĚ tyhle věci."{#morte2_s28_r41254}':
            # a80 # r41254
            jump morte2_s29

        '"Jasně, změnil jsem své mínění. Pojď, jdeme."{#morte2_s28_r41255}':
            # a81 # r41255
            $ morte2Logic.r41255_action()
            jump morte2_dispose

        '"Teď ne, Morte. Možná později."{#morte2_s28_r41256}':
            # a82 # r41256
            jump morte2_s29


# s29 # say41257
label morte2_s29: # from 28.0 28.2
    nr '"Snažíš se zranit moje city, šéfe? Co, řekl jsme snad něco? Nebo snad proto, že nemám ruce? Co?"{#morte2_s29_}'

    menu:
        '"Jasně, změnil jsem své mínění. Pojď, jdeme."{#morte2_s29_r41258}':
            # a83 # r41258
            $ morte2Logic.r41258_action()
            jump morte2_dispose

        '"Nic z toho. Jenom si myslím, že teď nepotřebuji tvou společnost. Sbohem, Morte."{#morte2_s29_r41259}':
            # a84 # r41259
            jump morte2_s30


# s30 # say41260
label morte2_s30: # from 29.1
    nr '"Dobře, nebudu čekat NAVŽDY, takže pro tebe bude lepší přijít hned jak změníš svoje mínění."{#morte2_s30_}'

    menu:
        '"Příjdu. Sbohem, Morte."{#morte2_s30_r41261}':
            # a85 # r41261
            jump morte2_dispose


# s31 # say41262
label morte2_s31: # - # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"Vysoké mocnosti. To je PEKLO tahleta kniha."{#morte2_s31_}'

    menu:
        '"Co je to?"{#morte2_s31_r41263}':
            # a86 # r41263
            $ morte2Logic.r41263_action()
            jump morte2_s32


# s32 # say41264
label morte2_s32: # from 31.0
    nr '"Jestli tuším správně, říkal jsem, že je to kniha, do které píšou jména všech špatných existencí, které mají tolik smůly, že se jim nepodaří dostat se odsud."{#morte2_s32_}'

    menu:
        '"Může tam být i moje jméno?"{#morte2_s32_r41265}':
            # a87 # r41265
            jump morte2_s33


# s33 # say41266
label morte2_s33: # from 32.0
    nr '"Eh… inu… *tuším.* Aby ses odsud dostal, musíš žvanit tou svojí kebulí na toho vznášejícího se Spalovače tady. Ale nejsem si jistý, že je to dobrý nápad."{#morte2_s33_}'

    menu:
        '"Dobře, potřebuji odpověď. Jdu si s ním promluvit."{#morte2_s33_r41267}':
            # a88 # r41267
            jump morte2_dispose
