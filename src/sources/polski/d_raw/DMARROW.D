// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARROW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARROW~

IF ~  Global("Marrow","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2792 /* ~Nawet z daleka czujesz od mężczyzny smród gnoju i psującego się mięsa. Drobi nogami zapamiętale wśród śmieci. Mimo, że jest słaby i niedołężny, jego długie cienkie palce, jak i zapadnięte oczy, nadają mu groźny wygląd. Ponieważ mężczyzna ślini się i przewala oczami, zastanawiasz się, czy nie jest szalony.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17228 /* ~"Witaj..."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17229 /* ~"Witaj..."~ */ EXTERN ~DANNAH~ 102
  IF ~~ THEN REPLY #17230 /* ~Zostaw go.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2793 /* ~Stara się spojrzeć na ciebie, ale wzrok mu się rozprasza. Jego oczy osadzone są głęboko w zapadniętych oczodołach, a jego skóra jest okropnie blada i schorowana, pokryta jakąś wysypką i pożółkłymi płatami, które wyglądają, jakby w każdej chwili gotowe były odpaść. Smród dochodzący od niego jest przeraźliwy. Kiedy otwierasz usta, żeby się odezwać, oblizuje wargi i przełyka. "Jezdeś trupoo-szem?"~ */
  IF ~~ THEN REPLY #17231 /* ~"Co powiedziałeś?"~ */ GOTO 2
  IF ~~ THEN REPLY #17232 /* ~"Dobrze się czujesz?"~ */ GOTO 2
  IF ~~ THEN REPLY #17233 /* ~Zostaw go.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #17170 /* ~"Tyyyy..." Oblizuje znowu wargi i zaczyna się gapić na ciebie, skubiąc swoją skórę, swoimi długimi wrzecionowatymi palcami. "Jezdeś trupoo-szem?" Spogląda najpierw na twoją lewą stronę, po czym jego wzrok pada z powrotem na ciebie. "Trup? Trup? Głe-dnyyy." Wyciąga się, żeby cię dotknąć, oblizując swoje szorstkie wargi.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17234 /* ~Pozwól mu się dotknąć.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17235 /* ~Pozwól mu się dotknąć.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17236 /* ~Nie pozwól mu się dotknąć.~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 21.1
  SAY #17171 /* ~Jego palce, uczepiają się twojego ramienia, jak pająk, jakby szukały, który kawałek można by odedrzeć. Oblizuje znowu swoje spękane wargi i widzisz, jak leje się z nich żółta ślina. Jęcząc ochryple, mężczyzna wbija nagle palce w twoją skórę na ramieniu i odrywa kawałek mięsa. Rana choć niewielka, w twoim obecnym stanie okazuje się jednak śmiertelną... przewracasz się, martwy.~ */
  IF ~~ THEN REPLY #17237 /* ~Zrobione.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 21.0
  SAY #17172 /* ~Jego palce, uczepiają się twojego ramienia, jak pająk, jakby szukały, który kawałek można by odedrzeć. Oblizuje znowu swoje spękane wargi i widzisz, jak leje się z nich żółta ślina. Jęcząc ochryple, palce mężczyzny nagle wbijają się w twoją skórę na ramieniu i odrywają kawałek.~ */
  IF ~~ THEN REPLY #17239 /* ~Cofnij się.~ */ GOTO 6
  IF ~~ THEN REPLY #339 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 21.2
  SAY #17173 /* ~Tnie rękami powietrze, tuż obok ciebie, skamląc przy tym cicho, jak zraniony pies. "Głe-d-nyyy."~ */
  IF ~~ THEN REPLY #17242 /* ~Cofnij się.~ */ GOTO 7
  IF ~~ THEN REPLY #17243 /* ~Zostaw go.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #17174 /* ~Obserwujesz i czujesz jak kręci ci żołądkiem, kiedy odrywa ci kawałek ciała i pakuje do ust. Żuje go wolno, a potem połyka. "Jezdeś trupem?"~ */
  IF ~~ THEN REPLY #17245 /* ~"Nie, nie jestem trupem."~ */ GOTO 8
  IF ~~ THEN REPLY #17250 /* ~"Nie, ale za to ty będziesz już za chwileczkę..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #17248 /* ~Zostaw go.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17176 /* ~Jego ręka nagle strzela w górę, żeby złapać tłustą, białą larwę, która kręciła się niedaleko odpadów. Czujesz jak kręci ci żołądkiem, kiedy pakuje ją do ust. Żuje wolno, po czym połyka. "Jezdeś trupem?"~ */
  IF ~~ THEN REPLY #17249 /* ~"Nie, nie jestem trupem."~ */ GOTO 9
  IF ~~ THEN REPLY #17251 /* ~Zostaw go.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #17177 /* ~"Tyy smaaakuisz jaak trup." Drapie się pod ubraniem i nagle zauważasz, że na jego szyi wisi na sznurku palec. Wygląda na to, że jest na nim jakiś pierścień. "Ciungle głe-d-nyy."~ */
  IF ~~ THEN REPLY #17252 /* ~"Co zwykle jadasz?"~ */ GOTO 10
  IF ~~ THEN REPLY #17253 /* ~"Co to za palec?"~ */ GOTO 11
  IF ~~ THEN REPLY #17255 /* ~Zostaw go.~ */ GOTO 22
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #17178 /* ~"Tyyy wyglundusz na trupa." Drapie się pod ubraniem i nagle zauważasz, że u jego szyi wisi na sznurku palec. Wygląda na to, że jest na nim jakiś pierścień. "Ciungle głe-d-nyy."~ */
  IF ~~ THEN REPLY #17257 /* ~"Co zwykle jadasz?"~ */ GOTO 10
  IF ~~ THEN REPLY #17258 /* ~"Co to za palec?"~ */ GOTO 11
  IF ~~ THEN REPLY #17259 /* ~Zostaw go.~ */ GOTO 22
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #17179 /* ~Chrumka jak świnia. "Trupy."~ */
  IF ~~ THEN REPLY #17260 /* ~"Co to za palec?"~ */ GOTO 11
  IF ~~ THEN REPLY #17261 /* ~Zostaw go.~ */ GOTO 22
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0
  SAY #17180 /* ~Spogląda na dół, twarz udręczona zarazą wykrzywia się w szczerzącą wystającymi zębami upiorną parodię uśmiechu. "Przyykąska." Wygląda na gotowego, żeby ugryźć sobie kawałek.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17262 /* ~Powstrzymaj go.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17264 /* ~Powstrzymaj go.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17266 /* ~"Nie jedz tego. Zamiast tego ugryź sobie kawałek mojego ciała. Jestem świeższy."~ */ GOTO 14
  IF ~~ THEN REPLY #17269 /* ~Kłamstwo: "Nie jedz tego. Przyniosę ci zamiast tego całe ciało do jedzenia."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17271 /* ~Zostaw go.~ */ GOTO 22
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.1
  SAY #17181 /* ~Łapiesz go za rękę, a on zaczyna nią młócić jak cepem. Podczas szarpaniny odgryza spory kawałek z twojego ramienia i przez to musisz go puścić... rana nie jest straszna, ale w twoim obecnym stanie okazuje się śmiertelną. Upadasz, martwy.~ */
  IF ~~ THEN REPLY #17273 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 13.0
  SAY #17182 /* ~Łapiesz go za rękę, a on zaczyna nią młócić jak cepem. Podczas szarpaniny odgryza spory kawałek z twojego ramienia i musisz go puścić... nie z powodu bólu, tylko przeczucia, że jeszcze chwila tych zapasów, a jedynym wyjściem, jakie ci pozostanie to przetrącić go na pół. Przeżuwa przez chwilę kawałek, który ci odgryzł, po czym spogląda na palec u szyi.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17274 /* ~Nie pozwól mu zjeść palca.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17276 /* ~Nie pozwól mu zjeść palca.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17277 /* ~"Nie jedz tego. Zamiast tego ugryź sobie kawałek mojego ciała. Jestem świeższy."~ */ GOTO 14
  IF ~~ THEN REPLY #17278 /* ~Kłamstwo: "Nie jedz tego. Przyniosę ci zamiast tego całe ciało do jedzenia."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17280 /* ~Zostaw go.~ */ GOTO 22
END

IF ~~ THEN BEGIN 14 // from: 11.2 13.2 31.1 32.1
  SAY #17183 /* ~Uśmiecha się i sięga po twoją wyciągniętą rękę.~ */
  IF ~~ THEN REPLY #17281 /* ~"Najpierw daj mi ten palec, 'Przyjacielu Szpiku'."~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17282 /* ~Pozwól, żeby cię ugryzł.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17283 /* ~Pozwól, żeby cię ugryzł.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 15
  IF ~~ THEN REPLY #17285 /* ~Zostaw go.~ */ GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 14.2 17.1
  SAY #17184 /* ~Jego zęby zatapiają się w twoje przedramię i jednym pociągnięciem odrywają kawałek. Zbyt późno zdajesz sobie sprawę, że twój stan fizyczny, nie pozwala ci już na kolejne obrażenia, upadasz na ziemię, martwy.~ */
  IF ~~ THEN REPLY #17286 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.0
  SAY #17185 /* ~Jego zęby zatapiają się w twoje przedramię i jednym pociągnięciem odrywają kawałek. Podczas gdy ty cierpisz straszliwe katusze, Przyjaciel Szpiku przykuca, jak gdyby nic się nie stało i przeżuwa głośno kęs z kawałka, który oderwał.~ */
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17287 /* ~"Teraz... daj mi ten palec."~ */ GOTO 19
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17288 /* ~"Uch... dzięki. Żegnaj."~ */ EXIT
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17289 /* ~Zostaw go.~ */ GOTO 22
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17290 /* ~Zostaw go.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.0 19.0
  SAY #17186 /* ~Potakuje łapczywie głową pozwalając ci zabrać palec.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17291 /* ~Pozwól, żeby cię ugryzł.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17292 /* ~Pozwól, żeby cię ugryzł.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #17293 /* ~Nie pozwól, żeby cię ugryzł, odejdź.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_1","GLOBALGood",-1)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2 29.2
  SAY #17187 /* ~Kiedy wymykasz się spod jego zasięgu, zaczyna skomleć żałośnie, jak pies kopnięty precz przez swojego pana...~ */
  IF ~~ THEN REPLY #17294 /* ~Odejdź.~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #17188 /* ~Przyciska kurczowo palec do piersi, spoglądając na ciebie żałośnie i potrząsając głową. "Ni-eee. Głe-dnyyy!"~ */
  IF ~~ THEN REPLY #17295 /* ~"Pozwolę ci zjeść jeszcze kawałek mnie, jeśli oddasz mi ten palec."~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~~ THEN REPLY #17297 /* ~Zostaw go.~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 11.3 13.3
  SAY #17189 /* ~Oczy mu błyszczą. Odwraca uwagę od palca. "Doo-bra."~ */
  IF ~~ THEN REPLY #17298 /* ~"Przyniosę trochę... mięsa... dla ciebie. *Nie* jedz tego palca, bo nie będzie mięska. Żegnaj."~ */ DO ~SetGlobal("Marrow","GLOBAL",4)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #17190 /* ~Skamle ponuro: "Głee-dnyyy. Jezdeś trupoo-szem?" Drobi nogami do przodu, gapiąc się na twoje ramiona. "Trup? Głee-dnyyy." Wyciąga rękę, żeby cię dotknąć, żółta ślina spływa mu po brodzie.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17299 /* ~Pozwól mu się dotknąć.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17300 /* ~Pozwól mu się dotknąć.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17301 /* ~Nie pozwól mu się dotknąć.~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.2 9.2 10.1 11.4 13.4 14.3 16.2 19.1
  SAY #17191 /* ~Kiedy odchodzisz, ściąga palec ze sznurka i połyka go razem z pierścieniem.~ */
  IF ~~ THEN REPLY #17307 /* ~Odejdź.~ */ DO ~SetGlobal("Marrow","GLOBAL",3)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",0)
~ THEN BEGIN 23 // from:
  SAY #17193 /* ~Skamle ponuro: "Głee-dnyyy."~ */
  IF ~~ THEN REPLY #17308 /* ~"Proszę... odgryź sobie kawałek mojego ciała."~ */ GOTO 29
  IF ~~ THEN REPLY #17312 /* ~"To nie dobrze. Żegnaj."~ */ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #17194 /* ~Drobi w twoim kierunku, skomląc ponuro. "Głee-dnyyy."~ */
  IF ~~ THEN REPLY #17313 /* ~"Dlaczego za mną idziesz?"~ */ GOTO 25
  IF ~~ THEN REPLY #17314 /* ~Prawda: "Przestań za mną chodzić, albo cię zabiję. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17315 /* ~Blef: "Przestań za mną chodzić, albo cię zabiję. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17321 /* ~"Przestań za mną chodzić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17195 /* ~Wskazuje na twoje ręce, śliniąc się przy tym cały czas. "Pa-leeec... głee-dnyyy!"~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17322 /* ~"Dobrze. Proszę, ugryź sobie kawałek mojego ramienia."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 27
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17323 /* ~"Dobrze. Proszę, ugryź sobie kawałek mojego ramienia."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 26
  IF ~~ THEN REPLY #17325 /* ~Prawda: "Przestań za mną chodzić, albo cię zabiję. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17326 /* ~Blef: "Przestań za mną chodzić, albo cię zabiję. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17328 /* ~"Przestań za mną chodzić. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #17196 /* ~Jego zęby zatapiają się w twoje przedramię i jednym pociągnięciem odrywają kawałek. Zbyt późno zdajesz sobie sprawę, że twój stan fizyczny, nie pozwala ci już na kolejne obrażenia, upadasz na ziemię, martwy.~ */
  IF ~~ THEN REPLY #17329 /* ~Zapadnij w ciemność...~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0
  SAY #17197 /* ~Jego zęby zatapiają się w twoje przedramię i jednym pociągnięciem odrywają kawałek. Podczas gdy ty cierpisz straszliwe katusze, Przyjaciel Szpiku przykuca, jak gdyby nic się nie stało i przeżuwa głośno kęs z kawałka, który oderwał.~ */
  IF ~~ THEN REPLY #17330 /* ~"Nie łaź już za mną. Żegnaj."~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",3)
~ THEN BEGIN 28 // from:
  SAY #17198 /* ~Skamle ponuro: "Głee-dnyyy."~ */
  IF ~~ THEN REPLY #17331 /* ~"Proszę... odgryź sobie kawałek mojego ciała."~ */ GOTO 29
  IF ~~ THEN REPLY #17334 /* ~"To nie dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 28.0
  SAY #17199 /* ~"Mmm... mięskoo. Już nie głe-dnyyy...?" Mężczyzna sięga w kierunku twojego ramienia, zaczyna się ślinić, uśmiechając się przy tym obłąkanie.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17335 /* ~Pozwól, żeby cię ugryzł.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 34
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17336 /* ~Pozwól, żeby cię ugryzł.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 33
  IF ~~ THEN REPLY #17337 /* ~Wyrwij swoje ramię i odejdź od niego.~ */ GOTO 18
END

IF ~  Global("Marrow","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #17200 /* ~Klaska radośnie swoimi szponiastymi rękami. "Głee-dnyyy! Tyyy przynieś mmięskoo?" Żółta ślina wypływa mu z jego spękanych warg.~ */
  IF ~~ THEN REPLY #17338 /* ~Kłamstwo: "Tak, ale najpierw daj mi palec."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #17339 /* ~"Nie, jeszcze nie."~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17201 /* ~Kiwa głową łapczywie, po czym przerywa, węsząc powietrze wokół ciebie. "Tyyy nie maa-sz mmięskaaa! Tyyyy kłamieeesz... kłamieesz!"~ */
  IF ~~ THEN REPLY #17340 /* ~Kłamstwo: "Ja... musiałem to gdzieś zgubić. Niedługo wrócę."~ */ EXIT
  IF ~~ THEN REPLY #17341 /* ~"Proszę... zamiast tego odgryź sobie kawałek mojego ciała."~ */ GOTO 14
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #17202 /* ~"Nieee? Taaaki... głe-dnyyy..." Spogląda na palec, oblizując swoim żółtym jęzorem, strupami pokryte wargi.~ */
  IF ~~ THEN REPLY #17343 /* ~"Nie jedz tego... niedługo wracam."~ */ EXIT
  IF ~~ THEN REPLY #17344 /* ~"Proszę... zamiast tego odgryź sobie kawałek mojego ciała."~ */ GOTO 14
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #17205 /* ~Jego zęby zatapiają się w twoje przedramię i jednym pociągnięciem odrywają kawałek. Zbyt późno zdajesz sobie sprawę, że twój stan fizyczny, nie pozwala ci już na kolejne obrażenia, upadasz na ziemię, martwy.~ */
  IF ~~ THEN REPLY #17346 /* ~Zapadnij w ciemność...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.0
  SAY #17206 /* ~Jego zęby zatapiają się w twoje przedramię i jednym pociągnięciem odrywają kawałek. Podczas gdy ty cierpisz straszliwe katusze, Przyjaciel Szpiku przykuca, jak gdyby nic się nie stało i przeżuwa głośno kęs z kawałka, który oderwał.~ */
  IF ~~ THEN REPLY #17347 /* ~"Mam... nadzieję, że to pomoże. Żegnaj."~ */ EXIT
END
