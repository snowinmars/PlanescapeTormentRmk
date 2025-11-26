// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRADDO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRADDO~

IF ~  Global("Craddock","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22870 /* ~당신 시야에 입을 다문 채 눈살을 찌푸리며, 좁은 눈으로 주변을 살피고 있는, 덩치 큰 남자가 들어온다. 그는 무거운 짐이라도 들고 있는 것처럼 허리가 약간 굽었다. 그의 옷으로부터는 땀과 때의 불쾌한 냄새가 난다. ~ */
  IF ~~ THEN REPLY #22893 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #22894 /* ~그를 무시하고 시장을 누빈다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22871 /* ~사내는 당신을 내려다보고 눈살을 더욱 찌푸린다. "뭐야? 왜 여기서 어슬렁거리는 거지?"~ */
  IF ~~ THEN REPLY #22895 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22896 /* ~"당신이 크래독이오?"~ */ GOTO 3
  IF ~~ THEN REPLY #22897 /* ~"관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #22872 /* ~그는 투덜거린다. "거지나 개들하고 상대할 시간은 없어. 비켜."~ */
  IF ~  Global("Baen_Quest","GLOBAL",1)
~ THEN REPLY #22898 /* ~"당신이 크래독이오?"~ */ GOTO 3
  IF ~~ THEN REPLY #22900 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #22873 /* ~"그럴지도..." 그는 기억을 상기시키려는 듯 당신 얼굴을 살펴본다. "만약 그렇다면 무슨 용건이지?"~ */
  IF ~~ THEN REPLY #22901 /* ~"나는 심부름꾼 바엔의 메시지를 가지고 왔소. 그 내용은: "화물은 커스트에 세 번째 날에 도착해야만 하오. 만약 늦으면 벌금이 부과될 것이오."~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",2)
SetGlobal("Craddock","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #22902 /* ~"신경 쓸 것 없소. 나는 당신을 다른 사람으로 착각했소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22874 /* ~"이런 염병할! 그 얼간이들은 우리가 무슨 기적이라도 일으킬 수 있는 줄 아는 모양이지! 어쨌든 좋아. 어떻게 되든 간에 메시지는 제대로 전해받았으니 안심하라고." ~ */
  IF ~~ THEN REPLY #22903 /* ~"뭐가 문제요?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0
  SAY #22875 /* ~"주변을 둘러보라고!" 크래독은 고개를 끄덕여 시장의 노동자들을 가리킨 후 매서운 눈초리로 바라본다. "저 바보멍청이들은 지금도 간신히 제시간에 맞추어 일을 하는 형편인데 이제는 지금까지의 절반의 시간에 일을 마쳐야 하는 지경이 됐어!"~ */
  IF ~~ THEN REPLY #22906 /* ~"혹시 도움이 필요하시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #22907 /* ~"그거 안 됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #22876 /* ~"내게 뭐가 필요한지 말해주지 - 그건 내 부하들이 빠짐없이 일하러 나타나는 거야! 젤라이는 아침부터 보이질 않는데 나는 놈이 지금 당장 필요해."~ */
  IF ~~ THEN REPLY #22908 /* ~"젤라이? 그는 어디로 갔소?"~ */ GOTO 7
  IF ~~ THEN REPLY #22909 /* ~"그거 안됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #22877 /* ~"그 벌통산 불한당은 일할 생각은 않고 지금쯤 불타는 시체 바 근처에서 술에 만취해 뻗어 있을 거야. 쓸모없는 놈 같으니..."~ */
  IF ~~ THEN REPLY #22910 /* ~"당신을 위해 내가 가서 그를 찾아올 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #22911 /* ~"돈을 주겠다면 내가 가서 그를 찾아올 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22912 /* ~"그거 안됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #22878 /* ~"그래? 정말인가?" 크래독은 눈을 가늘게 뜨고 당신을 쳐다본다. "그런데 왜 그런 일을 하겠다는 거지?"~ */
  IF ~~ THEN REPLY #22914 /* ~"당신은 도움이 필요하오, 그렇지 않소. 해야될 일은 있고 당신에게는 그를 찾으러 갈 여유는 없는 것 같소. "~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #22916 /* ~"내가 그를 찾아올 수도 있지만 공짜로는 안 되겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Craddock_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #22915 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 8.1
  SAY #22879 /* ~크래독은 잠시 침묵한 후 고개를 끄덕인다. "그래... 젤라이를 찾아서 그 아무 데도 쓸모없는 주정뱅이보고 당장 오라고 전해. 그럼 수고비를 줄 테니까..." 그는 눈살을 찌푸린다. "...물론 놈을 찾아서 데려온 후에 말이야. 이제 그만 가봐!"~ */
  IF ~~ THEN REPLY #22917 /* ~"그가 '불타는 시체' 부근에 있을 거라고 했소? 그게 뭐요?"~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~크래독의 일군들 중 하나인 젤라이라는 이름의 주정뱅이가 농땡이를 부리고 있다. 크래독의 말로는 그가 불타는 시체 바 밖의 거리를 헤메고 있을 것이라고 한다. ~ */ GOTO 10
  IF ~~ THEN REPLY #22918 /* ~"좋소. 가서 그를 찾아오리다. 안녕히 계시오."~ */ DO ~SetGlobal("Craddock_Quest","GLOBAL",1)
~ JOURNAL #36030 /* ~크래독의 일군들 중 하나인 젤라이라는 이름의 주정뱅이가 농땡이를 부리고 있다. 크래독의 말로는 그가 불타는 시체 바 밖의 거리를 헤메고 있을 것이라고 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22880 /* ~"그 곳은 이 곳의 남동쪽에 있어. 남동쪽 문으로 나가서 동쪽으로 한 블록 정도 가라고. 그 술집 밖에는 주정뱅이들이 잔뜩 있으니까 쉽게 찾을 수 있을 거야. 젤라이도 아마 그 근방에 있을 테지."~ */
  IF ~~ THEN REPLY #22919 /* ~"좋소. 가서 그를 찾아보리다. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Craddock","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #22881 /* ~크래독이 보인다. 그는 처음 보았을 때보다 더 험상궂은 표정을 하고 있다... 그는 지금 당장이라도 폭발할 듯하다.~ */
  IF ~  Global("Craddock_Quest","GLOBAL",0)
~ THEN REPLY #22920 /* ~"당신은 바엔의 메시지 때문에 화가 난 것 같소. 그것에 무슨 문제라도 있었소?"~ */ GOTO 5
  IF ~  Global("Craddock_Quest","GLOBAL",2)
~ THEN REPLY #22921 /* ~"젤라이를 찾았소.~ */ GOTO 12
  IF ~  Global("Craddock_Quest","GLOBAL",3)
~ THEN REPLY #22922 /* ~"이제 젤라이는 없으니, 만약 일손이 부족하다면 내가 당신을 도울 수도 있소." ~ */ GOTO 16
  IF ~~ THEN REPLY #22923 /* ~크래독을 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #22882 /* ~"그런가?" 크래독은 주변을 둘러본다. "그럼 놈은 어디 있지?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22924 /* ~진실: "그는 당신이 가장 더러운 똥개이며, 엿이나 먹으라고 했소. 또한 그는 더 이상 당신을 위해 일하지 않겠다고 했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ JOURNAL #22699 /* ~나는 젤라이의 메시지를 크래독에게 문자 그대로 전했다... 크래독은 그 메시지를 받고 기분이 별로 좋지 않았다. 젤라이는 술에서 깬 후 자신이 한 말을 후회할 것 같다. ~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22946 /* ~진실: "그는 당신이 가장 더러운 똥개이며, 엿이나 먹으라고 했소. 또한 그는 더 이상 당신을 위해 일하지 않겠다고 했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Craddock_1","GLOBALLaw",1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22701 /* ~나는 젤라이의 메시지를 크래독에게 문자 그대로 전했다... 크래독은 그 메시지를 받고 기분이 별로 좋지 않았다. 그의 기분이 얼마나 나빴던지 모트가 그의 욕설로부터 새로운 욕들을 잔뜩  배울 수 있을 정도였다. 

~ */ GOTO 13
  IF ~~ THEN REPLY #22947 /* ~거짓말: "그는... 내게 자기 대신 일을 해달라고 부탁했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Craddock_1","GLOBALLaw",-1)
SetGlobal("Craddock_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22702 /* ~나는 젤라이를 찾아낸 후 크래독에게 가서 내가 그 대신 일을 하겠다고 했다. 그는 처음에는 회의적이었으나 결국 그렇게 하기로 합의했다. ~ */ GOTO 16
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #22883 /* ~크래독의 얼굴이 빨개진다, 그리고 그의 얼굴 표정은 마치 야수가 으르렁거리는 것 같다. "저주받을 후레자식 같으니! 다원 우주의 악마란 악마는 하나도 남김없이 놈을 쫓아다니며 괴롭히기를... " 그는 욕설, 협박, 그리고 젤라이의 가계에 대한 추측을 쉴새 없이 퍼붓는다... 가히 장관이다.~ */
  IF ~~ THEN REPLY #22950 /* ~"만약 도움이 필요하면 내가 그의 빈 자리를 메꾸어 줄 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22951 /* ~"나는 일거리가 필요하오. 임시로 젤라이의 일을 대신 해주고 돈을 받고 싶소."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22948 /* ~"어쨌든 그게 그가 한 말이오. 다른 용건이 없다면 내 보수를 받고 싶소..."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22952 /* ~"어... 그를 찾아준 일에 대해서는 돈을 주지 않아도 좋소. 그냥 지금 떠나도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22953 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #22884 /* ~크래독의 얼굴이 빨개진다, 그리고 그의 얼굴 표정은 마치 야수가 으르렁거리는 것 같다. "저주받을 후레자식 같으니! 다원 우주의 악마란 악마는 하나도 남김없이 놈을 쫓아다니며 괴롭히기를... " 그는 욕설, 협박, 그리고 젤라이의 가계에 대한 추측을 쉴새 없이 퍼붓는다... ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 227
END

IF ~~ THEN BEGIN 15 // from:
  SAY #22885 /* ~크래독은 그의 장광설을 상투적인 투덜거림으로 마무리짓는다. "염병할... 젤라이 녀석..."~ */
  IF ~~ THEN REPLY #22954 /* ~"만약 도움이 필요하면 내가 그의 빈 자리를 메꾸어 줄 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22955 /* ~"나는 일거리가 필요하오. 임시로 젤라이의 일을 대신 해주고 돈을 받고 싶소."~ */ GOTO 16
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22956 /* ~"어쨌든 그게 그가 한 말이오. 다른 용건이 없다면 내 보수를 받고 싶소..."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ GOTO 20
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22958 /* ~"어... 그를 찾아준 일에 대해서는 돈을 주지 않아도 좋소. 그냥 지금 떠나도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  !Global("Evil_Craddock_1","GLOBAL",1)
~ THEN REPLY #22960 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.2 12.2 13.0 13.1 15.0 15.1 20.0 20.1
  SAY #22886 /* ~크래독은 잠시 당신을 살펴본다. "당신이? 하! 말도 안돼..." 그는 갑자기 입을 다문다. "좋아... 당신이라면 해낼 수 있을지도 모르겠군. 하지만 쉬운 일이 아냐, 그리고 나 몰래 술을 마시면 국물도 없어..."~ */
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #22962 /* ~"알겠소... 어서 시작합시다."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(10)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,STR)
CheckStatLT(Protagonist,16,STR)
~ THEN REPLY #22963 /* ~"알겠소... 어서 시작합시다."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(20)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,15,STR)
~ THEN REPLY #22964 /* ~"알겠소... 어서 시작합시다."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Craddock_Quest","GLOBAL",4)
GivePartyGold(30)
~ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #22887 /* ~작업은 오랫동안 계속되었다, 하지만 일이 끝난 후에도 당신에게는 전혀 지친 기색이 없다. 당신이 돌아오자 크래독은 투덜거린다. "잘 했어... 여기 당신 일당이 있으니 받으라고." 그는 당신에게 한 줌의 동전을 던져 준다. "이제 그만 꺼져. 우린 더 이상 당신 도움이 필요없으니까."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22965 /* ~"젤라이의 메시지를 당신에게 전해준 데 대한 보수는?"~ */ GOTO 21
  IF ~~ THEN REPLY #22966 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #22888 /* ~작업은 오랫동안 계속되었다, 하지만 일이 끝난 후에도 당신에게는 전혀 지친 기색이 없다... 다른 노동자들은 당신이 일하는 속도와 당신이 한 번에 나를 수 있는 짐의 양에 경탄을 금치 못한다. 당신이 돌아오자 크래독은 투덜거린다. "당신 어깨는 바리아우르만큼 튼튼한 모양이군. 젤라이보다 두 배는 더 쓸모가 있어... 여기 당신 일당이 있으니 받으라고." 그는 당신에게 한 줌의 동전을 던져 준다. 모두 합해서 스무 닢이다. "이제 그만 꺼져. 우린 더 이상 당신 도움이 필요없으니까."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22967 /* ~"젤라이의 메시지를 당신에게 전해준 데 대한 보수는?"~ */ GOTO 21
  IF ~~ THEN REPLY #22968 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #22889 /* ~작업은 오랫동안 계속되었다, 하지만 일이 끝난 후에도 당신에게는 전혀 지친 기색이 없다... 다른 노동자들은 당신이 일하는 속도와 당신이 한 번에 나를 수 있는 짐의 양에 경탄을 금치 못한다. 당신이 돌아오자 크래독은 투덜거린다. "당신 어깨는 토콜라만큼 튼튼한 모양이군. 젤라이보다 세 배는 더 쓸모가 있어... 여기 당신 일당이 있으니 받으라고." 그는 당신에게 한 줌의 동전을 던져 준다. 모두 합해서 서른 닢이다. "이제 그만 꺼져. 우린 더 이상 당신 도움이 필요없으니까."~ */
  IF ~  Global("Evil_Craddock_1","GLOBAL",1)
Global("Jhelai_Pay","AR0300",0)
~ THEN REPLY #22969 /* ~"젤라이의 메시지를 당신에게 전해준 데 대한 보수는?"~ */ GOTO 21
  IF ~~ THEN REPLY #22970 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.2 15.2
  SAY #22890 /* ~크래독은 투덜거리면서 지갑에 손을 넣어 한 줌의 동전을 꺼낸다, 그리고 그것을 당신에게 던져 준다. "이제 꺼져! 그리고 만약 젤라이를 다시 만나게 되면 놈에게 넌 죽은 목숨이라고 전해!"~ */
  IF ~~ THEN REPLY #22971 /* ~"만약 도움이 필요하면 내가 그의 빈 자리를 메꾸어 줄 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Craddock_2","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #22972 /* ~"나는 일거리가 필요하오. 임시로 젤라이의 일을 대신 해주고 돈을 받고 싶소."~ */ GOTO 16
  IF ~~ THEN REPLY #22973 /* ~"기억하도록 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0 18.0 19.0
  SAY #22891 /* ~크래독은 투덜거리면서 지갑에 손을 넣어 동전 열 닢을 센다, 그리고 그것을 당신에게 던져 준다. "여기 당신 일당이 있으니 받으라고! 이제 꺼져!"~ */
  IF ~~ THEN REPLY #22974 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Jhelai_Pay","AR0300",1)
GivePartyGold(10)
~ EXIT
END
