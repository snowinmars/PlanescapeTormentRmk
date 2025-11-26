// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGROSUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGROSUK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36054 /* ~뱀과 같은 동체, 네 개의 발톱이 달린 발, 가죽과 같은 질감의 날개, 그리고 용과 흡사한 머리를 한 파충류형 생물이 보인다. 그의 몸을 뒤덮고 있는 비늘은 역겨운 녹색이다. 그는 뒷다리로 직립하고 있으며, 꼬리로 균형을 유지하고 있다. 당신이 다가가자 그는 눈을 가늘게 뜨고 쉿 소리를 내기 시작한다. ~ */
  IF ~~ THEN REPLY #36055 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #36056 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36057 /* ~그의 주변의 공기가 뜨거워지기 시작한다, 그리고 그의 비늘이 백색 광채를 띤다. 그는 배고프다는 표정으로 당신을 보고 있으며, 언제라도 공격할 준비가 되어 있는 듯하다. 갑자기 그는 쉿 소리를 내고 다소 느슨한 자세를 취한다. "쉿쉿! 꺼져. 그로숙은 말 안 해, 기다리고 있어... 쉿쉿..." 그는 꼬리를 앞뒤로 흔들며 당신을 노려본다.~ */
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36058 /* ~"세바스챤이 날 보냈소."~ */ GOTO 2
  IF ~~ THEN REPLY #36059 /* ~"당신은 어떤 종류의 생명체요?"~ */ GOTO 10
  IF ~~ THEN REPLY #36060 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.1 12.1
  SAY #36061 /* ~그는 태도를 상당히 누그러뜨린다, 그러자 주변 공기의 온도 역시 내려간다. 그는 갈고리 손톱이 달린 손을 당신에게 내민다. "쉿쉿. 그로숙에게 정보를 내놔." 그는 기대에 찬 표정으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #36062 /* ~"무슨 정보 말이오?"~ */ GOTO 3
  IF ~~ THEN REPLY #36063 /* ~"아니, 세바스챤은 당신을 죽이라고 날 보냈소."~ */ GOTO 9
  IF ~~ THEN REPLY #36064 /* ~"지금은 가지고 있지 않지만 가서 가져오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36065 /* ~파충류의 표정을 읽는 것은 쉬운 일이 아니다, 하지만 당신은 그로숙이 당신에게 상당히 화가 나 있다는 사실을 확신할 수 있다. 그는 꼬리를 격렬하게 흔든다, 그리고 공기는 다시 뜨거워진다. "질문하지마. 그로숙에게 정보를 주든지 아니면 죽어. 그로숙은 시체에서 정보를 얻을 거야." ~ */
  IF ~~ THEN REPLY #36066 /* ~"나는 당신을 위한 정보가 어떤 것인지를 알아야 하오. 알다시피 나는 여러 사람들을 위해 심부름을 하고 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #36067 /* ~"실은 세바스챤이 당신을 죽이라고 날 보냈소."~ */ GOTO 9
  IF ~~ THEN REPLY #36068 /* ~"지금은 가지고 있지 않지만 가서 가져오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36069 /* ~그는 생각을 하면서 잠시 당신을 째려본다. 마침내 그는 부근에 있는 탑을 가리킨다. "공-공성탑. 쉿쉿. 안으로 들어가는 방법. 세-세바스챤이 알아낼 수 있다고 했어..." 그로숙은 당신에게 한 걸음 다가와 손을 내민다. "당장 내놔!"~ */
  IF ~~ THEN REPLY #36070 /* ~"아, 그 정보. 미안하오, 세바스챤은 그 정보를 직접 전하기를 원하고 있소. 그는 곧 이 곳에 올 거요."~ */ JOURNAL #66527 /* ~아비샤이 그로숙은 개방 시장 부근의 공성탑에 들어갈 방법을 찾고 있다. 난 그 탑이 왜 그렇게 중요한지 모르겠다. ~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36072 /* ~그의 주변의 공기가 뜨거워지기 시작한다, 그리고 그의 비늘이 백색 광채를 띤다. 그는 배고프다는 표정으로 당신을 보고 있으며, 언제라도 공격할 준비가 되어 있는 듯하다. 그가 입을 열자 줄줄이 늘어선 날카로운 이빨들이 보인다. "아니... 그로숙은 네가 거짓말을 하고 있다고 생각해! 정보를 주면 그로숙이 널 천천히 아니라 빨리 죽여 주지. 안 주면 오래오래 죽일 거야. 네 내장을 꺼내는 걸 네가 직접 보도록 만들 거야!" ~ */
  IF ~~ THEN REPLY #36073 /* ~"기다리시오, 나는 당신이 원하는 정보를 가지고 있지 않소, 하지만 내 목숨 값을 할만한 사실을 알고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #36074 /* ~"좋소, 어차피 세바스챤은 당신을 죽이라고 날 보냈으니까."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36075 /* ~그로숙은 머리를 한쪽으로 기울이고 당신을 노려본다. 그는 잠시 생각에 잠긴 것 같다. "그로숙은 듣겠어. 정보가 좋으면 넌 살 거야." 그는 이빨을 드러내며 웃는다. "좋지 않으면 넌 죽어. 그로숙은 약속했어." ~ */
  IF ~~ THEN REPLY #36076 /* ~"세바스챤은 당신과의 계약을 이행할 수가 없소. 그는 당신을 죽이려고 날 이 곳으로 보냈소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~나는 아비샤이 그로숙에게 세바스챤이 그를 죽이러 날 보냈다고 말했다. 별로 자랑할만한 일은 아니었으나, 내 목숨을 건질 수 있었다...~ */ GOTO 7
  IF ~~ THEN REPLY #36077 /* ~"당신이 약속을 지킬지 내가 어떻게 알 수가 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #36078 /* ~"관두시오, 어차피 세바스챤은 당신을 죽이라고 날 보냈으니까."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #36079 /* ~그로숙은 당신을 얼마 동안 쳐다보더니 낭패한 듯 쉿 소리를 연달아 낸다. 그는 꼬리를 앞뒤로 흔들며 손톱을 구부렸다 폈다 하기 시작한다. 당신은 가시가 달린 독침이 가끔씩 그의 꼬리 끝에 나타나는 것을 눈치챈다. "그래. 좋은 정보야. 그로숙은 약속대로 널 살려 주겠어. 그로숙은 감사해. 그로숙은 이제 가야 해, 세바스챤과 얘기를 해야 해." ~ */
  IF ~~ THEN REPLY #36080 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("SNUFF_GROSUK","GLOBAL",5)
