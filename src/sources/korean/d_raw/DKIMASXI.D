// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIMASXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIMASXI~

IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2941 /* ~이 야성적인 티플링 여자는 당신의 시선에 성난 얼굴로 응수한다. 그녀는 거의 알몸이나 마찬가지며, 그녀가 자신의 문신투성이인 몸에 걸친 것이라고는 가는 가죽끈, 검은색 천으로 만든 브래지어, 그리고 호신용이라기보다는 장식용인 어깨받이뿐이다. 그녀의 삐쭉한 머리는 그녀의 염소 같은 다리에 난 털과 마찬가지로 청동빛이 감도는 하얀색이며, 그녀의 귀, 코, 입술, 그리고 이마에는 수많은 은제 고리가 걸려 있다. 그녀가 목에 걸고 있는 목걸이에는 "살무사의 혀 키마스사이"라는 명패가 달려 있다.~ */
  IF ~~ THEN REPLY #2942 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41630 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41579 /* ~키마스사이는 이빨을 드러내며 당신을 노려본다. "넌 대체 뭘 보고 있는 거야, 이 찌그러진 깡통 같은 자식아!~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 434
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41643 /* ~"이보시오, 질문할 것들이 좀 있소."~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41644 /* ~"별로 대단치 않군. 안녕히 계시오."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41645 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY #41580 /* ~그녀는 모트를 조소한 후, 원래는 몸이 있어야 하는 그의 해골 아래의 공간을 내려다본다. "거시기도 없는 죽은 놈치고는... 꽤 신랄하군."~ */
  IF ~~ THEN REPLY #41721 /* ~"두 사람 다 그만하시오."~ */ EXTERN ~DMORTE~ 435
  IF ~~ THEN REPLY #41722 /* ~그들이 계속 옥신각신하도록 내버려 둔다.~ */ EXTERN ~DMORTE~ 436
END

