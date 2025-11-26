// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER8~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17772 /* ~Stara kobieta stoi spokojnie przy murze, gapiąc się gdzieś w dal. Wydaje się nie zwracać uwagi na ruch wokoło, w ręku ściska drewniany kołek, na którym dynda z tuzin małych rybek.~ */
  IF ~~ THEN REPLY #17790 /* ~"Witaj..."~ */ GOTO 2
  IF ~~ THEN REPLY #17791 /* ~Zostaw ją w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17773 /* ~"Witaj panie, chcesz kupić kilka...?" Nagle rozpoznaje cię. "Och, wróciłeś."~ */
  IF ~~ THEN REPLY #22136 /* ~"Tak, mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #17793 /* ~"Jestem tu przypadkiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17774 /* ~"Och... witaj, panie." Przez chwilę zerka na ciebie, próbując przypomnieć sobie kim jesteś. "O, bogowie! Myślałam, że jesteś jednym z moich stałych klientów." Wysuwa swoje ryby. "Tuńczyka, panie? Makrelę? Morskiego ogórka?"~ */
  IF ~~ THEN REPLY #17794 /* ~"Żadnych ryb, dzięki. Mam parę pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #17795 /* ~"Nie, dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17775 /* ~"Hmm..." Zaciska usta, patrząc ponad twoim ramieniem.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22143 /* ~"Przyniosłem kufel. Czy możesz wlać tu atrament z ryby?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22108 /* ~"Słyszałaś o *brogocie*? Powiedziano mi, że z jej skrzeli wypływa atrament."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17796 /* ~Obejrzyj się, zobacz, na co się gapi.~ */ GOTO 4
  IF ~~ THEN REPLY #17797 /* ~"Uch... opowiedz mi o tym miejscu."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17798 /* ~"Czy znasz kogoś, kto nazywa się Farod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17799 /* ~"Gdzieś zgubiłem dziennik. Nie widziałaś jakiegoś?"~ */ GOTO 15
  IF ~~ THEN REPLY #17800 /* ~"Nieważne... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #17776 /* ~Nie widzisz z tyłu nic interesującego. Gdy odwracasz się z powrotem, patrzy na ciebie... szybko odwraca wzrok i znów gapi się gdzieś w dal.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22149 /* ~"Mam kufel. Możesz wlać tu atrament?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22109 /* ~"Słyszałaś o *brogocie*? Powiedziano mi, że z jej skrzeli wypływa atrament."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17801 /* ~"O co chodzi? Czyżbym kogoś ci przypominał?"~ */ GOTO 5
  IF ~~ THEN REPLY #17802 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17803 /* ~"Znasz kogoś, kto nazywa się Farod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17804 /* ~"Gdzieś zgubiłem dziennik. Nie widziałaś jakiegoś?"~ */ GOTO 15
  IF ~~ THEN REPLY #17805 /* ~"Eee... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 15.2
  SAY #17777 /* ~"Na bogów, nie!" Przerywa na chwilkę. "Tak, tak."~ */
  IF ~~ THEN REPLY #17806 /* ~"Więc widziałaś mnie już wcześniej?"~ */ GOTO 6
  IF ~~ THEN REPLY #17807 /* ~"Ciekawe. Żegnaj, rybiarko."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #17778 /* ~"Myślę, że... to byłeś ty, albo ktoś bardzo podobny. To było tak dawno temu."~ */
  IF ~~ THEN REPLY #17808 /* ~"Powiedz mi..."~ */ GOTO 7
  IF ~~ THEN REPLY #17809 /* ~"Ciekawe. Żegnaj, rybiarko."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 17.0
  SAY #17779 /* ~"Widzisz, panie... moje oczy nie są już takie sprawne, zresztą nigdy takie nie były. Ale wydaje mi się, że widziałam jak przechodziłeś tędy z małą grupką ludzi."~ */
  IF ~~ THEN REPLY #17810 /* ~"Jak wyglądali ci ludzie?"~ */ GOTO 8
  IF ~~ THEN REPLY #17811 /* ~"Ciekawe. Żegnaj, rybiarko."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17780 /* ~"Trudno powiedzieć, panie... to było tak dawno temu, a ty szedłeś tak szybko. Ale teraz pamiętam, w jaki sposób trzymałeś głowę... była też z tobą kobieta, próbowała cię powstrzymać. Chciała, byś się odwrócił, porozmawiał z nią... ale odepchnąłeś ją."~ */
  IF ~~ THEN REPLY #17812 /* ~"Co stało się potem?"~ */ GOTO 9
  IF ~~ THEN REPLY #17813 /* ~"Ciekawe. Żegnaj, rybiarko."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #17781 /* ~"To była piękna kobieta... wyglądała jednocześnie na bardzo smutną i bardzo rozgniewaną. Stała tu przez chwilę, a potem poszła za tobą, przepychając się i próbując cię dogonić."~ */
  IF ~~ THEN REPLY #17814 /* ~"Wspomniałaś o grupie. Kto jeszcze tam był?"~ */ GOTO 10
  IF ~~ THEN REPLY #17815 /* ~"Ciekawe. Żegnaj, rybiarko."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #17782 /* ~Wzrusza ramionami. "Było z tobą przynajmniej dwóch innych panów... jeden, którego pamiętam, był wysoki i szczupły. Cuchnęło od niego bełtem; czuć go było na parę metrów. Wyglądał też, jakby nie kąpał się od lat. Szedł zaraz za tobą, nic nie mówiąc. Zachowywał się tak, jak gdyby nie było tam tej kobiety, nawet wtedy, gdy wpadła na niego próbując cię zatrzymać. To wszystko, co pamiętam, panie."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17816 /* ~Daj jej parę miedziaków.~ */ GOTO 11
  IF ~~ THEN REPLY #17817 /* ~"Ciekawe. Dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #17783 /* ~Ile dajesz rybiarce?~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17818 /* ~Jednego miedziaka.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 12
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17819 /* ~Pięć miedziaków.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(5)
~ GOTO 13
  IF ~  PartyGoldGT(9)
~ THEN REPLY #17820 /* ~Dziesięć miedziaków.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(10)
~ GOTO 13
  IF ~  PartyGoldGT(19)
~ THEN REPLY #17821 /* ~Dwadzieścia miedziaków.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(20)
~ GOTO 14
  IF ~~ THEN REPLY #17822 /* ~Nic: "Interesujące. Dziękuję i żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #17784 /* ~Uśmiecha się i kiwa głową. "Dziękuję, panie."~ */
  IF ~~ THEN REPLY #17823 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2
  SAY #17785 /* ~"Och, bogowie! Dziękuję ci panie, z całego serca. Oby cień Pani zawsze cię omijał."~ */
  IF ~~ THEN REPLY #17824 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY #17786 /* ~Przez chwilę gapi się na pełną garść monet, jak gdyby nie wiedziała, co zrobić. Podsuwasz je bliżej i w końcu bierze je, śmiejąc się niespokojnie. "Och... och! Na bogów! Dziękuję, panie! Oby cień Pani zawsze cię omijał, a szczęście zawsze sprzyjało! Proszę, odwiedź mnie jeszcze, kiedy tylko zechcesz."~ */
  IF ~~ THEN REPLY #17825 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 3.4 3.5 4.3 4.4 4.5 15.3 15.4 15.5
  SAY #17787 /* ~Potrząsa głową, usta ma ściśnięte. Wciąż patrzy ponad twoim ramieniem. Za każdym razem, gdy próbujesz sprawdzić, na co patrzy, odwracasz się i widzisz, że przez ułamek sekundy gapi się na ciebie.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22153 /* ~"Mam kufel. Możesz wlać tu atrament?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22112 /* ~"Słyszałaś o *brogocie*? Powiedziano mi, że z jej skrzeli wypływa atrament."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17826 /* ~"O co chodzi? Czyżbym kogoś ci przypominał?"~ */ GOTO 5
  IF ~~ THEN REPLY #17827 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17828 /* ~"Znasz kogoś, kto nazywa się Farod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17829 /* ~"Gdzieś zgubiłem dziennik. Nie widziałaś jakiegoś?"~ */ GOTO 15
  IF ~~ THEN REPLY #17830 /* ~"Eee... Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17788 /* ~"I znów się spotykamy, panie! Co mogę dla ciebie zrobić?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22157 /* ~"Przyniosłem kufel. Czy możesz wlać tu atrament z ryby?"~ */ DO ~TransformPartyItem("Tankard","TankardF",1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22116 /* ~"Słyszałaś o *brogocie*? Powiedziano mi, że z jej skrzeli wypływa atrament."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17831 /* ~"Czy możesz mi ponownie powiedzieć, kiedy mnie widziałaś?"~ */ GOTO 17
  IF ~~ THEN REPLY #17832 /* ~"Nic, tylko przechodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #17789 /* ~"Oczywiście!"~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 3.1 4.1 15.1 16.1
  SAY #22105 /* ~Mruga, następnie przytakuje. "Tak, ta ryba... ta ryba to naprawdę dziwo. Niewielu o niej słyszało, a jeszcze mniej chciałoby ją zjeść... trudno ją zabić i nawet po śmierci, wydaje się być żywa. Niewielu chce zacisnąć zęby na czymś, co jeszcze się wije."~ */
  IF ~~ THEN REPLY #22120 /* ~"Masz jakąś?"~ */ JOURNAL #21904 /* ~Meir'am ma tę rybę, lecz jak zwykle na tym się nie kończy. Potrzebuję naczynia na atrament, czegoś w stylu filiżanki lub kufla. Być może któryś z kupców na placu sprzedaje coś co było by mi przydatne.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22106 /* ~"Tak... ale atrament... będziesz potrzebował czegoś, w czym będziesz mógł go nieść. Masz może miskę, albo kubek?"~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #22126 /* ~"Wspaniale... pójdę poszukać i wrócę."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22127 /* ~"Hmmm. Albo kufel... może któryś z kupców sprzeda mi jeden. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.0 4.0 15.0 16.0
  SAY #22107 /* ~Kiwa głową i zrywa rybę z kołka... gdy ją łapie, ryba podryguje, a następnie zaczyna się rzucać, podczas gdy stara wykręca ją jak mokrą szmatę. Robi to tak długo, aż z rybich skrzeli zaczyna sączyć się niebiesko-czarna substancja. Gdy twój kufel jest prawie pełny, kobieta rozluźnia uchwyt i wrzuca drgającą rybę do torby, którą ma koło siebie.~ */
  IF ~~ THEN REPLY #22129 /* ~"Dzięki. Żegnaj."~ */ JOURNAL #21905 /* ~W końcu zdobyłem atrament, cały pełny kufel. Teraz mogę zanieść to paskudztwo do Mebbet... kto wie, może przekonam ją do wypicia tego.~ */ EXIT
END
