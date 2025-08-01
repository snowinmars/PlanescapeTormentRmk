// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37758 /* ~Ты видишь человека с печальным лицом. При твоем приближении он бросает на тебя безнадежный взгляд.~ */
  IF ~~ THEN REPLY #37770 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #37771 /* ~Не обращать на него внимания.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37759 /* ~Он оглядывается по сторонам, потом смотрит на тебя. «Чего-то хочешь, пень?»~ */
  IF ~~ THEN REPLY #37772 /* ~«У меня есть кое-какие вопросы...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37773 /* ~«Неважно. Прощай».~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37760 /* ~Он качает головой. «Послушай, пень, я вовсе не в том положении, чтобы отвечать на твои дурацкие вопросы. Отвали!»~ */
  IF ~~ THEN REPLY #37774 /* ~«А что здесь происходит?»~ */ GOTO 3
  IF ~~ THEN REPLY #37775 /* ~«Отлично, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37761 /* ~Он пялится на тебя. «Это аукцион, бестолочь. Меня продают в рабство! А теперь пойди-ка высадись».~ */
  IF ~~ THEN REPLY #37776 /* ~«Почему тебя продают?»~ */ GOTO 4
  IF ~~ THEN REPLY #37777 /* ~«Что значит 'высадись'?»~ */ GOTO 9
  IF ~~ THEN REPLY #37778 /* ~«Отлично, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 9.0
  SAY #37762 /* ~Он смотрит на тебя раздраженно. «У меня такая чудесная личность, вот я и решил немного подзаработать, продав себя. А теперь как насчет того, чтобы закончить на этом вопросе, недоумок?!»~ */
  IF ~~ THEN REPLY #37779 /* ~«Я хочу знать настоящую причину, почему тебя продают».~ */ GOTO 5
  IF ~~ THEN REPLY #37780 /* ~«Ну и ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37763 /* ~Он начинает сердиться, но потом остывает. «Я порезал одного бедолагу, доволен? Я напился, мы подрались, и я засадил в него заточку, — он вздыхает. — Хвала силам, что он не откинулся, а то бы я попал в тюрьму».~ */
  IF ~~ THEN REPLY #37781 /* ~«Что такое заточка?»~ */ GOTO 6
  IF ~~ THEN REPLY #37782 /* ~«В тюрьму?»~ */ GOTO 7
  IF ~~ THEN REPLY #37783 /* ~«Ясно. Значит, тебя продают в рабство из-за драки?»~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37764 /* ~Он бросает на тебя мрачный взгляд. «Ты что, один из тех пустоголовых? Заточка — это ножик, болван, — он отворачивается. — Я больше не буду отвечать на твои вопросы. Уходи».~ */
  IF ~~ THEN REPLY #37784 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #37765 /* ~Он хмуро смотрит на тебя. «Да, в тюрьму. Если тебя посадят, то это надолго и, к тому же, неприятно. В рабстве не так уж плохо, да и срок здесь поменьше, — он отворачивается. — Я больше не буду отвечать на твои вопросы. Уходи».~ */
  IF ~~ THEN REPLY #37785 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #37766 /* ~Он смотрит на тебя угрюмо. «Да... Бедолага, которого я порезал, был моим другом, так что не стал предъявлять мне обвинение. Мне все равно пришлось явиться в суд, где меня и присудили к аукциону, — он отворачивается. — Я больше не буду отвечать на твои вопросы. Уходи».~ */
  IF ~~ THEN REPLY #37786 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #37767 /* ~Он улыбается тебе. «Это значит: иди-ка, прогуляйся в односторонний портал и не возвращайся!»~ */
  IF ~~ THEN REPLY #37787 /* ~«Понятно. Так почему тебя продают?»~ */ GOTO 4
  IF ~~ THEN REPLY #37788 /* ~«Отлично, прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37768 /* ~Ты видишь человека с печальным лицом. При твоем приближении он бросает на тебя безнадежный взгляд. «Только не ты. Чего тебе стоит от меня отвязаться?»~ */
  IF ~~ THEN REPLY #37789 /* ~«У меня есть кое-какие вопросы...» ~ */ GOTO 11
  IF ~~ THEN REPLY #37790 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37769 /* ~Он смотрит на тебя сердито. «А у меня нет для тебя ответов. Проваливай, алкаш!»~ */
  IF ~~ THEN REPLY #37791 /* ~«Отлично, прощай».~ */ EXIT
END
