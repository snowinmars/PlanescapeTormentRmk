// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFORGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFORGE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 46 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #5086 /* ~당신은 다시 망치를 들어 올릴 준비를 한다... ~ */
  IF ~~ THEN REPLY #5087 /* ~"...이제는 어떻게 해야 하지?"~ */ EXTERN ~FSMITH~ 17
END

IF WEIGHT #2 /* Triggers after states #: 46 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY #5088 /* ~당신은 용광로에 다가간다. 열은 엄청나다. 어떻게 할 것인가?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5089 /* ~용광로를 사용한다.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5090 /* ~용광로를 사용한다.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5091 /* ~용광로를 사용한다.~ */ GOTO 3
  IF ~~ THEN REPLY #5092 /* ~뒤로 물러선다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 46.0
  SAY #5093 /* ~화염의 열은 불에 단련된 당신으로서도 견딜 수가 없을 정도다. 당신은 화염으로부터 대미지를 입기 시작한다.~ */
  IF ~~ THEN REPLY #5094 /* ~용광로를 사용한다.~ */ GOTO 4
  IF ~~ THEN REPLY #5095 /* ~뒤로 물러선다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 1.2 46.1 46.2
  SAY #5096 /* ~화염은 엄청난 양의 열을 내뿜고 있다. 하지만 당신이 착용한 보호 장비 덕에 전혀 대미지를 입지 않고 견딜 수가 있다. 용광로에서 작업을 하겠는가?~ */
  IF ~~ THEN REPLY #5097 /* ~하겠소.~ */ GOTO 25
  IF ~~ THEN REPLY #5098 /* ~아니오.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #5099 /* ~화염은 또다시 당신 피부를 태운다. 어떤 일을 제일 먼저 하겠는가?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5100 /* ~집게를 준비한다.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5101 /* ~모루를 망치로 내려친다.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5102 /* ~철광석을 집는다. ~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5103 /* ~집게로 철광석을 집어 용광로의 화염 속에 넣고 달군다.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 8
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5104 /* ~철광석을 모루 위에 올려놓고 망치로 내려친다.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5105 /* ~용광로에서 물러선다.~ */ DO ~Damage(Protagonist,LOWER,10)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5106 /* ~죽는다. 열은 너무나도 강렬하다. ~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #5107 /* ~당신은 집게를 꽉 쥔다, 하지만 그 동안에도 용광로의 열은 당신 피부를 계속 태우고 있다. 이제 어떤 일을 하겠는가?~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5108 /* ~모루를 망치로 내려친다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5109 /* ~집게로 철광석을 집어 용광로의 화염 속에 넣고 달군다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5110 /* ~철광석을 모루 위에 올려놓고 망치로 내려친다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5111 /* ~용광로에서 물러선다.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5112 /* ~죽는다. 열은 너무나도 강렬하다. ~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 6.1 7.0
  SAY #5113 /* ~당신은 아무 것도 없는 모루를 망치로 잠시 두들긴다, 그러자 쇠가 쇠에 부딪치는 소리가 사방에 울려 퍼진다. 그 와중에도 용광로의 열은 당신 피부를 계속 태우고 있다. 이제는 어쩔 건가?~ */
  IF ~  PartyHasItem("Tongs")