StartCutSceneMode()
StartCutSceneEx("0500cut5",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #36081 /* ~그는 당신을 노려본다. "이 계약, 너와 그로숙이 맺었어. 그로숙은 계약은 지켜. 자, 말을 해."~ */
  IF ~~ THEN REPLY #36082 /* ~"세바스쵼은 당신과의 계약을 이행할 수가 없소. 그는 당신을 죽이려고 날 이 곳으로 보냈소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Grosuk_1","GLOBALGood",-1)
~ JOURNAL #66528 /* ~나는 아비샤이 그로숙에게 세바스챤이 그를 죽이러 날 보냈다고 말했다. 별로 자랑할만한 일은 아니었으나, 내 목숨을 건질 수 있었다...~ */ GOTO 7
  IF ~~ THEN REPLY #36083 /* ~"관두시오, 어차피 세바스챤은 당신을 죽이라고 날 보냈으니까."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1
  SAY #36084 /* ~그는 잠시도 주저하지 않고 당신에게 달려든다. ~ */
  IF ~~ THEN REPLY #36085 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.1
  SAY #36086 /* ~그가 폭풍처럼 쉿 소리를 내자 그의 전신의 근육이 긴장하는 듯하다. 그는 당신을 붙잡으려고 하다가 멈춘다. 그가 당신에게 얘기할 때 그의 눈은 증오로 가득 차 있다. "그로숙은 말 안 해. 쉿쉿. 넌 운이 좋은 인간이야. 운이 좋을 때 꺼져. 머-머무르면 그로숙이 갈가리 찢을 거야."~ */
  IF ~~ THEN REPLY #36087 /* ~조롱한다: "그로스스스크 말 못해? 그로스스스크는 마알 아안 하는 사아아아람치곤 정말 마알을 마안이 하아는 군 ."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grosuk_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36088 /* ~"세바스챤이 날 보냈소."~ */ GOTO 2
  IF ~~ THEN REPLY #36089 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36090 /* ~그는 머리를 한쪽으로 기울이며 놀라서 휘둥그레진 눈으로 당신을 쳐다본다. 잠시 후 그는 증오로 불타며 눈을 실처럼 가늘게 뜬다, 그리고 그의 근육이 강철로 만든 줄처럼 팽팽해짐에 따라 그는 몸을 떤다. 뭔가 갈라지는 소리가 들려 아래를 내려다보니 그의 발톱이 발 밑의 돌 속까지 파고 들어간 것이 보인다. 그의 주변의 공기는 어찌나 뜨거워졌는지 빛을 내는 것처럼 보일 정도이다. "가... 당장. 쉿쉿!" ~ */
  IF ~~ THEN REPLY #36091 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #36092 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #36093 /* ~아비샤이 그로숙이 보인다. 그는 당신을 보자 화가 난 것 같다. "쉿쉿... 너, 또 왔군. 꺼져. 그로숙이 죽일 거야."~ */
  IF ~~ THEN REPLY #36094 /* ~"당신은 정말 불친절하군."~ */ GOTO 13
  IF ~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN REPLY #36095 /* ~"세바스챤이 날 보냈소."~ */ GOTO 2
  IF ~~ THEN REPLY #36096 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36097 /* ~그로숙은 손톱을 구부리며 당신을 노려본다. 그는 당신을 정면으로 쳐다보기 위해 몸을 구부리면서 그는 눈을 실처럼 가늘게 뜬다. "아니, 그로숙 친구 아니야. 이제 꺼져!"~ */
  IF ~~ THEN REPLY #36098 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
