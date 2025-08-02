// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOMB~

IF ~  Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN BEGIN 0 // from: 1.1 4.1 5.1
  SAY #31524 /* ~Статуя выглядит так, будто собирается сделать какое-то гневное заявление. Скульптор великолепно передал сущность ярости: должно быть, потребовались многие месяцы, чтобы правильно высечь одни только морщины напряжения на шее и лбу. Изваяние покрыто мелкими трещинами, а к пьедесталу прикреплена табличка.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31530 /* ~Намазать статую мазью Горгоны.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 6
  IF ~~ THEN REPLY #31531 /* ~Прочитать табличку.~ */ DO ~SetGlobal("CW_Know_Curse","AR0608",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 1
  IF ~  Global("CW_Got_Splinter","AR0608",0)
~ THEN REPLY #31532 /* ~Осмотреть трещины.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #31533 /* ~Оставить статую в покое.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.2 4.2 5.2
  SAY #31534 /* ~Табличка гласит: «Считается, что эта статуя — конечная судьба этерсерийского чародея Гангройгидона. Атакованный враждебным конклавом чародеев, находясь в пике ужасного безумия, он был лишен свободы заклинанием, которое обратило его плоть в камень. Говорят, будто Гангройгидон застыл с последним страшным проклятием на губах, столь ужасным, что ему *никогда* не следовало слетать с уст живого человека».~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31535 /* ~Намазать статую мазью Горгоны.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31536 /* ~Осмотреть статую.~ */ GOTO 0
  IF ~~ THEN REPLY #31537 /* ~Оставить статую в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #31538 /* ~Ты тщательно изучаешь трещины, идущие по поверхности статуи, словно сеть тонких черных сосудов. В одном месте, на внутренней стороне руки, есть участок, где кусок камня уже готов отвалиться.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #31539 /* ~Отломить кусок.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Statue_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #31540 /* ~Отломить кусок.~ */ GOTO 5
  IF ~~ THEN REPLY #31541 /* ~Прочитать табличку.~ */ GOTO 1
  IF ~~ THEN REPLY #31542 /* ~Оставить статую в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #31543 /* ~Ты крепко хватаешь место на предплечье, где образовалась трещина, и бьешь по нему своим кузнечным молотом. Слышится звук удара металла о камень, и от статуи отпадает обломок размером с кинжал.~ */
  IF ~~ THEN REPLY #31544 /* ~«Есть...»~ */ DO ~GiveItemCreate("Splinter",Protagonist,15,0,0)
SetGlobal("CW_Got_Splinter","AR0608",1)
AddexperienceParty(4000)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31545 /* ~Когда обломок отпадает, ты чувствуешь, как по тыльной стороне твоей руки начинает течь вода... взяв обломок руки, ты видишь, как глаза статуи наполняются слезами. Ты быстро — и бесшумно — возвращаешь обломок на место и отворачиваешься от плачущего изваяния.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31546 /* ~Намазать статую мазью Горгоны.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31547 /* ~Осмотреть статую.~ */ GOTO 0
  IF ~~ THEN REPLY #31548 /* ~Прочитать табличку.~ */ GOTO 1
  IF ~~ THEN REPLY #31549 /* ~Оставить статую в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #31550 /* ~Ты крепко хватаешь место на предплечье, где образовалась трещина, и резко дергаешь — но безуспешно. Чтобы отколоть камень, тебе нужен молоток небольшого размера: из-за ограниченного пространства между рукой и телом статуи большой молот (например, боевой) не подойдет.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31551 /* ~Намазать статую мазью Горгоны.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31552 /* ~Осмотреть статую.~ */ GOTO 0
  IF ~~ THEN REPLY #31556 /* ~Прочитать табличку.~ */ GOTO 1
  IF ~~ THEN REPLY #31557 /* ~Оставить статую в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 4.0 5.0
  SAY #31558 /* ~Ты обмазываешь изваяние зловонной мазью. Вокруг него появляется странное мерцание, и ты наблюдаешь, как статуя делает вдох, и глаза Гангройгидона наполняются пылающим мстительным безумством. ~ */
  IF ~~ THEN REPLY #31559 /* ~«Приветствую...»~ */ GOTO 7
  IF ~~ THEN REPLY #31560 /* ~Прикрыть уши.~ */ GOTO 7
  IF ~~ THEN REPLY #31561 /* ~Бежать как сумасшедший.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #31562 /* ~Прежде чем ты успеваешь что-нибудь предпринять, с губ чародея срывается пламенный поток слов. При этом ты чувствуешь мучительное ощущение, будто тебя окатывает стремительной волной чудовищной жары, которая покрывает твою кожу как ожог. Тебя ослепляет: твои глаза, вылетев из орбит, лопаются, как разбитые яйца... ты слышишь, как кто-то кричит, и вдруг осознаешь, что это ты...~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #31563 /* ~Подождать, пока этот кошмар закончится.~ */ DO ~AddexperienceParty(4000)
IncrementGlobal("Morte_Taunt","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31564 /* ~Пасть во тьму, став жертвой страшного проклятья Гангройгидона.~ */ DO ~AddexperienceParty(4000)
OpenDoor("Statue")
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31565 /* ~Последнее, что ты слышишь, даже сквозь собственный крик, — это ликующий возглас Морта...~ */
  IF ~~ THEN EXTERN ~DMORTE~ 298
END

IF ~  Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #66515 /* ~«Статуя» — в действительности, однажды обращенный в камень чародей Гангройгидон — попросту исчезла. Скорее всего, он ушел, даже не удосужившись извиниться.~ */
  IF ~~ THEN REPLY #66516 /* ~Уйти.~ */ EXIT
END