!HPLT(Protagonist,1)
~ THEN REPLY #5114 /* ~집게를 준비한다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 5
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5115 /* ~모루를 망치로 내려친다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5116 /* ~철광석을 집는다. ~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 7
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5117 /* ~집게로 철광석을 집어 용광로의 화염 속에 넣고 달군다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5118 /* ~철광석을 모루 위에 올려놓고 망치로 내려친다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5119 /* ~용광로에서 물러선다.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5120 /* ~죽는다. 열은 너무나도 강렬하다. ~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2
  SAY #5121 /* ~당신은 철광석을 양손으로 쥔다. 당신이 서 있는 곳에서는 용광로의 열이 쇠도 녹일 지경이다. 당연히 당신 피부는 엄청난 손상을 입고 있다. 이제 어쩔 건가?"~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5122 /* ~모루를 망치로 내려친다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 6
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5123 /* ~철광석을 불 속에 넣고 집게로 붙들고 있는다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 8
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
!HPLT(Protagonist,1)
~ THEN REPLY #5124 /* ~철광석을 모루 위에 올려놓고 망치로 내려친다.~ */ DO ~Damage(Protagonist,LOWER,5)
~ GOTO 9
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5125 /* ~철광석을 불 속에 넣고 맨손으로 붙들고 있는다.~ */ GOTO 10
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5126 /* ~용광로에서 물러선다.~ */ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5146 /* ~죽는다. 열은 너무나도 강렬하다. ~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.1 6.3 7.1
  SAY #5147 /* ~철광석은 빠른 속도로 부드러워져 곧 작업할 수 있을 정도로 부드러워진다. 당신 피부는 데인 곳 투성이다.~ */
  IF ~  PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5148 /* ~부드러워진 철광석을 용광로에 넣고 원하는 모양으로 만든다.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ GOTO 11
  IF ~  !PartyHasItem("FHammer")
!HPLT(Protagonist,1)
~ THEN REPLY #5149 /* ~내 망치! 이 작업에 필요한 망치를 구하는 걸 잊었군! 곧 돌아오겠소!~ */ DO ~DestroyPartyItem("IOre",FALSE)
Damage(Protagonist,LOWER,5)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5150 /* ~용광로에서 물러선다.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5151 /* ~죽는다. 열은 너무나도 강렬하다. ~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.4 5.2 6.4 7.2
  SAY #5152 /* ~당신은 차가운 철광석을 모루에 내려놓고 망치로 세게 친다. 그러나 철광석은 쓸모없는 작은 조각들로 부서질 뿐이다. 근처의 용광로에서 나오는 열은 당신 피부에서 고통의 교향곡을 연주한다.~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5153 /* ~용광로에서 물러선다.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5154 /* ~죽는다. 열기는 압도적이다. ~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.3
  SAY #5155 /* ~화염으로 인한 고통은 격렬하다. 철광석은 당신 손아귀에서 진흙처럼 부드러워지고 살이 타는 냄새가 코를 찌른다. 철은 당신 살에 달라붙고 당신은 고통 때문에 기절한다.~ */
  IF ~~ THEN REPLY #5156 /* ~완료.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.3 13.3 14.3
  SAY #5157 /* ~어떤 것을 만들겠는가?~ */
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5158 /* ~작고 위험한 것: 송곳칼!~ */ GOTO 12
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5159 /* ~양손용 망치.~ */ GOTO 13
  IF ~  !HPLT(Protagonist,1)
~ THEN REPLY #5160 /* ~전투용 도끼.~ */ GOTO 14
  IF ~  HPLT(Protagonist,1)
~ THEN REPLY #5162 /* ~아무 것도 만들지 않는다. 열기는 가히 압도적이다.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #5163 /* ~송곳칼... 빠르고 사용하기 쉬운 무기 - 그리고 당신을 이 고통의 지옥으로부터 빨리 탈출시켜 줄 무기. 정말로 송곳칼을 만들겠는가?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5164 /* ~그렇소.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5165 /* ~그렇소.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5166 /* ~그렇소.~ */ DO ~Damage(Protagonist,LOWER,15)
~ GOTO 18
  IF ~~ THEN REPLY #5167 /* ~아니오. 차라리 다른 걸 만들겠소.~ */ GOTO 11
  IF ~~ THEN REPLY #5168 /* ~아니오. 이제 용광로에는 볼일이 없소.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #5169 /* ~망치... 빠르게 만들 수 있는 무기, 즉 당신을 주조소의 화염으로부터 빨리 탈출시켜 줄 무기. 정말로 망치를 만들겠는가?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5170 /* ~그렇소.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5171 /* ~그렇소.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5172 /* ~그렇소.~ */ DO ~Damage(Protagonist,LOWER,10)
