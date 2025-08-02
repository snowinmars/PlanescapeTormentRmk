// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLACKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLACKR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2823 /* ~Этот человек двигается с пугающей скоростью, и кажется, будто он здесь лишь наполовину. В его расплывчатом образе выделяются горящие глаза, их безумие пронзает твое сердце. «Ты». Его голос обдает ледяным порывом. «Объяви свои убеждения. Ты сторонник добра или зла?»~ */
  IF ~~ THEN REPLY #3749 /* ~«Я думаю, что лучше помогать тем, кому повезло меньше, чем мне. Я выбираю добро».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3750 /* ~«Идея добра — для слабаков. Я выбираю зло».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3751 /* ~«Ни того, ни другого. Крайности опасны».~ */ GOTO 6
  IF ~~ THEN REPLY #3752 /* ~«Кто ты?»~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #3363 /* ~«Есть тут человек по имени Гнилой Уильям. Темный и коварный тип. Он лидер Заточек с Темного переулка. Разыщи его в переулке и убей — и ты сослужишь хорошую службу добру. Не справишься — и зло восторжествует. Откажешься — и я тебя убью».~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3753 /* ~«Хорошо. Я сделаю это».~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("RWill")
~ THEN REPLY #3754 /* ~«Я не стану делать этого. Я не убиваю людей».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3755 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3756 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37838 /* ~«Гнилой Уильям уже мертв. Я прикончил и его, и Кристалл».~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #37839 /* ~«Гнилой Уильям уже мертв».~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #3728 /* ~«Я — Черный Бутон. Я охочусь и жажду. Я — кара. Итак, объяви свои убеждения».~ */
  IF ~~ THEN REPLY #3757 /* ~«Я думаю, что лучше помогать тем, кому повезло меньше, чем мне. Я выбираю добро».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3758 /* ~«Идея добра — для слабаков. Я выбираю зло».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3759 /* ~«Ни того, ни другого. Крайности опасны».~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 5.0 7.0 7.1 7.2 7.3 13.1 15.1
  SAY #3730 /* ~«Я буду ждать тебя. Ступай. Сейчас же».~ */
  IF ~~ THEN REPLY #3760 /* ~«Сперва я хочу задать несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #3762 /* ~«Я ухожу».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #3731 /* ~«Никаких вопросов. Только действия. Иди».~ */
  IF ~~ THEN REPLY #3763 /* ~«Отлично».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #3732 /* ~«Есть тут такая себе Кристалл. Она лидер Бритвенных Ангелов. Она пытается 'придать блеску' этому переулку и обратить его в яркий пример доброты. Убей ее — и будешь вознагражден. Не справишься — и за тобой будут охотиться до конца твоей жизни».~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3764 /* ~«Я сделаю это».~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
~ THEN REPLY #3765 /* ~«Я так не думаю».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3766 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3767 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37841 /* ~«Они с Гнилым Уильямом уже мертвы».~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37843 /* ~«Она уже мертва».~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 0.2 2.2
  SAY #3733 /* ~Его глаза ярко вспыхивают, затем смягчаются. Звук его голоса похож на выдох. «Нейтральный. Союзник. Ты понимаешь баланс. Окажи мне услугу. Я устраняю крайности».~ */
  IF ~~ THEN REPLY #3768 /* ~«Что я могу сделать?»~ */ GOTO 7
  IF ~~ THEN REPLY #3769 /* ~«Я не думаю, что хочу помогать тебе».~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #3734 /* ~«Я охочусь за Бритвенными Ангелами и Заточками с Темного переулка. Выбери одного из их лидеров и устрани его».~ */
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3770 /* ~«Я возьмусь за Бритвенных Ангелов».~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3771 /* ~«Я возьмусь за Заточек с Темного переулка».~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
Dead("Rwill")
~ THEN REPLY #3772 /* ~«Гнилой Уильям, лидер Заточек с Темного переулка, уже мертв. Я убью Кристалл».~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3773 /* ~«Кристалл, лидер Бритвенных Ангелов, уже мертва. Я убью Гнилого Уильяма».~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3774 /* ~«Они оба уже мертвы».~ */ GOTO 9
  IF ~~ THEN REPLY #3775 /* ~«Не думаю, что я заинтересован помогать тебе».~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.5 11.0 13.0 14.0 15.0
  SAY #3735 /* ~Его горящие глаза сужаются, и он шепчет: «Выходит, ты враг». Сделав неясное движение, он бросается в атаку!~ */
  IF ~~ THEN REPLY #3776 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3777 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4 5.4 7.4 11.2 14.2
  SAY #3736 /* ~«А теперь укрепим наши философии. Устроим поединок на оружии. Выигравший станет истинным победителем в нашей борьбе за правду».~ */
  IF ~~ THEN REPLY #3778 /* ~«Я сделаю это, но я не могу умереть. В конечном счете ты проиграешь».~ */ DO ~AddexperienceParty(1500)
~ GOTO 10
  IF ~~ THEN REPLY #3779 /* ~«Ты что, спятил?»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3780 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #3737 /* ~Его глаза расширяются. «Ты бессмертен. Твоя правда вечна. Отдаю тебе должное. Это честь для меня. Прощай».~ */
  IF ~~ THEN REPLY #3781 /* ~«Прощай».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("BR_RW","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #3738 /* ~«Ты прикончил Гнилого Уильяма?»~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3782 /* ~«Еще нет. И не собираюсь».~ */ GOTO 8
  IF ~  !Dead("Rwill")
~ THEN REPLY #3783 /* ~«Нет. Я работаю над этим».~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3784 /* ~«Да».~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #3785 /* ~«Да».~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1 14.1
  SAY #3745 /* ~«Работай *быстрее*. Вперед. Я жду тебя». Он скрещивает руки.~ */
  IF ~~ THEN REPLY #3786 /* ~«Вот и отлично».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 11.3
  SAY #3746 /* ~«Твое следующее задание — убить Кристалл, лидера Бритвенных Ангелов. Баланс требует ее смерти».~ */
  IF ~~ THEN REPLY #3787 /* ~«Я не буду этого делать».~ */ GOTO 8
  IF ~~ THEN REPLY #3788 /* ~«Я еще вернусь».~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
END

IF ~  Global("BR_Krys","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #3747 /* ~«Ты прикончил Кристалл?»~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3790 /* ~«Еще нет. И не собираюсь».~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3791 /* ~«Нет. Я работаю над этим».~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3792 /* ~«Да».~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3793 /* ~«Да».~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 5.5 14.3
  SAY #3748 /* ~«Твое следующее задание — прикончить Гнилого Уильяма, лидера Заточек с Темного переулка. Баланс требует этого от тебя».~ */
  IF ~~ THEN REPLY #3794 /* ~«Я не хочу этого делать».~ */ GOTO 8
  IF ~~ THEN REPLY #3795 /* ~«Я еще вернусь».~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
END
