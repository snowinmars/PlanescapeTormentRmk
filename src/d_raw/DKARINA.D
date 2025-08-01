// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKARINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DKARINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36099 /* ~Ты видишь симпатичную девушку, облаченную в простую одежду. Она бродит по рынку и осматривает все подряд, но не делает покупок. Ты отмечаешь, что люди ее сторонятся, но стараются этого не показывать. Когда ты подходишь, она дарит тебе теплую улыбку.~ */
  IF ~~ THEN REPLY #36100 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #36101 /* ~Игнорировать ее.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36102 /* ~Ее улыбка становится еще шире. «Привет, я Карина. Рада нашей встрече, рубака». Она продолжает улыбаться в ожидании твоего ответа.~ */
  IF ~~ THEN REPLY #36103 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 20.0
  SAY #36104 /* ~Она кивает. «Хорошо. Что ты хочешь знать?»~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36105 /* ~«Я ищу кое-кого по имени Лотар, он же Повелитель Костей...»~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36106 /* ~«У меня был череп, который украли. Ты не знаешь кого-нибудь, кто бы мог это сделать?»~ */ GOTO 4
  IF ~~ THEN REPLY #36107 /* ~«Где мне купить оружие?»~ */ GOTO 5
  IF ~~ THEN REPLY #36108 /* ~«Где мне купить магические предметы?»~ */ GOTO 6
  IF ~  GlobalGT("Girl_Talks_Alot","AR0504",1)
