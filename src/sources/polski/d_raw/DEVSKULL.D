// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEVSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DEVSKULL~

IF ~~ THEN BEGIN 0 // from:
  SAY #31692 /* ~"Zły? Phi! Jestem tylko pragmatykiem."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 5
END

IF ~~ THEN BEGIN 1 // from:
  SAY #31693 /* ~"Czyż nie jest to dobre rozwiązanie? Dla mnie zawsze działało. Odkryłem, że trucizna i magia są równie skuteczne."~ */
  IF ~~ THEN EXTERN ~DSSKULL~ 6
END

IF ~  Global("EvSkull_Talk","AR0508",0)
~ THEN BEGIN 2 // from:
  SAY #31694 /* ~Czaszka przemawia niskim głosem i w żartobliwym tonie. "Przybyłeś by poznać prawdę? Mam ich całe mnóstwo."~ */
  IF ~~ THEN REPLY #31695 /* ~"Opowiedz mi o sobie."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31696 /* ~"W jaki sposób się tu znalazłeś?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31697 /* ~"Co możesz mi powiedzieć o Lotarze?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 6
  IF ~~ THEN REPLY #31698 /* ~"Co możesz mi powiedzieć o pozostałych czaszkach?"~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ GOTO 7
  IF ~~ THEN REPLY #31699 /* ~"Zapomnij o tym. Wybacz, że zabrałem ci czas. Żegnaj."~ */ DO ~SetGlobal("EvSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("EvSkull_Talk","AR0508",1)
