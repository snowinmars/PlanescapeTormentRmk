// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~GFGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5826 /* ~"To znowu ty? Straże! Straże!"~ */
  IF ~~ THEN REPLY #5827 /* ~Walcz.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5828 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #1 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 1 // from:
  SAY #5829 /* ~"To znowu ty? Straże! Straże!"~ */
  IF ~~ THEN REPLY #5830 /* ~Walcz.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #5831 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #5832 /* ~"No dobra, trepie... ruszaj stąd, a nikomu nic się nie stanie."~ */
  IF ~~ THEN REPLY #5833 /* ~Odejdź.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #5834 /* ~"Witaj z powrotem w Kuźni, panie."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5835 /* ~"Dziękuję. Mam do odebrania pewien przedmiot."~ */ GOTO 22
  IF ~~ THEN REPLY #5836 /* ~"Dziękuję."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 even though they appear after this state */
~  False()
~ THEN BEGIN 4 // from:
  SAY #5837 /* ~"Witaj z powrotem w Kuźni, panie."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5838 /* ~"Dziękuję. Mam do odebrania pewien przedmiot."~ */ GOTO 22
  IF ~~ THEN REPLY #5839 /* ~"Dziękuję."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 even though they appear after this state */
~  True()
~ THEN BEGIN 5 // from:
  SAY #5840 /* ~Widzisz przed sobą przysadzistego, znudzonego strażnika. "Proszę podać przyczynę swojej obecności."~ */
  IF ~~ THEN REPLY #5841 /* ~"Tylko się rozglądam."~ */ GOTO 6
  IF ~~ THEN REPLY #5842 /* ~"Przychodzę odebrać zamówiony przedmiot."~ */ GOTO 7
  IF ~~ THEN REPLY #5843 /* ~"Przychodzę złożyć zamówienie."~ */ GOTO 8
  IF ~~ THEN REPLY #5844 /* ~"Kim jesteś?"~ */ GOTO 9
  IF ~~ THEN REPLY #5845 /* ~"Co tu robisz?"~ */ GOTO 10
  IF ~  GlobalGT("Dream","GLOBAL",0)
GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #5846 /* ~"Pomagam Xanderowi przy kreatorze snów."~ */ GOTO 23
  IF ~  Global("Dream","GLOBAL",5)
PartyHasItem("DrmKey")
~ THEN REPLY #5847 /* ~"Przychodzę tu, żeby skorzystać z kreatora snów."~ */ GOTO 24
  IF ~~ THEN REPLY #6478 /* ~"Co to za miejsce?"~ */ GOTO 11
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #6479 /* ~"Mam wiadomość dla Keldora od Giltspura z bloku aukcyjnego."~ */ GOTO 26
  IF ~~ THEN REPLY #67933 /* ~"Nie mam tu nic do załatwienia. Przykro mi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0
  SAY #5848 /* ~"W takim razie na pewno nie będziesz miał nic przeciwko temu, jak ci powiem, żebyś sobie stąd poszedł."~ */
  IF ~~ THEN REPLY #5849 /* ~"Mogę wejść do środka?"~ */ GOTO 13
  IF ~~ THEN REPLY #5850 /* ~"Ależ skąd."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 12.1 19.1
  SAY #5851 /* ~"Tak, panie. Mogę zobaczyć twój kwit?"~ */
  IF ~  PartyHasItem("Receipt")
