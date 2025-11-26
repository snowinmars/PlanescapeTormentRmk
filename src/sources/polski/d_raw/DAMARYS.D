// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAMARYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAMARYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 9 13 11 even though they appear after this state */
~  GlobalLT("Nodd_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #20721 /* ~Widzisz młodą kobietę, ubraną w obcisły, skórzany gorset i legginsy. Pachnie tanimi perfumami i choć ładna, ma zrobiony jaskrawy makijaż. Na twój widok wstydliwie się uśmiecha. "Szukasz towarzystwa, kochasiu?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22779 /* ~"Czy przypadkiem nie jesteś Amarissa?"~ */ GOTO 2
  IF ~~ THEN REPLY #22780 /* ~"Nie, ale mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #22781 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #20722 /* ~"Przykro mi, kochasiu, nie stoję tu, by odpowiadać na pytania przechodniów. Na pewno nie chcesz towarzystwa?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22782 /* ~"Nie, ale czy przypadkiem nie jesteś Amarissa?"~ */ GOTO 2
  IF ~~ THEN REPLY #22783 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #22784 /* ~Przez chwilę patrzy na ciebie bez słowa, potem odzywa się: "Kiedyś tak mnie nazywano, dawno temu. A kim ty jesteś?"~ */
  IF ~~ THEN REPLY #22785 /* ~"Przysłał mnie Nodd, twój brat. Martwi się i ma nadzieję, że będę mógł mu powiedzieć, co u ciebie."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #22786 /* ~"N... Nodd? On żyje? Gdzie? Dlaczego sam mnie nie odszukał?"~ */
  IF ~~ THEN REPLY #22787 /* ~"Myślę, że się wstydzi. Jest teraz Zbieraczem, mieszka w nędzy na Placu Szmaciarzy. Wydaje się, że nie jest całkiem... w porządku. To znaczy, ma coś z głową."~ */ JOURNAL #22632 /* ~Amarissa powiedziała mi, że jako dziecko Nodd miał na imię 'Todus'.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22788 /* ~"Tak, zawsze był trochę inny, nawet jako dziecko, gdy jeszcze nazywał się Todus. Och, tak bardzo mi go brakowało! Wstydzi się? Ha! Moja praca też nie daje powodów do dumy! Dobrze, że przynajmniej idzie mi nienajgorzej - w każdym razie jak na mieszkańca Ula, co? Muszę go jak najszybciej odwiedzić." Po raz pierwszy odkąd cię ujrzała, patrzy na ciebie uważnie. "Jesteś jakimś przyjacielem Zgodnego, czy...?"~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22789 /* ~"Tak, coś w tym stylu. Dlaczego pytasz?"~ */ GOTO 5
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #61490 /* ~"Raczej nie."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22790 /* ~"Niezupełnie. Zapłacono mi za tę przysługę."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22791 /* ~Kłamstwo: "Tak, jestem. Dlaczego pytasz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Amarysse_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3
  SAY #22792 /* ~"Czy mógłbyś..." Marszczy czoło, przygryzając wargę, jak gdyby coś rozważała. "Czy mógłbyś mu to dać?" Podchodzi do ciebie i daje sakiewkę, w której musi być ze sto miedziaków.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22794 /* ~"Tak. Przysięgam, że mu to oddam."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Przysięgłem Amarissie, że zaniosę miedziaki jej bratu Noddowi na Placu Szmaciarzy.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22793 /* ~"Tak. Przysięgam, że mu to oddam."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Przysięgłem Amarissie, że zaniosę miedziaki jej bratu Noddowi na Placu Szmaciarzy.~ */ GOTO 6
  IF ~~ THEN REPLY #22795 /* ~"Tak. Oddam mu to."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22796 /* ~"Nie, lepiej nie. Ale powiem mu, że wkrótce go odwiedzisz. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22797 /* ~"Nie, lepiej nie. Ale powiem mu, że wkrótce go odwiedzisz. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1 7.0 7.1
  SAY #22798 /* ~Daje ci sakiewkę. "Dziękuję ci. Idź, pomów ze Zgodnym i powiedz mu, jak bardzo się o niego martwię!"~ */
  IF ~~ THEN REPLY #22799 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #22800 /* ~"Przykro mi, śmiałku, ale czy mógłbyś mi to przysiąc? To dużo pieniędzy... przynajmniej dla mnie."~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22801 /* ~"Tak. Przysięgam, że mu to oddam."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Przysięgłem Amarissie, że zaniosę miedziaki jej bratu Noddowi na Placu Szmaciarzy.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22802 /* ~"Tak. Przysięgam, że mu to oddam."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~Przysięgłem Amarissie, że zaniosę miedziaki jej bratu Noddowi na Placu Szmaciarzy.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22803 /* ~"Nie, lepiej nie. Ale powiem mu, że wkrótce go odwiedzisz. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22804 /* ~"Nie, lepiej nie. Ale powiem mu, że wkrótce go odwiedzisz. Żegnaj."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY #22805 /* ~"Hmm. No dobra, dziękuję ci. Proszę, idź porozmawiać ze Zgodnym i powiedz mu, jak bardzo się o niego martwię!"~ */
  IF ~~ THEN REPLY #22806 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 11 even though they appear after this state */
~  GlobalGT("Nodd_Quest","GLOBAL",3)
!Global("Nodd_Quest","GLOBAL",8)
!Global("Nodd_Quest","GLOBAL",9)
~ THEN BEGIN 9 // from:
  SAY #22807 /* ~Amarissa patrzy pełna nadziei. "Rozmawiałeś już ze Zgodnym?"~ */
  IF ~~ THEN REPLY #22808 /* ~"Nie, jeszcze nie."~ */ GOTO 10
  IF ~~ THEN REPLY #22809 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22810 /* ~"Proszę, idź więc z nim porozmawiać i powiedz mu, jak bardzo się o niego martwię!"~ */
  IF ~~ THEN REPLY #22811 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Nodd_Quest","GLOBAL",8)
!Global("Chaotic_Nodd_4","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #22812 /* ~"Słyszałam, że rozmawiałeś ze Zgodnym... Dziękuję ci, śmiałku."~ */
  IF ~~ THEN REPLY #22813 /* ~"Oczywiście... ale skąd wiesz?"~ */ GOTO 12
  IF ~~ THEN REPLY #22814 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22815 /* ~"Mam wielu przyjaciół w Ulu, naprawdę." Mruga. "Jeszcze raz, dziękuję."~ */
  IF ~~ THEN REPLY #22816 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF WEIGHT #1 ~  GlobalGT("Nodd_Quest","GLOBAL",7)
~ THEN BEGIN 13 // from:
  SAY #22817 /* ~Widzisz Amarissę. Jeszcze cię nie zauważyła.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",9)
~ THEN REPLY #22818 /* ~Porozmawiaj z nią.~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",8)
~ THEN REPLY #22819 /* ~Porozmawiaj z nią.~ */ GOTO 15
  IF ~~ THEN REPLY #22820 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22821 /* ~Jej oczy zapłonęły gniewem, gdy tylko cię spostrzegła. Zaczyna wrzeszczeć i nagle, zanim udało ci się otworzyć usta, jest już nad tobą z nożem w dłoni. "Ty bękarcie! Nie myśl, że nie słyszałam, co się stało z moim biednym bratem... Zabiję cię!"~ */
  IF ~~ THEN REPLY #22822 /* ~Odeprzyj atak.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22823 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #22824 /* ~Jej oczy zapłonęły gniewem, gdy tylko cię spostrzegła. Zaczyna wrzeszczeć i nagle, zanim udało ci się otworzyć usta, jest już nad tobą z nożem w dłoni. "Ty złodziejskie nasienie! Słyszałam, co zrobiłeś! Zabrałeś pieniądze biednej, pracującej dziewczynie i okradłeś jej brata... Zabiję cię!"~ */
  IF ~~ THEN REPLY #22825 /* ~Odeprzyj atak.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22826 /* ~Uciekaj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
