init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dustfem_logic import DustfemLogic
    dustfemLogic = DustfemLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUSTFEM.DLG
# ###


# s0 # say298
label dustfem_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr '더스트맨은 당신의 존재를 알아차리지 못하고 있는 듯하다. 아마 그녀는 당신을 언데드 노동자들 중 하나로 착각한 모양이다.'

    menu:
        '"안녕하시오."':
            # a0 # r299
            jump dustfem_s1

        '"당신은 누구요?"':
            # a1 # r318
            jump dustfem_s1

        '"이 곳은 어떤 곳이오?"':
            # a2 # r1168
            jump dustfem_s1

        '"질문할 것들이 좀 있소…"':
            # a3 # r1169
            jump dustfem_s1

        '그녀를 그냥 내버려 두고 떠난다.':
            # a4 # r1170
            jump dustfem_dispose


# s1 # say1171
label dustfem_s1: # from 0.0 0.1 0.2 0.3
    nr '더스트맨은 소스라치게 놀란다, 그리고 고개를 돌려 당신을 쳐다본다. 그녀는 심한 충격을 받은 듯하다. 아마 당신 변장이 너무 훌륭했던 것 같다.'

    menu:
        '그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..':
            # a5 # r1172
            jump dustfem_s41

        '"질문할 것이 좀 있소."':
            # a6 # r1174
            jump dustfem_s2

        '재빨리 떠난다.':
            # a7 # r1175
            jump dustfem_s2


# s2 # say1176
label dustfem_s2: # from 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
    nr '더스트맨은 한 걸음 물러선 후 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.'

    menu:
        '"그럼 좋소…"':
            # a8 # r1225
            $ dustfemLogic.r1225_action()
            jump dustfem_dispose


# s3 # say1177
label dustfem_s3: # externs morte_s84
    nr '이 창백한 얼굴의 여자는 긴 흑색 법복을 착용하고 있다. 그녀로부터는 약간의 곰팡이 냄새가 난다. 그녀는 무표정하며, 자신의 일에 몰두하고 있는 듯하다.'

    menu:
        '"안녕하시오."':
            # a9 # r1226
            jump dustfem_s4

        '"당신은 누구요?"':
            # a10 # r1227
            jump dustfem_s4

        '"이 곳은 어떤 곳이오?"':
            # a11 # r1228
            jump dustfem_s4

        '"질문할 것들이 좀 있소…"':
            # a12 # r1229
            jump dustfem_s4

        '그녀를 그냥 내버려 두고 떠난다.':
            # a13 # r1230
            jump dustfem_dispose


# s4 # say1178
label dustfem_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr '더스트맨은 천천히 고개를 들어 당신 쪽을 향한다. "길을 잃었나요?"'

    menu:
        '"그렇소."':
            # a14 # r1231
            jump dustfem_s5

        '"아니오."':
            # a15 # r1232
            jump dustfem_s6

        '"아니오, 나는 길을 잃지 않았소. 물어볼 것이 좀 있소…"':
            # a16 # r1233
            jump dustfem_s6

        '"안녕히 계시오."':
            # a17 # r1234
            jump dustfem_s2


# s5 # say1179
label dustfem_s5: # from 4.0 16.2 51.1
    nr '"당신을 밖으로 안내할 경비병을 부르겠어요. 잠시만 기다리세요."'

    menu:
        '그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..' if dustfemLogic.r1235_condition():
            # a18 # r1235
            jump dustfem_s44

        '그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..' if dustfemLogic.r1236_condition():
            # a19 # r1236
            jump dustfem_s41

        '재빨리 떠난다.':
            # a20 # r1237
            jump dustfem_s2

        '기다린다.':
            # a21 # r1238
            jump dustfem_s2


# s6 # say1180
label dustfem_s6: # from 4.1 4.2 51.2 51.3
    nr '"만약 길을 잃은 게 아니라면 여기에 온 용건은 뭐죠?"'

    menu:
        '"당신과는 상관없는 일이오."':
            # a22 # r1239
            jump dustfem_s7

        '"나는 당신네 준비실에 있는 철판 위에서 깨어났소."':
            # a23 # r1240
            jump dustfem_s8

        '"누굴 좀 만나러 왔소."':
            # a24 # r1241
            jump dustfem_s9

        '"나는 이 곳에 장례식 때문에 왔소, 하지만 뭔가 착오가 있었던 듯하오."' if dustfemLogic.r1242_condition():
            # a25 # r1242
            jump dustfem_s16

        '재빨리 떠난다.':
            # a26 # r1243
            jump dustfem_s2


