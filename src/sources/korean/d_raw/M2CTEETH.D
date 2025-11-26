// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : M2CTEETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~M2CTEETH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7093 /* ~당신은 잉그레스의 이빨들을 살펴본다. 당신은 그것들이 상아색 벌레들과 흡사하다는 생각을 떨쳐 버릴 수가 없다... 당신은 그들이 마치 무슨 명령이라도 기다리는 듯 당신을 기대하는 눈으로 바라보고 있다는 느낌을 받는다. ~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66829 /* ~"나는 네가 적에게 관통 대미지를 입히길 바란다."~ */ DO ~TransformPartyItem("ICTeeth","IPTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66830 /* ~"나는 네가 적에게 타격 대미지를 입히길 바란다."~ */ DO ~TransformPartyItem("IPTeeth","ICTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66831 /* ~"나는 네가 적에게 관통 대미지를 입히길 바란다."~ */ DO ~TransformPartyItem("M1CTeeth","M1PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66832 /* ~"나는 네가 적에게 타격 대미지를 입히길 바란다."~ */ DO ~TransformPartyItem("M1PTeeth","M1CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66833 /* ~"나는 네가 적에게 관통 대미지를 입히길 바란다."~ */ DO ~TransformPartyItem("M2CTeeth","M2PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66834 /* ~"나는 네가 적에게 타격 대미지를 입히길 바란다."~ */ DO ~TransformPartyItem("M2PTeeth","M2CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("M3CTeeth")
~ THEN REPLY #66835 /* ~"나는 네가 적에게 관통 대미지를 입히길 바란다."~ */ DO ~TransformPartyItem("M3CTeeth","M3PTeeth",1,0,0)
~ GOTO 1
  IF ~  PartyHasItem("M3PTeeth")
~ THEN REPLY #66836 /* ~"나는 네가 적에게 타격 대미지를 입히길 바란다."~ */ DO ~TransformPartyItem("M3PTeeth","M3CTeeth",1,0,0)
~ GOTO 2
  IF ~  PartyHasItem("ICTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66837 /* ~"나는 네가 마법의 무기가 되기를 바란다."~ */ GOTO 3
  IF ~  PartyHasItem("IPTeeth")
ClassLevelGT("Morte",FIGHTER,4)
~ THEN REPLY #66838 /* ~"나는 네가 마법의 무기가 되기를 바란다."~ */ GOTO 3
  IF ~  PartyHasItem("M1CTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66839 /* ~"나는 네가 더 강력한 마법의 무기가 되기를 바란다."~ */ GOTO 4
  IF ~  PartyHasItem("M1PTeeth")
ClassLevelGT("Morte",FIGHTER,7)
~ THEN REPLY #66840 /* ~"나는 네가 더 강력한 마법의 무기가 되기를 바란다."~ */ GOTO 4
  IF ~  PartyHasItem("M2PTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66841 /* ~"나는 네가 네 능력으로 가능한 최고의 마법의 무기가 되기를 바란다."~ */ GOTO 5
  IF ~  PartyHasItem("M2CTeeth")
ClassLevelGT("Morte",FIGHTER,11)
~ THEN REPLY #66842 /* ~"나는 네가 네 능력으로 가능한 최고의 마법의 무기가 되기를 바란다."~ */ GOTO 5
  IF ~~ THEN REPLY #66856 /* ~이빨을 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2 0.4 0.6
  SAY #66845 /* ~이빨은 길어져 날카로운 엄니가 된다.~ */
  IF ~~ THEN REPLY #66858 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 0.5 0.7
  SAY #66846 /* ~이빨은 짧고 뭉툭해진다.~ */
  IF ~~ THEN REPLY #66859 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.8 0.9
  SAY #66847 /* ~이빨은 미친 듯이 덜거덕거리더니 갑자기 가라앉는다. 잠시 후 이빨에서는 부드러운 마법의 광채가 감돈다.~ */
  IF ~  PartyHasItem("ICTeeth")
~ THEN REPLY #66848 /* ~완료.~ */ DO ~TransformPartyItem("ICTeeth","M1CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("IPTeeth")
~ THEN REPLY #66849 /* ~완료.~ */ DO ~TransformPartyItem("IPTeeth","M1CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.10 0.11
  SAY #66850 /* ~이빨이 잠시 덜거덕거린 후 이빨의 마법의 광채가 한층 진해진다.~ */
  IF ~  PartyHasItem("M1CTeeth")
~ THEN REPLY #66851 /* ~완료.~ */ DO ~TransformPartyItem("M1CTeeth","M2CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M1PTeeth")
~ THEN REPLY #66852 /* ~완료.~ */ DO ~TransformPartyItem("M1PTeeth","M2CTeeth",1,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.12 0.13
  SAY #66853 /* ~이빨은 윙윙거리기 시작하나 이내 소리가 멈춘다. 이빨은 강대한 마력으로 빛나기 시작한다.~ */
  IF ~  PartyHasItem("M2CTeeth")
~ THEN REPLY #66854 /* ~완료.~ */ DO ~TransformPartyItem("M2CTeeth","M3CTeeth",1,0,0)
~ EXIT
  IF ~  PartyHasItem("M2PTeeth")
~ THEN REPLY #66855 /* ~완료.~ */ DO ~TransformPartyItem("M2PTeeth","M3CTeeth",1,0,0)
~ EXIT
END
