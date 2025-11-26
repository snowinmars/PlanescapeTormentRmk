// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~GATHUG~

IF ~  GlobalGT("Krystall","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34576 /* ~«Мне сказали, что у тебя бесплатный пропуск через территорию Бритвенных Ангелов, пень. Не злоупотребляй этим».~ */
  IF ~~ THEN REPLY #34577 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34578 /* ~«Стой здесь. Кто-нибудь подойдет поговорить с тобой».~ */
  IF ~~ THEN REPLY #34579 /* ~«Даже и не думай. Я буду уже очень далеко, пока он здесь появится».~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34580 /* ~«Почему бы не поприветствовать его твоей кровью? Только сначала я ее пролью».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34581 /* ~«Отлично. Я буду ждать здесь».~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34582 /* ~«Ты заплатил, ты можешь идти куда хочешь. Наслаждайся этим, пока можешь».~ */
  IF ~~ THEN REPLY #34583 /* ~«Спасибо, я так и сделаю. Прощай».~ */ EXIT
END