!Global("Karina_Friend","GLOBAL",4)
~ THEN REPLY #36109 /* ~«Ты, э... любишь поболтать, не так ли?»~ */ GOTO 15
  IF ~~ THEN REPLY #36110 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36111 /* ~Она хмурится. «Лотар... Не знаю никого с именем Лотар. Я даже не припомню, чтобы слышала такое имя, — она смотрит на тебя встревожено. — Как ты сказал, 'Повелитель Костей'? Звучит жутковато, правда? И зачем кому-то называться таким именем?»~ */
  IF ~~ THEN REPLY #36113 /* ~«Ну... это производит впечатление...»~ */ GOTO 7
  IF ~~ THEN REPLY #36114 /* ~«Ну... думаю, чтобы отпугивать людей».~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36116 /* ~«Череп? А зачем тебе эта штуковина? Какой-то нездоровый интерес, тебе не кажется? Ну ладно, если тебе нужен череп, думаю, ты сможешь достать его в Морге... хотя, может, и нет. Им не нравится выдавать такие штуки посторонним, так мне кажется... в любом случае, я не знаю, кто мог забрать у тебя череп. Зачем он тебе?»~ */
  IF ~~ THEN REPLY #36118 /* ~«Он мой друг».~ */ GOTO 8
  IF ~~ THEN REPLY #36119 /* ~«Он — ценное имущество»~ */ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #36121 /* ~Она улыбается и показывает на один из прилавков. «Вон там Анце торгует оружием. Всеми видами. Ты воин? Глупый вопрос — конечно же, да. То есть, как ты не можешь не быть им со всеми этими шрамами... о, прости, мне не следует их упоминать. Ты ведь не обижаешься насчет их?»~ */
  IF ~~ THEN REPLY #36123 /* ~«Нет, я к ним уже привык».~ */ GOTO 9
  IF ~~ THEN REPLY #36124 /* ~«Да, так что больше о них не вспоминай».~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #36126 /* ~Она улыбается и показывает на один из прилавков. «Вон там Аалек торгует волшебными штуковинами. Ты маг? На мага ты не похож, хотя, пожалуй, внешность бывает обманчивой. На самом деле, я не знаю, как выглядят маги — вот только сейчас это поняла. А ты знаешь?»~ */
  IF ~~ THEN REPLY #36128 /* ~«Да. Они носят мантии с забавными символами и остроконечные шляпы».~ */ GOTO 10
  IF ~~ THEN REPLY #36129 /* ~«На самом деле, нет».~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #36131 /* ~Она кивает. «Да... Кажется, я поняла, о чем ты. В этом определенно что-то есть. Хм-м. Немного запутывает, если слишком долго об этом думать». Кажется, она задумалась.~ */
  IF ~~ THEN REPLY #36132 /* ~«У меня есть несколько вопросов...» ~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 4.0
  SAY #36133 /* ~Она смотрит на тебя недоуменно. «Правда? Череп? Знаешь, это звучит странно. Никогда не слышала, чтобы кто-нибудь дружил с черепом. Я видела людей с домашними животными и прочей живностью, вот только не с черепами. Но ты и не говорил, что он — твой любимец. Ты сказал, что он твой друг, что еще более странно». Она останавливается, чтобы поразмыслить.~ */
  IF ~~ THEN REPLY #36134 /* ~«У меня есть несколько вопросов...» ~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #36135 /* ~Кажется, она успокоилась. «О, хорошо... Я не хотела ранить твои чувства, или чьи-то еще. Просто нужно следить за тем, что говоришь, правильно? То есть, люди-то разные, и никогда не угадаешь. Что-то одних задевает, других — нет. Так что... ну да ладно». Она останавливается, чтобы перевести дух, и улыбается тебе.~ */
  IF ~~ THEN REPLY #36136 /* ~«У меня есть несколько вопросов...» ~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #36137 /* ~«Правда? Полезно это узнать. То есть, я боюсь магов и хочу знать, какие они с виду. Думаю, это все из-за сил, которыми они обладают. Они могут делать по-настоящему невероятные штуки, и все такое, но ты не знаешь, как они выглядят. Воины и жрецы и... и... ну, знаешь, другие сильные люди попросту выглядят сильными, со всеми теми вещами на них, по которым видно, что они сильные. Не то что маги». Она умолкает.~ */
  IF ~~ THEN REPLY #36138 /* ~«У меня еще несколько вопросов...»~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 11 // from: 3.1
  SAY #36139 /* ~Кажется, она ушла в мысли. Она потирает пальцем подбородок, потом, наконец, кивает. «Да... Думаю, ты прав. У меня аж мурашки по коже от мысли об этом. 'Повелитель Костей' — довольно-таки страшный титул. Не хотела бы я связываться с кем-то с таким титулом». Она продолжает размышлять.~ */
  IF ~~ THEN REPLY #36140 /* ~«У меня есть несколько вопросов...» ~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 12 // from: 4.1
  SAY #36141 /* ~Она пожимает плечами. «О, ну... ладно, значит, ты хочешь иметь у себя череп — это ничего. Люди собирают самые странные вещи. Я сама этим не занимаюсь, но знакома с такими людьми. Из тех, кого я знаю, ты — единственный, кто собирает черепа. Может, и мне таким заняться...»~ */
  IF ~~ THEN REPLY #36142 /* ~«У меня есть несколько вопросов...» ~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 13 // from: 5.1
  SAY #36143 /* ~Кажется, она огорчилась; она смотрит на тебя обеспокоенно. «Извини. Надеюсь, ты меня простишь. Я никого не хотела обижать, ранить чьи-то чувства, и все такое. То есть, мне не нравится, когда кто-нибудь делает мне больно, так зачем же делать больно другому? Наверно, им это тоже не нравится... если только они не какие-нибудь ненормальные... или еще чего». Она смотрит на тебя невинным взглядом.~ */
  IF ~~ THEN REPLY #36144 /* ~«У меня еще несколько вопросов...»~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #36145 /* ~Она приходит в волнение и указывает на тебя пальцем. «Вот видишь! Я это и имела в виду. У них вся эта ужасная сила, и они могут делать невероятные штуки, но этого не скажешь по их виду. Так что они могут подкрасться к тебе. То есть, жрецы, воины и прочие — все они носят эти заметные вещи, так что ты можешь узнать, кто они такие, и вести себя осторожно. Не то что маги». Она смотрит на тебя деловито.~ */
  IF ~~ THEN REPLY #36146 /* ~«У меня есть несколько вопросов...» ~ */ DO ~IncrementGlobal("Girl_Talks_Alot","AR0504",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #36147 /* ~Она удрученно шаркает ножкой. «Я, э... Ну... Мне говорили, что я, наверное, говорю чуточку многовато, и, ну... Люди стараются меня избегать... и у меня вообще нет ни подруг, ни поклонников... порой мне так одиноко...» Ее голос становится все тише и тише, а потом и вовсе стихает. Она опускает глаза.~ */
  IF ~~ THEN REPLY #36148 /* ~«Ну, понятно, почему оно так выходит».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Karina_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #36149 /* ~«Мне кажется, ты неплохой человек, Карина. Вот мне ты нравишься».~ */ DO ~AddexperienceParty(2000)
