// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGOE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGOE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30170 /* ~Przed tobą pojawia się podejrzanie wyglądający mężczyzna, który dłubie sobie w zębach czymś, co wygląda na mały, metalowy widelec. Jego pierś pokrywa zbroja ozdobiona wielkimi kolcami, u boku wisi długi nóż. Zauważasz, że nie ma prawego ucha.~ */
  IF ~~ THEN REPLY #30184 /* ~"Witaj."~ */ JOURNAL #28824 /* ~W północnej części Ula, w pobliżu wielkiej łukowatej bramy, spotkałem czające się w cieniu jednouche diabelstwo. Coś w jego oczach powiedziało mi, że lepiej z nim nie zadzierać.~ */ GOTO 1
  IF ~~ THEN REPLY #30185 /* ~Przejdź obok niego.~ */ JOURNAL #28824 /* ~W północnej części Ula, w pobliżu wielkiej łukowatej bramy, spotkałem czające się w cieniu jednouche diabelstwo. Coś w jego oczach powiedziało mi, że lepiej z nim nie zadzierać.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30171 /* ~Nie wychodząc z cienia, spogląda na ciebie zimno, jak gdyby chciał cię ocenić.~ */
  IF ~~ THEN REPLY #30186 /* ~"Powiedziałem *W-I-T-A-J*. Co jest... drugie ucho też nie w porządku?"~ */ GOTO 2
  IF ~~ THEN REPLY #30187 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #30188 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #30172 /* ~Jednouchy krzywi się groźnie. "Szpicuj się, trepie... albo zrobię podwiązki z twych jelit."~ */
  IF ~~ THEN REPLY #30189 /* ~"Jeśli chodzi ci o podwiązki... przypadkiem mam dwie na zbyciu. Twoja matka zostawiła je u mnie w łóżku."~ */ GOTO 13
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30190 /* ~"Jak straciłeś ucho?"~ */ GOTO 3
  IF ~  Global("Nestor_Quest","GLOBAL",1)
