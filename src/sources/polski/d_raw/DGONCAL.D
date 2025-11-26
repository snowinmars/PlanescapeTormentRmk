// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGONCAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGONCAL~

IF ~  Global("Goncalves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2923 /* ~Ten niski, krępy mężczyzna w średnim wieku, nosi ubrania, które wydają się być utkane ze szczerego złota. W rękach trzyma tkaninę przymocowaną do drewnianej ramy; właśnie wyszywa na niej jakiś wzór.~ */
  IF ~~ THEN REPLY #2924 /* ~"Witaj..."~ */ DO ~SetGlobal("Goncalves","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44148 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.1 25.0
  SAY #44149 /* ~Mężczyzna zdaje się nie zauważać twojej obecności. Wciąż wyszywa, mamrocząc do siebie... Gdy szyje, migoczące drobiny światła wydają się skrzyć i spadać z czubka igły.~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44150 /* ~"Dobry panie! Czy słyszałeś co powiedziałem?"~ */ GOTO 2
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44151 /* ~"Powiedziałem 'witaj'."~ */ GOTO 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44152 /* ~"Dobry panie! Czy słyszałeś co powiedziałem?"~ */ EXTERN ~DGRACE~ 142
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44153 /* ~"Powiedziałem 'witaj'."~ */ EXTERN ~DGRACE~ 142
  IF ~~ THEN REPLY #44154 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #44155 /* ~Mężczyzna nie podnosi oczu znad swej pracy, a gdy odpowiada, obrzydliwie marszczy tym brwi: "Tak, tak,... i jestem pewien, że to czego ci trzeba jest naprawdę *całkiem* pilne. A teraz, czy przez chwile możesz być cicho..."~ */
  IF ~~ THEN REPLY #44156 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #44157 /* ~Czekaj spokojnie.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44158 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44160 /* ~Uśmiecha się, ale nie odpowiada.~ */
  IF ~~ THEN REPLY #44161 /* ~"Powiedziałem: 'Mam kilka pytań...'"~ */ GOTO 4
  IF ~~ THEN REPLY #44162 /* ~Czekaj spokojnie.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #66869 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44163 /* ~Zaczyna się rumienić; zaciska zęby, ale wciąż nie chce na ciebie patrzeć. "Nie *obchodzi* mnie, czy masz jakieś pytania! Bądź cicho, lub bądź tak miły i *opuść* mój sklep!"~ */
  IF ~~ THEN REPLY #44164 /* ~"Odpowiedz na moje pytania, *krawcze*... lub będą kłopoty."~ */ GOTO 5
  IF ~~ THEN REPLY #44165 /* ~Czekaj spokojnie.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44166 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1
  SAY #44167 /* ~W napadzie wściekłości rzuca tkaninę. Gdy krzyczy, drobinki śliny rozpryskują się wokoło: "W porządku, *kłopoty* to będą wtedy, kiedy pojawią się straże, by rozwalić cię na kawałki! A teraz, WON! WON! WON Z MEGO SKLEPU! Zanim zawołam Harmonium!"~ */
  IF ~~ THEN REPLY #44168 /* ~"*Spróbuj* to zrobić."~ */ DO ~SetGlobal("Goncalves","GLOBAL",3)
SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44169 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.1 4.1
  SAY #44170 /* ~Nareszcie odkłada szycie i spogląda na ciebie. Zanim jednak udaje ci się przemówić, nagle podnosi następną rzecz i zabiera się do pracy. Znowu, gdy pracuje, wydaje się, że z tkaniny spadają małe, kolorowe iskierki.~ */
  IF ~~ THEN REPLY #44171 /* ~"Słuchaj, mam tylko kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #44172 /* ~"Odpowiedz na moje pytania, *krawcze*... albo będą kłopoty."~ */ GOTO 5
  IF ~~ THEN REPLY #44173 /* ~Poczekaj jeszcze trochę.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44174 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44175 /* ~Mężczyzna wzdycha głośno. "Bez wątpienia. A teraz, bądź tak miły i poczekaj chwilę - jestem pewien, że nie umrzesz, jeśli powstrzymasz język jeszcze przez chwilę..."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 211
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44176 /* ~"Odpowiedz na moje pytania, *krawcze*... albo będą kłopoty."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44177 /* ~Poczekaj jeszcze trochę.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44178 /* ~Odjedź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.2
  SAY #44179 /* ~W końcu kończy pracę i odkłada ją, by się tobie przyjrzeć. "Witaj. Jestem Gonkalf. Dlaczego chciałeś się ze mną zobaczyć?"~ */
  IF ~~ THEN REPLY #44180 /* ~"Mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #44181 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.1 13.1 14.1 14.2 16.1 16.2 22.0 24.0 26.0
  SAY #44182 /* ~"Hmm? Mam nadzieję, że chodzi o ubrania i tak dalej. Nie odpowiem na jakiekolwiek pytanie, które nie dotyczy mnie lub mojego sklepu."~ */
  IF ~  GlobalGT("Malmaner","GLOBAL",1)
GlobalLT("Malmaner","GLOBAL",4)
Global("Goncalves_Costume1","AR0611",0)
~ THEN REPLY #44183 /* ~"Chcę kupić kostium Grabarza."~ */ DO ~SetGlobal("Malmaner","GLOBAL",3)
~ GOTO 14
  IF ~  GlobalGT("Malmaner","GLOBAL",3)
GlobalLT("Malmaner","GLOBAL",6)
Global("Goncalves_Costume2","AR0611",0)
~ THEN REPLY #44184 /* ~"Chcę kupić inny kostium."~ */ DO ~SetGlobal("Malmaner","GLOBAL",5)
~ GOTO 16
  IF ~  Global("Know_Goncalves_Mage","AR0611",0)
~ THEN REPLY #44185 /* ~"Gdy wyszywałeś, co to były za światełka?"~ */ DO ~SetGlobal("Know_Goncalves_Mage","AR0611",1)
~ GOTO 12
  IF ~  Global("Know_Goncalves_Mage","AR0611",1)
~ THEN REPLY #44186 /* ~"Czy masz jakieś magiczne ubrania?"~ */ GOTO 13
  IF ~~ THEN REPLY #66876 /* ~"Dostanę tu igłę i nici?"~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44188 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44189 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #44194 /* ~.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #44198 /* ~"To? To nic, panie, tylko trochę sztuki, na którą czasem sobie pozwalam, gdy poniesie mnie fantazja. Rzeczy, które obdarowuję oczarowaniem to wyroby wyjątkowe, które rzadko się sprzedają."~ */
  IF ~~ THEN REPLY #44199 /* ~"Czy masz jakieś magiczne ubrania?"~ */ GOTO 13
  IF ~~ THEN REPLY #44200 /* ~"Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #44201 /* ~"To wszystko, co muszę wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3 12.0
  SAY #44202 /* ~Gonkalf lustruje cię wzrokiem, marszcząc brwi. "Na pewno nic, co by na *ciebie* pasowało."~ */
  IF ~~ THEN REPLY #44203 /* ~"Niemniej jednak, chciałbym zobaczyć, co masz w ofercie."~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #67828 /* ~"W takim razie mam jeszcze jedno pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #67829 /* ~"W takim razie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #44204 /* ~"Masz więc szczęście, panie... Przypadkiem mam jeden na stanie. Kosztuje trzydzieści miedziaków."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44205 /* ~"Biorę."~ */ DO ~DestroyPartyGold(30)
GiveItemCreate("Costume1",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume1","AR0611",1)
~ GOTO 15
  IF ~  PartyGoldLT(30)
~ THEN REPLY #44206 /* ~"Hmm... nie mam tyle. Mam następne pytanie..."~ */ GOTO 9
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44207 /* ~"Właściwie nieważne. Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #44208 /* ~"Być może wrócę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44209 /* ~Gonkalf wyciąga spod lady kilka starannie złożonych szat. "Proszę bardzo, panie. Ale ostrzegam: jeśli chcesz go włożyć na nadchodzącą maskaradę Lorda Irda, wiedz, że będzie tam wielu ludzi przebranych za Grabarzy."~ */
  IF ~~ THEN REPLY #44210 /* ~"Zapamiętam to. Żegnaj, Gonkalfie."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY #44211 /* ~Gonkalf kiwa głową i uśmiecha się ze zrozumieniem. "W końcu grabarz wydał ci się zbyt zwyczajny, co? Dobrze, mam przypadkiem kostium Bogowca, jeśli chcesz. Będzie cię to kosztować tylko pięćdziesiąt miedziaków."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44212 /* ~"Biorę."~ */ DO ~DestroyPartyGold(50)
GiveItemCreate("Costume2",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume2","AR0611",1)
~ GOTO 17
  IF ~  PartyGoldLT(50)
~ THEN REPLY #44213 /* ~"Hmm... nie mam tyle. Mam następne pytanie..."~ */ GOTO 9
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44214 /* ~"Właściwie nieważne. Mam następne pytanie..."~ */ GOTO 9
  IF ~~ THEN REPLY #44215 /* ~"Być może wrócę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #44216 /* ~Gonkalf wyjmuje spod lady kilka złożonych ubrań, oraz ciężki, skórzany fartuch i buty robocze. "Proszę bardzo, panie. Baw się dobrze na maskaradzie."~ */
  IF ~~ THEN REPLY #44217 /* ~"Dzięki, Gonkalfie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #44218 /* ~Mężczyzna spogląda w górę i wydaje się, że po raz pierwszy zauważa Annę. Powoli cmokając, potrząsa głową. "Dziewczyno, cóż na wściekłe wichry Pandemonium opętało cię, by tak się ubrać?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 212
END

IF ~~ THEN BEGIN 19 // from:
  SAY #44219 /* ~Pokazuje strój Anny. "Skóra, moja panno. Jej czysta niepraktyczność. Podkreślony biust, a w szczególności to *tak wygodne* wycięcie na górze. Ten strój był z pewnością zaprojektowany po to, by złagodzić czyjąś burzę hormonów, ale nie dla twojej wygody. Nawet jeśli w ten sposób *chcesz* uwłaczać autorytetom i przyzwoitości, jak diabelstwa zwykły to robić, na dłuższą metę to ci tylko szkodzi..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 472
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44220 /* ~Spróbuj przeszkodzić.~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44221 /* ~Niech rozmawiają.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #44222 /* ~Gonkalf dalej beszta Annę. "Naprawdę, wyglądasz bardziej na przygotowaną na spotkanie w Gmachu Rozrywki niż..." Marszczy brwi. "Nawiasem mówiąc, nie jesteś Czuciowcem, prawda?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 213
END

IF ~~ THEN BEGIN 21 // from:
  SAY #44223 /* ~Krawiec kiwa głową. "Tak właśnie sądziłem. A teraz pozwól mi ubrać cię w coś bardziej skromnego..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 473
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44224 /* ~Spróbuj przeszkodzić.~ */ EXTERN ~DANNAH~ 214
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44225 /* ~Niech rozmawiają.~ */ EXTERN ~DANNAH~ 214
END

IF ~~ THEN BEGIN 22 // from:
  SAY #44226 /* ~"Jak chcesz, moja pani." Gonkalf patrzy na ciebie. "A teraz, panie, skoro skutecznie przerwałeś mi pracę... Jestem Gonkalf. Czemu chciałeś się ze mną widzieć?"~ */
  IF ~~ THEN REPLY #44227 /* ~"Mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #44228 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #44229 /* ~Gonkalf natychmiast zostawia swą pracę i kłania się grzecznie Nie-Sławie, która odwzajemnia ukłon. "Witaj, Pani Sławo. Jak mogę ci dziś pomóc? Twoje zamówienie jest prawie gotowe..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 143
END

IF ~~ THEN BEGIN 24 // from:
  SAY #44230 /* ~"Oczywiście!" Gonkalf odwraca się do ciebie. "A więc, panie... Czemu chciałeś się ze mną widzieć?"~ */
  IF ~~ THEN REPLY #44231 /* ~"Mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #44232 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #44233 /* ~Krawiec wciąż wyszywa wzory na tkaninie, którą wcześniej trzymał. Wydaje się w ogóle cię nie zauważać.~ */
  IF ~~ THEN REPLY #44234 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #44235 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #44236 /* ~Gonkalf odkłada coś, nad czym pracował i kłania się. "Znów przychodzisz, panie... dobrze. W czym mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #44237 /* ~"Mam parę pytań..."~ */ GOTO 9
  IF ~~ THEN REPLY #44238 /* ~"Tylko przechodziłem, Gonkalfie. Żegnaj."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #44240 /* ~Krawiec drwi z ciebie. "Radziłbym ci *wyjść*, panie, zanim znowu zawołam straże. Żadne słowa ni czyny nie sprawią, że wybaczę ci to, jak mnie obraziłeś. Odejdź!"~ */
  IF ~~ THEN REPLY #44242 /* ~"Dalej, zawołaj straże."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44243 /* ~Odjedź.~ */ EXIT
END
