// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~ATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34604 /* ~«Маленькая птичка заблудилась, а? Если птичка хочет жить, птичке нужно заплатить».~ */
  IF ~~ THEN REPLY #34605 /* ~«Сколько?»~ */ GOTO 1
  IF ~~ THEN REPLY #34606 /* ~«Тебе нужны мои деньги? Попробуй отбери!»~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34607 /* ~«Сначала попробуй меня поймать».~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34608 /* ~«Десять звенелок, мой дорогой друг!»~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34609 /* ~«На, бери».~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34610 /* ~«У меня нет столько».~ */ GOTO 3
  IF ~~ THEN REPLY #34611 /* ~«Даже и не думай. Тебе придется снять их с моего трупа».~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34612 /* ~«Сначала попробуй меня поймать!»~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.0
  SAY #34613 /* ~Головорез, издеваясь, кланяется. «Надеюсь, что наше сотрудничество в дальнейшем будет таким же плодотворным».~ */
  IF ~~ THEN REPLY #34614 /* ~«Да-да, конечно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #34615 /* ~Головорез изображает шок. «В таком случае, ты заплатишь кровью. Прощай, приятель».~ */
  IF ~~ THEN REPLY #34616 /* ~«Эй, погоди...»~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #34617 /* ~«Сначала попробуй».~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #34618 /* ~«Маленькая птичка вернулась домой, а? Пришла покормить остальных в гнезде?»~ */
  IF ~~ THEN REPLY #34619 /* ~«О чем это ты?»~ */ GOTO 5
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34620 /* ~«Вот твоя плата».~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34621 /* ~«Я принес тебе смерть».~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34622 /* ~Его лицо вытягивается в притворной муке. «Ты что, уже забыл? Ах, дорогуша. Десять звенелок — такса, чтобы пройти по моей улице. Давай, отсыпай».~ */
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34623 /* ~«На, держи».~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34624 /* ~«На этот раз я буду драться».~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34625 /* ~«А мы не можем как-нибудь договориться?»~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #34626 /* ~«Извини, пень. Все должны играть по правилам, и тебе придется заплатить кровью. Передай своим силам мой пламенный привет».~ */
  IF ~~ THEN REPLY #34627 /* ~Сражаться.~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34628 /* ~Сбежать.~ */ DO ~Enemy()
~ EXIT
END