HasItem("NesFork","ThugOE")
!Dead("Nestor")
~ THEN REPLY #30191 /* ~"Chyba nie straciłeś ucha, obrabiając starca tu, w Ulu?"~ */ GOTO 4
  IF ~~ THEN REPLY #30192 /* ~Nie zwracaj uwagi na jego groźby i odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #30173 /* ~"Co mówisz?" Kładzie prawą rękę na rękojeści noża.~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #30193 /* ~"Jestem po prostu ciekawy. Każda blizna ma swoją historię... jak widzisz, wiem to z doświadczenia."~ */ GOTO 6
  IF ~~ THEN REPLY #30194 /* ~"Myślę, że straciłeś je obrabiając starca tu, w Ulu."~ */ GOTO 4
  IF ~~ THEN REPLY #30195 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1 6.1 7.1 8.1 9.1 10.1 11.2
  SAY #30174 /* ~"Nie mam pojęcia o czym mówisz, trepie." Obserwuje cię ze złością. "A teraz, lepiej zabieraj stąd swoje zniekształcone ścierwo, zanim wyrzeźbię na nim swoje imię!"~ */
  IF ~~ THEN REPLY #30196 /* ~"Oczywiście. Daj mi tylko widelec, który mu ukradłeś i już sobie idę."~ */ GOTO 5
  IF ~~ THEN REPLY #30197 /* ~"Wątpię, czy umiałbyś nawet *wypowiedzieć* swoje imię, ty opóźniony skurlu."~ */ GOTO 13
  IF ~~ THEN REPLY #30198 /* ~"Słuchaj... czemu sobie nie odpuścisz, póki masz jeszcze jedno ucho w całości?"~ */ GOTO 13
  IF ~~ THEN REPLY #30199 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #30175 /* ~Ruchem zbyt szybkim, by można go zauważyć, wyciąga nóż z pochwy i zaczyna nim groźnie wymachiwać przed twoim nosem. "Chodź, weź sobie, trepie!"~ */
  IF ~~ THEN REPLY #30200 /* ~"Jeśli tego chcesz... zapląsajmy."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30201 /* ~"Odłóż ten nóż, zanim zrobisz sobie krzywdę."~ */ GOTO 13
  IF ~~ THEN REPLY #30202 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0
  SAY #30176 /* ~"Tak, widać żeś widział swoją porcję rzezi." Chrząka lekko, następnie przebiega palcami po bliznach po głowie. "Przynajmniej wciąż masz uszy."~ */
  IF ~~ THEN REPLY #30203 /* ~"Co się stało?"~ */ GOTO 7
  IF ~~ THEN REPLY #30204 /* ~"To dlatego, że nie napadam na staruszków z ostrymi zębami."~ */ GOTO 4
  IF ~~ THEN REPLY #30205 /* ~"Tak zrobię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30177 /* ~"Chwilę temu, obrobiłem starego skurla, który aż się o to prosił..." Jego twarz przybiera ponury wyraz, gdy zaczyna opowiadać. "Głupi, stary pryk, nie chciał dać na wstrzymanie..."~ */
  IF ~~ THEN REPLY #30206 /* ~"Mów dalej..."~ */ GOTO 8
  IF ~~ THEN REPLY #30207 /* ~"Niech zgadnę... odgryzł ci ucho, więc rąbnąłeś go w łeb i zwinąłeś jego widelec. Zgadza się?"~ */ GOTO 4
  IF ~~ THEN REPLY #30208 /* ~"Ciekawe... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30178 /* ~"No to musiałem ostro z tym starym skurlem... a kiedyśmy się prali, chwycił mnie za ucho i równiutko je odgryzł!"~ */
  IF ~~ THEN REPLY #30209 /* ~"Więc co się stało?"~ */ GOTO 9
  IF ~~ THEN REPLY #30210 /* ~"A więc to *ty* ukradłeś widelec Nestora."~ */ GOTO 4
  IF ~~ THEN REPLY #30211 /* ~"Ciekawe... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #30179 /* ~"Jak myślisz, co się stało? Ten walnięty skurl odgryzł mi ucho, więc walnąłem go w łeb i wpisałem do Księgi Umarłych! Przykro mi, że tak się stało..." Rozgląda się nerwowo i kontynuuje. "Myślę, że jego dusza mnie prześladuje."~ */
  IF ~~ THEN REPLY #30212 /* ~"Prześladuje?"~ */ GOTO 10
  IF ~~ THEN REPLY #30213 /* ~"Ten stary nie umarł, głupcze. Rozmawiałem z nim tam, przy karczmie i powiedział, że chce swój widelec z powrotem."~ */ GOTO 4
  IF ~~ THEN REPLY #30214 /* ~"Ciekawe... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30180 /* ~Przytakuje i szybko robi znak półkola na piersi. "Tak, to prawda. Czasami słyszę jego głos w głowie, jak przeklina i mówi, że na mnie czeka. Można się zerżnąć w pory."~ */
  IF ~~ THEN REPLY #30215 /* ~"Może potrafię ci pomóc... żeby cię już nie prześladowała."~ */ GOTO 11
  IF ~~ THEN REPLY #30216 /* ~"Ten stary nie umarł, głupcze. Rozmawiałem z nim tam, przy karczmie i powiedział, że chce swój widelec z powrotem."~ */ GOTO 4
  IF ~~ THEN REPLY #30217 /* ~"Ciekawe... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #30181 /* ~Cofa się o krok i lekko unosi głowę. "Możesz to zrobić? Jak?"~ */
  IF ~~ THEN REPLY #30218 /* ~"Wpisując *CIEBIE* do księgi umarłych, ty brudny, złodziejski pomiocie."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_OE_1","GLOBALGood",-1)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #30219 /* ~Kłamstwo: "Mam moc nad zmarłymi. Wszystko czego potrzebuję, by uciszyć tę duszę, to przedmiot, który należał do niej za życia."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_OE_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #30220 /* ~"Daj mi to, co mu ukradłeś, a zobaczysz, że zostawi cię w spokoju."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_OE_1","GLOBALLaw",1)
~ GOTO 4
  IF ~~ THEN REPLY #30221 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #30182 /* ~Obserwuje cię podejrzliwie przez chwilę, potem wzrusza ramionami, wyraźnie zrezygnowany. "W porządku, śmiałku... proszę bardzo. I tak nie wierzę, żeby coś z tego było." Podaje ci mały, stalowy widelec. "Po prostu pozbądź się tego ducha, dobra?"~ */
  IF ~~ THEN REPLY #30222 /* ~"Nie bój się... ta dusza nie będzie cię już nękać. Żegnaj."~ */ DO ~GiveItem("NesFork",[PC])
AddexperienceParty(200)
EscapeArea()
~ JOURNAL #28823 /* ~Zdołałem wywieść w pole jednouche diabelstwo i zdobyłem widelec Nestora. Jednouchy powiedział, że nawiedzają go duchy i słyszy głosy w swojej głowie. Jest pewnie równie szalony jak ten starzec.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 4.1 4.2 5.1 11.0
  SAY #30183 /* ~"Masz ostry język, trepie. Myślę, że powinienem go uciąć, a potem nim ciebie nakarmić!" Rzuca się na ciebie, nóż błyszczy mu w dłoni.~ */
  IF ~~ THEN REPLY #30223 /* ~Broń się.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
