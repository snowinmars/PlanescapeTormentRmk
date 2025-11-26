// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVHAIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVHAIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #2848 /* ~Vhailor stoi w milczeniu i nieporuszenie. Gdyby nie migotliwe, szkarłatne płomyki jego oczu, mógłby z powodzeniem uchodzić za posąg.~ */
  IF ~~ THEN REPLY #2849 /* ~"Chyba powrócę tu później, kiedy ta ogromna chodząca zbroja będzie miała faktycznie coś do powiedzenia."~ */ EXIT
  IF ~~ THEN REPLY #33998 /* ~"Vhailorze, chłopie, rusz się. Rozprosz te swoje wszystkie smutki i do dzieła. Przed nami wiele niesprawiedliwości. Tylko czekają na ciebie, żebyś je naprawił."~ */ DO ~SetGlobal("Vhailor","GLOBAL",2)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16635 /* ~Vhailor stoi w milczeniu i nieporuszenie. Gdyby nie migotliwe, szkarłatne płomyki jego oczu, mógłby z powodzeniem uchodzić za posąg.~ */
  IF ~~ THEN REPLY #17003 /* ~"...Vhailorze? Czy mnie słyszysz?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16636 /* ~Wreszcie z wnętrza pustego hełmu dobywa się głuchy głos Vhailora: *Stan drzewa nie ma dla mnie żadnego znaczenia. Jego śmierć nie jest ani sprawiedliwa, ani niesprawiedliwa - nie dostrzegam w niej nic poza samą śmiercią.*~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #17004 /* ~"W porządku. Morte? Co o tym sądzisz?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #17005 /* ~"W porządku. Anno? Co o tym sądzisz?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #17006 /* ~"W porządku. Dzięki. Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #17007 /* ~"W porządku. Sławo, jak ty to widzisz?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #17008 /* ~"W porządku. Dak'konie, może mógłbyś pomóc temu człowiekowi?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #17009 /* ~"W porządku. Dak'konie, pomóż mu."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #17010 /* ~"W porządku. Nordomie, sądzisz, że mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~~ THEN REPLY #17011 /* ~"W porządku. Opłakujący, mam kilka pytań..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17012 /* ~"Dobrze, Vhailorze. Żegnaj, Opłakujący Drzewa."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #30529 /* ~Kiedy sięgasz Iannisowi do gardła, do twoich uszu dociera donośny grzechot zbroi. Vhailor postępuje krok do przodu i wznosi topór do uderzenia. *NIESPRAWIEDLIWOŚĆ.*~ */
  IF ~~ THEN REPLY #30530 /* ~"Do diaska...!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #30531 /* ~Gdy to mówisz, Vhailor porusza się i podnosi topór. Nie atakuje cię, po prostu *czeka*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 40
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30532 /* ~Vhailor raptownie wraca do życia, kiedy Iannis zaczyna nawoływać strażników. Zbliża się ku tobie ze wzniesionym toporem. *NIESPRAWIEDLIWOŚĆ.*~ */
  IF ~~ THEN REPLY #30533 /* ~"Do diaska...!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #30534 /* ~Gdy to mówisz, Vhailor porusza się i podnosi topór. Nie atakuje cię, po prostu *czeka*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 76
END

