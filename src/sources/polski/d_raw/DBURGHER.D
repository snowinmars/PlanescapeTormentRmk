// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURGHER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURGHER~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57017 /* ~Widzisz starzejącego się githzerai uwięzionego pod kołami wozu, który musiał na niego upaść podczas chaosu. Spluwa krwią i uśmiecha się do ciebie. "Nie masz zamiaru mi pomóc, co? To właśnie to nas tu doprowadziło..." Śmieje się słabo.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57018 /* ~"Kim jesteś?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57019 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57020 /* ~"Spokojnie. Wyciągnę cię."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57021 /* ~"Spokojnie. Wyciągnę cię."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57022 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57023 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #57024 /* ~Githzerai kaszle ponownie. "Ponownie przyszedłeś ze mnie drwić? Nie dam ci tej satysfakcji."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57025 /* ~"Kim jesteś?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57026 /* ~"Kim jesteś?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57027 /* ~"Spokojnie. Wyciągnę cię."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57028 /* ~"Spokojnie. Wyciągnę cię."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57029 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57030 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57031 /* ~"Tak, odłóż ostrze, zerthowy psie. Pluję na twoje nauki. Noś jeszcze dłużej swoje kajdany." Githzerai odwraca głowę w twoją stronę. "Jestem Tovus Giljaf. Byłem Włodarzem tego miasta... dopóki ten przeklęty deva się nie uwolnił."~ */
  IF ~~ THEN REPLY #57032 /* ~"Co możesz powiedzieć mi o devie?"~ */ GOTO 8
  IF ~~ THEN REPLY #57033 /* ~"Byłeś Włodarzem?"~ */ GOTO 9
  IF ~~ THEN REPLY #57034 /* ~"Nie powiem, żeby podobało mi się twoje miasto."~ */ GOTO 10
  IF ~~ THEN REPLY #57035 /* ~"Dobra, wyciągnę cię stąd."~ */ GOTO 5
  IF ~~ THEN REPLY #57036 /* ~"W takim razie zostawię cię, żebyś zginął. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #57038 /* ~"Tak, zabij mnie, zerthowy psie. Zrób to, co rozkazuje ci uczynić twój pan." Stary githzerai śmieje się, krztusząc się krwią, aż w końcu Dak'kon przecina jego gardło.~ */
  IF ~~ THEN REPLY #57039 /* ~"Dobra robota, Dak'konie."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #57040 /* ~"Jestem Tovus Giljaf. Byłem kiedyś Włodarzem tego miasta... dopóki ten przeklęty deva się nie uwolnił."~ */
  IF ~~ THEN REPLY #57041 /* ~"Co możesz powiedzieć mi o devie?"~ */ GOTO 8
  IF ~~ THEN REPLY #57042 /* ~"Byłeś Włodarzem?"~ */ GOTO 9
  IF ~~ THEN REPLY #57043 /* ~"Nie powiem, żeby podobało mi się twoje miasto."~ */ GOTO 10
  IF ~~ THEN REPLY #57044 /* ~"Dobra, wyciągnę cię stąd."~ */ GOTO 5
  IF ~~ THEN REPLY #57045 /* ~"W takim razie zostawię cię, żebyś zginął. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 4.3 8.0 9.0 10.0
  SAY #57046 /* ~Jego usta się zwężają. "Więc podnieś ten przeklęty wóz i skończmy z tym."~ */
  IF ~~ THEN REPLY #57047 /* ~"Zaczynam."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #57048 /* ~"Zapomnij. Może wrócę później."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 1.5 8.2 9.2 10.2
  SAY #57049 /* ~"Zatem przeklinam cię, człowieku pokryty bliznami, i życzę, aby spadły na ciebie wszelkie plagi i zarazy." Spluwa krwią w twoim kierunku i nie trafia.~ */
  IF ~~ THEN REPLY #57050 /* ~"Na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #57051 /* ~Opierasz się o wóz i udaje ci się unieść go na tyle, by githzerai wyczołgał się spod niego. "Dzięki... człowieku. Idę teraz na mury, aby pomóc strażnikom. Moje miasto nie może zginąć." Uśmiecha się krzywo. "Nie zazdroszczę ci wojny z devą. On jest przerażającym przeciwnikiem. Trzymaj. Weź to. Może ci pomoże."~ */
  IF ~~ THEN REPLY #57052 /* ~"Żegnaj."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 4.0 9.1 10.1
  SAY #57053 /* ~"Uwięziliśmy go, och wiele lat temu. Sądziłem, że jest doskonale ukryty przed wszystkimi węszącymi psami i zdrajcami. Nagle wynurzył się spod ziemi, w ogniu, a mój piękny, piękny dom... przesunął się." Patrzy prosto na ciebie. "Chcę się zemścić. Uwolnij mnie, dobrze?"~ */
  IF ~~ THEN REPLY #57054 /* ~"W porządku. Przygotuj się."~ */ GOTO 5
  IF ~~ THEN REPLY #57055 /* ~"Byłeś Włodarzem tego miasta?"~ */ GOTO 9
  IF ~~ THEN REPLY #57056 /* ~"Nie, nie sądzę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 4.1 8.1
  SAY #57057 /* ~"Moi towarzysze... i ja... używaliśmy tego miasta jako bazy, by powrócić do władzy... ale to inna historia, nie na tę chwilę. Uwolnij mnie!"~ */
  IF ~~ THEN REPLY #57058 /* ~"W porządku. Przygotuj się."~ */ GOTO 5
  IF ~~ THEN REPLY #57059 /* ~"Co możesz powiedzieć mi o devie?"~ */ GOTO 8
  IF ~~ THEN REPLY #57060 /* ~"Nie, nie sądzę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 2.2 4.2
  SAY #57061 /* ~"Ja również... ale ono jest moje i gdy tracę je na rzecz tego wystrojonego, stanowiącego samemu dla siebie prawo, devę... to więcej, niż mogę znieść." Kaszle. "Uwolnij mnie, a ja pomogę ci wywrzeć na nim zemstę. Moi strażnicy mogą przez pewien czas powstrzymywać potwory."~ */
  IF ~~ THEN REPLY #57062 /* ~"W porządku. Przygotuj się."~ */ GOTO 5
  IF ~~ THEN REPLY #57063 /* ~"Co możesz powiedzieć mi o devie?"~ */ GOTO 8
  IF ~~ THEN REPLY #57064 /* ~"Nie, nie sądzę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 11 // from:
  SAY #57065 /* ~Widzisz starzejącego się githzerai uwięzionego pod kołami wozu, który musiał na niego upaść podczas chaosu. Spluwa krwią i uśmiecha się do ciebie. "Nie masz zamiaru mi pomóc, co? To właśnie to nas tu doprowadziło..." Śmieje się słabo.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57066 /* ~"Kim jesteś?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57067 /* ~"Kim jesteś?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57068 /* ~"Spokojnie. Wyciągnę cię."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57069 /* ~"Spokojnie. Wyciągnę cię."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57070 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57071 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57072 /* ~Githzerai kaszle ponownie. "Ponownie przyszedłeś ze mnie drwić? Nie dam ci tej satysfakcji."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57073 /* ~"Kim jesteś?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57074 /* ~"Kim jesteś?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57075 /* ~"Spokojnie. Wyciągnę cię."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57076 /* ~"Spokojnie. Wyciągnę cię."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57077 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57078 /* ~"Nie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 13 // from:
  SAY #57079 /* ~"Tak, odłóż ostrze, zerthowy psie. Pluję na twoje nauki. Noś jeszcze dłużej swoje kajdany." Githzerai odwraca głowę w twoją stronę. "Jestem Tovus Giljaf. Byłem Włodarzem tego miasta... dopóki ten przeklęty deva się nie uwolnił."~ */
  IF ~~ THEN REPLY #57080 /* ~"Co możesz powiedzieć mi o devie?"~ */ GOTO 19
  IF ~~ THEN REPLY #57081 /* ~"Byłeś Włodarzem?"~ */ GOTO 20
  IF ~~ THEN REPLY #57082 /* ~"Nie powiem, żeby podobało mi się twoje miasto."~ */ GOTO 21
  IF ~~ THEN REPLY #57083 /* ~"Dobra, wyciągnę cię stąd."~ */ GOTO 16
  IF ~~ THEN REPLY #57084 /* ~"W takim razie zostawię cię, żebyś zginął. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #57085 /* ~"Tak, zabij mnie, zerthowy psie. Zrób to, co rozkazuje ci uczynić twój pan." Stary githzerai śmieje się, krztusząc się krwią, aż w końcu Dak'kon przecina jego gardło.~ */
  IF ~~ THEN REPLY #57086 /* ~"Dobra robota, Dak'konie."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 12.1
  SAY #57087 /* ~"Jestem Tovus Giljaf. Byłem kiedyś Włodarzem tego miasta... dopóki ten przeklęty deva się nie uwolnił."~ */
  IF ~~ THEN REPLY #57088 /* ~"Co możesz powiedzieć mi o devie?"~ */ GOTO 19
  IF ~~ THEN REPLY #57089 /* ~"Byłeś Włodarzem?"~ */ GOTO 20
  IF ~~ THEN REPLY #57090 /* ~"Nie powiem, żeby podobało mi się twoje miasto."~ */ GOTO 21
  IF ~~ THEN REPLY #57091 /* ~"Dobra, wyciągnę cię stąd."~ */ GOTO 16
  IF ~~ THEN REPLY #57092 /* ~"W takim razie zostawię cię, żebyś zginął. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.3 13.3 15.3 19.0 20.0 21.0
  SAY #57093 /* ~Jego usta się zwężają. "Więc podnieś ten przeklęty wóz i skończmy z tym."~ */
  IF ~~ THEN REPLY #57094 /* ~"Zaczynam."~ */ GOTO 22
  IF ~~ THEN REPLY #57095 /* ~"Zapomnij. Może wrócę później."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5 12.5 19.2 20.2 21.2
  SAY #57096 /* ~"Zatem przeklinam cię, człowieku pokryty bliznami, i życzę, aby spadły na ciebie wszelkie plagi i zarazy." Spluwa krwią w twoim kierunku i nie trafia.~ */
  IF ~~ THEN REPLY #57097 /* ~"Na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 25.0
  SAY #57098 /* ~Opierasz się o wóz i udaje ci się unieść go na tyle, by githzerai wyczołgał się spod niego. Słyszysz z drugiej strony krzyk agonii, który po chwili cichnie ucięty mokrym uderzeniem. "Dzięki... człowieku. Idę teraz na mury, aby pomóc strażnikom. Moje miasto nie może zginąć." Uśmiecha się krzywo. "Nie zazdroszczę ci wojny z devą. On jest przerażającym przeciwnikiem. Trzymaj. Weź to. Może ci pomoże."~ */
  IF ~~ THEN REPLY #57099 /* ~"Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_3","GLOBALGood",-3)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 15.0 20.1 21.1
  SAY #57100 /* ~"Uwięziliśmy go, och wiele lat temu. Sądziłem, że jest doskonale ukryty przed wszystkimi węszącymi psami i zdrajcami. Nagle wynurzył się spod ziemi, w ogniu, a mój piękny, piękny dom... przesunął się." Patrzy prosto na ciebie. "Chcę się zemścić. Uwolnij mnie, dobrze?"~ */
  IF ~~ THEN REPLY #57101 /* ~"W porządku. Przygotuj się."~ */ GOTO 16
  IF ~~ THEN REPLY #57102 /* ~"Byłeś Włodarzem tego miasta?"~ */ GOTO 20
  IF ~~ THEN REPLY #57103 /* ~"Nie, nie sądzę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 13.1 15.1 19.1
  SAY #57104 /* ~"Moi towarzysze... i ja... używaliśmy tego miasta jako bazy, by powrócić do władzy... ale to inna historia, nie na tę chwilę. Uwolnij mnie!"~ */
  IF ~~ THEN REPLY #57105 /* ~"W porządku. Przygotuj się."~ */ GOTO 16
  IF ~~ THEN REPLY #57106 /* ~"Co możesz powiedzieć mi o devie?"~ */ GOTO 19
  IF ~~ THEN REPLY #57107 /* ~"Nie, nie sądzę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 21 // from: 13.2 15.2
  SAY #57108 /* ~"Ja również... ale ono jest moje i gdy tracę je na rzecz tego wystrojonego, stanowiącego samemu dla siebie prawo, devę... to więcej, niż mogę znieść." Kaszle. "Uwolnij mnie, a ja pomogę ci wywrzeć na nim zemstę. Moi strażnicy mogą przez pewien czas powstrzymywać potwory."~ */
  IF ~~ THEN REPLY #57109 /* ~"W porządku. Przygotuj się."~ */ GOTO 16
  IF ~~ THEN REPLY #57110 /* ~"Co możesz powiedzieć mi o devie?"~ */ GOTO 19
  IF ~~ THEN REPLY #57111 /* ~"Nie, nie sądzę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 22 // from: 16.0
  SAY #57112 /* ~Gdy przygotowujesz się do podniesienia wozu, słyszysz krzyk bólu z drugiej strony wozu...~ */
  IF ~~ THEN EXTERN ~DBERROG~ 15
