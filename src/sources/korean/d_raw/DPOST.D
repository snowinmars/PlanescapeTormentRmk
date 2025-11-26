// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6229 /* ~이 더럽게 생긴 시체는 그 상태가 몹시 나쁘다. 어깨는 빠져서 늘어졌으며, 한쪽 다리는 부러져 몸이 옆으로 기울었다. 그것의 전신은 때와 얼룩으로 뒤덮여 있다... 냄새와 질감으로 미루어 볼 때 그 종류는 썩은 과일에서 진흙과 새똥에 이르기까지 다양하다. 설상가상으로 그것의 몸에는 사방에 낙서가 새겨져 있으며, 가슴, 등, 그리고 머리에는 각종 전단이 못으로 박혀 있다.~ */
  IF ~~ THEN REPLY #6230 /* ~"난 나야말로 정말 엉망이라고 생각했는게. 못이 그렇게 많이 박혔는데 아프지도 않나?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6231 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6233 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6234 /* ~낙서와 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6235 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6236 /* ~"당신과 얘기를 나눌 수가 있어서 즐거웠소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #6237 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6232 /* ~시체는 아무런 응답을 하지 않는다.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6238 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6239 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6240 /* ~낙서와 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6241 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6242 /* ~"당신과 얘기를 나눌 수가 있어서 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #6243 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN BEGIN 2 // from: 0.4 1.3 3.1 4.1 5.7 6.4 7.6 8.3 9.5 10.5 11.3 12.3 13.2 18.4 19.3
  SAY #6244 /* ~시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6245 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6246 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6247 /* ~낙서와 게시물을 살펴본다.~ */ GOTO 5
  IF ~~ THEN REPLY #6248 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0 5.0 6.1 7.3 8.0 9.2 10.0 11.0 12.0 18.1 19.0
  SAY #6249 /* ~여러 곳을 꿰맸는데도 불구하고 좀비의 썩은 피부는 여기저기 벗겨져서 뼈와 근육을 드러내고 있다. 당신이 생각하기에 이 좀비는 사격 연습용 표적으로 사용된 듯 하다. 과일과 진흙은 제쳐 두고라도, 좀비의 피부에 난 상처에는 아직 돌과 유리조각이 박혀 있다. 그것의 두부 측면에는 무시무시하게 생긴 조약돌이 아직도 박혀 있다.~ */
  IF ~~ THEN REPLY #6250 /* ~낙서와 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6251 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6252 /* ~자갈을 빼낸다.~ */ DO ~AddexperienceParty(250)
GiveItem("Cobble",Protagonist)
~ GOTO 13
  IF ~~ THEN REPLY #6253 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.1 2.1 5.1 6.2 7.4 8.1 9.3 10.1 11.1 12.1 13.0 18.2 19.1
  SAY #6254 /* ~여러 곳을 꿰맸는데도 불구하고 좀비의 썩은 피부는 여기저기 벗겨져서 뼈와 근육을 드러내고 있다. 당신이 생각하기에 이 좀비는 사격 연습용 표적으로 사용된 듯 하다. 과일과 진흙은 제쳐 두고라도, 좀비의 피부에 난 상처에는 아직 돌과 유리조각이 박혀 있다. ~ */
  IF ~~ THEN REPLY #6255 /* ~낙서와 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6256 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6257 /* ~시체를 그냥 내버려주고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.2 2.2 3.0 4.0 6.3 7.5 8.2 9.4 10.2 10.3 10.4 11.2 12.2 13.1 18.3 19.2
  SAY #6258 /* ~전단들 중 상당수는 비에 훼손되었으나, 일부는 아직도 읽을 수가 있다. 시체의 등에 박힌 전단은 '해수 및 질병 관리국'라는 곳에서 발행한 것이며, 이마의 박힌 것은 어떤 식당의 메뉴 같다. 또한 가슴에 박힌 전단들 중 하나는 일종의 공지사항인 듯하며, 나머지 하나는 구인 광고인 것 같다.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6259 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6260 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6261 /* ~게시물은 무시하고 낙서를 살펴본다.~ */ GOTO 9
  IF ~~ THEN REPLY #6262 /* ~'해수 및 질병 관리국'의 게시물을 본다.~ */ GOTO 6
  IF ~~ THEN REPLY #6263 /* ~식당 메뉴를 살펴본다.~ */ GOTO 7
  IF ~~ THEN REPLY #6264 /* ~공지 사항을 살펴본다. ~ */ GOTO 8
  IF ~~ THEN REPLY #46493 /* ~구인 광고를 살펴본다.~ */ GOTO 18
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46496 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #46497 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #6267 /* ~"영예롭고 관대한 시길 정부로부터 일자리를 얻고자 하는 벌통 주민들에게: 즉시 해수 및 질병 관리국에 연락하여 뇌 쥐를 구제하는 일에 참여하기 바람. 현상금을 지불함! 가져오는 쥐꼬리 하나 당 동전 한 닢을 지불함. (개, 고양이, 마족 등 쥐 이외의 꼬리는 받지 않음) 관리국은 시체안치소 남서쪽에 자리잡고 있음. 가서 존경받는 공인 감사관인 피니어스 T. 로트 39세를 찾기 바람."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6268 /* ~"'해수 및 질병 관리국?'"~ */ GOTO 11
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6269 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6270 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6271 /* ~다른 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6272 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6273 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.4
  SAY #6274 /* ~누군가가 "더스트맨이 모이는 바"의 메뉴를 게시했으나, 메뉴 위에 누군가가 "불타는 시체 바"라고 목탄으로 갈겨 쓴 탓에 읽을 수가 없다. ~ */
  IF ~  !NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6275 /* ~"'불타는 시체 바?'"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6276 /* ~"'불타는 시체 바?'"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6277 /* ~"'불타는 시체 바?'"~ */ GOTO 10
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6278 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6279 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6280 /* ~다른 게시물을 살펴본다...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6281 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6282 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5
  SAY #6283 /* ~"공지 사항: 공식 등록된 더스트맨의 하인을 낙서, 악의적인 공격, 또는 전단의 게시로 손상시키는 것은 명백한 파괴 행위이며, 범법자는 중벌로 다스릴 것임을 시길 사법부와 입법부의 이름으로 공포한다.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6284 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6285 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6286 /* ~다른 게시물을 살펴본다...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6287 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6288 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #6289 /* ~낙서는 더스트맨에 대한 욕설로부터 현지 갱단에 대한 찬양하는 슬로건까지 다양하다. 그 중 하나가 당신 눈을 끈다... 누군가가 시체의 왼팔에 "파로드"라고 새긴 후 그 위에 "x"자를 그었다. ~ */
  IF ~  Global("Post_Point","GLOBAL",1)