# s7 # say1181
label dustfem_s7: # from 6.0 9.0 20.0
    nr '"미안하지만 그건 내가 알 바가 아니에요. 경비병들이라면 당신이 입을 열도록 만들 수 있을 것 같군요." 더스트맨은 한 걸음 물러선다. 당장이라도 경비병을 부를 것 같다.'

    menu:
        '그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..' if dustfemLogic.r1244_condition():
            # a27 # r1244
            jump dustfem_s44

        '그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..' if dustfemLogic.r1245_condition():
            # a28 # r1245
            jump dustfem_s41

        '"그럼 그들을 부르시오. 난 그들을 만나고 싶소."':
            # a29 # r1246
            $ dustfemLogic.r1246_action()
            jump dustfem_dispose


# s8 # say1182
label dustfem_s8: # from 6.1 16.0 20.1
    nr '"농담을 하고 있는 건가요? 그렇다면 경비병들하고 농담을 나누는 게 어떻겠어요." 더스트맨은 한 걸음 물러선다. 당장이라도 경비병을 부를 것 같다.'

    menu:
        '그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..' if dustfemLogic.r1247_condition():
            # a30 # r1247
            jump dustfem_s44

        '그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..' if dustfemLogic.r1248_condition():
            # a31 # r1248
            jump dustfem_s41

        '"그럼 그들을 부르시오. 난 그들을 만나고 싶소."':
            # a32 # r1249
            $ dustfemLogic.r1249_action()
            jump dustfem_dispose


# s9 # say1183
label dustfem_s9: # from 6.2 20.2
    nr '"당신은 이 곳에 누구를 만나러 왔죠?"'

    menu:
        '"당신과는 상관없는 일이오."':
            # a33 # r1251
            jump dustfem_s7

        '"나는 달을 만나러 왔소."' if dustfemLogic.r1253_condition():
            # a34 # r1253
            jump dustfem_s10

        '"나는 달을 만나러 왔소."' if dustfemLogic.r1255_condition():
            # a35 # r1255
            jump dustfem_s11

        '"나는 데이오나라를 만나러 왔소."' if dustfemLogic.r1258_condition():
            # a36 # r1258
            jump dustfem_s13

        '"나는 데이오나라를 만나러 왔소."' if dustfemLogic.r4336_condition():
            # a37 # r4336
            jump dustfem_s12

        '"나는 소에고를 만나러 왔소."' if dustfemLogic.r33224_condition():
            # a38 # r33224
            jump dustfem_s15

        '"나는 소에고를 만나러 왔소."' if dustfemLogic.r33226_condition():
            # a39 # r33226
            jump dustfem_s14

        '거짓말: "어… 아단. 그는 아직도 여기서 일하오, 아니면…?"' if dustfemLogic.r33227_condition():
            # a40 # r33227
            $ dustfemLogic.r33227_action()
            jump dustfem_s21

        '거짓말: "어… 아단. 그는 아직도 여기서 일하오, 아니면…?"' if dustfemLogic.r33229_condition():
            # a41 # r33229
            jump dustfem_s21

        '"어, 아무도 아니오. 내가 말을 잘못 했소."':
            # a42 # r33231
            jump dustfem_s20


# s10 # say1184
label dustfem_s10: # from 9.1
    nr '"달은 이 층에 있는 접수실에 있어요. 하지만 명심하세요… 달은 일 때문에 매우 바쁘며, 건강이 별로 좋지 않아요. 화급한 용건이 없다면 그를 방해하지 않는 것이 좋을 거예요."'

    menu:
        '"알겠소. 정보를 주어 고맙소."':
            # a43 # r1259
            jump dustfem_s48


# s11 # say1185
label dustfem_s11: # from 9.2
    nr '"달은 아마 2층에 있는 접수실에 있을 거예요. 그는 일 때문에 매우 바쁘며, 건강이 별로 좋지 않아요. 화급한 용건이 없다면 그를 방해하지 않는 것이 좋을 좋을 거예요."'

    menu:
        '"알겠소. 정보를 주어 고맙소."':
            # a44 # r1260
            jump dustfem_s48


