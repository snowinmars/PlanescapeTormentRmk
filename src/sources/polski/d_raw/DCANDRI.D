// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANDRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANDRI~

IF ~  Global("Ingress","GLOBAL",7)
!Dead("Ingress")
~ THEN BEGIN 0 // from:
  SAY #3068 /* ~Kandrian wstaje, gdy do niego podchodzisz. "Kobieta z zębami chciała, żebyś to wziął" mówi, wyciągając dłoń. "Chciała wyrazić swoje podziękowania i pozbyć się tego przekleństwa." Na jego dłoni spoczywają tańczące zęby Ingressy. Przekazuje ci je. "Niech ci służą, poszukiwaczu."~ */
  IF ~~ THEN REPLY #3364 /* ~"Mam jeszcze kilka pytań..."~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~Gdy wróciłem do Kandriana po wyzwoleniu Ingressy z Sigil, wręczył mi podarunek od niej: jej tańczące zęby. Cudownie.~ */ GOTO 5
  IF ~~ THEN REPLY #12009 /* ~"Żegnaj."~ */ DO ~SetGlobal("Ingress","GLOBAL",8)
GiveItemCreate("ICteeth",Protagonist,1,0,0)
AddexperienceParty(750)
~ JOURNAL #28753 /* ~Gdy wróciłem do Kandriana po wyzwoleniu Ingressy z Sigil, wręczył mi podarunek od niej: jej tańczące zęby. Cudownie.~ */ EXIT
END

IF ~  Global("Ingress","GLOBAL",8)
~ THEN BEGIN 1 // from:
  SAY #12010 /* ~Ponownie uderza cię niematerialna istota egzystencji tego człowieka i ponownie przykuwa twoją uwagę, gdy zwraca na ciebie swoje błękitne oczy. "Czy twoje podróże przyniosły ci to, czego pragnąłeś?"~ */
  IF ~~ THEN REPLY #12011 /* ~"Jeszcze nie. Mam do ciebie kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12012 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12013 /* ~Widzisz delikatnego człowieka o spokojnych, wpatrzonych w dal oczach. Ubrany jest w giętkie skórzane ubranie i obwieszony jest różnego rodzaju przedmiotami, takimi jak liny, kolce, krzesiwa, czy puste fiolki z powietrzem. Wygląda jakby go w połowie nie było - dosłownie. W jego istocie jest jakaś niematerialność, jakby coś wyssało jego esencję. Skupia na tobie swój wzrok i nagle stwierdzasz, że przykuwają one uwagę i pełne są determinacji. "Witaj, poszukiwaczu."~ */
  IF ~~ THEN REPLY #12014 /* ~"Witaj."~ */ GOTO 4
  IF ~~ THEN REPLY #12015 /* ~"Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #12016 /* ~Ponownie uderza cię niematerialna istota egzystencji tego człowieka i ponownie przykuwa twoją uwagę, gdy zwraca na ciebie swoje błękitne oczy. "Czy twoje podróże przyniosły ci to, czego pragnąłeś?"~ */
  IF ~~ THEN REPLY #12017 /* ~"Jeszcze nie. Mam do ciebie kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12018 /* ~"Jeszcze nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12019 /* ~Ostrożnie odstawia trzymany kufel i skupia na tobie całą swoją uwagę. "Widziałem odległe krańce wieloświata i wróciłem do Sigil, by o nich opowiedzieć. Stąpałem po ciałach martwych bogów i nawijałem promienie księżyca w Astralu stojąc naprzeciw tysiąca krzyczących rycerzy githyanki. Przekroczyłem granice egzystencji i patrzyłem, jak moja esencja drży przede mną. Cóż mogę dla ciebie uczynić?"~ */
  IF ~~ THEN REPLY #12020 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12021 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0 3.0 4.0 6.0 7.1 8.5 9.5 10.2 11.6 12.2 13.1 14.1 15.1 16.3 17.2 18.5 19.5 20.5 21.2 22.2 23.2 24.6 25.4 26.3 27.3 28.2 29.2 30.2 31.2 32.2 33.1 34.2 35.2 36.3 37.1 38.1 39.1 40.1 41.2 42.0 43.0 44.0 45.0
  SAY #12022 /* ~"Może znam odpowiedzi, których szukasz. Mów, a ja ci odpowiem."~ */
  IF ~  !Dead("Ingress")
