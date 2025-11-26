// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINGRESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINGRESS~

IF ~  Global("Ingress","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3408 /* ~Widzisz owiniętą szmatami, wymizerowaną kobietę. Jej włosy są rozczochrane i brudne, a jej cera niezwykle ciemna. Ramiona ma pokryte śladami po oparzeniach; jej prawa dłoń to jedna bryła spalonego ciała... wygląda, jakby została stopiona, niczym wosk wystawiony na działanie gorąca.~ */
  IF ~~ THEN REPLY #3409 /* ~"Witaj."~ */ DO ~SetGlobal("Ingress","GLOBAL",1)
~ JOURNAL #28839 /* ~W mieście, na zewnątrz Kostnicy spotkałem oszpeconą kobietę o imieniu Ingressa. Była strasznie przerażona - bez wątpienia rany odcisnęły swe piętno na jej umyśle.~ */ GOTO 1
  IF ~~ THEN REPLY #6167 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6168 /* ~"Czego chcesz ode mnie?" Mówi z twardym akcentem i masz trudności z jej zrozumieniem. "Chcesz, żebym odeszła? NIE opuszczę tego miasta. Nie mogę, próbowałam, ale to nie miasto, to więzienie dla wszystkiego."~ */
  IF ~~ THEN REPLY #6169 /* ~"Więzienie dla wszystkiego?"~ */ DO ~SetGlobal("Ingress","GLOBAL",2)
~ GOTO 2
  IF ~~ THEN REPLY #6170 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.1 18.2
  SAY #6171 /* ~"Tu są światy, tu są..." Jej oczy błyszczą szaleńczo. "...sfery, które toną w piasku, spragnione pola, niewidzialne światy, które dają życie i nienawiść, miasta z pyłu, których mieszkańcy są pyłem, a ich mowa to popiół, dom bez drzwi, Świetlane Krainy, śpiewające wiatry, śpiewające wiatry..." Łka cicho, ale wydaje się, że brakuje jej łez. "I cienie... te okropne cienie."~ */
  IF ~~ THEN REPLY #6172 /* ~"Gdzie są te miejsca?"~ */ DO ~SetGlobal("Ingress","GLOBAL",3)
~ GOTO 3
  IF ~~ THEN REPLY #6173 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #6174 /* ~"Gdzie są? Gdzie są te miejsca?" Unosi kikut prawej ręki, wskazując na miasto. "Wszystkie są TUTAJ. Drzwi, drzwi, drzwi prowadzące *wszędzie*."~ */
  IF ~~ THEN REPLY #6175 /* ~"Drzwi?"~ */ GOTO 4
  IF ~~ THEN REPLY #6176 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 18.3
  SAY #6177 /* ~"Ty! Nie wiesz tego?!" Patrzy na ciebie, zaczyna szczękać zębami. "Powiem ci: Strzeż się każdego miejsca, w którym jesteś, lub którego dotykasz w tym potrójnie przeklętym mieście... Drzwi, bramy, łuki, okna, ramy obrazów, otwarte usta pomników, przestrzenie między półkami... Strzeż się KAŻDEJ ograniczonej z wszystkich stron przestrzeni. To WSZYSTKO są drzwi do innych miejsc."~ */
  IF ~~ THEN REPLY #6178 /* ~"Co masz na myśli?"~ */ DO ~SetGlobal("Ingress","GLOBAL",4)
~ GOTO 5
  IF ~~ THEN REPLY #6179 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.4
  SAY #6180 /* ~"Każde drzwi mają KLUCZ, dzięki któremu pokazują swą prawdziwą naturę... łuk staje się portalem... gotowym zabrać cię gdzie INDZIEJ. Porywają cię..." Unosi kikut. "A czasem to, co jest po drugiej stronie bierze sobie część ciebie jako DANINĘ."~ */
  IF ~~ THEN REPLY #6181 /* ~"Jakie to klucze?"~ */ GOTO 6
  IF ~~ THEN REPLY #6182 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #6183 /* ~"Klucze, jest ich tak wiele jak drzwi. Każde drzwi mają klucz, każdy klucz drzwi." Znów szczęka zębami, jak gdyby było jej zimno. "A klucz jest...? Klucz jest *czymkolwiek*. Może być uczuciem, żelaznym gwoździem, który trzymasz pomiędzy dwoma palcami, myślą, którą pomyślisz trzy razy, a potem jeszcze raz od tyłu, albo szklaną różą."~ */
  IF ~~ THEN REPLY #6184 /* ~"I wszystkie te klucze otwierają drzwi?"~ */ JOURNAL #28838 /* ~Ingressa ostrzegła mnie przed *drzwiami* w mieście... twierdzi, że każda zamknięta przestrzeń - rama obrazu, łuk, okno - mogą stać się portalami do innych miejsc. Trzeba tylko przejść obok nich mając odpowiedni klucz. Klucze mogą być właściwie wszystkim... pięciokrotnie pomyślane przekleństwo, szklana róża, uczucie... każde z nich może otworzyć drzwi do innych miejsc.~ */ GOTO 7
  IF ~~ THEN REPLY #6185 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6186 /* ~"Tak." Zaczyna szczękać zębami, więc ściska szczęki, zezując z wysiłku. "T-t-tak. Nie mogę odejść... nie mogę..."~ */
  IF ~~ THEN REPLY #6187 /* ~"Skąd się tu wzięłaś?"~ */ DO ~SetGlobal("Ingress","GLOBAL",5)
~ JOURNAL #28837 /* ~Ingressa została przeniesiona do miasta przez jedną z bram w jej sferze... Jadąc przez polanę gdzie stały oparte o siebie dwa martwe drzewa, zanuciła jakąś melodię. Wtedy otworzył się portal do tego miasta. Przeszła przez niego i od tej pory nie może znaleźć powrotnej drogi.~ */ GOTO 8
  IF ~~ THEN REPLY #6188 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 18.5
  SAY #6189 /* ~"Z..." Wydaje się uspokojona, a jej oczy przybierają konspiracyjny wyraz. "Przybyłam tu z dalekiego miejsca, całe życie temu, zanuciwszy pewną melodię na polanie z dwoma martwymi drzewami, które oparły się na sobie. Pomiędzy nimi otwarły się olśniewające drzwi, ukazując to miasto... Przeszłam na drugą stronę i tak się tu znalazłam."~ */
  IF ~~ THEN REPLY #6190 /* ~"Dlaczego nie możesz wrócić?"~ */ GOTO 9
  IF ~~ THEN REPLY #6191 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6192 /* ~"Próbowałam!" Zaczyna płakać, ale braknie jej łez. "Próbowałam! WSZYSTKIE drzwi DOKĄDŚ prowadzą." Wzdryga się i chwyta za kikut. "Przeszłam przez trzy razy po dziesięć portali, przez niektóre celowo, przez inne przypadkowo, ale żaden nie był tym, którego szukałam. Nie mogę odnaleźć drogi z powrotem..."~ */
  IF ~~ THEN REPLY #6193 /* ~"Musi istnieć portal, który zabierze cię z powrotem."~ */ GOTO 10
  IF ~~ THEN REPLY #6194 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #6195 /* ~"Nawet nie mogę stąd odejść! Z tego placu! A tu, za bramą, czeka na mnie śmierć!" Pokazuje na Kostnicę, a potem odwraca się do ciebie, jej twarz wyraża desperację. "Nigdzie w tym mieście nie mogę pójść!"~ */
  IF ~~ THEN REPLY #6196 /* ~"Nie możesz nigdzie iść? Co przez to rozumiesz?"~ */ GOTO 11
  IF ~~ THEN REPLY #6197 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #6198 /* ~"Wszystko może być drzwiami. Którykolwiek łuk, którekolwiek drzwi mogą być portalem, nie masz klucza, możesz zostać odesłany w inne okropne miejsce..." Znów szczęka zębami. "...muszę trzymać się z dala od zamkniętych przestrzeni, wszystkie mogą być drzwiami, mogę mieć ze sobą klucz, nawet o tym nie wiedząc..."~ */
  IF ~~ THEN REPLY #6199 /* ~"Ty... boisz się przejść przez JAKIEKOLWIEK drzwi lub łuk, ponieważ to *mógłby* być portal?"~ */ GOTO 12
  IF ~~ THEN REPLY #6200 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #6201 /* ~Kiwa głową, szczękając zębami.~ */
  IF ~~ THEN REPLY #6202 /* ~"Jak długo to już trwa?"~ */ GOTO 13
  IF ~~ THEN REPLY #6203 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #6204 /* ~Zezuje. "Od ostatniego razu, w którym przeszłam przez ostatni portal, w miejscu, gdzie moja dłoń..." Przerywa. "Od mojego dziesiątego Obrotu... Mam teraz cztery Obroty po dziesięć." Znów zaczyna szczękać zębami.~ */
  IF ~~ THEN REPLY #6205 /* ~"Trzydzieści lat? Nie przeszłaś przez *żadne* drzwi od trzydziestu lat?"~ */ GOTO 14
  IF ~~ THEN REPLY #6206 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6207 /* ~Chyba jej wzrok się przejaśnia. Patrzy na ciebie, wciąż szczękając zębami.~ */
  IF ~~ THEN REPLY #6208 /* ~"Skoro tu jesteś, musi być portal, który zabierze cię z powrotem. To tylko kwestia odnalezienia go..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #6209 /* ~"Bać się przejść przez *jakiekolwiek* drzwi, to..."~ */ GOTO 15
  IF ~~ THEN REPLY #6210 /* ~"Jak bardzo jesteś już *szalona*, kobieto? Musisz być głupia, że unikasz wszystkiego, co może być drzwiami..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #6211 /* ~"Przykro mi, ale muszę już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #6212 /* ~Uśmiecha się. Nie szczęka zębami, ponieważ jest jej zimno... one poruszają się w jej ustach, dziąsła skręcają się pod wpływem ich ruchu. Unoszą się i opadają, z grzechotem stukając jeden o drugi.~ */
  IF ~~ THEN REPLY #6213 /* ~"Co...?"~ */ GOTO 16
  IF ~~ THEN REPLY #6214 /* ~"Uch... lepiej już pójdę... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #6215 /* ~Syczy. "Wystarczy przypadkowo wejść w JEDEN portal i już zagnieżdża się w tobie STRACH. Przeszłam przez trzy razy po dziesięć, straciłam rękę, moje ciało płonęło, zostałam pozbawiona zmysłów." Patrzy na swoje stopy. "Nigdy więcej, nigdy więcej."~ */
  IF ~~ THEN REPLY #6216 /* ~"Przykro mi... jeśli znajdę jakiś sposób, żeby ci pomóc, zrobię to. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ingress_1","GLOBALGood",1)
~ JOURNAL #28836 /* ~Ingressa jest w pułapce z powodu swego strachu przed portalami... doświadczenia w podróżowaniu po sferach wywołały u niej takie przerażenie, iż nie przejdzie przez *nic* co mogłoby być portalem. Gdybym gdzieś w mieście znalazł doświadczonego obieżysfera, to może udałoby mi się odesłać ją z powrotem do domu.~ */ EXIT
  IF ~~ THEN REPLY #6217 /* ~"Więc zgiń w mieście, z którego boisz się odejść. Pozwól, by strach tobą rządził. Żegnaj i krzyżyk na drogę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ingress_1","GLOBALGood",-1)
~ JOURNAL #28835 /* ~Obłąkana kobieta o imieniu Ingressa tak bardzo boi się własnego cienia i wszystkiego co MOGŁOBY być portalem, że żyje jak pies na ulicach miasta. Raczej mi jej nie żal... Ale jeśli znajdę doświadczonego obieżysfera, znającego portal, którym się tu dostała, może wrócę i powiem jej o tym.~ */ EXIT
  IF ~~ THEN REPLY #6218 /* ~"Wezmę sobie twoje ostrzeżenia do serca. Żegnaj."~ */ JOURNAL #28836 /* ~Ingressa jest w pułapce z powodu swego strachu przed portalami... doświadczenia w podróżowaniu po sferach wywołały u niej takie przerażenie, iż nie przejdzie przez *nic* co mogłoby być portalem. Gdybym gdzieś w mieście znalazł doświadczonego obieżysfera, to może udałoby mi się odesłać ją z powrotem do domu.~ */ EXIT
END

IF ~  GlobalGT("Ingress","GLOBAL",0)
GlobalLT("Ingress","GLOBAL",7)
~ THEN BEGIN 17 // from:
  SAY #6219 /* ~Widzisz Ingressę. Kuli się w swym płaszczu z brudnych szmat, szczękając zębami. Ukradkiem obserwuje otoczenie, jak gdyby spodziewała się ataku.~ */
  IF ~~ THEN REPLY #6220 /* ~"Witaj, Ingresso."~ */ GOTO 18
  IF ~~ THEN REPLY #6221 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #6222 /* ~"Eee? Ty!" Patrzy na ciebie. "Czego tym razem chcesz?! Chcesz, żebym odeszła? NIE odejdę z tego miasta. Nie mogę, próbowałam już, to nie miasto, to więzienie dla wszystkiego."~ */
  IF ~  Global("Ingress","GLOBAL",6)
!Dead("Candrian")
~ THEN REPLY #6228 /* ~"Ingresso, odnalazłem kogoś, kto może odesłać cię do twojej rodzinnej sfery."~ */ DO ~SetGlobal("Ingress","GLOBAL",7)
~ GOTO 19
  IF ~  Global("Ingress","GLOBAL",1)
~ THEN REPLY #6223 /* ~"Więzienie dla wszystkiego? Co masz na myśli?"~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",2)
~ THEN REPLY #6224 /* ~"Opowiedz jeszcze o tych miejscach... tych sferach, w których byłaś."~ */ GOTO 2
  IF ~  Global("Ingress","GLOBAL",3)
~ THEN REPLY #6225 /* ~"O jakich to drzwiach mówiłaś?"~ */ GOTO 4
  IF ~  Global("Ingress","GLOBAL",4)
~ THEN REPLY #6226 /* ~"O jakich to kluczach mówiłaś?"~ */ GOTO 5
  IF ~  Global("Ingress","GLOBAL",5)
~ THEN REPLY #6227 /* ~"Skąd się tu wzięłaś?"~ */ GOTO 8
  IF ~~ THEN REPLY #28840 /* ~"Przepraszam, że zawracam ci głowę, Ingresso. Uważaj na siebie."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #28815 /* ~Ingressa pogrąża się w ciszy. "Chcę odejść. Chcę stąd ODEJŚĆ."~ */
  IF ~~ THEN REPLY #28841 /* ~"Nazywa się Kandrian. Wkrótce powinien tu być i pomóc ci... zaufaj mu, dobrze?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #28816 /* ~Nie mówi nic, po prostu kiwa głową szczękając zębami.~ */
  IF ~~ THEN REPLY #28842 /* ~"Pójdę spotkać się z Kandrianem w gospodzie 'Pod Gorejącym Człekiem' i upewnię się, że wszystko przebiega tak, jak należy. Bądź silna, Ingresso."~ */ JOURNAL #28834 /* ~Powiedziałem Ingressie, że przyjdzie do niej Kandrian i pomoże jej wrócić do domu. Spotkam się z nim później w karczmie Pod Gorejącym Człekiem, aby sprawdzić czy wszystko dobrze się skończyło.~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",7)
~ THEN BEGIN 21 // from:
  SAY #28817 /* ~Ingressa obserwuje cię z rezerwą. "Kun - dri - an?"~ */
  IF ~  !Dead("Candrian")
~ THEN REPLY #28843 /* ~"Nie, nie jestem Kandrianem... powinien zaraz tu być i pomóc ci. Pójdę zobaczyć się z nim w gospodzie 'Pod Gorejącym Człekiem' i zobaczę jak sprawy się mają. Bądź silna, Ingresso."~ */ EXIT
  IF ~  Dead("Candrian")
~ THEN REPLY #28844 /* ~"Nie, nie jestem Kandrianem... Kandrian miał pecha i nie żyje. Na szczęście i tak kiedyś się spotkacie. Żegnaj."~ */ EXIT
END
