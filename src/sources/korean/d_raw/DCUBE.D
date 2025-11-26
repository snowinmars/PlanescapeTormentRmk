// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUBE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #21494 /* ~이 작은 금속제 장난감은 면들 중 하나에 큰 눈이 달린 입방체 모양의 생물의 모형이다. 이 장난감에는 다리 2개, 팔 2개, 한 쌍의 접을 수 있는 날개, 그리고 적어도 18개의 관절부가 있다. 아마 이것은 수집가들을 위한 물건인지도 모른다.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42933 /* ~장난감을 조작하여 무슨 효과가 나타나는지 본다.~ */ GOTO 6
  IF ~~ THEN REPLY #21495 /* ~팔들을 움직여 칼싸움하는 소리를 낸다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22827 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48743 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22828 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ GOTO 5
  IF ~~ THEN REPLY #22829 /* ~입방체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 5.0
  SAY #22831 /* ~당신이 그 장난감의 정밀한 관절을 움직이자 *짤까닥* 그리고 *윙윙* 소리를 내며 움직인다. 이 작은 입방체는 당신이 보낸 상상의 적들을 순식간에 전멸시킨다, 그리고 자신의 정상 위치로 복구한다. ~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42934 /* ~장난감을 조작하여 무슨 효과가 나타나는지 본다.~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #22832 /* ~그것의 팔을 흔들며 환호하는 소리를 낸다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #22833 /* ~그것의 팔을 흔들며 환호하는 소리를 낸다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #22834 /* ~그것의 팔을 흔들며 환호하는 소리를 낸다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #22835 /* ~그것의 팔을 흔들며 환호하는 소리를 낸다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22836 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48744 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22837 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ GOTO 5
  IF ~~ THEN REPLY #22838 /* ~입방체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #22839 /* ~수많은 상상 속의 생물들이 입방체의 승리를 환호한다. 당신 눈에 그의 눈에 그득한 기름과 같은 작은 눈물방울이 보이려고 한다... 그는 영웅이다. 다원 우주의 역사상 가장 위대한 입방체이며, 모두가 그를 사랑한다. ~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42935 /* ~장난감을 조작하여 무슨 효과가 나타나는지 본다.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22840 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48745 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22841 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22842 /* ~다원 우주을 상대로 한 앞으로의 전투에 대비하여 입방체를 치운다.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22843 /* ~다원 우주을 상대로 한 앞으로의 전투에 대비하여 입방체를 치운다.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 3 // from: 1.4
  SAY #22844 /* ~다원 우주 전역에서 모인 수많은 상상 속의 생물들이 입방체의 승리를 환호한다. 당신 눈에 그의 눈에 그득한 기름과 같은 작은 눈물방울이 보이려고 한다... 그는 영웅이다. 다원 우주의 역사상 가장 위대한 입방체이며, 모두가 그를 사랑한다. 당신의 상상 속에서 훨-후럼-그레이스와 안나는 그것을 껴안고 키스 세례를 퍼붓는다. ~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42937 /* ~장난감을 조작하여 무슨 효과가 나타나는지 본다.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42936 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48746 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #22865 /* ~다리가 15도 각도가 될 때까지 왼쪽 무릎을 굽히고 양쪽 날개를 최대한으로 펼친 후, 오른쪽 팔을 180도 회전시킨다.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22866 /* ~탄식을 한 후, 다원 우주을 상대로 한 앞으로의 전투에 대비하여 입방체를 치운다.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22867 /* ~탄식을 한 후, 다원 우주을 상대로 한 앞으로의 전투에 대비하여 입방체를 치운다.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 4 // from: 0.2 0.3 1.5 1.6 2.1 2.2 3.1 3.2
  SAY #22846 /* ~*짤까닥* 그리고 *윙윙* 소리가 난다, 그리고 당신 손 안에서 눈을 멀게 할 정도로 밝은 하얀 빛이 갑자기 폭발적인 기세로 빛난다...~ */
  IF ~~ THEN REPLY #22847 /* ~"뭐...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.7 2.3 3.3 10.3
  SAY #22868 /* ~*윙윙*과 *짤까닥* 소리가 난다, 그리고 다시 *짤까닥* 소리가 거듭해 난 후 낮은 *윙윙* 소리가 들린다. 아무 일도 일어나지 않는다. ~ */
  IF ~~ THEN REPLY #22869 /* ~팔들을 움직이며 칼싸움하는 소리를 내 스스로를 달랜다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22848 /* ~"효과가 없군. 일단 널 치우고 나서 나중에 다른 장소에 가면 다시 시도하도록 하지."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 2.0 3.0
  SAY #42938 /* ~당신은 장난감의 다양한 관절부를 구부리고, 뒤틀고, 돌려 보면서 그것의 팔다리가 때때로 갑자기 원래 위치로 돌아간다는 사실에 주목한다. 마침내 당신이 그것의 왼쪽 무릎을 구부리자 장난감은 묘한 *펑!* 소리를 내며 당신 손에서 떨기 시작한다...~ */
  IF ~~ THEN REPLY #42940 /* ~왼쪽 팔을 돌린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42942 /* ~오른쪽 팔을 돌린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42943 /* ~왼쪽 날개를 펼친다.~ */ GOTO 9
  IF ~~ THEN REPLY #42944 /* ~오른쪽 날개를 펼친다.~ */ GOTO 7
  IF ~~ THEN REPLY #42947 /* ~오른쪽 무릎을 구부린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42949 /* ~입방체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.3 6.4 7.0 7.1 7.2 7.3 7.5 8.0 8.1 8.3 8.4 9.0 9.1 9.3 10.0 10.4
  SAY #42950 /* ~장난감의 팔다리가 조용하게 *째깍* 소리를 내며 갑자기 원래 위치로 돌아간다~ */
  IF ~~ THEN REPLY #42952 /* ~왼쪽 팔을 돌린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42954 /* ~오른쪽 팔을 돌린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42955 /* ~왼쪽 날개를 펼친다.~ */ GOTO 7
  IF ~~ THEN REPLY #42956 /* ~오른쪽 날개를 펼친다.~ */ GOTO 7
  IF ~~ THEN REPLY #42957 /* ~왼쪽 무릎을 구부린다.~ */ GOTO 8
  IF ~~ THEN REPLY #42959 /* ~오른쪽 무릎을 구부린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42961 /* ~입방체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.4
  SAY #42962 /* ~장난감은 묘한 *펑!* 소리를 내며 당신 손에서 떨기 시작한다.~ */
  IF ~~ THEN REPLY #42964 /* ~왼쪽 팔을 돌린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42966 /* ~오른쪽 팔을 돌린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42967 /* ~왼쪽 날개를 펼친다.~ */ GOTO 9
  IF ~~ THEN REPLY #42968 /* ~오른쪽 날개를 펼친다.~ */ GOTO 7
  IF ~~ THEN REPLY #42971 /* ~오른쪽 무릎을 구부린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42973 /* ~입방체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 8.2
  SAY #42974 /* ~장난감은 낮은 *윙* 소리를 낸다.~ */
  IF ~~ THEN REPLY #42976 /* ~왼쪽 팔을 돌린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42978 /* ~오른쪽 팔을 돌린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42980 /* ~오른쪽 날개를 펼친다.~ */ GOTO 10
  IF ~~ THEN REPLY #42983 /* ~오른쪽 무릎을 구부린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42985 /* ~입방체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #42986 /* ~장난감은 약간 *윙윙*거리며 따뜻해진다. ~ */
  IF ~~ THEN REPLY #42987 /* ~왼쪽 팔을 돌린다.~ */ GOTO 7
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42990 /* ~오른쪽 팔을 돌린다.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
GenerateModronMaze()
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48747 /* ~오른쪽 팔을 돌린다.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #43099 /* ~오른쪽 팔을 돌린다.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42995 /* ~오른쪽 무릎을 구부린다.~ */ GOTO 7
  IF ~~ THEN REPLY #42997 /* ~입방체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2
  SAY #42998 /* ~"윙윙*, *째깍* 소리가 난다, 그리고 다음 순간 눈멀게 하는 백색 섬광이 당신 손 안에서 폭발한다. ~ */
  IF ~~ THEN REPLY #42999 /* ~"뭐...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END