# s12 # say1186
label dustfem_s12: # from 9.4 19.1
    nr '"데이오나라? 내가 알기로 1층 북서쪽 기념 홀에는 한 여인이 안장되었어요. 혹시 그 여자가 당신이 말한 여자인가요?"'

    menu:
        '"아마 그럴 거요. 고맙소."':
            # a45 # r1261
            jump dustfem_s48


# s13 # say1187
label dustfem_s13: # from 9.3
    nr '"데이오나라? 내가 알기로 북서쪽 기념 홀에는 한 여인이 안장되었어요. 혹시 그 여자가 당신이 말한 여자인가요?"'

    menu:
        '"아마 그럴 거요. 고맙소."':
            # a46 # r1262
            jump dustfem_s48


# s14 # say1188
label dustfem_s14: # from 9.6
    nr '"내 생각에 소에고는 1층 정문 근처에 있을 거예요. 그는 일이 바쁘지 않을 때는 가이드 역할도 해요."'

    menu:
        '"알겠소. 고맙소."':
            # a47 # r1263
            jump dustfem_s48


# s15 # say1189
label dustfem_s15: # from 9.5
    nr '"내 생각에 소에고는 정문 근처에 있을 거예요. 그는 일이 바쁘지 않을 때는 가이드 역할도 해요."'

    menu:
        '"알겠소. 고맙소."':
            # a48 # r1264
            jump dustfem_s48


# s16 # say1190
label dustfem_s16: # from 6.3 20.3
    nr '"누구의 장례식이라고 했죠? 아마 당신이 참석하려는 장례식은 시체안치소의 다른 곳에서 거행되고 있을지도 몰라요."'

    menu:
        '"당신은 내 말을 이해하지 못한 것 같군… 내 말은 내가 착오 때문에 장례식을 당하게 될 뻔했다는 얘기요."':
            # a49 # r1265
            jump dustfem_s8

        '"아마 그럴 거요. 다른 장례식들은 어디서 거행되고 있소?"':
            # a50 # r1266
            jump dustfem_s17

        '"내게 나가는 길을 가르쳐 줄 수 있겠소?"':
            # a51 # r1267
            jump dustfem_s5


# s17 # say1191
label dustfem_s17: # from 16.1
    nr '"시체안치소에는 영안실이 여러 군데 있으며 그것들은 1층과 2층의 벽을 따라 배치되어 있어요. 고인의 이름은 아세요?"'

    menu:
        '"아니오."':
            # a52 # r1268
            jump dustfem_s18

        '"그렇소."':
            # a53 # r1269
            jump dustfem_s19


# s18 # say1192
label dustfem_s18: # from 17.0
    nr '"그럼 정문 근처에 있는 가이드들 중 한 사람과 얘기하세요. 그들이라면 당신을 도울 수 있을 거예요."'

    menu:
        '"알겠소. 고맙소."':
            # a54 # r1270
            jump dustfem_dispose


# s19 # say1193
label dustfem_s19: # from 17.1
    nr '더스트맨은 기다린다.'

    menu:
        '"미안하오… 내가 말을 잘못했소. 난 고인의 이름을 모르오."':
            # a55 # r1271
            jump dustfem_s20

        '"고인의 이름은 데이오나라요."' if dustfemLogic.r1272_condition():
            # a56 # r1272
            jump dustfem_s12

        '거짓말: "이름은… 어, 아단이오."' if dustfemLogic.r1273_condition():
            # a57 # r1273
            $ dustfemLogic.r1273_action()
            jump dustfem_s21

        '거짓말: "이름은… 어, 아단이오."' if dustfemLogic.r1274_condition():
            # a58 # r1274
            jump dustfem_s21

        '마치 그녀에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그녀의 목을 부러트린다.' if dustfemLogic.r1275_condition():
            # a59 # r1275
            jump dustfem_s44

        '마치 그녀에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그녀의 목을 부러트린다.' if dustfemLogic.r1276_condition():
            # a60 # r1276
            jump dustfem_s45

        '도망친다.':
            # a61 # r1277
            jump dustfem_s2