~ GOTO 21
  IF ~~ THEN REPLY #5173 /* ~아니오. 차라리 다른 걸 만들겠소.~ */ GOTO 11
  IF ~~ THEN REPLY #5174 /* ~아니오. 이제 용광로에는 볼일이 없소.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #5175 /* ~도끼는 만드는 데 시간이 걸린다. 그리고 그 동안에도 화염은 당신 살을 사정없이 태울 것이다. 정말 도끼를 만들겠는가?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5176 /* ~그렇소.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5177 /* ~그렇소.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 23
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5178 /* ~그렇소.~ */ DO ~Damage(Protagonist,LOWER,20)
DestroyPartyItem("IOre",FALSE)
~ GOTO 24
  IF ~~ THEN REPLY #5179 /* ~아니오. 차라리 다른 걸 만들겠소.~ */ GOTO 11
  IF ~~ THEN REPLY #5180 /* ~아니오. 이제 용광로에는 볼일이 없소.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #5188 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.0
  SAY #5189 /* ~당신은 엄밀한 시각으로 당신 작품을 평가한다. 그것은 잘 만들어진 무기는 아니다, 하지만 적어도 당신은 뭔가를 만들었다. ~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5194 /* ~이거면 시험을 통과할 수는 있을 것 같군.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5195 /* ~기능성은 있는 것 같군...~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5196 /* ~작은 위안이다. 열기는 압도적이다. 적어도 이 갓즈맨 시험은 끝났다. ~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5197 /* ~작은 위안이다. 열기는 압도적이다. ~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
Kill(Protagonist)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #5198 /* ~당신은 송곳칼을 만들었다. 당신은 자신의 작품을 감상하기 위해 용광로에서 물러선다.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5199 /* ~그것은 송곳칼이다. 시험을 통과하기에는 충분하다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5200 /* ~그것은 송곳칼이다. 잘 만들어졌으며, 기능성도 뛰어난 듯하다. ~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5201 /* ~열기는 너무나도 격렬하다. 시험은 끝났으나, 대가를 치러야만 한다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5202 /* ~열기는 너무나도 격렬하다. 대가를 치러야만 한다.~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #5203 /* ~그건 정말 훌륭한 작품이다! 당신의 송곳칼은 기능성이 뛰어날 뿐만이 아니라, 균형이 완벽하게 잡혀 있으며 위협적으로 보인다. 수고했다. ~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5204 /* ~이것은 매우 유용할 것 같군. 켈도도 감탄할 거야! 빨리 화염 속에서 나가야겠군. ~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5205 /* ~이것은 앞으로의 시련에서 내게 도움이 될 것이다. 이제 빨리 화염 속에서 나가야겠군. ~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5206 /* ~열기는 너무나도 격렬하다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5207 /* ~열기는 너무나도 격렬하다. 움직일 수도... 숨쉴 수도...~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0
  SAY #5208 /* ~당신이 만든 망치는 쇳덩어리와 별 차이가 없다. 간신히 기능은 할 것 같다.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5209 /* ~내겐 이 정도면 충분해. 돌아가서 그것을 켈도에게 보여줘야겠군. ~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PSledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5210 /* ~그 고생을 했는데 고작 이런 고철 덩어리라니. 천상의 신들이어! 어쨌든 여기서 빨리 나가야겠군.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5211 /* ~열기는 가히 압도적이다. 적어도 시험은 끝났다. ~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5212 /* ~열기는 가히 압도적이다.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.1
  SAY #5213 /* ~보라! 그것은 대장간용 쇠망치다... 당신이 지금까지 본 대장간용 쇠망치들과 아무런 차이가 없는 듯하다.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5214 /* ~훌륭하군. 켈도도 만족하겠지. 이제 내가 용광로를 쓸 일은 당분간 없겠군.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5215 /* ~이 정도면 충분하다. 사람들 머리를 깨부술 때가 왔다. 어쨌든 이제 내가 용광로를 쓸 일은 당분간 없겠군.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5216 /* ~주조소의 열과 힘은 압도적이다. 하지만 적어도 망치의 완성과 함께 테스트는 끝났다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5217 /* ~주조소의 열과 힘은 압도적이다. ~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.2
  SAY #5218 /* ~이건 정말 멋진 대장간용 쇠망치다... 모양새도 좋고 균형도 제대로 잡혀 있으며, 당신 손에 꼭 맞는다.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5219 /* ~좋다. 이것을 켈도에게 보여주어야겠다... 그리고 이 망치는 적의 머리를 깨부수기 위해 내가 지니고 있는 것이 좋을 듯하다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5220 /* ~좋다. 이건 매우 편리할 것 같다. ~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5221 /* ~주조소의 순수한 힘은 압도적이다. 그리고 적어도 갓즈맨 테스트는 성공리에 끝났다."~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5222 /* ~주조소의 순수한 힘은 압도적이다.~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0
  SAY #5223 /* ~이걸 과연 도끼라 할 수 있는가? 망치에 더 가까운 것 같으나 적어도 날카로운 날은 달려 있다. 그러니 그냥 망치라고 하고 이쯤에서 끝내는 게 좋겠다.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5224 /* ~흠. 어쨌든 켈도가 제시한 조건은 충족시키는 것 같군.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5225 /* ~흠. 아마 고철로 팔 수 있을 것 같군.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5226 /* ~주조소의 용광로의 열과 힘은 도저히 막을 수가 없다. 그래도 이제 시험은 끝났다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5227 /* ~주조소의 용광로의 열과 힘은 도저히 막을 수가 없다. ~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #5228 /* ~이것은 우수한 작품이다. 상을 탈 정도는 아니나, 기능성이 있고 위력도 뛰어나다.~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5229 /* ~훌륭하군. 켈도도 틀림없이 감탄할 것이다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5230 /* ~유용한 정도면 충분하지, 살을 베고 뼈를 부수는 데 아무런 지장이 없을 테니.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5231 /* ~주조소의 숨막히는 검은 연기와 맹렬한 열기는 도저히 견딜 수가 없다. 하지만 적어도 시험은 끝났다. ~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5232 /* ~주조소의 숨막히는 검은 연기와 맹렬한 열기는 도저히 견딜 수가 없다.~ */ DO ~IncrementGlobal("Forge","GLOBAL",1)
