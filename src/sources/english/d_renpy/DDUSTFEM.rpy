init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dustfem_logic import DustfemLogic
    dustfemLogic = DustfemLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUSTFEM.DLG
# ###


# s0 # say298
label dustfem_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'The Dustman does not appear to notice you. She must mistake you for one of the cadaverous workers.{#dustfem_s0_1}'

    menu:
        '"Greetings."{#dustfem_s0_r299}':
            # a0 # r299
            jump dustfem_s1

        '"Who are you?"{#dustfem_s0_r318}':
            # a1 # r318
            jump dustfem_s1

        '"What is this place?"{#dustfem_s0_r1168}':
            # a2 # r1168
            jump dustfem_s1

        '"I had some questions…"{#dustfem_s0_r1169}':
            # a3 # r1169
            jump dustfem_s1

        'Leave her in peace.{#dustfem_s0_r1170}':
            # a4 # r1170
            jump dustfem_dispose


# s1 # say1171
label dustfem_s1: # from 0.0 0.1 0.2 0.3
    nr 'The Dustman jumps, then snaps her head around to stare at you. She looks shocked - your disguise must be quite good.{#dustfem_s1_1}'

    menu:
        'Take advantage of her surprise and snap her neck before she can call out.{#dustfem_s1_r1172}':
            # a5 # r1172
            jump dustfem_s41

        '"I had some questions."{#dustfem_s1_r1174}':
            # a6 # r1174
            jump dustfem_s2

        'Leave. Quickly.{#dustfem_s1_r1175}':
            # a7 # r1175
            jump dustfem_s2


# s2 # say1176
label dustfem_s2: # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    nr 'The Dustman takes a step back, then claps her hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#dustfem_s2_1}'

    menu:
        '"All right then…"{#dustfem_s2_r1225}':
            # a8 # r1225
            $ dustfemLogic.r1225_action()
            jump dustfem_dispose


# s3 # say1177
label dustfem_s3: # externs morte_s84
    nr 'This pale-faced woman is dressed in long dark robes. She has a slight musty smell about her. Her expression is blank, and she seems absorbed in her duties.{#dustfem_s3_1}'

    menu:
        '"Greetings."{#dustfem_s3_r1226}':
            # a9 # r1226
            jump dustfem_s4

        '"Who are you?"{#dustfem_s3_r1227}':
            # a10 # r1227
            jump dustfem_s4

        '"What is this place?"{#dustfem_s3_r1228}':
            # a11 # r1228
            jump dustfem_s4

        '"I had some questions…"{#dustfem_s3_r1229}':
            # a12 # r1229
            jump dustfem_s4

        'Leave her in peace.{#dustfem_s3_r1230}':
            # a13 # r1230
            jump dustfem_dispose


# s4 # say1178
label dustfem_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'The Dustman slowly lifts her head and turns toward you. "Are you lost?"{#dustfem_s4_1}'

    menu:
        '"Yes."{#dustfem_s4_r1231}':
            # a14 # r1231
            jump dustfem_s5

        '"No."{#dustfem_s4_r1232}':
            # a15 # r1232
            jump dustfem_s6

        '"No, I„m not lost. I had some questions…"{#dustfem_s4_r1233}':
            # a16 # r1233
            jump dustfem_s6

        '"Farewell."{#dustfem_s4_r1234}':
            # a17 # r1234
            jump dustfem_s2


# s5 # say1179
label dustfem_s5: # from 4.0 16.2 51.1
    nr '"I will summon a guard to direct you out. Hold a moment."{#dustfem_s5_1}'

    menu:
        'Snap her neck before she can call out.{#dustfem_s5_r1235}' if dustfemLogic.r1235_condition():
            # a18 # r1235
            jump dustfem_s44

        'Snap her neck before she can call out.{#dustfem_s5_r1236}' if dustfemLogic.r1236_condition():
            # a19 # r1236
            jump dustfem_s41

        'Leave. Quickly.{#dustfem_s5_r1237}':
            # a20 # r1237
            jump dustfem_s2

        'Wait.{#dustfem_s5_r1238}':
            # a21 # r1238
            jump dustfem_s2


