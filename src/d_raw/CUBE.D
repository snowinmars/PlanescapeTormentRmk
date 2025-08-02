// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CUBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~CUBE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #21494 /* ~Эта маленькая металлическая игрушка — копия похожего на куб механического существа с огромными глазами на одной из граней. У него две ноги, две руки, два складных крыла и не менее восемнадцати шарнирных соединений. Возможно, это коллекционный предмет.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42933 /* ~Повертеть игрушку и посмотреть, что из этого получится.~ */ GOTO 6
  IF ~~ THEN REPLY #21495 /* ~Подвигать руками, изображая звук звона мечей.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22827 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48743 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22828 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ GOTO 5
  IF ~~ THEN REPLY #22829 /* ~Отложить куб.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 5.0
  SAY #22831 /* ~Игрушка клацает и жужжит, когда ты двигаешь ее механическими соединениями. Мгновение спустя, маленький куб побеждает всех воображаемых врагов, которых ты на него послал, и возвращается в нормальное положение.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42934 /* ~Повертеть игрушку и посмотреть, что из этого получится.~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #22832 /* ~Помахать его руками, издавая приветствующие возгласы.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #22833 /* ~Помахать его руками, издавая приветствующие возгласы.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #22834 /* ~Помахать его руками, издавая приветствующие возгласы.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #22835 /* ~Помахать его руками, издавая приветствующие возгласы.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22836 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48744 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22837 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ GOTO 5
  IF ~~ THEN REPLY #22838 /* ~Отложить куб.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #22839 /* ~Толпы воображаемых существ приветствуют победу куба. Ты почти видишь крохотную маслянистую слезу, текущую из одного из его глаз... он герой, величайший куб, когда-либо странствовавший по планам, и все любят его.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42935 /* ~Повертеть игрушку и посмотреть, что из этого получится.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22840 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48745 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22841 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22842 /* ~Отложить куб до будущих вселенских битв.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22843 /* ~Отложить куб до будущих вселенских битв.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 3 // from: 1.4
  SAY #22844 /* ~Толпы воображаемых существ по всем планам приветствуют победу куба. Ты почти видишь крохотную маслянистую слезу, текущую из одного из его глаз... он герой, величайший куб, когда-либо странствовавший по планам, и все любят его. Ты представляешь, как Падшая Грация и Анна обнимают его и осыпают поцелуями.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42937 /* ~Повертеть игрушку и посмотреть, что из этого получится.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42936 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48746 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #22865 /* ~Согнуть левое колено, пока нога не согнется под углом пятнадцать градусов, расправить по максимуму оба крыла, потом повернуть правую руку в месте крепления на 180 градусов.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22866 /* ~Вздохнуть и отложить куб до будущих вселенских битв.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22867 /* ~Вздохнуть и отложить куб до будущих вселенских битв.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 4 // from: 0.2 0.3 1.5 1.6 2.1 2.2 3.1 3.2
  SAY #22846 /* ~Слышится жужжание, *клац*, и вдруг в твоих руках вспыхивает ослепительно-белый свет...~ */
  IF ~~ THEN REPLY #22847 /* ~«Чт!..»~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.7 2.3 3.3 10.3
  SAY #22868 /* ~Слышится жужжание, *клац*, потом *клац-клац-клац*, потом низкое жужжание. Ничего не происходит.~ */
  IF ~~ THEN REPLY #22869 /* ~Утешить себя, подвигав руками и изобразив звук звона мечей.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22848 /* ~«Что ж, не вышло. Спрячу-ка я тебя и попробую еще раз в другом месте».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 2.0 3.0
  SAY #42938 /* ~Ты сгибаешь и поворачиваешь разные шарнирные соединения игрушки, замечая, что конечности часто возвращаются в свое исходное положение. Наконец, когда ты сгибаешь ее левое колено, игрушка издает странный хлопок и дрожит в твоих руках...~ */
  IF ~~ THEN REPLY #42940 /* ~Повернуть левую руку.~ */ GOTO 7
  IF ~~ THEN REPLY #42942 /* ~Повернуть правую руку.~ */ GOTO 7
  IF ~~ THEN REPLY #42943 /* ~Раскрыть левое крыло.~ */ GOTO 9
  IF ~~ THEN REPLY #42944 /* ~Раскрыть правое крыло.~ */ GOTO 7
  IF ~~ THEN REPLY #42947 /* ~Согнуть правое колено.~ */ GOTO 7
  IF ~~ THEN REPLY #42949 /* ~Отложить куб.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.3 6.4 7.0 7.1 7.2 7.3 7.5 8.0 8.1 8.3 8.4 9.0 9.1 9.3 10.0 10.4
  SAY #42950 /* ~Внезапно конечности игрушки с тихим клацаньем возвращаются в свои исходные положения.~ */
  IF ~~ THEN REPLY #42952 /* ~Повернуть левую руку.~ */ GOTO 7
  IF ~~ THEN REPLY #42954 /* ~Повернуть правую руку.~ */ GOTO 7
  IF ~~ THEN REPLY #42955 /* ~Раскрыть левое крыло.~ */ GOTO 7
  IF ~~ THEN REPLY #42956 /* ~Раскрыть правое крыло.~ */ GOTO 7
  IF ~~ THEN REPLY #42957 /* ~Согнуть левое колено.~ */ GOTO 8
  IF ~~ THEN REPLY #42959 /* ~Согнуть правое колено.~ */ GOTO 7
  IF ~~ THEN REPLY #42961 /* ~Отложить куб.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.4
  SAY #42962 /* ~Игрушка издает странный хлопок и дрожит в твоих руках.~ */
  IF ~~ THEN REPLY #42964 /* ~Повернуть левую руку.~ */ GOTO 7
  IF ~~ THEN REPLY #42966 /* ~Повернуть правую руку.~ */ GOTO 7
  IF ~~ THEN REPLY #42967 /* ~Раскрыть левое крыло.~ */ GOTO 9
  IF ~~ THEN REPLY #42968 /* ~Раскрыть правое крыло.~ */ GOTO 7
  IF ~~ THEN REPLY #42971 /* ~Согнуть правое колено.~ */ GOTO 7
  IF ~~ THEN REPLY #42973 /* ~Отложить куб.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 8.2
  SAY #42974 /* ~Игрушка издает тихое жужжание.~ */
  IF ~~ THEN REPLY #42976 /* ~Повернуть левую руку.~ */ GOTO 7
  IF ~~ THEN REPLY #42978 /* ~Повернуть правую руку.~ */ GOTO 7
  IF ~~ THEN REPLY #42980 /* ~Раскрыть правое крыло.~ */ GOTO 10
  IF ~~ THEN REPLY #42983 /* ~Согнуть правое колено.~ */ GOTO 7
  IF ~~ THEN REPLY #42985 /* ~Отложить куб.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #42986 /* ~Игрушка тихо гудит, становясь теплой на ощупь.~ */
  IF ~~ THEN REPLY #42987 /* ~Повернуть левую руку.~ */ GOTO 7
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42990 /* ~Повернуть правую руку.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
GenerateModronMaze()
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48747 /* ~Повернуть правую руку.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #43099 /* ~Повернуть правую руку.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42995 /* ~Согнуть правое колено.~ */ GOTO 7
  IF ~~ THEN REPLY #42997 /* ~Отложить куб.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2
  SAY #42998 /* ~Слышится жужжание, *клац*, и вдруг в твоих руках вспыхивает ослепительно-белый свет...~ */
  IF ~~ THEN REPLY #42999 /* ~«Чт!..»~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END