# s20 # say1194
label dustfem_s20: # from 9.9 19.0
    nr '"알겠어요. 자, 당신이 이 곳에 온 용건은 무엇이죠?"'

    menu:
        '"당신과는 상관없는 일이오."':
            # a62 # r1278
            jump dustfem_s7

        '"나는 당신네 준비실에 있는 철판 위에서 깨어났소."':
            # a63 # r1279
            jump dustfem_s8

        '"누굴 좀 만나러 왔소."':
            # a64 # r1280
            jump dustfem_s9

        '"나는 이 곳에 장례식 때문에 왔소, 하지만 뭔가 착오가 있었던 듯하오."' if dustfemLogic.r1281_condition():
            # a65 # r1281
            jump dustfem_s16

        '도망친다.':
            # a66 # r1282
            jump dustfem_s2


# s21 # say1195
label dustfem_s21: # from 9.7 9.8 19.2 19.3
    nr '"나는 그 이름을 잘 모르겠어요. 정문 근처에 있는 가이드들 중 한 사람과 얘기하세요… 그들이라면 당신을 나보다 더 잘 안내할 수 있을 거예요."'

    menu:
        '"알겠소. 그러리다. 안녕히 계시오."':
            # a67 # r1283
            jump dustfem_dispose


# s22 # say1196
label dustfem_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr '이 창백한 얼굴의 여자는 긴 흑색 법복을 착용하고 있다. 그녀로부터는 약간의 곰팡이 냄새가 난다. 그녀는 무표정하며, 자신의 일에 몰두하고 있는 듯하다.'

    menu:
        '"안녕하시오."':
            # a68 # r1284
            jump dustfem_s23

        '그녀를 그냥 내버려 두고 떠난다.':
            # a69 # r1285
            jump dustfem_dispose


# s23 # say1197
label dustfem_s23: # from 22.0
    nr '그녀는 천천히 몸을 돌린다, 그리고 당신이 착용한 법복을 눈을 깜박거리며 쳐다본다. "안녕하세요, 참입자."'

    menu:
        '"당신은 누구요?"':
            # a70 # r1286
            jump dustfem_s24

        '"이 곳은 어떤 곳이오?"':
            # a71 # r1287
            jump dustfem_s25

        '"질문하고 싶은 것이 좀 있소…"':
            # a72 # r1288
            jump dustfem_s26

        '그녀를 그냥 내버려 두고 떠난다.':
            # a73 # r1289
            jump dustfem_dispose


# s24 # say1198
label dustfem_s24: # from 23.0
    nr '"그건 내가 당신에게 묻고 싶군요. 당신 얼굴은 내게 낯이 익지 않아요. 당신은 누구죠?"'

    menu:
        '거짓말: "이름은… 어, 아단이오."' if dustfemLogic.r1290_condition():
            # a74 # r1290
            $ dustfemLogic.r1290_action()
            jump dustfem_s49

        '거짓말: "이름은… 어, 아단이오."' if dustfemLogic.r1291_condition():
            # a75 # r1291
            jump dustfem_s49

        '"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."' if dustfemLogic.r1292_condition():
            # a76 # r1292
            jump dustfem_s47

        '"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."' if dustfemLogic.r1293_condition():
            # a77 # r1293
            jump dustfem_s46


# s25 # say1199
label dustfem_s25: # from 23.1
    nr '"이 곳은 시체안치소예요…" 더스트맨은 당신이 한 말을 곰곰이 생각해 보려는 듯 당신을 잠시동안 쳐다본다. "당신 이름을 다시 한 번 말해주겠어요?"'

    menu:
        '거짓말: "이름은… 어, 아단이오."' if dustfemLogic.r1294_condition():
            # a78 # r1294
            $ dustfemLogic.r1294_action()
            jump dustfem_s49

        '거짓말: "이름은… 어, 아단이오."' if dustfemLogic.r1295_condition():
            # a79 # r1295
            jump dustfem_s49

        '"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."' if dustfemLogic.r1296_condition():
            # a80 # r1296
            jump dustfem_s47

        '"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."' if dustfemLogic.r1297_condition():
            # a81 # r1297
            jump dustfem_s46


# s26 # say1200
label dustfem_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr '더스트맨은 당신이 계속하기를 인내심 있게 기다린다.'

    menu:
        '"내게 여기서 나가는 방법을 일러줄 수 있겠소?"':
            # a82 # r1298
            jump dustfem_s27

        '"파로드란 이름의 사람을 아시오?"':
            # a83 # r1299
            jump dustfem_s28

        '"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"':
            # a84 # r1300
            jump dustfem_s39

        '"관두시오. 당신을 귀찮게 해 미안하오."':
            # a85 # r1328
            jump dustfem_s48


