// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOCITF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOCITF~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #19696 /* ~Эта упыриха воняет кровью и падалью. По ее длинным тонким волосам, которые она то и дело убирает со своих желтых глаз жуткими когтями, ползают жуки и черви. Ее кожа болезненно-зеленого цвета и покрыта гниющими влажными язвами.~ */
  IF ~~ THEN REPLY #19705 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #19706 /* ~Оставить упыриху в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 6.0
  SAY #19697 /* ~Упыриха прищуривается и рычит на тебя. Ее язык, не менее двух ладоней в длину, высовывается и облизывает покрытые струпьями губы.~ */
  IF ~~ THEN REPLY #19707 /* ~«У меня есть несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #19708 /* ~«Мне уже нужно идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19698 /* ~Упыриха продолжает жадно глядеть на тебя. Она стискивает и разжимает когтистые кулаки, будто борясь с желанием броситься на тебя и сожрать.~ */
  IF ~~ THEN REPLY #19709 /* ~«Успокойся и ответь на мои вопросы».~ */ GOTO 3
  IF ~~ THEN REPLY #19710 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #19699 /* ~Упыриха визжит на тебя: «Молчать, мясо! Ни слова! Я не слушаю мясных тварей! Я слышу только твое сердце, кровь в мясных венах, сладкую, вкусную кровь... вкусное сочное сердце... — из ее рта течет слюна, капая на пыльные плиты. — МОЛЧАТЬ!»~ */
  IF ~~ THEN REPLY #19711 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #19700 /* ~Когда ты подходишь, упыриха начинает визжать на тебя: «Прочь! Убирайся прочь! Я не *разговариваю* с мясной тварью, я не *слушаю*, мясо! УХОДИ!»~ */
  IF ~~ THEN REPLY #19712 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",0)
~ THEN BEGIN 5 // from:
  SAY #19701 /* ~Эта упыриха воняет кровью и падалью. По ее длинным тонким волосам, которые она то и дело убирает со своих желтых глаз жуткими когтями, ползают жуки и черви. Ее кожа болезненно-зеленого цвета и покрыта гниющими влажными язвами.~ */
  IF ~~ THEN DO ~SetGlobal("Morte_DN_Warn","AR1500",1)
~ EXTERN ~DMORTE~ 204
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
Global("Morte_DN_Warn","AR1500",1)
~ THEN BEGIN 6 // from:
  SAY #50422 /* ~Эта упыриха воняет кровью и падалью. По ее длинным тонким волосам, которые она то и дело убирает со своих желтых глаз жуткими когтями, ползают жуки и черви. Ее кожа болезненно-зеленого цвета и покрыта гниющими влажными язвами.~ */
  IF ~~ THEN REPLY #50423 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #50425 /* ~Оставить упыриху в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END
