// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3174 /* ~«Пожалуйста! Спаси меня! Они хотят меня убить просто за то, что я делаю свою работу! Я не хотел никому навредить! Нельзя же просто смотреть, как они превращают город в развалины!» Он начинает рыдать. «Пожалуйста... сделай хоть что-нибудь!»~ */
  IF ~~ THEN REPLY #3175 /* ~«Лучше я буду смотреть на то, как ты умрешь».~ */ EXIT
  IF ~~ THEN REPLY #66758 /* ~«Я сделаю все, что смогу».~ */ EXIT
END