# s6 # say1180
label dustfem_s6: # from 4.1 4.2 51.2 51.3
    nr '"If you are not lost, what is your business here?"{#dustfem_s6_1}'

    menu:
        '"That is none of your concern."{#dustfem_s6_r1239}':
            # a22 # r1239
            jump dustfem_s7

        '"I awoke on one of the slabs in your preparation room."{#dustfem_s6_r1240}':
            # a23 # r1240
            jump dustfem_s8

        '"I„m here to see someone."{#dustfem_s6_r1241}':
            # a24 # r1241
            jump dustfem_s9

        '"I was here for an interment, but there seems to have been a mistake."{#dustfem_s6_r1242}' if dustfemLogic.r1242_condition():
            # a25 # r1242
            jump dustfem_s16

        'Leave. Quickly.{#dustfem_s6_r1243}':
            # a26 # r1243
            jump dustfem_s2


# s7 # say1181
label dustfem_s7: # from 6.0 9.0 20.0
    nr '"I„m afraid that it is my concern. Mayhap the guards can loosen your tongue." The Dustman takes a step back; she looks like she is about to summon the guards.{#dustfem_s7_1}'

    menu:
        'Snap her neck before she can call out.{#dustfem_s7_r1244}' if dustfemLogic.r1244_condition():
            # a27 # r1244
            jump dustfem_s44

        'Snap her neck before she can call out.{#dustfem_s7_r1245}' if dustfemLogic.r1245_condition():
            # a28 # r1245
            jump dustfem_s41

        '"Summon them, then. I„d like to meet them."{#dustfem_s7_r1246}':
            # a29 # r1246
            $ dustfemLogic.r1246_action()
            jump dustfem_dispose


# s8 # say1182
label dustfem_s8: # from 6.1 16.0 20.1
    nr '"Do you speak in jest? Perhaps you would like to share it with the guards." The Dustman takes a step back; she looks like she is about to summon the guards.{#dustfem_s8_1}'

    menu:
        'Snap her neck before she can call out.{#dustfem_s8_r1247}' if dustfemLogic.r1247_condition():
            # a30 # r1247
            jump dustfem_s44

        'Snap her neck before she can call out.{#dustfem_s8_r1248}' if dustfemLogic.r1248_condition():
            # a31 # r1248
            jump dustfem_s41

        '"Summon them, then. I„d like to meet them."{#dustfem_s8_r1249}':
            # a32 # r1249
            $ dustfemLogic.r1249_action()
            jump dustfem_dispose


# s9 # say1183
label dustfem_s9: # from 6.2 20.2
    nr '"Who are you here to see?"{#dustfem_s9_1}'

    menu:
        '"It is none of your concern."{#dustfem_s9_r1251}':
            # a33 # r1251
            jump dustfem_s7

        '"I am here to see Dhall."{#dustfem_s9_r1253}' if dustfemLogic.r1253_condition():
            # a34 # r1253
            jump dustfem_s10

        '"I am here to see Dhall."{#dustfem_s9_r1255}' if dustfemLogic.r1255_condition():
            # a35 # r1255
            jump dustfem_s11

        '"I am here to see Deionarra."{#dustfem_s9_r1258}' if dustfemLogic.r1258_condition():
            # a36 # r1258
            jump dustfem_s13

        '"I am here to see Deionarra."{#dustfem_s9_r4336}' if dustfemLogic.r4336_condition():
            # a37 # r4336
            jump dustfem_s12

        '"I am here to see Soego."{#dustfem_s9_r33224}' if dustfemLogic.r33224_condition():
            # a38 # r33224
            jump dustfem_s15

        '"I am here to see Soego."{#dustfem_s9_r33226}' if dustfemLogic.r33226_condition():
            # a39 # r33226
            jump dustfem_s14

        'Lie: "Uh… Adahn. Does he still work here, or…?"{#dustfem_s9_r33227}' if dustfemLogic.r33227_condition():
            # a40 # r33227
            $ dustfemLogic.r33227_action()
            jump dustfem_s21

        'Lie: "Uh… Adahn. Does he still work here, or…?"{#dustfem_s9_r33229}' if dustfemLogic.r33229_condition():
            # a41 # r33229
            jump dustfem_s21

        '"Uh, no one. I misspoke."{#dustfem_s9_r33231}':
            # a42 # r33231
            jump dustfem_s20


# s10 # say1184
label dustfem_s10: # from 9.1
    nr '"Dhall is in the receiving room on this floor. I must warn you… Dhall is quite busy with his duties and is not in the best of health. Unless you have pressing business, I would not disturb him."{#dustfem_s10_1}'

    menu:
        '"Very well. Thanks for the information."{#dustfem_s10_r1259}':
            # a43 # r1259
            jump dustfem_s48


