// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFEM~

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #298 /* ~더스트맨은 당신의 존재를 알아차리지 못하고 있는 듯하다. 아마 그녀는 당신을 언데드 노동자들 중 하나로 착각한 모양이다. ~ */
  IF ~~ THEN REPLY #299 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #318 /* ~"당신은 누구요?"~ */ GOTO 1
  IF ~~ THEN REPLY #1168 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 1
  IF ~~ THEN REPLY #1169 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #1170 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #1171 /* ~더스트맨은 소스라치게 놀란다, 그리고 고개를 돌려 당신을 쳐다본다. 그녀는 심한 충격을 받은 듯하다. 아마 당신 변장이 너무 훌륭했던 것 같다.~ */
  IF ~~ THEN REPLY #1172 /* ~그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..~ */ GOTO 41
  IF ~~ THEN REPLY #1174 /* ~"질문할 것이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #1175 /* ~재빨리 떠난다. ~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
  SAY #1176 /* ~더스트맨은 한 걸음 물러선 후 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.~ */
  IF ~~ THEN REPLY #1225 /* ~"그럼 좋소..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1177 /* ~이 창백한 얼굴의 여자는 긴 흑색 법복을 착용하고 있다. 그녀로부터는 약간의 곰팡이 냄새가 난다. 그녀는 무표정하며, 자신의 일에 몰두하고 있는 듯하다.~ */
  IF ~~ THEN REPLY #1226 /* ~"안녕하시오."~ */ GOTO 4
  IF ~~ THEN REPLY #1227 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~~ THEN REPLY #1228 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #1229 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #1230 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 3.3 40.2 40.3
  SAY #1178 /* ~더스트맨은 천천히 고개를 들어 당신 쪽을 향한다. "길을 잃었나요?"~ */
  IF ~~ THEN REPLY #1231 /* ~"그렇소."~ */ GOTO 5
  IF ~~ THEN REPLY #1232 /* ~"아니오."~ */ GOTO 6
  IF ~~ THEN REPLY #1233 /* ~"아니오, 나는 길을 잃지 않았소. 물어볼 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #1234 /* ~"안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.2 51.1
  SAY #1179 /* ~"당신을 밖으로 안내할 경비병을 부르겠어요. 잠시만 기다리세요."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1235 /* ~그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1236 /* ~그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..~ */ GOTO 41
  IF ~~ THEN REPLY #1237 /* ~재빨리 떠난다. ~ */ GOTO 2
  IF ~~ THEN REPLY #1238 /* ~기다린다.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 51.2 51.3
  SAY #1180 /* ~"만약 길을 잃은 게 아니라면 여기에 온 용건은 뭐죠?"~ */
  IF ~~ THEN REPLY #1239 /* ~"당신과는 상관없는 일이오."~ */ GOTO 7
  IF ~~ THEN REPLY #1240 /* ~"나는 당신네 준비실에 있는 철판 위에서 깨어났소."~ */ GOTO 8
  IF ~~ THEN REPLY #1241 /* ~"누굴 좀 만나러 왔소."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1242 /* ~"나는 이 곳에 장례식 때문에 왔소, 하지만 뭔가 착오가 있었던 듯하오."~ */ GOTO 16
  IF ~~ THEN REPLY #1243 /* ~재빨리 떠난다. ~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0 20.0
  SAY #1181 /* ~"미안하지만 그건 내가 알 바가 아니에요. 경비병들이라면 당신이 입을 열도록 만들 수 있을 것 같군요." 더스트맨은 한 걸음 물러선다. 당장이라도 경비병을 부를 것 같다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1244 /* ~그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1245 /* ~그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..~ */ GOTO 41
  IF ~~ THEN REPLY #1246 /* ~"그럼 그들을 부르시오. 난 그들을 만나고 싶소."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.0 20.1
  SAY #1182 /* ~"농담을 하고 있는 건가요? 그렇다면 경비병들하고 농담을 나누는 게 어떻겠어요." 더스트맨은 한 걸음 물러선다. 당장이라도 경비병을 부를 것 같다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1247 /* ~그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1248 /* ~그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..~ */ GOTO 41
  IF ~~ THEN REPLY #1249 /* ~"그럼 그들을 부르시오. 난 그들을 만나고 싶소."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 20.2
  SAY #1183 /* ~"당신은 이 곳에 누구를 만나러 왔죠?"~ */
  IF ~~ THEN REPLY #1251 /* ~"당신과는 상관없는 일이오."~ */ GOTO 7
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1253 /* ~"나는 달을 만나러 왔소."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1255 /* ~"나는 달을 만나러 왔소."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #1258 /* ~"나는 데이오나라를 만나러 왔소."~ */ GOTO 13
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #4336 /* ~"나는 데이오나라를 만나러 왔소."~ */ GOTO 12
  IF ~  GlobalGT("Soego","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33224 /* ~"나는 소에고를 만나러 왔소."~ */ GOTO 15
  IF ~  GlobalGT("Soego","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33226 /* ~"나는 소에고를 만나러 왔소."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedTo(1)
~ THEN REPLY #33227 /* ~거짓말: "어... 아단. 그는 아직도 여기서 일하오, 아니면...?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedToGT(1)
~ THEN REPLY #33229 /* ~거짓말: "어... 아단. 그는 아직도 여기서 일하오, 아니면...?"~ */ GOTO 21
  IF ~~ THEN REPLY #33231 /* ~"어, 아무도 아니오. 내가 말을 잘못 했소."~ */ GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #1184 /* ~"달은 이 층에 있는 접수실에 있어요. 하지만 명심하세요... 달은 일 때문에 매우 바쁘며, 건강이 별로 좋지 않아요. 화급한 용건이 없다면 그를 방해하지 않는 것이 좋을 거예요."~ */
  IF ~~ THEN REPLY #1259 /* ~"알겠소. 정보를 주어 고맙소."~ */ GOTO 48
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #1185 /* ~"달은 아마 2층에 있는 접수실에 있을 거예요. 그는 일 때문에 매우 바쁘며, 건강이 별로 좋지 않아요. 화급한 용건이 없다면 그를 방해하지 않는 것이 좋을 좋을 거예요."~ */
  IF ~~ THEN REPLY #1260 /* ~"알겠소. 정보를 주어 고맙소."~ */ GOTO 48
END

IF ~~ THEN BEGIN 12 // from: 9.4 19.1
  SAY #1186 /* ~"데이오나라? 내가 알기로 1층 북서쪽 기념 홀에는 한 여인이 안장되었어요. 혹시 그 여자가 당신이 말한 여자인가요?"~ */
  IF ~~ THEN REPLY #1261 /* ~"아마 그럴 거요. 고맙소."~ */ GOTO 48
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #1187 /* ~"데이오나라? 내가 알기로 북서쪽 기념 홀에는 한 여인이 안장되었어요. 혹시 그 여자가 당신이 말한 여자인가요?"~ */
  IF ~~ THEN REPLY #1262 /* ~"아마 그럴 거요. 고맙소."~ */ GOTO 48
END

IF ~~ THEN BEGIN 14 // from: 9.6
  SAY #1188 /* ~"내 생각에 소에고는 1층 정문 근처에 있을 거예요. 그는 일이 바쁘지 않을 때는 가이드 역할도 해요."~ */
  IF ~~ THEN REPLY #1263 /* ~"알겠소. 고맙소."~ */ GOTO 48
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #1189 /* ~"내 생각에 소에고는 정문 근처에 있을 거예요. 그는 일이 바쁘지 않을 때는 가이드 역할도 해요."~ */
  IF ~~ THEN REPLY #1264 /* ~"알겠소. 고맙소."~ */ GOTO 48
END

IF ~~ THEN BEGIN 16 // from: 6.3 20.3
  SAY #1190 /* ~"누구의 장례식이라고 했죠? 아마 당신이 참석하려는 장례식은 시체안치소의 다른 곳에서 거행되고 있을지도 몰라요."~ */
  IF ~~ THEN REPLY #1265 /* ~"당신은 내 말을 이해하지 못한 것 같군... 내 말은 내가 착오 때문에 장례식을 당하게 될 뻔했다는 얘기요."~ */ GOTO 8
  IF ~~ THEN REPLY #1266 /* ~"아마 그럴 거요. 다른 장례식들은 어디서 거행되고 있소?"~ */ GOTO 17
  IF ~~ THEN REPLY #1267 /* ~"내게 나가는 길을 가르쳐 줄 수 있겠소?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #1191 /* ~"시체안치소에는 영안실이 여러 군데 있으며 그것들은 1층과 2층의 벽을 따라 배치되어 있어요. 고인의 이름은 아세요?"~ */
  IF ~~ THEN REPLY #1268 /* ~"아니오."~ */ GOTO 18
  IF ~~ THEN REPLY #1269 /* ~"그렇소."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #1192 /* ~"그럼 정문 근처에 있는 가이드들 중 한 사람과 얘기하세요. 그들이라면 당신을 도울 수 있을 거예요."~ */
  IF ~~ THEN REPLY #1270 /* ~"알겠소. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #1193 /* ~더스트맨은 기다린다.~ */
  IF ~~ THEN REPLY #1271 /* ~"미안하오... 내가 말을 잘못했소. 난 고인의 이름을 모르오."~ */ GOTO 20
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #1272 /* ~"고인의 이름은 데이오나라요."~ */ GOTO 12
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1273 /* ~거짓말: "이름은... 어, 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1274 /* ~거짓말: "이름은... 어, 아단이오."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1275 /* ~마치 그녀에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그녀의 목을 부러트린다.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1276 /* ~마치 그녀에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그녀의 목을 부러트린다.~ */ GOTO 45
  IF ~~ THEN REPLY #1277 /* ~도망친다.~ */ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.9 19.0
  SAY #1194 /* ~"알겠어요. 자, 당신이 이 곳에 온 용건은 무엇이죠?"~ */
  IF ~~ THEN REPLY #1278 /* ~"당신과는 상관없는 일이오."~ */ GOTO 7
  IF ~~ THEN REPLY #1279 /* ~"나는 당신네 준비실에 있는 철판 위에서 깨어났소."~ */ GOTO 8
  IF ~~ THEN REPLY #1280 /* ~"누굴 좀 만나러 왔소."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1281 /* ~"나는 이 곳에 장례식 때문에 왔소, 하지만 뭔가 착오가 있었던 듯하오."~ */ GOTO 16
  IF ~~ THEN REPLY #1282 /* ~도망친다.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.7 9.8 19.2 19.3
  SAY #1195 /* ~"나는 그 이름을 잘 모르겠어요. 정문 근처에 있는 가이드들 중 한 사람과 얘기하세요... 그들이라면 당신을 나보다 더 잘 안내할 수 있을 거예요."~ */
  IF ~~ THEN REPLY #1283 /* ~"알겠소. 그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #1196 /* ~이 창백한 얼굴의 여자는 긴 흑색 법복을 착용하고 있다. 그녀로부터는 약간의 곰팡이 냄새가 난다. 그녀는 무표정하며, 자신의 일에 몰두하고 있는 듯하다.~ */
  IF ~~ THEN REPLY #1284 /* ~"안녕하시오."~ */ GOTO 23
  IF ~~ THEN REPLY #1285 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #1197 /* ~그녀는 천천히 몸을 돌린다, 그리고 당신이 착용한 법복을 눈을 깜박거리며 쳐다본다. "안녕하세요, 참입자."~ */
  IF ~~ THEN REPLY #1286 /* ~"당신은 누구요?"~ */ GOTO 24
  IF ~~ THEN REPLY #1287 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 25
  IF ~~ THEN REPLY #1288 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #1289 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1198 /* ~"그건 내가 당신에게 묻고 싶군요. 당신 얼굴은 내게 낯이 익지 않아요. 당신은 누구죠?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1290 /* ~거짓말: "이름은... 어, 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1291 /* ~거짓말: "이름은... 어, 아단이오."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1292 /* ~"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1293 /* ~"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 46
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #1199 /* ~"이 곳은 시체안치소예요..." 더스트맨은 당신이 한 말을 곰곰이 생각해 보려는 듯 당신을 잠시동안 쳐다본다. "당신 이름을 다시 한 번 말해주겠어요?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1294 /* ~거짓말: "이름은... 어, 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1295 /* ~거짓말: "이름은... 어, 아단이오."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1296 /* ~"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1297 /* ~"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 46
END

IF ~~ THEN BEGIN 26 // from: 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
  SAY #1200 /* ~더스트맨은 당신이 계속하기를 인내심 있게 기다린다.~ */
  IF ~~ THEN REPLY #1298 /* ~"내게 여기서 나가는 방법을 일러줄 수 있겠소?"~ */ GOTO 27
  IF ~~ THEN REPLY #1299 /* ~"파로드란 이름의 사람을 아시오?"~ */ GOTO 28
  IF ~~ THEN REPLY #1300 /* ~"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 39
  IF ~~ THEN REPLY #1328 /* ~"관두시오. 당신을 귀찮게 해 미안하오."~ */ GOTO 48
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #1201 /* ~"그냥 정문을 통해서 나갈 수가 있어요. 정문은 1층에 있어요."~ */
  IF ~~ THEN REPLY #1329 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #1330 /* ~"고맙소. 안녕히 계시오."~ */ GOTO 48
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #1202 /* ~"그 이름..." 더스트맨은 잠시 말을 멈춘다. "그 이름의 귀에 익군요... 그런 이름을 가진 수집자에 대해 들은 적이 있어요. 서기인 달이라면 아마 그에 대해 알 거예요."~ */
  IF ~~ THEN REPLY #1331 /* ~"수집자?"~ */ GOTO 29
  IF ~~ THEN REPLY #1334 /* ~"달?"~ */ GOTO 30
  IF ~~ THEN REPLY #1338 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #1395 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ GOTO 48
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1203 /* ~"수집자들... 그들은 시길의 거리에서 죽은 자들의 시체를 거두어 시체안치소로 가져오는 자들이에요..." 더스트맨은 일단 말을 멈추고 눈살을 찌푸린다. "당신은 이 근처 사람이 아니군요. 당신은 누구죠?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1396 /* ~"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1397 /* ~"나는... 최근에 이 곳에 왔소. 그래서... 이 곳에 대해 배우고 있는 중이오."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1398 /* ~"그래, 좋소...뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1399 /* ~"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."~ */ GOTO 46
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #1204 /* ~"달은 우리 당파에서 가장 존경받는 사람들 중 하나예요. 내가 알기로 그보다 진정한 죽음의 본질에 대해 더 많이 명상하고, 또 그보다 더 진정한 죽음을 맞이할 자격을 지닌 사람은 없어요. 그는 지혜의 보고지요. 당신은 가능한 한 빨리 그와 얘기를 나누는 것이 좋을 거예요. 그는 현생의 그림자에서 오래 머무르지 않을 테니까."~ */
  IF ~~ THEN REPLY #4280 /* ~"이 존재의 그림자에서 오래 머물지 않을 것이다?*"~ */ GOTO 31
  IF ~  Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4281 /* ~"달은 어디 있소?"~ */ GOTO 32
  IF ~  !Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4282 /* ~"달은 어디에 있소?"~ */ GOTO 33
  IF ~~ THEN REPLY #4283 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #33245 /* ~"정보를 주어 고맙소. 그럼 나는 그와 이야기를 하도록 하겠소."~ */ GOTO 48
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 33.0
  SAY #1205 /* ~더스트맨은 고개를 끄덕인다. "달은 병에 걸렸어요. 그는 기스저라이의 기준으로 보아도 매우 늙었지요. 그가 병 때문에 곧 죽을 것은 명백해요. 그는 정말로 운이 좋아요."~ */
  IF ~~ THEN REPLY #4284 /* ~"기스저라이의 기준?"~ */ GOTO 34
  IF ~~ THEN REPLY #4285 /* ~"*기스저라이*란 무엇이오?"~ */ GOTO 35
  IF ~~ THEN REPLY #4286 /* ~"운이 좋아?"~ */ GOTO 36
  IF ~~ THEN REPLY #4287 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #4337 /* ~"시간을 내주어 고맙소. 이만 실례해야겠소."~ */ GOTO 48
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #1206 /* ~"달은 이 층의 북서쪽 구석에 있는 접수실에 있어요. 하지만 명심하세요... 달은 매우 바빠요... 그는 자신의 책무를 다하는 데 쓰는 시간 외의 시간을 병 때문에 대부분 빼앗기고 있는 실정이에요."~ */
  IF ~~ THEN REPLY #4288 /* ~"달은 병에 걸렸소?"~ */ GOTO 31
  IF ~~ THEN REPLY #4289 /* ~"시간을 내주어 고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 48
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #1207 /* ~"달은 2층의 북서쪽 구석에 있는 접수실에 있어요. 그는 바쁘니까 그의 시간을 너무 뺏지는 마세요... 그는 자신의 책무를 다하는 데 쓰는 시간 외의 시간을 그의 몸을 좀먹는 병 때문에 대부분 빼앗기고 있는 실정이에요."~ */
  IF ~~ THEN REPLY #4290 /* ~"달은 병에 걸렸소?"~ */ GOTO 31
  IF ~~ THEN REPLY #4291 /* ~"시간을 내주어 고맙소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 31.0
  SAY #1208 /* ~"그래요... 기스저라이는 인간보다 훨씬 긴 수명을 지니고 있어요."~ */
  IF ~~ THEN REPLY #4292 /* ~"*기스저라이*란 무엇이오?"~ */ GOTO 35
  IF ~~ THEN REPLY #4293 /* ~"왜 달이 죽는 게 운이 좋다는 거요? 사람들이 그를 싫어하기라도 하는 거요?"~ */ GOTO 36
  IF ~~ THEN REPLY #4294 /* ~"아. 다른 질문이 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #4295 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ GOTO 48
END

IF ~~ THEN BEGIN 35 // from: 31.1 34.0
  SAY #1209 /* ~"기스저라이는..." 더스트맨은 일단 말을 멈추고 눈살을 찌푸리며 당신을 골똘히 쳐다본다. "당신은 이 근처 사람이 아니군요. 당신은 누구죠?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4296 /* ~"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4297 /* ~"나는... 최근에 이 곳에 왔소. 그래서... 이 곳에 대해 배우고 있는 중이오."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4298 /* ~"그래, 좋소...뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4300 /* ~"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 31.2 34.1
  SAY #1210 /* ~"그는 진정한 죽음에 도달할 것이기 때문에 운이 좋아요. 그는 더 이상 현생의 그림자에서 살 필요가 없어요."~ */
  IF ~~ THEN REPLY #4299 /* ~"그리고... 그건 좋은 일이오?"~ */ GOTO 37
  IF ~~ THEN REPLY #4301 /* ~"알겠소. 정말 다행스런 일이오. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #4302 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #1211 /* ~더스트맨은 고개를 끄덕인다. "그래요." 그녀는 눈살을 찌푸린 다음, 당신을 골똘히 살펴본다. "당신은 이 근처 사람이 아니군요. 당신은 누구죠?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4303 /* ~"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4304 /* ~"나는... 최근에 이 곳에 왔소. 그래서... 이 곳에 대해 배우고 있는 중이오."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4305 /* ~"그래, 좋소...뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4306 /* ~"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from:
  SAY #1212 /* ~"당신은 우리의 일원이 아니군요. 당신은 여기서 무슨 짓을 하고 있는 거죠? 당신은 아나키스트의 일원인가요? 아니면 다른 당파의 스파이? 경비병! 경비병!"~ */
  IF ~~ THEN REPLY #4307 /* ~"빌어먹을!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #4308 /* ~"쉿! 그렇게 소리를 크게 지르면 내가 대답할 수가 없지 않소!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #4309 /* ~"쉿! 그렇게 소리를 크게 지르면 내가 대답할 수가 없지 않소!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 26.2
  SAY #1213 /* ~"일지? 아니, 그런 건 본 적이 없어요."~ */
  IF ~~ THEN REPLY #4310 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #4311 /* ~"실례해야겠소. 안녕히 계시오."~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1214 /* ~이 창백한 얼굴의 여자는 긴 흑색 법복을 착용하고 있다. 그녀로부터는 약간의 곰팡이 냄새가 난다. 그녀는 무표정하며, 자신의 일에 몰두하고 있는 듯하다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #4312 /* ~"안녕하시오."~ */ EXTERN ~DMORTE~ 81
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #4313 /* ~"안녕하시오."~ */ EXTERN ~DMORTE~ 83
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #4314 /* ~"안녕하시오."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4315 /* ~"안녕하시오."~ */ GOTO 4
  IF ~~ THEN REPLY #4316 /* ~그녀를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.0 5.1 7.1 8.1 47.1
  SAY #1215 /* ~더스트맨이 입도 뻥끗하기 전에 당신은 양손으로 그녀의 관자놀이를 꽉 조인다, 그리고 그녀의 목을 왼쪽으로 세게 비튼다.~ */
  IF ~~ THEN REPLY #4317 /* ~"당신 동료들에게 알리도록 내버려둘 수는 없지..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 45.0
  SAY #1216 /* ~*우지직*하는 소리가 나고 더스트는 맨은 당신 팔 안에서 맥없이 늘어진다. ~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4318 /* ~"나보다는 당신이 죽는 게 낫지, 더스티."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
AddexperienceParty(15)
~ GOTO 43
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4319 /* ~"나보다는 당신이 죽는 게 낫지, 더스티."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #1217 /* ~놀랍게도 이러한 행동은 당신에게 있어 매우 자연스러운 일인 것 같다... 마치 전에도 여러 번 비슷한 일을 해본 것처럼. 그런 생각이 들자 기억이 자극이 받으나, 표면으로 떠오를 정도로 강하지는 않다. ~ */
  IF ~~ THEN REPLY #4320 /* ~시체를 놔두고 가던 길을 간다.~ */ DO ~Kill(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0 7.0 8.0 19.4 47.0
  SAY #1218 /* ~당신이 충분히 빠르지 못한 탓에 더스트맨은 당신의 돌격을 피한다. 한 걸음 물러선 후, 그녀는 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.~ */
  IF ~~ THEN REPLY #4321 /* ~"그럼 좋소..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.5
  SAY #1219 /* ~당신이 그녀에게 '속삭이려고' 몸을 구부리자 더스트맨 역시 몸을 구부린다. 그녀가 팔이 닿을 거리 내로 들어오자 당신은 양손으로 그녀의 관자놀이를 꽉 조인다, 그리고 그녀의 목을 왼쪽으로 세게 비튼다.~ */
  IF ~~ THEN REPLY #4322 /* ~"당신 동료들에게 알리도록 내버려둘 수는 없지..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 24.3 25.3 29.3 35.3 37.3 49.3 50.1
  SAY #1220 /* ~더스트맨은 의심을 하는 듯하다. 그녀는 뭐라고 말하려는 것 같다, 하지만 이내 고개를 젓고 하던 일로 돌아간다.~ */
  IF ~~ THEN REPLY #4323 /* ~다른 곳으로 간다.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
  SAY #1221 /* ~더스트맨은 당신을 유심히 살펴본다. "당신은 우리들 중 하나가 아니군요. 당신은 여기서 무슨 짓을 하고 있는 거죠? 당신은 아나키스트의 일원인가요? 아니면 다른 당파의 스파이? 경비병을 불러야겠군요..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4324 /* ~그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4325 /* ~그녀가 미처 소리를 지르기 전에 그녀의 목을 부러트린다..~ */ GOTO 41
  IF ~~ THEN REPLY #4326 /* ~재빨리 떠난다. ~ */ GOTO 2
  IF ~~ THEN REPLY #4327 /* ~"아니오... 그건... 어... 내 말은 내가 스파이가 아니라는 거요... 나는 철판들 중 하나에서 깨어나... 그리고..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 48 // from: 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
  SAY #1222 /* ~더스트맨은 고개를 끄덕인 후 하던 일로 돌아간다.~ */
  IF ~~ THEN REPLY #4328 /* ~다른 곳으로 간다.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0 24.1 25.0 25.1
  SAY #1223 /* ~더스트맨은 눈살을 찌푸린다: "그런 이름은 모르겠어요."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4329 /* ~"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4331 /* ~"나는... 이 곳에 온지 얼마 안 되오. 난... 이 곳의 규칙을 배우는 중이오."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4332 /* ~"그래, 좋소...뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4333 /* ~"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."~ */ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 29.0 35.0 37.0 49.0
  SAY #1224 /* ~더스트맨은 여전히 눈살을 찌푸리고있으나, 그녀는 가볍게 고개를 끄덕인다. "좋아요. 어떤 도움을 원하세요, 참입자?"~ */
  IF ~~ THEN REPLY #4334 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #4335 /* ~"오늘은 아무런 용건도 없소. 안녕히 계시오."~ */ GOTO 46
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #66683 /* ~더스트맨은 차가운 눈으로 당신을 바라본다. "길을 잃었나요?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66684 /* ~"아니오, 난 당파의 일원이오. 나는 시체안치소를 그냥 둘러보고 있었소."~ */ GOTO 52
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66685 /* ~"그렇소."~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66686 /* ~"아니오."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66687 /* ~"아니오, 나는 길을 잃지 않았소. 물어볼 것이 좀 있소..."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66688 /* ~"안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #66689 /* ~더스트맨은 잠시 당신을 바라본 후 고개를 끄덕인다. "좋아요. 만약 도움이 필요하면 내게 말하세요."~ */
  IF ~~ THEN REPLY #66690 /* ~"그렇게 하리다. 안녕히 계시오."~ */ EXIT
END