IF ~~ THEN BEGIN 3 // from:
  SAY #41581 /* ~"진드기?! 이 부근에서 짜증스런 벌레라곤 *너*밖에 없어!" 그녀는 갑자기 당신 쪽으로 돌아선다. "이봐, 나랑 얘기를 하러 온 거야 뭐야?"~ */
  IF ~~ THEN REPLY #41723 /* ~"'뭐야?' 그 외에 내가 당신과 뭘 할 수가 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #41724 /* ~"그렇소... 물어볼 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #41725 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 1.3 5.2 8.2 9.3 10.3 12.2 14.1 15.1 16.1 21.2 21.3
  SAY #41582 /* ~그녀는 눈알을 부라린다. "그럼 꺼져!"~ */
  IF ~~ THEN REPLY #41726 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #41583 /* ~"무슨 생각을 하고 있는 거지, 이 염병할 해골바가지야? 어디 말해봐, 내가 너에게 '노'라고 해야 할 이유를 대 봐."~ */
  IF ~~ THEN REPLY #41727 /* ~"당신은 손님들을 위해 어떤 일을 하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #41728 /* ~"물어볼 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #41729 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41584 /* ~"나는 학대의 실천자야."~ */
  IF ~~ THEN REPLY #41730 /* ~"무슨 뜻이오?"~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 7
  IF ~~ THEN REPLY #41731 /* ~"다른 질문이 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #41732 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #41585 /* ~"직접 보여주지." 그녀는 손으로 당신 따귀를 때리려고 한다, 하지만 당신은 간신히 피한다. 키마스사이는 노골적으로 입을 삐죽거린 후 얼굴을 찡그린다. "제기랄."~ */
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41733 /* ~"헌데... 여기 있는 모트의 입버릇이 더 험해지도록 가르칠 수 있겠소?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #41734 /* ~"난 동물과의 잡종은 반사신경이 더 발달되어 있을 거라고 생각했는데 ."~ */ GOTO 8
  IF ~~ THEN REPLY #41735 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #41736 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #41586 /* ~그녀는 회의적인 표정을 짓는다. "네가 *생각*을 할 수 있다고? 허. *난* 반 좀비는 반사신경이 더 느리다고 생각했었는데."~ */
  IF ~~ THEN REPLY #41737 /* ~"당신이 잘못 생각했소... 아마 그런 일이 자주 일어나는 모양이오."~ */ GOTO 9
  IF ~~ THEN REPLY #41738 /* ~"이보시오, 질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #41739 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #41587 /* ~"너 참 *상상*을 많이 하는 모양이군. 자기가 죽도록 추하게 생기지 않았다고 상상하고, 여자들이 너에게 신경을 쓴다고 상상하고... 그리고 내 가슴을 쳐다보지 마!" 당신은 그녀의 마지막 말에 다소 놀란다, 왜냐하면 당신은 보고 있지 않았기 때문이다.~ */
  IF ~~ THEN REPLY #41740 /* ~"무슨 얘기를 하는 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #41741 /* ~"아니 그것들이 *그거*였단 말이오? 난 그것들이 일종의 작은 악성 종양이라고 생각했는데."~ */ GOTO 12
  IF ~~ THEN REPLY #41742 /* ~"이보시오, 질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #41743 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41588 /* ~"잘도 그렇겠다. 보고 있지 않았다고? 꼴사납고 음탕한 시체 같으니... 넌 대체 뭐가 잘못 된 거야? 젖가슴을 본 적도 없는 거야?"~ */
  IF ~~ THEN REPLY #41744 /* ~"난 그것들을 보고 있지 않았소. 당신은 미친 여자처럼 구는군..."~ */ GOTO 11
  IF ~~ THEN REPLY #41745 /* ~"아니 그것들이 *그거*였단 말이오? 난 그것들이 일종의 작은 악성 종양이라고 생각했는데."~ */ GOTO 12
  IF ~~ THEN REPLY #41746 /* ~"이보시오, 질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #41747 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #41589 /* ~키마스사이는 눈알을 부라린 후 팔짱을 끼고 입술을 오므린다. "넌 모드론만큼이나 재미가 없군. 꺼져, 넌 이 주변의 보통 계집들이나 상대하는 게 좋을 거야."~ */
  IF ~~ THEN REPLY #41748 /* ~"기다리시오, 질문할 것들이 좀 있소."~ */ GOTO 14
  IF ~~ THEN REPLY #41749 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 10.1
  SAY #41590 /* ~그녀는 한쪽 눈썹을 치켜 올린다. "이봐, 내꺼처럼 풍만한 유방도 알아보지 못하다니 넌 여자는 별로 상대해 보지도 못한 모양이군..."~ */
  IF ~~ THEN REPLY #41750 /* ~"아니 당신은 자신이 여자라는 거요? 그건 좀 지나친 확대 해석이 아니오?"~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41751 /* ~"이보시오, 질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #41752 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0 16.0
  SAY #41591 /* ~키마스사이는 할 말을 잃는다. 잠시 찡그린 그녀의 얼굴에 미소가 감돌 기미가 보이나, 이내 그녀의 얼굴은 바실리스크처럼 끔찍한 상판대기가 된다. "좋아, 내게 뭘 원하는 거야?"~ */
  IF ~~ THEN REPLY #41753 /* ~"질문에 대한 답을 원하오..."~ */ GOTO 22
  IF ~~ THEN REPLY #41754 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 3.1 5.1 6.1 7.2 8.1 9.2 10.2 11.0 12.1 21.0 41.0
  SAY #41592 /* ~티플링은 눈알을 부라린다. "넌 왜 내가 신경을 쓴다고 생각하는 거지? 내 등이나 핥지 그래?"~ */
  IF ~~ THEN REPLY #41755 /* ~"내 혓바닥은 그렇게 넓지가 않소. 그리고 난 내 입 속에 털이 들어가는 게 싫소."~ */ GOTO 15
  IF ~~ THEN REPLY #41756 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41593 /* ~"넌 입 안에서 내장 찌꺼기를 씹는 걸 좋아하는 것 같군, 이 입에서 똥 냄새 나는 정박아야."~ */
  IF ~~ THEN REPLY #41757 /* ~"그게 너와 키스하는 거나 마찬가지이기 때문이다, 이 더러운 변기 같은 년아." ~ */ GOTO 16
  IF ~~ THEN REPLY #41758 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41594 /* ~"날 *키스해?*" 그녀는 뭘 토하는 소리를 낸다. "너와 키스하느니 피고름에 입을 처박겠다. 어림도 없어!"~ */
  IF ~~ THEN REPLY #41759 /* ~"나한테 감사할 필요는 없소. 당신과 키스하고 싶어하는 놈이 존재한다는 사실에 대해 신들에게 감사해야 할 거요."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41760 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.0 22.2
  SAY #41595 /* ~그녀는 눈썹을 치켜 올린다. "그거 참 별난 부탁이군. 모르겠어, 그것은 지금도 입이 꽤 더러운 것 같은데..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 437