# s11 # say1185
label dustfem_s11: # from 9.2
    nr '"Dhall is most likely in the receiving room on the second floor. He is quite busy and not in the best of health. Unless you have pressing business, I would not disturb him."{#dustfem_s11_1}'

    menu:
        '"Very well. Thanks for the information."{#dustfem_s11_r1260}':
            # a44 # r1260
            jump dustfem_s48


# s12 # say1186
label dustfem_s12: # from 9.4 19.1
    nr '"Deionarra? I know there is a woman interred in the memorial hall on the first floor. Could that be she?"{#dustfem_s12_1}'

    menu:
        '"Most likely. Thank you."{#dustfem_s12_r1261}':
            # a45 # r1261
            jump dustfem_s48


# s13 # say1187
label dustfem_s13: # from 9.3
    nr '"Deionarra? I know there is a woman interred in the northwest memorial hall. Could that be she?"{#dustfem_s13_1}'

    menu:
        '"Most likely. Thank you."{#dustfem_s13_r1262}':
            # a46 # r1262
            jump dustfem_s48


# s14 # say1188
label dustfem_s14: # from 9.6
    nr '"I believe Soego is by the front gate on the first floor. He is acting as a guide during the anti-peak hours."{#dustfem_s14_1}'

    menu:
        '"Very well. Thank you."{#dustfem_s14_r1263}':
            # a47 # r1263
            jump dustfem_s48


# s15 # say1189
label dustfem_s15: # from 9.5
    nr '"I believe Soego is by the front gate. He is acting as a guide during the anti-peak hours."{#dustfem_s15_1}'

    menu:
        '"Very well. Thank you."{#dustfem_s15_r1264}':
            # a48 # r1264
            jump dustfem_s48


# s16 # say1190
label dustfem_s16: # from 6.3 20.3
    nr '"Who was being interred? Perhaps the services are taking place somewhere else in the Mortuary."{#dustfem_s16_1}'

    menu:
        '"You misunderstand… the mistaken interment was ME."{#dustfem_s16_r1265}':
            # a49 # r1265
            jump dustfem_s8

        '"That could be. Where are these other services taking place?"{#dustfem_s16_r1266}':
            # a50 # r1266
            jump dustfem_s17

        '"Can you show me the way out?"{#dustfem_s16_r1267}':
            # a51 # r1267
            jump dustfem_s5


# s17 # say1191
label dustfem_s17: # from 16.1
    nr '"Several interment chambers line the perimeter of the Mortuary. They follow the curve of the wall on the first and second floors. Do you know the name of the deceased?"{#dustfem_s17_1}'

    menu:
        '"No."{#dustfem_s17_r1268}':
            # a52 # r1268
            jump dustfem_s18

        '"Yes."{#dustfem_s17_r1269}':
            # a53 # r1269
            jump dustfem_s19


# s18 # say1192
label dustfem_s18: # from 17.0
    nr '"Then you should check with one of the guides at the front gate. They can assist you."{#dustfem_s18_1}'

    menu:
        '"Very well. Thank you."{#dustfem_s18_r1270}':
            # a54 # r1270
            jump dustfem_dispose


# s19 # say1193
label dustfem_s19: # from 17.1
    nr 'The Dustman waits.{#dustfem_s19_1}'

    menu:
        '"Pardon… I misspoke. I don„t know the name of the deceased."{#dustfem_s19_r1271}':
            # a55 # r1271
            jump dustfem_s20

        '"The name is Deionarra."{#dustfem_s19_r1272}' if dustfemLogic.r1272_condition():
            # a56 # r1272
            jump dustfem_s12

        'Lie: "The name is… uh, Adahn."{#dustfem_s19_r1273}' if dustfemLogic.r1273_condition():
            # a57 # r1273
            $ dustfemLogic.r1273_action()
            jump dustfem_s21

        'Lie: "The name is… uh, Adahn."{#dustfem_s19_r1274}' if dustfemLogic.r1274_condition():
            # a58 # r1274
            jump dustfem_s21

        'Lean in as if to whisper something to her, then snap her neck.{#dustfem_s19_r1275}' if dustfemLogic.r1275_condition():
            # a59 # r1275
            jump dustfem_s44

        'Lean in as if to whisper something to her, then snap her neck.{#dustfem_s19_r1276}' if dustfemLogic.r1276_condition():
            # a60 # r1276
            jump dustfem_s45

        'Run for it.{#dustfem_s19_r1277}':
            # a61 # r1277
            jump dustfem_s2


