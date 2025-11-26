// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~GATHUG~

IF ~  GlobalGT("Krystall","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34576 /* ~"당신이 레이저 앤젤스 영토를 무료로 통과할 수 있는 권리를 가지고 있다는 얘기는 들었소. 그렇다고 남용은 하지 마시오."~ */
  IF ~~ THEN REPLY #34577 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34578 /* ~"거기 가만히 서 있으시오. 누가 당신과 얘기를 하려고 올 거요."~ */
  IF ~~ THEN REPLY #34579 /* ~"너무 기대하지는 마시오. 그가 나타날 쯤 되면 난 이미 사라지고 없을 테니."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34580 /* ~"그를 당신 피로 환영해 주는 건 어떻겠소? 내가 먼저 당신 피부터 흐르게 해줄 테니."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34581 /* ~"좋소. 여기서 기다리겠소."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34582 /* ~"돈을 냈으니 가도 좋소. 통행료가 유효할 동안 즐기는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #34583 /* ~"고맙소, 그러리다. 안녕히 계시오."~ */ EXIT
END