IF ~~ THEN BEGIN 7 // from:
  SAY #30535 /* ~Gdy to mówisz, Vhailor porusza się i podnosi topór. Nie atakuje cię, po prostu *czeka*.~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 77
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("Vhailor","GLOBAL",0)
!InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #33999 /* ~Vhailor stoi w milczeniu i nieporuszenie. Gdyby nie migotliwe, szkarłatne płomyki jego oczu, mógłby z powodzeniem uchodzić za posąg.~ */
  IF ~  GlobalGT("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34000 /* ~"Vhailorze, potrzebuję twojej pomocy. Czy nie zechciałbyś towarzyszyć mi w wędrówce?"~ */ DO ~ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 9
  IF ~  Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34001 /* ~"Vhailorze, potrzebuję twojej pomocy. Czy nie zechciałbyś towarzyszyć mi w wędrówce?"~ */ GOTO 82
  IF ~~ THEN REPLY #56052 /* ~Zostaw Vhailora w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34002 /* ~*DOBRZE.*~ [VHA127] */
  IF ~~ THEN REPLY #34003 /* ~"Wobec tego ruszajmy."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 16 even though they appear after this state */
~  InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #34004 /* ~Vhailor stoi w milczeniu i nieporuszenie. Gdyby nie migotliwe, szkarłatne płomyki jego oczu, mógłby z powodzeniem uchodzić za posąg.~ */
  IF ~~ THEN REPLY #34005 /* ~"Chciałbym, żebyś odpowiedział na kilka moich pytań, Vhailorze..."~ */ GOTO 35
  IF ~~ THEN REPLY #56053 /* ~Zostaw Vhailora w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #54088 /* ~*TY. To TY. Jakże DŁUGO ścigałem cię, Bezimienny? I jakże długo przyszło mi TRWAĆ przy twoim boku i czekać aż OSZUSTWO wyjdzie na jaw?* Kiedy wznosi swój topór, całe jego szlachetne oburzenie przesyca jego postać wielką czystą siłą, przeobrażając Vhailora w dosłowne ucieleśnienie sprawiedliwości. *To PRZEZNACZENIE kazało mi związać się z tobą, ZBRODNIARZU. Ale SPRAWIEDLIWOŚĆ przeważy. PADNIESZ pod ciosem mego topora, o nieśmiertelny i nie podniesiesz się już, choćbym miał stać na twoich niepokornych śmierci szczątkach przez całą WIECZNOŚĆ.*~ */
  IF ~~ THEN REPLY #54089 /* ~Broń się.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #54090 /* ~Spróbuj uciec.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #54775 /* ~*W twoich czynach nie ma SPRAWIEDLIWOŚCI, devo. Tym razem NIE omamisz mnie FAŁSZYWYMI słowy. Tym razem spotka cię SPRAWIEDLIWA KARA.* Vhailor zbliża się ku Triasowi ze wzniesionym toporem.~ */
  IF ~~ THEN REPLY #54776 /* ~"Vhailorze, przestań!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54777 /* ~Zaatakuj Triasa.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 13 // from:
  SAY #54778 /* ~*Sprawiedliwość poszukiwała cię od DAWNA, devo. Za twoje ZBRODNIE spotka cię sprawiedliwa kara.* Vhailor zbliża się ku Triasowi ze wzniesionym toporem.~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailorze, przestań!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54780 /* ~Zaatakuj Triasa.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 14 // from:
  SAY #54781 /* ~*Deva NIE odejdzie wolno. Bez względu na wszelkie twoje przysięgi, SPRAWIEDLIWOŚĆ znajdzie ZADOŚĆUCZYNIENIE.*~ */
  IF ~~ THEN REPLY #54779 /* ~"Vhailorze, przestań!"~ */ EXTERN ~DTRIAS~ 113
  IF ~~ THEN REPLY #54782 /* ~Obserwuj.~ */ EXTERN ~DTRIAS~ 113
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54784 /* ~Zaatakuj devę, nie zważając na złożoną przysięgę.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ EXTERN ~DTRIAS~ 113
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54785 /* ~Zaatakuj devę.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ EXTERN ~DTRIAS~ 113
END

IF ~~ THEN BEGIN 15 // from:
  SAY #54859 /* ~W odpowiedzi Vhailor milczy uparcie. Kiedy odwracasz się do niego, widzisz oczy Vhailora wbite w ciebie i płonące żywym ogniem. Światło jego oczu migoce przez chwilę, jak gdyby Vhailor namyślał się. Doznajesz nieprzyjemnego uczucia, że Vhailor dokładnie bada całą twoją postać... może w poszukiwaniu słabych punktów.~ */
  IF ~  NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54860 /* ~"Uch... Ignusie?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54861 /* ~"Uch... Nie-Sławo?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54862 /* ~"Uch... Anno?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54863 /* ~"Uch... Dak'konie?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54864 /* ~"Uch... Dak'konie?~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54865 /* ~"Uch... Morte?~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54866 /* ~"Uch... Morte?~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54867 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54868 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54869 /* ~"W porządku... zobaczmy, co jest po drugiej stronie tego portalu."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Vhailor","GLOBAL",0)
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #56054 /* ~Przed twoimi oczami piętrzy się masywny, rynsztunek rycerski. Jest próżny wewnątrz, ale poszczególne części zbroi tkwią zawieszone w powietrzu jakby opinały niewidzialną postać. Czerwone ścieżki żył przecinają spękania metalu. Żelazne rękawice trzymają w niewidzialnym uścisku potężny obosieczny topór, przypominający broń katowską. Przednią część zbroi ozdabiają liczne ryciny, z których największe wrażenie budzi jedna, przedstawiająca karmazynowego węża z rozpostartymi skrzydłami.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56055 /* ~"Vhailorze...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56056 /* ~Przyjrzyj się zbroi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56057 /* ~Przyjrzyj się toporowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56058 /* ~Przyjrzyj się hełmowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56059 /* ~Zostaw tę zbroję w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.1 18.1 19.1 20.2 21.1
  SAY #56060 /* ~Cała rynsztunek rycerski wygląda na starożytny, szczególnie ostrza naramienne, wykwitająca pokaźnymi wieńcami z płyt zbroi zawieszonych na barkach niewidzialnego wojownika. Jesteś bliski złudzenia, że broń ta służy jedynie ozdobie, ale w takim osądzie powstrzymuje cię jej groźny wygląd i ciężar - to jeszcze jeden dodatkowy oręż do złowieszczego kompletu zbroi i broni. Dostrzegasz, że zbroja, jakkolwiek pełna wgnieceń i innych dowodów bitewnego stażu, nie została dotknięta przez działanie rdzy, ani upływu czasu; nie osiadł na niej nawet najmniejszy pyłek kurzu.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56061 /* ~"Vhailorze...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56062 /* ~Przyjrzyj się toporowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56063 /* ~Przyjrzyj się hełmowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56064 /* ~Zabierz zbroję.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56065 /* ~Zostaw tę górę zbroi w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1 19.2 20.3 21.2
  SAY #56067 /* ~Ten obosieczny topór bitewny przypomina katowskie narzędzie sprawiedliwości. U jego szczytu wspaniały rzemieślnik wykuł podobiznę szkarłatnego węża o rozpostartych skrzydłach, sięgających swoimi łukowatymi krawędziami brzegów ostrzy topora. Topór, nawet trzymany oburącz wydaje się bronią przeznaczoną dla olbrzyma, bo chyba tylko nadludzka siła zdolna byłaby uczynić z tego gigantycznego oręża posłuszne i sprawne narzędzie walki. Z drugiej strony topór swobodnie tkwi w rękawicy pokrywającej niewidzialną dłoń.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56068 /* ~"Vhailorze...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56069 /* ~Przyjrzyj się zbroi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56070 /* ~Przyjrzyj się hełmowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56071 /* ~Zabierz topór.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56072 /* ~Zostaw tę górę zbroi w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3 17.2 18.2 20.4 21.3
  SAY #56073 /* ~Hełm przypomina czaszkę jakiegoś stworzenia; wykręcone metalowe kły ozdabiają dolną krawędź płyty okrywającej twarz, osłaniającej teraz pustkę. Hełm wisi w powietrzu, a jego wnętrze tonie w mroku.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56074 /* ~"Vhailorze...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56075 /* ~Przyjrzyj się zbroi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56076 /* ~Przyjrzyj się toporowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56077 /* ~Zabierz hełm.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56078 /* ~Zostaw tę górę zbroi w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 17.0 18.0 19.0
  SAY #56079 /* ~Nie wiesz skąd pochodzi to imię, ale masz przemożne wrażenie, że jest integralnie związane ze zbroją. Wymawiasz to imię najcichszym szeptem, ale jego echo odzywa się w komnacie z głuchym łoskotem. Powietrze drży, a w twojej czaszce pojawia się dziwne mrowienie, a w sercu chłodny uścisk.~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56080 /* ~Spróbuj uchwycić rąbki wspomnień i przyciągnąć je do siebie.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,60000)
~ GOTO 21
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56081 /* ~Pozwól, niechaj wspomnienia powtórnie wypłyną na powierzchnię...~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 21
  IF ~~ THEN REPLY #56082 /* ~Przyjrzyj się zbroi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56083 /* ~Przyjrzyj się toporowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56084 /* ~Przyjrzyj się hełmowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56085 /* ~Zostaw zbroję w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #56086 /* ~Kiedy wpatrujesz się w zbroję, cienie kłębiące się poniżej przyłbicy poczynają przybierać jakieś kształty... tworzą z wolna sylwetkę potężnego mężczyzny o skórze barwy hebanu... Jego oczy są jak ogień, a jego ciało jak pobojowisko poznaczone niezliczonymi bliznami... Czy to właśnie ten Vhailor z dawnych czasów, kiedy posiadał ciało? Wydaje ci się zastanawiająco znajomy... i to zarówno jako stos rycerskiego rynsztunku kryjący pustkę, i jako wspomnienie człowieka z krwi i kości.~ */
  IF ~~ THEN REPLY #56087 /* ~"Vhailorze... Zbudź się."~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 22
  IF ~~ THEN REPLY #56088 /* ~Przyjrzyj się zbroi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56089 /* ~Przyjrzyj się toporowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56090 /* ~Przyjrzyj się hełmowi.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56091 /* ~Zostaw zbroję w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #56092 /* ~Z wnętrza hełmu bije przenikliwe czerwone światło, przyprawiając twoje oczy niemal o ślepotę. Zasłaniasz twarz przed ogniem bijącym z głębi zbroi, a kiedy powtórnie ją odkrywasz, widzisz, jak spośród cieni otaczających hełm palą się ostrym światłem dwa ogniska oczu.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 17.3 18.3 19.3
  SAY #56093 /* ~Z wnętrza hełmu bije przenikliwe czerwone światło, przyprawiając twoje oczy niemal o ślepotę. Zasłaniasz twarz przed ogniem bijącym z głębi zbroi, a kiedy powtórnie ją odkrywasz, widzisz, jak spośród cieni otaczających hełm palą się ostrym światłem dwa ogniska oczu.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0
  SAY #56094 /* ~*Otom się PRZEBUDZIŁ*~ [VHA002] */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #56095 /* ~Głos niewidzialnego wojownika brzmi niesamowicie, głucho i wzbija wewnątrz zbroi chór pogłosów. Nie jest to głos ludzki... Brzmi bardziej jak dźwięk *siły*, dźwięk istoty nie z tego świata. Nie pochodzi od niczego, co *żyje*, ani od niczego, co niegdyś żyło.~ */
  IF ~~ THEN REPLY #56096 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Vhailor","GLOBAL",1)
~ JOURNAL #56097 /* ~Na dnie więzienia w Klątwie spotkałem przedziwny, żywy rynsztunek rycerski... Wydaje się, że przebywał tam od pewnego czasu. Przedstawił mi się jako "Vhailor" i oświadczył, że jest Łaskobójcą, sługą i egzekutorem sprawiedliwości.~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #56098 /* ~*Jestem VHAILOR.*~ */
  IF ~  NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56099 /* ~"*Czym* ty jesteś?"~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56100 /* ~"*Czym* ty jesteś?"~ */ GOTO 29
  IF ~  !NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56101 /* ~"*Czym* ty jesteś?"~ */ GOTO 28
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56102 /* ~"*Czym* ty jesteś?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #56103 /* ~*Jestem ŁASKOBÓJCĄ.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY #56104 /* ~*Jestem ŁASKOBÓJCĄ.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #56105 /* ~*Jestem ŁASKOBÓJCĄ.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #56106 /* ~*Jestem ŁASKOBÓJCĄ.*~ */
  IF ~~ THEN REPLY #56107 /* ~"Łaskobójcą?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #56108 /* ~Kiedy Vhailor wymawia słowo 'Łaskobójca', Anna i Morte sztywnieją.~ */
  IF ~~ THEN REPLY #56109 /* ~"Łaskobójcą?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 28.0
  SAY #56110 /* ~Kiedy Vhailor wymawia słowo 'Łaskobójca', Anna sztywnieje i wydaje lekkie ostrzegawcze syknięcie.~ */
  IF ~~ THEN REPLY #56111 /* ~"Łaskobójcą?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.0
  SAY #56112 /* ~Kiedy Vhailor wymawia słowo 'Łaskobójca', Morte wiercący się u twego boku nieruchomieje na chwilę.~ */
  IF ~~ THEN REPLY #56113 /* ~"Łaskobójcą?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.0 31.0 32.0 33.0 35.0
  SAY #56114 /* ~*Łaskobójcy służą SPRAWIEDLIWOŚCI. Sprawiedliwość OCZYSZCZA świat ze zła. Kiedy WSZYSTKO zostanie oczyszczone, wieloświat osiągnie stan DOSKONAŁOŚCI.*~ */
  IF ~~ THEN REPLY #56115 /* ~"Dlaczego nazywa się was akurat 'Łaskobójcami'?"~ */ GOTO 36
  IF ~~ THEN REPLY #56116 /* ~"A w jaki sposób służysz sprawiedliwości?"~ */ GOTO 83
  IF ~~ THEN REPLY #56117 /* ~"Mam do ciebie kilka pytań, Vhailorze..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56118 /* ~"Ach tak, Vhailorze. W tym miejscu nasze drogi rozchodzą się."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56119 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 10.0 34.2 36.3 37.0 38.2 39.1 40.1 41.1 42.1 43.1 44.1 45.2 48.1 49.1 50.1 51.2 52.0 53.1 55.1 56.1 57.1 58.1 59.0 60.1 61.2 65.1 68.0 69.0 70.1 71.2 72.1 73.2 74.0 75.2 76.1 77.2 83.2 84.2 88.1 89.2 90.10 91.10 92.1 93.2 105.2 106.2 107.4 108.16 109.1 115.1 116.2 117.2 118.1 119.1 120.2 121.2 122.2 123.2 126.3 127.2 146.0 151.0
  SAY #56120 /* ~*PYTAJ. Ja zaś ci ODPOWIEM.*~ */
  IF ~~ THEN REPLY #56121 /* ~"Łaskobójcy? A co to za jedni?"~ */ GOTO 34
  IF ~~ THEN REPLY #56122 /* ~"Powiedziałeś, że służysz sprawiedliwości, Vhailorze. Ale w jaki sposób?"~ */ GOTO 83
  IF ~  Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56123 /* ~"Jak długo trwała twoja niewola?"~ */ GOTO 55
  IF ~  !Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56124 /* ~"Jak długo trwała twoja niewola pod Klątwą?"~ */ GOTO 55
  IF ~~ THEN REPLY #56125 /* ~"W jaki sposób zmarłeś?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 70
  IF ~  Global("Vhailor_Sight","GLOBAL",1)
~ THEN REPLY #56126 /* ~"Powiadasz, że potrafisz zaglądać w serca innych, Vhailorze. Jak to robisz?"~ */ GOTO 90
  IF ~  Class(Protagonist,FIGHTER)
InParty("Vhail")
Global("Vhailor_Teach","GLOBAL",0)
~ THEN REPLY #56127 /* ~"Czy możesz nauczyć mnie sztuki walki toporem, Vhailorze?"~ */ GOTO 60
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56128 /* ~Kłamstwo: "Ja również poszukuję sprawiedliwości, Vhailorze. Czy przyłączysz się do mnie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56129 /* ~Kłamstwo: "Ja również poszukuję sprawiedliwości, Vhailorze. Czy przyłączysz się do mnie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 80
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56130 /* ~Prawda: "Ja również poszukuję sprawiedliwości, Vhailorze. Czy przyłączysz się do mnie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56131 /* ~Prawda: "Ja również poszukuję sprawiedliwości, Vhailorze. Czy przyłączysz się do mnie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 80
  IF ~  !InParty("Vhail")
~ THEN REPLY #56132 /* ~"Czy nie zechciałbyś dzielić ze mną wędrówkę, Vhailorze? Twoja pomoc może być dla nas wszystkich nieoceniona."~ */ GOTO 82
  IF ~  !InParty("Vhail")
~ THEN REPLY #56133 /* ~"Mniejsza z tym, Vhailorze. W tym miejscu nasze drogi rozchodzą się."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56134 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #56135 /* ~*Litość to puklerz na użytek SŁABYCH. Łaska to SŁABOŚĆ. Litość to ŚMIERĆ. Niewinność NIE ISTNIEJE. Łaskobójcy tropią i niszczą litość i jej przebrzydły POMIOT, gdziekolwiek tylko zaraz ta przyciągnie.*~ */
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56136 /* ~Prawda: "Widzę, że znalazłem kogoś, kto myśli tak jak ja. Łaska działa na szkodę sprawiedliwości. Litość jest słabością."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALEvil_Vhailor_1","GLOBALGood",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56137 /* ~Kłamstwo: "Widzę, że znalazłem kogoś, kto myśli tak jak ja. Łaska działa na szkodę sprawiedliwości. Litość jest słabością."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_1","GLOBALLaw",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",2)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56138 /* ~Prawda: "Nie zgadzam się z tobą. Łaska jest też potęgą, a są chwile, kiedy nawet sprawiedliwość okazuje się niesprawiedliwa, szczególnie kiedy jest posunięta do ekstremum."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vhailor_1","GLOBALGood",1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",3)
~ GOTO 38
  IF ~~ THEN REPLY #56139 /* ~"Ach tak. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56140 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56141 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #56142 /* ~*Kara KSZTAŁTUJE dusze. Czyni je godnymi poświęcenia się SPRAWIEDLIWOŚCI.*~ */
  IF ~~ THEN REPLY #56143 /* ~"Ach tak. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56144 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56145 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY #56146 /* ~*Łaska to robak, który toczy serce sprawiedliwości. Nikt kto żyje na tym świecie, nie jest NIEWINNY.*~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56147 /* ~"Ale na czym polega sprawiedliwość w twoim wydaniu, Vhailorze? Na czym dokładnie?"~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56148 /* ~"Mówiąc twoimi słowy, ty też nie jesteś niewinny. Czyż więc i ty powinieneś zostać ukarany?"~ */ GOTO 48
  IF ~~ THEN REPLY #56149 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56150 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56151 /* ~"Nie ma już zamiaru więcej spierać się z tobą, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #56152 /* ~*SPRAWIEDLIWOŚĆ jest określana przez PRAWO.*~ */
  IF ~~ THEN REPLY #56153 /* ~"A co rozumiesz przez prawo, Vhailorze?"~ */ GOTO 40
  IF ~~ THEN REPLY #56154 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56155 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56156 /* ~"Nie ma już zamiaru więcej spierać się z tobą, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #56157 /* ~*PRAWO to narzędzie, które służy SPRAWIEDLIWOŚCI.*~ */
  IF ~~ THEN REPLY #56158 /* ~"A co jest tworzywem prawa, Vhailorze?"~ */ GOTO 41
  IF ~~ THEN REPLY #56159 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56160 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56161 /* ~"Nie ma już zamiaru więcej spierać się z tobą, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #56162 /* ~*PRAWO jest określane przez SPRAWIEDLIWOŚĆ.*~ */
  IF ~~ THEN REPLY #56163 /* ~"Twój tok rozumowania polega na chodzeniu w kółko, Vhailorze, a co za tym idzie, jest pozbawiony sensu. Twierdzisz, że sprawiedliwość jest określana przez prawo, a prawo jest określane przez sprawiedliwość. Czy taka argumentacja trzyma się kupy?"~ */ GOTO 42
  IF ~~ THEN REPLY #56164 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56165 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56166 /* ~"Nie ma już zamiaru więcej spierać się z tobą, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #56167 /* ~*PRAWO -JEST- określane przez SPRAWIEDLIWOŚĆ.*~ */
  IF ~~ THEN REPLY #56168 /* ~"Prawa tworzą żyjący ludzie, Vhailorze - czy prawa, które ci ludzie tworzą są według ciebie sprawiedliwe?"~ */ GOTO 43
  IF ~~ THEN REPLY #56169 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56170 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56171 /* ~"Nie ma już zamiaru więcej spierać się z tobą, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #56172 /* ~*PRAWA są SPRAWIEDLIWE*~ */
  IF ~~ THEN REPLY #56173 /* ~"Ale jeżeli prawa te dziełem żywych ludzi, którzy, według twoich słów, nie są niewinni, to czy też prawa nie są kłamliwe, jeśli stworzone przez ludzi pełnych winy?"~ */ GOTO 44
  IF ~~ THEN REPLY #56174 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56175 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56176 /* ~"Nie ma już zamiaru więcej spierać się z tobą, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #56177 /* ~*NIC, co żyje nie jest NIEWINNE. Jedynie PRAWO panuje NAD ciałem i krwią. Z NIEDOSKONAŁOŚCI droga prowadzi ku DOSKONAŁOŚCI. PRAWA NIESPRAWIEDLIWE można naprawić. UPUŚCIĆ IM ZŁA, tak jak upuszcza się krwi.*~ */
  IF ~~ THEN REPLY #56178 /* ~"Więc sam przyznajesz, że prawa nie zawsze są doskonałe. Przeto jeżeli te same prawa określają sprawiedliwość to czy to nie oznacza, że sprawiedliwość jest również niedoskonała?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 45
  IF ~~ THEN REPLY #56179 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56180 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56181 /* ~"Nie ma już zamiaru więcej spierać się z tobą, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #56182 /* ~Vhailor pozostaje w milczeniu.~ */
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56183 /* ~"Vhailorze - sprawiedliwość nie istnieje. Wszystko, co robisz w imię sprawiedliwości jest pozbawione sensu - całe twoje życie jest pozbawione sensu."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ JOURNAL #56188 /* ~Przekonałem Vhailora, że jego pogoń za sprawiedliwością jest bezsensowna, ponieważ wierzy on, że sprawiedliwość i prawo to twory tak ściśle zespolone, że jeżeli jeden z tych członów będzie niedoskonały, to sytuacja taka według Vhailora będzie oznaczać, że i drugi człon jest niedoskonały. Gdyby Vhailor był bardziej bystry, mógł przeciwstawić się moim tezom z większą skutecznością, ale nie zmienia to faktu, że jakiekolwiek były jego pasje czy obsesje, które sprawiły, że po śmierci jego duch nie zaznał spoczynku, to ubocznym skutkiem ich działania było uniemożliwienie mu sięgnięcie myślą poza ograniczony krąg jednych i tych samych argumentów. Kiedy wreszcie dotarły do Vhailora moje słowa, ogarnęło go zwątpienie i zabiło go, tym razem już na dobre.~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56184 /* ~"Vhailorze - sprawiedliwość nie istnieje. Wszystko, co robisz w imię sprawiedliwości jest pozbawione sensu - całe twoje życie jest pozbawione sensu."~ */ GOTO 47
  IF ~~ THEN REPLY #56185 /* ~"Mniejsza z tym, Vhailorze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56186 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56187 /* ~"Nie ma już zamiaru więcej spierać się z tobą, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #56189 /* ~Twoje słowa wzbudzają echo, które potęguje się, kiedy je ciągniesz swoją wypowiedź. Żar w oczach Vhailora zajmuje się migotliwą mgłą a zaraz potem gaśnie. Zbroja Vhailora osuwa się na ziemię, a topór i metalowe płyty z łoskotem dzwonią o posadzkę. A kiedy już leżą na ziemi, wzbijają chmury kurzu, popiołu i drobinek rdzy, jakby na twoich oczach postarzały się, psuły i rozsypywały w nicość. Niebawem wszystko, co świadczy o niedawnej obecności Vhailora to kilka zniszczonych metalowych płyt, spoczywających na podobieństwo kamieni nagrobnych.~ */
  IF ~~ THEN REPLY #56190 /* ~"Żegnaj, Vhailorze."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #56191 /* ~Żar ślepi Vhailora zaczyna migotać, a zaraz potem jaśnieje pełnym blaskiem. *Twoje SŁOWA są dla mnie niczym. Próbujesz ZEPCHNĄĆ mnie z DROGI SPRAWIEDLIWOŚCI.* Vhailor podnosi topór w złowróżbnym geście. *KARA z mojej ręki cię nie ominie.*~ */
  IF ~~ THEN REPLY #56192 /* ~"Vhailorze, poczekaj! Nie rób tego!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #56193 /* ~"Dobrze Vhailorze. Jeżeli naprawdę chcesz walki..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 38.1
  SAY #56194 /* ~*Służę sprawiedliwości. Gdyby mi przyszło odstąpić od sprawiedliwości, kara mnie nie ominie.*~ */
  IF ~~ THEN REPLY #56195 /* ~"Więc gdyby przyszło ci kiedykolwiek pozwolić zbrodniarzowi, aby uniknął kary, ukarałbyś za to samego siebie?"~ */ GOTO 49
  IF ~~ THEN REPLY #56196 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56197 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56198 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #56199 /* ~*TAK.*~ */
  IF ~~ THEN REPLY #56200 /* ~"Hm... Pomyśl, kiedy byłeś uwięziony w podziemiach Klątwy, tysiące... setki tysięcy... może nawet miliony zbrodniarzy pojawiło się na świecie, przeżyło swe grzeszne żywoty i zmarło. A ty nie miałeś okazji, aby ich ukarać. Czy naprawdę uważasz, że jesteś w stanie zapewnić sprawiedliwość każdej istocie w wieloświecie?"~ */ GOTO 50
  IF ~~ THEN REPLY #56201 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56202 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56203 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #56204 /* ~*Wtedy będę ich szukał POZA śmiercią i tam wymierzał im karę.*~ */
  IF ~~ THEN REPLY #56205 /* ~"Jeżeli to uczynisz, nie będziesz już mógł dalej karań żywych. Czyż nie, Vhailorze?"~ */ GOTO 51
  IF ~~ THEN REPLY #56206 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56207 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56208 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #56209 /* ~*A więc będę trwał w swojej pogoni za SPRAWIEDLIWOŚCIĄ w sferze ŻYWYCH.*~ */
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56210 /* ~"Ale jest więcej zbrodniarzy pośród martwych niż pośród żywych... Wszystko, co żyje, umiera, czyż nie? Jeśli umrzesz, będziesz miał dostęp do nich wszystkich."~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56211 /* ~"Ale jest więcej zbrodniarzy pośród martwych niż pośród żywych... Wszystko, co żyje, umiera, czyż nie? Jeśli umrzesz, będziesz miał dostęp do nich wszystkich."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #56212 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56213 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56214 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #56217 /* ~*Twoje słowa tchną PUSTKĄ. Brak im PRZEKONANIA. Cuchną KŁAMSTWEM i OSZUSTWEM. Nie będę ich słuchał.*~ */
  IF ~~ THEN REPLY #56218 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56219 /* ~"A więc tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56220 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #56221 /* ~Vhailor stoi bez słowa, tylko pobłyskuje spod hełmu palącym spojrzeniem.~ */
  IF ~~ THEN REPLY #56222 /* ~"Szukaj ich poza śmiercią, Vhailorze - może któregoś dnia spotkam cię tam."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ GOTO 54
  IF ~~ THEN REPLY #56223 /* ~"Zapomnijmy o tym, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56224 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56225 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #56226 /* ~Twoje słowa wzbudzają echo, które potęguje się, kiedy je ciągniesz swoją wypowiedź. Żar w oczach Vhailora zajmuje się migotliwą mgłą a zaraz potem gaśnie. Zbroja Vhailora osuwa się na ziemię, a topór i metalowe płyty z łoskotem dzwonią o posadzkę. A kiedy już leżą na ziemi, wzbijają chmury kurzu, popiołu i drobinek rdzy, jakby na twoich oczach postarzały się, psuły i rozsypywały w nicość. Niebawem wszystko, co świadczy o niedawnej obecności Vhailora to kilka zniszczonych metalowych płyt, spoczywających na podobieństwo kamieni nagrobnych.~ */
  IF ~~ THEN REPLY #56227 /* ~"Odpoczywaj, Vhailorze."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ JOURNAL #56228 /* ~Przekonałem Vhailora, że jeżeli chce ukarać wszystkich, którzy popełnili zbrodnie, musi umrzeć, bowiem więcej zbrodniarzy kryją mroki krainy śmierci, niżeli bieżąca rzeczywistość. Moje słowa zrobiły na nim wielkie wrażenie, tak wielkie, że zaraz padł przede mną trupem i zmarł drugą swoją śmiercią, a jego zbroja i topór obróciły się w pył i proch.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 35.2 35.3
  SAY #56229 /* ~*Kiedy trwał w uwięzieniu, czas MIJAŁ. Czas nie ma ZNACZENIA. Tylko SPRAWIEDLIWOŚĆ ma znaczenie.*~ */
  IF ~~ THEN REPLY #56230 /* ~"A czy wiesz, co sprowadziło cię do Klątwy?"~ */ GOTO 56
  IF ~~ THEN REPLY #56231 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56232 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56233 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #56234 /* ~*Wielu ze swych wędrówek już nie nadrobię. Wędrowałem w poszukiwaniu ZDRAJCÓW. Lecz ci osaczyli mnie i uwięzili. Była to ZDRADA.*~ */
  IF ~~ THEN REPLY #56235 /* ~"Zdrajców? Jakich zdrajców?"~ */ GOTO 57
  IF ~~ THEN REPLY #56236 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56237 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56238 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #56239 /* ~*Klątwa to MIASTO ZDRAJCÓW. To miasto, które godzi w SPRAWIEDLIWOŚĆ. Przybyłem je OCZYŚCIĆ.*~ */
  IF ~~ THEN REPLY #56240 /* ~"Jak zostałeś uwięziony?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #56241 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56242 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56243 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #56244 /* ~Vhailor stoi bez słowa, tylko pobłyskuje spod hełmu palącym spojrzeniem.~ */
  IF ~~ THEN REPLY #56245 /* ~"Vhailorze? Czy pamiętasz, jak cię uwięziono?"~ */ GOTO 59
  IF ~~ THEN REPLY #56246 /* ~"Zapomnijmy o tym, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56247 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56248 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #56249 /* ~*Nie WIEM.*~ */
  IF ~~ THEN REPLY #56250 /* ~"Dobrze. Mam jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56251 /* ~"A więc tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56252 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 35.6
  SAY #56253 /* ~*Nie ma takiej rzeczy, której mógłbym cię nauczyć. To nie DŁOŃ dzierży oręż, a WOLA.*~ */
  IF ~~ THEN REPLY #56254 /* ~"Co masz na myśli?"~ */ GOTO 61
  IF ~~ THEN REPLY #56255 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~~ THEN REPLY #56256 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #56257 /* ~*Kiedy WOLA jest silna, MIECZ jest silny. Kiedy sprawa jest SŁUSZNA, miecz pracuje SPRAWNIE. Kiedy LITOŚĆ toczy serce, przybywa ZWĄTPIENIE, WAHANIE, WSPÓŁCZUCIE. Miecz obraca się w PROCH.*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56258 /* ~"Moja wola jest silna, Vhailorze. Moje przekonania wspierają siłę mojego miecza."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 62
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56259 /* ~"Moja wola jest silna, Vhailorze. Moje przekonania wspierają siłę mojego miecza."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 69
  IF ~~ THEN REPLY #56260 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~~ THEN REPLY #56261 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #56262 /* ~Palące spojrzenie Vhailora zatrzymuje się na tobie. Zapada ciężka cisza.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #56263 /* ~*Twoja WOLA jest mocna. Twoje ZDYSCYPLINOWANIE jest silne. Twoja WOLA to wola prawa.*~ */
  IF ~~ THEN REPLY #56264 /* ~"Zatem jak...?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #56265 /* ~*WIEDZ że, nie ma niczego takiego pośród WSZYSTKICH SFER, co mogłoby ODWRÓCIĆ karzącą rękę SPRAWIEDLIWOŚCI. Sprawiedliwość może rozbić w pył wszystkie armie świata. Sprawiedliwość może wstrząsnąć tronami BOGÓW. Jeżeli służysz SPRAWIEDLIWOŚCI, SPRAWIEDLIWOŚĆ uczyni cię POTĘŻNYM na swoje podobieństwo.*~ */
  IF ~~ THEN REPLY #56266 /* ~"Rozumiem."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #56267 /* ~*NIE rozumiesz. Jeszcze NIE. Otwórz swoje oczy na mnie, a UJRZYSZ SFERY oczyma SPRAWIEDLIWOŚCI.*~ */
  IF ~~ THEN REPLY #56268 /* ~"Bardzo dobrze... zatem powiedz mi, co widzisz."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 66
  IF ~~ THEN REPLY #56269 /* ~"Nie, Vhailorze... Nie chcę tego widzieć. Natomiast mam do ciebie kilka innych pytań ..."~ */ GOTO 35
  IF ~~ THEN REPLY #56270 /* ~"Nie wydaje mi się, abym był gotowy na to, co chcesz mi pokazać, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #56271 /* ~Spoglądasz w oczy Vhailora. Dwa płomienie rozbłyskują pełnym blaskiem.~ */
  IF ~  GlobalLT("Law","GLOBAL",25)
~ THEN REPLY #56272 /* ~"Co s..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",1)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,1)
GiveExperience(Protagonist,90000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",24)
GlobalLT("Law","GLOBAL",35)
~ THEN REPLY #56273 /* ~"Co s..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",2)
PermanentStatChange(Protagonist,STR,RAISE,2)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,2)
GiveExperience(Protagonist,120000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",34)
~ THEN REPLY #56274 /* ~"Co s..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",3)
PermanentStatChange(Protagonist,STR,RAISE,3)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,3)
GiveExperience(Protagonist,150000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1 66.2
  SAY #56275 /* ~Płomienie oczu Vhailora oślepiają cię na moment, lecz kiedy ponownie otwierasz oczy, wszystko, co dostrzegasz zdaje się mieć dokładniejsze kontury, jak gdyby zostało wzbogacone o dodatkowy wymiar. Czujesz się w jakiś sposób ostrzejszy, jakbyś był zdolny rozciąć każdy przedmiot samym tylko spojrzeniem.~ */
  IF ~~ THEN REPLY #56276 /* ~"Vhailorze... czy to...?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #56277 /* ~*PATRZ na wszystkie rzeczy, PATRZ na ich moc. PATRZ na ich SŁABOŚĆ. OSĄDZAJ wszystko. Jeżeli ŁASKA wkradnie się w serce, serce UPADNIE dla SPRAWIEDLIWOŚCI. Twoja WOLA daje ci PRAWO. Twoje ZDYSCYPLINOWANIE daje ci PRAWO.*~ */
  IF ~~ THEN REPLY #56278 /* ~"Bardzo dobrze... Są inne rzeczy, o które chciałbym cię spytać."~ */ GOTO 35
  IF ~~ THEN REPLY #56279 /* ~"Tak, teraz wiem. Zatem... idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.1
  SAY #56280 /* ~*Twoja WOLA jest silna. Ale brakuje ci ZDYSCYPLINOWANIA. Twoja WOLA to wola TWOJEJ duszy, a nie wola PRAWA. Nie ma niczego takiego, co miałbym ci POKAZAĆ, ani niczego takiego, czego miałbym cię NAUCZYĆ.*~ */
  IF ~~ THEN REPLY #56281 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~~ THEN REPLY #56282 /* ~"Zatem mniejsza o to. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 35.4
  SAY #56283 /* ~Palące spojrzenie Vhailora zatrzymuje się na tobie. Zapada ciężka cisza.~ */
  IF ~~ THEN REPLY #56284 /* ~"Vhailorze? Jak zginąłeś?"~ */ GOTO 71
  IF ~~ THEN REPLY #56285 /* ~"Mniejsza o to, Vhailorze. Mam do ciebie kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56286 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56287 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #56288 /* ~*JA ŻYJĘ.*~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #56289 /* ~"Cóż, można tak to ująć - ale co stało się z twoim ciałem?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56290 /* ~"Cóż, można tak to ująć - ale co stało się z twoim ciałem?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 72
  IF ~~ THEN REPLY #56291 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56292 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56293 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY #56294 /* ~Kiedy zaczynasz mówić, jakieś dziwne mrowienie pojawia się z tyłu twojej czaszki - i nagle uświadamiasz sobie, że Vhailor nie zdaje sobie sprawy z tego, że jest martwy. Równocześnie masz nieodparte wrażenie, że wyjawienie mu tej prawdy, pociągnęłoby za sobą niezwykle groźne konsekwencje.~ */
  IF ~~ THEN REPLY #56295 /* ~"Vhailorze? Co stało się z twoim ciałem?"~ */ GOTO 73
  IF ~~ THEN REPLY #56296 /* ~"Mniejsza o to, Vhailorze. Mam do ciebie kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56297 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56298 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0 72.0
  SAY #56299 /* ~*JA ŻYJĘ. Albowiem póki POTĘPIENI wymagają KARY, ŻYĆ będę.*~ */
  IF ~~ THEN REPLY #56300 /* ~"Vhailorze, ty nie jesteś naprawdę żywy... Stałeś się duchem, widmem - upiorem."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56301 /* ~"Czy czujesz w sobie życie, Vhailorze? Zdejmij rękawice, zobacz, czy twoje oczy dostrzegą ciało. Uderz toporem w ramię - czy wytoczy twoją krew? A nawet twoje oczy - chociaż płoną żywym ogniem, czy potrafią ronić łzy? Twój duch pozostał, Vhailorze, ale ty już nie żyjesz."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 75
  IF ~~ THEN REPLY #56302 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56303 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56304 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56305 /* ~Zapada ciężka, złowróżbna cisza. Vhailor nie odpowiada ani słowem.~ */
  IF ~~ THEN REPLY #56306 /* ~"Mniejsza o to, Vhailorze. Mam do ciebie kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56307 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56308 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 73.1
  SAY #56309 /* ~Na chwilę... na bardzo krótką chwilę, oczy Vhailora migoczą.~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56310 /* ~"Czy ty w ogóle pamiętasz cokolwiek, co było tobą, poza tą zbroją, Vhailorze? Byłeś kiedyś człowiekiem z krwi i kości. Byłeś kiedyś żywy, byłeś poszukiwaczem sprawiedliwości. Ale tego człowieka już nie ma. Pozostała po nim jedynie udręczona skorupa."~ */ GOTO 76
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56311 /* ~"Czy ty w ogóle pamiętasz cokolwiek, co było tobą, poza tą zbroją, Vhailorze? Ja pamiętam. Byłeś kiedyś człowiekiem z krwi i kości, o czarnej jak noc twarzy i oczach jak dwa płonące sztylety... Twoje ciało znaczyło wiele blizn, ale jeszcze więcej było szlachetnych uczynków, którymi znaczyłeś swoje życie. Ale tego człowieka już nie ma. Pozostała po nim jedynie udręczona skorupa."~ */ GOTO 76
  IF ~~ THEN REPLY #56312 /* ~"Zapomnijmy o tym, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56313 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56314 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #56315 /* ~*Pamiętam.* Oczy Vhailora znowu krzeszą snopy iskier, tym jednak razem z mniejszą regularnością niż poprzednio. Topór Vhailora łagodnie opada do boku rycerza. *Moja pamięć jest... TRUDNA do ogarnięcia. Spotkała mnie ŚMIERĆ... I spotkała mnie PRZEMIANA. Już nie jestem TYM SAMYM, co przedtem. Czym więc JESTEM?*~ */
  IF ~~ THEN REPLY #56316 /* ~"Nie wiem, Vhailorze. Człowiek, który był Vhailorem nie żyje... Ty jesteś czymś innym."~ */ GOTO 77
  IF ~~ THEN REPLY #56317 /* ~"Zapomnijmy o tym, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56318 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56319 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #56320 /* ~*SPRAWIEDLIWOŚĆ była moją sprawą. CIAŁO... CIAŁO nie przetrwało. Ale SPRAWIEDLIWOŚĆ musi zawsze znaleźć ZADOŚĆUCZYNIENIE. ŚMIERĆ pochłonęła ciało, ale WOLA uszła cało... Zasługujących na karę jest wciąż WIELU. Zawsze WIĘCEJ. SPRAWIEDLIWOŚĆ... Moja ŚMIERĆ przyniosłaby SPRAWIEDLIWOŚCI dotkliwy uszczerbek.*~ */
  IF ~~ THEN REPLY #56321 /* ~"Ale ty UMARŁEŚ, Vhailorze, dawne temu. A teraz już czas, aby odejść."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56677 /* ~Przekonałem Vhailora, że jest martwy. Moje słowa zrobiły na nim wielkie wrażenie, tak wielkie, że zaraz padł przede mną trupem i zmarł drugą swoją śmiercią, a jego zbroja i topór obróciły się w pył i proch.~ */ GOTO 152
  IF ~~ THEN REPLY #56322 /* ~"Zatem jedynie OKŁAMUJESZ się, myśląc, że żyjesz. Jesteś MARTWY, Vhailorze. Cóż to SPRAWIEDLIWOŚĆ, jeżeli jej sługa okłamuje sam siebie?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56326 /* ~Przekonałem Vhailora, że jest martwy i z tego powodu powinien zarzucić swoją krucjatę w imię sprawiedliwości. Moje słowa zrobiły na nim wielkie wrażenie, tak wielkie, że zaraz padł przede mną trupem i zmarł drugą swoją śmiercią, a jego zbroja i topór obróciły się w pył i proch.~ */ GOTO 152
  IF ~~ THEN REPLY #56323 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56324 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56325 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 35.7 35.9 82.0 82.2 82.4
  SAY #56327 /* ~Palące spojrzenie Vhailora zatrzymuje się na tobie. Zapada ciężka cisza.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #56328 /* ~*PRZYŁĄCZĘ się do ciebie. Będziemy wspólnie szukać SPRAWIEDLIWOŚCI. Jeżeli natkniemy się na ŁASKĘ, zdepczemy ją.*~ */
  IF ~~ THEN REPLY #56329 /* ~"Bardzo dobrze."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",1)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from: 35.8 35.10 82.1 82.3 82.5
  SAY #56330 /* ~Palące spojrzenie Vhailora zatrzymuje się na tobie. Zapada ciężka cisza.~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #56331 /* ~*PRZYŁĄCZĘ się do ciebie. Twoja WOLA jest NIEWZRUSZONA, ale potrzeba ci WIEDZY o SPRAWIEDLIWOŚCI. NAUCZĘ się o SPRAWIEDLIWOŚCI. Nauczę cię, jak NISZCZYĆ ŁASKĘ.*~ */
  IF ~~ THEN REPLY #56332 /* ~"Bardzo dobrze."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",2)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 8.1 35.11
  SAY #56333 /* ~*Czy twe serce poszukuje SPRAWIEDLIWOŚCI? A może twojej WĘDRÓWCE żaden CEL nie przyświeca?*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56334 /* ~Prawda: "Poszukuję sprawiedliwości, Vhailorze. Czy przyłączysz się do mnie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56335 /* ~Prawda: "Poszukuję sprawiedliwości, Vhailorze. Czy przyłączysz się do mnie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56336 /* ~Kłamstwo: "Poszukuję sprawiedliwości, Vhailorze. Czy przyłączysz się do mnie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56337 /* ~Kłamstwo: "Poszukuję sprawiedliwości, Vhailorze. Czy przyłączysz się do mnie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56339 /* ~"Poszukuję wiedzy o samym sobie, Vhailorze, a jeżeli w wiedzy tej tkwi sprawiedliwość, tedy poszukuję również sprawiedliwości."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56340 /* ~"Poszukuję wiedzy o samym sobie, Vhailorze, a jeżeli w wiedzy tej tkwi sprawiedliwość, tedy poszukuję również sprawiedliwości."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
END

IF ~~ THEN BEGIN 83 // from: 34.1 35.1
  SAY #56338 /* ~*Łaskobójcy to RAMIONA SPRAWIEDLIWOŚCI. Łaskobójcy to wykonawcy WOLI SPRAWIEDLIWOŚCI. Kiedy zapada WYROK sprawiedliwości, POTĘGA sprawiedliwości SPŁYWA na Łaskobójców.*~ */
  IF ~~ THEN REPLY #56347 /* ~"A skąd wiesz, kiedy należy wymierzać sprawiedliwość?"~ */ GOTO 89
  IF ~~ THEN REPLY #56348 /* ~"Potęga? W jaki sposób?"~ */ GOTO 84
  IF ~~ THEN REPLY #56349 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56350 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56351 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.1 89.1
  SAY #56341 /* ~*POTĘGA SPRAWIEDLIWOŚCI zależy od szkód, jakich dokonała NIESPRAWIEDLIWOŚĆ.*~ */
  IF ~~ THEN REPLY #56342 /* ~"Tak więc... Im większa jest niesprawiedliwość, tym większa zbrodnia, i w tym większą moc wyposaża cię sprawiedliwość?"~ */ GOTO 85
  IF ~~ THEN REPLY #56343 /* ~"A skąd wiesz, kiedy należy wymierzać sprawiedliwość?"~ */ GOTO 89
  IF ~~ THEN REPLY #56344 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56345 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56346 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #56352 /* ~*Jeżeli NIESPRAWIEDLIWOŚĆ urośnie do pokaźnych rozmiarów, SPRAWIEDLIWOŚĆ udziela mi MOCY, potrzebnej do NAPRAWIENIA niesprawiedliwości. NIC nie będzie w stanie przeciwstawić się tej mocy. SKRUSZY ona każdą przeszkodę, ZGRUCHOCZE każdy puklerz, ROZEDRZE każdy czar, i pozwoli swemu słudze wykonać SPRAWIEDLIWY WYROK.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ JOURNAL #56353 /* ~Vhailor to coś więcej niż tylko niespokojny duch; on wydaje się być ucieleśnieniem sprawiedliwości. Vhailor oznajmił mi, że sprawiedliwość obdarza go mocą, której używa, aby zwalczyć wszelkie niegodziwości. Im większa niesprawiedliwość się dzieje, tym większa moc spływa na Vhailora, aby mógł ową niegodziwość ukrócić. Vhailor chełpi się, że sprawiedliwość władna jest obdarzyć go mocą, która zdolna jest roznosić całe armie... a nawet strącać bogów z ich tronów. W jego słowach było coś, co przebudziło we mnie cienie wspomnień z poprzednich żywotów. Wiedziałem skądś, że już wcześniej słyszałem te słowa, a chociaż, tak samo wówczas, jak i teraz, brzmiały one pysznie i opowiadały o rzeczach pozornie niemożliwych, wiedziałem, że są prawdziwe.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #56354 /* ~Kiedy Vhailor wypowiada te słowa, przez twoje ciało przebiega zimny dreszcz, tak intensywny, że cały tobą wstrząsa. Masz odparte wrażenie, że już gdzieś kiedyś słyszałeś te słowa, i wiesz, że niosą one *prawdę*.~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #56355 /* ~*WIEDZ że, nie ma niczego takiego pośród WSZYSTKICH SFER, co mogłoby ODWRÓCIĆ karzącą rękę SPRAWIEDLIWOŚCI. Sprawiedliwość może rozbić w pył wszystkie armie świata. Sprawiedliwość może wstrząsnąć tronami BOGÓW. Wiedz, że jestem PRZEZNACZENIEM ścigającym wszystkich ZDRAJCÓW sprawiedliwości. Przeznaczeniem uzbrojonym w KATOWSKI TOPÓR.*~ */
  IF ~~ THEN REPLY #56356 /* ~"Rozumiem."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #56357 /* ~*NIE, NIE rozumiesz tego.* Oczy Vhailora płoną jak otchłani jego hełmu jak dwie buchające ogniem pochodnie. *MÓDL się, abyś NIGDY tego nie zrozumiał.*~ */
  IF ~~ THEN REPLY #56358 /* ~"A skąd wiesz, kiedy należy wymierzać sprawiedliwość?"~ */ GOTO 89
  IF ~~ THEN REPLY #56359 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56360 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56361 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 83.0 84.1 88.0
  SAY #56362 /* ~*SPRAWIEDLIWOŚĆ patrzy na świat moimi oczyma. Przed WZROKIEM ŁASKOBÓJCY nie ujdzie ni jeden przejaw SŁABOŚCI czy KRUCHOŚCI - śmiertelne rany jakie ŁASKA zadaje mężnemu SERCU. Kiedy SIĘGAM wzrokiem, ROZPOZNAJĘ winnych. ROZPOZNAJĘ ich STRACH.*~ */
  IF ~~ THEN REPLY #56363 /* ~"Zatem co widzisz, kiedy spoglądasz na kogoś innego?"~ */ DO ~SetGlobal("Vhailor_Sight","GLOBAL",1)
~ GOTO 90
  IF ~~ THEN REPLY #56364 /* ~"Kiedy powiedziałeś, że sprawiedliwość daje cię potęgę, co miałeś na myśli?"~ */ GOTO 84
  IF ~~ THEN REPLY #56365 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56366 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56367 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 35.5 89.0
  SAY #56368 /* ~*Wszyscy, których dosięgnę wzrokiem, zostaną OSĄDZENI. Mogę wejrzeć w duszę i umysł, a ZNAJDĘ to, czegom szukał. Albowiem SPRAWIEDLIWOŚĆ patrzy na świat MOIMI oczyma.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56369 /* ~"Zatem co widzisz, kiedy spoglądasz na Mortego?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56370 /* ~"Zatem co widzisz, kiedy spoglądasz na Annę?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56371 /* ~"Zatem co widzisz, kiedy spoglądasz na Dak'kona?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56372 /* ~"Zatem co widzisz, kiedy spoglądasz na Nie-Sławę?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56373 /* ~"Zatem co widzisz, kiedy spoglądasz na Nie-Sławę?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56374 /* ~"Zatem co widzisz, kiedy spoglądasz na Nordoma?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56375 /* ~"Zatem co widzisz, kiedy spoglądasz na Ignusa?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56376 /* ~"Zatem co widzisz, kiedy spoglądasz na samego siebie?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56377 /* ~"Zatem co widzisz, kiedy spoglądasz na samego siebie?"~ */ GOTO 120
  IF ~~ THEN REPLY #56378 /* ~"Zatem co widzisz, kiedy spoglądasz na mnie?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56379 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56380 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56381 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 92.0 93.1 105.1 106.1 107.0 108.15 109.0 115.0 116.1 117.1 118.0 119.0 120.1 121.1 122.1 123.1 126.2 127.1
  SAY #56382 /* ~*PYTAJ.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56383 /* ~"Zatem co widzisz, kiedy spoglądasz na Mortego?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56384 /* ~"Zatem co widzisz, kiedy spoglądasz na Annę?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56385 /* ~"Zatem co widzisz, kiedy spoglądasz na Dak'kona?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56386 /* ~"Zatem co widzisz, kiedy spoglądasz na Nie-Sławę?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56387 /* ~"Zatem co widzisz, kiedy spoglądasz na Nie-Sławę?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56388 /* ~"Zatem co widzisz, kiedy spoglądasz na Nordoma?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56389 /* ~"Zatem co widzisz, kiedy spoglądasz na Ignusa?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56390 /* ~"Zatem co widzisz, kiedy spoglądasz na samego siebie?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56391 /* ~"Zatem co widzisz, kiedy spoglądasz na samego siebie?"~ */ GOTO 120
  IF ~~ THEN REPLY #56392 /* ~"Zatem co widzisz, kiedy spoglądasz na mnie?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56393 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56394 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56395 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.0 91.0
  SAY #56396 /* ~*Czaszka wie WIELE. Ale NIC jej nie wiadomo o sprawiedliwości. Wielu z tych, którzy wiedzieli tyle, co ta czaszka, zapełniają teraz WIĘZIENIA i CMENTARZE.*~ */
  IF ~~ THEN REPLY #56397 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56398 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56399 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56400 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 90.1 91.1
  SAY #56401 /* ~*Diabelstwo jest ZBRUKANE nieczystością Sfer Niższych. W jej krwi nie ma MIEJSCA na lojalność wobec SPRAWIEDLIWOŚCI. Ona rozumie SPRAWIEDLIWOŚĆ, ale IGNORUJE ją.* Oczy Vhailora rozpalają się do rozmiarów pochodni. *Lecz mnie nie ZIGNORUJE.*~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN DO ~SetGlobal("Annah_Accuse","GLOBAL",1)
~ EXTERN ~DANNAH~ 274
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56402 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56403 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56404 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56405 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56406 /* ~Oczy Vhailora rozpalają się. *ODPOWIEDZ mi, diabelstwo, czy popełniłaś kiedykolwiek niesprawiedliwość?*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 275
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56407 /* ~*Sprawiedliwość daje mi na takie Prawo.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 276
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56408 /* ~*Łaskobójcy są UCIELEŚNIENIEM sprawiedliwości. Ich czyny NIE PODLEGAJĄ dyskusji, DIABELSTWO.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 277
END

IF ~~ THEN BEGIN 97 // from:
  SAY #56410 /* ~*Pytam przeto po raz OSTATNI, diabelstwo, czy kiedykolwiek popełniłaś niesprawiedliwość? ODMOWA na moje pytanie będzie równoznaczne z przyznaniem się do winy.*~ */
  IF ~~ THEN REPLY #56411 /* ~"Vhailor, przestań. Natychmiast. Nie będziesz jej wypytywał."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 99
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #56412 /* ~Czekaj i słuchaj, co powie Anna.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
MoraleDec("Grace",1)
~ EXTERN ~DGRACE~ 200
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #56413 /* ~Czekaj i słuchaj, co powie Anna.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 278
END

IF ~~ THEN BEGIN 98 // from:
  SAY #56414 /* ~*NIE UDZIELIŁAŚ odpowiedzi na moje pytanie. Nie odpowiedziałaś SPRAWIEDLIWOŚCI. Spotka cię za to KARA z mojej ręki.*~ */
  IF ~~ THEN REPLY #56415 /* ~"Nie, Vhailorze. Nie masz do tego prawa."~ */ GOTO 99
  IF ~~ THEN REPLY #56416 /* ~Czekaj i patrz, co się będzie działo.~ */ DO ~LeaveParty()
Enemy()
Attack("Annah")
ChangeAIScript("MDKAnnah",DEFAULT)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 98.0 102.0
  SAY #56418 /* ~*SPRAWIEDLIWOŚĆ daje mi takie PRAWO. Sprawiedliwa kara i bezecna przewina to związek NIEROZŁĄCZNY.*~ */
  IF ~~ THEN REPLY #56419 /* ~"Powiedziałem ci, żebyś przestał Vhailorze. Czy nie wyraziłem się jasno?"~ */ GOTO 103
END

IF ~~ THEN BEGIN 100 // from:
  SAY #56420 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #56421 /* ~*Ona popełniła wiele NIESPRAWIEDLIWOŚCI. UKARZĘ ją.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 201
END

IF ~~ THEN BEGIN 102 // from:
  SAY #56423 /* ~*Wszyscy, którzy są przeszkodą na DRODZE SPRAWIEDLIWOŚCI, będą OSĄDZENI i SKAZANI. Twoje PRZEZNACZENIE zbliża się, SUKKUBIE.*~ */
  IF ~~ THEN REPLY #56424 /* ~"Nie, Vhailorze. Nie masz do tego prawa.~ */ GOTO 99
  IF ~~ THEN REPLY #56425 /* ~Czekaj i patrz, co się będzie działo.~ */ DO ~LeaveParty()
Enemy()
Attack("Grace")
ChangeAIScript("MDKGrace",DEFAULT)
ForceAttack("Grace",Myself)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.0
  SAY #56426 /* ~*Tak więc nawiedziła cię dziewka wszeteczna, której na imię ŁASKA. SŁABOŚĆ zatruła twoje serce.*~ */
  IF ~~ THEN REPLY #56427 /* ~"To nie łaska. To mój *rozkaz*. Czy chcesz sprawdzić moje słabości, Vhailorze?"~ */ GOTO 104
  IF ~~ THEN REPLY #56428 /* ~"Łaska nie jest słabością, Vhailorze. Zatem albo pozostawisz ją w spokoju, albo będziesz miał ze mną do czynienia."~ */ GOTO 104
  IF ~~ THEN REPLY #56429 /* ~"Doprawdy? Zatem osądź mnie, Vhailorze. Jeśli uznasz mnie za niedoskonałego, ukarz mnie sprawiedliwym wyrokiem."~ */ GOTO 129
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #56430 /* ~*Wszyscy, którzy stoją przeszkodą na DRODZE SPRAWIEDLIWOŚCI, będą OSĄDZENI I SKAZANI.* Oczy Vhailora płoną, kiedy wznosi swój topór. *ZASŁUŻYŁEŚ sobie na swój los.*~ */
  IF ~~ THEN REPLY #56431 /* ~"Przygotuj się na swoją drugą śmierć, Vhailorze..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 90.2 91.2
  SAY #56432 /* ~*W sercu tego githzerai nie widzę UPRZEDZEŃ, które stały się trucizną rozkładającą jego RASĘ. Ale mieszka w nim KONFLIKT, albowiem jego słowa oddają tylko jego WOLĘ i jego PRAWO. Jeśli inni githzerai nadal szerzyć będą chaos, ten jeden będzie bardzo cierpiał.*~ */
  IF ~~ THEN REPLY #56433 /* ~"Uprzedzeń? Co masz na myśli?"~ */ GOTO 106
  IF ~~ THEN REPLY #56434 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56435 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56436 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56437 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #56438 /* ~*Rasę githzerai spalają UPRZEDZENIA. A SPRAWIEDLIWOŚĆ nie toleruje żadnych UPRZEDZEŃ.*~ */
  IF ~~ THEN REPLY #56439 /* ~"Jakie uprzedzenia?"~ */ GOTO 107
  IF ~~ THEN REPLY #56440 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56441 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56442 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56443 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #56444 /* ~*Przez swoją naturę, uprzedzenia KALAJĄ sprawiedliwość. Githzerai żywią uprzedzenia wobec githyanki, swoich pobratymców oraz wobec Illithidów, którzy są WŁADCAMI ludów gith. W sercach githzerai płonie NIENAWIŚĆ zarówno dla githyanki, jak i dla Illithidów.*~ */
  IF ~~ THEN REPLY #56445 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",1)
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56446 /* ~"Zatem uprzedzenia szkodzą sprawiedliwości, czy tak? A jak to się ma do tego, co powiedziałeś o Annie?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56447 /* ~"Zatem uprzedzenia szkodzą sprawiedliwości, czy tak? A jak to się ma do tego, co powiedziałeś o Nie-Sławie?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
~ THEN REPLY #56448 /* ~"Zatem uprzedzenia szkodzą sprawiedliwości, czy tak? A jak to się ma do tego, co powiedziałeś o Nie-Sławie?"~ */ GOTO 108
  IF ~~ THEN REPLY #56449 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56450 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56451 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.1 107.2 107.3
  SAY #56452 /* ~*Moje słowa NIE niosą w sobie uprzedzenia. W moich słowach mieszka CZUJNOŚĆ i PAMIĘĆ.*~ */
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56453 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
GlobalGT("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56454 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
!NearbyDialog("Dannah")
~ THEN REPLY #56455 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56456 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
GlobalGT("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56457 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
!NearbyDialog("Dgrace")
~ THEN REPLY #56458 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #56459 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56460 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
MoraleInc("Grace",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56461 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("Dgrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56462 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56463 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56464 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56465 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56466 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56467 /* ~"Hm... Wydaje mi się, że twoja czujność jest pełna uprzedzenia, Vhailorze - wszystkich biesów wrzucasz bez wahania do jednego worka. Może powinieneś przyjrzeć się krytycznie swojej czujności?"~ */ GOTO 109
  IF ~~ THEN REPLY #56468 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56469 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56470 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56471 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 108.0 108.1 108.2 108.3 108.4 108.5 108.6 108.7 108.8 108.9 108.10 108.11 108.12 108.13 108.14
  SAY #56472 /* ~*Moja CZUJNOŚĆ działa przez OCZY SPRAWIEDLIWOŚCI. CZUWAM, potem zaś przechodzę do CZYNU. Dobrze byłoby gdybyś to ZAPAMIĘTAŁ, choćby nawet reszta twej pamięci miałaby już nigdy nigdy do ciebie nie powrócić.*~ */
  IF ~~ THEN REPLY #56473 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56474 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56475 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56476 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 90.3 91.3
  SAY #56504 /* ~*TANAR'RI to SWOŁOCZ chaosu. TANAR'RI za nic mają SPRAWIEDLIWOŚĆ. Ten SUKKUB zaś zna SPRAWIEDLIWOŚĆ, ale odwróciła od niej swoje OBLICZE. ŁASKA zatruła bowiem jej serce.*~ */
  IF ~~ THEN REPLY #56505 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56506 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56507 /* ~"Mniejsza o to, Vhailorze. Dalej."~ */ EXTERN ~DGRACE~ 196
END

IF ~~ THEN BEGIN 111 // from:
  SAY #56508 /* ~Oczy Vhailora rozpalają się. *ŁASKA toczy SERCE SPRAWIEDLIWOŚCI jak robak dojrzały owoc. LITOŚĆ pożera wszystko, co zmierza ku DOSKONAŁOŚCI. WSPÓŁCZUCIE i PRZEBACZENIE to TRUCIZNY ŁASKI.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 197
END

IF ~~ THEN BEGIN 112 // from:
  SAY #56509 /* ~*Jesteś SŁABA, SUKKUBIE. SŁABA, jak i cała twoja RASA. Podczas, gdy twa RASA uwodzi z pomocą CIAŁA, ty UWIEDZIONA zostałaś przez ŁASKĘ. Stałaś się WSZETECZNĄ DZIEWKĄ na usługach ŁASKI. Jesteś przeto NIKIM.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 198
END

IF ~~ THEN BEGIN 113 // from:
  SAY #56510 /* ~Kiedy Vhailor spogląda na Nie-Sławę, jego oczy rozpalają się rozmiarów dwóch buchających ogniem pochodni. Nie-Sława odwzajemnia jego wzrok bez lęku, spojrzeniem krystalicznym i odważnym.~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #56511 /* ~*Są tam KORZENIE SŁABOŚCI. WIERZYSZ, że jesteś MOCNA, ale na korzeniach twej mocy żeruje ŁASKA, która POCHŁANIA twoją WOLĘ." Vhailor milknie na chwilę, a kiedy ponownie się odzywa, słowa jego brzmią jak łoskot młota. "Lecz jeszcze JEDNĄ SŁABOŚĆ w twoim sercu DOSTRZEGAM, SUKKUBIE. I słabość ta nie uniknie MOJEGO spojrzenia. Czuję w tobie PRZYWIĄZANIE I TROSKĘ. A przywiązanie i troska prowadzą do SŁABOŚCI.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 199
END

IF ~~ THEN BEGIN 115 // from: 90.4 91.4
  SAY #56512 /* ~*TANAR'RI to SWOŁOCZ chaosu. TANAR'RI za nic mają SPRAWIEDLIWOŚĆ. Ten SUKKUB zaś zna SPRAWIEDLIWOŚĆ, ale odwróciła od niej swoje OBLICZE. ŁASKA zatruła bowiem jej serce. LITOŚĆ żeruje na SERCU tego sukkuba. Ona ma w sobie PRZYWIĄZANIE I TROSKĘ. To prowadzi ją ku SŁABOŚCI.*~ */
  IF ~~ THEN REPLY #56513 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56514 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56515 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56516 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 90.6 91.6
  SAY #56517 /* ~*Widzę w tym czarodzieju znak SPRAWIEDLIWOŚCI.*~ */
  IF ~~ THEN REPLY #56518 /* ~"Masz na myśli, że Ignus został osądzony?"~ */ GOTO 117
  IF ~~ THEN REPLY #56519 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56520 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56521 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56522 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #56523 /* ~*Płomienie, które GOREJĄ wokół niego niosą w sobie sprawiedliwość. Czarodziej odbywa KARĘ. Nie ŻYJE już swoim ŻYCIEM, ale stał się częścią SFER. Jego ciało to rodzaj PASAŻU. Nie ma w nim SERCA. On został SKAZANY i odbywa karę...*~ */
  IF ~~ THEN REPLY #56524 /* ~"Czy wiesz, dlaczego Ignus nie umarł? Czyż te płomienie nie powinny były go uśmiercić?"~ */ GOTO 118
  IF ~~ THEN REPLY #56525 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56526 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56527 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56528 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #56529 /* ~*On już nie ŻYJE swoim życiem. On jedynie ISTNIEJE. To nie to SAMO.*~ */
  IF ~~ THEN REPLY #56530 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56531 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56532 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56533 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 90.5 91.5
  SAY #56534 /* ~*MODRON nie ma żadnego znaczenia dla sprawiedliwości. Modron potrafi ZDEFINIOWAĆ sprawiedliwość, ale nie rozumie jej. To nie zachwyca, ale to DOŚĆ.*~ */
  IF ~~ THEN REPLY #56535 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56536 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56537 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56538 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 90.7 90.8 91.7 91.8
  SAY #56539 /* ~*Jestem VHAILOR. Jestem ŁASKOBÓJCĄ. Moje CZYNY oddają głos mojego serca.*~ */
  IF ~~ THEN REPLY #56540 /* ~"Nie o to pytałem."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 121
  IF ~~ THEN REPLY #56541 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56542 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56543 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56544 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #56545 /* ~Zapada ciężka cisze, ale Vhailor nie kwapi się, aby ją zmącić. Jego płomienne oczy w milczeniu i bez najmniejszego mgnienia pasują się z twoim spojrzeniem.~ */
  IF ~~ THEN REPLY #56546 /* ~"Zapytałem, co widzisz, kiedy spoglądasz na samego siebie? Zatem co widzisz, kiedy osądzasz samego siebie, Vhailorze?"~ */ GOTO 122
  IF ~~ THEN REPLY #56547 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56548 /* ~"Mniejsza o to, Vhailorze. Mam do ciebie kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56549 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56550 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #56551 /* ~*Nie OSĄDZAM samego siebie. Jestem ŁASKOBÓJCĄ. Moje CZYNY oddają głos mojego SERCA. Moja WOLA jest WOLĄ SPRAWIEDLIWOŚCI.*~ */
  IF ~~ THEN REPLY #56552 /* ~"Zatem jesteś ponad sprawiedliwością?"~ */ GOTO 123
  IF ~~ THEN REPLY #56553 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56554 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56555 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56556 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #56557 /* ~*SŁUŻĘ sprawiedliwości. Nigdy nie posuwam się POZA sprawiedliwość. Nie ma NICZEGO poza SPRAWIEDLIWOŚCIĄ.*~ */
  IF ~~ THEN REPLY #56558 /* ~"Spójrz na samego siebie, Vhailorze. Co widzą oczy sprawiedliwości, kiedy patrzą na własnego sługę?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 124
  IF ~~ THEN REPLY #56559 /* ~"Pozwól mi, niechaj spytam o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56560 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56561 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56562 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #56563 /* ~Płomienne oczy Vhailora raptownie gasną i nastaje przeraźliwa cisza.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #56564 /* ~Zaraz kiedy tylko zaczynasz zastanawiać się, czy oczy Vhailor zapłoną kiedykolwiek na nowo, z hełmu poczyna znowu bić słup światła i musisz zasłonić swoje oczy przed oślepiającym blaskiem.~ */
  IF ~~ THEN REPLY #56565 /* ~"Vhailorze..."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #56566 /* ~*Jestem VHAILOR. Jestem ŁASKOBÓJCĄ. Moje CZYNY oddają głos mojego SERCA. Jestem SŁUGĄ SPRAWIEDLIWOŚCI.*~ */
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #56567 /* ~"Ale... Vhailorze, co ujrzałeś, kiedy..."~ */ GOTO 128
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #56568 /* ~"Ale... Vhailorze, co ujrzałeś, kiedy..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 127
  IF ~~ THEN REPLY #56569 /* ~"Bardzo dobrze. Chciałem spytać o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56570 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56571 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56572 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY #56573 /* ~Zanim zaczynasz mówić, czujesz dziwne mrowienie z tyłu twojej czaszki i dosłownie na końcu języka powstrzymujesz to, co chciałeś powiedzieć... Masz wrażenie, że jeżeli poruszysz ten temat, poruszysz jednocześnie jakieś ukryte struny w duszy Vhailora. A kiedy je obudzisz, może być groźnie.~ */
  IF ~~ THEN REPLY #56574 /* ~"Ale... Vhailorze, co dostrzegłeś, kiedy zajrzałeś do środka?"~ */ GOTO 128
  IF ~~ THEN REPLY #56575 /* ~"Mniejsza z tym, Vhailorze. Chciałbym spytać o kogoś innego..."~ */ GOTO 91
  IF ~~ THEN REPLY #56576 /* ~"Zatem dobrze, Vhailorze. Mam do ciebie jeszcze kilka innych pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56577 /* ~"Tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56578 /* ~"Mniejsza z tym, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.0 127.0
  SAY #56579 /* ~*JESTEM WOLNY OD WSZELKICH POKUS. GDZIEKOLWIEK NATKNĘ SIĘ NA ŁASKĘ, ZGŁADZĘ JĄ. GDZIEKOLWIEK DOJRZĘ ROBAKA WSPÓŁCZUCIA TOCZĄCEGO MĘŻNE SERCE, SPRAWIĘ, ŻE SIĘ WYKRWAWI NA CIELE SWEJ OFIARY. GDZIEKOLWIEK KŁAMCY I WIAROŁOMCY BUDUJĄ SWE NĘDZNE KŁAMSTWA, PRZYBĘDĘ I ZBURZĘ JE OSTRZEM SPRAWIEDLIWOŚCI.*~ */
  IF ~~ THEN REPLY #56580 /* ~"Ale nie o *to* pytałem..."~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 103.2 128.0
  SAY #56581 /* ~*KIM ŻEŚ JEST, ABY PODDAWAĆ W WĄTPLIWOŚĆ SŁUSZNOŚĆ SŁUGI SPRAWIEDLIWOŚCI? JESTEŚ NIKIM. JESTEŚ NĘDZNĄ ŁUPINĄ CZŁOWIECZĄ. A TERAZ PRZESZUKAM TWOJE SERCE. SPRAWDZĘ, CZY MIESZKAJĄ W NIM POKUSY.*~ */
  IF ~~ THEN REPLY #56582 /* ~"Ale..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 90.9 91.9 129.0
  SAY #56583 /* ~Kiedy palący wzrok szkarłatnych oczu Vhailora pada na ciebie, masz wrażenie, jakby coś chwytało twoją skórę, napinało ją, a potem odrywało ją od kości. Ale nie odczuwasz bólu, jedynie zawrót głowy i uczucie pogrążania się w jakiejś topieli. Kiedy oczy Vhailora tną jak ogień twoje wnętrze, w zakamarkach twej duszy budzą się dalekie wspomnienia...~ */
  IF ~~ THEN REPLY #56584 /* ~Poddaj się wspomnieniom.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 131
  IF ~~ THEN REPLY #56585 /* ~Otrząśnij się ze wspomnień i spróbuj wrócić do rzeczywistości.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #56586 /* ~Szkarłatny blask oczu Vhailora jaśnieje jeszcze bardziej, aż staje się nieznośny dla twojego wzroku. I to stoisz twarz w twarz z Vhailorem, ale tam gdzie przed chwilą widziałeś tylko martwą pustkę, teraz dostrzegasz ciało - poorany bliznami wojownik o skórze barwy hebanu, spogląda na ciebie z głębi swego hełmu, a oczy jego płoną żywym ogniem. Cała jego zbroja skąpana jest w blasku. Mężczyzna patrzy na siebie z grymasem wściekłości zamarłym na obliczu. On przyszedł po ciebie...~ */
  IF ~~ THEN REPLY #56587 /* ~Wspomnienie: "Odnalazłeś mnie, Vhailorze. Przebyłeś długą drogę... Mogę sobie tylko, wyobrazić jak trudno było mnie odnaleźć."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 132
  IF ~~ THEN REPLY #56588 /* ~Otrząśnij się ze wspomnień i spróbuj wrócić do rzeczywistości.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #56589 /* ~"Zawiodła mnie do ciebie sprawiedliwość. Jakąkolwiek drogą przechodzisz, pozostawiasz po sobie ślad CIERPIENIA." Głos mężczyzny dudni, ale to nie pogłos mowy widmowego wcielenia Vhailora, to grzmot głosu człowieka z krwi i kości dyszącego gniewem i furią... Ten człowiek pragnie z tobą walczyć. Ale nie jest teraz widmem, tylko zwykłym człowiekiem, a ty powaliłeś dziesiątki jemu podobnych... "Zawlokę cię przed sigilijskie sądy, gdzie znajdziesz zasłużoną karę. A jeśli zaprzeczysz swoim winom, odezwij się tylko, a sam cię osądzę."~ */
  IF ~~ THEN REPLY #56590 /* ~Wspomnienie: "Zaprzeczam temu. Osądź mnie... a potem ja osądzę ciebie."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 133
  IF ~~ THEN REPLY #56591 /* ~Otrząśnij się ze wspomnień i spróbuj wrócić do rzeczywistości.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #56592 /* ~"Osądzisz MNIE?" Oczy Vhailora ogarnia pożar. Chwyta krzepkim uściskiem topór, a zwały mięśni grają na jego szyi i ramionach. Potworna broń poczyna huśtać się w jego dłoniach, powoli, złowieszczo. "Nie masz żadnego PRAWA, aby mnie osądzać."~ */
  IF ~~ THEN REPLY #56593 /* ~Wspomnienie: "Mam, Vhailorze, albowiem znam twoje serce - i moja moc daje mi prawo do osądzenia ciebie. Ale teraz cię nie osądze. Musisz spoczywać wewnątrz tej klatki, dopóki cię nie uwolnię, abyś mogł odejść ku Sferom raz jeszcze."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 134
  IF ~~ THEN REPLY #56594 /* ~Otrząśnij się ze wspomnień i spróbuj wrócić do rzeczywistości.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #56595 /* ~Kiedy twoje usta wypowiadają słowa 'klatka', Vhailor raptownie zdejmuje z ciebie wzrok i kieruje go ku ścianom. To ściany celi więzienia Klątwy, gdzie spotkałeś go już wcześniej, wiele, wiele lat temu. Tak wiele, że starczyłoby ich na kilka żywotów i kilka śmierci jednego człowieka. A może się mylisz?~ */
  IF ~~ THEN REPLY #56596 /* ~Wspomnienie: "Jeżeli dotychczas ci się wymykałem, to niby dlaczego miałby teraz dobrowolnie zjawić się przed twoim obliczem? Czy sądzisz, że przyszedłem, żeby ci się poddać? Albo, że chcę z tobą walczyć? Nie... to jest miasto-brama Klątwa, Vhailorze. Klątwa sąsiaduje z więzienną sferą Tartaru, gdzie nawet bogowie znajdują odosobnienie wbrew swej woli. Jesteś potężny, Vhailorze, to prawda, ale siła tego miejsca trzyma w uwięzieniu dalece potężniejszych od ciebie."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 135
  IF ~~ THEN REPLY #56597 /* ~Otrząśnij się ze wspomnień i spróbuj wrócić do rzeczywistości.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #56598 /* ~Vhailor odwraca się, ale ogień w jego oczach przygasł wyraźnie. "To zdrada."~ */
  IF ~~ THEN REPLY #56599 /* ~Wspomnienie: "Sieć zdrad przecina to miejsce, jak sieć żył przecina ciało. A zatem zdrada wyposażyła mnie w siłę wobec tego zaklętego miejsca i dlatego jesteś tutaj, w Klątwie. Ja mogę opuścić tę celę, Vhailorze, a ty nie, chyba że zechcę dobrać sobie ciebie do towarzystwa. Twoja krucjata w imię sprawiedliwości jest godna najwyższego szacunku, ale zostanie zapomniana. Nawet twoja sprawiedliwość zapomni o tobie."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 136
  IF ~~ THEN REPLY #56600 /* ~Otrząśnij się ze wspomnień i spróbuj wrócić do rzeczywistości.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #56601 /* ~"Nie przeczysz sprawiedliwości, ale przeczysz mojej misji..."~ */
  IF ~~ THEN REPLY #56602 /* ~Wspomnienie: "Wiem o twoim posłannictwie. Ale twoja misja będzie musiała poczekać, aż ja uporam się ze swoją. To już drugi raz, kiedy mnie znajdujesz i próbujesz osądzić. Nie pozwolę, aby zdarzyło się to po raz trzeci."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 137
  IF ~~ THEN REPLY #56603 /* ~Otrząśnij się ze wspomnień i spróbuj wrócić do rzeczywistości.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #56604 /* ~Vhailor nie odpowiada. Nawiasem mówiąc, twoje słowa jeszcze nigdy nie brzmiały tak OSTATECZNIE. Sąd, jaki wypowiadasz o nim, jest okrutny, i nie ma w nim ani krzty sprawiedliwości.~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #56605 /* ~Wspomnienie: "Jestem nieśmiertelny, Vhailorze - ty natomiast jesteś istotą osobliwą. Jesteś tknięty palcem sprawiedliwości, i ta sprawiedliwość może być potężniejsza, niż to, co mnie więzi, cokolwiek by to było. Ale nie trać serca: Nie chcę, abyś umarł... Może któregoś dnia, będę potrzebował kogoś, kto będzie miał na tyle siły, aby mnie zgładzić. Tak więc pozostaniesz tutaj, dopóki po ciebie nie powrócę."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Caging_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,90000)
~ JOURNAL #56607 /* ~Dotarły do mnie dalekie wspomnienia... W tych wspomnieniach zobaczyłem samego siebie, wtrącającego Vhailora do więzienia pod powierzchnią Klątwy. Vhailor przybył tam w ślad za mną, a ja zastawiłem tam na niego pułapkę i zamknąłem go w specjalnie przygotowanej celi, aby już nigdy więcej nie wchodził mi w drogę. Niezależnie od moralnej naganności tego postępku, moją szczególną uwagę wzbudziły słowa, jakie w tamtych wspomnieniach usłyszałem z ust samego siebie. Powiedziałem mianowicie, że wedle wszelkiego prawdopodobieństwa Vhailor jest zdolny do *uśmiercenia* mnie, o ile tylko jego toporem będzie kierowało czyste umiłowanie sprawiedliwości. Mam niejasne przeczucie, że pogląd ten odpowiada prawdzie. Ale dlaczego po prostu nie uśmierciłem go wówczas? Jakiż powód skłonił mnie, do tego, że pozostawiłem go przy życiu?~ */ GOTO 138
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56606 /* ~Wspomnienie: "Jestem nieśmiertelny, Vhailorze - ty natomiast jesteś istotą osobliwą. Jesteś tknięty palcem sprawiedliwości, i ta sprawiedliwość może być potężniejsza, niż to, co mnie więzi, cokolwiek by to było. Ale nie trać serca: Nie chcę, abyś umarł... Może któregoś dnia, będę potrzebował kogoś, kto będzie miał na tyle siły, aby mnie zgładzić. Tak więc pozostaniesz tutaj, dopóki po ciebie nie powrócę."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 130.1 131.1 132.1 133.1 134.1 135.1 136.1 137.0 137.1
  SAY #56608 /* ~Twoja pamięć traci ostrość, osuwa się w ciemność i oto nagle znowu masz przed sobą dawnego Vhailora, zbroję bez rycerza, zjawę bez ciała, tylko o widmowych oczach płonących żarliwym ogniem."~ */
  IF ~~ THEN REPLY #56609 /* ~"Vhailorze...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #56610 /* ~*Zostaniesz OSĄDZONY.*~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #56611 /* ~"Dobrze..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 140
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #56612 /* ~"Dobrze..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #56614 /* ~Kiedy dosięga cię płonące spojrzenie Vhailora, spływa na ciebie dziwna obojętność, jakbyś wyszedł ze swego ciała i pozostawił je daleko za sobą. We wnętrzu twojej czaszki rozlega się słaby szept, odczuwasz dziwne mrowienie, i nagle ogarnia cię pewność, że to, co Vhailor pragnie w to odkryć, nie ma najmniejszego znaczenia, ponieważ nie zobaczy tam nic, poza tym, co ty zechcesz, aby tam zobaczył. Wiesz, że, gdy idzie o ciebie, Vhailor będzie bezradny nawet wobec najprostszego wybiegu. Pozostaniesz dla niego zawsze zamkniętą księgą.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 139.1 140.0
  SAY #56618 /* ~*Czyś kiedykolwiek splamił się MORDERSTWEM?*~ */
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56619 /* ~Kłamstwo: "Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_3","GLOBALLaw",-1)
~ GOTO 147
  IF ~  Global("Murder","GLOBAL",0)
~ THEN REPLY #56620 /* ~Prawda: "Nie."~ */ GOTO 147
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56621 /* ~Prawda: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #56622 /* ~Prawda: "Tak... Ale ta zbrodnia to dzieło mojej dłoni, a nie mojego umysłu. W jednym ze swoich poprzednich żywotów zamordowałem człowieka imieniem Fin Andlye. Zrobiłem to w imię wiedzy, którą posiadał."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56623 /* ~Prawda: "Vhailorze, wydaje mi się, że mam na sobie krew tysięcy... może nawet wielu tysięcy istnień w wielu Sferach. Słup Czaszek powiedział mi, że ilekroć przychodzi do mnie śmierć, ktoś inny umiera na moje miejsce."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56624 /* ~"Nie odpowiem na twoje pytania, Vhailorze, ani nie stanę się przedmiotem twojego osądu."~ */ GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.5 147.5 148.15
  SAY #56625 /* ~*Ten, kto za swe czyny nie ODPOWIEDZIAŁ przed SPRAWIEDLIWOŚCIĄ, zostanie UKARANY.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56626 /* ~"Więc ruszaj, Vhailorze, ale przygotuj się na swoją drugą śmierć..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56627 /* ~"Więc ruszaj, Vhailorze, ale przygotuj się na swoją drugą śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56628 /* ~"Ale ja już zostałem ukarany, Vhailorze."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56629 /* ~"Ale ja już zostałem ukarany, Vhailorze."~ */ GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.2 142.3 149.2 149.3
  SAY #56630 /* ~Vhailor nieruchomieje. *Chcę USŁYSZEĆ, o twojej karze.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56631 /* ~"Mniejsza z tym, Vhailorze. Jestem już zmęczony próbami przemówienia ci do rozumu. Myślę, że lepiej jeżeli rozstrzygniemy nasz spór z pomocą oręża."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56632 /* ~"Mniejsza z tym, Vhailorze. Jestem już zmęczony próbami przemówienia ci do rozumu. Myślę, że lepiej jeżeli rozstrzygniemy nasz spór z pomocą oręża."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #56633 /* ~"Za każdym razem, kiedy umieram, Vhailorze, tracę moje wspomnienia. Kiedy wstaję z martwych, nie mam poczucia siebie, nie wiem nic o sobie, a na swoim ciele i w swojej duszy mam tysiące blizn, których pochodzenia nie znam i nie pamiętam. Śmierć nie przyjmuje mnie do siebie, i obawiam, że nigdy nie będzie mi dane spocząć w jej cieniu."~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.2
  SAY #56634 /* ~Vhailor spogląda na ciebie oczyma, pełnymi oślepiającego blasku. Znowu powraca to samo uczucie; masz wrażenie, jakby coś chwytało twoją skórę, napinało ją, a potem odrywało ją od kości - to Vhailor przetrząsa twoją duszę, jak Grabarz trupa na stole sekcyjnym. Ogarnia cię znowu fala mdłości i uczucie pogrążania się w jakiejś topieli. Ale tym razem wrażenia te są znacznie silniejsze... aż twój zmysł wzroku odmawia posłuszeństwa i tonie w mroku...~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #56635 /* ~*Zostałeś UKARANY. SPRAWIEDLIWOŚĆ pozostawiła na tobie swój znak. WIDZĘ jej znak na twoim CIELE.*~ */
  IF ~~ THEN REPLY #56636 /* ~"Zatem..."~ */ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #56637 /* ~*WIEDZ, że jest w tobie bardzo wiele rzeczy, których NIE MOŻNA dojrzeć. Pozostanę CZUJNY. Zostałeś już raz UKARANY. Ale to cię nie ochroni od PRZYSZŁYCH kar za przyszłe ZBRODNIE.*~ */
  IF ~~ THEN REPLY #56638 /* ~"Dobrze, Vhailorze. Uznajmy, że sprawa ta została rozstrzygnięta. Przynajmniej na razie. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56639 /* ~"A więc tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56640 /* ~"Zrozumiałem, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 147 // from: 141.0 141.1
  SAY #56641 /* ~*Czyś kiedykolwiek splamił się NIESPRAWIEDLIWOŚCIĄ?*~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56642 /* ~Kłamstwo: "Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_4","GLOBALLaw",-1)
~ GOTO 148
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #56643 /* ~Prawda: "Nie."~ */ GOTO 148
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56644 /* ~Prawda: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56645 /* ~Prawda: "Tak... Ale to dzieło mojej dłoni, a nie mojego umysłu. To zrobiła inna osoba, która zamieszkiwała to ciało."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56646 /* ~Prawda: "Vhailorze, wydaje mi się, że mam na sobie krew tysięcy... może nawet wielu tysięcy istnień w wielu Sferach. Słup Czaszek powiedział mi, że ilekroć przychodzi do mnie śmierć, ktoś inny umiera na moje miejsce. Poza tym trudno jest mi powiedzieć o innych niesprawiedliwościach, jakie mógłbym popełnić."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56647 /* ~"Nie odpowiem na twoje pytania, Vhailorze, ani nie stanę się przedmiotem twojego osądu."~ */ GOTO 142
END

IF ~~ THEN BEGIN 148 // from: 147.0 147.1
  SAY #56648 /* ~*Czyś kiedykolwiek splamił się SKRZYWDZENIEM bliźniego?*~ */
  IF ~~ THEN REPLY #56649 /* ~Kłamstwo: "Nie. Nigdy nikogo nie skrzywdziłem we wszystkich moich żywotach."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_5","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 150
  IF ~~ THEN REPLY #56650 /* ~Prawda: "Tak... Wielu ucierpiało z mojej ręki, Vhailorze. Ale to nie było moje dzieło, a innych osób zamieszkujących to ciało."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("AR1900_Visited","GLOBAL",1)
~ THEN REPLY #56651 /* ~Prawda: "Przeciwstawiłem się Pani Bólu, a ona za to wtrąciła mnie do labiryntu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #56652 /* ~Prawda: "W jednym z moich poprzednich wcieleń okłamałem kobietę imieniem Deionarra i powiedziałem jej, że ją kocham, chociaż to była nieprawda."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #56653 /* ~Prawda: "Uważam, że ponoszę odpowiedzialność za śmierć Deionarry, jedynej córki Adwokata Iannisa."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #56654 /* ~Prawda: "Ponoszę odpowiedzialność za śmierć Deionarry, jedynej córki Adwokata Iannisa."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #56655 /* ~Prawda: "W swoim poprzednim wcieleniu wymusiłem obietnicę na pewnym człowieku, że będzie mi służył do śmierci, chociaż wiedziałem, że jestem nieśmiertelny. Ukradłem jego życie dla moich celów. Ten człowiek miał na imię Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #56656 /* ~Prawda: "Sprzedałem młodą kobietę, Annę, w niewolę."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #56657 /* ~Prawda: "Sprzedałem mojego towarzysza, Dak'kona, w niewolę."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #56658 /* ~Prawda: "Sprzedałem mojego towarzysza, Nordoma, w niewolę."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #56659 /* ~Prawda: "W jednym ze swoich poprzednich wcieleń nauczyłem Ignusa krzywdzić innych. To sprawiło, że cierpiał zarówno on sam, jak i inni."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #56660 /* ~Prawda: "Zdradziłem Mortego i zostawiłem go w Słupie Czaszek."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #56661 /* ~Prawda: "Skrzywdziłem cały wieloświat... Wypuściłem z wieży oblężniczej, niebezpieczną istotę znaną jako Pieścimetal."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Fhjull_1","GLOBAL",1)
~ THEN REPLY #56662 /* ~Prawda: "Zdradziłem Fjhulla Słupowi Czaszek dla swej własnej korzyści."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56663 /* ~Prawda: "Skrzywdziłem ciebie, Vhailorze. To ja uwięziłem cię pod Klątwą."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~~ THEN REPLY #56664 /* ~"Nie odpowiem na twoje pytania, Vhailorze, ani nie stanę się przedmiotem twojego osądu."~ */ GOTO 142
END

IF ~~ THEN BEGIN 149 // from: 141.2 141.3 141.4 147.2 147.3 147.4 148.1 148.2 148.3 148.4 148.5 148.6 148.7 148.8 148.9 148.10 148.11 148.12 148.13 148.14
  SAY #56665 /* ~*PRZYZNAŁEŚ się do popełnienia zbrodni.* Oczy Vhailora zajmują swoim blaskiem całe wnętrze hełmu, tak że masz możliwość naocznego poznania namiastki tej mocy, która włada całą istotą wojownika-widma. *WINNI muszą być UKARANI.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56666 /* ~"Więc ruszaj, Vhailorze, ale przygotuj się na swoją drugą śmierć..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56667 /* ~"Więc ruszaj, Vhailorze, ale przygotuj się na swoją drugą śmierć..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56668 /* ~"Ale ja już zostałem ukarany, Vhailorze."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56669 /* ~"Ale ja już zostałem ukarany, Vhailorze."~ */ GOTO 143
END

IF ~~ THEN BEGIN 150 // from: 148.0
  SAY #56670 /* ~Vhailor spogląda na ciebie oczyma, pełnymi oślepiającego blasku. Znowu powraca to samo uczucie; masz wrażenie, jakby coś chwytało twoją skórę, napinało ją, a potem odrywało ją od kości - to Vhailor przetrząsa twoją duszę, jak Grabarz trupa na stole sekcyjnym. Ogarnia cię znowu fala mdłości i uczucie pogrążania się w jakiejś topieli. Ale tym razem wrażenia te są znacznie silniejsze... aż twój zmysł wzroku odmawia posłuszeństwa i tonie w mroku...~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #56671 /* ~*WIEDZ, że jest w tobie bardzo wiele rzeczy, których NIE MOŻNA dojrzeć. Pozostanę CZUJNY. Jeżeli w przyszłości splamisz się ZBRODNIAMI, nie UJDZIESZ przed karą.*~ */
  IF ~~ THEN REPLY #56672 /* ~"Dobrze, Vhailorze. Uznajmy, że sprawa ta została rozstrzygnięta. Przynajmniej na razie. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56673 /* ~"A więc tutaj nasze drogi się rozchodzą, Vhailorze. Żegnaj."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56674 /* ~"Zrozumiałem, Vhailorze. Idźmy dalej."~ */ EXIT
END

IF ~~ THEN BEGIN 152 // from: 77.0 77.1
  SAY #56675 /* ~Twoje słowa wzbudzają echo, które potęguje się, kiedy je ciągniesz swoją wypowiedź. Żar w oczach Vhailora zajmuje się migotliwą mgłą a zaraz potem gaśnie. Zbroja Vhailora osuwa się na ziemię, a topór i metalowe płyty z łoskotem dzwonią o posadzkę. A kiedy już leżą na ziemi, wzbijają chmury kurzu, popiołu i drobinek rdzy, jakby na twoich oczach postarzały się, psuły i rozsypywały w nicość. Niebawem wszystko, co świadczy o niedawnej obecności Vhailora to kilka zniszczonych metalowych płyt, spoczywających na podobieństwo kamieni nagrobnych.~ */
  IF ~~ THEN REPLY #56676 /* ~"Teraz odpocznij, Vhailorze."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56883 /* ~*Głupota to oznaka SŁABOŚCI. Nie ma NIESPRAWIEDLIWOŚCI w wykorzystaniu tego, który próbuje sam wykorzystywać.*~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 42
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56892 /* ~*SPRAWIEDLIWOŚĆ jest równa, nawet wobec BIESÓW.*~ */
  IF ~~ THEN REPLY #56894 /* ~"Dobrze. Zatem chodźmy."~ */ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #57391 /* ~Vhailor nagle czyni krok do przodu, połyskując ogniem w oczach. "To nie jest sprawiedliwość, ale zaledwie jej żałosna karykatura. Nie będzie żadnej egzekucji, panie śledczy, póki twe czyny nie przekonają mnie, że sprawiedliwość jest po twej stronie."~ */
  IF ~~ THEN EXTERN ~DJUDGE~ 2
END

IF ~~ THEN BEGIN 156 // from:
  SAY #57392 /* ~"W przyszłości musisz prowadzić się bardziej przystojnie, panie śledczy. Nie pozwól, aby do uszu moich dochodziły pogłoski przeczące mojej opinii o tobie... Jeśli tak się stanie, powrócę po ciebie, choćbym musiał przemierzyć tysiąc tysięcy mil. Utrzymuj sprawiedliwość w swoim sercu, a będziesz czuł się bezpieczny. Żegnaj."~ */
  IF ~~ THEN REPLY #57393 /* ~"Dzięki, Vhailorze. Żegnaj, panie śledczy."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #63704 /* ~*Sprawiedliwość *nie* jest ślepa. *Ja* jestem jej oczami.*~ [VHA255] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("Fortress_Vhailor","GLOBAL",3)
~ THEN BEGIN 158 // from:
  SAY #68222 /* ~Najlżejszy podmuch twojej mocy wykrzesał iskry we wnętrzu zbroi Vhailora. Jego mroczna sylwetka rozjaśnia się na chwilę i przez moment przybiera rysy człowieka. Wkrótce jednak złudzenie to znika i zbroję znów ogarnia mrok, rozświetlany tylko przez dwa ogniki widmowych oczu we wnętrzu hełmu.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68223 /* ~"Vhailorze?"~ */ DO ~SetGlobal("Fortress_Vhailor","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 159
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68398 /* ~"POWSTAŃ, VHAILORZE."~ */ GOTO 164
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY #68225 /* ~*Otom się PRZEBUDZIŁ*~ [VHA002] */
  IF ~~ THEN REPLY #68226 /* ~"Vhailorze, posłuchaj mnie. Dzieje się wielka niesprawiedliwość. Ilekroć przychodzi po mnie śmierć, ktoś inny pośród Sfer umiera na moje miejsce. To zdarzyło się już setki, tysiące, może nawet setki tysięcy razy. Wieloświat umiera, abym ja mógł żyć."~ */ DO ~PermanentStatChange("Vhail",STR,RAISE,3)
PermanentStatChange("Vhail",DEX,SET,25)
PermanentStatChange("Vhail",CON,SET,25)
GiveExperience("Vhail",2000000)
~ GOTO 160
  IF ~~ THEN REPLY #68263 /* ~"Vhailorze, potrzebuję twojej pomocy - moja śmiertelność pragnie, abyśmy zginęli."~ */ GOTO 163
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #68227 /* ~Kiedy wypowiadasz te słowa, Vhailor poczyna nagle rosnąć w siłę, potężnieć, jakby jego wewnętrzna moc zaczęła przewyższać nawet ogrom jego rycerskiego rynsztunku.~ */
  IF ~~ THEN REPLY #68228 /* ~"Znam swoje zbrodnie i chciałbym położyć im kres, ale jedna jedyna istota, która byłaby w stanie ukrócić tę niesprawiedliwość, z egoistycznych pobudek odrzuca moje prośby."~ */ DO ~FullHealEx("Vhail")
~ GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY #68229 /* ~*NALEŻYSZ TERAZ DO POTĘPIONYCH. TAK JAK TA DRUGA ISTOTA. SPRAWIĘ, ŻE MIECZ SPRAWIEDLIWOŚCI ROZSZCZEPI WASZE DUSZE.*~ */
  IF ~~ THEN REPLY #68230 /* ~"Bardzo dobrze, Vhailorze. Ale najpierw musimy się zająć tamtą drugą istotą."~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #68231 /* ~*ZROBIĘ TAK. A POTEM WRÓCĘ PO CIEBIE.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68232 /* ~"Dobrze, Vhailorze."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68233 /* ~"Dobrze, Vhailorze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68244 /* ~"Dobrze, Vhailorze."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 163 // from: 159.1
  SAY #68264 /* ~*A ZATEM TWOJA ŚMIERTELNOŚĆ ZGINIE.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68265 /* ~"Zatem dobrze, Vhailorze..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68266 /* ~"Zatem dobrze, Vhailorze..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68267 /* ~"Zatem dobrze, Vhailorze..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 164 // from: 158.1
  SAY #68399 /* ~Hełm Vhailora obraca się ku tobie. Jego oczy pulsują jak ogarnięte pożarem serca.~ */
  IF ~~ THEN REPLY #68400 /* ~"VHAILORZE, RĘKA SPRAWIEDLIWOŚCI JEST SZYBKA I WŁAŚNIE ŚPIESZY KU MNIE. NIE MOGĘ TUTAJ DŁUŻEJ ZOSTAĆ. JEŻELI ZECHCESZ, MOGĘ UMOŻLIWIĆ CI POWRÓT DO SIGIL."~ */ GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY #68401 /* ~*Jaka ZBRODNIA ściągnęła na ciebie uwagę SPRAWIEDLIWOŚCI?*~ */
  IF ~~ THEN REPLY #68402 /* ~"WIELU ZGINĘŁO, ABYM JA MÓGL ŻYĆ, VHAILORZE. ZBRODNIA JEST WIELKA, A MOJE PRZEZNACZENIE ZMIERZA KU MNIE."~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #68403 /* ~*Niechaj moje SŁOWA cię prowadzą. SPRAWIEDLIWOŚĆ jest nauczycielką. Kara, jaką odbierzesz, winna napełnić cię SIŁĄ. Odcierpiwszy karę, zbliżysz się do DOSKONAŁOŚCI.*~ */
  IF ~~ THEN REPLY #68404 /* ~"BYĆ MOŻE, VHAILORZE. ZASTANOWIĘ SIĘ NAD TWOIMI SŁOWAMI."~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #68405 /* ~*WIEDZ, że jeżeli unikniesz swego wyroku, odnajdę cię, BEZIMIENNY*~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY #68406 /* ~*Nic nie powstrzyma ręki sprawiedliwości.*~ [VHA010] */
  IF ~~ THEN REPLY #68407 /* ~"WYDAJE MI SIĘ, ŻE NIE SPOTKAMY SIĘ JUŻ WIĘCEJ, VHAILORZE. ZAMIESZKAM W APARTAMENTACH SPRAWIEDLIWOŚCI NA PEWIEN CZAS, A CZASU TEGO NIE MOŻNA MIERZYĆ LATAMI. ŻEGNAJ."~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #4 ~  Global("Fortress_Vhailor","GLOBAL",4)
~ THEN BEGIN 169 // from:
  SAY #68420 /* ~*Nic nie powstrzyma ręki sprawiedliwości.*~ [VHA010] */
  IF ~~ THEN REPLY #68421 /* ~"Nie osłabiaj swojej presji, Vhailorze. Nie pozwól mu się skoncentrować."~ */ EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY #106513 /* ~Vhailor odwraca wzrok od zwłok Triasa i wpatruje się w ciebie. *Jesteś LITOŚCIWY i SŁABY. WZMOCNIJ swe SERCE, zanim ta choroba się ROZEJDZIE.*~ [VHA013] */
  IF ~~ THEN REPLY #62707 /* ~"Omówimy to kiedy indziej. Ruszajmy."~ */ EXIT
END