# s20 # say1194
label dustfem_s20: # from 9.9 19.0
    nr '"I see. Now, what is your business here?"{#dustfem_s20_1}'

    menu:
        '"None of your concern."{#dustfem_s20_r1278}':
            # a62 # r1278
            jump dustfem_s7

        '"I woke up on one of the slabs in your preparation room."{#dustfem_s20_r1279}':
            # a63 # r1279
            jump dustfem_s8

        '"I„m here to see someone."{#dustfem_s20_r1280}':
            # a64 # r1280
            jump dustfem_s9

        '"I was here for an interment, but there seems to have been a mistake."{#dustfem_s20_r1281}' if dustfemLogic.r1281_condition():
            # a65 # r1281
            jump dustfem_s16

        'Run for it.{#dustfem_s20_r1282}':
            # a66 # r1282
            jump dustfem_s2


# s21 # say1195
label dustfem_s21: # from 9.7 9.8 19.2 19.3
    nr '"That name is not familiar to me. Check with one of the guides at the front gate… they may be able to direct you better than I."{#dustfem_s21_1}'

    menu:
        '"Very well. I will do that. Farewell."{#dustfem_s21_r1283}':
            # a67 # r1283
            jump dustfem_dispose


# s22 # say1196
label dustfem_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'This pale-faced woman is dressed in long dark robes. She has a slight musty smell about her. Her expression is blank, and she seems absorbed in her duties.{#dustfem_s22_1}'

    menu:
        '"Greetings."{#dustfem_s22_r1284}':
            # a68 # r1284
            jump dustfem_s23

        'Leave her in peace.{#dustfem_s22_r1285}':
            # a69 # r1285
            jump dustfem_dispose


# s23 # say1197
label dustfem_s23: # from 22.0
    nr 'She slowly turns, and her eyes flicker to your robes. "Greetings, fellow initiate."{#dustfem_s23_1}'

    menu:
        '"Who are you?"{#dustfem_s23_r1286}':
            # a70 # r1286
            jump dustfem_s24

        '"What is this place?"{#dustfem_s23_r1287}':
            # a71 # r1287
            jump dustfem_s25

        '"I had some questions…"{#dustfem_s23_r1288}':
            # a72 # r1288
            jump dustfem_s26

        'Leave her in peace.{#dustfem_s23_r1289}':
            # a73 # r1289
            jump dustfem_dispose


# s24 # say1198
label dustfem_s24: # from 23.0
    nr '"That is as much my question as yours. Your face is unknown to me. Who are you?"{#dustfem_s24_1}'

    menu:
        'Lie: "The name is… uh, Adahn."{#dustfem_s24_r1290}' if dustfemLogic.r1290_condition():
            # a74 # r1290
            $ dustfemLogic.r1290_action()
            jump dustfem_s49

        'Lie: "The name is… uh, Adahn."{#dustfem_s24_r1291}' if dustfemLogic.r1291_condition():
            # a75 # r1291
            jump dustfem_s49

        '"My name is not your concern. I must take my leave. Farewell."{#dustfem_s24_r1292}' if dustfemLogic.r1292_condition():
            # a76 # r1292
            jump dustfem_s47

        '"My name is not your concern. I must take my leave. Farewell."{#dustfem_s24_r1293}' if dustfemLogic.r1293_condition():
            # a77 # r1293
            jump dustfem_s46


# s25 # say1199
label dustfem_s25: # from 23.1
    nr '"This is the Mortuary…" The Dustman looks at you for a moment, as if digesting what you„ve just said. "What did you say your name was again?"{#dustfem_s25_1}'

    menu:
        'Lie: "The name is… uh, Adahn."{#dustfem_s25_r1294}' if dustfemLogic.r1294_condition():
            # a78 # r1294
            $ dustfemLogic.r1294_action()
            jump dustfem_s49

        'Lie: "The name is… uh, Adahn."{#dustfem_s25_r1295}' if dustfemLogic.r1295_condition():
            # a79 # r1295
            jump dustfem_s49

        '"My name is not your concern. I must take my leave. Farewell."{#dustfem_s25_r1296}' if dustfemLogic.r1296_condition():
            # a80 # r1296
            jump dustfem_s47

        '"My name is not your concern. I must take my leave. Farewell."{#dustfem_s25_r1297}' if dustfemLogic.r1297_condition():
            # a81 # r1297
            jump dustfem_s46


