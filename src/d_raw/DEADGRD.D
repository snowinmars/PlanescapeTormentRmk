// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEADGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DEADGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52774 /* ~Ты видишь стражника Проклятого, лежащего в луже собственной крови. Его доспехи основательно помяты, тело под ними выглядит так, как будто его выжег жар сотен солнц. С трудом дыша, он обращается к тебе полностью разбитым лицом. «Дэва... очень силен. Не входи... пока... не сможешь победить». Он тихо испускает дух.~ */
  IF ~~ THEN EXIT
END
