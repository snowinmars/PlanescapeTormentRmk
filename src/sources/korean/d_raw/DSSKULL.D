// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSSKULL~

IF ~  Global("SSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31579 /* ~이 해골은 권태롭게 숨을 내쉰 후 화난 목소리로 말한다. "왜 내 휴식을 방해하는 거죠? 최근에는 너무도 많은 일이 있었어요, 그리고 내가 비록 감각 체험을 좋아하기는 하나, 지금 내가 원하는 것은 '조용함'이에요."~ */
  IF ~~ THEN REPLY #31581 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 1
  IF ~~ THEN REPLY #31582 /* ~"여기서 뭘 하는 거요?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31583 /* ~"로타에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31584 /* ~"선반 위에 있는 이 수많은 해골들은?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31585 /* ~"그럼 하던 일이나 하시오. 안녕히 계시오."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.3 3.1 6.0 10.2 12.0 17.0
  SAY #31586 /* ~"나는... '폭풍-전야의-바다'라는 센세이트였죠. 슬프게도 지금은 장식품에 불과해요."~ */
  IF ~  Global("Know_Sensates","GLOBAL",0)
~ THEN REPLY #31587 /* ~"센세이트? 그게 뭐요?"~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Sensates","GLOBAL",1)
~ THEN REPLY #31588 /* ~"그것 참 힘들겠소... 여기선 감각적인 것이 별로 없을 테니, 안 그렇소?"~ */ GOTO 9
  IF ~~ THEN REPLY #31589 /* ~"로타에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #31590 /* ~"무엇 때문에 이 곳에 오게 되었소?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31591 /* ~"여기 있는 다른 해골들에 대해 무엇을 아시오?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31592 /* ~"여기 있는 다른 해골들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31593 /* ~"알겠소. 그럼 하던 일이나 하시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 3.2 6.1 7.1 8.0 17.1
  SAY #31594 /* ~"나는 선반 위에서 앉아 내 해골에 먼지가 수북히 쌓이는 걸 지켜보고 있죠, 로타의 위어랫 부하들 중 하나가 보다 못해 날 솔질할 생각을 할 때까지 말이에요. 나는 로타의 질문의 대답을 해요, 그리고... 그게 내 비참한 존재의 전부지요."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #31595 /* ~"아니, 내 말은 '어떻게 해서 이 곳에 오게 되었소'라는 뜻이오."~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #31596 /* ~"아니, 내 말은 '어떻게 해서 이 곳에 오게 되었소'라는 뜻이오."~ */ GOTO 11
  IF ~~ THEN REPLY #31597 /* ~"어떤 종류의 질문들 말이오?"~ */ GOTO 14
  IF ~~ THEN REPLY #31598 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #31599 /* ~"로타에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31600 /* ~"선반 위에 있는 이 수많은 해골들은?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31601 /* ~"여기 있는 다른 해골들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31602 /* ~"그럼 당신을 방해하지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.4 6.2 7.2 8.1 10.3 12.1 17.2
  SAY #31603 /* ~"그가 당신에게 말하고 싶어하지 않는 내용은 나도 말할 수 없어요. 내가 해서는 안 될 말을 했을 때 여기 있는 다른 해골들이 그에게 고자질을 하지 않을 거라는 보장이 없기 때문이죠. 나는 당신이 물어보지 않는 한 아무 말도 하지 않겠어요. 그래요, 나는 그가 그만큼 두려워요."~ */
  IF ~~ THEN REPLY #31604 /* ~"그가 당신에게 그 이상 뭘 더 어떻게 할 수 있겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #31605 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #31606 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31607 /* ~"선반 위에 있는 이 수많은 해골들은?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31608 /* ~"여기 있는 다른 해골들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31609 /* ~"그럼 하던 일이나 하시오.. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.4 2.5 3.3 7.3 8.2 10.4 17.3
  SAY #31610 /* ~"아, 그들은 지루함을 달래는 데는 별 도움이 되지 않을 거예요. 위어랫 고우트스코움, 아니키스트 그림스캘프, 늙은 마법사 자객 스턴가 있어요. 나는 스턴이 정확히 무슨 일을 하는지는 모르나 그는 기본적으로 사악한 자죠."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from:
  SAY #31611 /* ~"실용주의자? 그래서 당신은 툭하면 문제에 대한 해법으로 사람을 등 뒤에서 칼로 찌르는 걸 택하는 건가요?"~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 1
END

IF ~~ THEN BEGIN 6 // from:
  SAY #31612 /* ~폭풍-전야의-바다는 다시 시선을 당신 쪽으로 돌린다. "봤죠? 기본적으로 사악해요."~ */
  IF ~~ THEN REPLY #31613 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #31614 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #31615 /* ~"로타에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #31616 /* ~"그래, 알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #31617 /* ~"센세이트는 시길의 당파들 중 감각의 공동체의 멤버(또는 그 당파 자체를)를 가리키는 말로, 센세이트의 본거지는 사무구의 시 공회당이에요. 센세이트는 감각을 통해서만 우주를 이해하고 조작할 수 있다고 믿어요, 그래서 우리는 가능한 한 다양한 체험을 하려고 노력하죠. 난 이미 충분하고도 남을 만큼 먼지투성이 선반에 앉아 있었다고 생각해요 - 내 지루함에 대한 한계는 낮아요." ~ */
  IF ~~ THEN REPLY #31618 /* ~"내가 당신을 도울 수 있는 일은 없겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #31619 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #31620 /* ~"로타에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31621 /* ~"선반 위에 있는 이 수많은 해골들은?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31622 /* ~"여기 있는 다른 해골들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31623 /* ~"그거 참 안됐소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31624 /* ~"아니요, 하지만 그 질문을 해주셔서 고맙군요. 한 번은 내가 스스로를 선반에서 떨어뜨려 박살을 냈어요. 깨어나 보니 접착제로 복원된 채 선반 위로 돌아와 있더군요. 로타가 내게 지치면 그가 알아서 날 처분하겠죠." ~ */
  IF ~~ THEN REPLY #31625 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #31626 /* ~"로타에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31627 /* ~"선반 위에 있는 이 수많은 해골들은?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31628 /* ~"여기 있는 다른 해골들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31629 /* ~"그럼 행운을 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #31630 /* ~해골은 당신을 빤히 쳐다본다.. "그래요, 어디 그렇게 계속 빈정대라고요." 그녀는 한참 동안 말이 없다. "꺼져요."~ */
  IF ~~ THEN REPLY #31631 /* ~"난 그냥 농담을 했을 뿐이오..."~ */ GOTO 15
  IF ~~ THEN REPLY #31632 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.0
  SAY #31633 /* ~"그건 긴 얘기예요, 그리고 당신이 로타가 시킨 일을 마치기 전에는 얘기를 해즐 수가 없어요."~ */
  IF ~~ THEN REPLY #31634 /* ~"그가 당신에게 그 이상 뭘 더 어떻게 할 수 있겠소?"~ */ GOTO 13
  IF ~~ THEN REPLY #31635 /* ~"내게는 말해도 괜찮소."~ */ GOTO 13
  IF ~~ THEN REPLY #31636 /* ~"그럼 당신 자신에 대해서 얘기해주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #31637 /* ~"로타에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31638 /* ~"그럼 좋소. 여기 있는 다른 해골들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31639 /* ~"그럼 좋소. 여기 있는 다른 해골들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31640 /* ~"그럼 당신을 방해하지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #31641 /* ~"그것은 나이트 해그 래벌 퍼즐웰에 얽힌 긴 이야기예요. 그 이야기를 처음부터 끝까지 듣겠어요?"~ */
  IF ~~ THEN REPLY #31642 /* ~"그렇소."~ */ GOTO 18
  IF ~~ THEN REPLY #31643 /* ~"별로."~ */ GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 1.5 2.6 3.4 7.4 8.3 10.5 17.4
  SAY #31644 /* ~만약 해골이 어깨를 으쓱할 수 있다면 이 동작이 그에 해당될 것 같다. "전에 얘기한 것들 외에는 없어요."~ */
  IF ~~ THEN REPLY #31645 /* ~"그럼 당신 자신에 대해서 얘기해주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #31646 /* ~"로타에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #31647 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 10.0 10.1
  SAY #31649 /* ~해골은 당신을 빤히 쳐다본다. 당신은 그녀가 벌벌 떨고 있다는 인상을 받는다. "신경 단말이 없어도 엄청난 양의 고통을 느낄 수가 있어요. 모든 고통이 다 육체적인 것은 아니고 모든 감정이 다 정신적인 것도 아니에요. 그러한 것들은 다시는 경험하고 싶지 않은 감각들이에요." 그녀는 잠시 멈춘다. "이 인터뷰는 여기서 끝내도록 하겠어요. 잘 가세요."~ */
  IF ~~ THEN REPLY #31650 /* ~"몇 가지 질문에 더 대답해주시오..."~ */ GOTO 15
  IF ~~ THEN REPLY #31660 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #31661 /* ~"다양해요... 내가 한 체험들, 센세이트 내부의 권력 판도(이제 이 분야에 대한 내 지식은 비참할 정도로 낡은 것이 되었어요!), 이 곳을 지나가는 사람들의 인상, 그리고 말 말 말. 질문의 종류는 다양해요, 그리고 그건 내게 있어 다행한 일이죠. 더 이상 내게 물어볼 것이 없다면 나는 다시 안식을 취하도록 하겠어요. 잘 가세요."~ */
  IF ~~ THEN REPLY #31662 /* ~"아니, 기다리시오, 몇 가지 질문만 더..."~ */ GOTO 15
  IF ~~ THEN REPLY #31663 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.0 13.0 14.0 16.0 21.1 22.0
  SAY #31664 /* ~해골은 멍하니 바라보며 아무 말도 하지 않는다.~ */
  IF ~~ THEN REPLY #31665 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY #31666 /* ~"그럼 나는 다시 안식을 취하도록 하겠어요. 잘 가세요."~ */
  IF ~~ THEN REPLY #31667 /* ~"아니, 기다리시오, 몇 가지 질문만 더..."~ */ GOTO 15
  IF ~~ THEN REPLY #31668 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  Global("SSkull_Talk","AR0508",1)
~ THEN BEGIN 17 // from:
  SAY #31669 /* ~"날 좀 쉬게 내버려 둘 순 없나요?"~ */
  IF ~~ THEN REPLY #31670 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #31671 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #31672 /* ~"로타에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31673 /* ~"선반 위에 있는 이 수많은 해골들은?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31674 /* ~"여기 있는 다른 해골들에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31675 /* ~"그러시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #31676 /* ~"좋아요. 나는 센세이트의 본거지인 시 공회당의 감각 체험실에서 일을 했었어요. 래벌 퍼즐웰... 신들이여, 그녀의 사악한 영혼을 저주하소서... 그녀는 자신이 맞부딪친 수수께끼들에 대한 답을 얻기 위해 그 곳에 오곤 했었어요. 그녀는 수수께끼를 푸는 데 있어 달인이었고, 우리들 중 가장 현명한 사람들조차 좌절하게 만든 난문들도 그녀의 추리력 앞에서는 맥을 추지 못했어요. 그럼에도 불구하고 그녀에게는 다른 이들의 도움을 필요로 하는 어려운 문제들이 있었어요. 내가 듣기로 그녀는 시길 그 자체의 비밀을 알아내기 위해 그 곳에 왔다고 해요."~ */
  IF ~~ THEN REPLY #31677 /* ~"계속하시오."~ */ GOTO 19
  IF ~~ THEN REPLY #31678 /* ~"난 이미 지쳤소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #31679 /* ~"그녀는 끔찍할 정도로 추악했어요. 나는 그녀가 때때로 마법으로 변신을 한다는, 아니 했었다는 얘기를 들은 적이 있어요, 하지만 그 때 그녀는 자신의 모습을 위장하려는 시도조차 하지 않았어요. 그녀의 악마와 같은 외관 때문에 많은 당원 지망생들이 도망을 쳤죠. 하지만 나는 호기심 때문에 그녀의 목적이 무엇이고, 또 그녀가 자신이 아는 것을 내게 가르쳐 줄 수는 없는지 물어보고 말았어요."~ */
  IF ~~ THEN REPLY #31680 /* ~"마치 그것이 실수였다는 것처럼 들리오."~ */ GOTO 20
  IF ~~ THEN REPLY #31681 /* ~"이해가 될 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #31682 /* ~"그래요. 수수께끼가 삶이자 낙인 그녀는 내게 한 가지 제안을 했죠. 그녀는 내게 질문에 대한 답을 얻고 싶다면 자기가 낼 문제에 대답해야 한다고 말했어요. 그녀는 만약 내가 틀릴 경우에는 내 목숨이 그녀 것이 된다는 조건을 내걸었고, 나는 동의했어요. 그녀는 내게 자신의 목적이 감옥, 즉 시길의 수수께끼를 풀어, 시길에 들어오고자 하는 모든 존재들... 신, 마족, 천상인, 모드론, 슬래디, 그리고 정령계와 에너지계의 존재들에게 그 문호를 개방하는 것이라고 말해주었어요. 그녀에게 있어 가장 중요한 것은 모든 존재들에게 그들을 그토록 오랫동안 괴롭혔던 수수께끼를 푼 자가 바로 자신이라는 걸 알리는 것이었지요." ~ */
  IF ~~ THEN REPLY #31683 /* ~"그 다음에는 어떻게 되었소?"~ */ GOTO 21
  IF ~~ THEN REPLY #31684 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31685 /* ~"그리고 그녀는 내게 문제를 냈죠. 그녀는 답이 너무나도 뻔한 것이라고 내게 말을 해주었지만, 나는 답을 맞출 수가 없었어요. 다음 날 아침, 내 동료 센세이트들은 감각 체험실에서 비명을 지르고 있는 나를 발견했어요.나는 그들에게 날 죽여 달라고 부탁했고, 그들은 그렇게 했어요. 내 몰골이 어찌나 끔찍했던지 아무도 내게 새로운 체험을 즐기라고 말하지 못했어요. 그리고... 이제 난 여기 있는 신세가 되었죠. 그만 쉬어야겠어요." ~ */
  IF ~  Global("Sensate_Skull_Memory","GLOBAL",0)
~ THEN REPLY #31686 /* ~"질문은 어떤 것이었소?"~ */ DO ~SetGlobal("Sensate_Skull_Memory","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #31348 /* ~로타의 해골 도서관에 있는 센세이트의 해골인 폭풍 전의 대양은 래벌 퍼즐웰과 그녀의 악명 높은 음모에 대한 얘기를 들려주었다. ~ */ GOTO 22
  IF ~~ THEN REPLY #31687 /* ~"질문 몇 개만 더 대답해주겠소?"~ */ JOURNAL #31348 /* ~로타의 해골 도서관에 있는 센세이트의 해골인 폭풍 전의 대양은 래벌 퍼즐웰과 그녀의 악명 높은 음모에 대한 얘기를 들려주었다. ~ */ GOTO 15
  IF ~~ THEN REPLY #31688 /* ~"알겠소. 얘기를 들려주어 고맙소. 안녕히 계시오."~ */ JOURNAL #31348 /* ~로타의 해골 도서관에 있는 센세이트의 해골인 폭풍 전의 대양은 래벌 퍼즐웰과 그녀의 악명 높은 음모에 대한 얘기를 들려주었다. ~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31689 /* ~"그녀가 한 질문은 '어떻게 하면 한 인간의 본성을 바꿀 수 있는가?'였어요. 나는 한참 생각한 끝에 '사랑으로'라고 대답했죠. 그녀는 사람들은 스스로를 너무 사랑하기 때문에 사랑처럼 단순한 것으로는 그들을 바꿀 수 없다고 말했어요. 그리고 나서 그녀는... 그만 쉬어야겠어요." 
당신 머릿속 깊숙한 곳에서 매부리코에 흑단색의 피부를 지닌 어떤 인물이 당신에게 비슷한 질문은 하는 광경이 떠오른다... 하지만 당신은 자신이 어떤 대답을 했는지 기억할 수 없다.~ */
  IF ~~ THEN REPLY #31690 /* ~"질문 몇 개만 더 대답해주겠소?"~ */ GOTO 15
  IF ~~ THEN REPLY #31691 /* ~"당신 처지는 동정하오. 안녕히 계시오."~ */ EXIT
END