# s26 # say1200
label dustfem_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'The Dustman waits patiently for you to continue.{#dustfem_s26_1}'

    menu:
        '"Can you direct me out of here?"{#dustfem_s26_r1298}':
            # a82 # r1298
            jump dustfem_s27

        '"Do you know someone named Pharod?"{#dustfem_s26_r1299}':
            # a83 # r1299
            jump dustfem_s28

        '"I„m missing a journal. Have you seen it?"{#dustfem_s26_r1300}':
            # a84 # r1300
            jump dustfem_s39

        '"Never mind. Sorry to trouble you."{#dustfem_s26_r1328}':
            # a85 # r1328
            jump dustfem_s48


# s27 # say1201
label dustfem_s27: # from 26.0
    nr '"You may simply leave by the front gate. It is on the first floor."{#dustfem_s27_1}'

    menu:
        '"I had some other questions…"{#dustfem_s27_r1329}':
            # a86 # r1329
            jump dustfem_s26

        '"Thank you. Farewell."{#dustfem_s27_r1330}':
            # a87 # r1330
            jump dustfem_s48


# s28 # say1202
label dustfem_s28: # from 26.1
    nr '"That name…" The Dustman pauses for a moment. "That name *sounds* familiar… I seem to recall a Collector by that name. Dhall the Scrivener might know of him."{#dustfem_s28_1}'

    menu:
        '"Collector?"{#dustfem_s28_r1331}':
            # a88 # r1331
            jump dustfem_s29

        '"Dhall?"{#dustfem_s28_r1334}':
            # a89 # r1334
            jump dustfem_s30

        '"I had some other questions…"{#dustfem_s28_r1338}':
            # a90 # r1338
            jump dustfem_s26

        '"Thank you for your time. Farewell."{#dustfem_s28_r1395}':
            # a91 # r1395
            jump dustfem_s48


# s29 # say1203
label dustfem_s29: # from 28.0
    nr '"Collectors… they gather those who have died on the streets of Sigil and bring them to the Mortuary…" The Dustman pauses, then frowns. "You are not from around here. Who are you?"{#dustfem_s29_1}'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."{#dustfem_s29_r1396}' if dustfemLogic.r1396_condition():
            # a92 # r1396
            jump dustfem_s50

        '"I„m… new here. I“m… trying to get my bearings."{#dustfem_s29_r1397}' if dustfemLogic.r1397_condition():
            # a93 # r1397
            jump dustfem_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dustfem_s29_r1398}' if dustfemLogic.r1398_condition():
            # a94 # r1398
            jump dustfem_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."{#dustfem_s29_r1399}' if dustfemLogic.r1399_condition():
            # a95 # r1399
            jump dustfem_s46


# s30 # say1204
label dustfem_s30: # from 28.1
    nr '"Dhall is one of the most revered of our faction. I can think of none who have meditated more on the nature of the True Death nor one more deserving of it than he. He has much wisdom to impart. If you do not know him, I suggest you speak to him at your earliest opportunity. He will not linger much longer in the shadow of this existence."{#dustfem_s30_1}'

    menu:
        '"He will not linger long in the shadow of this existence?"{#dustfem_s30_r4280}':
            # a96 # r4280
            jump dustfem_s31

        '"Where can I find Dhall?"{#dustfem_s30_r4281}' if dustfemLogic.r4281_condition():
            # a97 # r4281
            jump dustfem_s32

        '"Where can I find Dhall?"{#dustfem_s30_r4282}' if dustfemLogic.r4282_condition():
            # a98 # r4282
            jump dustfem_s33

        '"I had some other questions…"{#dustfem_s30_r4283}':
            # a99 # r4283
            jump dustfem_s26

        '"Thank you for the information. I will speak to him."{#dustfem_s30_r33245}':
            # a100 # r33245
            jump dustfem_s48


# s31 # say1205
label dustfem_s31: # from 30.0 32.0 33.0
    nr 'The Dustman nods. "Dhall is ill. He is old, even by githzerai standards. Death will no doubt follow the wasting sickness he has contracted. He is fortunate, indeed."{#dustfem_s31_1}'

    menu:
        '"Githzerai standards?"{#dustfem_s31_r4284}':
            # a101 # r4284
            jump dustfem_s34

        '"What is a *githzerai?*"{#dustfem_s31_r4285}':
            # a102 # r4285
            jump dustfem_s35

        '"Fortunate?"{#dustfem_s31_r4286}':
            # a103 # r4286
            jump dustfem_s36

        '"I see. I had some other questions…"{#dustfem_s31_r4287}':
            # a104 # r4287
            jump dustfem_s26

        '"Thank you for your time. I must take my leave."{#dustfem_s31_r4337}':
            # a105 # r4337
            jump dustfem_s48