END

IF ~~ THEN BEGIN 23 // from:
  SAY #57113 /* ~"Miażdżysz mnie, głupcze! Nie możesz podnieść tego wozu nie przygniatając jednego z nas, a zaręczam, że bardziej ci się opłaci zmiażdżyć jego!"~ */
  IF ~~ THEN REPLY #57114 /* ~"Jak to?"~ */ GOTO 24
  IF ~~ THEN REPLY #57115 /* ~"W takim wypadku powinienem pomóc jemu. Zdajesz się być częścią zła, które trzyma to miasto w Tartarze."~ */ GOTO 25
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57116 /* ~"A może jednak uda się podnieść ten wóz tak, żebyście obaj przeżyli? Wraz z moimi towarzyszami powinniśmy być w stanie to uczynić, jeśli się postaramy."~ */ GOTO 26
  IF ~~ THEN REPLY #57117 /* ~"Zatem wrócę później, gdy już znajdę sposób."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 28.0
  SAY #57118 /* ~"Wciąż dowodzę strażnikami Klątwy... mogę ich zachęcić do walki, pomóc im, spowolnić napływ potworów, które stoją pomiędzy tobą a devą... uwolnij mnie, a twoje zadanie będzie łatwiejsze. Uwolnij jego, a nie uzyskasz nic."~ */
  IF ~~ THEN EXTERN ~DBERROG~ 18
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #57119 /* ~"To... to deva. Ten mały złodziej to nic w porównaniu z devą. Uwolnij mnie!"~ */
  IF ~~ THEN REPLY #57120 /* ~Podnieś wóz na Berroga: "Dobrze."~ */ DO ~Kill("Berrog")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~~ THEN REPLY #57121 /* ~Przygotuj się, by podnieść wóz z Berroga. "Sądzę, że zamiast tego uwolnię jego."~ */ EXTERN ~DBERROG~ 18
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57122 /* ~"A może jednak uda się podnieść ten wóz tak, żebyście obaj przeżyli? Wraz z moimi towarzyszami powinniśmy być w stanie to uczynić, jeśli się postaramy."~ */ GOTO 26
  IF ~~ THEN REPLY #57123 /* ~"Wrócę później, gdy będę coś mógł z tym zrobić."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.2
  SAY #57124 /* ~Ty i twoi towarzysze gromadzicie się wokół wozu i wspólnym wysiłkiem udaje wam się unieść wóz w taki sposób, że obu uwięzionym pod nim osobom udaje się wyczołgać.~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",3)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #57125 /* ~"Dzięki... człowieku. Idę teraz na mury, aby pomóc strażnikom. Moje miasto nie może zginąć." Uśmiecha się krzywo. "Nie zazdroszczę ci wojny z devą. On jest przerażającym przeciwnikiem. Trzymaj. Weź to. Może to pomóże."~ */
  IF ~~ THEN REPLY #57126 /* ~"Żegnaj."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
EscapeArea()
~ EXTERN ~DBERROG~ 14
END

IF ~~ THEN BEGIN 28 // from:
  SAY #57127 /* ~"Włodarzem, ty mały głupcze!" Odwraca się do ciebie.~ */
  IF ~~ THEN GOTO 24
END