~ THEN REPLY #6290 /* ~"파로드?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Post_Point","GLOBAL",2)
~ JOURNAL #66757 /* ~파로드의 이름을 크게 외침으로서 나는 "게시판"에게 그가 어디에 있는지 물었다. 그는 시체안치소에서 서쪽으로 몇 불록 지난 곳을 가리켰으며, 이상하게도 아래쪽을 가리켰다. 파로드가 어디 지하에 묻히기라도 했나?~ */ GOTO 12
  IF ~  Global("Post_Point","GLOBAL",2)
~ THEN REPLY #6291 /* ~"파로드?"~ */ GOTO 12
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6292 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6293 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6294 /* ~다른 게시물을 살펴본다...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6295 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6296 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 7.2
  SAY #6297 /* ~좀비는 왼팔을 즉시 위로 들어 올려 먼 남쪽을 가리킨다. 잠시 후 팔은 쿵 소리를 내면서 다시 원래 위치로 내려간다.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6298 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6299 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6300 /* ~"흠... 다른 게시물에도 효과가 있을지 궁금하군..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #6301 /* ~"흠... 다른 게시물에도 효과가 있을지 궁금하군..."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6302 /* ~다른 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6303 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6304 /* ~"어... 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #6305 /* ~좀비는 왼팔을 즉시 위로 들어 올려 먼 남서쪽을 가리킨다. 잠시 후 팔은 쿵 소리를 내면서 다시 원래 위치로 내려간다.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6306 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6307 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6308 /* ~다른 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6309 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6310 /* ~"어... 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 9.1
  SAY #6311 /* ~좀비는 왼팔을 즉시 위로 들어 올려 먼 서쪽을 가리킨 후... 아래를 가리킨다. 잠시 후 팔은 쿵 소리를 내면서 다시 원래 위치로 돌아간다.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6312 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6313 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6314 /* ~다른 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6315 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6316 /* ~"어... 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2
  SAY #6317 /* ~당신은 조약돌을 잡고 그것을 시체의 머리로부터 뽑아낸다. 그것으로부터는 뇌장과 썩은 살이 뚝뚝 떨어지고 있다... 시체의 머릿속에 무엇이 들었었던 간에 지금은 썩어 문드러진 것 같다.~ */
  IF ~~ THEN REPLY #6318 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #6319 /* ~다른 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6320 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #6321 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #6322 /* ~좀비는 왼팔을 즉시 위로 들어 올려 먼 남동쪽을 가리킨다. 잠시 후 팔은 쿵 소리를 내면서 다시 원래 위치로 내려간다.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 109
END

IF ~~ THEN BEGIN 15 // from:
  SAY #9749 /* ~좀비는 가만히 서 있다. 자세히 보니 그의 어깨에 그녀의 이름을 새길 만한 빈 공간이 있다. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #9750 /* ~좀비는 즉시 팔을 움직여 (지지가 있는 곳을 가리킨다).~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #9751 /* ~좀비는 움직이지 않는다. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.6
  SAY #46498 /* ~"사람을 구함: 더스트맨에게 있어 매우 중대한 사안을 조사해 줄 능력 있는 사람을 구함. 임무를 성공리에 마칠 경우 이에 상응하는 보수를 지불할 용의 있음. 관심이 있는 사람은 더스트맨이 모이는 바에 있는 참입자 노로치에게 연락하기 바람."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #46499 /* ~"더스트맨이 모이는 바?"~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 19
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46501 /* ~시체를 조사한다.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46502 /* ~시체를 조사한다.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #46503 /* ~다른 게시물을 살펴본다...~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46504 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #46505 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46500 /* ~좀비는 즉시 왼쪽 팔을 들어 올려 당신 눈 앞에 있는 건물을 가리킨다. 잠시 후 팔을 *쿵 소리를 내며 원 위치로 돌아간다.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46506 /* ~시체를 조사한다.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46507 /* ~시체를 조사한다.~ */ GOTO 4
  IF ~~ THEN REPLY #46508 /* ~다른 게시물을 살펴본다.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46509 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #46510 /* ~"어... 고맙소."~ */ EXIT
END