# s27 # say1201
label dustfem_s27: # from 26.0
    nr '"그냥 정문을 통해서 나갈 수가 있어요. 정문은 1층에 있어요."'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a86 # r1329
            jump dustfem_s26

        '"고맙소. 안녕히 계시오."':
            # a87 # r1330
            jump dustfem_s48


# s28 # say1202
label dustfem_s28: # from 26.1
    nr '"그 이름…" 더스트맨은 잠시 말을 멈춘다. "그 이름의 귀에 익군요… 그런 이름을 가진 수집자에 대해 들은 적이 있어요. 서기인 달이라면 아마 그에 대해 알 거예요."'

    menu:
        '"수집자?"':
            # a88 # r1331
            jump dustfem_s29

        '"달?"':
            # a89 # r1334
            jump dustfem_s30

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a90 # r1338
            jump dustfem_s26

        '"시간을 내주어 고맙소. 안녕히 계시오."':
            # a91 # r1395
            jump dustfem_s48


# s29 # say1203
label dustfem_s29: # from 28.0
    nr '"수집자들… 그들은 시길의 거리에서 죽은 자들의 시체를 거두어 시체안치소로 가져오는 자들이에요…" 더스트맨은 일단 말을 멈추고 눈살을 찌푸린다. "당신은 이 근처 사람이 아니군요. 당신은 누구죠?"'

    menu:
        '"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."' if dustfemLogic.r1396_condition():
            # a92 # r1396
            jump dustfem_s50

        '"나는… 최근에 이 곳에 왔소. 그래서… 이 곳에 대해 배우고 있는 중이오."' if dustfemLogic.r1397_condition():
            # a93 # r1397
            jump dustfem_s47

        '"그래, 좋소…뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."' if dustfemLogic.r1398_condition():
            # a94 # r1398
            jump dustfem_s47

        '"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."' if dustfemLogic.r1399_condition():
            # a95 # r1399
            jump dustfem_s46


# s30 # say1204
label dustfem_s30: # from 28.1
    nr '"달은 우리 당파에서 가장 존경받는 사람들 중 하나예요. 내가 알기로 그보다 진정한 죽음의 본질에 대해 더 많이 명상하고, 또 그보다 더 진정한 죽음을 맞이할 자격을 지닌 사람은 없어요. 그는 지혜의 보고지요. 당신은 가능한 한 빨리 그와 얘기를 나누는 것이 좋을 거예요. 그는 현생의 그림자에서 오래 머무르지 않을 테니까."'

    menu:
        '"이 존재의 그림자에서 오래 머물지 않을 것이다?*"':
            # a96 # r4280
            jump dustfem_s31

        '"달은 어디 있소?"' if dustfemLogic.r4281_condition():
            # a97 # r4281
            jump dustfem_s32

        '"달은 어디에 있소?"' if dustfemLogic.r4282_condition():
            # a98 # r4282
            jump dustfem_s33

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a99 # r4283
            jump dustfem_s26

        '"정보를 주어 고맙소. 그럼 나는 그와 이야기를 하도록 하겠소."':
            # a100 # r33245
            jump dustfem_s48


# s31 # say1205
label dustfem_s31: # from 30.0 32.0 33.0
    nr '더스트맨은 고개를 끄덕인다. "달은 병에 걸렸어요. 그는 기스저라이의 기준으로 보아도 매우 늙었지요. 그가 병 때문에 곧 죽을 것은 명백해요. 그는 정말로 운이 좋아요."'

    menu:
        '"기스저라이의 기준?"':
            # a101 # r4284
            jump dustfem_s34

        '"*기스저라이*란 무엇이오?"':
            # a102 # r4285
            jump dustfem_s35

        '"운이 좋아?"':
            # a103 # r4286
            jump dustfem_s36

        '"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a104 # r4287
            jump dustfem_s26

        '"시간을 내주어 고맙소. 이만 실례해야겠소."':
            # a105 # r4337
            jump dustfem_s48