END

IF ~~ THEN BEGIN 18 // from:
  SAY #41596 /* ~"내 다리가 얼마나 멋진지 모르는 모양이군, 이 가련한 해골바가지야! 난 걷고, 달리고, 춤출 수가 있어... 넌 뭘 할 수가 있지? 떠다니면서 염소의 다리든 아니든 간에 다리가 있었으면 하고 한탄하는 것밖엔 없잖아!"

둘은 각자의 신랄한 혀를 놀려대며 서로 상대방에게 혹독한 욕설을 폭포수처럼 쏟아 붓는다. 
~ */
  IF ~~ THEN REPLY #41761 /* ~끝나기를 기다린다..~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41597 /* ~마침내 둘은 언쟁을 중단한다. 그리고 그들이 서로를 적의를 불태우며 노려봄에 따라 기괴한 적막감이 감돈다. 결국 티플링은 마지못해 모트를 인정한다. "너도 과히 나쁘진 않군. 쓸만해."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 438
END

IF ~~ THEN BEGIN 20 // from:
  SAY #41598 /* ~키마스사이는 눈을 가늘게 뜨고 모트를 본다. "너무 까불지마, *해골.*"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 439
END

IF ~~ THEN BEGIN 21 // from:
  SAY #41599 /* ~키마스사이는 당신에게로 고개를 돌린다. "그게 네가 원했던 것 전부야? 난 네 옆에서 필요 이상으로 시간을 보내긴 싫어."~ */
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41762 /* ~"실은 물어볼 것이 있소..."~ */ GOTO 14
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41763 /* ~"실은 물어볼 것이 있소..."~ */ GOTO 22
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41764 /* ~"그건 나도 마찬가지요. 안녕히 계시오."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41765 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41766 /* ~"그건 나도 마찬가지요. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41767 /* ~"난 당신에겐 이제 질렸소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 21.1 23.0 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 33.0 34.1 35.0 36.0 37.0 38.0 40.0 42.0 43.0
  SAY #41600 /* ~그녀는 짜증스러워 한다. "좋아. 어쨌든 물어보라고."~ */
  IF ~~ THEN REPLY #41768 /* ~"당신은 누구요?"~ */ GOTO 36
  IF ~~ THEN REPLY #41769 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 37
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41770 /* ~"여기 있는 모트의 입버릇이 더 험해지도록 가르칠 수 있겠소?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41771 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~매음굴의 창녀들 중 하나는 내게 침묵하는 창녀 에코에 대해서는 돌로라에게 물어보라고 권했다. 그녀의 의하면 돌로라는 에코의 옛 애인과 가끔 얘기를 하는데, 그는 에코가 말을 하지 않기 전부터 그녀를 알고 있었다고 한다. ~ */ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67845 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ JOURNAL #66744 /* ~매음굴의 창녀들 중 하나는 내게 침묵하는 창녀 에코에 대해서는 돌로라에게 물어보라고 권했다. 그녀의 의하면 돌로라는 에코의 옛 애인과 가끔 얘기를 하는데, 그는 에코가 말을 하지 않기 전부터 그녀를 알고 있었다고 한다. ~ */ GOTO 43
  IF ~  Global("Know_Kim_Kes","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41772 /* ~"나는 당신이 케사이-세리스의 이복 자매라고 들었소. 그게 사실이오?"~ */ GOTO 27
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41773 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ GOTO 25
  IF ~  Global("Nenny_Hint2","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #41774 /* ~"나는 당신이 최근 마릿사의 방에서 나오는 것이 목격되었다는 얘기를 들었소... 그 일과 그녀의 사라진 베일 사이에 무슨 연관이라도 있소?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",2)
~ GOTO 39
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41775 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 32
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41776 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41777 /* ~"혹시 래벌 퍼즐웰에 대해 아는 것이 없소?"~ */ JOURNAL #66742 /* ~매음굴의 창녀들 중 하나에게 래벌에 대해 묻자, 그녀는 이브즈와 얘기를 해보라고 권했다. 그녀의 말에 의하면 이브즈는 온갖 종류의 이야기를 수집하며, 아마 그녀의 레퍼토리 중에는 래벌의 얘기도 포함되어 있을 것이라고 한다.  ~ */ GOTO 24
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #41778 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 34
  IF ~~ THEN REPLY #41779 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.9
  SAY #41602 /* ~그녀는 능글맞게 웃는다. "쳇. 네 엉덩이 위에? 제기랄, 나도 몰라." 키마스사이는 헝클어진 머리카락을 펴려고 하나, 펴기가 무섭게 다시 엉망이 된다.~ */
  IF ~~ THEN REPLY #41780 /* ~"다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41781 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.10
  SAY #41603 /* ~"내가 그녀에 대해 뭘 아느냐고? 네 눈엔 내가 학자처럼 보여? 가서 보다 '유식한' 사람이니... 이브즈에게 물어봐. 그녀의 골통 속에 들어 있는 이야기 더미 안에는 래벌에 대한 이야기가 적어도 하나는 있을 거야. 아, 그리고 내친 김에 할버드 위에 쭈그려 앉으라고."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41782 /* ~"나는 케사이-세리스가 래벌의 딸이라고 들었소. 그게 사실이오?"~ */ GOTO 25
  IF ~~ THEN REPLY #41783 /* ~"다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41784 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.6 24.0
  SAY #41604 /* ~그녀는 어깨를 으쓱한다. "내가 아는 한은 그래." 그녀는 갑자기 의심쩍은 표정을 짓는다. "왜 물어보는 거지?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41785 /* ~"그녀에게 물어보았지만 그녀는 그걸 부정했소."~ */ GOTO 26
  IF ~~ THEN REPLY #41786 /* ~"그럼 관두시오. 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41787 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #41605 /* ~"그래서? 그게 너랑 무슨 관계라도 있는 거야?"~ */
  IF ~  Global("Know_Kim_Kes","AR0605",1)
~ THEN REPLY #41788 /* ~"또한 나는 당신이 케사이-세리스의 이복 자매라는 얘기도 들었소."~ */ GOTO 27
  IF ~~ THEN REPLY #41789 /* ~"그럴지도. 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41790 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.5 26.0
  SAY #41606 /* ~"그래, 난 그 애처럼 우는 오동통한 매부리코 몽상가와 관계가 있어. 아버지는 같지만 어머니는 달라. 그래서?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41791 /* ~"나는 케사이가 *정말* 래벌의 딸인지 확인하는 데 당신 도움을 받고 싶소."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",2)
~ JOURNAL #39475 /* ~케사이-세리스의 이복 자매인 독사의 혀 키마스사이는 나보고 케사이에게 그녀의 아버지를 불러 정말 그녀가 래벌 퍼즐웰의 딸인지 확인할 것을 요구하라고 말했다. ~ */ GOTO 28
  IF ~~ THEN REPLY #41792 /* ~"그럼 관두시오. 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41793 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #41607 /* ~키마스사이는 당신을 보며 얼굴을 찌푸린다. "보통 상황이라면 난 널 도와주기가 죽기보다 싫어, 하지만 이 일이 그 우쭐대는 음탕한 매춘부를 화나게 할 거라는 좋은 예감이 들어. 그년보고 아버지에게 직접 물어보라고 말해. 그는 강대한 캠비온이니까 그년이 부르면 올 거라고. 그러면 네가 원하는 답을 얻을 수 있을 거야."~ */
  IF ~~ THEN REPLY #41794 /* ~"캠비온?"~ */ GOTO 29
  IF ~~ THEN REPLY #41795 /* ~"고맙소." 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41796 /* ~"그럼 가서 그녀와 얘기를 하도록 하겠소. 고맙소, 키마스사이, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #41608 /* ~"그래, *캠비온.*" 키마스사이는 눈알을 부라린다. "내가 아까 말했을 때 못 들었어? 네 귓구멍은 뇌가 다 흘러 나간 후에 꽉 막혀 버린 거야?"~ */
  IF ~~ THEN REPLY #41797 /* ~"난 그게 뭔지 묻고 있는 거요,,,"~ */ GOTO 30
  IF ~~ THEN REPLY #41798 /* ~"아니오... 하지만 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41799 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41609 /* ~"세상에, 넌 정말 무지하군." 그녀는 혀를 차면서 슬프게 고개를 젓는다. "반 마족이야, 얼간아. 너랑 비슷하지... 넌 반 똥이지만. 어쨌든 네게선 똥 냄새가 나."~ */
  IF ~~ THEN REPLY #41800 /* ~"그래도 당신 피가 반 섞인 것보다는 한참 낫지, 키마스 사이."~ */ GOTO 31
  IF ~~ THEN REPLY #41801 /* ~"다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41802 /* ~"안녕히 계시오, 키마스사이."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #41610 /* ~"넌 이 키마스사이의 반만큼만 되도 원이 없을 걸... 설령 네 어깨 있을 자리에 염소 엉덩이가 대신 가서 붙더라도 네 흉터투성이 얼굴 보다는 백배 나을 거야."~ */
  IF ~~ THEN REPLY #41803 /* ~"그만 닥치시오, 키마스사이. 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41804 /* ~"내겐 이럴 시간이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.8
  SAY #41611 /* ~"벌통의 하수도에 가봐... 아니, 그건 냄새만 비슷한 건가? 실은 마릿사가 훔쳤어."~ */
  IF ~  GlobalGT("Marissa","GLOBAL",0)
~ THEN REPLY #41805 /* ~"마릿사? 틀림없소?"~ */ GOTO 33
  IF ~  Global("Marissa","GLOBAL",0)
~ THEN REPLY #41806 /* ~"마릿사... 나는 아직 그녀를 만나지 못했소. 당신 얘기가 틀림없소?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #41612 /* ~"아니, 하지만 난 네가 그녀의 방으로 쳐들어가 그녀를 화나게 만드는 바람에 그년이 네게 끔찍한 짓을 하기를 바라고 있어.~ */
  IF ~~ THEN REPLY #41807 /* ~"흠. 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41808 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.11
  SAY #41613 /* ~"그래, 그녀는 내 침대 아래에 숨어 있어. 가서 다 뒤져 보라고. 내가 널 걷어차진 않을 테니."~ */
  IF ~~ THEN REPLY #41809 /* ~몸을 구부려 침대 아래를 살펴본다.~ */ GOTO 35
  IF ~~ THEN REPLY #41810 /* ~"흠. 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41811 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41614 /* ~당신은 키마스사이의 침대 밑을 살펴본다. 물론 그 곳엔 아무도 없다. 당신은 그녀가 당신 뒤에 서 있는 것을 눈치챈다. "난... 이건 너무 쉽군. 일어나, 이 멍청한 시체야. 열 번째 학생 따윈 없어."~ */
  IF ~~ THEN REPLY #41812 /* ~"그럼 다른 질문을 하고 싶소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41813 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.0
  SAY #41615 /* ~"내 이름? 관심없어. 하지만 네 이름은 한 번 맞춰 보지: 네-똥구멍에-불침을-놓기-전에-어서-나가 흉터투성이."~ */
  IF ~~ THEN REPLY #41814 /* ~"다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41815 /* ~"그럼 개목걸이에 쓰여 있듯이 그놈이 카마스사이겠군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #41616 /* ~"넌 아니야, 그건 분명하지." 그녀는 능글맞게 웃는다. "나는 너보고 꺼지라고 할 가장 좋은 방법을 모색하고 있어."~ */
  IF ~~ THEN REPLY #41816 /* ~"다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41817 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #41617 /* ~"당근이지. 훨-후럼-그레이스는 벌통의 거리에서 불쌍한 고아 소녀들을 모아서는 너처럼 추악한 사내들과 성교를 하도록 키워. 그녀는 우리를 구타하고, 넝마만 입히고, 우리 피를 마시지. 정말 끔찍해."~ */
  IF ~~ THEN REPLY #41818 /* ~"알겠소... 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41819 /* ~"좋소... 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.7
  SAY #41618 /* ~키마스사이는 벌컥 화를 낸다. "누가 그런 헛고리를 지껄였-" 그녀는 갑자기 입을 다문다, 그리고 실눈을 뜨고 당신을 노려본다. "내가 그 곳에 갔다고 하더라도 난 그년의 더러운 베일은 가져가지 않았어... 원한다면 내 방을 뒤져 보라고. 하지만 만약 네가 내 바지를 킁킁거리는 게 발견되는 날에는 다시는 여기 못 들오게 할 거야."~ */
  IF ~~ THEN REPLY #41820 /* ~"세상에 *어느* 미친 놈이 당신 바지 냄새를 맡으려 하겠소?"~ */ JOURNAL #66514 /* ~나는 카마스사이에게 그녀가 마릿사의 방에서 몰래 나오다가 들킨 일에 대해서 물었으나, 그녀는 진홍색 베일을 가져간 일이 없다고 부인했다. 그녀는 그녀의 방에도 도둑이 들었다고 주장했다.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #41619 /* ~"몰라. 하지만 벌써 여러 벌 도둑맞았어. 쇠못이 달린 내가 제일 좋아하는 가죽 브래지어도 말이야," 그녀는 화가 나는 듯 흥* 소리를 낸다.~ */
  IF ~~ THEN REPLY #41822 /* ~"흠. 다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41823 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN BEGIN 41 // from:
  SAY #41620 /* ~"이런 이게 누군가. 언제 봐도 못생겼군. 나한테 학대를 더 받으려고 온 거야?"~ */
  IF ~~ THEN REPLY #41824 /* ~"아니오, 질문할 것이 좀 있을 뿐이오..."~ */ GOTO 14
  IF ~~ THEN REPLY #41825 /* ~"실은 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN BEGIN 42 // from:
  SAY #41621 /* ~"오, 또 *너*로군. 내가 그렇게 그리웠니?"~ */
  IF ~~ THEN REPLY #41826 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41827 /* ~"그냥 지나던 길이었소, 키마스사이. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.3 22.4
  SAY #41622 /* ~"뭐, 그 에코란 계집 말이야? 그녀에 대해선 아무 것도 몰라. 그녀하고는 말하지 마. 왜냐고? 대답도 못하잖아. 그녀에 대해선 썰렁한 돌로라에게 물어봐... 그녀가 에코가 아직 말을 할 수 있을 때 사랑했던 놈하고 바둑을 두는 걸 본 적이 있는 것 같아."~ */
  IF ~~ THEN REPLY #41828 /* ~"다른 질문이 있소..."~ */ GOTO 22
  IF ~~ THEN REPLY #41829 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
