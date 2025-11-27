init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dustfem_logic import DustfemLogic
    dustfemLogic = DustfemLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUSTFEM.DLG
# ###


# s0 # say298
label dustfem_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Die Staubmenschen-Frau scheint dich nicht zu bemerken. Sie hält dich wohl für eine dieser lebenden Leichen, die hier arbeiten.{#dustfem_s0_}'

    menu:
        '"Sei gegrüßt."{#dustfem_s0_r299}':
            # a0 # r299
            jump dustfem_s1

        '"Wer bist du?"{#dustfem_s0_r318}':
            # a1 # r318
            jump dustfem_s1

        '"Wo bin ich hier?"{#dustfem_s0_r1168}':
            # a2 # r1168
            jump dustfem_s1

        '"Ich hätte ein paar Fragen…"{#dustfem_s0_r1169}':
            # a3 # r1169
            jump dustfem_s1

        'Laß sie in Ruhe.{#dustfem_s0_r1170}':
            # a4 # r1170
            jump dustfem_dispose


# s1 # say1171
label dustfem_s1: # from 0.0 0.1 0.2 0.3
    nr 'Die Staubmenschen-Frau zuckt zusammen und wirft den Kopf zu dir herum. Sie wirkt schockiert - deine Verkleidung muß ziemlich gut sein.{#dustfem_s1_}'

    menu:
        'Nutze ihre Überraschung aus und brich ihr das Genick, bevor sie rufen kann.{#dustfem_s1_r1172}':
            # a5 # r1172
            jump dustfem_s41

        '"Ich hätte ein paar Fragen."{#dustfem_s1_r1174}':
            # a6 # r1174
            jump dustfem_s2

        'Geh. Und zwar schnell.{#dustfem_s1_r1175}':
            # a7 # r1175
            jump dustfem_s2


# s2 # say1176
label dustfem_s2: # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    nr 'Die Staubmenschen-Frau geht einen Schritt zurück und klatscht dreimal fest in die Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die ganze Leichenhalle.{#dustfem_s2_}'

    menu:
        '"Nun gut…"{#dustfem_s2_r1225}':
            # a8 # r1225
            $ dustfemLogic.r1225_action()
            jump dustfem_dispose


# s3 # say1177
label dustfem_s3: # externs morte_s84
    nr 'Diese blasse Frau trägt eine lange dunkle Robe und riecht leicht muffig. Ihr Gesicht ist ausdruckslos; sie scheint in ihre Arbeit vertieft.{#dustfem_s3_}'

    menu:
        '"Sei gegrüßt."{#dustfem_s3_r1226}':
            # a9 # r1226
            jump dustfem_s4

        '"Wer bist du?"{#dustfem_s3_r1227}':
            # a10 # r1227
            jump dustfem_s4

        '"Wo bin ich hier?"{#dustfem_s3_r1228}':
            # a11 # r1228
            jump dustfem_s4

        '"Ich hätte ein paar Fragen…"{#dustfem_s3_r1229}':
            # a12 # r1229
            jump dustfem_s4

        'Laß sie in Ruhe.{#dustfem_s3_r1230}':
            # a13 # r1230
            jump dustfem_dispose


# s4 # say1178
label dustfem_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Die Staubmenschen-Frau blickt langsam auf und dreht sich zu dir um. "Hast du dich verlaufen?"{#dustfem_s4_}'

    menu:
        '"Ja."{#dustfem_s4_r1231}':
            # a14 # r1231
            jump dustfem_s5

        '"Nein."{#dustfem_s4_r1232}':
            # a15 # r1232
            jump dustfem_s6

        '"Nein, ich habe mich nicht verirrt. Ich hätte da ein paar Fragen…"{#dustfem_s4_r1233}':
            # a16 # r1233
            jump dustfem_s6

        '"Leb wohl."{#dustfem_s4_r1234}':
            # a17 # r1234
            jump dustfem_s2


# s5 # say1179
label dustfem_s5: # from 4.0 16.2 51.1
    nr '"Ich rufe einen Wächter, der dich hinausführen wird. Warte einen Augenblick."{#dustfem_s5_}'

    menu:
        'Brich ihr das Genick, bevor sie rufen kann.{#dustfem_s5_r1235}' if dustfemLogic.r1235_condition():
            # a18 # r1235
            jump dustfem_s44

        'Brich ihr das Genick, bevor sie rufen kann.{#dustfem_s5_r1236}' if dustfemLogic.r1236_condition():
            # a19 # r1236
            jump dustfem_s41

        'Geh. Und zwar schnell.{#dustfem_s5_r1237}':
            # a20 # r1237
            jump dustfem_s2

        'Warte.{#dustfem_s5_r1238}':
            # a21 # r1238
            jump dustfem_s2


# s6 # say1180
label dustfem_s6: # from 4.1 4.2 51.2 51.3
    nr '"Was hast du hier zu suchen, wenn du dich nicht verirrt hast?"{#dustfem_s6_}'

    menu:
        '"Das geht dich nichts an."{#dustfem_s6_r1239}':
            # a22 # r1239
            jump dustfem_s7

        '"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."{#dustfem_s6_r1240}':
            # a23 # r1240
            jump dustfem_s8

        '"Ich bin hier, um jemandem zu treffen."{#dustfem_s6_r1241}':
            # a24 # r1241
            jump dustfem_s9

        '"Ich bin wegen einer Bestattung hier, aber da scheint etwas schiefgelaufen zu sein."{#dustfem_s6_r1242}' if dustfemLogic.r1242_condition():
            # a25 # r1242
            jump dustfem_s16

        'Geh. Und zwar schnell.{#dustfem_s6_r1243}':
            # a26 # r1243
            jump dustfem_s2


# s7 # say1181
label dustfem_s7: # from 6.0 9.0 20.0
    nr '"Das geht mich leider sehr wohl etwas an. Vielleicht können dir die Wächter ja die Zunge lösen." Die Staubmenschen-Frau geht einen Schritt zurück; sie sieht aus, als würde sie jeden Moment die Wache rufen.{#dustfem_s7_}'

    menu:
        'Brich ihr das Genick, bevor sie rufen kann.{#dustfem_s7_r1244}' if dustfemLogic.r1244_condition():
            # a27 # r1244
            jump dustfem_s44

        'Brich ihr das Genick, bevor sie rufen kann.{#dustfem_s7_r1245}' if dustfemLogic.r1245_condition():
            # a28 # r1245
            jump dustfem_s41

        '"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."{#dustfem_s7_r1246}':
            # a29 # r1246
            $ dustfemLogic.r1246_action()
            jump dustfem_dispose


# s8 # say1182
label dustfem_s8: # from 6.1 16.0 20.1
    nr '"Du machst wohl Witze? Vielleicht würdest du das gerne den Wächtern erzählen." Die Staubmenschen-Frau geht einen Schritt zurück; sie sieht aus, als würde sie jeden Moment die Wache rufen.{#dustfem_s8_}'

    menu:
        'Brich ihr das Genick, bevor sie rufen kann.{#dustfem_s8_r1247}' if dustfemLogic.r1247_condition():
            # a30 # r1247
            jump dustfem_s44

        'Brich ihr das Genick, bevor sie rufen kann.{#dustfem_s8_r1248}' if dustfemLogic.r1248_condition():
            # a31 # r1248
            jump dustfem_s41

        '"Dann ruf sie doch zusammen. Würde sie gerne kennenlernen."{#dustfem_s8_r1249}':
            # a32 # r1249
            $ dustfemLogic.r1249_action()
            jump dustfem_dispose


# s9 # say1183
label dustfem_s9: # from 6.2 20.2
    nr '"Wen möchtest du hier treffen?"{#dustfem_s9_}'

    menu:
        '"Das geht dich nichts an."{#dustfem_s9_r1251}':
            # a33 # r1251
            jump dustfem_s7

        '"Ich bin hier, um Dhall zu treffen."{#dustfem_s9_r1253}' if dustfemLogic.r1253_condition():
            # a34 # r1253
            jump dustfem_s10

        '"Ich bin gekommen, um Dhall zu sehen."{#dustfem_s9_r1255}' if dustfemLogic.r1255_condition():
            # a35 # r1255
            jump dustfem_s11

        '"Ich bin gekommen, um Deionarra zu sehen."{#dustfem_s9_r1258}' if dustfemLogic.r1258_condition():
            # a36 # r1258
            jump dustfem_s13

        '"Ich bin gekommen, um Deionarra zu sehen."{#dustfem_s9_r4336}' if dustfemLogic.r4336_condition():
            # a37 # r4336
            jump dustfem_s12

        '"Ich bin gekommen, um Soego zu sehen."{#dustfem_s9_r33224}' if dustfemLogic.r33224_condition():
            # a38 # r33224
            jump dustfem_s15

        '"Ich bin gekommen, um Soego zu sehen."{#dustfem_s9_r33226}' if dustfemLogic.r33226_condition():
            # a39 # r33226
            jump dustfem_s14

        'Lüge: "Äh… Adahn. Arbeitet er noch hier, oder…?"{#dustfem_s9_r33227}' if dustfemLogic.r33227_condition():
            # a40 # r33227
            $ dustfemLogic.r33227_action()
            jump dustfem_s21

        'Lüge: "Äh… Adahn. Arbeitet er noch hier, oder…?"{#dustfem_s9_r33229}' if dustfemLogic.r33229_condition():
            # a41 # r33229
            jump dustfem_s21

        '"Äh, niemanden. Ich hab„ mich versprochen."{#dustfem_s9_r33231}':
            # a42 # r33231
            jump dustfem_s20


# s10 # say1184
label dustfem_s10: # from 9.1
    nr '"Dhall ist im Empfangsraum auf diesem Stockwerk. Ich warne dich… er hat alle Hände voll zu tun und ist nicht gerade bei bester Gesundheit. Wenn es nicht absolut dringend ist, würde ich ihn lieber nicht stören."{#dustfem_s10_}'

    menu:
        '"Also gut. Danke für die Auskunft."{#dustfem_s10_r1259}':
            # a43 # r1259
            jump dustfem_s48


# s11 # say1185
label dustfem_s11: # from 9.2
    nr '"Dhall ist höchstwahrscheinlich im Empfangsraum im ersten Stock. Er hat alle Hände voll zu tun und ist nicht gerade bei bester Gesundheit. Wenn es nicht absolut dringend ist, würde ich ihn lieber nicht stören."{#dustfem_s11_}'

    menu:
        '"Also gut. Danke für die Auskunft."{#dustfem_s11_r1260}':
            # a44 # r1260
            jump dustfem_s48


# s12 # say1186
label dustfem_s12: # from 9.4 19.1
    nr '"Deionarra? Ich weiß, daß in der Gedenkhalle im Erdgeschoß eine Frau bestattet ist. Ob sie das ist?"{#dustfem_s12_}'

    menu:
        '"Höchstwahrscheinlich. Vielen Dank."{#dustfem_s12_r1261}':
            # a45 # r1261
            jump dustfem_s48


# s13 # say1187
label dustfem_s13: # from 9.3
    nr '"Deionarra? Ich weiß, daß im Nordwesten der Gedenkhalle eine Frau bestattet ist. Ob sie das ist?"{#dustfem_s13_}'

    menu:
        '"Höchstwahrscheinlich. Vielen Dank."{#dustfem_s13_r1262}':
            # a46 # r1262
            jump dustfem_s48


# s14 # say1188
label dustfem_s14: # from 9.6
    nr '"Ich glaube, Soego ist am Haupttor im Erdgeschoß. Er arbeitet hier während des Tiefstands als Führer."{#dustfem_s14_}'

    menu:
        '"Also gut. Vielen Dank."{#dustfem_s14_r1263}':
            # a47 # r1263
            jump dustfem_s48


# s15 # say1189
label dustfem_s15: # from 9.5
    nr '"Ich glaube, Soego ist am Haupttor. Er arbeitet hier während des Tiefstands als Führer."{#dustfem_s15_}'

    menu:
        '"Also gut. Vielen Dank."{#dustfem_s15_r1264}':
            # a48 # r1264
            jump dustfem_s48


# s16 # say1190
label dustfem_s16: # from 6.3 20.3
    nr '"Wer sollte bestattet werden? Vielleicht finden die Feierlichkeiten woanders in der Leichenhalle statt."{#dustfem_s16_}'

    menu:
        '"Du verstehst mich falsch… ICH sollte bestattet werden."{#dustfem_s16_r1265}':
            # a49 # r1265
            jump dustfem_s8

        '"Das könnte sein. Wo finden diese anderen Zeremonien statt?"{#dustfem_s16_r1266}':
            # a50 # r1266
            jump dustfem_s17

        '"Kannst du mir den Weg hier raus zeigen?"{#dustfem_s16_r1267}':
            # a51 # r1267
            jump dustfem_s5


# s17 # say1191
label dustfem_s17: # from 16.1
    nr '"Mehrere Grabkammern umgeben die Leichenhalle. Sie folgen dem Verlauf der Mauer im Erdgeschoß und im ersten Stock. Kennst du den Namen des Verstorbenen?"{#dustfem_s17_}'

    menu:
        '"Nein."{#dustfem_s17_r1268}':
            # a52 # r1268
            jump dustfem_s18

        '"Ja."{#dustfem_s17_r1269}':
            # a53 # r1269
            jump dustfem_s19


# s18 # say1192
label dustfem_s18: # from 17.0
    nr '"Frag doch einfach einen der Führer am Haupttor. Sie können dir bestimmt helfen."{#dustfem_s18_}'

    menu:
        '"Also gut. Vielen Dank."{#dustfem_s18_r1270}':
            # a54 # r1270
            jump dustfem_dispose


# s19 # say1193
label dustfem_s19: # from 17.1
    nr 'Der Staubmensch wartet.{#dustfem_s19_}'

    menu:
        '"Entschuldigung… Ich hab„ mich versprochen. Ich kenne den Namen des Verstorbenen nicht."{#dustfem_s19_r1271}':
            # a55 # r1271
            jump dustfem_s20

        '"Ihr Name ist Deionarra."{#dustfem_s19_r1272}' if dustfemLogic.r1272_condition():
            # a56 # r1272
            jump dustfem_s12

        'Lüge: "Sein Name ist… äh, Adahn."{#dustfem_s19_r1273}' if dustfemLogic.r1273_condition():
            # a57 # r1273
            $ dustfemLogic.r1273_action()
            jump dustfem_s21

        'Lüge: "Sein Name ist… äh, Adahn."{#dustfem_s19_r1274}' if dustfemLogic.r1274_condition():
            # a58 # r1274
            jump dustfem_s21

        'Beug dich nach vorne, als wenn du ihr etwas zuflüstern wolltest, und brich ihr das Genick.{#dustfem_s19_r1275}' if dustfemLogic.r1275_condition():
            # a59 # r1275
            jump dustfem_s44

        'Beug dich nach vorne, als wenn du ihr etwas zuflüstern wolltest, und brich ihr das Genick.{#dustfem_s19_r1276}' if dustfemLogic.r1276_condition():
            # a60 # r1276
            jump dustfem_s45

        'Lauf weg, so schnell du kannst.{#dustfem_s19_r1277}':
            # a61 # r1277
            jump dustfem_s2


# s20 # say1194
label dustfem_s20: # from 9.9 19.0
    nr '"Ah ja. Und was hast du hier zu suchen?"{#dustfem_s20_}'

    menu:
        '"Geht dich nichts an."{#dustfem_s20_r1278}':
            # a62 # r1278
            jump dustfem_s7

        '"Ich bin auf einer der Totenbänke in eurem Vorbereitungsraum aufgewacht."{#dustfem_s20_r1279}':
            # a63 # r1279
            jump dustfem_s8

        '"Ich bin hier, um jemandem zu treffen."{#dustfem_s20_r1280}':
            # a64 # r1280
            jump dustfem_s9

        '"Ich bin wegen einer Bestattung hier, aber da scheint etwas schiefgelaufen zu sein."{#dustfem_s20_r1281}' if dustfemLogic.r1281_condition():
            # a65 # r1281
            jump dustfem_s16

        'Lauf weg, so schnell du kannst.{#dustfem_s20_r1282}':
            # a66 # r1282
            jump dustfem_s2


# s21 # say1195
label dustfem_s21: # from 9.7 9.8 19.2 19.3
    nr '"Nie gehört. Frag doch einfach einen der Führer am Haupttor… sie können dir vielleicht mehr sagen."{#dustfem_s21_}'

    menu:
        '"Also gut. Das mach ich. Leb wohl."{#dustfem_s21_r1283}':
            # a67 # r1283
            jump dustfem_dispose


# s22 # say1196
label dustfem_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Diese blasse Frau trägt eine lange dunkle Robe und riecht leicht muffig. Ihr Gesicht ist ausdruckslos; sie scheint in ihre Arbeit vertieft.{#dustfem_s22_}'

    menu:
        '"Sei gegrüßt."{#dustfem_s22_r1284}':
            # a68 # r1284
            jump dustfem_s23

        'Laß sie in Ruhe.{#dustfem_s22_r1285}':
            # a69 # r1285
            jump dustfem_dispose


# s23 # say1197
label dustfem_s23: # from 22.0
    nr 'Sie dreht sich langsam um. Ihre Augen gleiten auf deine Robe. "Sei gegrüßt, Eingeweihter."{#dustfem_s23_}'

    menu:
        '"Wer bist du?"{#dustfem_s23_r1286}':
            # a70 # r1286
            jump dustfem_s24

        '"Was ist das für ein Ort hier?"{#dustfem_s23_r1287}':
            # a71 # r1287
            jump dustfem_s25

        '"Ich hätte da ein paar Fragen…"{#dustfem_s23_r1288}':
            # a72 # r1288
            jump dustfem_s26

        'Laß sie in Ruhe.{#dustfem_s23_r1289}':
            # a73 # r1289
            jump dustfem_dispose


# s24 # say1198
label dustfem_s24: # from 23.0
    nr '"Das möchte ich auch gerne von dir wissen. Ich kenne dein Gesicht nicht. Wer bist du?"{#dustfem_s24_}'

    menu:
        'Lüge: "Sein Name ist… äh, Adahn."{#dustfem_s24_r1290}' if dustfemLogic.r1290_condition():
            # a74 # r1290
            $ dustfemLogic.r1290_action()
            jump dustfem_s49

        'Lüge: "Sein Name ist… äh, Adahn."{#dustfem_s24_r1291}' if dustfemLogic.r1291_condition():
            # a75 # r1291
            jump dustfem_s49

        '"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."{#dustfem_s24_r1292}' if dustfemLogic.r1292_condition():
            # a76 # r1292
            jump dustfem_s47

        '"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."{#dustfem_s24_r1293}' if dustfemLogic.r1293_condition():
            # a77 # r1293
            jump dustfem_s46


# s25 # say1199
label dustfem_s25: # from 23.1
    nr '"Dies ist die Leichenhalle…" Der Staubmensch schaut dich an, als müßte er erst verdauen, was du gesagt hast. "Wie war doch gleich dein Name?"{#dustfem_s25_}'

    menu:
        'Lüge: "Sein Name ist… äh, Adahn."{#dustfem_s25_r1294}' if dustfemLogic.r1294_condition():
            # a78 # r1294
            $ dustfemLogic.r1294_action()
            jump dustfem_s49

        'Lüge: "Sein Name ist… äh, Adahn."{#dustfem_s25_r1295}' if dustfemLogic.r1295_condition():
            # a79 # r1295
            jump dustfem_s49

        '"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."{#dustfem_s25_r1296}' if dustfemLogic.r1296_condition():
            # a80 # r1296
            jump dustfem_s47

        '"Mein Name geht dich nichts an. Ich muß mich verabschieden. Leb wohl."{#dustfem_s25_r1297}' if dustfemLogic.r1297_condition():
            # a81 # r1297
            jump dustfem_s46


# s26 # say1200
label dustfem_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Der Staubmensch wartet geduldig darauf, daß du fortfährst.{#dustfem_s26_}'

    menu:
        '"Kannst du mir sagen, wie ich hier rauskomme?"{#dustfem_s26_r1298}':
            # a82 # r1298
            jump dustfem_s27

        '"Kennst du jemanden mit dem Namen Pharod?"{#dustfem_s26_r1299}':
            # a83 # r1299
            jump dustfem_s28

        '"Ich vermisse ein Journal. Hast du es zufällig gesehen?"{#dustfem_s26_r1300}':
            # a84 # r1300
            jump dustfem_s39

        '"Schon gut. Tut mir leid, daß ich dich gestört habe."{#dustfem_s26_r1328}':
            # a85 # r1328
            jump dustfem_s48


# s27 # say1201
label dustfem_s27: # from 26.0
    nr '"Am besten du gehst einfach durch das Haupttor. Es ist im Erdgeschoß."{#dustfem_s27_}'

    menu:
        '"Ich hätte noch ein paar Fragen…"{#dustfem_s27_r1329}':
            # a86 # r1329
            jump dustfem_s26

        'Vielen Dank. Leb wohl."{#dustfem_s27_r1330}':
            # a87 # r1330
            jump dustfem_s48


# s28 # say1202
label dustfem_s28: # from 26.1
    nr '"Dieser Name…" Der Staubmensch hält kurz inne. "Dieser Name kommt mir irgendwie *bekannt* vor… ich glaube, es gab da mal einen Sammler, der so hieß. Dhall, der Schreiberling, könnte ihn kennen."{#dustfem_s28_}'

    menu:
        '"Sammler?"{#dustfem_s28_r1331}':
            # a88 # r1331
            jump dustfem_s29

        '"Dhall?"{#dustfem_s28_r1334}':
            # a89 # r1334
            jump dustfem_s30

        '"Ich hätte noch ein paar andere Fragen…"{#dustfem_s28_r1338}':
            # a90 # r1338
            jump dustfem_s26

        '"Vielen Dank für deine Zeit. Auf bald."{#dustfem_s28_r1395}':
            # a91 # r1395
            jump dustfem_s48


# s29 # say1203
label dustfem_s29: # from 28.0
    nr '"Sammler… lesen Tote von den Straßen Sigils auf und schaffen sie in die Leichenhalle…" Der Staubmensch zögert, dann runzelt er die Stirn. "Du bist nicht von hier. Wer bist du?"{#dustfem_s29_}'

    menu:
        '"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."{#dustfem_s29_r1396}' if dustfemLogic.r1396_condition():
            # a92 # r1396
            jump dustfem_s50

        '"Ich bin… hier neu. Ich… versuche mich zurechtzufinden."{#dustfem_s29_r1397}' if dustfemLogic.r1397_condition():
            # a93 # r1397
            jump dustfem_s47

        '"Nun ja… was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."{#dustfem_s29_r1398}' if dustfemLogic.r1398_condition():
            # a94 # r1398
            jump dustfem_s47

        '"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der„s kann. Leb wohl."{#dustfem_s29_r1399}' if dustfemLogic.r1399_condition():
            # a95 # r1399
            jump dustfem_s46


# s30 # say1204
label dustfem_s30: # from 28.1
    nr '"Dhall ist eines der angesehensten Mitglieder unseres Bundes. Ich kenne niemanden, der mehr über das Wesen des Wahren Todes nachgedacht oder sich mehr darum verdient gemacht hätte als er. Er kann viel Wissen weitergeben. Wenn du ihn nicht kennst, solltest du die erste Gelegenheit nutzen, mit ihm zu reden. Er wird nicht mehr lange im Schatten dieser Existenz verweilen."{#dustfem_s30_}'

    menu:
        '"„Er wird nicht mehr lange im Schatten dieser Existenz veweilen?"{#dustfem_s30_r4280}':
            # a96 # r4280
            jump dustfem_s31

        '"Wo finde ich Dhall?"{#dustfem_s30_r4281}' if dustfemLogic.r4281_condition():
            # a97 # r4281
            jump dustfem_s32

        '"Wo finde ich Dhall?"{#dustfem_s30_r4282}' if dustfemLogic.r4282_condition():
            # a98 # r4282
            jump dustfem_s33

        '"Ich hätte noch ein paar Fragen…"{#dustfem_s30_r4283}':
            # a99 # r4283
            jump dustfem_s26

        '"Danke für die Information. Ich werde mit ihm reden."{#dustfem_s30_r33245}':
            # a100 # r33245
            jump dustfem_s48


# s31 # say1205
label dustfem_s31: # from 30.0 32.0 33.0
    nr 'Die Staubmenschen-Frau nickt. "Dhall ist krank. Er ist alt, selbst für einen Githzerai. Der Tod ist ihm gewiß nach diesem Siechtum. Er hat wirklich Glück."{#dustfem_s31_}'

    menu:
        '"Für einen Githzerai?"{#dustfem_s31_r4284}':
            # a101 # r4284
            jump dustfem_s34

        '"Was ist ein „Githzerai“?"{#dustfem_s31_r4285}':
            # a102 # r4285
            jump dustfem_s35

        '"Gesegnet?"{#dustfem_s31_r4286}':
            # a103 # r4286
            jump dustfem_s36

        '"Ich verstehe. Ich hätte noch ein paar Fragen…"{#dustfem_s31_r4287}':
            # a104 # r4287
            jump dustfem_s26

        '"Danke, daß du dir für mich Zeit genommen hast. Ich muß jetzt gehen."{#dustfem_s31_r4337}':
            # a105 # r4337
            jump dustfem_s48


# s32 # say1206
label dustfem_s32: # from 30.1
    nr '"Dhall ist im Empfangsraum in der nordwestlichen Winkel dieses Stockwerks. Ich warne dich… Dhall ist ziemlich beschäftigt… wenn er nicht gerade seiner Arbeit nachgeht, wird ein Großteil seiner Zeit von seiner Krankheit beansprucht."{#dustfem_s32_}'

    menu:
        '"Ist Dhall krank?"{#dustfem_s32_r4288}':
            # a106 # r4288
            jump dustfem_s31

        '"Danke, daß du dir für mich Zeit genommen hast. Ich muß mich jetzt verabschieden. Leb wohl."{#dustfem_s32_r4289}':
            # a107 # r4289
            jump dustfem_s48


# s33 # say1207
label dustfem_s33: # from 30.2
    nr '"Dhall ist höchstwahrscheinlich im Empfangsraum im ersten Stock. An deiner Stelle würde ich ihn nicht allzu lang aufhalten, da er alle Hände voll zu tun hat… wenn er nicht gerade seinen Pflichten nachkommt, schlägt er sich die meiste Zeit mit seiner Krankheit herum."{#dustfem_s33_}'

    menu:
        '"Ist Dhall krank?"{#dustfem_s33_r4290}':
            # a108 # r4290
            jump dustfem_s31

        '"Danke, daß du dir für mich Zeit genommen hast. Ich muß mich jetzt verabschieden. Leb wohl."{#dustfem_s33_r4291}':
            # a109 # r4291
            jump dustfem_s48


# s34 # say1208
label dustfem_s34: # from 31.0
    nr '"Ja, die Githzerai leben wesentlich länger als die Menschen."{#dustfem_s34_}'

    menu:
        '"Was ist ein „Githzerai“?"{#dustfem_s34_r4292}':
            # a110 # r4292
            jump dustfem_s35

        '"Wieso bezeichnest Du Dhalls Tod als Segen? Er ist wohl nicht sehr beliebt?"{#dustfem_s34_r4293}':
            # a111 # r4293
            jump dustfem_s36

        '"Oh. Ich hätte noch ein paar Fragen…"{#dustfem_s34_r4294}':
            # a112 # r4294
            jump dustfem_s26

        '"Vielen Dank für deine Zeit. Auf bald."{#dustfem_s34_r4295}':
            # a113 # r4295
            jump dustfem_s48


# s35 # say1209
label dustfem_s35: # from 31.1 34.0
    nr '"Die Githzerai sind…" Die Staubmenschen-Frau zögert; dann sieht sie dich durchdringend an. "Du bist nicht von hier. Wer bist du?"{#dustfem_s35_}'

    menu:
        '"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."{#dustfem_s35_r4296}' if dustfemLogic.r4296_condition():
            # a114 # r4296
            jump dustfem_s50

        '"Ich bin… hier neu. Ich… versuche mich zurechtzufinden."{#dustfem_s35_r4297}' if dustfemLogic.r4297_condition():
            # a115 # r4297
            jump dustfem_s47

        '"Nun ja… was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."{#dustfem_s35_r4298}' if dustfemLogic.r4298_condition():
            # a116 # r4298
            jump dustfem_s47

        '"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der„s kann. Leb wohl."{#dustfem_s35_r4300}' if dustfemLogic.r4300_condition():
            # a117 # r4300
            jump dustfem_s46


# s36 # say1210
label dustfem_s36: # from 31.2 34.1
    nr '"Er ist  gesegnet, weil er den Wahren Tod erlangen wird. Dann braucht er nicht mehr im Schatten dieser Existenz zu verweilen."{#dustfem_s36_}'

    menu:
        '"Und… das ist gut?"{#dustfem_s36_r4299}':
            # a118 # r4299
            jump dustfem_s37

        '"Ich verstehe. Wirklich ein Segen. Ich hätte da noch ein paar Fragen…"{#dustfem_s36_r4301}':
            # a119 # r4301
            jump dustfem_s26

        '"Ich verstehe. Nun, ich muß mich jetzt von dir verabschieden. Leb wohl."{#dustfem_s36_r4302}':
            # a120 # r4302
            jump dustfem_s48


# s37 # say1211
label dustfem_s37: # from 36.0
    nr 'Die Staubmenschen-Frau nickt. "Ja." Sie runzelt die Stirn und sieht dich durchdringend an. "Du bist nicht von hier. Wer bist du?"{#dustfem_s37_}'

    menu:
        '"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."{#dustfem_s37_r4303}' if dustfemLogic.r4303_condition():
            # a121 # r4303
            jump dustfem_s50

        '"Ich bin… hier neu. Ich… versuche mich zurechtzufinden."{#dustfem_s37_r4304}' if dustfemLogic.r4304_condition():
            # a122 # r4304
            jump dustfem_s47

        '"Nun ja… was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."{#dustfem_s37_r4305}' if dustfemLogic.r4305_condition():
            # a123 # r4305
            jump dustfem_s47

        '"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der„s kann. Leb wohl."{#dustfem_s37_r4306}' if dustfemLogic.r4306_condition():
            # a124 # r4306
            jump dustfem_s46


# s38 # say1212
label dustfem_s38: # -
    nr '" Du bist keiner der Unseren, oder? Was führt dich hierher? Bist du ein Anarchist? Oder ein Spitzel eines anderen Bundes?" Die Staubmenschen-Frau geht einen Schritt zurück. "Wache! Wache!"{#dustfem_s38_}'

    menu:
        '"Verdammt!"{#dustfem_s38_r4307}':
            # a125 # r4307
            $ dustfemLogic.r4307_action()
            jump dustfem_dispose

        '"Schhhh! Ich kann dir ja gar keine Antwort geben, wenn du so schreist!"{#dustfem_s38_r4308}' if dustfemLogic.r4308_condition():
            # a126 # r4308
            $ dustfemLogic.r4308_action()
            jump dustfem_dispose

        '"Schhhh! Ich kann dir ja gar keine Antwort geben, wenn du so schreist!"{#dustfem_s38_r4309}' if dustfemLogic.r4309_condition():
            # a127 # r4309
            $ dustfemLogic.r4309_action()
            jump dustfem_dispose


# s39 # say1213
label dustfem_s39: # from 26.2
    nr '"Ein Journal? Ich habe keines gesehen."{#dustfem_s39_}'

    menu:
        '"Ich hätte noch ein paar andere Fragen…"{#dustfem_s39_r4310}':
            # a128 # r4310
            jump dustfem_s26

        '"Ich muß mich jetzt verabschieden. Leb wohl."{#dustfem_s39_r4311}':
            # a129 # r4311
            jump dustfem_s48


# s40 # say1214
label dustfem_s40: # -
    nr 'Diese blasse Frau trägt eine lange dunkle Robe und riecht leicht muffig. Ihr Gesicht ist ausdruckslos; sie scheint in ihre Arbeit vertieft.{#dustfem_s40_}'

    menu:
        '"Sei gegrüßt."{#dustfem_s40_r4312}' if dustfemLogic.r4312_condition():
            # a130 # r4312
            jump morte_s81  # EXTERN

        '"Sei gegrüßt."{#dustfem_s40_r4313}' if dustfemLogic.r4313_condition():
            # a131 # r4313
            jump morte_s83  # EXTERN

        '"Sei gegrüßt."{#dustfem_s40_r4314}' if dustfemLogic.r4314_condition():
            # a132 # r4314
            jump dustfem_s4

        '"Sei gegrüßt."{#dustfem_s40_r4315}' if dustfemLogic.r4315_condition():
            # a133 # r4315
            jump dustfem_s4

        'Laß sie in Ruhe.{#dustfem_s40_r4316}':
            # a134 # r4316
            jump dustfem_dispose


# s41 # say1215
label dustfem_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Bevor die Staubmenschen-Frau auch nur ein Wort sagen kann, packst du sie an den Schläfen und drehst ihren Kopf ruckartig nach links.{#dustfem_s41_}'

    menu:
        '"Ich kann nicht zulassen, daß du deine Freunde warnst…"{#dustfem_s41_r4317}':
            # a135 # r4317
            $ dustfemLogic.r4317_action()
            jump dustfem_s42


# s42 # say1216
label dustfem_s42: # from 41.0 45.0
    nr 'Es macht *Knacks*, und der Staubmensch fällt dir erschlafft in die Arme.{#dustfem_s42_}'

    menu:
        '"Besser du als ich, Staubie."{#dustfem_s42_r4318}' if dustfemLogic.r4318_condition():
            # a136 # r4318
            $ dustfemLogic.r4318_action()
            jump dustfem_s43

        '"Besser du als ich, Staubie."{#dustfem_s42_r4319}' if dustfemLogic.r4319_condition():
            # a137 # r4319
            $ dustfemLogic.r4319_action()
            jump dustfem_dispose


# s43 # say1217
label dustfem_s43: # from 42.0
    nr 'Zu deiner Überraschung scheint diese Handlung instinktiv zu sein, als hättest du das schon viele Male getan. Mit diesem Gedanken regt sich eine vage Erinnerung, die jedoch nicht stark genug ist, um an die Oberfläche zu gelangen.{#dustfem_s43_}'

    menu:
        'Laß die Leiche liegen, geh weiter.{#dustfem_s43_r4320}':
            # a138 # r4320
            $ dustfemLogic.r4320_action()
            jump dustfem_dispose


# s44 # say1218
label dustfem_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'Du bist nicht schnell genug. Die Staubmenschen-Frau weicht deinem Angriffsversuch aus. Sie geht einen Schritt zurück und klatscht dreimal fest in Hände. Daraufhin ertönt der Klang einer großen Eisenglocke durch die Leichenhalle.{#dustfem_s44_}'

    menu:
        '"Nun gut…"{#dustfem_s44_r4321}':
            # a139 # r4321
            $ dustfemLogic.r4321_action()
            jump dustfem_dispose


# s45 # say1219
label dustfem_s45: # from 19.5
    nr 'Als du dich vorbeugst, um ihr etwas „zuzuflüstern“, beugt die Staubmenschen-Frau ihren Kopf auch nach vorne. Sobald du kannst, packst du sie an den Schläfen und drehst ihren Kopf ruckartig nach links.{#dustfem_s45_}'

    menu:
        '"Ich kann nicht zulassen, daß du deine Freunde warnst…"{#dustfem_s45_r4322}':
            # a140 # r4322
            $ dustfemLogic.r4322_action()
            jump dustfem_s42


# s46 # say1220
label dustfem_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Die Staubmenschen-Frau wirkt mißtrauisch. Sie sieht aus, als würde sie jeden Moment etwas sagen, doch dann schüttelt sie nur kurz den Kopf und wendet sich wieder ihrer Arbeit zu{#dustfem_s46_}'

    menu:
        'Geh einfach weg.{#dustfem_s46_r4323}':
            # a141 # r4323
            jump dustfem_dispose


# s47 # say1221
label dustfem_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Der Staubmensch mustert dich aufmerksam. "Du bist keiner von uns, oder? Was führt dich hierher? Bist du ein Anarchist? Oder ein Spitzel eines anderen Bundes? Ich glaube, dies ist ein Fall für die Wache…"{#dustfem_s47_}'

    menu:
        'Brich ihr das Genick, bevor sie rufen kann.{#dustfem_s47_r4324}' if dustfemLogic.r4324_condition():
            # a142 # r4324
            jump dustfem_s44

        'Brich ihr das Genick, bevor sie rufen kann.{#dustfem_s47_r4325}' if dustfemLogic.r4325_condition():
            # a143 # r4325
            jump dustfem_s41

        'Geh. Und zwar schnell.{#dustfem_s47_r4326}':
            # a144 # r4326
            jump dustfem_s2

        '"Nein, nein… das stimmt nicht, äh… Ich meine, ich bin kein Spitzel… weißt du, ich bin hier auf einer der Totenbänke aufgewacht… und…"{#dustfem_s47_r4327}':
            # a145 # r4327
            jump dustfem_s2


# s48 # say1222
label dustfem_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Die Staubmenschen-Frau nickt, bevor sie sich wieder ihrer Arbeit zuwendet.{#dustfem_s48_}'

    menu:
        'Geh einfach weg.{#dustfem_s48_r4328}':
            # a146 # r4328
            jump dustfem_dispose


# s49 # say1223
label dustfem_s49: # from 24.0 24.1 25.0 25.1
    nr 'Der Staubmensch runzelt die Stirn. "Dieser Name kommt mir nicht bekannt vor."{#dustfem_s49_}'

    menu:
        '"Ich bin noch nicht lange eingeweiht. Vergib mir meine Unwissenheit."{#dustfem_s49_r4329}' if dustfemLogic.r4329_condition():
            # a147 # r4329
            jump dustfem_s50

        '"Ich… bin hier neu. Ich… bin dabei, mich einzuarbeiten."{#dustfem_s49_r4331}' if dustfemLogic.r4331_condition():
            # a148 # r4331
            jump dustfem_s47

        '"Nun ja… was ist schon ein Name? Bleib bei deinem Glauben, äh, Eingeweihter."{#dustfem_s49_r4332}' if dustfemLogic.r4332_condition():
            # a149 # r4332
            jump dustfem_s47

        '"Wenn du mir nicht helfen kannst, dann werde ich mir eben jemand suchen, der„s kann. Leb wohl."{#dustfem_s49_r4333}' if dustfemLogic.r4333_condition():
            # a150 # r4333
            jump dustfem_s46


# s50 # say1224
label dustfem_s50: # from 29.0 35.0 37.0 49.0
    nr 'Die Staubmenschen-Frau runzelt weiter die Stirn und sagt mit einem leichten Nicken. "Sehr gut. Was kann ich für dich tun, Eingeweihter?"{#dustfem_s50_}'

    menu:
        '"Ich hätte da ein paar Fragen…"{#dustfem_s50_r4334}':
            # a151 # r4334
            jump dustfem_s26

        '"Heute grade nicht. Leb wohl."{#dustfem_s50_r4335}':
            # a152 # r4335
            jump dustfem_s46


# s51 # say66683
label dustfem_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Der Staubmensch sieht dich mit versteinerter Miene an. "Hast du dich verlaufen?"{#dustfem_s51_}'

    menu:
        '"Nein, ich bin Mitglied des Bundes. Ich seh mir nur ein bißchen die Leichenhalle an."{#dustfem_s51_r66684}' if dustfemLogic.r66684_condition():
            # a153 # r66684
            jump dustfem_s52

        '"Ja."{#dustfem_s51_r66685}' if dustfemLogic.r66685_condition():
            # a154 # r66685
            jump dustfem_s5

        '"Nein."{#dustfem_s51_r66686}' if dustfemLogic.r66686_condition():
            # a155 # r66686
            jump dustfem_s6

        '"Nein, ich hab mich nicht verlaufen. Ich hätte da ein paar Fragen…"{#dustfem_s51_r66687}' if dustfemLogic.r66687_condition():
            # a156 # r66687
            jump dustfem_s6

        '"Leb wohl."{#dustfem_s51_r66688}' if dustfemLogic.r66688_condition():
            # a157 # r66688
            jump dustfem_s2


# s52 # say66689
label dustfem_s52: # from 51.0
    nr 'Der Staubmensch starrt dich einen Moment lang an und nickt dann. "Nun denn. Sag mir bescheid, wenn du Hilfe brauchst."{#dustfem_s52_}'

    menu:
        '"Mach ich. Leb wohl."{#dustfem_s52_r66690}':
            # a158 # r66690
            jump dustfem_dispose