# s32 # say1206
label dustfem_s32: # from 30.1
    nr '"달은 이 층의 북서쪽 구석에 있는 접수실에 있어요. 하지만 명심하세요… 달은 매우 바빠요… 그는 자신의 책무를 다하는 데 쓰는 시간 외의 시간을 병 때문에 대부분 빼앗기고 있는 실정이에요."'

    menu:
        '"달은 병에 걸렸소?"':
            # a106 # r4288
            jump dustfem_s31

        '"시간을 내주어 고맙소. 이만 실례해야겠소. 안녕히 계시오."':
            # a107 # r4289
            jump dustfem_s48


# s33 # say1207
label dustfem_s33: # from 30.2
    nr '"달은 2층의 북서쪽 구석에 있는 접수실에 있어요. 그는 바쁘니까 그의 시간을 너무 뺏지는 마세요… 그는 자신의 책무를 다하는 데 쓰는 시간 외의 시간을 그의 몸을 좀먹는 병 때문에 대부분 빼앗기고 있는 실정이에요."'

    menu:
        '"달은 병에 걸렸소?"':
            # a108 # r4290
            jump dustfem_s31

        '"시간을 내주어 고맙소. 이만 실례해야겠소. 안녕히 계시오."':
            # a109 # r4291
            jump dustfem_s48


# s34 # say1208
label dustfem_s34: # from 31.0
    nr '"그래요… 기스저라이는 인간보다 훨씬 긴 수명을 지니고 있어요."'

    menu:
        '"*기스저라이*란 무엇이오?"':
            # a110 # r4292
            jump dustfem_s35

        '"왜 달이 죽는 게 운이 좋다는 거요? 사람들이 그를 싫어하기라도 하는 거요?"':
            # a111 # r4293
            jump dustfem_s36

        '"아. 다른 질문이 있소…"':
            # a112 # r4294
            jump dustfem_s26

        '"시간을 내주어 고맙소. 안녕히 계시오."':
            # a113 # r4295
            jump dustfem_s48


# s35 # say1209
label dustfem_s35: # from 31.1 34.0
    nr '"기스저라이는…" 더스트맨은 일단 말을 멈추고 눈살을 찌푸리며 당신을 골똘히 쳐다본다. "당신은 이 근처 사람이 아니군요. 당신은 누구죠?"'

    menu:
        '"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."' if dustfemLogic.r4296_condition():
            # a114 # r4296
            jump dustfem_s50

        '"나는… 최근에 이 곳에 왔소. 그래서… 이 곳에 대해 배우고 있는 중이오."' if dustfemLogic.r4297_condition():
            # a115 # r4297
            jump dustfem_s47

        '"그래, 좋소…뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."' if dustfemLogic.r4298_condition():
            # a116 # r4298
            jump dustfem_s47

        '"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."' if dustfemLogic.r4300_condition():
            # a117 # r4300
            jump dustfem_s46


# s36 # say1210
label dustfem_s36: # from 31.2 34.1
    nr '"그는 진정한 죽음에 도달할 것이기 때문에 운이 좋아요. 그는 더 이상 현생의 그림자에서 살 필요가 없어요."'

    menu:
        '"그리고… 그건 좋은 일이오?"':
            # a118 # r4299
            jump dustfem_s37

        '"알겠소. 정말 다행스런 일이오. 그 밖에도 물어볼 것들이 있소…"':
            # a119 # r4301
            jump dustfem_s26

        '"알겠소. 이만 실례해야겠소. 안녕히 계시오."':
            # a120 # r4302
            jump dustfem_s48


# s37 # say1211
label dustfem_s37: # from 36.0
    nr '더스트맨은 고개를 끄덕인다. "그래요." 그녀는 눈살을 찌푸린 다음, 당신을 골똘히 살펴본다. "당신은 이 근처 사람이 아니군요. 당신은 누구죠?"'

    menu:
        '"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."' if dustfemLogic.r4303_condition():
            # a121 # r4303
            jump dustfem_s50

        '"나는… 최근에 이 곳에 왔소. 그래서… 이 곳에 대해 배우고 있는 중이오."' if dustfemLogic.r4304_condition():
            # a122 # r4304
            jump dustfem_s47

        '"그래, 좋소…뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."' if dustfemLogic.r4305_condition():
            # a123 # r4305
            jump dustfem_s47

        '"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."' if dustfemLogic.r4306_condition():
            # a124 # r4306
            jump dustfem_s46