~ THEN REPLY #5852 /* ~"Tak."~ */ GOTO 14
  IF ~~ THEN REPLY #5853 /* ~Kłamstwo: "Tak."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Guards_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~~ THEN REPLY #5854 /* ~"Nie."~ */ GOTO 16
  IF ~~ THEN REPLY #5855 /* ~"Jestem pewien, że miałem go ze sobą..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 8 // from: 5.2 12.2
  SAY #5856 /* ~"Przykro mi, panie, ale z powodu wielkiego projektu, nad którym pracujemy, nie przyjmujemy teraz żadnych nowych zamówień. Przyjdź do nas za rok. Dziękujemy, że zechciałeś się do nas pofatygować."~ */
  IF ~~ THEN REPLY #5857 /* ~"Rozumiem. Mam jeszcze parę pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #5858 /* ~"Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.3 12.3
  SAY #5859 /* ~"Jestem strażnikiem Wyznawców Źródła, panie."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5860 /* ~"Wyznawców Źródła?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5861 /* ~"Ach, rozumiem. Mam jaszcze parę pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #5862 /* ~"Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.4 12.4
  SAY #5863 /* ~"Strzegę bramy, panie."~ */
  IF ~~ THEN REPLY #5864 /* ~"Taaaaak. Mam jeszcze parę pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #5865 /* ~"Dziękuję, że poświęciłeś mi swój cenny czas."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.7 12.5
  SAY #5866 /* ~"Znajdujesz się przed Wielką Kuźnią, która jest domem Wyznawców Źródła."~ */
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #5867 /* ~"Kogo?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #5868 /* ~"Co to jest Wielka Kuźnia?"~ */ GOTO 19
  IF ~~ THEN REPLY #5869 /* ~"Ach. Dziękuję. Mam jeszcze parę pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #5870 /* ~Odejdź: "Och."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.1 10.0 11.2 13.0 15.1 17.0 19.0 20.1 21.0
  SAY #5871 /* ~"Powiedz, czego od nas chcesz, panie."~ */
  IF ~~ THEN REPLY #5872 /* ~"Tylko się rozglądam."~ */ GOTO 6
  IF ~~ THEN REPLY #5873 /* ~"Przychodzę odebrać zamówiony przedmiot."~ */ GOTO 7
  IF ~~ THEN REPLY #5874 /* ~"Przychodzę złożyć zamówienie."~ */ GOTO 8
  IF ~~ THEN REPLY #5875 /* ~"Kim jesteś?"~ */ GOTO 9
  IF ~~ THEN REPLY #5876 /* ~"Co tu robisz?"~ */ GOTO 10
  IF ~~ THEN REPLY #5877 /* ~"Co to za miejsce?"~ */ GOTO 11
  IF ~~ THEN REPLY #5878 /* ~"Nie mam tu nic do załatwienia. Przykro mi."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #5879 /* ~"Nie, dopóki nie podasz powodu swojej wizyty, panie."~ */
  IF ~~ THEN REPLY #5880 /* ~"Rozumiem. W takim razie mam jeszcze parę pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #5881 /* ~"Rozumiem. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #5882 /* ~"Dziękuję, panie. Urzędnik, którego poszukujesz, ma biuro przy południowej ścianie Kuźni." Strażnik otwiera przed tobą drzwi.~ */
  IF ~~ THEN REPLY #5883 /* ~Odejdź.~ */ DO ~SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1
  SAY #5884 /* ~"Wygląda na to, że nie masz kwitu, panie."~ */
  IF ~~ THEN REPLY #5885 /* ~"Jestem pewien, że miałem go ze sobą..."~ */ GOTO 17
  IF ~~ THEN REPLY #5886 /* ~"Hmmm. Nie. Ale mam jeszcze parę pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #5887 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 7.2
  SAY #5888 /* ~"W takim razie obawiam się, że będziesz musiał stąd odejść, panie."~ */
  IF ~~ THEN REPLY #5889 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.3 15.0
  SAY #5890 /* ~"Tak, panie, wierzę ci. Ale nie mogę cię wpuścić, jeśli nie przedstawisz dowodu, że masz tu coś do załatwienia."~ */
  IF ~~ THEN REPLY #5891 /* ~"W takim razie mam jeszcze parę pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #5892 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.0 11.0
  SAY #5893 /* ~"Tak, panie. Nazywają nas Bogowcami."~ */
  IF ~~ THEN REPLY #5894 /* ~"Dlaczego?"~ */ GOTO 20
  IF ~~ THEN REPLY #5895 /* ~"To dobrze. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.1
  SAY #5896 /* ~"Oprócz tego, że jest domem dla Wyznawców Źródła, to także jedna z największych kuźni, jakie istnieją w świecie śmiertelników. Przez te wrota przechodzi wiele towarów. Przyjmujemy zamówienia z całych sfer. Teraz jednak nie wykonujemy żadnych zleceń, bo nasi majstrowie albo są zajęci pracą nad nowym projektem, albo mają dużo małych zamówień na kilka następnych miesięcy. W praktyce oznacza to, że nie pozwolę ci wejść, jeśli nie będziesz miał kwitu na odbiór jakiegoś przedmiotu, albo jeśli nie będziesz miał ważnej sprawy do załatwienia."~ */
  IF ~~ THEN REPLY #5897 /* ~"Mam tu do załatwienia sprawę ni cierpiącą zwłoki!"~ */ GOTO 12
  IF ~~ THEN REPLY #5898 /* ~"Mam ze sobą kwit!"~ */ GOTO 7
  IF ~~ THEN REPLY #5899 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.0
  SAY #5900 /* ~"Jesteśmy jedną z piętnastu frakcji w Sigil, panie. Wierzymy, że każda istota ma w sobie iskrę boskości - nie dobra czy zła, ale potencjał do tego, żeby osiągnąć boskość. Wierzymy, że za boskością leży coś większego. Według nas całe życie ma cel, dlatego poświęcamy swoje życie, żeby te cele zrozumieć. Z każdym krokiem naszego życia zbliżamy się do wielkości."~ */
  IF ~~ THEN REPLY #5901 /* ~"Wygląda na to, że to coś ważnego."~ */ GOTO 21
  IF ~~ THEN REPLY #5902 /* ~"Wpuścisz mnie?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #5903 /* ~"My w to wierzymy, panie. Mogę ci pomóc w czymś jeszcze?"~ */
  IF ~~ THEN REPLY #5904 /* ~"Tak. Mam jeszcze parę pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #5905 /* ~"Nie."~ */ EXIT
  IF ~~ THEN REPLY #5906 /* ~"Nie, dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.0 4.0
  SAY #5907 /* ~"Tak, panie. Możesz wejść."~ */
  IF ~~ THEN REPLY #5908 /* ~"Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5
  SAY #6480 /* ~"Tak, panie. Mówiono nam o tobie. Możesz wejść."~ */
  IF ~~ THEN REPLY #6481 /* ~"Dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6
  SAY #6482 /* ~Strażnik przygląda ci się przez chwilę. "Powodzenia. Możesz wejść."~ */
  IF ~~ THEN REPLY #6483 /* ~"Dziękuję."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Foundry_Open","AR0500",1)
~ THEN BEGIN 25 // from:
  SAY #66285 /* ~"Witaj znowu, panie. Domyślam się, że masz coś jeszcze do załatwienia w środku. Ruszaj."~ */
  IF ~~ THEN REPLY #66286 /* ~"No cóż. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8
  SAY #67931 /* ~"Dziękuję ci, panie. Znajdziesz go w Wielkiej Sali Bogowców." Strażnik otwiera przed tobą bramę.~ */
  IF ~~ THEN REPLY #67932 /* ~"Dziękuję."~ */ DO ~SetGlobal("Foundry_Open","AR0500",1)
SetDoorLocked("AR0500d1",FALSE)
OpenDoor("AR0500d1")
~ EXIT
END