Global("Ingress","GLOBAL",5)
~ THEN REPLY #12023 /* ~"Spotkałem kobietę o imieniu Ingressa z *bardzo* złymi zębami. Powiedziała, że przybyła z jakiegoś świata przez portal, który otwiera się melodią nuconą w okolicy dwóch skrzyżowanych drzew. Czy możesz zabrać ją do domu?"~ */ DO ~SetGlobal("Ingress","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #12024 /* ~"Kim jesteś?"~ */ GOTO 7
  IF ~~ THEN REPLY #12025 /* ~"Co tutaj robisz?"~ */ GOTO 40
  IF ~~ THEN REPLY #12026 /* ~"Co to za miejsce?"~ */ GOTO 41
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12027 /* ~"Szukam zgubionego dziennika."~ */ GOTO 44
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12028 /* ~"Czy znasz Zbieracza o imieniu Farod?"~ */ GOTO 45
  IF ~~ THEN REPLY #12029 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12030 /* ~Milknie na chwilę, zamyślony. "Znam portal, o którym mówisz, choć nie używałem go od dobrych trzydziestu lat. Zabiorę ją do domu, poszukiwaczu. Idź, powiedz jej, by oczekiwała mojego przybycia, po czym spotkajmy się tu ponownie i powiem ci, czy mi się udało, czy nie."~ */
  IF ~~ THEN REPLY #12031 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ JOURNAL #28754 /* ~Rozmawiałem z Kandrianem o Ingressie i powiedział, że może zaprowadzić ją do domu. Mam jej przekazać, aby go oczekiwała, a następnie spotkać się z nim "Pod Gorejącym Człekiem".~ */ GOTO 5
  IF ~~ THEN REPLY #12032 /* ~"Dzięki. Żegnaj."~ */ JOURNAL #28754 /* ~Rozmawiałem z Kandrianem o Ingressie i powiedział, że może zaprowadzić ją do domu. Mam jej przekazać, aby go oczekiwała, a następnie spotkać się z nim "Pod Gorejącym Człekiem".~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #12033 /* ~"Jestem Kandrian Poroniony, podróżnik, marzyciel, gawędziarz i tak dalej."~ */
  IF ~~ THEN REPLY #12034 /* ~"Jesteś podróżnikiem? Opowiedz mi o sferach."~ */ GOTO 8
  IF ~~ THEN REPLY #12035 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12036 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #12037 /* ~"Jestem zmęczony, poszukiwaczu, tak zmęczony... świeżo wróciłem z negacji. Opowiem ci tyle, ile będę w stanie, ale nie mogę obiecać, że będziesz zadowolony z moich odpowiedzi. Co chcesz wiedzieć? Czy chciałbyś usłyszeć o Sferach Zewnętrznych, Głównej Sferze Materialnej, czy Sferach Wewnętrznych?"~ */
  IF ~~ THEN REPLY #12038 /* ~"Co za różnica?"~ */ GOTO 10
  IF ~~ THEN REPLY #12039 /* ~"Opowiedz mi o Sferach Zewnętrznych."~ */ GOTO 11
  IF ~~ THEN REPLY #12040 /* ~"Opowiedz mi o Sferach Wewnętrznych."~ */ GOTO 35
  IF ~~ THEN REPLY #12041 /* ~"Opowiedz mi o Głównej Sferze Materialnej."~ */ GOTO 39
  IF ~~ THEN REPLY #12042 /* ~"Prosto z negacji? Co masz na myśli?"~ */ GOTO 36
  IF ~~ THEN REPLY #12043 /* ~"O niczym. Ale mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12044 /* ~"O niczym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 13.0 17.1 18.4 19.3 20.4 34.0 35.1 36.2 37.0 38.0 39.0
  SAY #12045 /* ~"Chciałbyś dowiedzieć się czegoś więcej o sferach? Pytaj, a odpowiem ci najlepiej, jak potrafię. Czy chciałbyś usłyszeć o Sferach Zewnętrznych, Głównej Sferze Materialnej, czy Sferach Wewnętrznych?"~ */
  IF ~~ THEN REPLY #12046 /* ~"Co za różnica?"~ */ GOTO 10
  IF ~~ THEN REPLY #12047 /* ~"Opowiedz mi o Sferach Zewnętrznych."~ */ GOTO 11
  IF ~~ THEN REPLY #12048 /* ~"Opowiedz mi o Sferach Wewnętrznych."~ */ GOTO 35
  IF ~~ THEN REPLY #12049 /* ~"Opowiedz mi o Głównej Sferze Materialnej."~ */ GOTO 39
  IF ~~ THEN REPLY #12050 /* ~"Co miałeś na myśli, mówiąc wcześniej o 'negacji'?"~ */ GOTO 36
  IF ~~ THEN REPLY #12051 /* ~"O niczym. Ale mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12052 /* ~"O niczym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #12053 /* ~"Różnica tkwi w prawdziwej esencji, poszukiwaczu. Sfery Wewnętrzne to materia, substancja, prawdziwa fizyczność. One budują wieloświat, ponieważ to z nich wytryska cała wiara w żywioły. Sfery Wewnętrzne przechodzą przez Sferę Eteryczną - niektórzy mówią o niej sfera możliwości, która przekształca żywioły w światy śmiertelników. Gdy przekroczy się Eter, dociera się do Głównej albo Pierwszej Sfery Materialnej, gdzie żyją wszelkiej maści śmiertelnicy, potwory, mity i maszyny. To tam rodzi się wiara i tam rodzą się duchy tworzące Plany Zewnętrzne. Gdy śmiertelnicy umierają, przechodzą przez Astral, nie-miejsce, o którym twierdzi się, że jest czystą energią umysłu. Istnieje on we wszystkich rzeczach i w żadnej. Jest on, między innymi, paradoksem. Przesiewa też dusze zmierzające do Wielkiego Kręgu. Czy wszystko zrozumiałeś?"~ */
  IF ~~ THEN REPLY #12054 /* ~"Tak. Mów dalej."~ */ GOTO 11
  IF ~~ THEN REPLY #12055 /* ~"Nie jestem pewien."~ */ GOTO 12
  IF ~~ THEN REPLY #12056 /* ~"Zapomnij o tych pytaniach. Mam kilka innych..."~ */ GOTO 5
  IF ~~ THEN REPLY #12057 /* ~"Porozmawiamy o tym później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #12058 /* ~"Dobrze... Sfery Zewnętrzne... Od czego by tu zacząć? Czy znasz podstawowe zasady sfer, na których wszystko się opiera? Wiesz jak wygląda rozkład Sfer Zewnętrznych? Czy wiesz o Wielkim Kręgu i jego podziale w naszych sercach? Czy znasz pojedyncze sfery? Każde z tych pytań prowadzi do następnego, więc najlepiej zacząć od początku."~ */
  IF ~  Global("Know_Rule_Of_3","GLOBAL",1)
