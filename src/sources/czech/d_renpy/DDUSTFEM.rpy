init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dustfem_logic import DustfemLogic
    dustfemLogic = DustfemLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUSTFEM.DLG
# ###


# s0 # say298
label dustfem_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Spalovačka nevypadá, že by tě poznala. Musela si tě splést s jedním z mrtvých dělníků.{#dustfem_s0_}'

    menu:
        '"Zdravím."{#dustfem_s0_r299}':
            # a0 # r299
            jump dustfem_s1

        '"Kdo jsi?"{#dustfem_s0_r318}':
            # a1 # r318
            jump dustfem_s1

        '"Co je tohle za místo?"{#dustfem_s0_r1168}':
            # a2 # r1168
            jump dustfem_s1

        '"Měl bych nějaké otázky…"{#dustfem_s0_r1169}':
            # a3 # r1169
            jump dustfem_s1

        'Nechej ji na pokoji.{#dustfem_s0_r1170}':
            # a4 # r1170
            jump dustfem_dispose


# s1 # say1171
label dustfem_s1: # from 0.0 0.1 0.2 0.3
    nr 'Spalovačka odskočí, pak k tobě otočí hlavu a začne na tebe civět. Vypadá zaskočeně - tvůj převlek musí být celkem dobrý.{#dustfem_s1_}'

    menu:
        'Využij výhody překvapení a chyť ji pod krkem, než může někoho zavolat.{#dustfem_s1_r1172}':
            # a5 # r1172
            jump dustfem_s41

        '"Měl bych nějaké otázky."{#dustfem_s1_r1174}':
            # a6 # r1174
            jump dustfem_s2

        'Odejdi. Rychle.{#dustfem_s1_r1175}':
            # a7 # r1175
            jump dustfem_s2


# s2 # say1176
label dustfem_s2: # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    nr 'Spalovačka udělá krok zpět, pak třikrát za sebou krátce tleskne. Krátce nato začne v Márnici vyzvánět velký železný zvon.{#dustfem_s2_}'

    menu:
        '"Nuže dobrá…"{#dustfem_s2_r1225}':
            # a8 # r1225
            $ dustfemLogic.r1225_action()
            jump dustfem_dispose


# s3 # say1177
label dustfem_s3: # externs morte_s84
    nr 'Pobledlá žena je oblečena v dlouhých tmavých šatech. Vychází z ní slabý zatuchlý zápach. V obličeji má prázdný výraz a zdá se, že je zaměstnána svými povinnostmi.{#dustfem_s3_}'

    menu:
        '"Zdravím."{#dustfem_s3_r1226}':
            # a9 # r1226
            jump dustfem_s4

        '"Kdo jsi?"{#dustfem_s3_r1227}':
            # a10 # r1227
            jump dustfem_s4

        '"Co je tohle za místo?"{#dustfem_s3_r1228}':
            # a11 # r1228
            jump dustfem_s4

        '"Měl bych nějaké otázky…"{#dustfem_s3_r1229}':
            # a12 # r1229
            jump dustfem_s4

        'Nechej ji na pokoji.{#dustfem_s3_r1230}':
            # a13 # r1230
            jump dustfem_dispose


# s4 # say1178
label dustfem_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Spalovačka pomalu zvedá hlavu a otáčí se k tobě. "Ztratil ses?"{#dustfem_s4_}'

    menu:
        '"Ano."{#dustfem_s4_r1231}':
            # a14 # r1231
            jump dustfem_s5

        '"Ne."{#dustfem_s4_r1232}':
            # a15 # r1232
            jump dustfem_s6

        '"Ne, neztratil jsem se. Měl bych nějaké otázky…"{#dustfem_s4_r1233}':
            # a16 # r1233
            jump dustfem_s6

        '"Sbohem."{#dustfem_s4_r1234}':
            # a17 # r1234
            jump dustfem_s2


# s5 # say1179
label dustfem_s5: # from 4.0 16.2 51.1
    nr '"Zavolám stráže aby tě odtud vyvedly. Chvíli vydrž."{#dustfem_s5_}'

    menu:
        'Chyť ji pod krkem, než může někoho zavolat.{#dustfem_s5_r1235}' if dustfemLogic.r1235_condition():
            # a18 # r1235
            jump dustfem_s44

        'Chyť ji pod krkem, než může někoho zavolat.{#dustfem_s5_r1236}' if dustfemLogic.r1236_condition():
            # a19 # r1236
            jump dustfem_s41

        'Odejdi. Rychle.{#dustfem_s5_r1237}':
            # a20 # r1237
            jump dustfem_s2

        'Čekej.{#dustfem_s5_r1238}':
            # a21 # r1238
            jump dustfem_s2


# s6 # say1180
label dustfem_s6: # from 4.1 4.2 51.2 51.3
    nr '"Jestli ses neztratil, tak co tu potom děláš?"{#dustfem_s6_}'

    menu:
        '"To tě nemusí zajímat."{#dustfem_s6_r1239}':
            # a22 # r1239
            jump dustfem_s7

        '"Probudil jsem se na jedné z těch kamenných desek v preparační místnosti."{#dustfem_s6_r1240}':
            # a23 # r1240
            jump dustfem_s8

        '"Někoho tu hledám."{#dustfem_s6_r1241}':
            # a24 # r1241
            jump dustfem_s9

        '"Byl jsem sem přivezen, ale vypadá to, že se jedná o omyl."{#dustfem_s6_r1242}' if dustfemLogic.r1242_condition():
            # a25 # r1242
            jump dustfem_s16

        'Odejdi. Rychle.{#dustfem_s6_r1243}':
            # a26 # r1243
            jump dustfem_s2


# s7 # say1181
label dustfem_s7: # from 6.0 9.0 20.0
    nr '"Obávám se, že to je Má věc. Možná ti stráže rozvážou jazyk." Spalovačka udělá krok zpět; vypadá, že se chystá zavolat stráže.{#dustfem_s7_}'

    menu:
        'Chyť ji pod krkem, než může někoho zavolat.{#dustfem_s7_r1244}' if dustfemLogic.r1244_condition():
            # a27 # r1244
            jump dustfem_s44

        'Chyť ji pod krkem, než může někoho zavolat.{#dustfem_s7_r1245}' if dustfemLogic.r1245_condition():
            # a28 # r1245
            jump dustfem_s41

        '"Tak je svolej. Rád se s nimi setkám."{#dustfem_s7_r1246}':
            # a29 # r1246
            $ dustfemLogic.r1246_action()
            jump dustfem_dispose


# s8 # say1182
label dustfem_s8: # from 6.1 16.0 20.1
    nr '"Děláš si srandu? Asi bys to koukám radši sdělil strážím." Spalovačka udělá krok zpět; vypadá, že se chystá zavolat stráže.{#dustfem_s8_}'

    menu:
        'Chyť ji pod krkem, než může někoho zavolat.{#dustfem_s8_r1247}' if dustfemLogic.r1247_condition():
            # a30 # r1247
            jump dustfem_s44

        'Chyť ji pod krkem, než může někoho zavolat.{#dustfem_s8_r1248}' if dustfemLogic.r1248_condition():
            # a31 # r1248
            jump dustfem_s41

        '"Tak je svolej. Rád se s nimi setkám."{#dustfem_s8_r1249}':
            # a32 # r1249
            $ dustfemLogic.r1249_action()
            jump dustfem_dispose


# s9 # say1183
label dustfem_s9: # from 6.2 20.2
    nr '"Koho tu hledáš?"{#dustfem_s9_}'

    menu:
        '"To není tvoje starost."{#dustfem_s9_r1251}':
            # a33 # r1251
            jump dustfem_s7

        '"Hledám tu Dhalla."{#dustfem_s9_r1253}' if dustfemLogic.r1253_condition():
            # a34 # r1253
            jump dustfem_s10

        '"Hledám tady Dhalla."{#dustfem_s9_r1255}' if dustfemLogic.r1255_condition():
            # a35 # r1255
            jump dustfem_s11

        '"Hledám tu Deionarru."{#dustfem_s9_r1258}' if dustfemLogic.r1258_condition():
            # a36 # r1258
            jump dustfem_s13

        '"Přišel jsem za Deionarrou."{#dustfem_s9_r4336}' if dustfemLogic.r4336_condition():
            # a37 # r4336
            jump dustfem_s12

        '"Přišel jsem sem za Soegem."{#dustfem_s9_r33224}' if dustfemLogic.r33224_condition():
            # a38 # r33224
            jump dustfem_s15

        '"Přišel jsem sem za Soegem."{#dustfem_s9_r33226}' if dustfemLogic.r33226_condition():
            # a39 # r33226
            jump dustfem_s14

        'Lži: "Uh… Adahn. Pracuje tu ještě, nebo…?"{#dustfem_s9_r33227}' if dustfemLogic.r33227_condition():
            # a40 # r33227
            $ dustfemLogic.r33227_action()
            jump dustfem_s21

        'Lži: "Uh… Adahn. Pracuje tu ještě, nebo…?"{#dustfem_s9_r33229}' if dustfemLogic.r33229_condition():
            # a41 # r33229
            jump dustfem_s21

        '"Uh, nikdo. Přeřekl jsem se."{#dustfem_s9_r33231}':
            # a42 # r33231
            jump dustfem_s20


# s10 # say1184
label dustfem_s10: # from 9.1
    nr '"Dhall je v přijímací místnosti v tomhle patře. Musím tě varovat… Dhall je docela dost zaneprázdněn svými povinnostmi a není na tom se zdravím zrovna nejlépe. Pokud s ním nemáš nějaké důležité jednání, tak bych ho, být tebou, nerušila."{#dustfem_s10_}'

    menu:
        '"Dobře. Díky za informaci."{#dustfem_s10_r1259}':
            # a43 # r1259
            jump dustfem_s48


# s11 # say1185
label dustfem_s11: # from 9.2
    nr '"Dhall je s největší pravděpodobností v přijímací místnosti ve druhém patře. Musím tě varovat… Dhall je docela dost zaneprázdněn svými povinnostmi a není na tom se zdravím zrovna nejlépe. Pokud s ním nemáš nějaké důležité jednání, tak bych ho, být tebou, nerušila."{#dustfem_s11_}'

    menu:
        '"Dobře. Díky za informaci."{#dustfem_s11_r1260}':
            # a44 # r1260
            jump dustfem_s48


# s12 # say1186
label dustfem_s12: # from 9.4 19.1
    nr '"Deionarra? Vím, že je v pamětní síni v prvním patře pohřbena nějaká žena. Mohla by to být ona?"{#dustfem_s12_}'

    menu:
        '"S největší pravděpodobností. Díky."{#dustfem_s12_r1261}':
            # a45 # r1261
            jump dustfem_s48


# s13 # say1187
label dustfem_s13: # from 9.3
    nr '"Deionarra? Vím, že je v pamětní síni v severozápadní části Márnice pohřbena nějaká žena. Mohla by to být ona?"{#dustfem_s13_}'

    menu:
        '"S největší pravděpodobností. Díky."{#dustfem_s13_r1262}':
            # a46 # r1262
            jump dustfem_s48


# s14 # say1188
label dustfem_s14: # from 9.6
    nr '"Věřím, že Soego je u vstupní brány v prvním patře. Pracuje tam jako stráž v hodinách mimo špičku."{#dustfem_s14_}'

    menu:
        '"Moc dobře. Díky."{#dustfem_s14_r1263}':
            # a47 # r1263
            jump dustfem_s48


# s15 # say1189
label dustfem_s15: # from 9.5
    nr '"Věřím, že Soego je u vstupní brány v prvním patře. Pracuje tam jako stráž v hodinách mimo špičku."{#dustfem_s15_}'

    menu:
        '"Moc dobře. Díky."{#dustfem_s15_r1264}':
            # a48 # r1264
            jump dustfem_s48


# s16 # say1190
label dustfem_s16: # from 6.3 20.3
    nr '"Kdo byl pohřben? Přece se snad tyhle služby konají v Márnici na jiném místě."{#dustfem_s16_}'

    menu:
        '"Ty jsi mi nerozuměl… tím omylem jsem JÁ."{#dustfem_s16_r1265}':
            # a49 # r1265
            jump dustfem_s8

        '"To by mohlo být. Kde se tyto obřady konají?"{#dustfem_s16_r1266}':
            # a50 # r1266
            jump dustfem_s17

        '"Můžeš mi ukázat cestu ven?"{#dustfem_s16_r1267}':
            # a51 # r1267
            jump dustfem_s5


# s17 # say1191
label dustfem_s17: # from 16.1
    nr '"Několik pohřebních komor lemuje obvod Márnice. Pak se tyto hrobky stáčejí kolem zdi v prvním a druhém patře. Znáš jméno toho zemřelého?"{#dustfem_s17_}'

    menu:
        '"Ne."{#dustfem_s17_r1268}':
            # a52 # r1268
            jump dustfem_s18

        '"Ano."{#dustfem_s17_r1269}':
            # a53 # r1269
            jump dustfem_s19


# s18 # say1192
label dustfem_s18: # from 17.0
    nr '"Pak by sis měl popovídat s někým s průvodců u vstupní brány. Můžou ti pomoci."{#dustfem_s18_}'

    menu:
        '"Dobře. Díky."{#dustfem_s18_r1270}':
            # a54 # r1270
            jump dustfem_dispose


# s19 # say1193
label dustfem_s19: # from 17.1
    nr 'Spalovačka čeká.{#dustfem_s19_}'

    menu:
        '"Pardon… spletl jsem se. Neznám jméno toho zemřelého."{#dustfem_s19_r1271}':
            # a55 # r1271
            jump dustfem_s20

        '"Jmenuje se Deionarra."{#dustfem_s19_r1272}' if dustfemLogic.r1272_condition():
            # a56 # r1272
            jump dustfem_s12

        'Lež: "Mé jméno je… ehm, Adahn."{#dustfem_s19_r1273}' if dustfemLogic.r1273_condition():
            # a57 # r1273
            $ dustfemLogic.r1273_action()
            jump dustfem_s21

        'Lež: "Mé jméno je… ehm, Adahn."{#dustfem_s19_r1274}' if dustfemLogic.r1274_condition():
            # a58 # r1274
            jump dustfem_s21

        'Nakloň se k ní, jako bys jí chtěl něco pošeptat, pak ji chyť pod krkem.{#dustfem_s19_r1275}' if dustfemLogic.r1275_condition():
            # a59 # r1275
            jump dustfem_s44

        'Nakloň se k ní, jako bys jí chtěl něco pošeptat, pak ji chyť pod krkem.{#dustfem_s19_r1276}' if dustfemLogic.r1276_condition():
            # a60 # r1276
            jump dustfem_s45

        'Uteč.{#dustfem_s19_r1277}':
            # a61 # r1277
            jump dustfem_s2


# s20 # say1194
label dustfem_s20: # from 9.9 19.0
    nr '"Aha. Takže co tu děláš?"{#dustfem_s20_}'

    menu:
        '"To tě nemusí zajímat."{#dustfem_s20_r1278}':
            # a62 # r1278
            jump dustfem_s7

        '"Probudil jsem se na jedné z těch kamenných desek v preparační místnosti."{#dustfem_s20_r1279}':
            # a63 # r1279
            jump dustfem_s8

        '"Někoho tu hledám."{#dustfem_s20_r1280}':
            # a64 # r1280
            jump dustfem_s9

        '"Byl jsem sem přivezen, ale vypadá to, že se jedná o omyl."{#dustfem_s20_r1281}' if dustfemLogic.r1281_condition():
            # a65 # r1281
            jump dustfem_s16

        'Uteč.{#dustfem_s20_r1282}':
            # a66 # r1282
            jump dustfem_s2


# s21 # say1195
label dustfem_s21: # from 9.7 9.8 19.2 19.3
    nr '"To jméno mi není povědomé. Poraď se s některým z průvodců u vstupní brány… měli by být schopni tě nasměrovat lépe než já."{#dustfem_s21_}'

    menu:
        '"Dobře. Udělám to. Sbohem."{#dustfem_s21_r1283}':
            # a67 # r1283
            jump dustfem_dispose


# s22 # say1196
label dustfem_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Pobledlá žena je oblečena v dlouhých tmavých šatech. Vychází z ní slabý zatuchlý zápach. V obličeji má prázdný výraz a zdá se, že je zaměstnána svými povinnostmi.{#dustfem_s22_}'

    menu:
        '"Zdravím."{#dustfem_s22_r1284}':
            # a68 # r1284
            jump dustfem_s23

        'Nechej ji na pokoji.{#dustfem_s22_r1285}':
            # a69 # r1285
            jump dustfem_dispose


# s23 # say1197
label dustfem_s23: # from 22.0
    nr 'Pomalu se otáčí a její oči spočinuly na tvém oblečení. "Zdravím kolego."{#dustfem_s23_}'

    menu:
        '"Kdo jsi?"{#dustfem_s23_r1286}':
            # a70 # r1286
            jump dustfem_s24

        '"Co je tohle za místo?"{#dustfem_s23_r1287}':
            # a71 # r1287
            jump dustfem_s25

        '"Měl bych nějaké otázky…"{#dustfem_s23_r1288}':
            # a72 # r1288
            jump dustfem_s26

        'Nechej ji na pokoji.{#dustfem_s23_r1289}':
            # a73 # r1289
            jump dustfem_dispose


# s24 # say1198
label dustfem_s24: # from 23.0
    nr '"Taky by mě něco zajímalo. Tebe neznám. Kdo jsi?"{#dustfem_s24_}'

    menu:
        'Lež: "Mé jméno je… ehm, Adahn."{#dustfem_s24_r1290}' if dustfemLogic.r1290_condition():
            # a74 # r1290
            $ dustfemLogic.r1290_action()
            jump dustfem_s49

        'Lež: "Mé jméno je… ehm, Adahn."{#dustfem_s24_r1291}' if dustfemLogic.r1291_condition():
            # a75 # r1291
            jump dustfem_s49

        '"Mé jméno tě nemusí zajímat. Musím odejít. Sbohem."{#dustfem_s24_r1292}' if dustfemLogic.r1292_condition():
            # a76 # r1292
            jump dustfem_s47

        '"Mé jméno tě nemusí zajímat. Musím odejít. Sbohem."{#dustfem_s24_r1293}' if dustfemLogic.r1293_condition():
            # a77 # r1293
            jump dustfem_s46


# s25 # say1199
label dustfem_s25: # from 23.1
    nr '"Tohle je Márnice…" Spalovačka se na tebe na chvíli podívá, jako by ji překvapilo, cos právě řekl. "Ještě jednou jak jsi říkal, že se jmenuješ?"{#dustfem_s25_}'

    menu:
        'Lež: "Mé jméno je… ehm, Adahn."{#dustfem_s25_r1294}' if dustfemLogic.r1294_condition():
            # a78 # r1294
            $ dustfemLogic.r1294_action()
            jump dustfem_s49

        'Lež: "Mé jméno je… ehm, Adahn."{#dustfem_s25_r1295}' if dustfemLogic.r1295_condition():
            # a79 # r1295
            jump dustfem_s49

        '"Mé jméno tě nemusí zajímat. Musím odejít. Sbohem."{#dustfem_s25_r1296}' if dustfemLogic.r1296_condition():
            # a80 # r1296
            jump dustfem_s47

        '"Mé jméno tě nemusí zajímat. Musím odejít. Sbohem."{#dustfem_s25_r1297}' if dustfemLogic.r1297_condition():
            # a81 # r1297
            jump dustfem_s46


# s26 # say1200
label dustfem_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Spalovačka trpělivě čeká na vysvětlení.{#dustfem_s26_}'

    menu:
        '"Můžeš mi ukázat odtud cestu ven?"{#dustfem_s26_r1298}':
            # a82 # r1298
            jump dustfem_s27

        '"Znáš někoho jménem Pharod?"{#dustfem_s26_r1299}':
            # a83 # r1299
            jump dustfem_s28

        '"Nemůžu najít deník. Neviděl jsi ho?"{#dustfem_s26_r1300}':
            # a84 # r1300
            jump dustfem_s39

        '"Nevadí. Promiň, že tě obtěžuji."{#dustfem_s26_r1328}':
            # a85 # r1328
            jump dustfem_s48


# s27 # say1201
label dustfem_s27: # from 26.0
    nr '"Můžeš jednoduše odejít vstupní branou. Je v prvním patře."{#dustfem_s27_}'

    menu:
        '"Měl bych nějaké další otázky…"{#dustfem_s27_r1329}':
            # a86 # r1329
            jump dustfem_s26

        '"Díky. Sbohem."{#dustfem_s27_r1330}':
            # a87 # r1330
            jump dustfem_s48


# s28 # say1202
label dustfem_s28: # from 26.1
    nr '"To jméno…" Spalovačka se na chvíli zamlčí. "To jméno mi *zní* nějak povědomě… Myslím, že odvolali Sběrače tohoto jména. Dhall Scrivener by o něm měl vědět."{#dustfem_s28_}'

    menu:
        '"Sběrač?"{#dustfem_s28_r1331}':
            # a88 # r1331
            jump dustfem_s29

        '"Dhall?"{#dustfem_s28_r1334}':
            # a89 # r1334
            jump dustfem_s30

        '"Měl bych nějaké další otázky…"{#dustfem_s28_r1338}':
            # a90 # r1338
            jump dustfem_s26

        '"Díky za tvůj čas. Sbohem."{#dustfem_s28_r1395}':
            # a91 # r1395
            jump dustfem_s48


# s29 # say1203
label dustfem_s29: # from 28.0
    nr '"Sběrači… sbírají mrtvé, kteří zemřeli v ulicích Sigilu a přináší je do Márnice…" Spalovačka se odmlčí, zamračí se. "Ty nejsi tady z okolí. Kdo jsi?"{#dustfem_s29_}'

    menu:
        '"Jsem tu nový. Odpusť mi mou neznalost."{#dustfem_s29_r1396}' if dustfemLogic.r1396_condition():
            # a92 # r1396
            jump dustfem_s50

        '"Já… jsem tu nový. Já… se snažím přizpůsobit."{#dustfem_s29_r1397}' if dustfemLogic.r1397_condition():
            # a93 # r1397
            jump dustfem_s47

        '"Ano, dobře… co je to za jméno? Ať tě provází štěstí, kolego."{#dustfem_s29_r1398}' if dustfemLogic.r1398_condition():
            # a94 # r1398
            jump dustfem_s47

        '"Jestli mi nemůžeš pomoct, pak najdu někoho jiného, kdo mi pomůže. Sbohem."{#dustfem_s29_r1399}' if dustfemLogic.r1399_condition():
            # a95 # r1399
            jump dustfem_s46


# s30 # say1204
label dustfem_s30: # from 28.1
    nr '"Dhall je jedním z nejváženějších členů našeho společenstva. Když tak o tom uvažuji, nikdo nepřemýšlel o přirozenosti Pravé smrti tolik, jako právě on. Má mnoho moudrosti na rozdávání. Jestliže ho neznáš, doporučuji ti, aby sis s ním při nejbližší příležitosti promluvil. Již nebude dlouho pobývat ve stínu tohoto života."{#dustfem_s30_}'

    menu:
        '"Už nebude dlouho ve stínu této existence?"{#dustfem_s30_r4280}':
            # a96 # r4280
            jump dustfem_s31

        '"Kde najdu Dhalla?"{#dustfem_s30_r4281}' if dustfemLogic.r4281_condition():
            # a97 # r4281
            jump dustfem_s32

        '"Kde najdu Dhalla?"{#dustfem_s30_r4282}' if dustfemLogic.r4282_condition():
            # a98 # r4282
            jump dustfem_s33

        '"Mám nějaké otázky…"{#dustfem_s30_r4283}':
            # a99 # r4283
            jump dustfem_s26

        '"Díky za informaci. Promluvím si s ním."{#dustfem_s30_r33245}':
            # a100 # r33245
            jump dustfem_s48


# s31 # say1205
label dustfem_s31: # from 30.0 32.0 33.0
    nr 'Spalovačka přikyvuje. "Dhall je nemocný. Je starý, dokonce i na githzeraiské poměry. Po těžké nemoci, kterou má, bude bezpochyby následovat smrt. Je opravdu šťastný."{#dustfem_s31_}'

    menu:
        '"Githzeraiské standarty?"{#dustfem_s31_r4284}':
            # a101 # r4284
            jump dustfem_s34

        '"Co je to *githzerai?*"{#dustfem_s31_r4285}':
            # a102 # r4285
            jump dustfem_s35

        '"Šťastný?"{#dustfem_s31_r4286}':
            # a103 # r4286
            jump dustfem_s36

        '"Aha. Mám nějaké otázky…"{#dustfem_s31_r4287}':
            # a104 # r4287
            jump dustfem_s26

        '"Díky za tvůj čas. Musím jít."{#dustfem_s31_r4337}':
            # a105 # r4337
            jump dustfem_s48


# s32 # say1206
label dustfem_s32: # from 30.1
    nr '"Dhall je v přijímací místnosti v severozápadní části tohoto patra. Musím tě varovat… Dhall je hodně zaneprázdněný… hodně času, který nespolykají jeho povinnosti velkou měrou spotřebuje jeho těžká nemoc."{#dustfem_s32_}'

    menu:
        '"Je Dhall nemocný?"{#dustfem_s32_r4288}':
            # a106 # r4288
            jump dustfem_s31

        '"Díky za tvůj čas. Musím jít. Sbohem."{#dustfem_s32_r4289}':
            # a107 # r4289
            jump dustfem_s48


# s33 # say1207
label dustfem_s33: # from 30.2
    nr '"Dhall je s největší pravděpodobností v přijímací místnosti v druhém patře. Nezdržoval bych ho, protože je hodně zaneprázdněn… hodně času, který nespolykají jeho povinnosti velkou měrou spotřebuje jeho těžká nemoc."{#dustfem_s33_}'

    menu:
        '"Je Dhall nemocný?"{#dustfem_s33_r4290}':
            # a108 # r4290
            jump dustfem_s31

        '"Díky za tvůj čas. Musím jít. Sbohem."{#dustfem_s33_r4291}':
            # a109 # r4291
            jump dustfem_s48


# s34 # say1208
label dustfem_s34: # from 31.0
    nr '"Ano, githzeraiové žijí mnohem déle než lidé."{#dustfem_s34_}'

    menu:
        '"Co je to *githzerai?*"{#dustfem_s34_r4292}':
            # a110 # r4292
            jump dustfem_s35

        '"Co to znamená?"{#dustfem_s34_r4293}':
            # a111 # r4293
            jump dustfem_s36

        '"Oh. Mám nějaké otázky…"{#dustfem_s34_r4294}':
            # a112 # r4294
            jump dustfem_s26

        '"Díky za tvůj čas. Sbohem."{#dustfem_s34_r4295}':
            # a113 # r4295
            jump dustfem_s48


# s35 # say1209
label dustfem_s35: # from 31.1 34.0
    nr '"Githzeraiové jsou…" Spalovačka se odmlčí, pozorně si tě prohlíží. "Ty nejsi tady z okolí. Kdo jsi?"{#dustfem_s35_}'

    menu:
        '"Jsem nový zasvěcený. Odpusť mi mou ignoranci."{#dustfem_s35_r4296}' if dustfemLogic.r4296_condition():
            # a114 # r4296
            jump dustfem_s50

        '"Jsem… tady nový. Snažím se… zvyknout si."{#dustfem_s35_r4297}' if dustfemLogic.r4297_condition():
            # a115 # r4297
            jump dustfem_s47

        '"No, ech… na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."{#dustfem_s35_r4298}' if dustfemLogic.r4298_condition():
            # a116 # r4298
            jump dustfem_s47

        '"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."{#dustfem_s35_r4300}' if dustfemLogic.r4300_condition():
            # a117 # r4300
            jump dustfem_s46


# s36 # say1210
label dustfem_s36: # from 31.2 34.1
    nr '"Je šťastný proto, že konečně docílí Pravé smrti. Už nemusí pobývat ve stínu tohoto života."{#dustfem_s36_}'

    menu:
        '"A… to je dobrá věc?"{#dustfem_s36_r4299}':
            # a118 # r4299
            jump dustfem_s37

        '"Aha. Velmi vhodné. Mám nějaké otázky…"{#dustfem_s36_r4301}':
            # a119 # r4301
            jump dustfem_s26

        '"Aha. No, já budu muset jít. Sbohem."{#dustfem_s36_r4302}':
            # a120 # r4302
            jump dustfem_s48


# s37 # say1211
label dustfem_s37: # from 36.0
    nr 'Spalovačka přikyvuje. "Ano." Zamračí se, pozorně si tě prohlíží. "Ty nejsi tady z okolí. Kdo jsi?"{#dustfem_s37_}'

    menu:
        '"Jsem nový zasvěcený. Odpusť mi mou ignoranci."{#dustfem_s37_r4303}' if dustfemLogic.r4303_condition():
            # a121 # r4303
            jump dustfem_s50

        '"Jsem… tady nový. Snažím se… zvyknout si."{#dustfem_s37_r4304}' if dustfemLogic.r4304_condition():
            # a122 # r4304
            jump dustfem_s47

        '"No, ech… na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."{#dustfem_s37_r4305}' if dustfemLogic.r4305_condition():
            # a123 # r4305
            jump dustfem_s47

        '"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."{#dustfem_s37_r4306}' if dustfemLogic.r4306_condition():
            # a124 # r4306
            jump dustfem_s46


# s38 # say1212
label dustfem_s38: # -
    nr '"Ty nejsi jeden z nás, že ne? Co tu děláš? Jsi členem Anarchistů? Nebo jsi špeh z jiného společenství?" Spalovačka udělala krok zpět. "Stráže! Stráže!"{#dustfem_s38_}'

    menu:
        '"Sakra!"{#dustfem_s38_r4307}':
            # a125 # r4307
            $ dustfemLogic.r4307_action()
            jump dustfem_dispose

        '"Ššššš! Nemůžu ti odpovědět, když tak řveš!"{#dustfem_s38_r4308}' if dustfemLogic.r4308_condition():
            # a126 # r4308
            $ dustfemLogic.r4308_action()
            jump dustfem_dispose

        '"Ššššš! Nemůžu ti odpovědět, když tak řveš!"{#dustfem_s38_r4309}' if dustfemLogic.r4309_condition():
            # a127 # r4309
            $ dustfemLogic.r4309_action()
            jump dustfem_dispose


# s39 # say1213
label dustfem_s39: # from 26.2
    nr '"Deník? Žádnej sem neviděla."{#dustfem_s39_}'

    menu:
        '"Mám nějaké otázky…"{#dustfem_s39_r4310}':
            # a128 # r4310
            jump dustfem_s26

        '"Musím jít. Sbohem."{#dustfem_s39_r4311}':
            # a129 # r4311
            jump dustfem_s48


# s40 # say1214
label dustfem_s40: # -
    nr 'Pobledlá žena je oblečena v dlouhých tmavých šatech. Vychází z ní slabý zatuchlý zápach. V obličeji má prázdný výraz a zdá se, že je zaměstnána svými povinnostmi{#dustfem_s40_}'

    menu:
        '"Zdravím."{#dustfem_s40_r4312}' if dustfemLogic.r4312_condition():
            # a130 # r4312
            jump morte_s81  # EXTERN

        '"Zdravím."{#dustfem_s40_r4313}' if dustfemLogic.r4313_condition():
            # a131 # r4313
            jump morte_s83  # EXTERN

        '"Zdravím."{#dustfem_s40_r4314}' if dustfemLogic.r4314_condition():
            # a132 # r4314
            jump dustfem_s4

        '"Zdravím."{#dustfem_s40_r4315}' if dustfemLogic.r4315_condition():
            # a133 # r4315
            jump dustfem_s4

        'Nechej ji být.{#dustfem_s40_r4316}':
            # a134 # r4316
            jump dustfem_dispose


# s41 # say1215
label dustfem_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Předtím než Spalovačka stačí vydat ze sebe nějaké slovo, sevřeš rukama rychle její spánky a trhneš jí hlavou ostře doleva.{#dustfem_s41_}'

    menu:
        '"Nemůžu ti dovolit spustit poplach…"{#dustfem_s41_r4317}':
            # a135 # r4317
            $ dustfemLogic.r4317_action()
            jump dustfem_s42


# s42 # say1216
label dustfem_s42: # from 41.0 45.0
    nr 'Ozve se *křupnutí,* a Spalovačka spadne bezvládně do tvých rukou.{#dustfem_s42_}'

    menu:
        '"Radši ty, než já, Spalovači."{#dustfem_s42_r4318}' if dustfemLogic.r4318_condition():
            # a136 # r4318
            $ dustfemLogic.r4318_action()
            jump dustfem_s43

        '"Radši ty, než já, Spalovači."{#dustfem_s42_r4319}' if dustfemLogic.r4319_condition():
            # a137 # r4319
            $ dustfemLogic.r4319_action()
            jump dustfem_dispose


# s43 # say1217
label dustfem_s43: # from 42.0
    nr 'K svému překvapení zjišťuješ, žes jednal naprosto instinktivně, jako bys to už dělal mnohokrát předtím… spolu s touto myšlenkou se ti vrací útržky paměti, ale nejsou dost silné na to, aby se úplně vynořily na povrch.{#dustfem_s43_}'

    menu:
        'Nechej tělo být, jdi dál.{#dustfem_s43_r4320}':
            # a138 # r4320
            $ dustfemLogic.r4320_action()
            jump dustfem_dispose


# s44 # say1218
label dustfem_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Nejsi dostatečně rychlý. Spalovačka se ti vysmekla, když ses ji pokusil překvapit. Udělala krok zpět, třikrát za sebou krátce tleskla. Krátce nato se v Márnici rozezněl velký železný zvon.{#dustfem_s44_}'

    menu:
        '"Dobrá tedy…"{#dustfem_s44_r4321}':
            # a139 # r4321
            $ dustfemLogic.r4321_action()
            jump dustfem_dispose


# s45 # say1219
label dustfem_s45: # from 19.5
    nr 'Když se k ní nakláníš, abys jí něco „pošeptal“, Spalovačka se k tobě taky nakloní. Když už je na dosah, sevřeš rukama rychle její spánky a trhneš jí hlavou ostře doleva.{#dustfem_s45_}'

    menu:
        '"Nemůžu ti dovolit spustit poplach…"{#dustfem_s45_r4322}':
            # a140 # r4322
            $ dustfemLogic.r4322_action()
            jump dustfem_s42


# s46 # say1220
label dustfem_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Spalovačka vypadá podezíravě. Zdá se, jako by chtěla něco říci, ale pak potřese hlavou a vrátí se ke svým povinnostem.{#dustfem_s46_}'

    menu:
        'Odejdi pryč.{#dustfem_s46_r4323}':
            # a141 # r4323
            jump dustfem_dispose


# s47 # say1221
label dustfem_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Spalovačka tě opatrně studuje. "Ty nejsi jeden z nás. Co tu děláš? Jsi členem Anarchistů? Nebo jsi špeh z jiného společenství? Vypadá to, že tenhle oříšek necháme pro naše stráže…"{#dustfem_s47_}'

    menu:
        'Zlom jí krk, než stačí zařvat.{#dustfem_s47_r4324}' if dustfemLogic.r4324_condition():
            # a142 # r4324
            jump dustfem_s44

        'Zlom jí krk, než stačí zařvat.{#dustfem_s47_r4325}' if dustfemLogic.r4325_condition():
            # a143 # r4325
            jump dustfem_s41

        'Odejdi. Rychle.{#dustfem_s47_r4326}':
            # a144 # r4326
            jump dustfem_s2

        '"Ne, ne… tak ne… Já, ech, já nejsem špión… hele, probudil jsem se na jednom z těch kamenů tady a…"{#dustfem_s47_r4327}':
            # a145 # r4327
            jump dustfem_s2


# s48 # say1222
label dustfem_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Spalovačka kývne a pak se vrátí ke svým povinnostem.{#dustfem_s48_}'

    menu:
        'Odejdi pryč.{#dustfem_s48_r4328}':
            # a146 # r4328
            jump dustfem_dispose


# s49 # say1223
label dustfem_s49: # from 24.0 24.1 25.0 25.1
    nr 'Spalovačka se mračí. "To jméno je mi neznámé."{#dustfem_s49_}'

    menu:
        '"Jsem nový zasvěcený. Odpusť mi mou ignoranci."{#dustfem_s49_r4329}' if dustfemLogic.r4329_condition():
            # a147 # r4329
            jump dustfem_s50

        '"Jsem… tady nový. Snažím se… naučit rutinu…{#dustfem_s49_r4331}' if dustfemLogic.r4331_condition():
            # a148 # r4331
            jump dustfem_s47

        '"No, ech… na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."{#dustfem_s49_r4332}' if dustfemLogic.r4332_condition():
            # a149 # r4332
            jump dustfem_s47

        '"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."{#dustfem_s49_r4333}' if dustfemLogic.r4333_condition():
            # a150 # r4333
            jump dustfem_s46


# s50 # say1224
label dustfem_s50: # from 29.0 35.0 37.0 49.0
    nr 'Spalovačka se stále mračí, ale lehce kývne. "Dobře. Jak ti můžu být nápomocná, kolego?"{#dustfem_s50_}'

    menu:
        '"Mám nějaké otázky…"{#dustfem_s50_r4334}':
            # a151 # r4334
            jump dustfem_s26

        '"Dneska nic. Sbohem."{#dustfem_s50_r4335}':
            # a152 # r4335
            jump dustfem_s46


# s51 # say66683
label dustfem_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Spalovač tě sleduje s kamenným výrazem na tváři. "Ztratil ses?"{#dustfem_s51_}'

    menu:
        '"Ne, jsem členem společenstva, jenom si prohlížím Márnici."{#dustfem_s51_r66684}' if dustfemLogic.r66684_condition():
            # a153 # r66684
            jump dustfem_s52

        '"Ano."{#dustfem_s51_r66685}' if dustfemLogic.r66685_condition():
            # a154 # r66685
            jump dustfem_s5

        '"Ne."{#dustfem_s51_r66686}' if dustfemLogic.r66686_condition():
            # a155 # r66686
            jump dustfem_s6

        '"Ne, neztratil jsem se. Mám pár otázek…"{#dustfem_s51_r66687}' if dustfemLogic.r66687_condition():
            # a156 # r66687
            jump dustfem_s6

        '"Sbohem."{#dustfem_s51_r66688}' if dustfemLogic.r66688_condition():
            # a157 # r66688
            jump dustfem_s2


# s52 # say66689
label dustfem_s52: # from 51.0
    nr 'Spalovač tě chvíli sleduje, a nakonec přikývne. "Dobrá tedy. Pokud budeš s něčím potřebovat pomoct, dej mi vědět."{#dustfem_s52_}'

    menu:
        '"Udělám to tak. Sbohem."{#dustfem_s52_r66690}':
            # a158 # r66690
            jump dustfem_dispose
