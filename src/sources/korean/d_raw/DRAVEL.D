// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAVEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAVEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Ravel_Cut_Scene","AR0610",0)
~ THEN BEGIN 0 // from:
  SAY #2976 /* ~당신 앞에 있는 이 포동포동한 매부리코 할망구는 전설적인 존재처럼 보이지 않는다. 그녀는 간소한(더럽기는 하지만) 갈색 상의와 각반을 착용하고 있으며, 그녀의 해진 벨트에는 여러 개의 작은 주머니가 매달려 있다. 그녀는 당신의 존재를 아직 눈치채지 못한 듯하며, 자신의 주변에서 일어나는 일들보다는 서로 얽혀 미로의 바닥을 형성하고 있는 엉킨 검은 뿌리들에 더 관심이 있는 것 같다.~ */
  IF ~~ THEN REPLY #2977 /* ~그녀를 잠시 동안 연구한다.~ */ GOTO 1
  IF ~~ THEN REPLY #51564 /* ~그녀가 자신의 정원을 살피도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51566 /* ~노파의 두건으로부터 삐져나온 뒤엉킨 회색 머리카락들이 마치 뒤틀린 회색 뿌리들처럼 그녀의 어깨까지 내려와 있다. 그녀의 얼굴에는 역겨운 청회색 피부가 축 늘어져 있고, 그녀의 길고 뾰족한 턱은 아래쪽으로 한참 튀어나와 있으며, 그리고 그녀의 더럽고 누런 두 개의 견치는 마치 작은 엄니처럼 그녀의 아래턱으로부터 튀어나오고 있다.~ */
  IF ~~ THEN REPLY #51567 /* ~"래벌...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #51568 /* ~그녀가 당신이 온 것을 알아채기 전에 그녀를 공격한다.~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #51569 /* ~그녀가 당신이 온 것을 알아채기 전에 그녀를 공격한다.~ */ GOTO 3
  IF ~~ THEN REPLY #51570 /* ~그녀가 자신의 정원을 살피도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #51571 /* ~당신이 노파의 약점을 찾으려고 그녀를 살펴보기 시작하자, 당신의 속이 마치 멀미라도 하듯 울렁거린다. 당신은 마음 속으로 지금 그녀를 공격하는 것이 전술적으로 타당하다는 것을 알고 있으나, 당신은 이 노파가... 당신에 대해 무엇을 알고 있는지를 우선 알아내야만 한다는 사실 또한 숙지하고 있다.~ */
  IF ~~ THEN REPLY #51572 /* ~어쨌든 그녀를 공격한다.~ */ GOTO 3
  IF ~~ THEN REPLY #51573 /* ~"래벌...?~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #51574 /* ~당신 머릿속에서 공격에 대한 생각이 스쳐 갈 동안, 노파는 묘한 생각이 들었다는 표정을 하며 고개를 쳐든다. 그녀는 눈을 깜박이고, 마치 한숨과도 같은 쉿 소리를 낸다.~ */
  IF ~~ THEN REPLY #51575 /* ~"래벌...?~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF WEIGHT #1 ~  Global("Ravel_Cut_Scene","AR0610",1)
~ THEN BEGIN 4 // from:
  SAY #51576 /* ~"아... 손님이군." 노파의 목소리는 마치 여러 층에 걸친 먼지를 뚫고 나오고 있는 듯 몹시 탁하다. 그녀의 눈은 흐릿한 핏빛이며, 검은 정맥이 마치 검은 나뭇가지처럼 뻗어 있다. 그녀가 당신을 쳐다보자 마치 뱀들이 피부 아래서 굴을 파고 있는 듯한 기묘한 느낌이 당신을 스치고 지나간다.~ [RAV005] */
  IF ~~ THEN REPLY #51577 /* ~"안녕하시오... 래벌."~ */ DO ~SetGlobal("Ravel","GLOBAL",1)
AddexperienceParty(90000)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51578 /* ~"그래, 내 귀여운 것, 마침내 내게로 돌아왔나?" 래벌은 깨진 누런 이빨들을 드러내며 엽기적인 미소를 짓는다. "자네는 너무 오랫동안 날 떠나 있었지. 난 자네가 이 불쌍하고 외로운 래벌을 잊었을까 걱정을 했네." ~ [RAV002] */
  IF ~~ THEN REPLY #51579 /* ~"잠시 잊었었소. 하지만 이제 난 돌아왔소."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #51580 /* ~"래벌, 내가 어떻게 당신을 잊을 수가 있었겠소?. 난 당신을 그리워했소, 하지만 당신은 내가 접근하기 어려운 곳에 자신을 숨겼소. 자... 그대는 나와 함께하는 것을 원했던 것이 아니오?~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #51581 /* ~"아..." 래벌은 환하게 미소를 지으며 조용히 킬킬거린다. "참으로 *감미로운* 말이야... 자네는 자네가 물어보려고 하는 것의 답을 이미 알고 있네, 내 소중한 사람. 나는 힌트들을 마치 마름쇠처럼 뿌려 놓았네, 그리고 그것들이 자네를 내 정원까지 인도하는 수단이 되었지."~ */
  IF ~~ THEN REPLY #51582 /* ~"확답하건대 나는 그런 일을 한 적이 없소. 나는 드디어 당신에게로 돌아왔소."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #51583 /* ~"그런가? 하지만 무엇이 돌아왔나?" 그녀는 검은 정맥투성이의 눈으로 당신을 흘겨보며 부드럽게 쉿 소리를 낸다. "어디 이 래벌이 자네가 이 삶은 어떻게 영위했는지 좀 보세." 그녀는 마치 당신을 애무하려는 듯 손을 내민다, 그리고 갑자기 당신은 그녀의 손가락이 맹금의 발톱 같으며, 각 손톱은 더럽고 지극히 날카롭다는 사실을 깨닫는다.~ */
  IF ~~ THEN REPLY #51584 /* ~그녀가 당신을 만지도록 한다. ~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #51585 /* ~"나를 만지지 마시오, 래벌. 나는 당신과 얘기를 나누고 싶을 뿐이오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
  IF ~~ THEN REPLY #51586 /* ~그녀가 당신을 만지려고 손을 내밀 때 일격을 가한다.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #51587 /* ~당신 머릿속에서 그녀를 공격하려는 생각이 스쳐가자, 래벌의 눈이 불처럼 *타오른다,* 그리고 그녀의 목소리는 당신을 위압할 정도의 무게를 지닌다. "그러지 말게. 자네가 아직 지니고 있는 얼마되지 않는 것들을 아끼는 마음이 있다면 그러지 말게."~ */
  IF ~~ THEN REPLY #51588 /* ~"난 당신이 날 저지할 수 있으리라 생각하지 않소, 래벌. 만약 그럴 수가 있다면 어디 한 번 시도해 보시오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
  IF ~~ THEN REPLY #51589 /* ~"그럼 나를 만지지 마시오, 래벌. 나는 당신과 얘기를 나누고 싶을 뿐이오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0 49.1 50.0 86.0
  SAY #51590 /* ~"자네는 자네 입장을 망각한 모양이군, 자네에게 겸손이란 걸 가르쳐야겠네, 반인."~ [RAV065] */
  IF ~~ THEN REPLY #51591 /* ~"어디 보자, 이 역겨운 마녀 같으니..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #51592 /* ~그녀의 거친 손톱이 당신 피부를 더듬으면서 지나간다, 그리고 그것들이 지나간 자리에서는 래벌이 당신을 처음 쳐다보았을 때 느꼈던 따끔한 감각과 같은 감각이 느껴진다. 그녀의 눈은 약간 흐릿해진다, 그리고 그녀의 손톱은 당신 얼굴의 윤곽을 부드럽게 쓰다듬으며 흉터가 있는 곳에서 머뭇거린다. ~ */
  IF ~~ THEN REPLY #51594 /* ~기다린다...~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51595 /* ~손을 내밀어 그녀를 만지고 그녀의 생김새를 느낀다. ~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51596 /* ~손을 내밀어 그녀를 만지고 그녀의 생김새를 느낀다. ~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51597 /* ~손을 내밀어 그녀를 만지고 그녀의 생김새를 느낀다. ~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #51598 /* ~래벌의 손톱이 당신 얼굴을 부드럽게 쓰다듬자 당신도 그녀의 볼을 손으로 만진다, 그리고 본능적으로 당신은 그녀의 동작을 그대로 따라서 한다. 그녀의 손톱이 당신의 왼쪽 볼을 쓰다듬자, 당신 역시 그녀의 왼쪽 볼을 쓰다듬는다. 그녀가 눈을 감자 당신도 눈을 감는다. 왠지 낮이 익다, 하지만 기억해낼 수는 없다. 잠시 후 그녀는 자신의 충혈된 눈을 뜨고서는 귀에 거슬리는 쉿 소리를 낸다.~ */
  IF ~~ THEN REPLY #51599 /* ~기다린다.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 10.2 10.3
  SAY #51600 /* ~래벌의 손톱이 당신 얼굴을 부드럽게 쓰다듬자 당신도 그녀의 볼을 손으로 만진다, 그리고 본능적으로 당신은 그녀의 동작을 그대로 따라서 한다. 그녀의 손톱이 당신의 왼쪽 볼을 쓰다듬자, 당신 역시 그녀의 왼쪽 볼을 쓰다듬는다. 그녀가 눈을 감자 당신도 눈을 감는다. 왠지 낯이 익다...~ */
  IF ~~ THEN REPLY #51601 /* ~눈을 감고 기억에 몸을 맡긴다. ~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Ravel_Memory","GLOBAL",1)
PlaySound("SPTR_01")
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51602 /* ~당신이 눈을 뜨자 모든 색이 나무들과 미로부터 사라진 것처럼 느껴진다. *모든* 것이 특색이라고는 없는 무미건조한 회색이다. 래벌은 아직도 눈을 감고 있다, 하지만 당신이 지켜보자 그녀의 눈이 천천히 열리기 시작한다, 그리고 그녀는 서글픈 회색의 미소를 짓는다. 당신은 입 안에서 어떤 말이 튀어나오려 하고 있다고 느낀다, 그것은 과거에 당신이 다른 장소, 다른 차원에서 한 적이 있는 말의 메아리인 것 같다. ~ */
  IF ~~ THEN REPLY #51603 /* ~기억의 메아리: "당신은 회색 자매들 중에서도 가장 위대한 존재라고 전해지고 있소. 나는 당신을 만나기 위해 먼 길을 왔소."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #51604 /* ~그녀는 고개를 끄덕인다, 하지만 꿈이라도 꾸고 있는 듯 너무나도 느리다. 그녀가 다시 입을 열었을 때 그녀의 목소리는 마치 물 속에서 들려 오는 것처럼 희미하다. "하지만 *왜* 자네는 이 먼 곳까지 왔나? 자네는 정말 절박한 상황인 모양이군... 하지만 자네는 내가 관심을 가질 만한 건 아무 것도 가지고 있지 않네. 내 도움을 받으려면 대가를 지불해야 하네..."~ */
  IF ~~ THEN REPLY #51605 /* ~기억의 메아리: "나는 절박한 상황이 처해 있소. 나는 당신에게 도전을 하고 싶소. 아마 당신게도 불가능한... *당신*의 능력의 범주조차 초월한 도전..."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #51606 /* ~당신은 그 말을 그대로 따라서 한다, 그리고 그 안에 담긴 기만 - 래벌을 조종하기 위해 교묘하게 짜여진 속임수를 느낀다. 기억 속에서 그녀의 눈은 불타는 회색으로 이글거린다, 그리고 그녀의 얼굴로부터는 주변의 경관을 침식하고 있는 회색이 사라진다. "내게 불가능한 건 없네, 이 어리석은 인간아! 내가 들어줄 테니 어디 도전을 해보게!"~ */
  IF ~~ THEN REPLY #51607 /* ~기억의 메아리: "죽음은 모든 사람의 인생의 끝에서 기다리고 있소. 나는 죽음이 더 이상 날 기다리지 않았으면 하오... 이 일을 할 수 있겠소, 아름다운 래벌?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #51608 /* ~다시 시야는 뚜렷해지고, 미로에서는 회색이 사라져 가며 원래의 색을 되찾는다. 당신의 손은 아직도 래벌의 볼을 감싸고 있다. 그녀는 눈을 감은 채 한숨을 쉰다. 당신은 천천히 손을 뗀다, 그리고 잠시 후 래벌은 눈을 뜨면서 귀에 거슬리는 쉿 소리를 낸다. "그래애애..."~ */
  IF ~~ THEN REPLY #51609 /* ~"래벌...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #51610 /* ~내가 검은 가시 미로에서 래벌에게 갔을 때, 나는 우리의 첫 만남이라고 생각되는 일에 대하여 기억을 해냈다. 그 곳은 모든 것으로부터 색이 다 빠져나간 듯 모든 것이 다 회색인 곳이었다. 거기서 나는 그녀에게 나를 불사신으로 만들어 달라고 부탁했고, 그녀는 이에 동의하였다.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 10.0 11.0 16.0
  SAY #51611 /* ~래벌은 손가락을 치우고는 슬픈 표정으로 당신을 쳐다본다. "아, 불쌍하디 불쌍한 망가진 반인. 산산조각이 났어." 그녀는 다시 눈을 가늘게 뜨고 당신을 본다. "자네는 더 이상 내가 알던 사람이 아니네... 이토록 슬프디 슬픈 세월이 흐른 후에도 자네는 여전히 망가져 있는가?"~ */
  IF ~~ THEN REPLY #51612 /* ~"망가진? 그게 무슨 뜻이오?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 7.1 8.1
  SAY #51613 /* ~"아... 자네는 늘 조심스러웠지, 내 가장 사랑스런 퍼즐이여." 그녀는 손가락을 치우고는 팔을 내린다. "그래서 난 자네가 자네의 도전을 가지고 그레이 웨이스트로 날 처음 찾아왔을 때부터 자넬 찍어 두었지."~ */
  IF ~~ THEN REPLY #51614 /* ~"나는 그런 만남을 기억하지 못하오. 나는 많은 것을 잊어버렸소. ~ */ GOTO 19
  IF ~~ THEN REPLY #51615 /* ~"당신이 말하는 것이 대체 뭐요?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #51616 /* ~래벌은 당신을 살펴보며 속삭이듯 한숨을 쉰다. "아, 불쌍하디 불쌍한 망가진 반인. 산산조각이 났어. 자네는 더 이상 내가 알던 사람이 아니네... 이토록 슬프디 슬픈 세월이 흐른 후에도 자네는 여전히 망가져 있는가?"~ */
  IF ~~ THEN REPLY #51617 /* ~"무슨 뜻이오?"~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51618 /* ~"래벌, 당신이 거행한 의식에는 결함이 있었소... 그것은 실패했소. 내가 죽을 때마다... 아니면 적어도 내가 죽곤 할 때마다, 나는 내 자신을 잊어버리고 다른 사람으로 환생하오. 그래, 나는 깨어진 존재요.나를 고쳐 줄 수가 있겠소, 내가 기억을 되찾도록 도와줄 수 있겠소?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0 19.1
  SAY #51619 /* ~"자네에게는 육신은 있으나 기억은 없지?" 그녀는 자신의 거친 손톱으로 당신 가슴에 난 흉터를 가리킨다. "자네에겐 그런 흉터들이 무수히 있네, 모두 자네 피부에 갈겨써졌지. 자네의 피부는 많은 이야기를 해주고 있네."~ */
  IF ~~ THEN REPLY #51620 /* ~"무슨 얘기를 하는 거요?"~ */ GOTO 21
  IF ~~ THEN REPLY #51621 /* ~"내 피부는 어떤 이야기들을 해주고 있소?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #51622 /* ~"자네의 흉터와 문신들은 내게 소리를 지르고 있네. '여기 온 세상과 맞서 싸우고 있는 사람이 있소.'" 래벌은 뭔가를 읊조리는데, 마치 죽어가는 새가 우는 소리처럼 들린다. "그래, *나이트 해그*의 귀조차 오그라들게 만들 그런 끔찍한 얘기들을..."~ */
  IF ~~ THEN REPLY #51623 /* ~"그 이야기들을... 들려주시오. 난 그것들에 대해 알고 싶소."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 24.0 26.0 27.0 29.0
  SAY #51624 /* ~"많은 얘기들을 들려주고 있네. 불균형의 균형, 전쟁의 시련, 마족과 관련된 전투, 스스로의 목숨을 유지하기 위해서 멀리서 다른 자들의 생명을 빼앗는 괴물... 그리고 고통. 일찍이 살아 있는 인간이 결코 체험한 적이 없는 그러한 *고통*..."~ */
  IF ~~ THEN REPLY #51625 /* ~"불균형의 균형?"~ */ DO ~SetGlobal("Ravel_Tale_1","AR0610",1)
~ GOTO 23
  IF ~~ THEN REPLY #51626 /* ~"전쟁의 시련?"~ */ DO ~SetGlobal("Ravel_Tale_2","AR0610",1)
~ GOTO 25
  IF ~~ THEN REPLY #51627 /* ~"마족과 관련된 전투?"~ */ DO ~SetGlobal("Ravel_Tale_3","AR0610",1)
~ GOTO 27
  IF ~~ THEN REPLY #51628 /* ~"멀리서 다른 자들의 생명을 빼앗는 괴물?"~ */ DO ~SetGlobal("Ravel_Tale_4","AR0610",1)
