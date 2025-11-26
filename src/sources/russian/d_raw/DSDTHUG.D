// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSDTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSDTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2933 /* ~Этот человек с бешеными глазами согнулся, лая и завывая на всю мощь своих легких. Под его густыми спутанными волосами ты замечаешь ряд странных татуировок... они меняются от кричащих лиц до странных геометрических фигур и чего то, похожего на строки стихов. Он почти голый, однако грязь, покрывающая его, придает ему вполне благопристойный вид.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13755 /* ~«Приветствую».~ */ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13756 /* ~«Приветствую».~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13757 /* ~Выдать долгий жалобный вой.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13758 /* ~Выдать долгий жалобный вой.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13759 /* ~Оставить человека в покое.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13760 /* ~Оставить человека в покое.~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.0
  SAY #2934 /* ~Человек кружит перед тобой, затем издает низкий рык. Несколько секунд он продолжает рычать, затем начинает неистово лаять на тебя. Ты слышишь, как издалека кто-то лает ему в ответ.~ */
  IF ~~ THEN REPLY #13761 /* ~«Я *сказал*, 'приветствую'».~ */ GOTO 3
  IF ~~ THEN REPLY #13762 /* ~Зарычать на него, оскалившись.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13763 /* ~«Э... тогда прощай».~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13764 /* ~«Э... тогда прощай».~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 2 // from: 0.3 4.1
  SAY #13745 /* ~Услышав, как ты воешь, человек начинает кружить перед тобой, затем криво оскаливается и запрокидывает голову, подхватывая твой вой. Через несколько мгновений он останавливается, затем продолжает скакать, рычать и лаять, словно какой-то одичавший пес.~ */
  IF ~~ THEN REPLY #13765 /* ~«Я сказал: приветствую».~ */ GOTO 3
  IF ~~ THEN REPLY #13766 /* ~Зарычать на него, оскалившись.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13767 /* ~«Э... Что ж, приятно было поболтать».~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13768 /* ~«Э... Что ж, приятно было поболтать».~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0 2.1
  SAY #13746 /* ~Его лай оканчивается рыком, и он набрасывается на тебя!~ */
  IF ~~ THEN REPLY #13769 /* ~«Если ты так хочешь умереть, волко-человек...»~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #13747 /* ~Этот человек с бешеными глазами все еще скачет, лает и завывает на всю мощь своих легких.~ */
  IF ~~ THEN REPLY #13770 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #13771 /* ~Выдать долгий жалобный вой.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13772 /* ~Оставить человека в покое.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13773 /* ~Оставить человека в покое.~ */ EXTERN ~DMORTE~ 162
END
