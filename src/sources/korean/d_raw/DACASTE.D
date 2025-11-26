// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DACASTE~

IF ~  Global("Acaste","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2875 /* ~이 늙은 굴의 부취는 멀리 떨어진 곳에서도 메스꺼울 정도로 지독하다. 그녀의 녹회색 피부에는 사반과 썩어 가는 상처들이 널려 있으며, 길쭉한 갈고리 손톱이 달린 그녀의 손가락들은 마른 피와 오물로 뒤덮여 있다. 벌레와 구더기가 우글거리는 긴 머리는 그녀의 무릎까지 내려오고 있다. 그녀의 머리는 흉포하게 웃고 있는 어금니 달린 입과 늘어진 혀를 제외하고는 그녀의 얼굴 대부분을 가리고 있다.~ */
  IF ~~ THEN REPLY #2876 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Acaste","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #20853 /* ~여자 굴을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20854 /* ~"쉿쉿. 이게 누구지? 맛있는 살코기에 좀 딱딱한 뼈군. 난 네 뼈로 내 이를 날카롭게 갈고, 네 골수로 살 좀 쪄야겠어. 쉿쉿."~ */
  IF ~  Global("Know_Acaste","GLOBAL",1)
~ THEN REPLY #20855 /* ~"당신이 아카스트가 틀림없군."~ */ GOTO 2
  IF ~~ THEN REPLY #20856 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #20857 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20858 /* ~"난 너 따위에게 아무 것도 되어 줄 필요가 없어, 고기와 뼈야. 말조심하지 않으면 넌 사지가 멀쩡하지 못할 줄 알라고."~ */
  IF ~~ THEN REPLY #20859 /* ~"내가 당신에게 어떤 말투로 얘기하던 그건 내 마음이오, 굴."~ */ GOTO 3
  IF ~~ THEN REPLY #20860 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #20861 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #20862 /* ~그녀는 당신이 미처 말을 끝내기도 전에 날카롭고 끔찍스럽게 조롱하듯 웃기 시작한다. "어리석은 고깃덩어리! 정말 모르는 모양이군! 난 굴의 여왕인 아카스트야! 내 소중한 황폐한 자들이 너를 한 점 남김없이 먹어 치우고, 네 골수조차 우리 배를 채우게 될 거야! 감히 네가 나에게 그렇게 말을 해?"~ */
  IF ~~ THEN REPLY #20863 /* ~"당신의 한심한 하이에나 떼들은 날 겁주지 못하오."~ */ GOTO 4
  IF ~~ THEN REPLY #20864 /* ~"그럼 관두시오. 질문할 것들이 좀 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #20865 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20866 /* ~그녀는 당신을 조소한다. "넌 운이 좋아, 운이 좋은 고기라고. 침묵의 왕의 명령 때문에 넌 운이 좋은 줄 알라고! 그렇지 않으면 넌 우리가 벌써 맛있게 먹어 치웠을 거야" 그녀는 당신 발에다 침을 뱉는다. "더 이상 고기 따위하곤 얘기하지 않겠어! 쉿쉿!"~ */
  IF ~~ THEN REPLY #20867 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1
  SAY #20868 /* ~"왜 내 앞에 만찬처럼 나타났지? 내 말에 대답해."~ */
  IF ~~ THEN REPLY #20869 /* ~"내겐 이름이 없소."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #20870 /* ~거짓말: "나는... 아단이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #20871 /* ~"우선 내 질문에 먼저 답하시오..."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1
  SAY #20872 /* ~"그럼 아카스트도 없어. 난 널 피가 흐르는 자라고 부르겠어. 내가 널 찢어 죽이기 전에 네게 이름과 유서가 남아 있기를 기도나 하라고."~ */
  IF ~~ THEN REPLY #20873 /* ~"피가 흐르는 자?"~ */ GOTO 14
  IF ~~ THEN REPLY #20874 /* ~"내 질문은..."~ */ GOTO 9
  IF ~~ THEN REPLY #20875 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 8.2
  SAY #20876 /* ~"아아단..." 그녀는 자신의 긴 회색 혀로 입술을 핥고, 그녀의 입 한쪽 구석에서는 누런 침이 뚝뚝 떨어진다. "그래..."~ */
  IF ~~ THEN REPLY #20877 /* ~"내 질문은..."~ */ GOTO 9
  IF ~~ THEN REPLY #20878 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #20879 /* ~"아니, 이제는 네가 내 질문에 대답해야 해, 아니면 내가 네 뼈로부터 네 가죽을 벗겨 먹어버릴 테니까! 너는 내 황폐한 자들의 좋은 먹이가 될 거야, 그래..."~ */
  IF ~~ THEN REPLY #20880 /* ~"혀를 함부로 놀리지 마시오, 굴, 아니면 내가 그걸 당신의 썩은 대가리로부터 뽑아낼 테니."~ */ GOTO 3
  IF ~~ THEN REPLY #20881 /* ~"내겐 이름이 없소."~ */ GOTO 6
  IF ~~ THEN REPLY #20882 /* ~거짓말: "나는... 아단이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.0 10.2 11.1 12.2 13.1 14.0 15.2 17.5 18.0 19.1 23.3 24.1 25.1 29.5 30.2 31.1 32.2 33.2 34.5 35.3 36.1 37.2 38.0 39.0 40.2 41.2 42.2
  SAY #20883 /* ~"말해봐! 아직 살아 있을 때 이 아카스트를 귀찮게 해봐! 물어봐!"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24203 /* ~"당신은 침묵의 왕이 해골에 불과하다는 걸 알고 있었소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20884 /* ~"당신은 침묵의 왕이 해골에 불과하다는 걸 알고 있었소?"~ */ GOTO 24
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #20885 /* ~"왜 나는 이 곳에 갇히게 된 거요?"~ */ GOTO 10
  IF ~~ THEN REPLY #20886 /* ~"여기는 어디요?"~ */ GOTO 11
  IF ~~ THEN REPLY #20887 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #20888 /* ~"이 곳에는 누가 거주하고 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #20889 /* ~"당신에게 어떤 특정한 인물에 대해 물어봅시다..."~ */ GOTO 34
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #20890 /* ~"혹시 이 부근에서 작은 청동 구체를 본 적이 없소?"~ */ GOTO 38
  IF ~~ THEN REPLY #20891 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #20892 /* ~아카스트는 얼굴을 찌푸린다. "쉿쉿! 그건 우리가 널 어두운 홀에서 잡지 않았기 때문이야. 그렇지 않았다면 넌 우리 밥이었어!" 그녀는 으르렁거리며 고개를 젓는다. "빌어먹을 침묵의 왕, 빌어먹을 그의 낡은 뼈들! 다른 자들이 잡은 고기는 그들의 일원이 될 때까지 여기서 지내게 된다고."~ */
  IF ~~ THEN REPLY #20893 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20894 /* ~"다른 자들? 이 곳에는 또 누가 거주하고 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #20895 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20896 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #20897 /* ~"침묵의 왕의 나라인 죽은 자의 왕국... 골수로 가득 찬 뼈들과 죽은 살코기의 무리들이 사는 곳..." 그녀는 배고픈 듯 손을 배에다 대고 입술을 혀로 핥는다. ~ */
  IF ~~ THEN REPLY #20898 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #20899 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20900 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.4 33.0
  SAY #20901 /* ~"우리는 싸우고, 이기고, 먹어. 너처럼 피가 흐르는 자는 결국에는 우리 먹이가 되지. 우리의 위장은 늘 참을 수 없는 공복감으로 불타오르고, 때문에 배가 차는 일은 없지. 우리는 늘 배가 고파... 빨리 죽어서 조용해지라고!" ~ */
  IF ~~ THEN REPLY #20902 /* ~"피가 흐르는 자들?"~ */ GOTO 14
  IF ~~ THEN REPLY #20903 /* ~"당신은 어떻게 해서 이 곳에 오게 되었소?"~ */ GOTO 13
  IF ~~ THEN REPLY #20904 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20905 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #20906 /* ~"지하 묘지를 돌아다니며 사냥하고 죽이지, 그리고 무덤과 관을 열어 뼈와 죽은 고기를 먹지. 이 곳에 와서는..." 아카스트는 눈을 깜박인다. "여기는... 이상한 곳이야... 아카스트는 약자들 사이에 머무르고 있어... 소리를 내고 말을 하면 대답을 하는 골수로 가득 찬 뼈들과 죽은 살코기의 무리들 사이에..."~ */
  IF ~~ THEN REPLY #20907 /* ~"그럼 왜 당신은 이러한 언데드들을 죽여서 먹어 치우지 않은 거요?"~ */ GOTO 15
  IF ~~ THEN REPLY #20908 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20909 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.0 12.0 17.3
  SAY #20910 /* ~"먹을 고깃덩어리..." 그녀는 자신의 거친 하얀 머리 사이로 당신을 뚫어지게 바라본다. "...너."~ */
  IF ~~ THEN REPLY #20911 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20912 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #20913 /* ~아카스트는 얼굴을 찌푸린다. "쉬운 먹이가 아냐. 그들은 다른 뼈나 죽은 살코기처럼 가만히 있지 않거든... 그들은 집단으로 싸우며 그들의 수는 많아. 양쪽 다 이기기는 어려워. 나뉘어 있으면 약하지만 합치면 아카스트만큼이나 강해. 그래서 우리는 기다리는 거지."~ */
  IF ~~ THEN REPLY #20914 /* ~"당신은 무엇을 기다리고 있는 거요?"~ */ GOTO 19
  IF ~~ THEN REPLY #20915 /* ~"그럼 당신은 기다리는 동안 뭘 하고 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #20916 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20917 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #20918 /* ~"우리는 그들을 위해 싸운다고 하지. 도둑질하러 오는 피가 흐르는 자들을 죽이고, 피가 흐르는 쥐들을 사냥해 죽여서 잡아먹고, 우리가 먹지 않은 부분을 남겨 '여기 오면 잡아먹는다'는 경고로 삼지. 그들은 우리가 이 곳만 지키도록 해. 하그림과 썩은 메리는 우리가 피가 흐르는 자들을 죽이는 건 허용되지 않는다고 해. ~ */
  IF ~~ THEN REPLY #20919 /* ~"누구-"~ */ GOTO 17
  IF ~~ THEN REPLY #20920 /* ~"난-"~ */ GOTO 17
  IF ~~ THEN REPLY #20921 /* ~"내가-"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 16.2
  SAY #20922 /* ~아카스트는 더 이상 당신의 존재를 인식하지 않는 듯하다. 그녀는 날카롭고 피비린내나는 이빨을 드러내며 불만을 토로한다. "그들이 미워! 피가 흐르는 자들이 먹고 싶어! 우린 배고파... 피가 흐르는 자들을 모두 죽여서 살을 물어뜯고, 뼈를 오독오독 씹어서 달콤하고 따끈한 골수를 빨아먹고 싶어!"~ */
  IF ~~ THEN REPLY #20923 /* ~"당신은 무엇을 기다리고 있는 거요?"~ */ GOTO 19
  IF ~~ THEN REPLY #20924 /* ~"하그림이 누구요?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #20925 /* ~"썩은 메리가 누구요?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #20926 /* ~"피가 흐르는 자들?"~ */ GOTO 14
  IF ~~ THEN REPLY #20927 /* ~"피가 흐르는 쥐들?"~ */ GOTO 18
  IF ~~ THEN REPLY #20928 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20929 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.4 29.4 41.0
  SAY #20930 /* ~"쫓으면 *찍찍* 소리를 내면서 어둡고 작은 터널로 도망가는 바람에 잡기가 힘들어. 구하기 힘든 스낵이지. 따끈한 고기일 뿐만 아니라 이빨로 깨물면 바삭바삭해. 대부분은 다른 곳에 있지만 우리가 가서 다 잡아먹을 거야. 그들을 잔뜩 먹으면 배고픔도 사라질 거야. 항상 빨갛고 맛있는 눈으로 늘 우릴 감시하고 있어. 먹고 싶어."~ */
  IF ~~ THEN REPLY #20931 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20932 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 17.0
  SAY #20933 /* ~"약점이 드러날 때를 기다리고 있지, 그래... 침묵의 왕이 얼마나 강한지, 이 아카스트보다 강한지 보려고 기다리는 거야. 죽은 살코기의 무리들이 골수로 가득 찬 뼈를 따르는 걸 그만 둘 때까지 기다리고 있지..."~ */
  IF ~~ THEN REPLY #20934 /* ~"그렇게 되면 당신은 어떻게 할거요?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ JOURNAL #20938 /* ~굴들의 지도자인 아카스트는 죽음의 왕국을 자신의 사냥터로 만들고 싶어 안달이다. 그녀는 그녀와 그녀의 굴들이 지하 묘지 전체를 누비며 만나는 모든 것들을 죽여서 잡아먹을 기회만을 호시탐탐 노리고 있다. ~ */ GOTO 20
  IF ~~ THEN REPLY #20935 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20936 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20937 /* ~"모두 다 *잡아먹을* 거야. 피가 흐르는 작고 털이 난 것들을 모두 죽이고, 마을에 사는 피가 흐르는 걸레 같은 것들을 모두 *잡아먹을* 거야. 지하 묘지는 먹을 것들로 가득해. 우린 배고파!" 그녀는 얘기를 하면서 점점 더 흥분하여, 이를 갈고 침을 마구 튀긴다...~ */
  IF ~~ THEN REPLY #20939 /* ~그녀가 고함치도록 내버려 둔다.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 21
  IF ~~ THEN REPLY #20940 /* ~그녀가 소리를 지르도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20941 /* ~"쉿쉿! 아카스트는 그들을 모두 다 죽일 거야! 어리석은 가축 같은 죽은 살코기들을 갈기갈기 찍을 거야! 느리고 약해서 찢어서 먹는 것 외에는 쓸모가 없어! 약한 뼈들은 모두 분질러 버려! 그들의 부서지기 쉬운 뼈로부터 골수를 빨아먹을 거야! 그들을 모두 죽여서 잡아먹을 거야!"~ */
  IF ~~ THEN REPLY #20942 /* ~그녀가 계속 고함치도록 내버려 둔다.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK2)
~ GOTO 22
  IF ~~ THEN REPLY #20943 /* ~그녀가 소리를 지르도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20944 /* ~"아카스트는 그들이 걷지도 말하지도 않는 그냥 가만히 있는 시체가 되기를 바래! 죽어서 조용해져 먹을 수 있도록 - 이빨로 씹어먹고, 해골을 부수어 뇌를 파먹고, 그 다음은 흉곽을 열어 피부 아래의 부드러운 부분을 먹을 거야!" 아카스트는 분노로 불타는 주먹으로 바닥을 내리쳐 타일을 깨부순다. ~ */
  IF ~~ THEN REPLY #20945 /* ~그녀가 계속 고함치도록 내버려 둔다.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 23
  IF ~~ THEN REPLY #20946 /* ~그녀가 소리를 지르도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20947 /* ~"놈들을 증오해! 늘 아카스트에게 안 된다고만 하지. 무덤 속을 기어다니며 쓰레기를 줍는 피가 흐르는 놈을 사냥하지 말아라! 피가 흐르는 쥐들을 죽이지 말아라! 그것들을 그냥 놔둬라, 사냥하지 말아라, 잡아먹지 말아라! 놈들을 모두 죽여 입을 다물도록 해야 해!" 그녀는 분노를 극한까지 폭발시킨 듯 갑자기 조용해진다, 그리고 그녀의 마지막 절규의 메아리가 어둠 속으로 사라져 간다.~ */
  IF ~~ THEN REPLY #20948 /* ~"내게 값진 물건을 주면 당신을 돕겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Acaste_1","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24204 /* ~"당신은 침묵의 왕이 해골에 불과하다는 걸 알고 있었소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20949 /* ~"당신은 침묵의 왕이 해골에 불과하다는 걸 알고 있었소?"~ */ GOTO 24
  IF ~~ THEN REPLY #20950 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20951 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 9.0 9.1 23.1 23.2 42.0 42.1
  SAY #20952 /* ~"뭐?" 아카스트는 눈을 가늘게 뜬다. "왕에 대해 뭐라고 말했지?"~ */
  IF ~~ THEN REPLY #20953 /* ~"침묵의 왕은 죽은 존재요. 그는 살아 있지 않소."~ */ GOTO 25
  IF ~~ THEN REPLY #20954 /* ~"아무 것도 아니오. 질문할 것들이 좀 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #20955 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20956 /* ~"그 얘기가 사실이야? 그는 조용하고 움직이지 않는 먹거리에 불과해?~ */
  IF ~~ THEN REPLY #20957 /* ~"틀림없소. 그는 보통 시체에 불과하오."~ */ JOURNAL #20959 /* ~나는 아카스트에게 침묵의 왕이 죽었다고 말해주었다. 그러자 그녀와 그녀가 거느리는 굴들은 죽은 자의 왕국의 지하 묘지를 공포의 도가니로 몰아넣기 시작했다. ~ */ GOTO 26
  IF ~~ THEN REPLY #61398 /* ~"실은... 아니오. 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #61399 /* ~"글쎄... 내가 틀렸을 지도 모르오. 안녕히 게씨오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20961 /* ~그녀는 이빨을 내밀며 끔찍스럽게 히죽 웃는다. 그녀는 천천히 길게 쉿 소리를 낸 후 절규한다: "*놈들을 모두 죽여! 이제 잡아먹어라!*"~ */
  IF ~~ THEN REPLY #20962 /* ~그의 공격에 대처한다.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #20963 /* ~도망친다.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #20964 /* ~아카스트는 으르렁거린다. "너... 조용한 자를 조용하게 만들어, 그가 움직이지 못하게 만들라고... 쉿쉿." 아카스트는 당신 주위를 돌며 당신을 조심스럽게 살핀다. "강해... 강한 피가 흐르는 자. 아카스트는 네가 지금 이 곳을 떠날 수 있도록 해주겠어..."~ */
  IF ~~ THEN REPLY #20965 /* ~"아니, 아직 아니오."~ */ GOTO 28
  IF ~~ THEN REPLY #20966 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #20967 /* ~아카스트는 다시 눈을 가늘게 뜬다. "넌 떠나, *당장* 떠나."~ */
  IF ~~ THEN REPLY #20968 /* ~"난 내가 원할 때 떠날 거요, 굴."~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #20969 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 9.5 10.1 11.0 30.1 31.0 32.0 33.1
  SAY #20970 /* ~"이 곳에는 많은 자들이 있지... 골수로 가득 찬 뼈들, 죽은 살코기들의 무리, 그리고 우리 황폐한 자들. 모두 침묵의 왕의 지배를 받고 있지..." 그녀는 역겨운 듯 침을 뱉는다. "...그가 우리에게 하라 하지 마라 명령을 하지. 그리고 작고 맛있는 피가 흐르는 쥐들이 있지..." 아카스트는 날카로운 손톱이 달린 손을 탐욕스럽게 비벼댄다. ~ */
  IF ~~ THEN REPLY #20971 /* ~"당신 동족에 대해서 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #20972 /* ~"뼈들에 대해 얘기해주시오."~ */ GOTO 30
  IF ~~ THEN REPLY #20973 /* ~"죽은 육신들의 무리에 대해 얘기해주시오."~ */ GOTO 31
  IF ~~ THEN REPLY #20974 /* ~"침묵의 왕에 대해 얘기해주시오."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20975 /* ~"피가 흐르는 쥐들?"~ */ GOTO 18
  IF ~~ THEN REPLY #20976 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20977 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1 35.0
  SAY #20978 /* ~"뼈들, 스켈레톤들. 약해. 여러 세기 동안 살아 이제는 지쳤고 *부서지기 쉽지.*" 그녀는 강조를 하려고 뼈를 하나 집어들어 두 동강을 낸다. "*약해.* 죽은 자들은 두려워하지 않아, 하지만 뼈들은 *두려워* 해. 죽어서 아카스트와 황폐한 자들에게 잡아먹히는 걸 *두려워* 해. *죽는* 게 두려워? *우린 이미 죽었다고!* *두려움*은 피가 흐르는 자들에게서나 나는 냄새야! *죽은 자들이 아니라!*"~ */
  IF ~~ THEN REPLY #20979 /* ~"황폐한 자들?"~ */ GOTO 33
  IF ~~ THEN REPLY #20980 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #20981 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20982 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2 35.1
  SAY #20983 /* ~"쉿쉿. 피가 흐르는 가축들처럼 소리를 내, 그리고 달콤한 썩은 육즙 냄새가 나지." 아카스트는 입술을 핥으며 이빨 사이의 침을 빨아먹는다. 그녀는 눈살을 찌푸린다. 그리고 나서 팔을 들고 비틀거리는 시늉을 한다. "대부분의 경우 *으으응 으응* 소리를 내면서 비틀비틀 일을 하지. *멍청한* 먹거리! 뇌가 반뿐인 *멍청한* 고깃덩어리!"~ */
  IF ~~ THEN REPLY #20984 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #20985 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20986 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 10.0 29.3 34.1
  SAY #20987 /* ~"조용한 게 아니라 *보이지 않는* 왕이야. 그는 명령을 하고 우리는 따르지. 골수로 가득 찬 뼈들과 죽은 살코기들의 무리는 그에게 무조건 복종해. 아카스트는 그를 보지 못했고 그의 말만 *들을* 뿐이지. 언젠가 난 그 자를 만날 거야... 그 자를 잡아먹을 거야. 그래. 아카스트는 강하고 조용한 자는 약해. 누가 주인인지 결판을 지을 거야, 그래."~ */
  IF ~~ THEN REPLY #20988 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #20989 /* ~"당신에게 어떤 특정한 인물에 대해 물어봅시다..."~ */ GOTO 34
  IF ~~ THEN REPLY #20990 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20991 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.0 30.0 37.0
  SAY #20992 /* ~"우리는 황폐한 자들이야. 아카스트와 그녀의 사랑스런 굴들, 그녀의 아이들... 늘 배고프지..."~ */
  IF ~~ THEN REPLY #20993 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #20994 /* ~"이 곳에는 또 어떤 자들이 거주하고 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #20995 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #20996 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 9.6 32.1 35.2 36.0 37.1 40.1 41.1
  SAY #20997 /* ~아카스트는 눈을 가늘게 뜨고 머리를 흔든다. "고깃덩이는 누구에 대해 알고 싶은 거지 ?"~ */
  IF ~~ THEN REPLY #20998 /* ~"바로 당신."~ */ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #20999 /* ~"침묵의 왕."~ */ GOTO 32
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #21000 /* ~"하그림."~ */ GOTO 35
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21001 /* ~"썩은 메리."~ */ GOTO 36
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21002 /* ~"소에고."~ */ GOTO 40
  IF ~~ THEN REPLY #21003 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 9
  IF ~~ THEN REPLY #21004 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.1 34.2
  SAY #21005 /* ~"골수." 아카스트는 자신의 갈리진 입술을 핥으며 흉악하게 웃는다. "늙은 골수... 하지만 골수야." 아카스트는 이글거리는 눈을 하고 으르렁거린다. "약한 뼈들과 죽은 살코기들의 무리만 아니었으면 놈하고 약한 뼈들을 모두 죽였을 거야."~ */
  IF ~~ THEN REPLY #21006 /* ~"뼈들?"~ */ GOTO 30
  IF ~~ THEN REPLY #21007 /* ~"죽은 육신들의 무리?"~ */ GOTO 31
  IF ~~ THEN REPLY #21008 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 34
  IF ~~ THEN REPLY #21009 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #21010 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 17.2 34.3
  SAY #21011 /* ~"살점이 붙은 *먹거리*야. 아카스트하고는 달리 힘이 세지 않아. 약한 죽은 여자 살코기야."~ */
  IF ~~ THEN REPLY #21012 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 34
  IF ~~ THEN REPLY #21013 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #21014 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.0
  SAY #21015 /* ~"나는 아카스트야! 굴들의 어머니이자 황폐한 자들의 여왕이야! 그래! 강하고 빠른 우리는 이 곳에서 사냥하며 *잡아먹어*..."~ */
  IF ~~ THEN REPLY #21016 /* ~"황폐한 자들?"~ */ GOTO 33
  IF ~~ THEN REPLY #21017 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 34
  IF ~~ THEN REPLY #21018 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #21019 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.7
  SAY #21020 /* ~아카스트는 고개를 젓는다, 그러자 그녀의 길고 하얀 머리에서 이들이 떨어진다. "아카스트는 많은 관을 열고 무덤을 파헤쳤지만 그런 건 보지 못했어."~ */
  IF ~~ THEN REPLY #21021 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #21022 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Acaste","GLOBAL",1)
~ THEN BEGIN 39 // from:
  SAY #21023 /* ~"쉿쉿! 고깃덩어리가 또 아카스트를 귀찮게 하려고 왔군!"~ */
  IF ~~ THEN REPLY #21024 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #21025 /* ~"안녕히 계시오, 아카스트."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.4
  SAY #21026 /* ~"먼지 속에서 자고 피가 흐른 쥐 같은 냄새가 나는 피가 흐르는 창백한 자 말이야? 난 그를 제일 먼저 먹을 거야!"~ */
  IF ~~ THEN REPLY #21027 /* ~"그에게서 피가 흐르는 쥐 냄새가 나오?"~ */ GOTO 41
  IF ~~ THEN REPLY #21028 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 34
  IF ~~ THEN REPLY #21030 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #21031 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21029 /* ~"쉿쉿. 하지만 어쨌든 그는 좋은 먹거리야. 먼지 냄새가 나긴 하지만 그의 창백한 피부 아래에는 먹음직한 피와 고기가 있어. 먹기 좋아."~ */
  IF ~~ THEN REPLY #21032 /* ~"피가 흐르는 쥐가 무엇이오?"~ */ GOTO 18
  IF ~~ THEN REPLY #21033 /* ~"다른 인물에 대해 물어봅시다..."~ */ GOTO 34
  IF ~~ THEN REPLY #21034 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #21035 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 23.0
  SAY #21036 /* ~"아카스트는 널 먹지 않겠다는 것 말고는 줄게 없어."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24205 /* ~"당신은 침묵의 왕이 해골에 불과하다는 걸 알고 있었소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #21037 /* ~"당신은 침묵의 왕이 해골에 불과하다는 걸 알고 있었소?"~ */ GOTO 24
  IF ~~ THEN REPLY #21038 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #21039 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