# s38 # say1212
label dustfem_s38: # -
    nr '"당신은 우리의 일원이 아니군요. 당신은 여기서 무슨 짓을 하고 있는 거죠? 당신은 아나키스트의 일원인가요? 아니면 다른 당파의 스파이? 경비병! 경비병!"'

    menu:
        '"빌어먹을!"':
            # a125 # r4307
            $ dustfemLogic.r4307_action()
            jump dustfem_dispose

        '"쉿! 그렇게 소리를 크게 지르면 내가 대답할 수가 없지 않소!"' if dustfemLogic.r4308_condition():
            # a126 # r4308
            $ dustfemLogic.r4308_action()
            jump dustfem_dispose

        '"쉿! 그렇게 소리를 크게 지르면 내가 대답할 수가 없지 않소!"' if dustfemLogic.r4309_condition():
            # a127 # r4309
            $ dustfemLogic.r4309_action()
            jump dustfem_dispose


# s39 # say1213
label dustfem_s39: # from 26.2
    nr '"일지? 아니, 그런 건 본 적이 없어요."'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a128 # r4310
            jump dustfem_s26

        '"실례해야겠소. 안녕히 계시오."':
            # a129 # r4311
            jump dustfem_s48


# s40 # say1214
label dustfem_s40: # -
    nr '이 창백한 얼굴의 여자는 긴 흑색 법복을 착용하고 있다. 그녀로부터는 약간의 곰팡이 냄새가 난다. 그녀는 무표정하며, 자신의 일에 몰두하고 있는 듯하다.'

    menu:
        '"안녕하시오."' if dustfemLogic.r4312_condition():
            # a130 # r4312
            jump morte_s81  # EXTERN

        '"안녕하시오."' if dustfemLogic.r4313_condition():
            # a131 # r4313
            jump morte_s83  # EXTERN

        '"안녕하시오."' if dustfemLogic.r4314_condition():
            # a132 # r4314
            jump dustfem_s4

        '"안녕하시오."' if dustfemLogic.r4315_condition():
            # a133 # r4315
            jump dustfem_s4

        '그녀를 그냥 내버려 두고 떠난다.':
            # a134 # r4316
            jump dustfem_dispose


# s41 # say1215
label dustfem_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr '더스트맨이 입도 뻥끗하기 전에 당신은 양손으로 그녀의 관자놀이를 꽉 조인다, 그리고 그녀의 목을 왼쪽으로 세게 비튼다.'

    menu:
        '"당신 동료들에게 알리도록 내버려둘 수는 없지…"':
            # a135 # r4317
            $ dustfemLogic.r4317_action()
            jump dustfem_s42


# s42 # say1216
label dustfem_s42: # from 41.0 45.0
    nr '*우지직*하는 소리가 나고 더스트는 맨은 당신 팔 안에서 맥없이 늘어진다.'

    menu:
        '"나보다는 당신이 죽는 게 낫지, 더스티."' if dustfemLogic.r4318_condition():
            # a136 # r4318
            $ dustfemLogic.r4318_action()
            jump dustfem_s43

        '"나보다는 당신이 죽는 게 낫지, 더스티."' if dustfemLogic.r4319_condition():
            # a137 # r4319
            $ dustfemLogic.r4319_action()
            jump dustfem_dispose


# s43 # say1217
label dustfem_s43: # from 42.0
    nr '놀랍게도 이러한 행동은 당신에게 있어 매우 자연스러운 일인 것 같다… 마치 전에도 여러 번 비슷한 일을 해본 것처럼. 그런 생각이 들자 기억이 자극이 받으나, 표면으로 떠오를 정도로 강하지는 않다.'

    menu:
        '시체를 놔두고 가던 길을 간다.':
            # a138 # r4320
            $ dustfemLogic.r4320_action()
            jump dustfem_dispose


# s44 # say1218
label dustfem_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr '당신이 충분히 빠르지 못한 탓에 더스트맨은 당신의 돌격을 피한다. 한 걸음 물러선 후, 그녀는 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.'

    menu:
        '"그럼 좋소…"':
            # a139 # r4321
            $ dustfemLogic.r4321_action()
            jump dustfem_dispose


# s45 # say1219
label dustfem_s45: # from 19.5
    nr '당신이 그녀에게 „속삭이려고“ 몸을 구부리자 더스트맨 역시 몸을 구부린다. 그녀가 팔이 닿을 거리 내로 들어오자 당신은 양손으로 그녀의 관자놀이를 꽉 조인다, 그리고 그녀의 목을 왼쪽으로 세게 비튼다.'

    menu:
        '"당신 동료들에게 알리도록 내버려둘 수는 없지…"':
            # a140 # r4322
            $ dustfemLogic.r4322_action()
            jump dustfem_s42