# s32 # say1206
label dustfem_s32: # from 30.1
    nr '"Dhall is in the receiving room in the northwest corner of this floor. I must warn you… Dhall is quite busy… the time that is not consumed by his duties is taken in large measure by his wasting sickness."{#dustfem_s32_1}'

    menu:
        '"Is Dhall ill?"{#dustfem_s32_r4288}':
            # a106 # r4288
            jump dustfem_s31

        '"Thank you for your time. I must take my leave. Farewell."{#dustfem_s32_r4289}':
            # a107 # r4289
            jump dustfem_s48


# s33 # say1207
label dustfem_s33: # from 30.2
    nr '"Dhall is most likely in the receiving room on the second floor. I would not take too much of his time, as he is quite busy… the time that is not consumed by his duties is taken in large measure by his wasting sickness."{#dustfem_s33_1}'

    menu:
        '"Is Dhall ill?"{#dustfem_s33_r4290}':
            # a108 # r4290
            jump dustfem_s31

        '"Thank you for your time. I must take my leave. Farewell."{#dustfem_s33_r4291}':
            # a109 # r4291
            jump dustfem_s48


# s34 # say1208
label dustfem_s34: # from 31.0
    nr '"Yes, the githzerai have a much longer lifespan than humans."{#dustfem_s34_1}'

    menu:
        '"What is a *githzerai?*"{#dustfem_s34_r4292}':
            # a110 # r4292
            jump dustfem_s35

        '"How is Dhall„s death fortunate? Is he not well-liked?"{#dustfem_s34_r4293}':
            # a111 # r4293
            jump dustfem_s36

        '"Oh. I had some other questions…"{#dustfem_s34_r4294}':
            # a112 # r4294
            jump dustfem_s26

        '"Thank you for your time. Farewell."{#dustfem_s34_r4295}':
            # a113 # r4295
            jump dustfem_s48


# s35 # say1209
label dustfem_s35: # from 31.1 34.0
    nr '"The githzerai are…" The Dustman pauses, then stares at you intently. "You are not from around here. Who are you?"{#dustfem_s35_1}'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."{#dustfem_s35_r4296}' if dustfemLogic.r4296_condition():
            # a114 # r4296
            jump dustfem_s50

        '"I„m… new here. I“m… trying to get my bearings."{#dustfem_s35_r4297}' if dustfemLogic.r4297_condition():
            # a115 # r4297
            jump dustfem_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dustfem_s35_r4298}' if dustfemLogic.r4298_condition():
            # a116 # r4298
            jump dustfem_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."{#dustfem_s35_r4300}' if dustfemLogic.r4300_condition():
            # a117 # r4300
            jump dustfem_s46


# s36 # say1210
label dustfem_s36: # from 31.2 34.1
    nr '"He is fortunate in that he will achieve the True Death. No longer must he dwell within the shadow of this existence."{#dustfem_s36_1}'

    menu:
        '"And… that„s a good thing?"{#dustfem_s36_r4299}':
            # a118 # r4299
            jump dustfem_s37

        '"I see. Very fortunate, indeed. I had some other questions…"{#dustfem_s36_r4301}':
            # a119 # r4301
            jump dustfem_s26

        '"I see. Well, I must take my leave of you. Farewell."{#dustfem_s36_r4302}':
            # a120 # r4302
            jump dustfem_s48


# s37 # say1211
label dustfem_s37: # from 36.0
    nr 'The Dustman nods. "Yes." She frowns, then studies you intently. "You are not from around here. Who are you?"{#dustfem_s37_1}'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."{#dustfem_s37_r4303}' if dustfemLogic.r4303_condition():
            # a121 # r4303
            jump dustfem_s50

        '"I„m… new here. I“m… trying to get my bearings."{#dustfem_s37_r4304}' if dustfemLogic.r4304_condition():
            # a122 # r4304
            jump dustfem_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dustfem_s37_r4305}' if dustfemLogic.r4305_condition():
            # a123 # r4305
            jump dustfem_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."{#dustfem_s37_r4306}' if dustfemLogic.r4306_condition():
            # a124 # r4306
            jump dustfem_s46


