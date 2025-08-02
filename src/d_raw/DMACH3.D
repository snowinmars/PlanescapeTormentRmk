// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMACH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMACH3~

IF ~  Global("Machine_3","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64340 /* ~Эта древняя машина похожа на забытый всеми военный реликт. Большая ее часть покрыта пылью, за исключением странной панели с рычагами. Довольно странно, но земля вокруг панели потревожена, будто кто-то здесь «недавно» топтался, возможно, пару лет назад.~ */
  IF ~  Global("Machine","GLOBAL",3)
~ THEN REPLY #64341 /* ~Найти панель, потом рычаг, отмеченный крестиком.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 1
  IF ~  GlobalGT("Machine","GLOBAL",0)
GlobalLT("Machine","GLOBAL",3)
~ THEN REPLY #64347 /* ~Найти панель, потом рычаг, отмеченный крестиком.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Machine","GLOBAL",0)
~ THEN REPLY #64352 /* ~Осмотреть панель.~ */ GOTO 4
  IF ~~ THEN REPLY #64361 /* ~Оставить машину в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64342 /* ~Ты быстро находишь помеченный крестиком рычаг и дергаешь его. Он легко поддается тебе, затем превращается в туман... ты глубоко вдыхаешь, но, в отличие от предыдущих раз... ничего не происходит.~ */
  IF ~~ THEN JOURNAL #64260 /* ~Кажется, потянув рычаг на четвертой машине, я что-то открыл в недрах Крепости... может быть, выход? Мне нужно попытаться найти его и выбраться отсюда к чертям собачьим...~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64343 /* ~Вдалеке слышится гул, как будто *что-то* только что открылось, и по комнатам проносится воющий ветер. Пытаясь понять, откуда доносится звук, ты вдруг осознаешь, что распадаешься и становишься частью ветра...~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64344 /* ~«*Что* происходит?..»~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64345 /* ~«*Что* происходит?..»~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64346 /* ~«*Что* происходит?..»~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64348 /* ~Ты быстро находишь помеченный крестиком рычаг и дергаешь его. Он легко поддается тебе, затем превращается в туман... ты глубоко вдыхаешь, затем тебя в очередной раз охватывает головокружение, и стены вокруг меркнут...~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64349 /* ~«Куда это я *н...*»~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64350 /* ~«Куда это я *н...*»~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64351 /* ~«Куда это я *н...*»~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64353 /* ~На панели есть ряд приборов и рычагов. Под ними нацарапаны пометки; похоже, делали их кинжалом и в спешке. Под одними нет пометок, под другими — косая черта, а под одним из рычагов выцарапан крестик. Непонятно, почему, но ты знаешь, что рычаг с крестиком каким-то образом поможет тебе покинуть это место.~ */
  IF ~  Global("Clock_1","GLOBAL",1)
~ THEN REPLY #64354 /* ~Потянуть рычаг, отмеченный крестиком.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64238 /* ~В Крепости я обнаружил странную машину. Она похожа на что-то вроде пушки, но есть подозрение, что это своего рода «сторожевой пост» или запирающий механизм Крепости. Воспользовавшись ею, я очутился в другом изолированном помещении Крепости, балконе, выходящем в главную галерею. Я знаю, что мне нужно найти другие машины и каким-то образом активизировать их. Должно быть, моя память возвращается ко мне: если нацарапанное на часах — какая-то подсказка, то одно из моих воплощений уже проходило через это испытание.~ */ GOTO 5
  IF ~  Global("Clock_1","GLOBAL",0)
~ THEN REPLY #64359 /* ~Потянуть рычаг, отмеченный крестиком.~ */ DO ~IncrementGlobal("Machine","GLOBAL",1)
~ JOURNAL #64239 /* ~В Крепости я обнаружил странную машину. Она похожа на что-то вроде пушки, но есть подозрение, что это своего рода «сторожевой пост» или запирающий механизм Крепости. Воспользовавшись ею, я очутился в другом изолированном помещении Крепости, балконе, выходящем в главную галерею. Я знаю, что мне нужно найти другие машины и каким-то образом активизировать их. Не знаю, почему, но у меня есть странное чувство, что я уже делал это раньше.~ */ GOTO 5
  IF ~~ THEN REPLY #64360 /* ~Оставить машину в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #64355 /* ~Он легко поддается тебе, и, к твоему удивлению, превращается в туман... за ним следует твоя ладонь, тоже начав исчезать, потом рука, потом тебя охватывает головокружение, и стены вокруг меркнут...~ */
  IF ~  !Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64356 /* ~«Чт..»~ */ DO ~IncrementGlobal("Fortress_Death_Counter","GLOBAL",-1)
SetGlobal("Machine_3","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csN0",FALSE)
~ EXIT
  IF ~  Dead("Nordom")
Global("Fortress_Nordom","GLOBAL",1)
~ THEN REPLY #64357 /* ~«Чт..»~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #64358 /* ~«Чт..»~ */ DO ~SetGlobal("Machine_3","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
SinisterPoof("EF02TPR2",[3889.2933],1)
TeleportParty("AR1201",[3889.2933],6)
MoveViewPoint([3889.2933],INSTANT)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~  Global("Machine_3","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #64362 /* ~Эта древняя машина похожа на забытый всеми военный реликт. Большая ее часть покрыта пылью, за исключением странной панели с рычагами. От рычага, который ты дернул, не осталось и следа: он пропал, как будто его никогда и не было.~ */
  IF ~~ THEN REPLY #64363 /* ~Оставить машину в покое.~ */ EXIT
END