IncrementGlobalOnceEx("GLOBALGood_Karina_1","GLOBALGood",1)
SetGlobal("Karina_Friend","GLOBAL",1)
~ JOURNAL #35988 /* ~Я встретил девушку по имени Карина. Она слишком много болтает и порой несет чепуху, и все же она милая. Она сказала мне, что ей одиноко.~ */ GOTO 17
  IF ~~ THEN REPLY #36150 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #36151 /* ~Поначалу она продолжает стоять и созерцать землю у ног. И тут ты замечаешь, что она тихонько всхлипывает. Она отворачивается и уходит.~ */
  IF ~~ THEN REPLY #36152 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #36153 /* ~Она смотрит на тебя с надеждой. «Правда? Спасибо тебе большое... Не знаю, как тебя звать».~ */
  IF ~~ THEN REPLY #36154 /* ~Ложь: «Я Адан».~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Karina_2","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36155 /* ~«Я не помню своего имени».~ */ GOTO 19
  IF ~~ THEN REPLY #36156 /* ~«Прощай, Карина».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #36157 /* ~Она улыбается. «Спасибо, Адан. Приятно знать, что у меня есть друг».~ */
  IF ~~ THEN REPLY #36158 /* ~«Прощай, Карина».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #36159 /* ~Она хмурится, начинает было что-то говорить, потом передумывает. Она пожимает плечами. «Что такого в имени? Просто приятно знать, что у меня есть друг». Она улыбается.~ */
  IF ~~ THEN REPLY #36160 /* ~«Прощай, Карина».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 22 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #36161 /* ~Ты видишь Карину. При твоем приближении она улыбается. «Привет. Как тебе этот чудный денек?»~ */
  IF ~~ THEN REPLY #36162 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #36163 /* ~«Неважно. Прощай».~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Karina_Friend","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #36164 /* ~Карина улыбается; она выглядит оживленной. «Привет, друг. Рада снова тебя видеть».~ */
  IF ~~ THEN REPLY #36165 /* ~«Просто хотел поздороваться, Карина. Хорошего тебе дня».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Karina_Friend","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #36166 /* ~Карина замечает твое приближение и радостно улыбается тебе. «Привет, — кажется, она готова лопнуть от волнения. — Спасибо тебе огромное, рубака! Я так тебе благодарна за все, что ты сделал».~ */
  IF ~~ THEN REPLY #36167 /* ~«А что я сделал, Карина?»~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",4)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36168 /* ~Она смеется. «Ты прислал ко мне Корвуса — он мне сам сказал. Он боялся ко мне подойти, думал, что у меня армия поклонников... ну, я хотела сказать: спасибо тебе». Она сжимает тебя в объятиях.~ */
  IF ~~ THEN REPLY #36169 /* ~«Всегда пожалуйста, Карина. Желаю счастья вам обоим».~ */ DO ~AddexperienceParty(500)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36170 /* ~«Спасибо, рубака. Надеюсь, и ты найдешь свое счастье».~ */
  IF ~~ THEN REPLY #36171 /* ~«Прощай».~ */ EXIT
END