# s38 # say1212
label dustfem_s38: # -
    nr '"You are not one of us, are you? What are you doing here? Are you a member of the Anarchists? Or a spy of another faction?" The Dustman takes a step back. "Guards! Guards!"{#dustfem_s38_1}'

    menu:
        '"Dammit!"{#dustfem_s38_r4307}':
            # a125 # r4307
            $ dustfemLogic.r4307_action()
            jump dustfem_dispose

        '"Shhhh! I can„t answer you over all that shouting!"{#dustfem_s38_r4308}' if dustfemLogic.r4308_condition():
            # a126 # r4308
            $ dustfemLogic.r4308_action()
            jump dustfem_dispose

        '"Shhhh! I can„t answer you over all that shouting!"{#dustfem_s38_r4309}' if dustfemLogic.r4309_condition():
            # a127 # r4309
            $ dustfemLogic.r4309_action()
            jump dustfem_dispose


# s39 # say1213
label dustfem_s39: # from 26.2
    nr '"A journal? I have not seen one."{#dustfem_s39_1}'

    menu:
        '"I had some other questions…"{#dustfem_s39_r4310}':
            # a128 # r4310
            jump dustfem_s26

        '"I must take my leave. Farewell."{#dustfem_s39_r4311}':
            # a129 # r4311
            jump dustfem_s48


# s40 # say1214
label dustfem_s40: # -
    nr 'This pale-faced woman is dressed in long dark robes. She has a slight musty smell about her. Her expression is blank, and she seems absorbed in her duties.{#dustfem_s40_1}'

    menu:
        '"Greetings."{#dustfem_s40_r4312}' if dustfemLogic.r4312_condition():
            # a130 # r4312
            jump morte_s81  # EXTERN

        '"Greetings."{#dustfem_s40_r4313}' if dustfemLogic.r4313_condition():
            # a131 # r4313
            jump morte_s83  # EXTERN

        '"Greetings."{#dustfem_s40_r4314}' if dustfemLogic.r4314_condition():
            # a132 # r4314
            jump dustfem_s4

        '"Greetings."{#dustfem_s40_r4315}' if dustfemLogic.r4315_condition():
            # a133 # r4315
            jump dustfem_s4

        'Leave her in peace.{#dustfem_s40_r4316}':
            # a134 # r4316
            jump dustfem_dispose


# s41 # say1215
label dustfem_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr 'Before the Dustman can utter a word, your hands clamp onto her temples, and you twist her head sharply to the left.{#dustfem_s41_1}'

    menu:
        '"Can„t have you alerting your friends…"{#dustfem_s41_r4317}':
            # a135 # r4317
            $ dustfemLogic.r4317_action()
            jump dustfem_s42


# s42 # say1216
label dustfem_s42: # from 41.0 45.0
    nr 'There is a *crack,* and the Dustman falls limp in your arms.{#dustfem_s42_1}'

    menu:
        '"Better you than me, Dustie."{#dustfem_s42_r4318}' if dustfemLogic.r4318_condition():
            # a136 # r4318
            $ dustfemLogic.r4318_action()
            jump dustfem_s43

        '"Better you than me, Dustie."{#dustfem_s42_r4319}' if dustfemLogic.r4319_condition():
            # a137 # r4319
            $ dustfemLogic.r4319_action()
            jump dustfem_dispose


# s43 # say1217
label dustfem_s43: # from 42.0
    nr 'To your surprise, the act seemed instinctual, as if you had done it many times before… with this thought comes the stirring of a memory, but it is not strong enough to surface.{#dustfem_s43_1}'

    menu:
        'Leave the body, continue on.{#dustfem_s43_r4320}':
            # a138 # r4320
            $ dustfemLogic.r4320_action()
            jump dustfem_dispose


# s44 # say1218
label dustfem_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr 'You are not fast enough, and the Dustman dodges as you lunge for her. Taking a step back, she claps her hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.{#dustfem_s44_1}'

    menu:
        '"All right then…"{#dustfem_s44_r4321}':
            # a139 # r4321
            $ dustfemLogic.r4321_action()
            jump dustfem_dispose


# s45 # say1219
label dustfem_s45: # from 19.5
    nr 'As you lean in to „whisper“ to her, the Dustman leans in as well. As she comes within arm„s reach, your hands clamp onto her temples, and you twist her head sharply to the left.{#dustfem_s45_1}'

    menu:
        '"Can„t have you alerting your friends…"{#dustfem_s45_r4322}':
            # a140 # r4322
            $ dustfemLogic.r4322_action()
            jump dustfem_s42