~ GOTO 28
  IF ~  NumInParty(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51629 /* ~"그리고 이러한 고통들... 당신이 얘기하는 이러한 고통들이란 대체 뭐요?"~ */ JOURNAL #51631 /* ~래벌은 내게 내가 "깨졌다"고 말해주었다. 그녀는 내 흉터와 문신들에 대해 수수께끼 같은 코멘트를 하였다. 그녀는 그것들이 "깨진 균형", "전쟁의 시련", "마족이 관련된 전쟁"에 대해 얘기하고 있다고 했으며, 나를 "멀리서 남을 먹이로 삼는 자"라고 불렀다. 그녀는 나로부터 죽음을 가져간 일을 시인했으며, 내가 자석이 쇠를 끌어당기듯 고통받는 영혼들을 끌어당기는 자석과 같은 존재라고 말했다.~ */ GOTO 30
  IF ~  NumInPartyGT(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51630 /* ~"그리고 이러한 고통들... 당신이 얘기하는 이러한 고통들이란 대체 뭐요?"~ */ JOURNAL #51631 /* ~래벌은 내게 내가 "깨졌다"고 말해주었다. 그녀는 내 흉터와 문신들에 대해 수수께끼 같은 코멘트를 하였다. 그녀는 그것들이 "깨진 균형", "전쟁의 시련", "마족이 관련된 전쟁"에 대해 얘기하고 있다고 했으며, 나를 "멀리서 남을 먹이로 삼는 자"라고 불렀다. 그녀는 나로부터 죽음을 가져간 일을 시인했으며, 내가 자석이 쇠를 끌어당기듯 고통받는 영혼들을 끌어당기는 자석과 같은 존재라고 말했다.~ */ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #51632 /* ~"자네로부터 죽음이 분리되었을 때, 자네는 둘로 나뉘어졌네. 분리 과정에서 자네의 정신은 망가졌고 균형은 깨어졌네... 축복과 실수가 동거한 셈이지... 하지만 생각하건대 축복보다는 실수에 가까운 것 같네..."~ */
  IF ~~ THEN REPLY #51633 /* ~"당신이 나로부터 죽음을 *앗아*갔소? 어떻게?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #51634 /* ~"그 방법은 잊어버렸네... 잊어버렸나?" 래벌의 눈이 잠시 멍해지고, 그 안의 검은 정맥들이 꿈틀거린다. "설령 기억을 하고 있더라도 다시는 하지 않을 걸세. 나는 그 순간을 결코 잊을 수가 없네. *분리* 후에 자네의 정맥으로부터 고통이 흘러나오고, 자네가 아이처럼 울며, 자네의 모든 존재가 *허무*로 가득 차던 그 광경을. 내 눈으로 보기에도 끔찍했네. ~ */
  IF ~~ THEN REPLY #51635 /* ~"그래... 그것이 왜 내가 내 안이 텅 빈 것처럼 느끼는 이유요? 내겐 죽음이 없기 때문에? 좋소... 내 피부가 말해주는 얘기들에는 또 어떤 것들이 있소?~ */ GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY #51636 /* ~"엄청난, 엄청난 전쟁의 시련일세... 어떤 인간도 감당할 수 없을 만큼 엄청난."~ */
  IF ~~ THEN REPLY #51637 /* ~"무슨 전쟁 말이오? 어디서?~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #51638 /* ~"이 전쟁은 삼라만상에 영향을 미친다네, 내 소중한 반인. 그 손길이 닿지 않는 곳은 어디에도 없네... 그 손길이 자네에게도 닿았는가?" 래벌의 목소리가 쓰라릴 정도로 낮아진다. "그 질문에 대해서는 이 래벌은 그렇다고 대답해야겠네."~ */
  IF ~~ THEN REPLY #51639 /* ~"흉터들이 왜 생겼는지 이해가 될 것 같소... 내 피부가 말해주는 얘기들에는 또 어떤 것들이 있소?~ */ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY #51640 /* ~"두 얼간이 마족들..." 래벌은 경멸하듯 코방귀를 뀐다. "그들의 콩알만한 대가리에는 다원 우주가 어떻게 되어야 하는가에 대한 자신들의 편협한 생각밖에는 들은 것이 없네, 하지만 만약 정말 그들 생각대로 된다면 다원 우주 그 자체가 사라지게 되지. 이 얼마나 어리석은 일인가!"~ */
  IF ~~ THEN REPLY #51641 /* ~"과연 내가 제대로 이해하고 있는지 모르겠소... 내 피부가 말해주는 얘기들에는 또 어떤 것들이 있소?~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 22.3
  SAY #51642 /* ~"자네 속에서 끓고 있는 것은 단순한 갈망 따위하고는 비교할 수도 없는 끔찍한 것들일세. 그리고 그 대가는 너무나도..."~ */
  IF ~~ THEN REPLY #51643 /* ~"갈망? 무슨 뜻이오?~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #51644 /* ~"모르네.. 모르나? 이러한 갈망들의 성질이나 원인은 모르네, 하지만 이걸 명심하게: 다가올 일들은 그 *그림자*를 미리 드리우는 법이네, 내 소중한 반인... 이러한 일들이 어떤 것인지는 이 래벌조차 알 수가 없네."~ */
  IF ~~ THEN REPLY #51645 /* ~" 어, 알겠소... 내 피부가 말해주는 얘기들에는 또 어떤 것들이 있소?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 30 // from: 22.4
  SAY #51646 /* ~"자석이 쇠를 끌어당기는 것과 마찬가지일세, 내 소중한 반인. 하지만 자네가 끌어당기는 것은 쇠가 아니라 고통받는 영혼들일세. 고통받는 자들은 자네에게 끌리게 되고, 자네의 길이 곧 그들의 길이 되고 마네.~ */
  IF ~~ THEN REPLY #51647 /* ~"그 이유는 무엇이오?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 31 // from: 22.5
  SAY #51648 /* ~"자석이 쇠를 끌어당기는 것과 마찬가지일세, 내 소중한 반인. 하지만 자네가 끌어당기는 것은 쇠가 아니라 고통받는 영혼들일세. 고통받는 자들은 자네에게 끌리게 되고, 자네의 길이 곧 그들의 길이 되고 마네." 그녀는 크게 손짓을 한다. "자네와 함께 여행한 자들의 눈에서 그것이 보이지 않는가?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51649 /* ~"내 동료들? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",1)
~ GOTO 32
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51650 /* ~"내 동료들? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ GOTO 33
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51651 /* ~"내 동료들? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51652 /* ~"내 동료들? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51653 /* ~"내 동료들? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51654 /* ~"내 동료들? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51655 /* ~"내 동료들? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 239
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #51656 /* ~"자네가 직접 설명하고 설명하겠나, 기스?" 래벌은 견치를 드러내고 미소지으며, 이글거리는 눈으로 다콘을 쳐다본다. "맹세는 그 어떠한 사슬보다도 더 견고하지 않은가? 한때 노예였던 종족이 이제 또 다시 노예가 되었는가?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 170
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY #51657 /* ~"톱니바퀴 상자..." 래벌의 시선이 노돔 쪽으로 향한다. "한때 그것은 *고통*의 정의만 알고 있었지, 하지만 이제는 그 독침의 맛을 알게 되었지. '1'과 '0'으로 이루어진 세계에서 '2'가 존재할 여지는 없고, 가부만이 존재하는 곳에서 '아마'는 존재할 수 없으며, 흑백의 세계에서 '얼굴을 붉히는' 일은 있을 수가 없지. 그것이 우주가 어떻게 움직이는지를 알고, 충성과 비논리의 배후에 숨겨진 진실을 알게 될 때, 그는 더 많은 고통을 알게 될 걸세..."~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #51658 /* ~"래벌, 내 동료들은 그냥 내버려두시오. 내겐 질문할 것--"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51659 /* ~"래벌, 내 동료들은 그냥 내버려두시오. 내겐 질문할 것--"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51660 /* ~"래벌, 내 동료들은 그냥 내버려두시오. 내겐 질문할 것--"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51661 /* ~"래벌, 내 동료들은 그냥 내버려두시오. 내겐 질문할 것--"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51662 /* ~"래벌, 내 동료들은 그냥 내버려두시오. 내겐 질문할 것--"~ */ GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 31.2 33.0
  SAY #51663 /* ~"불타며 웃는 요술사..." 래벌의 눈은 마치 이그너스의 지옥의 업화가 옮겨 붙은 것처럼 이글거린다. "그는 한때 이 래벌이 지녔던 열정의 타다 남은 재를 지니고 있네, 그는 자신이 무슨 짓을 하고 있는지에 대해 신경도 쓰지 않으니까, 하지만... 아마... 그의 내면 깊숙한 곳에서는 열정이 그를 지배하기 전의 그 자신의 존재에 의해 고통받고 있을 걸세. 내 말이 맞나, 불타는 시체...?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 17
END

IF ~~ THEN BEGIN 35 // from: 31.3 33.1
  SAY #51667 /* ~"수다쟁이 해골..." 래벌은 모트는 자신의 관심의 대상이 될 자격도 없다는 듯 그를 쳐다보려고 하지도 않는다. "자네의 빈정거림이 자네 골통 속의 거짓말을 가려 줄 충분한 방패라고 생각하나? 거짓말이면 충분한데 왜 진실을 말하나?" ~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #51671 /* ~"모트...? 그게 무슨 뜻이오, 래벌?~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51672 /* ~"모트...? 그게 무슨 뜻이오, 래벌?~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51673 /* ~"모트...? 그게 무슨 뜻이오, 래벌?~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 31.4 33.2 35.0
  SAY #51668 /* ~"어비스의 요부..." 래벌은 코웃음친다. 그녀가 훨-후럼-그레이스를 흘겨보자 그녀의 누런 견치들이 자주색 입술을 뚫고 나온다. "피부는 너무나 매끄러우며, 입술은 너무나 촉촉하고, 자네가 이 래벌을 잊게 만들 만큼 아름다운 눈... 그러나 그럼에도 그녀는 고통을 받고 있네, 다른 누구보다도 더 심하게. 어떤 존재가 자신의 본질을 배신하면, 그 행위로부터 나오는 고통은 가혹하네."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 158
END

IF ~~ THEN BEGIN 37 // from:
  SAY #51674 /* ~"넌 거짓말을 하고 있다, 서큐버스!" 래벌은 입술은 뒤로 말면서 으르렁거린다. "넌 거짓말을 하고 있다! 감히 내게 거짓말을 하는 거냐, 내가 네 가슴을 책을 읽듯이 읽을 수가 있는데도! 네가 내뱉는 말은 하나도 빠짐없이 네 고통에 대해 절규하고 있다!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51675 /* ~"말조심 하시오, 래벌! 그만 집어치우시오!"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51676 /* ~"말조심 하시오, 래벌! 그만 집어치우시오!"~ */ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 31.5 33.3 35.1 37.0
  SAY #51677 /* ~"아..." 래벌은 안나가 경매 구획에서 팔 물건이나 되는 것처럼 그녀를 손으로 가리킨다. "이 혈기왕성한 티플링을 보게... 마치 *불꽃* 같은 머리와 목소리..." 래벌은 누런 이빨을 드러내며 미소짓는다. "내가 *네* 고통에 대해 얘기를 할까, 티플링?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 252
END

IF ~~ THEN BEGIN 39 // from:
  SAY #51678 /* ~"아니... 아니, 얘기하지 않겠네." 마치 지치기라도 한 듯 래벌의 목소리가 낮아진다, 그리고 그녀의 얼굴에서 미소가 사라진다. "잔인함과 고통에는 이미 지쳤네... 이 래벌도... 내가 아무 짓 안 해도 이 세계는 그 자체로 충분히 험한 곳인데..." 그녀는 당신 쪽으로 돌아선다. 그녀의 핏빛 눈은 흐릿하며. 그녀는 한숨을 쉰다.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 33.4 35.2 37.1 39.0
  SAY #51679 /* ~"그리고 내 소중한, 내 소중한 반인... 자네의 고통은 가장 격심한 것일세... 영원한 삶. 삶이 이 래벌처럼 자네에게 마음을 써주는가?" 그녀는 자신의 누런 엄니를 끔찍한 소리를 내면서 간다. "그토록 용감하고 열정적이었던 자네가, 이제는 완전히 길을 잃어... 슬프디 슬픈 일이네."~ */
  IF ~~ THEN REPLY #51680 /* ~"래벌, *왜* 당신은 나를 불사신으로 만들었소? 난 알아야만-"~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 238.0
  SAY #51681 /* ~"자네는 언제나 흥미로운 뼈와 살로 만든 퍼즐이었지, 그리고 내게 찾아와 청원하고, 부탁하고, 간청한 자들 중 가장 사랑스러웠지. 자네는 도와 달라고 간청했네." 래벌은 눈을 가늘게 뜨고 당신을 뚫어지게 바라본다. "너무나도 흉터가 많아서 그것들을 다 들추어 내고 한때 그 밑에 있었던 사람을 보기가 어렵네..."~ */
  IF ~~ THEN REPLY #51682 /* ~"래벌, 아무 거라도 좋으니 내가 한때 어떤 사람이었는지에 대해 말해줄 수 있겠소?"~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #51683 /* ~"늘 빛을 드리우는 것을 쫓는 실체를 지닌 그림자. 나는 자네에 대해 누구보다 잘 아네, 그러나 동시에..." 래벌은 잠시 멈춘다. 그녀의 눈은 점점 흐려지고 있다. "내가 그 어느 인간의 본성에 대해서도 알지 못하듯이 자네에 대해서도 잘 알지 못하네. 우리는 서로 얽힌 과거를 지니고 있네... 아직도 분리의 고통으로 시달리는 불-사로 더럽혀진 남자, 그리고 이제는 갇힌 쭈글쭈글한 노파."~ */
  IF ~~ THEN REPLY #51684 /* ~"서로 얽힌 과거?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #51685 /* ~"이번이 우리의 첫 만남인가? 아니, 아니, 아니, 아니... 아니?" 래벌은 잠시 어리둥절해 한다, 그러나 이내 무슨 짐이라도 털어 버리려는 듯 몸을 흔든다. "그렇지 않네. 이것은 미래의 만남... 아니면 과거의 만남의 메아리인가... 그건 시간이 흐르는 방향에 달렸겠지."~ */
  IF ~~ THEN REPLY #51686 /* ~"그럼 이... 이 만남은 과거의 만남과 공명한다는 말이오?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #51687 /* ~"지금과 그 때는 - 매우... 비슷한가? 지금과 그 때가 서로를 투영하며 너무 뒤얽혀... 또 다시 자네가 내 앞에 문제를 가지고 나타났네, 불가능한 일에 대한 답을 달라고 내게 도전하려고." 래벌은 쉿 소리를 내며 이글거리는 눈으로 당신을 바라본다. "아름답기는 하나 *배은망덕한* 사랑스런 사람!"~ */
  IF ~~ THEN REPLY #51688 /* ~"내가 당신에게 해결해 달라고 부탁한 불가능이란 대체 무엇이었소?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #51689 /* ~래벌은 당신 얘기를 듣지 못한 것 같다. 그녀가 흐릿한 눈으로 먼 데를 바라보고 있는 것을 볼 때, 그녀의 정신은 아직도 과거에 있는 것 같다. "자네의 눈은 열정으로 불타고 있었네, 회색 자매조차 움직일 수 있을 정도의... 자유로워지고자 하는 열정... 하지만 자유로워졌을 때 그 열정은 사라졌네. 분리와 함께 자네의 삶은 모든 의미를 잃었네." 래벌은 누런 엄니를 드러내며 미소짓는다, 그리고 마치 웃는 듯 엄니들을 찰깍거리기 시작한다. "만약 자네가 강아지처럼 뒷다리로 앉아서 앞발을 내민다면 -- 래벌이 자네에게 지식의 찌꺼기라도 하나 더 던져 줄 지도 모르지."~ */
  IF ~~ THEN REPLY #51690 /* ~"만약 답을 얻기 위해 애걸해야 한다면 그렇게 하겠소, 래벌: 당신이 아는 사실을 얘기해주시오. 어떤 일이 일어났는지 기억하기 위해선 당신 도움이 필요하오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 46
  IF ~~ THEN REPLY #51691 /* ~"당신의 도움을 얻기 위해 *애걸*하지는 않겠소, 래벌. 난 단지 질문하는 것 이상의 일은 하지 않을 거요.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #51692 /* ~"아... 이제는 마음이 부드러워졌나?" 검은 정맥들이 뻗어 있는 래벌의 눈이 번득이고, 그녀의 입 한쪽 구석이 뱀처럼 뒤틀리며 위로 치켜 올라간다. "삶이 자네를 부드럽게 했나... 아, 하지만 누구나 희망을 가질 수는 있지."~ */
  IF ~~ THEN REPLY #51693 /* ~"래벌, 난 당신에게 물어보고 싶은 것들이 많이 있소..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #51694 /* ~"자네는 어떤 경우에도 내게 무릎을 꿇으려고 하지는 않았지, 내 소중한 사람."~ */
  IF ~~ THEN REPLY #51695 /* ~"래벌, 난 당신에게 물어보고 싶은 것들이 많이 있소..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #51696 /* ~"오, 질문할 것들이 더 있나?" 래벌은 부드럽게 읊조리나, 그녀의 어조에는 질책하는 듯한 날카로움이 감추어져 있다. "쯧쯧. 하지만 자네는 이미 *너무* 많은 것들을 물었네. "검은 정맥들이 뻗어 있는 래벌의 눈이 호기심으로 번득인다. "이제는 자네가 내 질문에 대답할 차례이네, 반인."~ */
  IF ~~ THEN REPLY #51697 /* ~"좋소, 래벌... 질문을 하시오."~ */ GOTO 51
  IF ~~ THEN REPLY #51698 /* ~"래벌, 먼저 정보를 좀 더 얻어야겠소..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #51699 /* ~"자네가 내 질문에 *만족스럽게* 대답할 때까지 자네는 나로부터 그 어떠한 정보도 더 얻을 수가 없네. 이 건에 대해 날 시험하려고 들지는 말게 - 자네를 아끼는 내 마음에도 *한도*가 있네."~ */
  IF ~~ THEN REPLY #51700 /* ~"좋소..."~ */ GOTO 51
  IF ~~ THEN REPLY #51701 /* ~"나는 질문을 할 것이고 당신은 답을 해야만 하오, 래벌. 나는 당신 질문에 답해줄 시간도 인내심도 없소..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 52.17 52.18 58.2 58.3 68.12 68.13 69.11 69.12 70.10 70.11 92.2 98.15 99.15
  SAY #51702 /* ~"내 질문에 대답하지 않겠다는 건가... 감히?" 놀랍게도 그녀의 누런 엄니가 길쭉해지면서 번득이기 시작한다, 그리고 그녀의 손톱 역시 길어진다. "나는 자네에게 경고를 했네, 조심을 하라고... 그렇지 않으면 질문이 자네를 갈기갈기 찢어버릴 걸세..."~ */
  IF ~~ THEN REPLY #51703 /* ~"래벌, 나..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #51704 /* ~이 래벌의 법칙을 명심하게 - 자네가 내 질문에 대답하지 않으면, 나도 자네 질문에 더 이상 대답해줄 수가 없네, 내 소중한 사람. 대답을 할 때 조심하게, 아니면 질문이 자네를 갈기갈기 찢어버릴 테니..."~ */
  IF ~  NumInParty(1)
~ THEN REPLY #51705 /* ~"알겠소. 질문을 하시오, 래벌."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51706 /* ~"알겠소. 질문을 하시오, 래벌."~ */ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51707 /* ~"당신 규칙은 공정하오. 질문을 하시오, 래벌."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51708 /* ~"당신 규칙은 공정하오. 질문을 하시오, 래벌."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51709 /* ~"날 위협할 생각은 하지 마시오, 래벌... 질문이 있으면 하고 빨리 끝내도록 하시오..."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51710 /* ~"날 위협할 생각은 하지 마시오, 래벌... 질문이 있으면 하고 빨리 끝내도록 하시오..."~ */ GOTO 58
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.2 51.4
  SAY #51735 /* ~"나는 자네가 왜 여기 혼자 서 있는지 알고 알고 싶네... 왜 다른 자들은 자네와 함께 있지 않나?"~ */
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51736 /* ~"나는 동료를 원하지 않소. 내 길은 나만의 것이며 그것을 다른 이들과 함께 걸을 생각은 없소."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51737 /* ~"나는 동료를 원하지 않소. 내 길은 나만의 것이며 그것을 다른 이들과 함께 걸을 생각은 없소."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51738 /* ~"나는 동료를 원하지 않소. 내 길은 나만의 것이며 그것을 다른 이들과 함께 걸을 생각은 없소."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51739 /* ~"나는 동료를 원하지 않소. 내 길은 나만의 것이며 그것을 다른 이들과 함께 걸을 생각은 없소."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51740 /* ~"나는 동료를 원하지 않소. 내 길은 나만의 것이며 그것을 다른 이들과 함께 걸을 생각은 없소."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51741 /* ~"나는 동료를 원하지 않소. 내 길은 나만의 것이며 그것을 다른 이들과 함께 걸을 생각은 없소."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51742 /* ~"나는 동료를 원하지 않소. 내 길은 나만의 것이며 그것을 다른 이들과 함께 걸을 생각은 없소."~ */ GOTO 54
  IF ~~ THEN REPLY #51743 /* ~"나는 내가 함께 여행을 하고자 하는 사람을 만나지 못했소.~ */ GOTO 53
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51744 /* ~"이런 곳에 다른 사람들을 데려올 수는 없소, 래벌, 특히 나가는 방법도 모르는 상황에서는. 나는 이 여행은 내가 혼자서 해야 할 여행이라고 생각했소 ."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51745 /* ~진실: "다른 사람들도 이 곳에 왔소. 당신과 단둘이 이야기를 나누고 싶었기 때문에... 그들에게는 다른 곳에서 기다리라고 했소. ~ */ GOTO 58
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51746 /* ~진실: "다른 사람들도 이 곳에 왔소. 당신과 단둘이 이야기를 나누고 싶었기 때문에... 그들에게는 다른 곳에서 기다리라고 했소. ~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51747 /* ~진실: "다른 사람들도 이 곳에 왔소. 당신과 단둘이 이야기를 나누고 싶었기 때문에... 그들에게는 다른 곳에서 기다리라고 했소. ~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51748 /* ~진실: "다른 사람들도 이 곳에 왔소. 당신과 단둘이 이야기를 나누고 싶었기 때문에... 그들에게는 다른 곳에서 기다리라고 했소. ~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51749 /* ~진실: "다른 사람들도 이 곳에 왔소. 당신과 단둘이 이야기를 나누고 싶었기 때문에... 그들에게는 다른 곳에서 기다리라고 했소. ~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51750 /* ~진실: "다른 사람들도 이 곳에 왔소. 당신과 단둘이 이야기를 나누고 싶었기 때문에... 그들에게는 다른 곳에서 기다리라고 했소. ~ */ GOTO 58
  IF ~~ THEN REPLY #51751 /* ~"당신과 단둘이 이야기를 하고 싶었소, 래벌."~ */ GOTO 56
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51752 /* ~"나는 당신과 단둘이 이야기를 나누는 것이 좋다고 생각했소, 아름다운 래벌, 당신과 나 사이의 옛이야기들을 하며..."~ */ GOTO 57
  IF ~~ THEN REPLY #51753 /* ~"이 질문에는 답하지 않겠소, 래벌... 다른 질문을 하시오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51754 /* ~"당신 질문에는 이제 지쳤소, 래벌. 이제 다시 내가 질문할 차례요."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.7 52.8
  SAY #51755 /* ~"아... 그 때 그랬고... 지금도 그렇군... 다른 질문이 있네..."~ */
  IF ~~ THEN REPLY #51756 /* ~"계속하시오."~ */ GOTO 92
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2 52.3 52.4 52.5 52.6
  SAY #51757 /* ~"그것이 자네가 그들보고 내 검은 가시 미로의 다른 곳에서 기다리라고 한 이유인가? 다른 자들을 이 곳에 데려온 걸 볼 때 자네가 혼자서 여행한다는 건 말뿐이로군. 하지만 그래도 자네 말이 진실일 수는 있겠지... 하지만 래벌은 자네의 달콤한 말을 믿을 생각이 없네." 그녀는 코를 훌쩍인다. "자, 다른 질문이네..."~ */
  IF ~~ THEN REPLY #51758 /* ~"계속하시오."~ */ GOTO 92
END

IF ~~ THEN BEGIN 55 // from: 141.4
  SAY #51759 /* ~"나는 어떤 '귀부인'을 도우려고 했네, 하지만 불행히도 그녀는 내 호의를 거절했다네."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 162
END

IF ~~ THEN BEGIN 56 // from: 52.15
  SAY #51760 /* ~"아... 좋네... 자네와 나는 질문과 답을 서로 교환하는 거네... 그리고 그것들은 자네와 나 사이의 *비밀*이 될 걸세. 자. 다른 질문이 있네..."~ */
  IF ~~ THEN REPLY #51761 /* ~"계속하시오."~ */ GOTO 92
END

IF ~~ THEN BEGIN 57 // from: 52.16
  SAY #51762 /* ~"쳇! 아첨꾼 같으니!" 래벌은 추악하게 싱긋 웃는다, 그리고 조용히 킬킬댄다. "하지만 자네 관심은 반갑네... 아첨이 이 곳에는 자네에게 도움이 될지도 모르네. 자, 자네와 나는 질문과 답을 서로 교환하는 거네... 그리고 그것들은 자네와 나 사이의 *비밀*이 될 걸세." 그녀의 얼굴에서 웃음이 사라진다. "자. 다른 질문이 있네..."~ */
  IF ~~ THEN REPLY #51763 /* ~"계속하시오."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 92
END

IF ~~ THEN BEGIN 58 // from: 51.1 51.3 51.5 52.9 52.10 52.11 52.12 52.13 52.14
  SAY #51764 /* ~"나는 *왜* 자네가 이들과 함께 이 곳에 왔는지 알고 싶네... 그들은 자신들의 행선지를 모르고 있었나?"~ */
  IF ~~ THEN REPLY #51765 /* ~"그들은 나와 함께 이 길을 가기로 선택했소."~ */ GOTO 61
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51766 /* ~"물론 그들은 알고 있었소. 아름다운 래벌, 당신을 만나러 여기까지 오지 *않겠다고* 할 사람이 어디 있겠소? 인생에서 그런 기회란 여러 번 찾아오는 것이 아니오. 그들은 당신의 마력과 아름다움에 대한 전설이 진실인지를 확인하고 싶어했소... 내가 그것이 진실이라는 것을 알듯이."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",2)
~ GOTO 59
  IF ~~ THEN REPLY #51767 /* ~"이 질문에는 답하지 않겠소, 래벌... 다른 질문을 하시오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51768 /* ~"당신 질문에는 이제 지쳤소, 래벌. 이제 다시 내가 질문할 차례요."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #51769 /* ~래벌은 잠시 아무 말도 없이 당신을 쳐다본다, 그러나 이내 끔찍하게 싱긋 웃는다, 그녀의 누런 견치들은 그녀의 눈에서 나오는 희미한 빛을 받아 번득인다. "아아... 내 소중한 사람, 자네는 말뿐이군..." 그녀의 자주색 입술 사이로 검은 혀가 튀어나온다, 그리고 마치 식사라도 기대하는 듯 입가를 핥는다. "...하지만 자네는 무장은 철저하게 하고 있군."~ */
  IF ~~ THEN REPLY #51770 /* ~진실: "나는 진실만을 말하오, 래벌."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_4","GLOBALLaw",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
  IF ~~ THEN REPLY #51771 /* ~거짓말: "나는 진실만을 말하오, 래벌."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_3","GLOBALLaw",-1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #51772 /* ~그녀는 천천히 고개를 끄덕인다, 그리고 그녀의 얼굴에서 웃음이 사라진다. "그들은 자발적으로 자네와 여행을 하는 건가?"~ */
  IF ~~ THEN REPLY #51773 /* ~"그들은 나와 같은 길을 가기로 선택했소. 내가 말했듯이 누가-"~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 58.0 60.0
  SAY #51774 /* ~"*선택*? 아... 위험한 말이군. 정말 그런가?~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51775 /* ~"그렇소."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",2)
~ GOTO 62
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51776 /* ~"그렇소."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ GOTO 63
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51777 /* ~"그렇소."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ GOTO 64
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51778 /* ~"그렇소."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ GOTO 65
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51779 /* ~"그렇소."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ GOTO 66
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51780 /* ~"그렇소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51781 /* ~"그렇소, 이보시오, 래벌, 난 이럴 시간--"~ */ GOTO 68
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #51782 /* ~"그런가?" 래벌은 다콘을 쏘아본다. 그녀의 목소리는 마치 화살 같다. "그건 *선택*인가, 기스? 그런가? 아니면 그건 두 하늘의 문제인가?" ~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 171
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #51783 /* ~"톱니바퀴 상자는 어떤가?" 래벌은 냉소하며 노돔 쪽으로 돌아선다. "그것이 *선택*에 대해 무엇을 아는가?" 그녀가 손가락을 튕기자 뼈가 부러지는 듯한 소리가 난다. "복종, 또 복종밖에 없지 않는가?"~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 15
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #51785 /* ~"자네는 불타는 사내가 *선택*에 대해 신경이나 쓴다고 생각하나? 태울 것이냐 말 것이냐 - 이것들이 그가 지닌 단 두 개의 선택지네, 그리고 종국에 가서는 그 중에서 늘 한 '선택'이 이기지. 그건 불에게는 태우는 것 이외의 욕망은 없기 때문이 아니겠나?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 18
END

IF ~~ THEN BEGIN 65 // from: 61.3
  SAY #51786 /* ~래벌은 모트 쪽으로 고개를 돌린다. "해골, 해골, 해골..." 래벌은 각 단어를 내뱉을 때마다 혀를 찬다, 그리고 그녀의 입은 더욱 더 벌어진다. "피부로 포장이 되지 않아서 자네 표정은 읽기가 어렵군, 하지만 여기서도 자네 안의 공포가 느껴지는군. 이 곳에 온 건 자네의 선택이 아니었네." ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 508
END

IF ~~ THEN BEGIN 66 // from: 61.4
  SAY #51787 /* ~"서큐버스..." 래벌이 눈을 가늘게 뜬다. "그녀에게 선택의 여지가 있었나? 아마 부드러운 비단과 차가운 진실로 이루어진 그녀의 매끄러운 정신 속에서는 그랬을 지도 모르지. 선택이라... 쳇. 하지만 아니네. 센세이트는 모든 것을 체험해야 하네, 그리고 만약 오기를 거절한다면 더 이상 센세이트가 아니지. 역시 선택이 아니었네!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51788 /* ~"래벌. 이 일은 이제 그만..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51789 /* ~"래벌. 이 일은 이제 그만..."~ */ GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 61.5 66.0
  SAY #51790 /* ~"*티플링*. 열화 같은 아이." 래벌은 조용히 킬킬거린다, 그리고 그녀는 재미있다는 듯 눈을 번득인다. "선택의 여지가 전혀 없었네. *생각*이 아니라 *느낌*에 따라 행동할 때 선택이란 있을 수 없네."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 251
END

IF ~~ THEN BEGIN 68 // from: 61.6 66.1
  SAY #51791 /* ~"쉬잇.. 자네가 얘기하기에 충분한 시간이 있을 걸세, 내 소중한 사람." 래벌은 손톱으로 자신의 누런 엄니들 중 하나를 튕긴다. "다음 질문: 자네는 자네와 함께 온 자들에 대해 어떻게 생각하는가? 그들은 자네 마음 속에서 중요한 위치를 차지하는가?" 그녀는 미소짓는다, 그리고 그녀의 눈에서는 검은 정맥이 춤을 추듯이 움직인다. "아니면 자네 의지를 실현하기 위한 도구에 불과한가?"~ */
  IF ~~ THEN REPLY #51792 /* ~"왜 그런 것을 알고자 하오?"~ */ GOTO 69
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51793 /* ~진실: "그들은 내게 소중하오, 그리고 당신에게 필요한 답은 그것뿐이오. 다음 질문을 하시오."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51794 /* ~진실: "그들은 내게 소중하오."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51795 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51796 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51797 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51798 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 당신에게 필요한 답은 그것뿐이오. 다음 질문을 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51799 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51800 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51801 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51802 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51803 /* ~"내 동료들에 대한 내 감정은 나와 그들 사이의 문제요, 래벌. 그 질문에는 답하지 않겠으니 다른 질문을 하시오."~ */ GOTO 70
  IF ~~ THEN REPLY #51804 /* ~"그 질문에는 답하지 않겠소, 래벌..."~ */ GOTO 50
  IF ~~ THEN REPLY #51805 /* ~"당신 질문에는 이제 지쳤소, 래벌. 이제 다시 내가 질문할 차례요."~ */ GOTO 50
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #51806 /* ~"쳇... 기스저라이만큼이나 완고하고 아둔하군! 그건 또 다른 질문이나, 그 답에 대해서는 대가를 치를 필요가 없네 - 내 답은 단지 내가 알고 싶기 때문이란 걸세. 자, 자네의 그 회의적인 가슴으로부터 나오는 답을 들려주게."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51807 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51808 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51809 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51810 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51811 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51812 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 당신에게 필요한 답은 그것뿐이오. 다음 질문을 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51813 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51814 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51815 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51816 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51817 /* ~"내 동료들에 대한 내 감정은 나와 그들 사이의 문제요, 래벌. 그 질문에는 답하지 않겠으니 다른 질문을 하시오."~ */ GOTO 70
  IF ~~ THEN REPLY #51818 /* ~"그 질문에는 답하지 않겠소, 래벌..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51819 /* ~"당신 질문에는 이제 지쳤소, 래벌. 이제 다시 내가 질문할 차례요."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 70 // from: 68.11 69.10
  SAY #51820 /* ~"*여기*서 내게 뭘 숨길 생각은 말게, 반인!" 래벌이 쉿 소리를 낸다. "자네는 대답을 해야 하네, 아니면 이 가시나무 벽 안에서 고통을 받게 될 걸세."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51821 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51822 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51823 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51824 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51825 /* ~진실: "그들은 내게 소중하오"~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51826 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 당신에게 필요한 답은 그것뿐이오. 다음 질문을 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51827 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51828 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51829 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51830 /* ~진실: "도구에 불과하오. 그 이상도 이하도 아니오. 그들은 나름대로의 이유 때문에 나를 따르고 나는 그들의 능력을 이용하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51831 /* ~"그 질문에는 답하지 않겠소, 래벌..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51832 /* ~"당신 질문에는 이제 지쳤소, 래벌. 이제 다시 내가 질문할 차례요."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 71 // from: 68.2 69.1 70.1
  SAY #51833 /* ~"기스조차도?" 래벌의 잿빛 시선이 다콘에게로 향한다, 그리고 시선은 다시 당신 눈으로 향한다. "그가 자네에게 있어 어떤 존재인지 말하게, 그리고 진실만 말하게, 아니면 그는 내 정원의 비료가 될 테니까."~ */
  IF ~~ THEN REPLY #51834 /* ~진실: "그는 내 맹우요. 나는 그를 잘 *아오.* 그는 내 친구요."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #51835 /* ~진실: "기스 말이오? 나는 그에 대해 별로 신경을 쓰지 않소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
SetGlobal("Ravel_Dakkon","GLOBAL",4)
~ GOTO 73
  IF ~~ THEN REPLY #51836 /* ~진실: "때로 그는 나를 화나게 하오. 나는 그를 증오하오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",5)
~ GOTO 73
  IF ~~ THEN REPLY #51837 /* ~진실: "그는 많은 것에 대해 침묵하고 있소. 나는 그를 아직 신뢰하지 않소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #51838 /* ~진실: "그는 유용하오... 그 이상도 이하도 아니오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",7)
~ GOTO 73
  IF ~~ THEN REPLY #51839 /* ~진실: "그는 신뢰할만하오. 그는 충실하며 나와 함께 용감히 싸웠소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",8)
~ GOTO 73
  IF ~~ THEN REPLY #51840 /* ~진실: "나는 아직 다콘에 대해 평할 수 있을 정도로 그에 대해 알지 못하오."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",9)
~ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 68.7 69.6 70.6
  SAY #51841 /* ~"기스조차도?" 래벌의 잿빛 시선이 다콘에게로 향한다, 그리고 시선은 다시 당신 눈으로 향한다. "그는 자네에게 있어 아무런 의미도 없나? 진실을 말하게: 그는 도구인가?"~ */
  IF ~~ THEN REPLY #51842 /* ~진실: "나는 그에 대해 아무런 관심도 없소. 그는 나를 따르고 내 명령에 복종하오. 그뿐이오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",10)
~ GOTO 73
  IF ~~ THEN REPLY #51843 /* ~진실: "나는 그를 증오하오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 73
  IF ~~ THEN REPLY #51844 /* ~진실: "그렇소. 그는 언제까지나 도구일 뿐이오. 우리 사이에 신뢰란 없소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 73
  IF ~~ THEN REPLY #51845 /* ~진실: "아마 아직 내가 그에 대해서 잘 모르기 때문인지도 모르나 지금으로선 그에 대해 아무런 감정도 없소."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.0 71.1 71.2 71.3 71.4 71.5 72.0 72.1 72.2 72.3
  SAY #51846 /* ~"아..." 래벌은 고개를 끄덕인다... 그리고 손톱을 튕기면서 다시 미소를 짓는다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51847 /* ~"그것이 놀랍소?"~ */ GOTO 75
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51848 /* ~"그것이 놀랍소?"~ */ DO ~MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51849 /* ~"그것이 놀랍소?"~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("Dannah")
~ THEN REPLY #51850 /* ~"그것이 놀랍소?"~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51851 /* ~"그것이 놀랍소?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 74 // from: 71.6
  SAY #51852 /* ~래벌은 씨근거린 후 엄니들로 찰칵 소리를 내기 시작한다. "애매하지만 간단한 답이군. 상관없네."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #51853 /* ~"그것은 진실이오, 래벌."~ */ GOTO 75
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51854 /* ~"그것은 진실이오, 래벌."~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51855 /* ~"그것은 진실이오, 래벌."~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51856 /* ~"그것은 진실이오, 래벌."~ */ GOTO 92
END

IF ~~ THEN BEGIN 75 // from: 68.3 69.2 70.2 73.0 74.0
  SAY #51857 /* ~"해골은 어떤가?" 래벌은 모트을 쳐다보려고 하지도 않는다. "물론 자네 같은 사람에게 그 따위는 아무런 의미도 없겠지! 아니면... 있는가?"~ */
  IF ~~ THEN REPLY #51858 /* ~진실: "나는 그를 좋아하오. 그는 내 친구요"~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",3)
~ GOTO 77
  IF ~~ THEN REPLY #51859 /* ~진실: "해골 말이오? 나는 그에 대해 별로 신경을 쓰지 않소."~ */ DO ~MoraleDec("Morte",2)
SetGlobal("Ravel_Morte","GLOBAL",4)
~ GOTO 77
  IF ~~ THEN REPLY #51860 /* ~진실: "그는 나를 자주 화나게 하고 전투에서도 쓸모가 없소. 난 그를 싫어하오."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",5)
~ GOTO 77
  IF ~~ THEN REPLY #51861 /* ~진실: "솔직히 말해 나는 아직 그를 믿지 않소. 그는 많은 것을 알고 있는 듯하나, 내게 그것을 모두 털어놓을 생각은 없는 것 같소."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",6)
~ GOTO 77
  IF ~~ THEN REPLY #51862 /* ~진실: "그는 때로 짜증스럽긴 하지만... 나름대로의 용도가 있소."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",7)
~ GOTO 77
  IF ~~ THEN REPLY #51863 /* ~진실: "그는 쓸모가 있소... 그 이상도 이하도 아니오."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",8)
~ GOTO 77
  IF ~~ THEN REPLY #51864 /* ~진실: "나는 모트에 대해 평할 만큼 그에 대해 아는 것이 없소."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",9)
~ GOTO 77
  IF ~~ THEN REPLY #51865 /* ~진실: "그는 신뢰할만하오. 그는 충실하며 시체안치소에서 내 목숨을 구해주었소."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",10)
~ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 68.8 69.7 70.7 73.1
  SAY #51866 /* ~"해골은 어떤가?" 래벌은 모트을 쳐다보려고 하지도 않는다. "자네 같은 사람에게 그 따위가 아무런 의미도 없다는 건 놀라운 일이 아니지! 아니면... 있는가?"~ */
  IF ~~ THEN REPLY #51867 /* ~진실: "나는 그에 대해 아무런 관심도 없소. 그는 나를 따르고 내 명령에 복종하오. 그뿐이오."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 77
  IF ~~ THEN REPLY #51868 /* ~진실: "나는 그를 증오하오."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 77
  IF ~~ THEN REPLY #51869 /* ~진실: "그렇소, 그리고 그는 언제까지나 도구에 불과할 것이오, 우리 사이에 신뢰란 없으니까."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 77
  IF ~~ THEN REPLY #51870 /* ~진실: "아마 아직 내가 그에 대해서 잘 모르기 때문인지도 모르나 지금으로선 그에 대해 아무런 감정도 없소."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",14)
~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.1 75.2 75.3 75.4 75.5 75.6 75.7 76.0 76.1 76.2 76.3
  SAY #51871 /* ~"흥미롭군, 흥미롭군, 흥미로워..." 래벌은 미소짓는다. "자네는 정말 흥미로운 퍼즐을 만들고 있군. 자네 정신의 암흑 속에 또 무엇이 도사리고 있나?"~ */
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51872 /* ~"나는 아무 것도 숨기지 않고 있소."~ */ GOTO 78
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51873 /* ~"나는 아무 것도 숨기지 않고 있소."~ */ DO ~MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51874 /* ~"나는 아무 것도 숨기지 않고 있소."~ */ GOTO 87
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51875 /* ~"나는 아무 것도 숨기지 않고 있소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51876 /* ~"나는 아무 것도 숨기지 않고 있소."~ */ GOTO 92
END

IF ~~ THEN BEGIN 78 // from: 68.4 68.9 69.3 69.8 70.3 70.8 73.2 74.1 77.0 77.1
  SAY #51877 /* ~"아..." 래벌의 목소리가 위압적인 무게를 지닌다, 그리고 그녀는 눈을 이글거리며 훨-후럼-그레이스 쪽으로 시선을 돌린다. "자, 질문의 핵심일세 - 어비스의 요부... 그녀는 자네에게 있어 단순한 육욕의 대상 이상의 존재인가, 아니면 그녀는 자네에게 있어 *또 다른* 의미를 지니는가?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 163
END

IF ~~ THEN BEGIN 79 // from:
  SAY #51878 /* ~래벌은 다시 당신 쪽으로 고개를 돌린다, 그리고 기대가 되는 듯 엄니들로 찰칵 소리를 낸다. "*말하게,* 내 소중한 사람, 하지만 말할 때는 조심하게."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51879 /* ~거짓말: "당신에게 그녀는 무엇이오, 아름다운 래벌? 그대의 용모, 지식, 그리고 마력 앞에서 그녀는 티끌만도 못한 존재요."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",3)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51880 /* ~진실: "당신에게 그녀는 무엇이오, 아름다운 래벌? 그대의 용모, 지식, 그리고 마력 앞에서 그녀는 티끌만도 못한 존재요."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",4)
~ GOTO 81
  IF ~~ THEN REPLY #51881 /* ~진실: "그녀와 사랑에 빠질지도 모르겠소."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",5)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51882 /* ~진실: "난 그녀를 좋아하오. 그녀에게는 장점이 많소. 난 그녀를 친구로 생각하오."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",6)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51883 /* ~진실: "서큐버스 말이오? 난 그녀에게 아무런 관심도 없소."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",7)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51884 /* ~진실: "그녀의 우월감은 때로 견디기가 힘드오. 나는 그녀를 증오하오."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",8)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51885 /* ~진실: "수백 년이나 산 마족치고는 자신의 과거에 대해 별로 할 얘기가 없는 듯하오. 난 그녀를 믿지 않소."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",9)
MoraleDec("Grace",1)
~ GOTO 80
  IF ~~ THEN REPLY #51886 /* ~진실: "그녀는 쓸모가 있소. 그 이상도 이하도 아니오."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",10)
MoraleDec("Grace",1)
~ GOTO 81
  IF ~~ THEN REPLY #51887 /* ~진실: "나는 아직 그녀를 잘 모르오."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",11)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.2 79.3 79.6 79.8 82.0
  SAY #51888 /* ~래벌은 고개를 돌려 눈을 가늘게 뜨고 그레이스를 쳐다본다. "흠..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51889 /* ~"이런 게임은 그만두시오. 래벌. 보시오-"~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51890 /* ~"이런 게임은 그만두시오. 래벌. 보시오-"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51891 /* ~"다른 질문은 없소?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 81 // from: 79.0 79.1 79.4 79.5 79.7
  SAY #51892 /* ~래벌은 고개를 돌려 눈을 가늘게 뜨고 그레이스를 쳐다본다. "흠... 그럼 만약 내가 그녀를 죽이고 그 지옥의 심장을 꺼내도, 자네는 미동도 하지 않을 건가? 신중히 대답하게..."~ */
  IF ~~ THEN REPLY #51893 /* ~"내가 한 말을 취소하겠소. 난 그녀가 다치는 것을 원하지 않소."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 82
  IF ~~ THEN REPLY #51894 /* ~"그녀를 내려치시오, 래벌 - 난 그녀에 대해 아무런 감정도 없소. 그녀는 소지품에 불과하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_4","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_5","GLOBALGood",-3)
MoraleDec("Grace",5)
SetAnimState("Grace",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Grace",ANIM_MIMESTANCE)
~ EXTERN ~DGRACE~ 164
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #51895 /* ~"흥! 모순투성이 사내구먼!" 래벌의 눈이 불탄다, 그리고 그녀가 당신 쪽으로 돌아서자 당신은 그녀의 눈의 정맥이 한층 *날카로워졌음을* 느낀다. "지금 자네의 해골 속에는 대체 어떤 생각이 들어 있나?"~ */
  IF ~~ THEN REPLY #51896 /* ~"내가 거짓말을 했소 - 내가 무슨 말을 했는지는 모르겠으나 나는 여러 생 동안 이미 남을 만큼의 죽음을 체험했소 - 그것이 내 것이든 아니면 남의 것이든 간에."~ */ GOTO 80
END

IF ~~ THEN BEGIN 83 // from:
  SAY #51897 /* ~래벌은 훨-후럼-그레이스를 살펴보더니 킬킬댄다. "네 어떤 방어도 여기서는 아무런 쓸모가 없다, 타나리... 하지만 참으로 고결한 시도로군. 네 안에 공포를 잘 간직하고 있거라, 곧 내가 널 상대해 줄 테니..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51898 /* ~"이런 게임은 그만두시오. 래벌. 이보시오-"~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51899 /* ~"이런 게임은 그만두시오. 래벌. 이보시오-"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51900 /* ~"다른 질문은 없소?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 80.0 80.1 83.0 83.1
  SAY #51901 /* ~"흠..." 래벌은 돌아서서 엄니들을 찰칵거린다, 그리고 안나를 냉소어린 표정으로 흘긋 본다. "그리고 이 살덩어리... 흰들링... 주홍머리와 불타는 열정을 지닌 티플링은 어떤가? 그녀는 자네에게 무엇인가, 내 소중한 사람?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51902 /* ~거짓말: "아무런 존재도 아니오. 오직 그대만이 내게 의미가 있을 뿐이오."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51903 /* ~진실: "아무런 존재도 아니오. 오직 그대만이 내게 의미가 있을 뿐이오."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~  Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51904 /* ~진실: "그녀와 사랑에 빠질지도 모르겠소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleDec("Grace",3)
~ GOTO 85
  IF ~  !Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51905 /* ~진실: "그녀와 사랑에 빠질지도 모르겠소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51906 /* ~진실: "나는 그녀와 함께 있는 것이 좋소... 나는 그녀를 내 친구로 생각하오."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51907 /* ~진실: "휜들링 말이오? 나는 그녀에 대해 별 관심이 없소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51908 /* ~진실: "그녀의 경솔함은 견디기 어려울 때가 많소. 나는 그녀가 싫소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51909 /* ~진실: "그녀는 마족의 나쁜 점을 빠짐없이 갖춘 듯하오. 나는 그녀를 전혀 신뢰하지 않소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51910 /* ~진실: "그녀는 쓸모가 있소. 그 이상도 이하도 아니오."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51911 /* ~진실: "나는 그녀에 대해 아직 잘 알지 못하오."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 88
END

IF ~~ THEN BEGIN 85 // from: 84.2
  SAY #51912 /* ~그녀의 눈이 일거린다, 그리고 그녀는 손톱들을 정면에서 마치 부채처럼 휘두르기 시작한다. 당신은 무의식적으로 한 걸음 물러선다. "사랑이 이 두 마족 창녀들과 래벌 사이에 그런 식으로 공유될 수 있다고 생각하다니, 자네는 정말 사랑에 대해 아무 것도 모르네, 내 소중한 사람... 더 이상 자네 말을 듣지 않겠네 - 자네는 내 질문에 대답을 했네..."~ */
  IF ~~ THEN REPLY #51913 /* ~"래벌, 내가 실언을 했소! 나는 내가 무슨 말을 했는지도 모르오 - 그게 내 본의가 아닌--"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #51914 /* ~래벌의 입술은 뒤로 말리고, 그녀의 목소리는 울부짖는 바람처럼 날카로워진다. "자네가 아는 것에 대해 무엇을 아나, 반인?! 이걸 알도록 하게: 자네는 세상이 끝나는 날까지 내 가시나무 정원에 머무르며, 자네가 내게 약속했듯이 나만을 사랑하게 될 걸세!"~ */
  IF ~~ THEN REPLY #51915 /* ~"만약 싸움으로 이 문제를 해결해야만 한다면 그렇게 합시다. 각오하시오, 래벌..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 87 // from: 68.5 68.10 69.4 69.9 70.4 70.9 73.3 74.2 77.2 77.3
  SAY #51916 /* ~"아... 그리고 이것이 가시가 돋친 질문일세 - 양날이 아니라 날이 백 개는 되네, 그리고 다음 가시는 이전 가시보다 훨씬 더 날카롭네." 래벌은 손톱으로 안나를 가리킨다. " 흰들링... 주홍머리와 불타는 열정을 지닌 티플링은 어떤가? 그녀는 자네에게 무엇인가, 내 소중한 사람?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51917 /* ~거짓말: "아무런 존재도 아니오. 오직 그대만이 내게 의미가 있을 뿐이오."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51918 /* ~진실: "아무런 존재도 아니오. 오직 그대만이 내게 의미가 있을 뿐이오."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~~ THEN REPLY #51919 /* ~진실: "그녀와 사랑에 빠질지도 모르겠소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51920 /* ~진실: "나는 그녀와 함께 있는 것이 좋소... 나는 그녀를 내 친구로 생각하오."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51921 /* ~진실: "휜들링 말이오? 나는 그녀에 대해 별 관심이 없소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 88
  IF ~~ THEN REPLY #51922 /* ~진실: "그녀의 경솔함은 견디기 어려울 때가 많소. 나는 그녀가 싫소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51923 /* ~진실: "그녀는 마족의 나쁜 점을 빠짐없이 갖춘 듯하오. 나는 그녀를 전혀 신뢰하지 않소."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51924 /* ~진실: "그녀는 쓸모가 있소. 그 이상도 이하도 아니오."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51925 /* ~진실: "나는 그녀에 대해 아직 잘 알지 못하오."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 84.3 84.4 84.9 87.2 87.3 87.4 90.0
  SAY #51926 /* ~래벌은 안나를 흘긋 본다, 그리고 눈을 번득이며 코방귀를 뀐다. "흠... 그럼 그러도록 하게."~ */
  IF ~~ THEN REPLY #51927 /* ~"이런 게임은 그만두시오. 래벌. 이보시오-"~ */ GOTO 92
END

IF ~~ THEN BEGIN 89 // from: 84.0 84.1 84.5 84.6 84.7 84.8 87.0 87.1 87.5 87.6 87.7 87.8
  SAY #51928 /* ~래벌은 안나를 흘긋 본다, 그리고 눈을 번득이며 코방귀를 뀐다. "흠... 그럼 자네는 그녀가 없어져도 개의치 않을 건가? 트리지트들이 그녀의 뜨거운 피를 몹시 즐길 걸세... 그것들이 마족의 피를 맛본지도 벌써 오래되었지." 래벌은 안나로부터 눈을 떼지 않는다, 그러나 계속해서 당신과 얘기를 한다. 신중하게 대답하게, 내 소중한 사람. 이건 게임이 아니네."~ */
  IF ~~ THEN REPLY #51929 /* ~"내가... 한 말을 취소하겠소. 나는 그녀가 다치는 것을 원하지 않소."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 90
  IF ~~ THEN REPLY #51930 /* ~"그녀를 내려치시오, 래벌 - 난 그녀에 대해 아무런 감정도 없소. 그녀는 벌통의 더러운 쓰레기에 불과하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_6","GLOBALGood",-3)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-5)
~ EXTERN ~DANNAH~ 255
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #51931 /* ~"흥! 모순투성이 사내구먼!" 래벌의 눈이 불탄다, 그리고 그녀가 당신 쪽으로 돌아서자 당신은 그녀의 눈의 정맥이 한층 *날카로워졌음을* 느낀다. "지금 자네의 해골 속에는 대체 어떤 생각이 들어 있나?"~ */
  IF ~~ THEN REPLY #51932 /* ~"내가 거짓말을 했소 - 내가 무슨 말을 했는지는 모르겠으나 나는 여러 생에 걸쳐 충분하고 남을 만큼의 죽음을 체험했소 - 그것이 내 것이든 아니면 남의 것이든 간에."~ */ GOTO 88
END

IF ~~ THEN BEGIN 91 // from:
  SAY #51933 /* ~"나는 그녀를 죽이지 않겠네... 아직은. 왜냐하면 그녀는 이 검은 가시 미로에서 오래 버티지 못할 것이기 때문이지... 내 말이 들리나, 아이야? 네가 좋아하는 그림자들도 여기서는 널 안전하게 해주지 못할 것이다." 래벌은 안나를 보면서 킬킬거린다. "너의 분노가 네게 힘을 주기를 기도해라. 생과 사의 기로를 가를 수도 있을 테니..."~ */
  IF ~~ THEN REPLY #51934 /* ~"이런 게임은 그만두시오, 래벌. 질문할 것이 다 떨어졌소?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 53.0 54.0 56.0 57.0 68.1 68.6 69.0 69.5 70.0 70.5 73.4 74.3 77.4 80.2 83.2 88.0 91.0
  SAY #51935 /* ~"내 다음 질문은 이것이네..." 래벌의 목소리가 속삭이는 것처럼 낮아진다. 그리고 갑자기 당신에게는 그녀가 답을 듣고 싶어하지 않는다는 묘한 생각이 든다, "왜 내게 *돌아오는* 데 그토록 오랜 시간이 걸렸나? 나는 자네 없이 너무 외로웠네, 내 소중한 사람."~ */
  IF ~~ THEN REPLY #51936 /* ~"이 곳에 오는 길을 찾기란... 쉽지 않았소, 래벌."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 93
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51937 /* ~"이 곳에 오는 길을 찾기란... 쉽지 않았소, 아름다운 래벌. 당신에게 손님을 데려오기 위해 나는 많은 노력을 기울였소, 그리고 당신 앞에 다시 서기 위하여 많은 시련을 겪어야만 했소. 하지만 당신을 다시 만나게 되어 기쁘오, 래벌. 시간조차도 당신의 아름다움을 어떻게 하지는 못한 것 같소."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 94
  IF ~~ THEN REPLY #51938 /* ~"그 질문에는 답하지 않겠소, 래벌..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #51939 /* ~"그토록 어려웠나? ?" 그녀는 입가에 약간의 미소를 띄운다. "그럼 자네의 방문은 참으로 소중한 것이로군. 고맙네."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51940 /* ~"내게 다른 질문이 있소.?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51941 /* ~"내게 다른 질문이 있소.?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51942 /* ~"내게 다른 질문이 있소.?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 94 // from: 92.1
  SAY #51943 /* ~"자네 대답.." 래벌의 눈이 번득인다, 그리고 그녀는 이빨을 드러내며 엽기적인 미소를 짓는다. "자네 말은 내 마음을 달래 주는군... 그런 말은 오랫동안 들어보지 못했네... 그건 내 검은 가시나무 같은 마음조차 흔들어 놓는구먼. 자네의 기억이 어디에 있든지 간에 자네의 매력은 여전하네, 귀여운 것 같으니..."~ */
  IF ~~ THEN REPLY #51944 /* ~"아니, 변함없는 것은 *그대의* 매력이오, 아름다운 래벌."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 95
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51945 /* ~"아마도. 내게 다른 질문이 있소.?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51946 /* ~"아마도. 내게 다른 질문이 있소.?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51947 /* ~"아마도. 내게 다른 질문이 있소.?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #51948 /* ~"매혹, 매료, 현혹... 래벌은 이러한 것들에 통달했네... 하지만 그럼에도 내가 자네로부터 배울 수 있는 것들이 많을 것 같네..."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51949 /* ~"아마도. 내게 다른 질문이 있소.?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51950 /* ~"아마도. 내게 다른 질문이 있소.?"~ */ GOTO 97
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51952 /* ~"아마도. 내게 다른 질문이 있소.?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 93.0 94.1 95.0
  SAY #51953 /* ~"아, 그래. 세 번째이자 마지막 질문은 간단한 것이네. 그것에 대답만 하면 자네 질문들을 내게로 날려 보내게, 그럼 이 래벌이 답이라는 새장 안에 그들을 가둘 테니... 내 마지막 질문은 바로 *이것*이네..."~ */
  IF ~~ THEN REPLY #51954 /* ~"그래서...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",7)
StartCutSceneMode()
StartCutSceneEx("0610Cut9",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1 93.2 94.2 94.3 95.1 95.2
  SAY #51959 /* ~"아, 그래. 세 번째이자 마지막 질문은... *이것*이네..." 래벌이 입을 열어 그녀의 마지막 질문을 내뱉자, 당신은 이 마지막 질문이 그 질문을 들은 수많은 사람들의 목숨을 앗아 갔다는 끔찍한 사실을 갑자기 깨닫는다. 당신은 그것이 무엇인지 안다, 그리고 당신은 그것이 당신 속에서 솟아 나오려 하고 있다는 것을 느낀다, 그리고 당신은 그것에 대해 물어보려는 강한 충동을 느낀다. ~ */
  IF ~~ THEN REPLY #51962 /* ~메아리: "무엇이 인간의 본성을 바꿀 수가 있나?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",8)
StartCutSceneMode()
StartCutSceneEx("0610CutC",FALSE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",7)
~ THEN BEGIN 98 // from:
  SAY #51963 /* ~"무엇이 인간의 본성을 바꿀 수가 있나?"~ [RAV079B] */
  IF ~~ THEN REPLY #51964 /* ~진실: "모르...겠소."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51965 /* ~진실: "사랑."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51966 /* ~진실: "증오."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51967 /* ~진실: "권력."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51968 /* ~진실: "탐욕."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51969 /* ~진실: "배신."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51970 /* ~진실: "죽음."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51971 /* ~진실: "후회."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51972 /* ~진실: "나이."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51973 /* ~진실: "고통."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51974 /* ~진실: "성공."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51975 /* ~진실: "다원 우주."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51976 /* ~진실: "래벌, 당신이오. 당신이 날 영원히 바꾸어 놓았소."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51977 /* ~거짓말: "아름다운 여자, 래벌. 당신이 날 바꾼 것처럼."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51978 /* ~진실: "그 무엇도 인간의 본성을 바꿀 수는 없소, 래벌."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51979 /* ~진실: "그 질문에는 답할 수가 없소..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF WEIGHT #8 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",8)
~ THEN BEGIN 99 // from:
  SAY #51980 /* ~"자네는 아직도 잊지 않았군..." 래벌은 미소짓는다, 그리고 그녀의 누런 이빨이 번득인다. "자네 대답은?"~ */
  IF ~~ THEN REPLY #51981 /* ~진실: "모르...겠소."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51982 /* ~진실: "사랑."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51983 /* ~진실: "증오."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51984 /* ~진실: "권력."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51985 /* ~진실: "탐욕."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51986 /* ~진실: "배신."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51987 /* ~진실: "죽음."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51988 /* ~진실: "후회."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51989 /* ~진실: "나이."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51990 /* ~진실: "고통."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51991 /* ~진실: "성공."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51992 /* ~진실: "다원 우주."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51993 /* ~진실: "래벌, 당신이오. 당신이 날 영원히 바꾸어 놓았소."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51994 /* ~거짓말: "아름다운 여자, 래벌. 당신이 날 바꾼 것처럼."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51995 /* ~진실: "그 무엇도 인간의 본성을 바꿀 수는 없소, 래벌."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51996 /* ~진실: "그 질문에는 답할 수가 없소..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF ~~ THEN BEGIN 100 // from: 98.0 98.1 98.2 98.3 98.4 98.5 98.6 98.7 98.8 98.9 98.10 98.11 98.12 98.13 98.14 99.0 99.1 99.2 99.3 99.4 99.5 99.6 99.7 99.8 99.9 99.10 99.11 99.12 99.13 99.14
  SAY #51997 /* ~"그리고 그것이 자네 대답인가...?" 래벌의 눈의 정맥이 약간 움직이기 시작한다, 그리고 그녀는 사악한 미소를 짓는다. "말하기 전에 확실히 정하게."~ */
  IF ~~ THEN REPLY #51998 /* ~"그것은 *당신*이 원하던 답이 아닐지도 모르나 *내*가 생각할 수 있는 최선의 답이오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 101 // from:
  SAY #51999 /* ~"아!" 래벌이 킬킬거린다, 그러나 이내 웃음은 멈추고 그녀는 당신을 응시한다. 그녀가 어찌나 강렬한 시선으로 당신을 바라보는지, 당신 피부가 칼에 찔린 듯한 고통으로 몸부림치는 것처럼 느껴질 지경이다. 래벌의 눈의 정맥이 약간 움직이기 시작한다, 그리고 그녀는 사악한 미소를 짓는다. "듣기 좋은 대답이군... 하지만 그것이 옳은 대답인가? 말하기 전에 확실히 정하게."~ */
  IF ~~ THEN REPLY #52000 /* ~"그것은 *당신*이 원하던 답이 아닐지도 모르나 *내*가 생각할 수 있는 최선의 답이오."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 100.0 101.0
  SAY #52001 /* ~"내가 바랐던 건 그것뿐이네, 내 소중한 사람." 래벌이 얼굴을 편다. "간단한 대답이네, 하지만 많은 사람들은 *내* 대답을 찾으려 했기 때문에 내 손에 목숨을 잃었지."~ */
  IF ~~ THEN REPLY #52002 /* ~"그것이오...? 내 생각으로는..."~ */ GOTO 103
  IF ~~ THEN REPLY #52003 /* ~"하! 그들은 정말 어리석었군... 하지만 인간이란 원래 그런 게 아니겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_7","GLOBALGood",-1)
~ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #52004 /* ~래벌이 킬킬댄다. "나는 그 질문을 셀 수 없을 정도로 했네, 하지만 날 찾아온 어리석은 자들이 자신들의 답을 제시한 적은 한 번도 없었네. 그들은 늘 내 마음을 읽어 그 안에 어떤 답이 들어 있는지 알아내려고 했지... 쳇! 하지만 거기에 잔실은 없네."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52005 /* ~"나는... 당신 말을 믿지 않소. 사실 그 누구의 답도 당신을 만족시키지는 못했을 거요, 설령 그들의 답이 그들에게 있어서는 진실이었더라도."~ */ GOTO 104
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52006 /* ~"자, 내게 거짓말을 할 필요는 없소, 래벌. 우리 둘 다 그 누구의 답도 당신을 만족시키지는 못했을 거라는 사실을 알고 있소, 설령 그들의 답이 그들에게 있어서는 진실이었더라도."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #52007 /* ~기묘하게도 래벌은 갑자기 침묵한다. 그녀는 경계하는 눈빛으로 당신을 지켜보고 있다.~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52008 /* ~"당신이 원했던 것은 *내* 답뿐이었소. 따라서 그 누구의 답도 당신을 만족시킬 수는 없었소. 종국에 가서는 시체들이 산처럼 쌓였겠군, 그렇지 않소?~ */ JOURNAL #52010 /* ~그 역겨운 할망구 래벌은 나를 세 가지 공허한 질문으로 날 귀찮게 하였는데, 그 중 마지막 질문은 내가 이전에 들어본 적이 있다는 사실을 *알고* 있는 것이었다: "무엇이 인간의 본성을 바꿀 수 있는가?" 나는 그녀의 질문에 대답했고 그녀는 그것을 받아들였다. 내가 의심했던 대로 그녀가 그토록 오래도록 얻기를 갈망했던 것은 *내* 대답이었고 그것이 어떤 것인지는 중요하지 않았다. 그런 사실도 모르고 여러 세기에 걸쳐 래벌의 질문의 답을 찾으려고 노력하다 죽어간 바보들을 생각하면... 아마 이러한 백치같은 행위가 차원들을 움직이는 것인지도 모르겠다. ~ */ GOTO 105
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52009 /* ~"당신은 내 답 이외의 답에는 관심도 없었소. 전혀. 안 그렇소? 그럼에도 불구하고 당신은 계속 질문을 던졌소, 그들이 어떤 답을 하던 간에 당신 손에 죽으리라는 사실을 뻔히 알면서."~ */ JOURNAL #52011 /* ~래벌은 내게 세 가지 질문을 하였는데, 그 중 마지막 질문은 내가 이전에 들어본 적이 있다는 사실을 *알고* 있는 것이었다: "무엇이 인간의 본성을 바꿀 수 있는가?" 나는 그녀의 질문에 대답했고 그녀는 그것을 받아들였다. 왜냐하면 내가 진심으로 대답한 것이라면 어떤 대답이든 간에 그것은 그녀가 오래도록 원하던 답이기 때문이다. 많은 청원자들이 래벌의 질문의 답을 찾으려고 노력하다 죽어갔을 것이다... 그녀가 필요로 했던 것은 오직 내 대답 하나뿐이었다는 사실도 알지 못하고.~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0 104.1
  SAY #52012 /* ~래벌은 쉿 소리를 낸다 "물론 내가 원했던 건 오직 자네 대답일세. 애당초 내가 그런 질문을 던진 유일한 이유는 바로 자네였으니까! 자네는 내가 그들에게 무슨 관심이 있었다고 생각하나...? 쳇! 자네는 내가 자네에게 쏟는 관심의 백만 분의 일이라도 그들에게 쏟았다고 생각하나, 내 소중한 사람? 대답을 하게!"~ */
  IF ~~ THEN REPLY #52013 /* ~"당신 질문에는 모두 답했소, 래벌. 이제는 당신이 *내* 질문에 답할 차례요."~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0 107.1 108.2 109.1 110.1 111.1 112.1 113.1 114.1 115.4 116.2 117.1 118.1 119.1 120.1 121.1 125.1 126.2 127.1 128.3 129.2 131.1 136.1 137.1 138.2 139.0 140.0 141.8
  SAY #52014 /* ~"물론이지... 늘 질문, 그리고 또 질문..."~ */
  IF ~  Global("Ravel_Ritual_4","AR0610",0)
~ THEN REPLY #52015 /* ~"왜 당신은 나를 불사신으로 만들었소, 래벌?"~ */ GOTO 107
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52016 /* ~"다시 말해주시오, 래벌 - 왜 당신은 나를 불사신으로 만들었소?"~ */ GOTO 107
  IF ~  NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52017 /* ~"그래 당신이 나로부터 죽음을 분리해냈군, 래벌... 그것은 아직 무사하오?~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52018 /* ~"그래 당신이 나로부터 죽음을 분리해냈군, 래벌... 그것은 아직 무사하오?~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52019 /* ~"그래 당신이 나로부터 죽음을 분리해냈군, 래벌... 그것은 아직 무사하오?~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52020 /* ~"내 죽음은 아직 무사하오, 래벌?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52021 /* ~"내 죽음이 어디 있는지에 대해 아는 자가 누구인지 다시 말해주겠소?"~ */ GOTO 135
  IF ~~ THEN REPLY #52022 /* ~"당신에 대해 질문할 것들이 좀 있소, 래벌..."~ */ GOTO 141
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52023 /* ~"정보를 주어 고맙소, 래벌. 이만 실례해야겠소."~ */ GOTO 213
END

IF ~~ THEN BEGIN 107 // from: 106.0 106.1
  SAY #52024 /* ~"그건 자네가 *원했던* 거네, 그리고 자네는 너무나도 감미롭게 부탁을 했지... 어떻게 이 래벌이 자네와 같은 사람에게 '노'라고 할 수 있었겠나? 불사는 자네가 원하던 해법이었고, 내게는 도전이었지."~ */
  IF ~~ THEN REPLY #52025 /* ~"*내*가 생각해낸 해법? 하지만 왜?"~ */ GOTO 108
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52026 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #52027 /* ~"모르네. 시간은 내 기억 역시 갉아 먹었네... 만약 자네가 기억을 하고 있다면 말해주게... 내 자신도 궁금하네. 아마 틀림없이 매우 중요한 것이었을 걸세... 영원히 살고자 하는 건 인간의 본성이 아닌가?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN EXTERN ~DDAKKON~ 169
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #52028 /* ~"래벌, 이 일은 매우 중요하오. 왜 내가 당신에게 그런 일을 부탁했는지 짐작이라도 가오?"~ */ GOTO 109
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52029 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 109 // from: 108.1
  SAY #52030 /* ~"자네는 죽음을 피하려고 했네. 말로는 쉽지만 실천하기는 어렵지. 불사는 그 결함에도 불구하고 이 시든 정신이 생각해낼 수 있는 가장 좋은 해법이었네..."~ */
  IF ~~ THEN REPLY #52031 /* ~"하지만..."~ */ GOTO 110
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52032 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY #52033 /* ~"납을 금으로 만드는 것은 어렵네, 하지만 가능은 하네. 별로 현명한 일은 아니네만... 피로부터 물을 추출할 수 있다면, 인간으로부터 죽음을 벗겨 내는 것도 가능하지, 마치 끈적거리는 막을 벗겨 내듯이..."~ */
  IF ~~ THEN REPLY #52034 /* ~"그래서 그것을 벗겨냈소?"~ */ GOTO 111
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52035 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #52036 /* ~"인간과 비인 사이에는 엄청난 간격이 존재하네. 여행을 한 건 자네고, 수단을 제공한 건 나였네, 하지만 모두 자네 뜻에 의한 것이었지." 래벌은 자신의 머리를 찰싹 때리더니 손으로 머리를 긁적인다. "나쁜 래벌! 인간들은 오래 견디기에는 너무 결함이 많아. 어떻게 하든 망가지거든! 그들은 강제로 끌어다가 건전하지 못한 새 틀에 넣어야만 해."~ */
  IF ~~ THEN REPLY #52037 /* ~"불건전한...? 그래 의식에는 결함이 있었소?~ */ GOTO 112
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52038 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #52039 /* ~"편법을 써야만 하지, 그러나 그것은 틀에서 나온 자를 망가뜨릴 수가 있네... 왜냐하면 늘 틀만 망가지는 것이 아니라, 그 안에 부어 넣은 재료도 망가질 수가 있네. 무리하게 물건의 형태를 바꾸려고 들면 망가지기 마련이지! 나는 재료가 견고한 거라고 생각했었네, 하지만 자네는 망가졌네."~ */
  IF ~~ THEN REPLY #52040 /* ~"하지만 나는 불사신이오. 그건 의식이 성공했다는 뜻이 아니오?"~ */ GOTO 113
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52041 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #52042 /* ~"자네는 오랫동안 생존하네, 불사가 된 자여, 하지만 자네는 삶이라는 괴물의 먹이가 되었네." 그녀는 손으로 찻종 모양을 만든 후 그것을 뒤집어 덮개 모양을 만든다. "육신은 영혼을 위한 오두막에 불과하네. 하지만 자네 오두막에는 지금 아무도 살고 있지 않네."~ */
  IF ~~ THEN REPLY #52043 /* ~"의식이 대체 어떻게 잘못 된 거요?"~ */ GOTO 114
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52044 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #52045 /* ~"퍼즐 같은 육신의, 망가진, 아름다운 인간... 의식은... 완전한 것이 아니었네..." 래벌의 이마에 주름이 진다, 그리고 그녀는 손톱으로 머리카락 한 올을 잡아당긴다. "의식은 자네가 원하는 것을 주었네, 하지만..."~ */
  IF ~~ THEN REPLY #52046 /* ~"하지만..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52047 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 115 // from: 114.0 117.0 118.0 119.0
  SAY #52048 /* ~"의식은 자네가 원하는 것을 주었네, 하지만 그 대가는 너무나 엄청났지... 그림자의 드리움, 정신의 고요하고 격렬한 죽음, 고통스런 허무감... 아무리 강한 인간일지라도 이러한 것들을 견딜 만큼 강하지는 않네. 나는 그러한 것들과 그 의식에 대해 후회하네."~ */
  IF ~~ THEN REPLY #52049 /* ~"그림자의 드리움?"~ */ DO ~SetGlobal("Ravel_Ritual_1","AR0610",1)
~ GOTO 116
  IF ~~ THEN REPLY #52050 /* ~"정신의 조용하고 격렬한 죽음?"~ */ DO ~SetGlobal("Ravel_Ritual_2","AR0610",1)
~ GOTO 118
  IF ~~ THEN REPLY #52051 /* ~"고통스런 공허함?"~ */ DO ~SetGlobal("Ravel_Ritual_3","AR0610",1)
~ GOTO 119
  IF ~  Global("Ravel_Ritual_1","AR0610",1)
Global("Ravel_Ritual_2","AR0610",1)
Global("Ravel_Ritual_3","AR0610",1)
~ THEN REPLY #52052 /* ~"이러한 문제들에도 불구하고 의식 자체는 성공한 것 같소..."~ */ JOURNAL #52054 /* ~래벌은 내가 그녀에게 자신을 불사신으로 만들어 달라고 부탁했었다고 한다, 하지만 그 이유는 기억하지 못했다. 하지만 그녀는 불사신의 의식에 장시간에 걸쳐 얘기를 해주었다. 그녀의 말에 의하면 나는 "존재에 그림자를 드리운다"고 한다. 내가 죽을 때마다 또 하나의 그림자가 태어나 날 찾아 죽이려고 한다. 그녀는 또한 내 육신은 회복하지만 정신은 그렇지 못하다고 말해주었다... 더 여러 번 죽으면 죽을수록 죽음으로부터 깨어났을 때 내 자신을 더 많이 일어버린다. 이것이 내 기억 상실의 이유인가? 모르겠다. 그녀는 내가 내 안에서 느끼는 텅 빈 공허함이 과거에 내 죽음이 자리잡고 있던 곳이라는 얘기도 해주었다. ~ */ GOTO 120
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52053 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #52055 /* ~"배은망덕한 그림자들... 하지만 이유도 없이 그럴까? 그림자들... 그들은 자네를 증오하네, 이름 없는 자, 그들을 '낳은' 건 자네니까, 자네의 아이들, 한 번 버려진 그들은 자네를 결코 용서하지 않네. 그들은 무슨 수를 써서라도 부친을 파멸시키고자 할 걸세... 아이들이란 그런 법이지..."~ */
  IF ~  !Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52056 /* ~"내가 어떻게 그림자들을 만들어내는 거요... 이러한 그림자들을?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0610Cut1",FALSE)
SetGlobal("Ravel_Cut_Scene","AR0610",2)
~ EXIT
  IF ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52057 /* ~"내가 어떻게 그림자들을 만들어내는 거요... 이러한 그림자들을?"~ */ GOTO 117
  IF ~~ THEN REPLY #52058 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF WEIGHT #2 ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN BEGIN 117 // from: 116.1
  SAY #52059 /* ~"자네는 존재에 그림자를 드리우네, 이름 없는 자. 자네가 죽을 때마다 그림자가 하나씩 새로이 태어나네. 그들은 태어난 후 한동안은 그냥 방황하나, 결국에 가서는 부친을 죽이려고 돌아오게 된다네." 래벌은 뭔가 마음에 들지 않는 듯 입을 오므린다, 그리고 갑자기 당신 가슴을 손톱으로 찌른다. "자네처럼 배은망덕한 젊은이나... 자녀들은 다 그런 식이네..." ~ */
  IF ~~ THEN REPLY #52060 /* ~"이 의식에 대해 더 자세히 말해주시오..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52061 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 118 // from: 115.1
  SAY #52062 /* ~"수천 번을 죽어도 자네의 육신은 회복하네. 하지만 정신은 그렇지 못하네. 정신은 훨씬 망가지기 쉽거든. 정신에 난 상처들은 깊으며, 낫지도 않네. 뇌는 뼈로 된 단단한 용기 안에 들어 있어 외부로부터의 공격에는 강하지만, 그 내면으로부터 침식해 오는 것에 대해서는 무방비 상태지."~ */
  IF ~~ THEN REPLY #52063 /* ~"이 의식에 대해 더 자세히 말해주시오..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52064 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 119 // from: 115.2
  SAY #52065 /* ~"자네가 온전해지려면... 자네라는 껍질 속에 들어 있었던 죽음을 다시 찾아야만 하네." 그녀는 주먹을 쥐고 흔든다. "텅 빈 사람이 딸랑거리며 가네, 애들 장난감처럼 딸랑거리네, 그 안에 든 거라고는 덜거덕거리는 작은 돌뿐이네."~ */
  IF ~~ THEN REPLY #52066 /* ~"이 의식에 대해 더 자세히 말해주시오..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52067 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 120 // from: 115.3
  SAY #52071 /* ~"자네는 이 래벌을 의심하는가? 나는 약속대로 했네! 주문이 완성된 후 얼마 지나지 않아 나는 주문이 성공했는지 보려고 자네를 죽였네. 자네는 몸부림을 쳤지만 나는 자네 목을 죄고 있는 손을 늦추지 않고서 자네가 수많은 죽음들 중 첫 번째 죽음을 죽는 것을 지켜보았지." 래벌은 이빨을 찰칵거린다. "내가 의식의 결함에 대해 깨달은 것 바로 그 때였지..."~ */
  IF ~~ THEN REPLY #52072 /* ~"어떤 결함들 말이오?"~ */ GOTO 121
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52073 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #52074 /* ~"자아는 우리를 감옥처럼 에워싸지. 나는 그것이 때로는 방패 역할을 한다는 사실을 잊어버렸었네." 래벌은 혀를 찬다. "내 귀여운 것, 삶이 죽음이라는 궁극적인 목표를 위한 준비 과정이라는 말에는 많은 지혜와 진실이 담겨 있네. 우리의 삶은 우리가 *어떻게* 죽어야 하는지를 배우는 수단일세. 만약 우리가 그러한 사실을 망각하면..."~ */
  IF ~~ THEN REPLY #52075 /* ~"그래, 내가 죽을 때마다 기억을 잃는다는 걸 당신이 발견한 건 바로 그 때였군..."~ */ DO ~SetGlobal("Ravel_Ritual_4","AR0610",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 122
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52076 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #52077 /* ~"그래..." 래벌은 고개를 끄덕인다. "그러한 기억들을 확고하게 유지시켜 줄 죽음 없이 육신은 빈 껍질..."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52078 /* ~"그래 당신이 나로부터 죽음을 분리해냈군, 래벌... 그것은 아직 무사하오?~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52079 /* ~"그래 당신이 나로부터 죽음을 분리해냈군, 래벌... 그것은 아직 무사하오?~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52080 /* ~"그래 당신이 나로부터 죽음을 분리해냈군, 래벌... 그것은 아직 무사하오?~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
END

IF ~~ THEN BEGIN 123 // from: 106.2 122.0
  SAY #52081 /* ~래벌은 처음에는 놀랐으나 곧 뭔가를 깨달은 것 같다. "그래, 그래, *그래!* 죽음이 망가졌을까 걱정하지 말게... 만약 자네가 여기서... 나와 이렇게 얘기를 하고 있다면, 자네 죽음도 틀림없이 무사하네. 그러한 것은... 자네가 살아 있는 한 결코 파괴될 수가 없네. 자네는 자네의 영혼의 *닻*이니까. 자네가 무사한 한 그것 역시 무사할 걸세. 자네는 오래 버틸 수 있도록 만들어졌으니까..." 래벌은 미소를 짓는다, 그리고 씨근거리면서 웃는다. "삶이 자네를 삼킨 후 내뱉었으니까!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 506
END

IF ~~ THEN BEGIN 124 // from: 106.3 122.1
  SAY #52082 /* ~래벌은 처음에는 놀랐으나 곧 뭔가를 깨달은 것 같다. "그래, 그래, *그래!* 죽음이 망가졌을까 걱정하지 말게... 만약 자네가 여기서... 나와 이렇게 얘기를 하고 있다면, 자네 죽음도 틀림없이 무사하네. 그러한 것은... 자네가 살아 있는 한 결코 파괴될 수가 없네. 자네는 자네의 영혼의 *닻*이니까. 자네가 무사한 한 그것 역시 무사할 걸세. 자네는 오래 버틸 수 있도록 만들어졌으니까..." 래벌은 미소를 짓는다, 그리고 씨근거리면서 웃는다. "삶이 자네를 삼킨 후 내뱉었으니까!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 253
END

IF ~~ THEN BEGIN 125 // from: 106.4 106.5 122.2
  SAY #52083 /* ~래벌은 처음에는 놀랐으나 곧 뭔가를 깨달은 것 같다. "그래, 그래, *그래!* 죽음이 망가졌을까 걱정하지 말게... 만약 자네가 여기서... 나와 이렇게 얘기를 하고 있다면, 자네 죽음도 틀림없이 무사하네. 그러한 것은... 자네가 살아 있는 한 결코 파괴될 수가 없네. 자네는 자네의 영혼의 *닻*이니까. 자네가 무사한 한 그것 역시 무사할 걸세. 자네가 죽을 수 없는 것과 마찬가지로 그것 역시 파괴될 수 없네."~ */
  IF ~  Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52084 /* ~그만 집어치우시오, 래벌. 당신이 나로부터 죽음을 빼앗았고, 그 일은 득보다 해가 더 컸소. 나는 그것을 당장 돌려받고 싶소. 내 생각으론 당신이 그것을 너무 오랫동안 지니고 있었던 것 같소."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 126
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52085 /* ~"알겠소. 다른 질문들이 있소, 래벌..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #52086 /* ~"아... 내게 요구를 하는 건가...? 마치 뭔가를 *자각*한 듯 래벌의 눈빛이 날카로워지고 눈이 뒤틀린다, 그리고 그녀는 자신의 누런 견치들을 드러낸다. "아니, 아니, 아니, 이 래벌은 그럴 수가 없네. 엎지른 물은 다시 담을 수 없네.".~ */
  IF ~~ THEN REPLY #52087 /* ~"래벌... 당신 말장난에는 지쳤소. 더 이상 당신과 노닥거리지 않겠소. 내 죽음을 돌려주지 않겠다면 당신을 죽이겠소."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 127
  IF ~~ THEN REPLY #52088 /* ~"왜 못한다는 거요?"~ */ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52089 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #52090 /* ~"자네가 날 죽이든 말든 내게는 별 상관도 없네. 내가 시간의 여러 방향들 중 어느 쪽을 향하고 있는지도 잘 모르겠네. 인간들은 나와는 반대로 미래를 바라보지, 그리고 나는 내 눈에 보이는 미래가 마음에 들지 않아 과거 쪽을 보고 있네."~ */
  IF ~~ THEN REPLY #52091 /* ~"말 같지 않은 말은 집어치우시오, 래벌. 당신과 말장난하는 데도 이미 지쳤소. 내 죽음을 돌려주시오... 지금 당장!"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52092 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 128 // from: 126.1 127.0
  SAY #52093 /* ~"래벌은 자네에게 그런 걸 줄 수가 없네, 내 소중한 사람, 이 래벌에게는 줄 수 있는 것이 아무 것도 없기 때문이네... 나는 *자네*나 자네의 죽음을 가져 본 적이 없네... 나는 내 이기적인 사랑 때문에 양쪽 모두를 내 정원에 두고는 자네 육신을 쓰다듬고 싶다는 생각은 했지만... 실제로는 그럴 수가 없었네..."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52094 /* ~"왜 못하겠다는 거요?"~ */ EXTERN ~DANNAH~ 254
  IF ~  !NearbyDialog("Dannah")
NearbyDialog("DGrace")
~ THEN REPLY #52095 /* ~"왜 못하겠다는 거요?"~ */ EXTERN ~DGRACE~ 159
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("DGrace")
~ THEN REPLY #52096 /* ~"만약 당신에게 없다면, 래벌... 내 죽음은 어디에 있소?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52097 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 129 // from:
  SAY #52098 /* ~래벌은 환한 미소를 짓는다. "그게 그렇게 믿기가 어려운가, 흰들링...?" 그녀는 조용히 혼자서 킬킬댄다. "래벌은 래벌이기 때문에, 따라서 전설이기 때문에 그녀의 검은 가시나무 같은 가슴에 그러한 감정을 가질 자격도 없단 말인가...?~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 160
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #52099 /* ~"만약 당신에게 없다면, 래벌... 내 죽음은 어디에 있소?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52100 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 130 // from:
  SAY #52101 /* ~래벌은 환한 미소를 짓는다. "그게 그렇게 믿기가 어려운가, 서큐버스...?" 그녀는 조용히 혼자서 킬킬댄다. "래벌은 래벌이기 때문에, 따라서 전설이기 때문에 그녀의 검은 가시나무 같은 가슴에 그러한 감정을 가질 자격도 없단 말인가...?~ */
  IF ~~ THEN EXTERN ~DGRACE~ 160
END

IF ~~ THEN BEGIN 131 // from:
  SAY #52102 /* ~"쳇! 과거는 과거이네, 그리고 역사는 진실에 대해서는 별로 얘기하지를 않지" 래벌은 눈살을 찌푸린다, 그리고 그레이스를 살펴보면서 목소리를 위협적인 어조로 낮춘다. "그 감정은 날 스치고 지나갔지... 그리고 내게 달변을 토할 생각은 말라, 어비스의 딸. 나는 네가 부드러운 말로 이 곳의 분위기를 흐리는 걸 원하지 않으니까. 그와 내가 얘기를 할 것이니 넌 빠져라. 너는 내가 곧 따로 상대할 테니."~ */
  IF ~~ THEN REPLY #52103 /* ~"이젠 됐소, 래벌. 당신에게 내 죽음이 없다면... 그건 대체 어디 있소?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52104 /* ~"그 건에 대해서는 충분할 만큼 들었소. 다른 질문들이 있소..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 132 // from: 128.2 129.1 131.0
  SAY #52105 /* ~"나도 모르네. 하지만 내가 자네라면 가능한 한 빨리 되찾도록 하겠네. 누가 자네 죽음을 인질로 잡을 경우 그가 자네에게 어떤 끔찍한 일을 할 수 있을 지는 아무도 알 수가 없네." 래벌은 손톱으로 찰칵 소리를 낸다. "그것은 자네의 달콤하고 과즙이 많은 영혼을 가지고 있는 것과 마찬가지지... 자네는 그의 꼭두각시 인형이 되어버릴 수도 있네, 그것도 가장 비참한 꼭두각시가. 허나 나는 그것이 어디 있는지 모르네."~ */
  IF ~~ THEN REPLY #52106 /* ~"당신이 그것이 어디 있는지 알고 있다면 좋겠지만 세상일이 그렇게 호락호락하지는 않지... 또 다른 사냥에 나서야 할 것 같군."~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 133
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #52107 /* ~"기다리시오... 당신은 당신 자신은 내 죽음이 어디 있는지 모른다고 했소. 당신은 그것이 어디 있는지 아는 사람을 알고 있소?"~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #52108 /* ~"아... 그렇게 서두르지는 말게." 래벌은 엄니를 번득이며 끔찍한 미소를 짓는다. "나는 자네의 죽음이 어디 있는지 모르네, 내 소중한 사람... 하지만 그것에 대해 알고 있을지도 모르는 자가 있네..."~ */
  IF ~~ THEN REPLY #52109 /* ~"'다른 이가 알지도 모른다?' 그게 누구요?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 134 // from: 132.1
  SAY #52110 /* ~래벌은 엄니를 번득이며 끔찍한 미소를 짓는다. "자네는 참 똑똑도 하네... 그래, 이 래벌이 모르는 것을 알고 있을지도 모르는 자가 있네..."~ */
  IF ~~ THEN REPLY #52111 /* ~"'다른 이가 알지도 모른다?' 그게 누구요?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 106.6 133.0 134.0
  SAY #52112 /* ~멀리 있는 뭔가를 바라보듯 래벌의 눈이 흐릿해진다, 그리고 그녀는 천천히 입을 연다. "자네는... 아름다운 피부를 지닌 자에게 물어봐야만 하네. 아침의 날개로 천공을 비상하며 그 손으로는 지평선을 비추는 천사 - 디바라네. 그는 내 손이 닿지 않는 곳, 또 다른 감옥에 있네... 그는 자네가 알고자 하는 것을 알고 있을 걸세. 그에게 질문을 하게, 그리고 그의 답을 가이드로 삼게."~ */
  IF ~  Global("Ravel_Trias","GLOBAL",0)
~ THEN REPLY #52113 /* ~"이 천사를 어디서 찾을 수가 있소?"~ */ DO ~SetGlobal("Ravel_Trias","GLOBAL",1)
AddexperienceParty(180000)
~ JOURNAL #52115 /* ~래벌은 내게 내 죽음은 아직도 어딘가에 무사히 있다고 말했다. 그녀는 그것이 어디 있는지를 모르나, 그것을 알고 있을지도 모르는 자에 대해서는 알고 있었다. 래벌은 내게 그녀의 미로를 벗어나 또 다른 감옥으로 향하라고 말했다. 그 곳에서 나는 내 죽음이 어디 있는지를 말해줄 천사 "디바"를 찾을 수 있을 것이다. 만약 이 천사가 래벌의 반만큼이라도 만나기 힘들다면, 내가 죽음을 다시 찾을 가능성은 희박하리라는 생각이 들려고 한다. 하지만 그것은 내가 처음 생각했던 것보다 훨씬 중요한 것 같다. 래벌은 내게 다른 사람이 그것을 손에 넣기 전에 내가 먼저 내 죽음을 되찾아야 한다고 경고했다. 그녀는 만약 그것이 다른 자의 손의 넘어가면 난 그의 꼭두각시가 될 것이라고 한다.~ */ GOTO 136
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52114 /* ~"이 천사를 어디서 찾을 수가 있소?"~ */ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0 135.1
  SAY #52116 /* ~"이 감옥을 떠나면 자네는 또 하나의 저주받은 감옥에 도달하게 될 걸세... 겉으로 보기에는 그렇게 보이지 않을지도 모르지만. 조심하게, 그리고 점점 더 짧아지는 사슬의 황금 고리를 찾게. 빛이 어둠을 비추어 비밀을 드러내고, 자네 앞에는 새로운 길이 열릴 걸세."~ */
  IF ~~ THEN REPLY #52117 /* ~"정말 유쾌할 정도로 비밀스럽군... 뭐 별로 놀랄만한 일은 아니지만. 고맙소."~ */ GOTO 137
  IF ~~ THEN REPLY #52118 /* ~"당신에게 할 다른 질문들이 있소, 래벌..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #52119 /* ~래벌이 킬킬댄다. "나는 과거의 일을 꼬치꼬치 기억하지 않네... 자네는 뭐라도 얻은 것에 대해서 감사해야 할 걸세, 오 신랄한 자여!"~ */
  IF ~~ THEN REPLY #52120 /* ~"아, 그렇소? 누가 무엇을 알고 그들이 어디 있는지의 사슬을 연결하는 고리들은 매끄러운 법이 없다고 느꼈을 뿐이오. ~ */ GOTO 138
  IF ~~ THEN REPLY #52121 /* ~"아마 그럴지도. 어쨌든 당신에게 할 다른 질문들이 있소, 래벌..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #52122 /* ~"아..." 래벌은 손톱을 하나 쳐들며 미소를 짓는다. "그리고 그것이 자네가 사슬의 각 연결 고리를 안전하게 지켜야 할 이유일세. 지금도 매끄럽지가 않은데 만약 더 많은 고리들이 부서진다면 어떻게 될지 상상을 해보게... 죽음과 시간은 다른 자들에게는 자네에게 베푸는 것과 같은 관용을 베풀지 않네."~ */
  IF ~~ THEN REPLY #52123 /* ~"무슨 말을 하는 거요?"~ */ GOTO 139
  IF ~~ THEN REPLY #52124 /* ~"만약 그게 협박이었다면 생각을 달리하는 것이 좋을 거요."~ */ GOTO 140
  IF ~~ THEN REPLY #52125 /* ~"아마 그럴지도. 어쨌든 당신에게 할 다른 질문들이 있소, 래벌..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #52126 /* ~"만약 자네의 소중한 연결 고리들 중 하나가 *죽는다면?* 그리고 만약 자네가 스스로를 다시 잊어버린다면? 그럼 자네는 어떻게 하겠는가? 그 때 자네의 도둑맞은 죽음은 어디 있겠는가? 그것은 영원히 소실될 걸세, 더 이상 그것이 어디 있는지 물어볼 사람이 없으니까. 자네가 갈 길을 찾는 것은 어려워질 걸세... 아니, 아마 불가능해질 걸세..."~ */
  IF ~~ THEN REPLY #52127 /* ~"옳은 말이오. 어쨌든 당신에게 할 다른 질문들이 있소, 래벌..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 140 // from: 138.1
  SAY #52128 /* ~"그건 내가 하는 위협이 아니라, 실재하는 위협일세. 만약 자네의 소중한 연결 고리들 중 하나가 *죽는다면?* 그리고 만약 자네가 스스로를 다시 잊어버린다면? 그럼 자네는 어떻게 하겠는가? 그 때 자네의 도둑맞은 죽음은 어디 있겠는가? 그것은 영원히 소실될 걸세, 더 이상 그것이 어디 있는지 물어볼 사람이 없으니까. 자네가 갈 길을 찾는 것은 어려워질 걸세... 아니, 아마 불가능해질 걸세..."~ */
  IF ~~ THEN REPLY #52129 /* ~"옳은 말이오. 어쨌든 당신에게 할 다른 질문들이 있소, 래벌..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 141 // from: 106.7 142.1 144.0 149.0 162.1 163.6 164.4 165.1 167.1 169.1 171.1 175.1 182.1 183.1 184.1 185.2 188.1 189.1 190.1 192.1 193.4 194.2 195.0 199.0 200.0 201.2 202.5 203.1 206.0 207.0 207.1 211.0 241.1
  SAY #52130 /* ~"그래? 이 래벌에 대해 질문을 해보게, 내 소중한 사람."~ */
  IF ~~ THEN REPLY #52131 /* ~"래벌... 당신은 누구요? 당신은 어디서 왔소?"~ */ GOTO 142
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",0)
~ THEN REPLY #52132 /* ~"당신은 당신의 생에서 어떠한 모습들을 취했었소?"~ */ GOTO 163
  IF ~~ THEN REPLY #52133 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 200
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52134 /* ~"당신은 왜 갇히게 되었소, 래벌?"~ */ GOTO 186
  IF ~  NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52135 /* ~"당신은 왜 갇히게 되었소, 래벌?"~ */ GOTO 55
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52136 /* ~"당신은 왜 갇히게 되었소, 래벌?"~ */ GOTO 185
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52137 /* ~"당신은 왜 갇히게 되었소, 래벌?"~ */ GOTO 185
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #52138 /* ~"전설에 의하면 당신은 위대한 마법사라고 하오, 래벌. 내게 마법을 좀 가르쳐 주겠소?"~ */ GOTO 201
  IF ~~ THEN REPLY #52139 /* ~"내 불사성에 대한 질문을 하고 싶은 것들이 더 있소..."~ */ GOTO 106
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52140 /* ~"내게 정보를 주어 고맙소, 래벌. 이만 실례해야겠소."~ */ GOTO 213
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #52141 /* ~"나? 나는 래벌이네. 퍼즐을 만들고 부수는 자이며, 풀 수 없는 문제를 푸는 자이며, 사고의 실들이 주정뱅이의 머리카락처럼 엉킬 때까지 그것들을 엉클고 푸는 자일세." 래벌은 자신의 거친 회색 머리카락을 하나 뽑아서 손가락에 감는다. "이걸로 충분해, 충분해 이걸로."~ */
  IF ~~ THEN REPLY #52142 /* ~"하지만 당신은 대체 *무엇*이오? 어떤 사람은 당신을 '나이트 해그'라고 하오, 그게 무엇인지는 나도 잘 모르겠지만."~ */ GOTO 143
  IF ~~ THEN REPLY #52143 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #52144 /* ~"나이트 해그?" 래벌은 바늘 같은 누런 이빨을 드러내며 엽기적인 미소를 짓는다. "나는 자신이 사랑하는 창조물을 애타게 그리워하는 평범한 여자에 불과하네. 어떤 사람들은 날 마귀할멈, 회색 귀부인, 야가의 자매, 나이트 해그 등의 이름으로 부르지만, 내 이름은 래벌이네, 퍼즐을 잘 푸는 래벌(= 래벌 퍼즐웰), 수수께끼를 내고 어떠한 어려운 문제라도 풀어 내는 래벌. 하지만..."~ */
  IF ~  Global("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52145 /* ~"하지만...?"~ */ GOTO 145
  IF ~  GlobalGT("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52146 /* ~"하지만...?"~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.1
  SAY #52147 /* ~"하지만 그건 별로 중요하지 않은 일이네. 우리는 이미 전에 같은 문답을 주고받았네." 래벌은 '쉿' 소리를 낸다. "다른 질문은 없나?"~ */
  IF ~~ THEN REPLY #52148 /* ~"그렇소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 145 // from: 143.0
  SAY #52149 /* ~"우리들 회색의 귀부인에 대해서는 말도 참 많지. 종족으로서 우리는 '나이트 해그'라네, 하지만 나는 하나의 *개인*일세. 우리를 원초적인 악, 인간의 꿈의 밀렵자, 친절한 자들, 인간의 마음 어두운 곳에서 사는 추악한 괴물이라고 부르는 자들도 있지." 래벌은 자신의 눈이 빨간 불꽃처럼 보일 정도로 눈을 가늘게 뜬다. "하지만 그런 건 내겐 아무런 의미도 없네... 내 귀여운 것, 자네라면 날 뭐라고 부르겠나?"~ */
  IF ~~ THEN REPLY #52150 /* ~거짓말: "난 당신을 아름답다 하겠소, 래벌."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Ravel_2","GLOBALLaw",-2)
SetGlobal("Ravel_Self_Answer","GLOBAL",1)
~ GOTO 146
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52151 /* ~진실: "난 당신이 아름답다고 생각하오, 래벌. 외관상으로는 그렇지 않을지도 모르나 당신의 정신은 명석하며 예리하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_1","GLOBALLaw",2)
SetGlobal("Ravel_Self_Answer","GLOBAL",2)
~ GOTO 148
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52152 /* ~진실: "난 당신을 추하다고 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52153 /* ~진실: "난 당신을 추하다고 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52154 /* ~진실: "난 당신을 추하다고 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 160
  IF ~~ THEN REPLY #52155 /* ~"나는 당신에 대한 모든 묘사가 다 옳다고 하겠소."~ */ DO ~SetGlobal("Ravel_Self_Answer","GLOBAL",4)
~ GOTO 149
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #52156 /* ~래벌은 잠시 아무 말도 없다가 갑자기 킬킬거리기 시작한다. "아, 자네는 *다이아몬드*와 같네, 내 소중한 꾀꼬리. 여러 세기를 기다린 보람이 있네! 자네는 정적과 검은 가시들이 천천히 번져가는 소리만 듣느라 피곤해진 내 귀에 참으로 감미로운 노래를 들려주는군..." 래벌은 미소짓는다. "하지만 자네는 거짓말을 하고 있네..."~ */
  IF ~~ THEN REPLY #52157 /* ~"아니, 래벌, 그렇지 않..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY #52158 /* ~"쳇! 자네는 내가 진실에 관심이 있다고 생각하나?! 내게는 허위가 *아름답게* 보이네, 꾀꼬리, 그리고 나는 자네가 그런 것들을 말하길 원하네. 내가 추할 지는 모르나..."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52159 /* ~"래벌, 당신은 추하지 *않소*..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52160 /* ~"래벌, 당신은 추하지 *않소*..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52161 /* ~"래벌, 당신은 추하지 *않소*..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 148 // from: 145.1
  SAY #52162 /* ~"쳇! 자네는 내가 그런 진실에 관심이 있다고 생각하나?! 설령 그것이 육체적인 것보다 오래간다 하더라도 내면적인 아름다움 따위는 엿이나 먹으라고 하게. 자네는 내가 추하다고 생각하나...?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52163 /* ~"래벌, 당신은 추하지 *않소*..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52164 /* ~"래벌, 당신은 추하지 *않소*..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52165 /* ~"래벌, 당신은 추하지 *않소*..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 149 // from: 145.5
  SAY #52166 /* ~"그렇군, 하지만 그것들은 자네 답이 아닐세. 쳇! 질문을 취소하겠네, 오 신중한 자여. 이 일에 대해서는 더 이상 얘기하지 마세."~ */
  IF ~~ THEN REPLY #52167 /* ~"오... 어, 다른 질문이 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 150 // from: 145.2 147.0 148.0
  SAY #52168 /* ~"하지만 내가 꼭 추한 모습을 하고 있을 필요는 없네, 내 귀여운 것. 내 모습은 내 뜻대로 마음대로 바꿀 수 있는 점토나 마찬가지네. 얼마든지 보다 보기 좋은 모습으로 변신할 수 있네..." 래벌은 훨-후럼-그레이스를 흘긋 보더니 입술을 핥는다. "그래..." ~ */
  IF ~~ THEN REPLY #52169 /* ~"래벌, 대체..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",3)
StartCutSceneMode()
StartCutSceneEx("0610Cut5",FALSE)
~ EXIT
END

IF WEIGHT #3 ~  Global("Ravel_Cut_Scene","AR0610",3)
~ THEN BEGIN 151 // from:
  SAY #52170 /* ~래벌은... 훨-후럼-그레이스로 변신했다... 태도. 용모, 옷 등 모든 것이 판에 박은 듯 똑같다. "이 모습이 더 마음에 드시나요?" 래벌은 미소짓는다. 그녀의 치아는 이제 백옥처럼 희며, 입술에도 약간의 불그스름한 기운만 감돌 뿐이다. "너무나 교양 있고 아름답지요?" 그녀는 당신에게 가까이 다가오라고 손짓한다. "오세요, 제 소중한 사람, *제* 입술은 어비스의 고통으로 불타지 않으니까요. 당신 입술을 제 입술에 갖다 대세요."~ */
  IF ~~ THEN REPLY #52171 /* ~"좋소..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",1)
~ GOTO 152
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52172 /* ~"아니오, 래벌."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52173 /* ~"아니오, 래벌."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52174 /* ~"래벌, 이런 게임은 집어치우시오. 내겐 그럴 인내심도 시간도 없소. 당신의 원래 모습으로 돌아가시오."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52175 /* ~"래벌, 이런 게임은 집어치우시오. 내겐 그럴 인내심도 시간도 없소. 당신의 원래 모습으로 돌아가시오."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0 158.0 161.0
  SAY #52176 /* ~당신은 당신 입술을 래벌의 입술에 갖다 댄다. 그녀의 새로운 모습에도 불구하고 그녀의 입술은 모래처럼 건조하며, 당신 입술이 닿자 당신은 마치 한 줄의 가시가 돋친 씨앗들을 키스한 것과 같은 따끔함을 느낀다. 당신은 뒤로 물러서서 입술에서 나는 피를 핥는다. 래벌은 당신의 동작을 그대로 따라서 한다, 그리고 그녀의 새로운 모습에서 그것은 한층 더 무시무시하게 느껴진다. 그녀의 입가에는 당신 피 한 방울이 아직 남아 있으며, 그녀는 사악하게 미소짓는다.~ */
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
NearbyDialog("Dannah")
~ THEN REPLY #52177 /* ~"날... 깨물었군."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",4)
~ GOTO 155
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
!NearbyDialog("Dannah")
~ THEN REPLY #52178 /* ~"날... 깨물었군."~ */ GOTO 153
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
NearbyDialog("Dgrace")
~ THEN REPLY #52179 /* ~"날... 깨물었군."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",5)
~ GOTO 156
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
!NearbyDialog("DGrace")
~ THEN REPLY #52180 /* ~"날... 깨물었군."~ */ GOTO 154
  IF ~  Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #52181 /* ~"날... 깨물었군."~ */ GOTO 240
END

IF ~~ THEN BEGIN 153 // from: 152.1
  SAY #52182 /* ~"그리고 오래 전에 자네는 날 깨물었네, 그러나 그건 키스가 아니었지. 자넨 내 마음을 물어뜯었네..." 래벌은 미소짓는다. "놀라지 말게, 내 소중한 사람. 자네에게 아무런 해도 없을 걸세... 자네와 함께 여행하는 자들의 경우는 그렇지 않을지도 모르겠지만." 그녀는 가볍게 웃는다, 그리고 당신은 갑자기 그레이스의 시선을 느낀다. 겉보기에 그녀는 냉정을 유지하고 있으나. 당신들 두 사람 사이에 뭔가가 *변했다는* 기묘한 느낌이 든다.~ */
  IF ~~ THEN REPLY #52183 /* ~"당신의 원래 모습으로 돌아가시오, 래벌."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from: 152.3
  SAY #52184 /* ~"그리고 오래 전에 자네는 날 깨물었네, 그러나 그건 키스가 아니었지. 자넨 내 마음을 물어뜯었네..." 래벌은 미소짓는다. "놀라지 말게, 내 소중한 사람. 자네에게 아무런 해도 없을 걸세... 자네와 함께 여행하는 자들의 경우는 그렇지 않을지도 모르겠지만." 그녀는 가볍게 웃는다, 그리고 당신은 갑자기 안나의 시선을 느낀다 - 그녀는 눈이 휘둥그레졌으며, 그녀의 심장은 거칠게 뛰고 있다. ~ */
  IF ~~ THEN REPLY #52185 /* ~"당신의 원래 모습으로 돌아가시오, 래벌."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from: 152.0
  SAY #52186 /* ~"그리고 오래 전에 자네는 날 깨물었네, 그러나 그건 키스가 아니었지. 자넨 내 마음을 물어뜯었네..." 래벌은 미소짓는다. "놀라지 말게, 내 소중한 사람. 자네에게 아무런 해도 없을 걸세... 자네와 함께 여행하는 자들의 경우는 그렇지 않을지도 모르겠지만." 그녀는 가볍게 웃는다, 그리고 당신은 갑자기 그레이스와 안나의 시선을 느낀다. 겉보기에 그레이스는 냉정을 유지하고 있으나, 당신들 두 사람 사이에 뭔가가 *변했다는* 기묘한 느낌이 든다. 안나는 눈을 실처럼 가늘게 뜨고 있으며, 꼬리를 앞뒤로 험악하게 흔들고 있다. ~ */
  IF ~~ THEN REPLY #52187 /* ~"당신의 원래 모습으로 돌아가시오, 래벌."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from: 152.2
  SAY #52188 /* ~"그리고 오래 전에 자네는 날 깨물었네, 그러나 그건 키스가 아니었지. 자넨 내 마음을 물어뜯었네..." 래벌은 미소짓는다. "놀라지 말게, 내 소중한 사람. 자네에게 아무런 해도 없을 걸세... 자네와 함께 여행하는 자들의 경우는 그렇지 않을지도 모르겠지만." 그녀는 가볍게 웃는다, 그리고 당신은 갑자기 안나의 시선을 느낀다 - 그녀는 눈이 휘둥그레졌으며, 그녀의 심장은 거칠게 뛰고 있다. 한편으로 그레이스는 호기심에 찬 표정으로 안나를 지켜보고 있다. ~ */
  IF ~~ THEN REPLY #52189 /* ~"당신의 원래 모습으로 돌아가시오, 래벌."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from: 145.3 147.1 148.1
  SAY #52191 /* ~"하지만 내가 꼭 추한 모습을 하고 있을 필요는 없네, 내 귀여운 것. 내 모습은 내 뜻대로 마음대로 바꿀 수 있는 점토나 마찬가지네. 얼마든지 보다 보기 좋은 모습으로 변신할 수 있네..." 래벌은 안나를 흘긋 본다, 그리고 래벌의 시선이 닿자 안나의 몸이 빳빳하게 굳는다. 래벌은 안나가 공포에 질린 모습을 보며 미소를 짓는다, 그리고 입술을 핥는다. "그래..." ~ */
  IF ~~ THEN REPLY #52192 /* ~"래벌, 대체..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF WEIGHT #4 ~  Global("Ravel_Cut_Scene","AR0610",4)
~ THEN BEGIN 158 // from:
  SAY #52193 /* ~래벌은... 안나로 변신했다... 태도. 용모, 가죽 조끼 등 모든 것이 판에 박은 듯 똑같다... "당신은 아직 나이 때문에 열정을 잃지 않은 거친 여자를 더 좋아해?" 안나의... 래벌의 꼬리가... 무슨 기대라도 하는 것처럼 움직인다. "자, 내 입술을 애무하라고, 그럼 내가 당신을 만족시켜 줄 테니까."~ */
  IF ~~ THEN REPLY #52194 /* ~"좋소..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",2)
~ GOTO 152
  IF ~~ THEN REPLY #52195 /* ~"아니오, 래벌."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52196 /* ~"래벌, 이런 게임은 집어치우시오. 내겐 그럴 인내심도 시간도 없소. 당신의 원래 모습으로 돌아가시오."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from: 151.1 151.3
  SAY #52197 /* ~"자네가 원하는 건 뜨거운 열정을 지닌 거친 여자인가?" 래벌은 안나를 흘긋 본다, 그리고 래벌의 시선이 닿자 안나의 몸이 빳빳하게 굳는다. "아마 자네의 욕구를 돋우는 건 그녀일지도...".~ */
  IF ~~ THEN REPLY #52198 /* ~"래벌, 그만두시오. 내겐 당신과 놀..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52199 /* ~기다리며 무슨 일이 일어나는지 지켜본다...~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from: 145.4 147.2 148.2
  SAY #52200 /* ~"내가 꼭 추한 모습을 하고 있을 필요는 없네, 내 귀여운 것. 내 모습은 내 뜻대로 마음대로 바꿀 수 있는 점토나 마찬가지네. 얼마든지 보다 보기 좋은 모습으로 변신할 수 있네..." 래벌은 미소를 짓는다, 그리고 그녀의 모습이 변하기 시작한다...~ */
  IF ~~ THEN REPLY #52201 /* ~"무슨 뜻이..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",5)
StartCutSceneMode()
StartCutSceneEx("0610Cut7",FALSE)
~ EXIT
END

IF WEIGHT #5 ~  Global("Ravel_Cut_Scene","AR0610",5)
~ THEN BEGIN 161 // from:
  SAY #52202 /* ~래벌은... 아름다운 젊은 아가씨의 모습으로 변신했다. 태도. 용모, 옷 등 그녀의 모든 것이 판에 박은 듯 똑같다... "당신은 아직 세월 때문에 아름다움을 잃지 않은 부드러운 여자를 더 좋아하나요?" 그녀는 미소를 짓는다... 그녀의 루비처럼 빨간 입술은 고혹적이다... "자, 내 입술을 애무하세요, 그럼 내가 당신을 만족시켜 줄 테니까."~ */
  IF ~~ THEN REPLY #52203 /* ~"좋소..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",3)
~ GOTO 152
  IF ~~ THEN REPLY #52204 /* ~"아니오, 래벌."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52205 /* ~"래벌, 이런 게임은 집어치우시오. 내겐 그럴 인내심도 시간도 없소. 당신의 원래 모습으로 돌아가시오."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF WEIGHT #6 ~  Global("Ravel_Cut_Scene","AR0610",6)
~ THEN BEGIN 162 // from:
  SAY #52206 /* ~당신이 눈을 감았다 뜨자 래벌은 원래 모습으로 되돌아가 있다. "정말 만족시키기 어려운 남자로군. 흥! 사람들이 왜 우리 종족에는 남자가 없는지에 대해 궁금해 하는 건지 모르겠군!"~ */
  IF ~~ THEN REPLY #52207 /* ~"다른 어떤 모습들로 변신할 수가 있소... 아니 변신했었소?"~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",2)
~ GOTO 163
  IF ~~ THEN REPLY #52208 /* ~"됐소. 다른 질문들이 있소..."~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 163 // from: 141.1 162.0 165.0 167.0 169.0 171.0 175.0 176.1 182.0 183.0 184.0 241.0
  SAY #52209 /* ~"이런저런 모습으로 변했지. 그 중에 멥베스도 있었나?" 래벌은 당신 질문 때문에 혼란스러워 하는 것 같다. "나는 별로 기억하지를 않았네, 나는 아마 아이-빈, 에이-빈이었을지도? 스마타도 마타도 아니고... 너무 많은 실과 가지들, 너무 많은 래벌들... 어떤 모습이었던 간에 난 늘 꿰매고, 고치고, 키우고 있었지."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52210 /* ~"멥베스? 당신이 멥베스였소?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Mebbeth")
~ THEN REPLY #52211 /* ~"멥베스? 당신이 멥베스였소? 하지만... 그녀는 죽었소."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("EiVene","GLOBAL",0)
!Dead("EiVene")
~ THEN REPLY #52212 /* ~"당신이 에이-빈이었소? 시체안치소에 있었던?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Dead("EiVene")
~ THEN REPLY #52213 /* ~"당신이 에이-빈이었소? 시체안치소에 있었던? 하지만... 그녀는 죽었소."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52214 /* ~"당신이 바로 매장된 마을의 미치광이 여자 재봉사였소? 마타?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Marta","GLOBAL",0)
Dead("Marta")
~ THEN REPLY #52215 /* ~"당신이 바로 매장된 마을의 미치광이 여자 재봉사였소? 마타? 하지만... 그녀는 죽었소."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~~ THEN REPLY #52216 /* ~"어... 알겠소. 다른 질문들이 있소..."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 164 // from: 163.0 163.2 163.4
  SAY #52217 /* ~"그것도 내 이름들 중 하나였을지도... 그런가?" 래벌의 눈빛은 흐려지고, 그녀는 더욱 혼란스러워 하는 것 같다. "이름들은 기억하기가 어렵네..." 그녀의 목소리가 희미해진다. "마치 먼 곳에서 부르는 것처럼..."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Global("Ravel_Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Art_Answer","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52218 /* ~"멥베스는 내게 친절했으며 날 도왔소, 래벌. 그건 당신이 날 도왔다는 뜻이오. 고맙소.~ */ GOTO 176
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Global("Ravel_EiVene","GLOBAL",1)
!Dead("EiVene")
~ THEN REPLY #52219 /* ~"에이-빈은 그녀 나름대로의 방법으로 날 도왔소, 래벌. 그건 당신이 날 도왔다는 뜻이오. 고맙소.~ */ GOTO 166
  IF ~  GlobalGT("Marta","GLOBAL",0)
Global("Ravel_Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52220 /* ~"마타는 미쳤지만 날 불친절하거나 야박하게 대하지는 않았소. 만약 당신이 그녀였다면 그건 당신에게 날 해칠 의사가 없다는 뜻이오. 고맙소."~ */ GOTO 170
  IF ~~ THEN REPLY #52221 /* ~"왜 나를 도왔소, 래벌?"~ */ GOTO 184
  IF ~~ THEN REPLY #52222 /* ~"알겠소... 달리 물어보고 싶은 것들이 있소."~ */ GOTO 141
END

IF ~~ THEN BEGIN 165 // from: 163.1 163.3 163.5
  SAY #52223 /* ~래벌이 눈을 깜박인다... "그래... 그녀는 죽었네... 나는 더 이상 그녀로부터는 힘을 얻을 수가 없네..."~ */
  IF ~~ THEN REPLY #52224 /* ~"당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ GOTO 163
  IF ~~ THEN REPLY #52225 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY #52226 /* ~래벌은 거의 무의식적으로 당신을 향해 손을 내민다, 그리고 잠시 그것은 틀림없는 에이-빈의 손톱처럼 보였다...~ */
  IF ~~ THEN REPLY #52227 /* ~뒤로 물러선다.~ */ GOTO 167
  IF ~~ THEN REPLY #52228 /* ~버틴다...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 168
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52229 /* ~당신은 뒤로 물러선다, 그리고 래벌은 눈을 깜박인 후 혼자서 중얼거린다. "바보 같은 좀피... 바보 같은 좀피..."~ */
  IF ~~ THEN REPLY #52230 /* ~"당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ GOTO 163
  IF ~~ THEN REPLY #52231 /* ~"당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY #52232 /* ~래벌은 왼손으로 머리에서 머리카락 하나를 뽑는다, 그리고 그것을 손톱에 걸고, 신속하게 다른 손톱 하나를 당신 흉터 근처에 찔러 넣는다. 당신은 핀으로 찌른 것 정도의 고통밖에 느끼지 않는다. 그녀는 이제부터 당신의 흉터를 꿰매려는 것 같다.~ */
  IF ~~ THEN REPLY #52233 /* ~그녀가 작업을 하도록 내버려 둔다. ~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
SetGlobal("Ravel_EiVene","GLOBAL",2)
~ JOURNAL #52234 /* ~알고 보니 래벌이 바로 내가 시체안치소에서 만난 기묘한 티플링 에이-빈이었다. 내가 그 일에 대해 래벌에게 얘기하자, 그녀는 잠시 에이-빈으로 변신해 내 상처를 "꿰매어" 날 더 강하게 만들었다. ~ */ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY #52235 /* ~에이-빈의 경우와 마찬가지로 별 고통은 느껴지지 않는다. 하지만 이번에는 그 때보다 훨씬 더 깊숙하게 꿰매는 것처럼 느껴진다. 실제로는 피부의 표면만 꿰매고 있음에도 마치 실이 당신 내장에까지 닿는 것처럼 느껴진다. 잠시 후 래벌은 손을 뗀다, 그리고 당신은 훨씬 더 강하고 건강해졌다는 느낌이 든다. 래벌은 에이-빈의 목소리로 중얼거린다. "바보 같은 좀피..."~ */
  IF ~~ THEN REPLY #52236 /* ~"당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ GOTO 163
  IF ~~ THEN REPLY #52237 /* ~"당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 170 // from: 164.2
  SAY #52238 /* ~당신이 그녀의 이름을 입에 담자 래벌의 얼굴이 *변하기* 시작한다... 그녀의 푸른 피부는 계속 늘어져 마침내 당신이 마사의 얼굴에서 본 것과 같은 쉰 우유 같은 표정이 된다. "자... 마타를 너무 힘들게 하지마..." 그녀는 집게손가락의 손톱을 마치 메스처럼 치켜 들고는 당신에게로 다가온다. " 가짜, 나쁜 시체."~ */
  IF ~~ THEN REPLY #52239 /* ~뒤로 물러선다.~ */ GOTO 171
  IF ~~ THEN REPLY #52240 /* ~버틴다...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 172
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY #52241 /* ~당신은 뒤로 물러선다, 그리고 래벌은 눈을 깜박인 후 혼자서 중얼거린다. 그녀의 얼굴은 래벌의 얼굴로 돌아간다... 하지만 아직 상황에 적응하지 못한 듯 멍한 표정이다. 
"나쁜 시체, 그렇지, 마타...? 그래, 마타, 그는..."~ */
  IF ~~ THEN REPLY #52242 /* ~"당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ GOTO 163
  IF ~~ THEN REPLY #52243 /* ~"당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 172 // from: 170.1
  SAY #52245 /* ~래벌은 더러운 손톱으로 당신의 복부를 찌른다, 그리고 마치 톱질을 하듯이 무자비하게 아래쪽으로 절개해 나간다... 그러나 아무런 고통도 없다. 당신은 그녀의 손길이 가는 곳에서 피부가 천천히 벗겨지는 것을 지켜본다 - 상처에서는 피는 전혀 나오지 않는다. "이걸 봐, 마타, 이걸 보라고..." ~ */
  IF ~~ THEN REPLY #52246 /* ~그녀가 작업을 하도록 내버려 둔다. ~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 173
END

IF ~~ THEN BEGIN 173 // from: 172.0
  SAY #52247 /* ~래벌은 다른 한 손을 당신 흉부 속에 집어넣는다, 그리고 당신 창자를 실을 휘감듯이 돌리더니, 당신 배에서 *뽑아낸다.* 그 동안 당신 배의 절단부는 시간이 거꾸로 가는 것처럼 자동으로 봉합된다. 마타... 래벌은... 당신 창자를 트로피처럼 치켜 들고 있다. "예쁘지, 예쁘지, 마타...? 사람은 그런 걸 삼키면 안돼, 안돼..."~ */
  IF ~~ THEN REPLY #52248 /* ~"어... 그것들을 돌려받을 수 있겠소? 나중에 필요할지도 모르니까."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
GiveItemCreate("Intest2",Protagonist,3,0,0)
~ GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #52249 /* ~그녀는 당신에게 끈적끈적한 덩어리를 건네준다... 갓 꺼낸 것인데도 불구하고 창자 주변의 액체들은 송진처럼 말라버렸다. 창자라기보다는 유약을 바른... 밧줄처럼 느껴진다."~ */
  IF ~~ THEN REPLY #52250 /* ~"어... 고맙소. 소중히 간직하겠소."~ */ DO ~SetGlobal("Ravel_Marta","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ JOURNAL #52251 /* ~알고 보니 래벌이 바로 내가 매장된 마을에서 만난 미치광이 여자 재봉사 마타였다. 내가 그 일에 대해 래벌에게 얘기하자, 그녀는 잠시 마타로 변신해 내 창자를 꺼냈다. 그녀의 말로는 그것이 나를 위한 강력한 호부가 될 것이라 한다. 내가 아는 것이라곤 너무나 많은 사람들이 내 몸을 뒤적거려 꺼내서는 안 되는 것들을 꺼내 놓고서는 아무런 책임도 지지 않는 다는 사실이다.~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #52252 /* ~마타... 래벌은... 고개를 천천히 끄덕인다. "그래야지, 안 그래, 마타? 그래... 그래, 그는 그래야 해, 마타. 불사신의 내장에서는 강한 마법을 찾을 수가 있어, 그래... 이빨이나 눈알과는 달리..."~ */
  IF ~~ THEN REPLY #52253 /* ~"당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ GOTO 163
  IF ~~ THEN REPLY #52254 /* ~"당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 176 // from: 164.0
  SAY #52255 /* ~당신이 멥베스에 대해서 얘기하자, 래벌의 얼굴에서 모든 색이 사라져 문자 그대로 잿빛이 된다. 마치 색이 그냥... 없어진 것 같다." 그러는 자네는 누군가? 자네의 길의 자네를 다시 이 곳으로 인도했나, 젊은이...?"~ */
  IF ~~ THEN REPLY #52256 /* ~"그렇소... 멥베스... 나는, 어, 마법을 더 배우러 왔소. 내게 마법에 대해 더 가르쳐 줄 수 있겠소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 177
  IF ~~ THEN REPLY #52257 /* ~"지금은 아니오... 당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ GOTO 163
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #52258 /* ~"흥! 나는 산파에 불과하네, 젊은이, 마법의 힘은 내 한계 밖의 것이네..."~ */
  IF ~~ THEN REPLY #52259 /* ~"난... 그렇게 생각하지 않소. 당신에게는 자신이 생각하는 것보다 내게 가르쳐 줄 수 있는 것이 더 많소. 훨씬 더."~ */ GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #52260 /* ~그리고 질문은 마치 메아리처럼 울려 퍼진다: "마법을 배우고 싶은가? *왜* 자네는 그런 걸 배우려 하는가?"~ */
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",1)
~ THEN REPLY #52261 /* ~메아리: "그냥 알고 싶기 때문이오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 179
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",2)
~ THEN REPLY #52262 /* ~메아리: "왜냐하면 내 정체의 수수께끼를 푸는 데 도움이 될지도 모르기 때문이오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 180
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",3)
~ THEN REPLY #52263 /* ~메아리: "내겐 힘이 필요하기 때문이오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 181
  IF ~~ THEN REPLY #52264 /* ~"그 이유는 당신이 알 바가 아니오."~ */ GOTO 183
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #52265 /* ~래벌... 멥베스는... 코웃음친다. "그건 아동용 문법책도 거버너들이 만드는 법전도 아닐세... 그건 *예술*이네. 내 자네에게 가르쳐 주지, 하지만 정신을 똑바로 차리고 공부해야 할 걸세." 그녀는 몸을 구부리면서 가까이 다가온다. "귀를 기울이게..."~ */
  IF ~~ THEN REPLY #52266 /* ~귀를 기울인다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~알고 보니 래벌이 바로 내가 넝마주이 광장에서 만난 친절한 산파 멥베스였다. 내가 그 일에 대해 래벌에게 얘기하자, 그녀는 잠시 멥베스로 변신해 내게 어떤 얘기를 해주었다... 그것이 무엇이었는지는 기억조차 나지 않으나, 나는 그녀가 차원에 대한 내 감각의 껍질을 벗겨내 내가 내 주위를 보다 잘 인지할 수 있도록 주었다는 느낌이 든다. ~ */ GOTO 182
  IF ~~ THEN REPLY #52267 /* ~"아니, 지금은 당신이 내게 들려줄 것에 대해 배우고 싶은 생각이 없소... 다른 때라면 모를까."~ */ GOTO 241
END

IF ~~ THEN BEGIN 180 // from: 178.1
  SAY #52269 /* ~잠시 후 래벌... 멥베스는... 고개를 끄덕인다. "마법은 자네를 도울 수 있을지도 모르지만 그렇지 못할 수도 있네. 그것이 자네의 모든 문제를 해결해 주리라고는 기대하지 말게." 그녀는 한숨을 쉰다. "젊은이, 오히려 그것은 자네에게 새로운 의문만 제기할 가능성이 높네..." 그녀는 몸을 구부리면서 가까이 다가온다. "그래도 배우고 싶다면 귀를 기울이게..."~ */
  IF ~~ THEN REPLY #52270 /* ~귀를 기울인다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~알고 보니 래벌이 바로 내가 넝마주이 광장에서 만난 친절한 산파 멥베스였다. 내가 그 일에 대해 래벌에게 얘기하자, 그녀는 잠시 멥베스로 변신해 내게 어떤 얘기를 해주었다... 그것이 무엇이었는지는 기억조차 나지 않으나, 나는 그녀가 차원에 대한 내 감각의 껍질을 벗겨내 내가 내 주위를 보다 잘 인지할 수 있도록 주었다는 느낌이 든다. ~ */ GOTO 182
  IF ~~ THEN REPLY #52271 /* ~"아니, 지금은 당신이 내게 들려줄 것에 대해 배우고 싶은 생각이 없소... 다른 때라면 모를까."~ */ GOTO 241
END

IF ~~ THEN BEGIN 181 // from: 178.2
  SAY #52272 /* ~"흥! 건전하지 못한 욕망이군. 마법을 공부하면서 자네는 늘 뛰는 놈 위에는 나는 놈이 있다는 사실을 절감하게 될 걸세. 항상 자네보다 뛰어난 자들이 존재하기 마련이네, 그리고 자네가 지나친 욕심을 부리면 자네는 그들에게 혼이 나게 될 걸세." 그녀는 몸을 구부리면서 가까이 다가온다. "그래도 배우고 싶다면 귀를 기울이게..."~ */
  IF ~~ THEN REPLY #52273 /* ~귀를 기울인다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,120000)
~ JOURNAL #52268 /* ~알고 보니 래벌이 바로 내가 넝마주이 광장에서 만난 친절한 산파 멥베스였다. 내가 그 일에 대해 래벌에게 얘기하자, 그녀는 잠시 멥베스로 변신해 내게 어떤 얘기를 해주었다... 그것이 무엇이었는지는 기억조차 나지 않으나, 나는 그녀가 차원에 대한 내 감각의 껍질을 벗겨내 내가 내 주위를 보다 잘 인지할 수 있도록 주었다는 느낌이 든다. ~ */ GOTO 182
  IF ~~ THEN REPLY #52274 /* ~"아니, 지금은 당신이 내게 들려줄 것에 대해 배우고 싶은 생각이 없소... 다른 때라면 모를까."~ */ GOTO 241
END

IF ~~ THEN BEGIN 182 // from: 179.0 180.0 181.0
  SAY #52275 /* ~멥베스는... 래벌은... 뭔가를 속삭인다, 그러자 당신은 뭔가가 *달라졌다는* 느낌을 받는다. 그녀는 다원 우주의 법칙에 대해 당신에게 뭔가 끔찍한 것을 말해주었다, 그러나 당신의 정신이 그녀의 말들을 차단해 버렸기 때문에 그것들을 기억할 수가 없다. 그것들에 대해 생각을 하기만 해도 당신의 심장은 거칠게 뛴다... 래벌은 당신에게 그 누구도 알아서는 안 될 것을 얘기해주었다. 그녀는 당신을 살펴보고 있다.~ */
  IF ~~ THEN REPLY #52276 /* ~"세-세상에... 당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 163
  IF ~~ THEN REPLY #52277 /* ~"내... 내겐... 당신에게 할 다른 질문들이 있소, 래벌."~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 183 // from: 178.3
  SAY #52278 /* ~"그런가? 자네의 이유가 내가 알 바가 아니라면, 내 *지식*도 자네가 알 바가 아니네. 나는 선생에게 자신에 대해서 숨기려는 자에게 가르칠 생각은 없네... 그런 자를 가르치는 건 불행만을 불러올 테니까." 멥베스... 래벌은... 정신을 가다듬으려는 듯 눈을 깜박인다. ~ */
  IF ~~ THEN REPLY #52279 /* ~"당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ GOTO 163
  IF ~~ THEN REPLY #52280 /* ~"당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 184 // from: 164.3
  SAY #52281 /* ~"나는 자네를 도울 수밖에 없네, 내 소중한 사람... 그것만은 언제나 사실이네, 아무리 많은 수의 래벌들이 존재하더라도... 이에 대해서는 모두 동의할 걸세."~ */
  IF ~~ THEN REPLY #52282 /* ~"당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ GOTO 163
  IF ~~ THEN REPLY #52283 /* ~"당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 185 // from: 141.5 141.6
  SAY #52284 /* ~"나는 어떤 '귀부인'을 도우려고 했네, 하지만 불행히도 그녀는 내 호의를 거절했다네."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #52285 /* ~"무슨 뜻이오?"~ */ GOTO 188
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52286 /* ~"무슨 뜻이오?"~ */ GOTO 187
  IF ~~ THEN REPLY #52287 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 186 // from: 141.3
  SAY #52288 /* ~"나는 어떤 '귀부인'을 도우려고 했네, 하지만 불행히도 그녀는 내 호의를 거절했다네."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 161
END

IF ~~ THEN BEGIN 187 // from: 185.1
  SAY #52289 /* ~"도와주겠다는 내 제의는 환영을 받지 못했네. 나는 그녀를 풀어 주려고 했네. 시길은 '새장'이네, 문들과 자물쇠들의 도시는 그녀에게는 감옥이란 말일세. 틀림없네, 그럴 수밖에 없지 않은가? 그렇지 않다면 왜 시길을 '새장'이라고 부르겠는가? 그리고 누가 갇혀 있지? 바로 레이디라네! 그토록 위대한 존재를 위한 너무나도 작은 감옥일세. 한 여인에게 그토록 고통을 주는 것은 부당하고, 잘못되었으며, 참을 수 없는 일이네!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 507
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #52290 /* ~"도와주겠다는 내 제의는 환영을 받지 못했네. 나는 그녀를 풀어 주려고 했네. 시길은 '새장'이네, 문들과 자물쇠들의 도시는 그녀에게는 감옥이란 말일세. 틀림없네, 그럴 수밖에 없지 않은가? 그렇지 않다면 왜 시길을 '새장'이라고 부르겠는가? 그리고 누가 갇혀 있지? 바로 레이디라네! 그토록 위대한 존재를 위한 너무나도 작은 감옥일세. 한 여인에게 그토록 고통을 주는 것은 부당하고, 잘못되었으며, 참을 수 없는 일이네!"~ */
  IF ~~ THEN REPLY #52291 /* ~"알겠소..."~ */ GOTO 189
  IF ~~ THEN REPLY #52292 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #52293 /* ~"나는 '새장'을 부수어 레이디를 해방하려고 했네." 그녀는 새를 쫓는 시늉을 한다. 보이지 않는 새들을 날려 보내면서 그녀의 표정은 고통으로 일그러진다. "쉬이, 쉬, 오 고통받는 여인이여, 그대가 시길의 더러운 거리와, 자기네 생각이 들릴까 무서워 말조차 못하는 어리석은 다버스들로부터 벗어나 멀리 날아갈 수 있도록 시길의 고리가 깨지도록 하소서!" 래벌은 새를 쫓는 동작을 서서히 멈추면서 느린 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #52294 /* ~"계속하시오..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 190
  IF ~~ THEN REPLY #52295 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #52296 /* ~"내가 미처 일을 끝내기도 전에 나는 이 곳에 갇히게 되었지, 그리고 덕분에 기억만 나빠지게 되었다네... 많은 것들이 내 정신으로부터 사라지고 잊혀졌네, 그래...그런가? 그랬나?" 래벌은 누런 이빨을 드러내며 미소를 짓는다. "기억력이 감퇴하는 것이 이 늙은이에게는 차라리 위안이 되었지. 나는 많은 것을 잊었네... 하지만 자네를 아직도 기억하고 있다는 건 내게 있어 참 다행한 일일세."~ */
  IF ~~ THEN REPLY #52297 /* ~"래벌, 하지만... 왜 당신은 *레이디 오브 페인*을 시길로부터 해방시키려고 했소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52299 /* ~알고 보니 래벌은 레이디 오브 페인을 시길에서 해방하려고 시도한 탓에 미로에 갇히게 된 것 같다... 그것이 그토록 큰 죄였나? 하지만 선의... 래벌의 말에 의하면 그녀는 누군가가 갇히거나 구속되는 것을 보는 건 참을 수가 없다고 한다.   ~ */ GOTO 191
  IF ~~ THEN REPLY #52298 /* ~"알겠소. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #52300 /* ~래벌은 목소리를 낮추고 마치 꾸짖는 듯한 어조로 말한다. "나는 누구든지, 그것이 설령 신이라 할지라도, 감금되어 있는 것은 차마 견딜 수가 없네. 돌이든, 해안이든, 칼날이 달린 조용한 레이디든 간에 모두 다 자유로워져야 하네. 어떤 사람들은 나보고 어리석다고 했네. 그들은 왜 그런 위험을 무릅쓰느냐고 내게 말했지."~ */
  IF ~~ THEN REPLY #52301 /* ~"동의하오. 나라면 레이디를 그녀의 감옥에 그냥 내버려두었을 것이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_2","GLOBALGood",-2)
~ GOTO 192
  IF ~~ THEN REPLY #52302 /* ~"나도 당신이 그녀를 해방시키려 했던 것은 옳은 일이라 생각하오, 래벌."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_2","GLOBALGood",2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~~ THEN REPLY #52303 /* ~거짓말: "나도... 당신이 그녀를 해방시키려 했던 것은 옳은 일이라 생각하오, 래벌."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52304 /* ~"그것이 바로 그 옛날 내가 당신을 만났을 때 당신이 하려고 했던 것이었소? 당신은 날 해방시키려고 했었소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52305 /* ~"그것이 바로 그 옛날 내가 당신을 만났을 때 당신이 하려고 했던 것이었소? 당신은 날 해방시키려고 했었소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #52306 /* ~"내가 견딜 수 없는 것들이 몇 가지 있네... 그리고 나는 사과도 하지 않겠네, 내 소중한 반인 - 하지만... 때로는 홀로 모든 걸 감당하기가 어려울 때가 있네... 많은 목숨들과 꿈들이 산산조각이 나 땅바닥에 흩어졌네. 그리고 내가 자네를 그냥 내버려 두었다면 자네의 삶은 훨씬 나은 것이 되었을지도 모르네..."~ */
  IF ~  Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52307 /* ~"그것이 바로 그 옛날 내가 당신을 만났을 때 당신이 하려고 했던 것이었소? 당신은 날 해방시키려고 했었소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52308 /* ~"아마도. 당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 193 // from: 191.1 191.2
  SAY #52309 /* ~"이 일에 대해 우리가 같은 생각을 가지고 있다니 반가운 일이구먼. 하지만... 때로는 홀로 모든 걸 감당하기가 어려울 때가 있네... 내 눈에는 많은 목숨들과 꿈들이 산산조각이 나 땅바닥에 흩어진 것이 보이는 듯 하네."~ */
  IF ~~ THEN REPLY #52310 /* ~"적어도 당신은 시도를 했소, 래벌, 그리고 난 당신 의도에는 아무런 잘못도 없었다고 생각하오."~ */ GOTO 194
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52311 /* ~"당신 잘못이라고 생각하는 거요, 래벌? 다른 자들에게는 그럴 용기가 없었지만 적어도 당신은 시도를 했소. 난 당신 의도에는 아무런 잘못도 없었다고 생각하오. 사실 오히려 나는 당신의 강인함을 느낄 수가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALRavel_Flatter_2","GLOBALRavel_Flatter",2)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 195
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52312 /* ~"그것이 바로 그 옛날 내가 당신을 만났을 때 당신이 하려고 했던 것이었소? 당신은 날 해방시키려고 했었소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52313 /* ~"그것이 바로 그 옛날 내가 당신을 만났을 때 당신이 하려고 했던 것이었소? 당신은 날 해방시키려고 했었소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52314 /* ~"당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #52315 /* ~"쳇. 누군가 그러는 사람이 있기는 있군."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52316 /* ~"그것이 바로 그 옛날 내가 당신을 만났을 때 당신이 하려고 했던 것이었소? 당신은 날 해방시키려고 했었소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52317 /* ~"그것이 바로 그 옛날 내가 당신을 만났을 때 당신이 하려고 했던 것이었소? 당신은 날 해방시키려고 했었소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52318 /* ~"당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 195 // from: 193.1
  SAY #52319 /* ~래벌은 잠시 당신을 조용히 쳐다보더니 혼자서 킬킬대기 시작한다. "너무나 달콤한 말들이로군! 난 자네가 정말 그리웠네, 내 소중한 반인! 자네가 어찌나 달콤하게 노래를 부른지 돌조차도 자네를 위해서라면 자기 피를 짜내어 줄 걸세!"~ */
  IF ~~ THEN REPLY #52320 /* ~"진실을 말해 해가 될 것은 없소. 당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 196 // from: 191.3 191.4 192.0 193.2 193.3 194.0 194.1
  SAY #52321 /* ~"그랬을 수도 있네... 내가 알고 있던 남자는 삶의 사슬과 죽음에 대한 공포에 의해 너무나도 단단히 묶여 있었네. 알고 있던... 알고 있던? 흠?" 래벌은 자신의 거친 회색 머리카락을 하나 뽑아 손가락에 감는다. "래벌은 사슬과 감옥은 좋아하지 않네..."~ */
  IF ~~ THEN REPLY #52322 /* ~"아, 그래 나는 어떤 방식으로든 감금되었었소? 또는 구속되었었소? 당신의 기억이 되살아 나는 것 같소, 래벌..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #52323 /* ~"그래..." 래벌은 잠시 눈을 깜박인다, 그리고 마치 둔기로 머리를 얻어맞은 듯 그녀의 눈이 더욱 흐리멍덩해진다. 그녀는 자신의 해골에서 회색 머리를 통째로 잡아 뽑으려는 듯 손으로 꽉 쥐고 잡아당긴다. "아마도... 자네는 갇혀 있었나? 하지만 자네를 가두고 있었던 건 보통 감옥이 아니었네..."~ */
  IF ~~ THEN REPLY #52324 /* ~"무엇이 날 구속하고 있었는지 짐작이라도 가오?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52325 /* ~래벌은 내가 오래 전 그녀를 찾아왔을 때 내가 갇히거나 구속된 상태였을 거라고 생각한다... 하지만 그녀는 정확히 기억하지는 못하고 있다. 그녀는 무슨 약속같은 것에 대해 이야기를 하더니, 그 다음에는 머리를 한 가닥 뽑아서 대답 대신 가져가라고 내게 주었다. ~ */ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #52326 /* ~래벌은 혼란스러워하는 듯하다, 그리고 마음 속에서 불쾌한 생각과 싸우고 있는 듯 얼굴을 뒤튼다. "나는 잊었네... 아마 어떤 약속...? 아니, 아니..." 그녀는 회색 머리를 한층 세게 잡아당긴다, 그리고 놀랍게도 가지가 *툭*하고 부러지는 소리와 함께 래벌은 자신의 회색 머리를 통째로 잡아 뽑는다. 그녀의 두개로부터 검은 피가 졸졸 흘러나오며, 그녀는 분노하여 괴성을 지른다.~ */
  IF ~~ THEN REPLY #52327 /* ~"래벌...? 괜찮소?"~ */ DO ~GiveItemCreate("RavelHai",Protagonist,1,0,0)
SetGlobal("Ravel_Hair","GLOBAL",1)
AddexperienceParty(90000)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #52328 /* ~"난 더 이상 말하지 않겠네..." 래벌의 얼굴이 고통으로 일그러진다, 그리고 그녀의 손은 피 묻은 회색 머리카락들로 뒤덮여 있다. 머리카락은 그녀의 머리에서 뽑힌 후에도 거칠고 빳빳하다. "나는 아무 것도 모르네, 그리고 그 어떤 것도 가르쳐 주지 않겠네!" 그녀는 손에 감긴 회색 머리카락들을 내려다본다, 그리고 쉿 소리를 내며 그것을 당신에게 던져 준다. "이걸 가져가게, 그리고 그것이 있는 곳을 지나서 떠나게, 반인!"~ */
  IF ~~ THEN REPLY #52329 /* ~"좋소, 래벌. 그럼 그 문제에 대해서는 더 이상 할 얘기가 없군. 다른 질문들을 하고 싶소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 200 // from: 141.2
  SAY #52330 /* ~래벌은 자신의 주변을 가리킨다. "한때 이 곳은 생명이라고는 없는, 돌로 만들어진 평범한 미로였네. 하지만 내가 이 곳에 왔을 때 검은 씨앗 하나가 내 머리에 휘감겨 있었네, 그리고 그것은 돌에서도 무럭무럭 자라났고, 마침내는 노파의 산발한 머리처럼 미로 전역에 뒤덮게 된 것일세. 그래서 이 미로는 내 정원이 되었다네."~ */
  IF ~~ THEN REPLY #52331 /* ~"당신에게 할 다른 질문들이 있소, 래벌..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 201 // from: 141.7
  SAY #52404 /* ~래벌은 불만스러운 듯 얼굴을 찌푸린다, 그러자 그녀의 푸르스름한 피부가 넝마처럼 뒤틀린다. "래벌이 *마법*에 대해 아느냐고?! 자네 정신은 자네 죽음과 함께 자네로부터 완전히 떠나버린 건가?! 내가 잊어버린 마법만 해도..." 그녀는 손톱으로 당신을 찌른다. "자네가 영원토록 배울 수 있는 것보다도.." 그녀는 당신을 다시 찌른다. "많네."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #52405 /* ~"그럼 내게 마법에 대해 좀 가르쳐 줄 수가 있겠소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 203
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #52406 /* ~"그럼 내게 마법에 대해 좀 가르쳐 줄 수가 있겠소?"~ */ GOTO 202
  IF ~~ THEN REPLY #52407 /* ~"그럼 관두시오. 질문할 것들이 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 202 // from: 201.1
  SAY #52408 /* ~래벌은 눈을 가늘게 뜨고 당신을 살펴본다. "자네 부탁이라면 내 마음도 움직이네... 그러나 자네 외의 그 누구도 내 마음을 움직일 수는 없고, 또 그런 자들에게 은혜를 베풀 생각도 없네. 자네는 기초를 배우는 학생인가, 아니면 산전수전 다 겪은 달인인가?"~ */
  IF ~~ THEN REPLY #52409 /* ~"난 기초를 배우는 학생에 불과하오."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52410 /* ~"난 기초를 배우는 학생에 불과하오, 아름다운 래벌."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52411 /* ~"마법의 달인이오."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52412 /* ~"마법의 달인이오, 아름다운 래벌."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52413 /* ~"뭐라고 말할 수가 없소... 내 마법은 때로는 찬사의 대상이나 다른 때는 조롱거리에 불과하오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 212
  IF ~~ THEN REPLY #52414 /* ~"배우는 것은 다음 기회로 미루는 것을 좋을 듯하오. 질문할 것들이 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 203 // from: 201.0
  SAY #52415 /* ~래벌이 코웃음친다. "하! 나는 진정한 마법의 실천자 이외의 사람에게는 내 지식을 전해줄 수 없네. 그리고 이 일에 있어서는 자네조차도 예외가 될 수 없네."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52416 /* ~"아름다운 래벌, 난 당신에게 당신의 비법의 일부라도 내게 가르쳐 달라고 부탁하고 있을 뿐이오... 나는 당신이 지닌 방대한 지식의 흘끗 보는 것 이상의 것은 감히 바라지도 않소." ~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52417 /* ~"그럼 좋소. 달리 질문할 것들이 있소..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 204 // from: 202.1 202.3 203.0
  SAY #52418 /* ~"아첨꾼... 그러나 자네의 말은 내 마음을 따뜻하게 하는군." 래벌의 목소리가 변한다 - 마치 누군가가 현악기의 줄을 잡아당기듯 높낮이가 변동한다. "이 정원을 돌보면서 나는 많은 것을 배웠네. 가시들로부터 추출한 부적과 주문..." 그녀는 혼자서 조용히 콧노래를 부르기 시작한다. "...가시덤불이 자네를 돕도록 만드는 선율과 협화음을 지배하는 법... 귀를 기울이게, 그러면 가지들이 그것에 대해 얘기할 걸세."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52419 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,30000)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52420 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,60000)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52421 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52422 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52423 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,120000)
~ GOTO 208
END

IF ~~ THEN BEGIN 205 // from: 202.0 202.2
  SAY #52424 /* ~"알았네..." 래벌의 목소리가 변한다 - 마치 누군가가 현악기의 줄을 잡아당기듯 높낮이가 변동한다. "이 정원을 돌보면서 나는 많은 것을 배웠네. 가시들로부터 추출한 부적과 주문..." 그녀는 혼자서 조용히 콧노래를 부르기 시작한다. "...가시덤불이 자네를 돕도록 만드는 선율과 협화음을 지배하는 법... 귀를 기울이게, 그러면 가지들이 그것에 대해 얘기할 걸세."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52425 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52426 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52427 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52428 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52429 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
END

IF ~~ THEN BEGIN 206 // from: 204.0 205.0 212.0
  SAY #52430 /* ~당신이 눈을 감고 귀를 기울이자, 마치 가시가 달린 뱀들이 당신 살 속을 파고 나니는 듯한 전율이 당신을 스치고 지나간다. 당신이 눈을 뜨자 당신 손바닥 위에 검은 가시가 돋친 기묘한 씨앗 하나가 놓여 있다. 당신으로선 그것이 왜 거기 있는지 알 수가 없다. 래벌은 당신을 조심스럽게 지켜보고 있다. "씨앗을 가져가게. 그것으로부터 배우게."~ */
  IF ~~ THEN REPLY #52431 /* ~"알겠소... 당신에게 할 다른 질문들이 있소, 래벌."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 207 // from: 204.1 205.1
  SAY #52432 /* ~당신이 눈을 감고 귀를 기울이자, 마치 수십 마리의 가시가 달린 뱀들이 당신 살 속을 파고 나니는 듯한 거대한 전율이 당신을 스치고 지나간다. 당신이 눈을 뜨자 당신 손바닥 위에 검은 가시가 돋친 기묘한 씨앗들이 여러 개 놓여 있다. 당신으로선 그것들이 왜 거기 있는지 알 수가 없다. 래벌은 당신을 조심스럽게 지켜보고 있다. "씨앗들을 가져가게. 그것들로부터 배우게."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52433 /* ~"알겠소... 당신에게 할 다른 질문들이 있소, 래벌."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52434 /* ~"알겠소... 당신에게 할 다른 질문들이 있소, 래벌."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 208 // from: 204.2 204.3 204.4 205.2 205.3 205.4
  SAY #52435 /* ~당신이 눈을 감고 귀를 기울이자, 마치 수십 마리의 가시가 달린 뱀들이 당신 살 속을 파고 나니는 듯한 거대한 전율이 당신을 스치고 지나간다. 더 이상 고통을 견딜 수 없다는 생각이 들 때, 갑자기 당신은 본능적으로 래벌이 부른 것과 같은 곡조의 콧노래를 부르기 시작한다... 그리고 고통은 사라진다. 미로 저편에서 나무 괴물들이 당신의 부름에 호응하듯 찰깍거리는 소리가 들린다. ~ */
  IF ~~ THEN REPLY #52436 /* ~계속 콧노래를 부른다.~ */ DO ~SetGlobal("Ravel_Teach","GLOBAL",2)
~ GOTO 209
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #52437 /* ~래벌은 호기심에 찬 눈으로 당신을 쳐다본다. "엄청난 힘일세..." 그녀는 감탄한 듯 작은 쉿 소리를 낸다, 그리고 얼굴에 미소를 띄운다. "그것은 듣는 모든 자들에게 영향을 미치네. 자네는 강대하네, 내 소중한 사람, 어찌나 강대한지... 언젠가는 차원들조차도 자네 앞에 무릎을 꿇을지도 모르네..."~ */
  IF ~~ THEN REPLY #52438 /* ~"나는 그런 걸 원하지 않소, 래벌. 그런 길을 걷기를 원하는 자는 많으나 나는 아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_1","GLOBALGood",2)
~ GOTO 210
  IF ~~ THEN REPLY #52439 /* ~"차원들이 내 앞에 굴복할 날도 멀지 않았소, 래벌. 내 기억이 돌아오면 돌아올수록 내 힘은 커질 것이고, 아무도 날 멈추지 못할 때까지."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_1","GLOBALGood",-2)
~ GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 209.0 209.1
  SAY #52440 /* ~래벌은 고개를 끄덕이고 당신 손을 가리킨다. 놀랍게도 거기에는 몇 개의 검은 가시 씨앗들이 쥐어져 있다. "그 씨앗들을 가져가서 필요할 때 쓰게... 그리고 덤으로 이것도 주겠네." 그녀는 자기 머리카락을 하나 뽑은 후 한 줌의 씨앗과 함께 손바닥 위에 올려 놓은 후, 손을 꽉 쥐어 으스러뜨린다. 그녀의 손에서 검은 피가 흘러나온다, 그러나 그녀가 손을 펴자 상처는 어디에도 없다... 단지 검은 가시 씨앗을 래벌의 회색 머리카락에 끼워 만든 목걸이가 하나 있을 뿐이다. "이것을 가져가게. 거기에는 내 일부가 담겨져 있네. 자네에게 도움이 될 걸세."~ */
  IF ~~ THEN REPLY #52441 /* ~씨앗들과 기묘한 가시 부적을 줍는다.~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBChrm",Protagonist,1,0,0)
~ JOURNAL #52442 /* ~래벌은 내게 마법에 대해서 좀 가르쳐 주었다. 그 과정에서 나는 그녀의 검은 가시 미로의 주변 환경으로부터 힘을 끌어냈는데, 내가 어찌나 많은 힘을 끌어냈는지 나무 괴물인 트리지트들이 내가 그들을 불렀을 때 대답을 했을 정도였다. 래벌은 감탄했으며, 내게 부적을 하나 더 주면서 미로 안에는 검은 가시 씨앗을 지니고 있으면 들어갈 수 있는 비밀의 장소가 있다고 말해주었다.~ */ GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #52444 /* ~"그 씨앗들을 아끼게, 소중한 사람... 이 미로의 *다른* 곳들에서도 유용하게 쓰일지 모르니 다 써버리지는 말게... 하지만 자네가 강대하다면 이러한 곳들을 찾을 수 있을 걸세."~ */
  IF ~~ THEN REPLY #52445 /* ~"알겠소... 당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END

IF ~~ THEN BEGIN 212 // from: 202.4
  SAY #52446 /* ~"자네는 남들과 얘기할 때 중도로만 가려는 사람이군... 그러한 길에는 확신이 결여되어 있네..." 래벌은 당신을 쳐다보면서 눈을 깜박인다. "자네는 햇병아리 메이지인 것 같군, 하지만 자네에게는 성장할 가능성이 있네. 자네에게 이것을 주지... 쉬쉬... 눈을 감고 귀를 기울이게..."~ */
  IF ~~ THEN REPLY #52447 /* ~눈을 감고 귀를 기울인다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
END

IF ~~ THEN BEGIN 213 // from: 106.8 141.9
  SAY #52448 /* ~"기다리게..." 래벌의 목소리는 낮아져 마치 뱀의 쉿 소리를 연상시킨다. "자네는 가장 중요한 질문을 아직 하지 않았네, 내 소중한 사람. 아직도 모르겠나?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52449 /* ~"아니... 무슨 질문 말이오?~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 214
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #52450 /* ~"알고 있소... 나는 이 장소를 떠날 방법을 알아야만 하오. 당신은 이 질문에 대한 답을 지니고 있소?~ */ GOTO 215
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52451 /* ~"알고 있소... 나는 이 장소를 떠날 방법을 알아야만 하오. 당신은 이 질문에 대한 답을 지니고 있소?~ */ GOTO 215
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #52452 /* ~"'래벌, 어떻게 하면 당신의 이 아름다운 정원을 떠날 수가 있소' 라고 물어보게 - 그렇게 하겠나?" 그녀는 손가락으로 당신을 재촉한다. "자, 자."~ */
  IF ~~ THEN REPLY #52453 /* ~"래벌... 어떻게 하면 당신의 이 아름다운 정원을 떠날 수가 있소?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 213.1 213.2 214.0
  SAY #52454 /* ~"나는 이 곳의 가지들이 뒤틀리고, 구부러지며, 땅으로 파고드는 것에 대해 빠짐없이 알고 있네. 이 곳에는 잎들(leaves)은 없지만, 원한다면 떠날(leave) 수는 있네."~ */
  IF ~~ THEN REPLY #52455 /* ~"그래 당신은 어떻게 하면 떠날 수 있는지 알고 있소?"~ */ DO ~SetGlobal("Ravel_Curst_Portal","GLOBAL",1)
~ GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #52456 /* ~"양손으로 자네 몸을 마치 나뭇가지들처럼 휘감아, 자네 가슴을 새장에 가두듯 에워싸게. 이 미로의 구석에서 어둠 속으로 들어가면 자네는 또 다른 감옥으로 가게 될 걸세 - 떠나는 건 간단하네만 일단 전이문에 발을 디디면 다시는 돌아올 수가 없네. 그러니 사전에 만반의 준비를 하도록 하게."~ */
  IF ~~ THEN REPLY #52457 /* ~"이 미로의 어느 쪽 구석을 통해 떠날 수가 있소?"~ */ GOTO 217
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #52458 /* ~"어느 구석이냐고? 구석들 중 하나가 알지 난 모르네. 난 기억을 못하고, 구석들도 이 문제에 대해서는 별로 할 말이 없네."~ */
  IF ~~ THEN REPLY #52459 /* ~"당신은 떠날 수 있는 방법을 알고 있었소? 처음부터? 그럼... 왜 떠나지 않았소?"~ */ GOTO 218
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #52460 /* ~"자네 질문은 떠날 수 있는 데도 왜 이 곳에서 머무르느냐는 건가?" 래벌은 엄니들을 드러내며 사악한 미소를 짓는다. "나는 그 질문을 자네에게 되돌려 보내겠네. 답은 떠나느냐 머무르느냐가 아니라, 그럴 이유가 있느냐에 있네, 내 소중한 반인."~ */
  IF ~~ THEN REPLY #52461 /* ~"떠나는 것을 원하지 않소?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #52462 /* ~"그것은 욕구일세, 한때는 있었으나 지금은 없는, 그리고 앞으로도 없을. 내게 필요한 것들 중 그 무엇이 내 가시나무 정원 밖에 있나? 이 미로 밖에는 잔인하고 험한 세상이 기다리고 있네, 그리고 이미 래벌은 그녀의 피부로부터 그 잔재를 충분할 만큼 빼서 버렸네."~ */
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",3)
~ THEN REPLY #52463 /* ~"당신은 내게 큰 도움을 주었소, 아름다운 래벌. 내 요청을 들어주고 당신이 지닌 지식을 나누어주어 고맙소."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 220
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52464 /* ~"알겠소... 고맙소, 래벌. 작별인사를 해야겠소."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52465 /* ~"알겠소... 고맙소, 래벌. 작별인사를 해야겠소."~ */ GOTO 230
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #52466 /* ~래벌은 엄니들을 드러내며 사악한 미소를 짓는다, 그리고 조용히 킬킬댄다. "아, 나야말로 자네에게 감사를 해야 하네, 내 소중한 사람. 그토록 달콤한 아부를 들은 건 참으로 오랜만의 일일세... 자네에게 상을 내리고 싶네, 꾀꼬리."~ */
  IF ~~ THEN REPLY #52467 /* ~"내게 은혜를 베풀 필요는 없소, 아름다운 래벌."~ */ GOTO 221
  IF ~~ THEN REPLY #52468 /* ~"은혜? 당신이 주고자 하는 어떤 선물도 기꺼이 받겠소."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 223
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #52469 /* ~"자네의 이의 따위는 여기서 아무런 의미도 없네, 꾀꼬리. 쉬쉬... 자네에게 비밀 하나를 말해줌세"~ */
  IF ~~ THEN REPLY #52470 /* ~"반복하건대 내게 은혜를 베풀 필요는 없소, 아름다운 래벌."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 222
  IF ~~ THEN REPLY #52471 /* ~"좋소..."~ */ GOTO 223
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #52472 /* ~"알았네..." 래벌은 실망한 듯 조용하게 쉿 소리를 낸다. "오늘은 자네에게 선물을 주지 않겠네..."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52473 /* ~"알겠소... 고맙소, 래벌. 작별인사를 해야겠소."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52474 /* ~"알겠소... 고맙소, 래벌. 작별인사를 해야겠소."~ */ GOTO 230
END

IF ~~ THEN BEGIN 223 // from: 220.1 221.1
  SAY #52475 /* ~"그럼 내 말에 귀를 기울이게... 눈을 감게, 그러면 자네가 다원 우주의 본질을 볼 수 있도록 해주겠네..."~ */
  IF ~  GlobalLT("Ravel_Flatter","GLOBAL",7)
~ THEN REPLY #52476 /* ~"눈을 감고 귀를 기울인다..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",6)
GlobalLT("Ravel_Flatter","GLOBAL",11)
~ THEN REPLY #52477 /* ~"눈을 감고 귀를 기울인다..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,120000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",10)
~ THEN REPLY #52478 /* ~"눈을 감고 귀를 기울인다..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,2)
GiveExperience(Protagonist,180000)
~ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 223.0 223.1 223.2
  SAY #52479 /* ~당신은 두 눈을 감는다, 그러자 오른쪽 눈을 뭔가가 찌른 것 같은 격심한 통증이 느껴진다. 당신은 눈... 한 눈을 뜬다... 그리고 래벌의 핏빛 눈이 환희로 빛나고 있는 것을 본다. 그녀의 손톱 중 하나가 길쭉하게 늘어났으며, 그것의 끝을 피와 눈알 하나가 장식하고 있다. 바로 당신 눈이다.~ */
  IF ~~ THEN REPLY #52480 /* ~"무슨... 짓을... 한... 거요...?~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 225
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #52481 /* ~"내가 주는 선물이네 , 꾀꼬리. 지각의 왜곡, 정신 속의 분지들과 내가 자네에게 준 지식의 뿌리들로부터 힘을 끌어올릴 수 있는 수도꼭지... 내 일부..." 당신은 그녀가 검은 씨앗을 꺼내 그것을 당신 눈알과 함께 그녀의 왼쪽 손바닥에 올려놓는 것을 역겨움을 참으며 지켜본다. 그녀는 엽기적인 미소를 지으며 그것들을 역겨운 *우지끈* 소리와 함께 으깬다. "아..." ~ */
  IF ~~ THEN REPLY #52482 /* ~"돌려... 주시오..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 226
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #52483 /* ~"물론이네, 내 소중한 사람..." 래벌이 손바닥을 열자 당신의 눈이 멀쩡한 상태로 당신을 쳐다보고 있다. 그녀는 그것을 엄지와 집게손가락으로 집어서는 당신이 미처 반응을 하기도 전에 당신이 빈 눈구멍 속으로 쑤셔 넣는다. ~ */
  IF ~~ THEN REPLY #52484 /* ~"으악..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ JOURNAL #52485 /* ~내 아첨에 대한 답례로 래벌은 내 오른쪽 눈알을 뽑아 그것에 검은 가시 씨앗을 뭉개어 넣은 다음, 내 피투성이의 눈구멍에 다시 쑤셔 넣었다. 이제 나는 사물을 다르게 볼 수가 있다... 마치 우주를 내 시야 뿐만이 아니라 그녀의 시야로도 함께 보듯이. 물론 이 경험은 내게 아첨할 상대는 잘 골라야만 한다는 교훈을 가르쳐 주었다, 특히 나를 칼로 찌를 수 있을 정도로 가까운 거리에 있을 경우에는. ~ */ GOTO 227
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #52486 /* ~"이제 자네의 눈에는 내 일부가 깃들었네, 소중한 사람. 자네가 그 눈으로 세상을 보면 전보다 더 명석하게 사물을 이해할 수 있을 걸세... 자네는 더 현명해질 것이며, 다원 우주의 법칙과 그 곳에서 겪는 일들을 더 많이 이해할 수 있게 될 걸세... 그것뿐이네."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52487 /* ~"알겠소... 고맙소, 래벌. 작별인사를 해야겠소."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52488 /* ~"알겠소... 고맙소, 래벌. 작별인사를 해야겠소."~ */ GOTO 230
END

IF ~~ THEN BEGIN 228 // from: 219.1 222.0 227.0
  SAY #52489 /* ~당신이 래벌에게 작별 인사를 하려고 하자, 갑자기 머릿속에서 뭔가가 기어다니는 것 같은 느낌이 든다 - 그리고 당신은 래벌의 눈에 육식 동물과도 같은 위험한 눈빛이 감돌고 있다는 사실을 눈치챈다.~ */
  IF ~~ THEN REPLY #52490 /* ~"당신은 날 보내 줄 생각이 없군, 안 그렇소, 래벌?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 229
  IF ~~ THEN REPLY #52491 /* ~"어... 고맙소, 래벌. 작별인사를 해야겠소."~ */ GOTO 230
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #52492 /* ~"명민한 질문이군 - 하지만 그건 진짜 질문이 아니네." 래벌의 목소리는 기묘한 휘파람 소리로 변한다 - 매우 슬픈 곡조로 당신 정신 속에서 희미하게 메아리친다. "질문은 자네가 날 떠나길 원하느냐는 것일세, 반인."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52493 /* ~"아름다운 래벌, 당신은 먼 옛날 내가 당신에게 왔을 때 날 도와주었고, 지금 날 다시 도와주었소. 당신이 날 위해 해준 일은 결코 잊지 않겠소. 하지만 난 떠나야만 하오. 난 내 자신에 대해 더 알아야만 하오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52494 /* ~"나는 떠나야만 하오. 내 자신에 대해 가능한 모든 것을 아는 일은 매우 중요하며, 그 밖에도 내가 알아야 할 것들이 많소."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52495 /* ~"나는 이 곳에 갇히고 싶지 않소. 이 곳은 당신 집이지 내가 있을 장소가 아니오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52496 /* ~"나는 이 미로에 갇히고 싶지 않소. 떠날 생각이냐고? 물론이오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 230 // from: 219.2 222.1 227.1 228.1
  SAY #52497 /* ~"아... 자네는 그렇게 말하는군..." 래벌의 목소리는 기묘한 휘파람 소리로 변한다 - 매우 슬픈 곡조로 당신 정신 속에서 희미하게 메아리친다. "내게 자네에게 마지막으로 하는 질문은: 자네는 내 곁을 떠나길 원하나, 내 소중한 반인?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52498 /* ~"아름다운 래벌, 당신은 먼 옛날 내가 당신에게 왔을 때 날 도와주었고, 지금 날 다시 도와주었소. 당신이 날 위해 해준 일은 결코 잊지 않겠소. 하지만 난 떠나야만 하오. 난 내 자신에 대해 더 알아야만 하오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52499 /* ~"나는 떠나야만 하오. 내 자신에 대해 가능한 모든 것을 아는 일은 매우 중요하며, 그 밖에도 내가 알아야 할 것들이 많소."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52500 /* ~"나는 이 곳에 갇히고 싶지 않소. 이 곳은 당신 집이지 내가 있을 장소가 아니오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52501 /* ~"나는 이 미로에 갇히고 싶지 않소. 떠날 생각이냐고? 물론이오."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 231 // from: 229.2 230.2
  SAY #52502 /* ~"아니, 아니... 이것을 알게..." 래벌은 경고를 하듯 손가락을 하나 치켜 든다. "여기가 우리들의 집이라는 것을 알게, 내 소중한 반인. 우리는 이 검은 가시나무 정원에서 사는 두 불사신들이 될 걸세, 그리고 여기서 내가 자네를 다원 우주로부터 보호하겠네."~ */
  IF ~~ THEN REPLY #52503 /* ~"당신은 자신이 하는 말을 이해하지 못하고 있는 것 같소, 래벌..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 232 // from: 229.3 230.3
  SAY #52504 /* ~"자네가 여길 떠나려는 건 잘못이네, 그리고 자네는 확신을 가지고 답했는지는 모르지만, 그건 틀린 답일세, 내 소중한 반인." 그녀는 자신의 누런 이빨을 곰 사냥용 덫처럼 찰칵거린다. "아니, 아니. 나는 자네를 이 곳에 묶어 두겠네. 우리는 이 검은 가시나무 정원에서 사는 두 불사신들이 될 걸세, 그리고 여기서 내가 자네를 다원 우주로부터 보호하겠네."~ */
  IF ~~ THEN REPLY #52505 /* ~"당신은 자신이 하는 말을 이해하지 못하고 있는 것 같소, 래벌..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 229.0 229.1 230.0 230.1 231.0 232.0
  SAY #52506 /* ~래벌 주변의 공기가 끔찍한 광채로 빛나기 시작한다. 그리고 가지가 부러지고 나무가 갈라지며, 나무들이 구부러지고 쪼개지는 끔찍한 소리들이 들려 오기 시작한다...~ */
  IF ~~ THEN REPLY #52507 /* ~"뭐--?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Ravel",ANIM_MIMESTANCE)
~ GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #52508 /* ~래벌의 입술은 뒤로 말리고, 그녀의 목소리는 울부짖는 바람처럼 날카로워진다. "자네가 아는 것에 대해 무엇을 아나, 반인?! 이걸 알도록 하게: 자네는 세상이 끝나는 날까지 내 가시나무 정원에 머무르며, 자네가 내게 약속했듯이 나만을 사랑하게 될 걸세!"~ */
  IF ~~ THEN REPLY #52509 /* ~"난 그럴 생각이 없소, 래벌. 날 위협하지 마시오... 난 이 곳을 떠날 것이오."~ */ GOTO 235
  IF ~~ THEN REPLY #52510 /* ~"래벌, 진정하시오. 난 떠나야만 하오, 하지만 돌아오리다. 그러니--"~ */ GOTO 235
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52511 /* ~"불행히도 난 그리 좋은 반려자가 되지는 못할 것이오, 래벌. 그리고 나는 무슨 일이 있어도 떠나야겠소. 당신은 내가 가는 것을 허락해야 할 것이오."~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0 234.1 234.2
  SAY #52512 /* ~"나는 자네가 떠나도록 내버려 두지 않겠네. 내게는 자네를 이 곳에 묶어 둘 힘이 있고, 그걸 사용하도록 하겠네. 내 검은 가시 미로는 내가 살아 있는 한 자네를 밖으로 내보내 주지 않을 것이네, 내 소중한, *소중한* 사람..."~ */
  IF ~~ THEN REPLY #52513 /* ~"래벌, 난 당신과 싸우기 싫소... 이런 짓은 하지 마시오. 내가 떠나는 것을 허락하시오, 그러면 당신을 만나러 돌아올 테니. 당신이 이 곳에 홀로 있을 필요는 없소."~ */ GOTO 236
  IF ~~ THEN REPLY #52514 /* ~"그래 내가 떠날 수 있는 유일한 방법은 당신을 죽이는 것뿐이오? 좋소, 날 과소 평가하는 실수를 범한 건 다름 아닌 당신이오, 할망구."~ */ GOTO 237
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #52515 /* ~"돌아오겠다고?! 자네가 그 오래 전에 주장했던 것처럼 돌아오겠다고?! 아니... 아냐, 자네가 이 래벌에게 두번 씩이나 거짓말을 하도록 내버려 두지 않겠네! 또 다시 자네를 기다리느라 몇 세기를 그냥 보내지 않겠네..." 그녀는 엄니를 드러낸다, 그리고 그녀의 손톱은 마족의 손톱처럼 날카롭고 길쭉해진다. "자네는 이제 내 정원에 머무르게 될 걸세, 그리고 다시는 차원들을 떠돌지 못할 걸세...!"~ */
  IF ~~ THEN REPLY #52516 /* ~"래벌, 진정하시오. 이럴 필요는 없소..."~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 235.1 236.0
  SAY #52517 /* ~"자네는 자네 입장을 망각한 모양이군, 자네에게 겸손이란 걸 가르쳐야겠네, 반인."~ [RAV065] */
  IF ~~ THEN REPLY #52518 /* ~"래벌, 이런 짓은 하지 마시오..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ JOURNAL #52520 /* ~래벌은 내 질문에 대답해주었다, 그러나 그녀는 내가 그녀를 떠나리라고는 생각하지 않았던 것 같다... 내가 떠나겠다고 하자 그녀는 날 공격했으며, 자신이 살아 있는 한 난 이 곳을 떠나지 못할 것이라고 단언을 했다.나는 그녀와 싸울 수밖에 없었다. ~ */ EXIT
  IF ~~ THEN REPLY #52519 /* ~"어디 보자, 이 마녀..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ EXIT
END

IF ~~ THEN BEGIN 238 // from: 30.0 239.0
  SAY #52521 /* ~"내 소중한, 내 소중한 반인, 자네의 고통은 가장 격심한 것일세... 영원한 삶. 삶이 이 래벌처럼 자네에게 마음을 써주는가?" 그녀는 자신의 누런 엄니를 끔찍한 소리를 내면서 간다. "그토록 용감하고 열정적이었던 자네가, 이제는 완전히 길을 잃어... 슬프디 슬픈 일이네."~ */
  IF ~~ THEN REPLY #52522 /* ~"래벌, *왜* 당신은 날 불사신으로 만들었소? 난 알아야-"~ */ GOTO 41
END

IF ~~ THEN BEGIN 239 // from: 31.6
  SAY #52523 /* ~"그들이 가까이에 있을 때 그들의 눈을 살펴보게... 자네는 그들의 고통을 *볼* 수 있을 것이네. 그러나 그들은 그것을 입에 담지는 않을 걸세. 래벌은 더 이상 아무 얘기도 하지 않겠네... 만약 그들이 가까운 곳에 있어 내가 그들을 볼 수가 있다면 더 자세히 말해줄 수 있을지도 모르나... 오늘은 아니네."~ */
  IF ~~ THEN REPLY #52524 /* ~"왜 내가 그들을 끌어당기는 거요?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 240 // from: 152.4
  SAY #52525 /* ~"그리고 오래 전에 자네는 날 깨물었네, 그러나 그건 키스가 아니었지. 자넨 내 마음을 물어뜯었네..." 래벌은 미소짓는다. "놀라지 말게, 내 소중한 사람. 자네에게 아무런 해도 없을 걸세... "~ */
  IF ~~ THEN REPLY #52526 /* ~"당신의 원래 모습으로 돌아가시오, 래벌."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 241 // from: 179.1 180.1 181.1
  SAY #52527 /* ~멥베스... 래벌의 얼굴에서 긴장이 풀린다, 그리고 당신이 지켜보고 있는 가운데 그녀의 피부에 푸르스름한 빛이 돌아오며, 그녀의 눈 역시 핏빛을 되찾는다. 그녀는 정신을 가다듬으려는 듯 눈을 깜박인다.~ */
  IF ~~ THEN REPLY #52528 /* ~"당신은 또 어떤 모습들로 변했었소, 래벌?"~ */ GOTO 163
  IF ~~ THEN REPLY #52529 /* ~"당신에게 할 다른 질문들이 있소, 래벌."~ */ GOTO 141
END