~ THEN REPLY #12059 /* ~"Opowiedz mi o podstawowych zasadach."~ */ GOTO 14
  IF ~~ THEN REPLY #12060 /* ~"Opowiedz mi o rozkładzie sfer."~ */ GOTO 15
  IF ~~ THEN REPLY #12061 /* ~"Opowiedz mi o Wielkim Kręgu i jego podziałach."~ */ GOTO 17
  IF ~~ THEN REPLY #12062 /* ~"Opowiedz mi o konkretnych planach."~ */ GOTO 18
  IF ~~ THEN REPLY #12063 /* ~"Opowiedz mi raczej o Sferach Wewnętrznych."~ */ GOTO 35
  IF ~~ THEN REPLY #12064 /* ~"Opowiedz mi raczej o Głównej Sferze Materialnej."~ */ GOTO 39
  IF ~~ THEN REPLY #12065 /* ~"Zapomnij o tym. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12066 /* ~"Może zrobimy to później. Żegnaj."~ */ EXIT
  IF ~  Global("Know_Rule_Of_3","GLOBAL",0)
~ THEN REPLY #28755 /* ~"Opowiedz mi o podstawowych zasadach."~ */ DO ~SetGlobal("Know_Rule_Of_3","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #12160 /* ~"Sfery Wewnętrzne to substancja. One tworzą materię. Prowadzą do Głównej Sfery Materialnej, która jest życiem, śmiercią i narodzinami myśli. Główna prowadzi do Sfer Zewnętrznych, w których wiara staje się rzeczywistością, a myślom nadaje kształt. Czy to dla ciebie łatwiejsze?"~ */
  IF ~~ THEN REPLY #12161 /* ~"Wciąż nie rozumiem."~ */ GOTO 13
  IF ~~ THEN REPLY #12162 /* ~"Tak. Mów dalej."~ */ GOTO 11
  IF ~~ THEN REPLY #12163 /* ~"Po prostu odpowiedz mi na kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12164 /* ~"Chyba już pójdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #12165 /* ~"Niestety, wyjaśniłem najlepiej jak potrafię. Pamiętaj jednak o tym: miejsce, w którym stoisz to prawdziwa materia, jednakże stworzona siłą wiary Sfer Głównej i Zewnętrznych. Można ją zmienić wiarą i podlega przekształceniom. Jest w stanie tego dokonać tylko moc umysłu."~ */
  IF ~~ THEN REPLY #12166 /* ~"Doskonale. Opowiedz mi zatem o sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12167 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12168 /* ~"Muszę iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 11.8
  SAY #12169 /* ~"Są trzy zasady, które powinieneś zapamiętać. Pierwsza, to Reguła Trójek: jeśli widzisz dwie rzeczy, szukaj trzeciej. Druga zasada nazywana jest Centrum Wieloświata: kosmos jest tak ogromny, poszukiwaczu, że gdziekolwiek się nie znajdziesz, możesz uznać, że stoisz w jego centrum. Niektórzy nazywają tak Sigil i mają rację - ale mieliby również rację, nazywając tak miejsce w nieskończonych pustkach Gehenny. Nie ma krańców wieloświata, więc nie ma jego środka. Trzecia to Jedność Kręgów: wszystkie rzeczy pojawiają się jako kręgi - nie mają początku ani końca: Wielki Krąg Sfer Zewnętrznych, kształt Sigil, krąg sfer żywiołów - nawet moce myślą w kręgach, kręgi w kręgach, w kręgach."~ */
  IF ~~ THEN REPLY #12170 /* ~"Teraz opowiedz mi o rozkładzie sfer."~ */ GOTO 15
  IF ~~ THEN REPLY #12171 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12172 /* ~"Wrócimy do tego później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 14.0
  SAY #12173 /* ~"Sfery Zewnętrzne tworzy wiara, myśl i przekonanie. Przybierają one wyobrażone postaci z Głównej Sfery Materialnej, przekształcone w formy, które poruszają wyobraźnię, budowane przez akumulację wiary. Wiara tworzy sfery. Wiara jest tu mocą. Zmień wiarę, a możesz zmienić istotę rzeczywistości. Istoty, które tu się rodzą - sferowcy, tacy jak biesy czy niebianie - tak naprawdę rodzą się z myśli i pojęć śmiertelników. Każda z nich wyobraża pewnego rodzaju ideał, a czym potężniejszy ideał, tym potężniejsza istota - dlatego też byt symbolizujący miłość jest najsilniejszy ze wszystkich."~ */
  IF ~~ THEN REPLY #12174 /* ~"Mów dalej."~ */ GOTO 16
  IF ~~ THEN REPLY #12175 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12176 /* ~"Wrócimy do tego później. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12177 /* ~"To dlatego moce - niektórzy nazywają ich bogami - żyją właśnie tutaj. To tu dostaje się cała w nich wiara - tu są najczystsze i najsilniejsze. Ich krainy to przedłużenia ich istoty, przejawy ich boskiej esencji, wszystko to stworzone przez wiarę."~ */
  IF ~~ THEN REPLY #12178 /* ~"Więc wiara tworzy sfery? Opowiedz mi teraz o Wielkim Kręgu."~ */ GOTO 17
  IF ~~ THEN REPLY #12179 /* ~"Opowiedz mi o Sferach Wewnętrznych."~ */ GOTO 35
  IF ~~ THEN REPLY #12180 /* ~"Opowiedz mi o Głównej Sferze Materialnej."~ */ GOTO 39
  IF ~~ THEN REPLY #12181 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12182 /* ~"Na razie starczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.2 16.0
  SAY #12183 /* ~"W luźnym związku obieżysferów postrzegamy nieskończone Sfery Zewnętrzne jako krąg otaczający sferę całkowitej neutralności - Zewnętrze. Iglica, na której szczycie spoczywa Sigil znajduje się w jej centrum. Czym dalej od Iglicy, tym okolica staje się mniej neutralna, aż w końcu wylewa się do sąsiednich sfer. Wszystkie stykają się z Zewnętrzem, dzieląc się na prawo, chaos, dobro i zło. Wielka Droga wyznacza granicę pomiędzy Zewnętrzem a miastami-bramami wyrastającymi wokół bram wiodących do tych sfer. Za tymi miastami leży Zaziemie, niezbadane miejsce, stracone dla historii, gubiące umysły. Niebezpieczne."~ */
  IF ~~ THEN REPLY #12184 /* ~"Mów dalej."~ */ GOTO 20
  IF ~~ THEN REPLY #12185 /* ~"Cofnijmy się nieco do ogólnego obrazu. Opowiedz mi o sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12186 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12187 /* ~"Na razie to wystarczy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 19.4 21.1 22.1 23.1 24.5 25.3 26.2 27.2 28.1 29.1 30.1 31.1 32.1 33.0 34.1
  SAY #12188 /* ~"O których sferach chciałbyś usłyszeć?"~ */
  IF ~~ THEN REPLY #12189 /* ~"O Sferach Wyższych."~ */ GOTO 19
  IF ~~ THEN REPLY #12190 /* ~"O Sferach Niższych."~ */ GOTO 24
  IF ~~ THEN REPLY #12191 /* ~"O Sferach Granicznych."~ */ GOTO 32
  IF ~~ THEN REPLY #12192 /* ~"O Zewnętrzu."~ */ GOTO 34
  IF ~~ THEN REPLY #12193 /* ~"Cofnijmy się nieco do ogólnego obrazu. Opowiedz mi o sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12194 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12195 /* ~"O żadnych. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0 22.0 23.0
  SAY #12196 /* ~"W Sferach Wyższych są sfery neutralne, praworządne i chaotyczne. O których chciałbyś się dowiedzieć?"~ */
  IF ~~ THEN REPLY #12197 /* ~"O sferach neutralnych."~ */ GOTO 21
  IF ~~ THEN REPLY #12198 /* ~"O sferach praworządnych."~ */ GOTO 22
  IF ~~ THEN REPLY #12199 /* ~"O sferach chaotycznych."~ */ GOTO 23
  IF ~~ THEN REPLY #12200 /* ~"Cofnijmy się nieco do ogólnego obrazu. Opowiedz mi o sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12201 /* ~"Opowiedz mi więcej o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12202 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12203 /* ~"O żadnych. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #12204 /* ~"Sfery Zewnętrzne różnią się nie substancją, a moralnością. Dzielimy sfery na trzy zestawy: Wyższe Sfery Dobra, Niższe Sfery Zła i Sfery Graniczne Neutralności. Te dzieli się potem względem Prawa i Chaosu, a w centrum znajduje się Zewnętrze. Które z nich cię interesują?"~ */
  IF ~~ THEN REPLY #12205 /* ~"O Sferach Wyższych."~ */ GOTO 19
  IF ~~ THEN REPLY #12206 /* ~"O Sferach Niższych."~ */ GOTO 24
  IF ~~ THEN REPLY #12207 /* ~"O Sferach Granicznych."~ */ GOTO 32
  IF ~~ THEN REPLY #12208 /* ~"O Zewnętrzu."~ */ GOTO 34
  IF ~~ THEN REPLY #12209 /* ~"Cofnijmy się nieco do ogólnego obrazu. Opowiedz mi o sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12210 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12211 /* ~"Żadne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #12212 /* ~"Neutralne sfery wyższe to Kraina Zwierząt, miejsce neutralności i dobra, z niewielkim odcieniem chaosu, gdzie zwierzęta rządzą w wiecznym dniu lub nocy. To również Dwutopia, dwa raje przemysłu i pracy, gdzie praca ma na celu dobro wszystkich, oraz Elizjum, najsłodsza sfera dobra i spokoju, jaką kiedykolwiek spotkałem. Teraz jednakże nie czuję się najlepiej, by cieszyć się ich zbawczymi skutkami. O czym teraz chciałbyś usłyszeć?"~ */
  IF ~~ THEN REPLY #12213 /* ~"Opowiedz mi o pozostałych Sferach Wyższych."~ */ GOTO 19
  IF ~~ THEN REPLY #12214 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12215 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12216 /* ~"O niczym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #12217 /* ~Kandrian wzrusza lekko ramionami. "Nie jestem najlepszą osobą do opowiadania o sferach prawa." Mówi. "Ponieważ ich naturalna struktura i wzorce, jakie narzucają, przerażają mnie. Staram się je omijać, ponieważ cenię swoją indywidualność bardziej, niż wiedzę, jaką mogłyby mi przynieść. W ich skład wchodzi sztywna Arkadia, sfera dobra najbliższa nieugiętemu porządkowi Mechanusa, a także Niebiański Szczyt, dom archonów, wyspa na Srebrnym Morzu."~ */
  IF ~~ THEN REPLY #12218 /* ~"Opowiedz mi o pozostałych Sferach Wyższych."~ */ GOTO 19
  IF ~~ THEN REPLY #12219 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12220 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12221 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY #12222 /* ~"W nich czuję się jak w domu, choć staram się przeważnie omijać Ysgard - niekończące się bitwy i testy odwagi wśród latających gór nie wpływają na mnie dobrze. Jednakże Arborea..." Wzdycha. "Góry są wyższe, powietrze bardziej przejrzyste, rzeki czystsze, a zwierzyna większa niż gdziekolwiek. To prawdziwy raj, miejsce, gdzie królują żądze, a wino nigdy nie przestaje płynąć. Gdy odzyskam trochę swojej esencji i rozumu - gdy skończymy ze Sferami Zewnętrznymi, spytaj mnie o Wewnętrzne, to opowiem ci moją historię - wrócę do dolin i wzgórz Arborei, by się na chwilę zagubić."~ */
  IF ~~ THEN REPLY #12223 /* ~"Opowiedz mi o pozostałych Sferach Wyższych."~ */ GOTO 19
  IF ~~ THEN REPLY #12224 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12225 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12226 /* ~"Dziękuję ci. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.1 20.1 25.2 26.1 27.1 28.0 29.0 30.0 31.0
  SAY #12227 /* ~"Podobnie jak Sfery Wyższe, Niższe podzielone są na praworządne, chaotyczne i neutralne. Każda z nich różni się tym, jakie przerażające rzeczy można tam spotkać i co one uczynią z twoją duszą, a każdą najlepiej omijać z daleka. O których z nich chciałbyś najpierw usłyszeć?"~ */
  IF ~~ THEN REPLY #12228 /* ~"O sferach neutralnych."~ */ GOTO 25
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #12229 /* ~"O sferach praworządnych."~ */ GOTO 28
  IF ~  Global("Aethel_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #12230 /* ~"O sferach praworządnych."~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #12231 /* ~"O sferach chaotycznych."~ */ GOTO 30
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #12232 /* ~"O sferach chaotycznych."~ */ GOTO 31
  IF ~~ THEN REPLY #12233 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12234 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12235 /* ~"O żadnych. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #12236 /* ~"Neutralne, hę? Są paskudne i z ledwością można je zrozumieć, a same z siebie są bardziej podstępne, niż potrafiłbyś sobie kiedykolwiek wyobrazić. Weźmy na przykład Gehennę: cztery uśpione wulkany unoszące się w nieskończonej pustce, każdy z nich w jakiś sposób *żywy* i pragnący twej duszy wszelkimi możliwymi środkami. Zaludnij je yugolotami - moim zdaniem najgorszymi z biesów - i masz obraz tego miejsca. Sfera najgorszego zła - tak przynajmniej ją nazywają - to Szare Pustkowie, nie-miejsce, które wysysa barwy z twej duszy i ciała, odbierając ci nawet apatię - a to miejsce najgorszych bitew w toczącej się tam na dole wojnie. Nie pozwól mi zacząć... Potem masz Tartar po chaotycznej stronie..."~ */
  IF ~~ THEN REPLY #12237 /* ~"Opowiedz mi o wojnie."~ */ GOTO 26
  IF ~~ THEN REPLY #12238 /* ~"Opowiedz mi o Tartarze."~ */ GOTO 27
  IF ~~ THEN REPLY #12239 /* ~"Opowiedz mi o pozostałych Sferach Niższych."~ */ GOTO 24
  IF ~~ THEN REPLY #12240 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12241 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12242 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 27.0
  SAY #12243 /* ~"Tia, Wojna Krwi." Słysząc tę nazwę czujesz, jakby twoja krew zamarzła ci w żyłach. Kandrian zdaje się tego nie zauważać, otulony w swoje wspomnienia. "Dwie armie biesów uderzają w siebie nawzajem bez sensu po całych Planach Niższych, zabijając bezrozumnie w imię prawa i chaosu. Gloryfikują ją, oczywiście, ale tak naprawdę to chodzi o nienawiść i głupią chęć pokazania się, która nikomu nie pomaga, a wielu szkodzi."~ */
  IF ~~ THEN REPLY #12244 /* ~"Opowiedz mi o Tartarze."~ */ GOTO 27
  IF ~~ THEN REPLY #12245 /* ~"Opowiedz mi o pozostałych Sferach Niższych."~ */ GOTO 24
  IF ~~ THEN REPLY #12246 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12247 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12248 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #12249 /* ~"Ach, Tartar wraz z jego zatrutymi dżunglami, kwaśnymi bagnami, niszczycielskimi wodami, nadzianymi jak sznur zgniłych pereł zanurzonych jedna w drugiej..." Przerywa i patrzy na ciebie ostrożnie, ponownie osadzając cię w miejscu swoim wzrokiem. "Pamiętaj o tym, poszukiwaczu: Tartar to więzienie, dom gehreletów, jednego z najgroźniejszych rodzajów biesów, jakie istnieją. Siła więzienia jest siłą tego, który schwytał, silnego na tyle, na ile pozwala mu więzień. Zniszcz więżącego, a uciekniesz z Czerwonego Więzienia. Właściwie nie ma stamtąd ucieczki, nie kiedy bramy zatrzasną się przed tobą i będą patrzeć jak miotasz się po przestrzeni otaczającej kule. Strzeż się Tartaru, podróżniku, bo jego więzy mogą być silniejsze niż ciało."~ */
  IF ~~ THEN REPLY #12250 /* ~"Opowiedz mi o wojnie."~ */ JOURNAL #28750 /* ~Kandrian opowiedział mi o Tartarze, wielkim więzieniu sfer. Twierdzi, że z więzienia można uciec jedynie wtedy gdy jest się silniejszym od strażnika. Powiedział też że okowy tej sfery są większe niż okowy ciała.~ */ GOTO 26
  IF ~~ THEN REPLY #12251 /* ~"Opowiedz mi o pozostałych Sferach Niższych."~ */ JOURNAL #28750 /* ~Kandrian opowiedział mi o Tartarze, wielkim więzieniu sfer. Twierdzi, że z więzienia można uciec jedynie wtedy gdy jest się silniejszym od strażnika. Powiedział też że okowy tej sfery są większe niż okowy ciała.~ */ GOTO 24
  IF ~~ THEN REPLY #12252 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ JOURNAL #28750 /* ~Kandrian opowiedział mi o Tartarze, wielkim więzieniu sfer. Twierdzi, że z więzienia można uciec jedynie wtedy gdy jest się silniejszym od strażnika. Powiedział też że okowy tej sfery są większe niż okowy ciała.~ */ GOTO 18
  IF ~~ THEN REPLY #12253 /* ~"Mam jeszcze kilka pytań."~ */ JOURNAL #28750 /* ~Kandrian opowiedział mi o Tartarze, wielkim więzieniu sfer. Twierdzi, że z więzienia można uciec jedynie wtedy gdy jest się silniejszym od strażnika. Powiedział też że okowy tej sfery są większe niż okowy ciała.~ */ GOTO 5
  IF ~~ THEN REPLY #12254 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ JOURNAL #28750 /* ~Kandrian opowiedział mi o Tartarze, wielkim więzieniu sfer. Twierdzi, że z więzienia można uciec jedynie wtedy gdy jest się silniejszym od strażnika. Powiedział też że okowy tej sfery są większe niż okowy ciała.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #12255 /* ~"O ile nie przepadam za porządkiem praworządnych Sfer Wyższych, to przynajmniej jest w nich odrobina dobra. Natomiast w ich niższych odpowiednikach... Acheron to miejsce zderzających się sześcianów, gdzie bitwy nigdy się nie kończą, rojące się od dusz martwych humanoidów. Baator..." mimowolnie zadrżał. "Baator to miejsce, którego najlepiej unikać. Te biesy, które tam zabiłeś, były tylko drobnym przykładem chorego zepsucia zawartego w tej bezdusznej maszynie porządku. Wszystko, co jest złe w biurokracji i porządku wywodzi się z Baator i rozszerza jak plama w sercach śmiertelników. Pomimo iż można odnaleźć tam wiedzę, to rzadko jest ona warta duchowego gwałtu, który zadaje ta sfera."~ */
  IF ~~ THEN REPLY #12256 /* ~"Opowiedz mi o pozostałych Sferach Niższych."~ */ GOTO 24
  IF ~~ THEN REPLY #12257 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12258 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12259 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 24.2
  SAY #12260 /* ~"O ile nie przepadam za porządkiem praworządnych Sfer Wyższych, to przynajmniej jest w nich odrobina dobra. Natomiast w ich niższych odpowiednikach... Acheron to miejsce zderzających się sześcianów, gdzie bitwy nigdy się nie kończą, rojące się od dusz martwych humanoidów. Baator..." mimowolnie zadrżał. "Baator to miejsce, którego najlepiej unikać. Te baatezu - biesy tam, w rogu - są tylko drobnym przykładem chorego zepsucia zawartego w tej bezdusznej maszynie porządku. Jeśli chcesz wiedzieć więcej, to porozmawiaj z nimi, ale pamiętaj: wszystko, co jest złe w biurokracji i porządku wywodzi się z Baator i rozszerza jak plama w sercach śmiertelników. Pomimo iż można odnaleźć tam wiedzę, to rzadko jest ona warta duchowego gwałtu, który zadaje ta sfera."~ */
  IF ~~ THEN REPLY #12261 /* ~"Opowiedz mi o pozostałych Sferach Niższych."~ */ GOTO 24
  IF ~~ THEN REPLY #12262 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12263 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12264 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.3
  SAY #12265 /* ~"Z całym szacunkiem dla twej towarzyszki," wskazuje na Nie-Sławę, "Otchłań nie jest miejscem, do którego powinieneś się udać. Podczas gdy Baator jest uporządkowany, Otchłań jest pełna chaosu i zmian, a żadna z nich nie jest przyjemna. Gdy staje się czymś, co zbliża się do normalności, właśnie wtedy powinieneś się jej najbardziej obawiać. To dom tanar'ri, które większość pierwszaków nazywa 'demonami'. Nie bez racji. Są one, wybacz mi, pani," Sława kiwa głową, "nieobliczalne i mordercze, a te, którym możesz ufać są nieliczne i rozproszone. Ponownie proszę o wybaczenie, Pani Sławo - z tego co wiem, ty jesteś jedną z tych nielicznych."~ */
  IF ~~ THEN REPLY #12266 /* ~"Opowiedz mi o pozostałych Sferach Niższych."~ */ GOTO 24
  IF ~~ THEN REPLY #12267 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12268 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12269 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4
  SAY #12270 /* ~"Otchłań nie jest miejscem, do którego powinieneś się udać. Podczas gdy Baator jest uporządkowany, Otchłań jest pełna chaosu i zmian, a żadna z nich nie jest przyjemna. Gdy staje się czymś, co zbliża się do normalności, właśnie wtedy powinieneś się jej najbardziej obawiać. To dom tanar'ri, które większość pierwszaków nazywa 'demonami'. Nie bez racji. Są one nieobliczalne i mordercze, a te, którym możesz ufać są nieliczne i rozproszone. Nawet tym kilku, które spotkałem i mógłbym zaufać, nie ufam do końca - to istoty czystego chaosu i zła, a jeśli nakładają przyjacielską maskę, to kto może powiedzieć, czy nie jest to część jakiegoś większego planu?"~ */
  IF ~~ THEN REPLY #12271 /* ~"Opowiedz mi o pozostałych Sferach Niższych."~ */ GOTO 24
  IF ~~ THEN REPLY #12272 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12273 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12274 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 18.2 20.2
  SAY #12275 /* ~"To dwie Sfery Graniczne, diametralnie różne. Jedna z nich, Mechanus, to czysta esencja prawa, miejsce gdzie wszelkie wiary pasują do siebie, przecinają, obracają w potężnej machinie, jaką jest cała sfera. Niektórzy twierdzą, że tryby Mechanusa są silnikiem, który napędza sfery. Drugą jest Limbo, wirująca masa Chaosu, gdzie nie ma zasad, żadnych, i właśnie w chwili, w której ktoś dochodzi do wniosku, że sklasyfikował jej zachowanie, ona zmienia się - albo i nie. Po prostu nie można tego stwierdzić. Byłem w Limbo nie tak dawno temu..."~ */
  IF ~~ THEN REPLY #12277 /* ~"Opowiedz mi o swojej podróży..."~ */ GOTO 33
  IF ~~ THEN REPLY #12278 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12279 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12333 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #12280 /* ~Zamyka oczy, przypominając sobie: "Miałem za przewodnika githzerai, Anarcha, który potrafił kształtować nielogiczną materię sfery w kształty, jakie sobie zażyczył. Odparliśmy najazdy slaadi, istot chaosu, które tam mieszkają. Zdawało mi się, że było ich więcej niż zwykle, ale w końcu ciężko stwierdzić, co to znaczy 'zwykle' w Limbo... ale odbiegam od tematu. Pośród tego całego chaosu natknęliśmy się na coś w rodzaju pudełka-układanki. To nie było coś, co stworzyliśmy, świadomie lub nie, nie potrafiliśmy też odnaleźć drogi do środka. To było jak... jak bastion porządku wśród nieładu, ziarno prawa. Nie jestem w stanie tego lepiej przekazać."~ */
  IF ~~ THEN REPLY #12281 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ JOURNAL #28751 /* ~Kandrian opowiedział mi o układance znajdującej się w sercu Limbo. Wydaje się, że to nasienie porządku w zmiennym morzu chaosu.~ */ GOTO 18
  IF ~~ THEN REPLY #12282 /* ~"Mam jeszcze kilka pytań."~ */ JOURNAL #28751 /* ~Kandrian opowiedział mi o układance znajdującej się w sercu Limbo. Wydaje się, że to nasienie porządku w zmiennym morzu chaosu.~ */ GOTO 5
  IF ~~ THEN REPLY #12283 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ JOURNAL #28751 /* ~Kandrian opowiedział mi o układance znajdującej się w sercu Limbo. Wydaje się, że to nasienie porządku w zmiennym morzu chaosu.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 18.3 20.3
  SAY #12284 /* ~"Zewnętrze to całkowita neutralność. Prawdopodobnie najlepsze miejsce poza Sigil, żeby zwiedzić Sfery Zewnętrzne, jeśli nie chcesz, aby moralność sfery wdarła się w twoje serce. W Zewnętrzu wszystko się wyrównuje - tak jak powinno, gdyż sfera ta leży w środku Sfer Zewnętrznych. Rozrzucone tam są krainy Mocy, a także garstka 'miast-bram', które otwierają się na pozostałe Sfery Zewnętrzne. Miasta-bramy przeważnie odzwierciedlają filozofię sfer, na które się otwierają - i jeśli w mieście nie jest zachowana równowaga wiary, to ześlizguje się ono do sąsiedniej sfery. To dla wszystkich jest mało korzystna sytuacja, ponieważ tak naprawdę, to niewiele osób w tych miastach *pragnie* tej zmiany. Ale dość o Zewnętrzu. O czym jeszcze chciałbyś wiedzieć?"~ */
  IF ~~ THEN REPLY #12285 /* ~"Cofnijmy się nieco do ogólnego obrazu. Opowiedz mi o sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12286 /* ~"Opowiedz mi jeszcze o sferach Wielkiego Kręgu."~ */ GOTO 18
  IF ~~ THEN REPLY #12287 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 5
  IF ~~ THEN REPLY #12288 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 8.2 9.2 11.4 16.1
  SAY #12289 /* ~Wzdycha, jakby to przypomniało mu o jego sięgającym szpiku kości zmęczeniu. "Wyobraź sobie Sfery Wewnętrzne jako kulę. Na górnym biegunie masz Sferę Materii Pozytywnej. Na dolnym, Materii Negatywnej." Milknie. "Przypomnij mi, żebym ci opowiedział o Negatywnej." Jego oczy patrzą gdzieś do wewnątrz, jakby przypomniało mu się coś strasznego. "Z przenikania się nawzajem tych dwóch wynika chęć egzystencji i nie-egzystencji, śmierć i życie, coś i nic. Z nich powstają podstawowe sfery żywiołów - Ogień, Woda, Powietrze i Ziemia - sfery para-żywiołów leżące pomiędzy czterema podstawowymi żywiołami i quasi-żywioły, powstające z przenikania się czterech żywiołów z Pozytywem i Negatywem."~ */
  IF ~~ THEN REPLY #12290 /* ~"Opowiedz mi o Sferze Materii Negatywnej."~ */ GOTO 36
  IF ~~ THEN REPLY #12291 /* ~"Opowiedz mi o pozostałych sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12292 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12293 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 8.4 9.4 35.0 40.0
  SAY #12294 /* ~Jego oczy zasnuwa mgła. "Udałem się do Sfer Wewnętrznych, by odnaleźć moją prawdziwą esencję. Zrobiłem ten błąd, że wstąpiłem do Sfery Materii Negatywnej, aby zrozumieć chęć mojego ciała do rozkładu i cykl śmierci w życiu. Myślałem, że jestem chroniony przed zgubnymi wpływami sfery dzięki swojej magii, ale myliłem się. Ta ciemność nieskończonej nicości cisnęła moją duszę i opadły mnie cienie, które pragnęły wyssać moją duszę. Przez chwilę - na wieczność - się zagubiłem i prawie straciłem swoją egzystencję. Czułem, jak moja esencja ode mnie odpływa i nawet teraz w połowie mnie nie ma. Nigdy nie powrócę."~ */
  IF ~  Global("Ntoken_Give","GLOBAL",0)
~ THEN REPLY #12295 /* ~"W jaki sposób ocalałeś?"~ */ DO ~GiveItemCreate("NToken",Protagonist,20,0,0)
SetGlobal("Ntoken_Give","GLOBAL",1)
~ JOURNAL #28752 /* ~Kandrian opowiedział mi o swojej wyprawie do sfery materii negatywnej, miejsca gdzie istnienie rozpada się w nicość.~ */ GOTO 37
  IF ~  Global("Ntoken_Give","GLOBAL",1)
~ THEN REPLY #12296 /* ~"W jaki sposób ocalałeś?"~ */ JOURNAL #28752 /* ~Kandrian opowiedział mi o swojej wyprawie do sfery materii negatywnej, miejsca gdzie istnienie rozpada się w nicość.~ */ GOTO 38
  IF ~~ THEN REPLY #12297 /* ~"Opowiedz mi zatem o pozostałych sferach."~ */ JOURNAL #28752 /* ~Kandrian opowiedział mi o swojej wyprawie do sfery materii negatywnej, miejsca gdzie istnienie rozpada się w nicość.~ */ GOTO 9
  IF ~~ THEN REPLY #12298 /* ~"Mam jeszcze kilka pytań..."~ */ JOURNAL #28752 /* ~Kandrian opowiedział mi o swojej wyprawie do sfery materii negatywnej, miejsca gdzie istnienie rozpada się w nicość.~ */ GOTO 5
  IF ~~ THEN REPLY #12299 /* ~"Rozumiem. Żegnaj."~ */ JOURNAL #28752 /* ~Kandrian opowiedział mi o swojej wyprawie do sfery materii negatywnej, miejsca gdzie istnienie rozpada się w nicość.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #12300 /* ~"Jak ocalałem?" Uśmiecha się wąsko. "Z kawałkiem nicości, który trzymał nicość z daleka. Nicość może powstrzymać nicość, jak wiesz, więc trzymałem nicość w swojej ręce, aby mnie chroniła. Czy planujesz sam wyprawę do całkowitej negacji? Masz w sobie zapach desperacji, więc podaruję ci coś. Trzymaj to w swojej dłoni, gdy opadną cię cienie, a powinno to nieco ochronić ciebie i twoich przyjaciół, o ile będą się trzymać blisko ciebie." Podaje ci mały, czarny żeton, który zdaje się nie mieć w ogóle wymiarów.~ */
  IF ~~ THEN REPLY #12301 /* ~"Dzięki. Opowiedz mi jeszcze o sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12302 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12303 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #12304 /* ~"Użyłem żetonu, który ci podarowałem i z ledwością utrzymałem się przy życiu. Bez niego zginąłbym całkiem."~ */
  IF ~~ THEN REPLY #12305 /* ~"Opowiedz mi jeszcze o sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12306 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12307 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 8.3 9.3 11.5 16.2
  SAY #12308 /* ~"Jeśli chcesz dowiedzieć się czegoś o Głównym, to go odwiedź. Bezgraniczne światy tej sfery, o nieskończonej różnorodności, podobnie jak inne sfery, ale nie mogę ich posegregować. Wystarczy ci wiedzieć, że są one narodzinami Sfer Zewnętrznych, a dziećmi Wewnętrznych i posiadają w swoich granicach nieograniczony potencjał."~ */
  IF ~~ THEN REPLY #12309 /* ~"Opowiedz mi jeszcze o sferach."~ */ GOTO 9
  IF ~~ THEN REPLY #12310 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12311 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 5.2
  SAY #12312 /* ~"Ja? Niedawno wróciłem z negacji i staram się odzyskać swoją esencję, zanim całkiem mi się wymknie."~ */
  IF ~~ THEN REPLY #12313 /* ~"Negacji? Co masz na myśli?"~ */ GOTO 36
  IF ~~ THEN REPLY #12314 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12315 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.3
  SAY #12316 /* ~"O ile kosmos się nie przesunął, albo nie wtrącono nas w Labirynty, to rzekłbym, że jesteśmy w gospodzie 'Pod Gorejącym Człekiem'."~ */
  IF ~~ THEN REPLY #12317 /* ~"Co możesz powiedzieć mi o tutejszych klientach?"~ */ GOTO 42
  IF ~~ THEN REPLY #12318 /* ~"Labirynty? Co masz na myśli?"~ */ GOTO 43
  IF ~~ THEN REPLY #12319 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12320 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #12321 /* ~"Zajmuję się tutaj swoimi sprawami, poszukiwaczu, bo spędziłem zbyt wiele czasu daleko stąd, nie zajmując się nimi. Spytaj się gospodarza, jeśli chcesz dowiedzieć się czegoś więcej o jego klientach."~ */
  IF ~~ THEN REPLY #12322 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12323 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #12324 /* ~"Tia, Labirynty, gdzie Pani wrzuca tych, którzy ją rozgniewali." Wymawiając imię Pani czyni nad swoim sercem półokrąg. "Jeśli chcesz dowiedzieć się więcej o Pani i o mieście, znajdź oprowadzacza albo jakiegoś przewodnika."~ */
  IF ~~ THEN REPLY #12325 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12326 /* ~"Doskonale. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.4
  SAY #12327 /* ~"Nie widziałem ostatnio żadnych dzienników poza swoim własnym - a ten odpłynął w nicość. Bardzo mi przykro."~ */
  IF ~~ THEN REPLY #12328 /* ~"Nieważne. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12329 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 5.5
  SAY #12330 /* ~"Farod został Zbieraczem? Jak dawno to było? Gdy ostatnio wyruszałem, był nachalnym młodzieniaszkiem w jednej z wyższych dzielnic. Ha. Czas ZMIENIA niektórych ludzi. Nie, poszukiwaczu, jak sądzę, to nie znam już Faroda."~ */
  IF ~~ THEN REPLY #12331 /* ~"Doskonale. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #12332 /* ~"Doskonale. Żegnaj."~ */ EXIT
END