# s46 # say1220
label dustfem_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'The Dustman seems suspicious. She looks like she„s about to say something, then shakes her head slightly and returns to her duties.{#dustfem_s46_1}'

    menu:
        'Walk away.{#dustfem_s46_r4323}':
            # a141 # r4323
            jump dustfem_dispose


# s47 # say1221
label dustfem_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'The Dustman studies you carefully. "You are not one of us. What are you doing here? Are you a member of the Anarchists? Or a spy of another faction? This seems to be a matter for the guards…"{#dustfem_s47_1}'

    menu:
        'Snap her neck before she can call out.{#dustfem_s47_r4324}' if dustfemLogic.r4324_condition():
            # a142 # r4324
            jump dustfem_s44

        'Snap her neck before she can call out.{#dustfem_s47_r4325}' if dustfemLogic.r4325_condition():
            # a143 # r4325
            jump dustfem_s41

        'Leave. Quickly.{#dustfem_s47_r4326}':
            # a144 # r4326
            jump dustfem_s2

        '"No, no… it„s not, uh… I mean, I“m not a spy… you see, I woke up on one of the slabs… and…"{#dustfem_s47_r4327}':
            # a145 # r4327
            jump dustfem_s2


# s48 # say1222
label dustfem_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'The Dustman nods, then returns to her duties.{#dustfem_s48_1}'

    menu:
        'Walk away.{#dustfem_s48_r4328}':
            # a146 # r4328
            jump dustfem_dispose


# s49 # say1223
label dustfem_s49: # from 24.0 24.1 25.0 25.1
    nr 'The Dustman frowns. "That name is unfamiliar to me."{#dustfem_s49_1}'

    menu:
        '"I„m a recent initiate. Forgive my ignorance."{#dustfem_s49_r4329}' if dustfemLogic.r4329_condition():
            # a147 # r4329
            jump dustfem_s50

        '"I„m… new here. I“m… trying to learn the routine."{#dustfem_s49_r4331}' if dustfemLogic.r4331_condition():
            # a148 # r4331
            jump dustfem_s47

        '"Yeah, well… what„s in a name? Keep the faith, uh, fellow initiate."{#dustfem_s49_r4332}' if dustfemLogic.r4332_condition():
            # a149 # r4332
            jump dustfem_s47

        '"If you can„t help me, then I will find someone else who can. Farewell."{#dustfem_s49_r4333}' if dustfemLogic.r4333_condition():
            # a150 # r4333
            jump dustfem_s46


# s50 # say1224
label dustfem_s50: # from 29.0 35.0 37.0 49.0
    nr 'The Dustman„s frown remains, but she nods slightly. "Very well. How may I be of service to you, initiate?"{#dustfem_s50_1}'

    menu:
        '"I had some questions…"{#dustfem_s50_r4334}':
            # a151 # r4334
            jump dustfem_s26

        '"Nothing this day. Farewell."{#dustfem_s50_r4335}':
            # a152 # r4335
            jump dustfem_s46


# s51 # say66683
label dustfem_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'The Dustman regards you with a stony gaze. "Are you lost?"{#dustfem_s51_1}'

    menu:
        '"No, I am a member of the faction. I am just touring the Mortuary."{#dustfem_s51_r66684}' if dustfemLogic.r66684_condition():
            # a153 # r66684
            jump dustfem_s52

        '"Yes."{#dustfem_s51_r66685}' if dustfemLogic.r66685_condition():
            # a154 # r66685
            jump dustfem_s5

        '"No."{#dustfem_s51_r66686}' if dustfemLogic.r66686_condition():
            # a155 # r66686
            jump dustfem_s6

        '"No, I„m not lost. I had some questions…"{#dustfem_s51_r66687}' if dustfemLogic.r66687_condition():
            # a156 # r66687
            jump dustfem_s6

        '"Farewell."{#dustfem_s51_r66688}' if dustfemLogic.r66688_condition():
            # a157 # r66688
            jump dustfem_s2


# s52 # say66689
label dustfem_s52: # from 51.0
    nr 'The Dustman stares at you for a moment, then nods. "Very well. If you need assistance, let me know."{#dustfem_s52_1}'

    menu:
        '"I will do so. Farewell."{#dustfem_s52_r66690}':
            # a158 # r66690
            jump dustfem_dispose