GiveItemCreate("Ax",Protagonist,1,0,0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 14.2
  SAY #5233 /* ~약간의 장식만 추가하면 이 도끼는 최고의 전사에게 어울릴 걸작이 될 것이다. 이 도끼는 그만큼 훌륭하다,~ */
  IF ~  !HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5234 /* ~난 항상 내게 재능이 있다는 걸 알고 있었지. 이제 켈도에게 이 무기를 보여주고... 가능하다면 한 번 시험해 보는 것도 나쁘지 않겠군.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5235 /* ~이 도끼와 나는 함께 좋은 시간을 보내게 될 것 같다. 난 그냥 느낄 수가 있다.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  HPLT(Protagonist,1)
Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5236 /* ~그것은 훌륭한 작품이다. 불행히도 주조소의 열기는 더 이상 견디기에는 너무나 강렬하다. ~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
  IF ~  HPLT(Protagonist,1)
!Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5237 /* ~불행히도 주조소의 열기는 더 이상 견디기에는 너무나 강렬하다. ~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 3.0
  SAY #5238 /* ~어떤 일부터 시작하겠는가?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5239 /* ~집게를 준비한다.~ */ GOTO 26
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5240 /* ~모루를 망치로 내려친다.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5241 /* ~철광석을 집는다. ~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5242 /* ~집게로 철광석을 집어 용광로의 화염 속에 넣고 달군다.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5243 /* ~철광석을 모루 위에 올려놓고 망치로 내려친다.~ */ GOTO 30
  IF ~~ THEN REPLY #5244 /* ~용광로에서 물러선다.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #5249 /* ~당신은 집게를 손에 꽉 쥔다. 당신 몸에서는 땀이 비오듯 쏳아진다. 이제 어떤 일을 하겠는가?~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5250 /* ~모루를 망치로 내려친다.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5251 /* ~집게로 철광석을 집어 용광로의 화염 속에 넣고 달군다.~ */ GOTO 29
  IF ~  PartyHasItem("Fhammer")
PartyHasItem("IOre")
~ THEN REPLY #5252 /* ~철광석을 모루 위에 올려놓고 망치로 내려친다.~ */ GOTO 30
  IF ~~ THEN REPLY #5253 /* ~용광로에서 물러선다.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0 27.1 28.0
  SAY #5254 /* ~당신은 아무 것도 없는 모루를 망치로 잠시 두들긴다, 그러자 쇠가 쇠에 부딪치는 소리가 사방에 울려 퍼진다. 뜨겁고 힘든 일이다. 땀도 난다. 이제는 어쩔 건가?~ */
  IF ~  PartyHasItem("Tongs")
~ THEN REPLY #5255 /* ~집게를 준비한다.~ */ GOTO 26
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5256 /* ~모루를 망치로 내려친다.~ */ GOTO 27
  IF ~  PartyHasItem("IOre")
~ THEN REPLY #5257 /* ~철광석을 집는다. ~ */ GOTO 28
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5258 /* ~집게로 철광석을 집어 용광로의 화염 속에 넣고 달군다.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5259 /* ~철광석을 모루 위에 올려놓고 망치로 내려친다.~ */ GOTO 30
  IF ~~ THEN REPLY #5260 /* ~용광로에서 물러선다.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2 27.2
  SAY #5261 /* ~당신은 철광석을 양손으로 쥔다. 당신이 서 있는 곳에서는 용광로의 열이 쇠도 녹일 정도다 - 그것은 거의 당신 피부를 태울 지경이다. 당신이 방화 장비를 착용하고 있다는 건 다행한 일이다. 이제 어쩔 건가?"~ */
  IF ~  PartyHasItem("FHammer")
~ THEN REPLY #5262 /* ~모루를 망치로 내려친다.~ */ GOTO 27
  IF ~  PartyHasItem("Tongs")
PartyHasItem("IOre")
~ THEN REPLY #5263 /* ~철광석을 불 속에 넣고 집게로 붙들고 있는다.~ */ GOTO 29
  IF ~  PartyHasItem("FHammer")
PartyHasItem("IOre")
~ THEN REPLY #5264 /* ~철광석을 모루 위에 올려놓고 망치로 내려친다.~ */ GOTO 30
  IF ~~ THEN REPLY #5265 /* ~철광석을 불 속에 넣고 맨손으로 붙들고 있는다.~ */ GOTO 31
  IF ~  CheckStatGT(Protagonist,64,RESISTFIRE)
~ THEN REPLY #5266 /* ~철광석을 불 속에 넣고 맨손으로 붙들고 있는다.~ */ GOTO 45
  IF ~~ THEN REPLY #5267 /* ~용광로에서 물러선다.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.3 26.1 27.3 28.1
  SAY #5268 /* ~철광석은 빠른 속도로 부드러워져 곧 작업할 수 있을 정도로 부드러워진다. 당신 피부는 땀으로 미끈미끈해진다. ~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #5269 /* ~부드러워진 철광석을 용광로에 넣고 원하는 모양으로 만든다.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ GOTO 32
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #5270 /* ~내 망치! 이 작업에 필요한 망치를 구하는 걸 잊었군! 곧 돌아오겠소!~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
  IF ~~ THEN REPLY #5271 /* ~용광로에서 물러선다.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.4 26.2 27.4 28.2
  SAY #5272 /* ~당신은 차가운 철광석을 모루에 내려놓고 망치로 세게 친다. 그러나 철광석은 쓸모없는 작은 조각들로 부서질 뿐이다. 근처의 용광로에서 나오는 열은 타는 금속의 악취를 하늘로 올려 보내고 있다.~ */
  IF ~~ THEN REPLY #5273 /* ~용광로에서 물러선다.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.3
  SAY #5274 /* ~화염으로 인한 고통은 격렬하다. 철광석은 당신 손아귀에서 진흙처럼 부드러워지고 살이 타는 냄새가 코를 찌른다. 철은 당신 살에 달라붙고 당신은 고통 때문에 기절한다.~ */
  IF ~~ THEN REPLY #5276 /* ~의식을 잃는다.~ */ DO ~DestroyPartyItem("IOre",FALSE)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 33.3 34.3 35.3
  SAY #5275 /* ~어떤 것을 만들겠는가?~ */
  IF ~~ THEN REPLY #5277 /* ~작고 위험한 것: 송곳칼!~ */ GOTO 33
  IF ~~ THEN REPLY #5278 /* ~양손용 망치.~ */ GOTO 34
  IF ~~ THEN REPLY #5279 /* ~전투용 도끼.~ */ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #5281 /* ~송곳칼... 빠르고 사용하기 쉬운 무기 - 그리고 당신을 이 화염 지옥으로부터 더 빨리 탈출시켜 줄 무기. 정말로 송곳칼을 만들겠는가?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5282 /* ~그렇소.~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5283 /* ~그렇소.~ */ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5284 /* ~그렇소.~ */ GOTO 38
  IF ~~ THEN REPLY #5285 /* ~아니오. 차라리 다른 걸 만들겠소.~ */ GOTO 32
  IF ~~ THEN REPLY #5286 /* ~아니오. 이제 용광로에는 볼일이 없소.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #5287 /* ~망치... 빠르게 만들 수 있는 무기, 즉 당신을 이 사우나실로부터 빨리 탈출시켜 줄 무기. 정말로 망치를 만들겠는가?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5288 /* ~그렇소.~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5289 /* ~그렇소.~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5290 /* ~그렇소.~ */ GOTO 41
  IF ~~ THEN REPLY #5291 /* ~아니오. 차라리 다른 걸 만들겠소.~ */ GOTO 32
  IF ~~ THEN REPLY #5292 /* ~아니오. 이제 용광로에는 볼일이 없소.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.2
  SAY #5293 /* ~도끼는 만드는 데 시간이 걸린다. 그리고 그 동안 당신은 엄청 불편하겠지만 적어도 타 죽을 정도는 아니다. 정말 도끼를 만들겠는가?~ */
  IF ~  CheckStatLT(Protagonist,10,INT)
~ THEN REPLY #5294 /* ~그렇소.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,9,INT)
CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #5295 /* ~그렇소.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #5296 /* ~그렇소.~ */ GOTO 44
  IF ~~ THEN REPLY #5297 /* ~아니오. 차라리 다른 걸 만들겠소.~ */ GOTO 32
  IF ~~ THEN REPLY #5298 /* ~아니오. 이제 용광로에는 볼일이 없소.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #5302 /* ~당신은 엄밀하게 당신 작품을 평가한다. 그것은 잘 만들어진 무기는 아니다, 하지만 적어도 당신은 뭔가를 만들었다. ~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5303 /* ~이거면 시험을 통과할 수는 있을 것 같군.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5304 /* ~기능성은 있는 것 같군...~ */ DO ~GiveItemCreate("PStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.1
  SAY #5305 /* ~당신은 송곳칼을 만들었다. 당신은 자신의 작품을 감상하기 위해 용광로에서 물러선다.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5306 /* ~그것은 송곳칼이다. 시험을 통과하기에는 충분하다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5307 /* ~그것은 송곳칼이다. 잘 만들어졌으며, 기능성도 뛰어난 듯하다. ~ */ DO ~GiveItemCreate("Stiletto",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2
  SAY #5308 /* ~그건 정말 훌륭한 작품이다! 당신의 송곳칼은 기능성이 뛰어날 뿐만이 아니라, 균형이 완벽하게 잡혀 있으며 위협적으로 보인다. 수고했다. ~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5309 /* ~이것은 매우 유용할 것 같군. 켈도도 감탄할 거야! 빨리 화염 속에서 나가야겠군. ~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5310 /* ~이것은 앞으로의 시련에서 내게 도움이 될 것이다. 이제 빨리 화염 속에서 나가야겠군. ~ */ DO ~GiveItemCreate("QStlo",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.0
  SAY #5311 /* ~당신이 만든 망치는 쇳덩어리와 별 차이가 없다. 간신히 기능은 할 것 같다.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5313 /* ~내겐 이 정도면 충분해. 돌아가서 그것을 켈도에게 보여줘야겠군. ~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5312 /* ~그 고생을 했는데 고작 이런 고철 덩어리라니. 천상의 신들이어! 어쨌든 여기서 빨리 나가야겠군.~ */ DO ~GiveItemCreate("Psledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.1
  SAY #5314 /* ~보라! 그것은 대장간용 쇠망치다... 당신이 지금까지 본 대장간용 쇠망치들과 아무런 차이가 없는 듯하다.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5315 /* ~훌륭하군. 켈도도 만족하겠지. 이제 내가 용광로를 쓸 일은 당분간 없겠군.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5316 /* ~이 정도면 충분하다. 사람들 머리를 깨부술 때가 왔다. 어쨌든 이제 내가 용광로를 쓸 일은 당분간 없겠군.~ */ DO ~GiveItemCreate("Sledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.2
  SAY #5317 /* ~이건 정말 멋진 대장간용 쇠망치다... 모양새도 좋고 균형도 제대로 잡혀 있으며, 당신 손에 꼭 맞는다.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5318 /* ~좋다. 이것을 켈도에게 보여주어야겠다... 그리고 이 망치는 적의 머리를 깨부수기 위해 내가 지니고 있는 것이 좋을 듯하다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5319 /* ~좋다. 이건 매우 편리할 것 같다. ~ */ DO ~GiveItemCreate("Qsledge",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 35.0
  SAY #5320 /* ~이걸 과연 도끼라 할 수 있는가? 망치에 더 가까운 것 같으나 적어도 날카로운 날은 달려 있다. 그러니 그냥 망치라고 하고 이쯤에서 끝내는 게 좋겠다.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5321 /* ~흠. 어쨌든 켈도가 제시한 조건은 충족시키는 것 같군.~ */ DO ~SetGlobal("G_Test1","GLOBAL",3)
GiveItemCreate("PAx",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5322 /* ~흠. 아마 고철로 팔 수 있을 것 같군.~ */ DO ~GiveItemCreate("Pax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 35.1
  SAY #5323 /* ~이것은 우수한 작품이다. 상을 탈 정도는 아니나, 기능성이 있고 위력도 뛰어나다.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5324 /* ~훌륭하군. 켈도도 틀림없이 감탄할 것이다.~ */ DO ~SetGlobal("G_Test1","GLOBAL",4)
GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5325 /* ~유용한 정도면 충분하지, 살을 베고 뼈를 부수는 데 아무런 지장이 없을 테니.~ */ DO ~GiveItemCreate("Ax",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 35.2
  SAY #5326 /* ~약간의 장식만 추가하면 이 도끼는 최고의 전사에게 어울릴 걸작이 될 것이다. 이 도끼는 그만큼 훌륭하다,~ */
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5327 /* ~난 항상 내게 재능이 있다는 걸 알고 있었지. 이제 켈도에게 이 무기를 보여주고... 가능하다면 한 번 시험해 보는 것도 나쁘지 않겠군.~ */ DO ~SetGlobal("G_Test1","GLOBAL",5)
GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
  IF ~  !Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #5328 /* ~이 도끼와 나는 함께 좋은 시간을 보내게 될 것 같다. 난 그냥 느낄 수가 있다.~ */ DO ~GiveItemCreate("AxQual",Protagonist,1,0,0)
IncrementGlobal("Forge","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.4
  SAY #5329 /* ~당신의 천부적인 화염에 대한 내성은 당신으로 하여금 철광석이 부드러워질 때까지 그것을 당신은 양손으로 불 속에서 쥐고 있을 수 있게 해준다. 다른 대장장이들은 쇳물이 당신 손에서 뚝뚝 떨어지는 것을 경외에 찬 눈으로 바라보고 있다. 불행히도 당신 철광석은 모두 녹아 없어졌다.~ */
  IF ~~ THEN REPLY #5330 /* ~떠난다.~ */ DO ~DestroyPartyItem("IOre",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("G_Test1","GLOBAL",0)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 46 // from:
  SAY #5331 /* ~당신은 용광로에 다가간다. 열은 엄청나다. 어떻게 할 것인가?~ */
  IF ~  !PartyHasItem("LApron")
CheckStatLT(Protagonist,20,RESISTFIRE)
~ THEN REPLY #5332 /* ~용광로를 사용한다.~ */ GOTO 2
  IF ~  PartyHasItem("LApron")
~ THEN REPLY #5333 /* ~용광로를 사용한다.~ */ GOTO 3
  IF ~  !PartyHasItem("LApron")
CheckStatGT(Protagonist,19,RESISTFIRE)
~ THEN REPLY #5334 /* ~용광로를 사용한다.~ */ GOTO 3
  IF ~~ THEN REPLY #5335 /* ~뒤로 물러선다.~ */ EXIT
END