# s46 # say1220
label dustfem_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr '더스트맨은 의심을 하는 듯하다. 그녀는 뭐라고 말하려는 것 같다, 하지만 이내 고개를 젓고 하던 일로 돌아간다.'

    menu:
        '다른 곳으로 간다.':
            # a141 # r4323
            jump dustfem_dispose


# s47 # say1221
label dustfem_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr '더스트맨은 당신을 유심히 살펴본다. "당신은 우리들 중 하나가 아니군요. 당신은 여기서 무슨 짓을 하고 있는 거죠? 당신은 아나키스트의 일원인가요? 아니면 다른 당파의 스파이? 경비병을 불러야겠군요…"'

    menu:
        '그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..' if dustfemLogic.r4324_condition():
            # a142 # r4324
            jump dustfem_s44

        '그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..' if dustfemLogic.r4325_condition():
            # a143 # r4325
            jump dustfem_s41

        '재빨리 떠난다.':
            # a144 # r4326
            jump dustfem_s2

        '"아니오… 그건… 어… 내 말은 내가 스파이가 아니라는 거요… 나는 철판들 중 하나에서 깨어나… 그리고…"':
            # a145 # r4327
            jump dustfem_s2


# s48 # say1222
label dustfem_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr '더스트맨은 고개를 끄덕인 후 하던 일로 돌아간다.'

    menu:
        '다른 곳으로 간다.':
            # a146 # r4328
            jump dustfem_dispose


# s49 # say1223
label dustfem_s49: # from 24.0 24.1 25.0 25.1
    nr '더스트맨은 눈살을 찌푸린다: "그런 이름은 모르겠어요."'

    menu:
        '"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."' if dustfemLogic.r4329_condition():
            # a147 # r4329
            jump dustfem_s50

        '"나는… 이 곳에 온지 얼마 안 되오. 난… 이 곳의 규칙을 배우는 중이오."' if dustfemLogic.r4331_condition():
            # a148 # r4331
            jump dustfem_s47

        '"그래, 좋소…뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."' if dustfemLogic.r4332_condition():
            # a149 # r4332
            jump dustfem_s47

        '"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."' if dustfemLogic.r4333_condition():
            # a150 # r4333
            jump dustfem_s46


# s50 # say1224
label dustfem_s50: # from 29.0 35.0 37.0 49.0
    nr '더스트맨은 여전히 눈살을 찌푸리고있으나, 그녀는 가볍게 고개를 끄덕인다. "좋아요. 어떤 도움을 원하세요, 참입자?"'

    menu:
        '"질문하고 싶은 것이 좀 있소…"':
            # a151 # r4334
            jump dustfem_s26

        '"오늘은 아무런 용건도 없소. 안녕히 계시오."':
            # a152 # r4335
            jump dustfem_s46


# s51 # say66683
label dustfem_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr '더스트맨은 차가운 눈으로 당신을 바라본다. "길을 잃었나요?"'

    menu:
        '"아니오, 난 당파의 일원이오. 나는 시체안치소를 그냥 둘러보고 있었소."' if dustfemLogic.r66684_condition():
            # a153 # r66684
            jump dustfem_s52

        '"그렇소."' if dustfemLogic.r66685_condition():
            # a154 # r66685
            jump dustfem_s5

        '"아니오."' if dustfemLogic.r66686_condition():
            # a155 # r66686
            jump dustfem_s6

        '"아니오, 나는 길을 잃지 않았소. 물어볼 것이 좀 있소…"' if dustfemLogic.r66687_condition():
            # a156 # r66687
            jump dustfem_s6

        '"안녕히 계시오."' if dustfemLogic.r66688_condition():
            # a157 # r66688
            jump dustfem_s2


# s52 # say66689
label dustfem_s52: # from 51.0
    nr '더스트맨은 잠시 당신을 바라본 후 고개를 끄덕인다. "좋아요. 만약 도움이 필요하면 내게 말하세요."'

    menu:
        '"그렇게 하리다. 안녕히 계시오."':
            # a158 # r66690
            jump dustfem_dispose