~ THEN BEGIN 3 // from:
  SAY #31700 /* ~"Przyszedłeś by lepiej poznać sposób w jaki działa świat, co? Trafiłeś do właściwej osoby."~ */
  IF ~~ THEN REPLY #31701 /* ~"Opowiedz mi o sobie."~ */ GOTO 4
  IF ~~ THEN REPLY #31702 /* ~"W jaki sposób się tu znalazłeś?"~ */ GOTO 5
  IF ~~ THEN REPLY #31703 /* ~"Co możesz mi powiedzieć o Lotarze?"~ */ GOTO 6
  IF ~~ THEN REPLY #31704 /* ~"Co możesz mi powiedzieć o pozostałych czaszkach?"~ */ GOTO 7
  IF ~~ THEN REPLY #31705 /* ~"Zapomnij o tym. Wybacz, że zabrałem ci czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0 5.0 6.1 7.0
  SAY #31706 /* ~"Ja? Ja jestem Stern, jeden z największych praktyków uzyskiwania spokoju osobistego przez intensywne kierowanie wrogości w inne miejsce."~ */
  IF ~~ THEN EXTERN ~DANSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 6.2 7.1 8.0 8.1
  SAY #31707 /* ~"Zabawne, że o tym wspominasz. Dostałem kiedyś czarną księgę, bym mógł odkryć jej sekrety. Uwolniłem jej moce, za straszną cenę - chętnie zapłaciłbym ponownie! - i znacznie poszerzyłem swą moc. Nie zdawałem sobie sprawy, że księga mnie zdradzi dla kogoś innego - w zalewie gryzoni obezwładnił mnie skomlący szczur i wyrwał z mego ciała żywe mięso. Szczur minął wielu uczniów, każdy zdradzony przez księgę, aż wykrwawił się w leżu szczurołaka Mantuoka. Jeśli znajdziesz tę księgę, przyjmij jej moce i pozbądź się jej zanim spotka cię ten sam los."~ */
  IF ~~ THEN REPLY #31708 /* ~"Będę uważał. Opowiedz mi o sobie."~ */ JOURNAL #31712 /* ~Stern, czerep zabójcy w salonie czaszek Lotara, powiedział mi o księdze jaką posiada szczurołak Mantuok. Doradził mi, bym wystrzegał się mocy oferowanych przez księgę.~ */ GOTO 4
  IF ~~ THEN REPLY #31709 /* ~"Wielkie dzięki. Co możesz mi powiedzieć o Lotarze?"~ */ JOURNAL #31712 /* ~Stern, czerep zabójcy w salonie czaszek Lotara, powiedział mi o księdze jaką posiada szczurołak Mantuok. Doradził mi, bym wystrzegał się mocy oferowanych przez księgę.~ */ GOTO 6
  IF ~~ THEN REPLY #31710 /* ~"Cóż, w takim razie... co możesz mi powiedzieć o pozostałych czaszkach?"~ */ JOURNAL #31712 /* ~Stern, czerep zabójcy w salonie czaszek Lotara, powiedział mi o księdze jaką posiada szczurołak Mantuok. Doradził mi, bym wystrzegał się mocy oferowanych przez księgę.~ */ GOTO 7
  IF ~~ THEN REPLY #31711 /* ~"Tragiczna historia. Żegnaj."~ */ JOURNAL #31712 /* ~Stern, czerep zabójcy w salonie czaszek Lotara, powiedział mi o księdze jaką posiada szczurołak Mantuok. Doradził mi, bym wystrzegał się mocy oferowanych przez księgę.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 3.2 5.1 7.2
  SAY #31713 /* ~"Co mogę ci powiedzieć o Lotarze? Nic ci nie powiem. Nawet ta nędzna egzystencja jest lepsza niż niebyt, którym mi zagroził jeśli wyjawię jego tajemnice."~ */
  IF ~~ THEN REPLY #31714 /* ~"Możesz mi powiedzieć..."~ */ GOTO 9
  IF ~~ THEN REPLY #31715 /* ~"Dobrze. Opowiedz mi o sobie."~ */ GOTO 4
  IF ~~ THEN REPLY #31716 /* ~"W porządku, więc skąd się tu wziąłeś?"~ */ GOTO 5
  IF ~~ THEN REPLY #31717 /* ~"Co możesz mi powiedzieć o pozostałych czaszkach?"~ */ GOTO 7
  IF ~~ THEN REPLY #31718 /* ~"W takim razie zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.3 5.2 6.3
  SAY #31719 /* ~"Nie mogę powiedzieć dobrego słowa o czaszkach z którymi będziesz rozmawiał. Nie mamy wspólnych doświadczeń; w rzeczy samej niewiele rozmawialiśmy do twego przybycia. Może," mówi z wyższością w głosie, "z twoją obecnością wiąże się coś niezwykłego."~ */
  IF ~~ THEN REPLY #31720 /* ~"Możliwe. Opowiedz mi o sobie."~ */ GOTO 4
  IF ~~ THEN REPLY #31721 /* ~"Bez wątpienie. Jak się tu dostałeś?"~ */ GOTO 5
  IF ~~ THEN REPLY #31722 /* ~"To prawda. Wystarczy jak opowiesz mi o Lotarze."~ */ GOTO 6
  IF ~~ THEN REPLY #31723 /* ~"Dość dobrze, a ty jesteś blisko uwolnienia z jego ciężaru. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #31724 /* ~"Jakolwiek to nazwiesz, Ponury Skalpie." Stern odwraca się z powrotem do ciebie. "Byłem najlepszy z miotu, tak mówią."~ */
  IF ~~ THEN REPLY #31725 /* ~"Więc jak się tu dostałeś?"~ */ GOTO 5
  IF ~~ THEN REPLY #31726 /* ~"Co ci się stało?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #31727 /* ~Masz wyraźne uczucie, że czaszka Sterna z ciebie drwi. "I uzyskać tylko twoją przyjaźń? Phi. Nie możesz mi nic zaoferować, żadnej usługi ani przedmiotu, który zmusiłby mnie, bym dla ciebie zdradził Lotara. Odejdź!"~ */
  IF ~~ THEN REPLY #31728 /* ~"W takim razie odpowiedz na kilka pytań..."~ */ GOTO 10
  IF ~~ THEN REPLY #31729 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31730 /* ~"Nie." Czaszka skupia się wewnątrz siebie; czujesz jak moc jej osobowości znika.~ */
  IF ~~ THEN REPLY #31731 /* ~"W porządku."~ */ EXIT
END
