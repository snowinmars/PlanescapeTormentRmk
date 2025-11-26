// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAIDOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAIDOOR~

IF ~  GlobalLT("Know_Painted_Door","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #47816 /* ~To, co wcześniej zostało przez ciebie wzięte za drzwi w tym łuku, tak naprawdę jest malowidłem. Artysta wykorzystał cienie rzucane przez łuk i delikatne efekty tekstury, aby stworzyć iluzję prawdziwych drzwi.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47817 /* ~"Anno, czy jesteś pewna, że to na pewno są te drzwi?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47818 /* ~Zamknij oczy i otwórz drzwi.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 1
  IF ~~ THEN REPLY #47819 /* ~Przyjrzyj się drzwiom dokładniej.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ GOTO 2
  IF ~~ THEN REPLY #47820 /* ~Zostaw "drzwi" w spokoju.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1
  SAY #47822 /* ~Zamykasz oczy, wyciągasz rękę w kierunku drzwi i... ku swemu zdziwieniu, natrafiasz na klamkę. Drzwi otwierają się i spostrzegasz wąskie przejście prowadzące w głąb budowli. Stamtąd, z oddali, słychać wycie.~ */
  IF ~~ THEN REPLY #47823 /* ~"Czas na wejście..."~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",3)
SetDoorLocked("ar0400d1",FALSE)
OpenDoor("ar0400d1")
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #47824 /* ~Oprócz tego, że artysta wykazał się nie lada umiejętnościami, w malowidle nie ma nic niezwykłego. "Drzwi" zostały namalowane na szorstkim kamiennym murze - pod malowaną teksturą drewna możesz wyczuć kamień i zaprawę w łączeniach.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47825 /* ~"Anno, czy jesteś pewna, że to na pewno są te drzwi?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47826 /* ~Zamknij oczy i otwórz drzwi.~ */ GOTO 1
  IF ~~ THEN REPLY #47827 /* ~Zostaw "drzwi" w spokoju.~ */ EXIT
END
