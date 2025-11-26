// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHEKKA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHEKKA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48041 /* ~술에 취한 경비병이 보인다. 그는 커스트에서 구할 수 있는 가장 좋은 갑옷을 걸치고 있으나, 그가 관심이 있는 것은 자신의 술을 지키는 일뿐인 듯하다. 그는 별 관심없이 흐리멍덩한 눈으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #48042 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #48043 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48044 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48045 /* ~첵'카 플루트는 술에 취한 사람으로서는 최대한 정신을 집중해 당신을 살펴본다. 그는 조소를 한 후 다시 술잔 쪽으로 시선을 돌린다.~ */
  IF ~~ THEN REPLY #48046 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #48047 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48048 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0
  SAY #48049 /* ~"첵'카 플루트. 커스트의 엘리트들 중 하나요." 그는 트림을 한다.~ */
  IF ~~ THEN REPLY #48050 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #48051 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #48084 /* ~그는 썩은 바스를 가리킨다. "그를 조심하시오, 사람들은 그가 이 곳 어딘가에 터널을 갖고 있다고 하오, 그리고 나는 그가 그것을 이용하는 걸 보고 싶소. 그래서 기다리면서 지켜보는 거요. 그만 가보슈. 난 지켜봐야 하니까."~ */
  IF ~~ THEN REPLY #48085 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #48086 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #48087 /* ~주정뱅이 경비병은 당신 쪽으로 몸을 비틀거린다. 그는 당신부터 죽일 생각인 듯하다. ~ */
  IF ~~ THEN REPLY #48088 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
