// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYVANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DYVANA~

IF ~  Global("Yvana","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3003 /* ~Przed sobą widzisz dobrze ubraną, starszą niewiastę w sukni koloru brzoskwini, ze złotą nitką. Stoi cicho, ze sztywno złożonymi rękami, i kiwa głową w twoim kierunku. To właśnie wtedy zauważasz, że nie ma źrenic - jej oczy są całkowicie białe. "Witaj, panie. Jestem Yvana. Witaj w mojej galerii. Rozglądaj się, ile tylko pragniesz i tak długo, jak tylko chcesz. Gdybyś miał jakieś pytania odnośnie czegokolwiek, nie wahaj się zwrócić do mnie."~ */
  IF ~~ THEN REPLY #3004 /* ~"Mam parę pytań, Yvano..."~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #42094 /* ~"A zatem chyba się porozglądam. Żegnaj."~ */ DO ~SetGlobal("Yvana","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.1 4.1 5.1 6.1 7.0 10.0 12.0 13.0 15.0 16.0 17.1 18.1 19.1 20.0 21.8 22.10 23.2 24.1 25.2 26.1 27.2 28.1 29.1 31.1 33.1 34.1 35.1 36.1 37.1 38.1 39.1 40.1 41.2 42.1 43.1 44.0 45.1 46.0 47.0 48.1
  SAY #42095 /* ~"Oczywiście. Pytaj, proszę."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65156 /* ~"Czy kiedykolwiek zdarzyło ci się spotkać coś takiego, jak to pismo na dwunastościanie?"~ */ GOTO 47
  IF ~~ THEN REPLY #42096 /* ~"Mam pytanie o jeden z tych eksponatów..."~ */ GOTO 21
  IF ~  !NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42097 /* ~"Czy ty widzisz, Yvano?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42098 /* ~"Czy ty widzisz, Yvano?"~ */ EXTERN ~DGRACE~ 141
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42099 /* ~"Czy wiesz, czym jest ten sześcienny stworek?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 45
  IF ~  GlobalGT("Yves","GLOBAL",1)
GlobalLT("Yvana","GLOBAL",2)
~ THEN REPLY #42100 /* ~"Twój wygląd jest mi znajomy... Czy znasz kogoś o imieniu Yves?"~ */ GOTO 3
  IF ~  Global("Yvana","GLOBAL",3)
~ THEN REPLY #42101 /* ~"Czy rozmawiałaś ostatnio ze swą córką, Yvano?"~ */ GOTO 15
  IF ~~ THEN REPLY #42102 /* ~"Co to za miejsce?"~ */ GOTO 16
  IF ~~ THEN REPLY #42103 /* ~"Co jest interesującego w okolicy?"~ */ GOTO 2
  IF ~~ THEN REPLY #42104 /* ~"Gdzie można tu znaleźć pracę?"~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42105 /* ~"Chcę zapytać o pewne miejsce..."~ */ GOTO 2
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #42106 /* ~"Potrzebuję informacji jak dojść..."~ */ GOTO 2
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42107 /* ~"Co ci wiadomo o Raveli Szaradnej?"~ */ GOTO 17
  IF ~~ THEN REPLY #42108 /* ~"Nic ważnego, naprawdę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.8 1.9 1.10 1.11
  SAY #42109 /* ~"Obawiam się, że nie zapuszczam się daleko za galerię i nie mogę pomóc ci w tej sprawie. Ale możesz spróbować zapytać kogoś innego."~ */
  IF ~~ THEN REPLY #42110 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42111 /* ~"A zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5
  SAY #42112 /* ~"To moja córka." Przez chwilę widać nutkę smutku pojawiającą się w bieli jej oczu. "Już ze sobą nie rozmawiamy."~ */
  IF ~~ THEN REPLY #42113 /* ~"Dlaczego?"~ */ GOTO 4
  IF ~~ THEN REPLY #42114 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42115 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #42116 /* ~"Nie mamy już o czym mówić. Ona odeszła w poszukiwaniu przygód... a wszystko to z nieznanych mi powodów."~ */
  IF ~  Global("Yves","GLOBAL",2)
~ THEN REPLY #42117 /* ~"Ona opowiedziała mi historię, która być może stanowi odpowiedź na to pytanie..."~ */ GOTO 5
  IF ~~ THEN REPLY #42118 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42119 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42120 /* ~Yvana podnosi brwi. "Tak? Opowiedz mi ją, proszę. Byłabym ci bardzo wdzięczna, panie..."~ */
  IF ~~ THEN REPLY #42121 /* ~Opowiedz historię Opowiadaczki i o jej nie kończącym się poszukiwaniu opowieści, która zawiera prawdę przez nią pożądaną.~ */ DO ~SetGlobal("Yvana","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #42122 /* ~"Może innym razem. Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42123 /* ~"Może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42124 /* ~Yvana wolno kiwa głową. "Ja... nie miałam pojęcia. Zobaczę się z nią zaraz. Dziękuję ci, dobry panie, za przyniesienie tej wieści o mojej jedynej córce." W miarę jak mówi, jej blade tęczówki powoli nabierają koloru, aż jej oczy lśnią na zielono.~ */
  IF ~~ THEN REPLY #42125 /* ~"Twoje oczy... czy teraz widzisz, Yvano?"~ */ GOTO 7
  IF ~~ THEN REPLY #42126 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42127 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42128 /* ~Kiwa głową, uśmiechnięta.~ */
  IF ~~ THEN REPLY #42129 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42130 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 9.0
  SAY #42131 /* ~"Jeszcze chwilę, panie... twój głos załamuje się pod wpływem starości i odniesionych ran. Czy mogłabym dotknąć twojej twarzy?"~ */
  IF ~~ THEN REPLY #42132 /* ~"Tak, proszę."~ */ GOTO 11
  IF ~~ THEN REPLY #42133 /* ~"Nie. Lepiej tego nie rób."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 0.1
  SAY #42134 /* ~"Zaczekaj..."~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #42135 /* ~Yvana kiwa głową. "Bardzo dobrze; nie zapytam cię już więcej."~ */
  IF ~~ THEN REPLY #42136 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #42137 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0
  SAY #42138 /* ~Yvana uśmiecha się, delikatnie pocierając swe stare dłonie o skórę na twej twarzy. Marszczy brwi i jest trochę zdziwiona. "Tyle tu blizn... starych i nowych. Wyglądają jakby..." Dotyka z boku gardła, rumieni się, następnie odstępuje od ciebie. "Wybacz mi, panie. Byłam ciekawa, jak daleko sięgają."~ */
  IF ~~ THEN REPLY #42139 /* ~"W porządku. One są wszędzie; całe moje ciało pokryte jest bliznami."~ */ GOTO 12
  IF ~~ THEN REPLY #42140 /* ~"Po prostu nie rób tego więcej, stara kobieto."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #42141 /* ~Yvana kiwa głową.~ */
  IF ~~ THEN REPLY #42142 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #42143 /* ~"Pójdę już. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 14.0
  SAY #42144 /* ~"Nie widzę, ale tylko dlatego, że nie chcę. Za jakiś czas pozwolę, aby mój wzrok powrócił, abym mogła raz jeszcze doświadczyć zawartości mojej galerii z pomocą nowych, świeżych oczu."~ */
  IF ~~ THEN REPLY #42145 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42146 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #42147 /* ~Yvana kiwa głową i uśmiecha się. "Twoja przyjaciółka, panie, ma rację..."~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 1.6
  SAY #42148 /* ~"Znów ze sobą rozmawiamy, naprawdę... i tobie winnam za to podziękować. Sprawia mi przyjemność, że mogę ponownie rozmawiać z moją córką." Yvana uśmiecha się do ciebie.~ */
  IF ~~ THEN REPLY #42149 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42150 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7
  SAY #42151 /* ~"Cóż, to jest moja galeria Sfer." Uśmiecha się i gestem wskazuje na wnętrze. "Te eksponaty przyniesiono tutaj z różnych stron. Niektóre sprzedaję, niektóre zatrzymuję - a wszystkie wystawiam na widok publiczny od czasu do czasu. Mam nadzieję, że sprawią ci przyjemność... i jeszcze raz mówię, gdybyś miał jakieś pytania odnośnie tych eksponatów, nie wahaj się pytać."~ */
  IF ~~ THEN REPLY #42152 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42153 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.12 41.0
  SAY #42154 /* ~"Jest ona wiedźmą nocy, jedną z najstarszych Szarych Sióstr Pustkowia, które przybyły do Sigil przed wiekami, aby oddać się tajemnym eksperymentom. Wierzono, że eksperymenty te są przeciwne woli Pani, oraz że Ravelę wygnano w związku z tym z Sigil i uwięziono we wnętrzu jednego z labiryntów Pani w sferze eterycznej, gdzie jej ciało spoczywa po dziś dzień..."~ */
  IF ~~ THEN REPLY #42155 /* ~"Mów dalej..."~ */ GOTO 18
  IF ~~ THEN REPLY #42156 /* ~"Chwileczkę... Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42157 /* ~"Reszty wysłucham następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #42158 /* ~"Mówiono, że Ravela była mistrzynią zagadek i tajemnic. Wierzono też, że jedna zagadka - a zwłaszcza jedno pytanie - nękała starożytne wiedźmy nocy: 'Cóż może zmienić naturę człowieka?'"~ */
  IF ~~ THEN REPLY #42159 /* ~"Mów dalej..."~ */ GOTO 19
  IF ~~ THEN REPLY #42160 /* ~"Chwileczkę... Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42161 /* ~"Reszty wysłucham następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #42162 /* ~"Wyzwała na pojedynek wszystkich zainteresowanych: obiecała, że wprowadzi w tajniki swego rzemiosła wszystkich, którzy przyjdą... jeśliby tylko dali radę odpowiedzieć na to pytanie w zadowalający ją sposób. Gdyby nie byli w stanie tego zrobić, mieli stać się jej następnym daniem. Wielu zginęło, pragnąc nauk Raveli. Uważa się, że do końca swych dni w Sigil Ravela nigdy nie znalazła odpowiedzi na swoje pytanie."~ */
  IF ~~ THEN REPLY #42163 /* ~"Mów dalej..."~ */ GOTO 20
  IF ~~ THEN REPLY #42164 /* ~"Chwileczkę... Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42165 /* ~"Reszty wysłucham następnym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #42166 /* ~"Uważano, że zbrodnią Raveli była próba roztrzaskania w jakiś sposób Klatki, próba rozłupania Sigil z jakichś nieznanych powodów." Yvana wzdycha. "To wszystko, co mi o niej wiadomo."~ */
  IF ~~ THEN REPLY #42167 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42168 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 1.1 23.1 24.0 25.1 26.0 27.1 28.0 29.0 31.0 33.0 44.1 48.0
  SAY #42169 /* ~"Tak? O który? Jeden z obrazów?"~ */
  IF ~  Global("View_Art_01","AR0608",1)
~ THEN REPLY #42170 /* ~"Arkadyjski witraż."~ */ GOTO 23
  IF ~  Global("View_Art_02","AR0608",1)
~ THEN REPLY #42171 /* ~"Róg bitewny Acheronu."~ */ GOTO 25
  IF ~  Global("View_Art_DBirds","AR0608",1)
~ THEN REPLY #42172 /* ~"Mroczne Ptaki z Okantusa."~ */ DO ~SetGlobal("Know_Styx_Ice","GLOBAL",1)
~ JOURNAL #67816 /* ~Yvana, kustoszka Galerii w Dzielnicy Urzędniczej powiedziała mi, że Mroczne Ptaki Okantusa, które należą do jej ekspozycji, to po prostu kawałki lodu z zamarzniętej rzeki Styks. Każdy, kto będzie na tyle głupi, albo szalony, żeby je połknąć, doświadczy dokładnie tego samego, co człowiek pijący wodę bezpośrednio z rzeki Styks - straci swoją pamięć. Hm... Jeśli chodzi o mnie, to byłby to dla mnie zdecydowanie krok wstecz, ale może znajdę kogoś, komu taka perspektywa będzie się wydawać miła, kto wie...?~ */ GOTO 27
  IF ~  Global("View_Art_03","AR0608",1)
~ THEN REPLY #42173 /* ~"Rubinowa statuetka."~ */ GOTO 29
  IF ~  Global("View_Art_04","AR0608",1)
~ THEN REPLY #42174 /* ~"Ożywiony łańcuch kytoński."~ */ GOTO 30
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN REPLY #42175 /* ~"Posąg krzyczącego mężczyzny."~ */ GOTO 32
  IF ~  Global("View_Art_Tomb","AR0608",1)
Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN REPLY #66658 /* ~"Eee... 'Posąg' krzyczącego mężczyzny."~ */ GOTO 48
  IF ~~ THEN REPLY #42176 /* ~"Tak, jeden z obrazów..."~ */ GOTO 22
  IF ~~ THEN REPLY #42177 /* ~"Tak naprawdę chcę spytać o coś innego..."~ */ GOTO 1
  IF ~~ THEN REPLY #42178 /* ~"Tak naprawdę nie szkodzi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.7 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.1 42.0 43.0
  SAY #42179 /* ~"Który, panie?"~ */
  IF ~  Global("View_Art_07","AR0608",1)
~ THEN REPLY #42180 /* ~"Linia Brzegowa Karasuthry."~ */ GOTO 34
  IF ~  Global("View_Art_08","AR0608",1)
~ THEN REPLY #42181 /* ~"Najeźdźcy spoza Krainy."~ */ GOTO 35
  IF ~  Global("View_Art_09","AR0608",1)
~ THEN REPLY #42182 /* ~"Hazazoth Pochłaniający N'gar."~ */ GOTO 36
  IF ~  Global("View_Art_10","AR0608",1)
~ THEN REPLY #42183 /* ~"Powierzchnia Talazji."~ */ GOTO 37
  IF ~  Global("View_Art_11","AR0608",1)
~ THEN REPLY #42184 /* ~"Biblioteka."~ */ GOTO 38
  IF ~  Global("View_Art_12","AR0608",1)
~ THEN REPLY #42185 /* ~"Szaleństwo Udo."~ */ GOTO 39
  IF ~  Global("View_Art_13","AR0608",1)
~ THEN REPLY #42186 /* ~"Dolina pod Clanggedin."~ */ GOTO 40
  IF ~  Global("View_Art_14","AR0608",1)
~ THEN REPLY #42187 /* ~"Szara Wiedźma z Oinos."~ */ GOTO 41
  IF ~  Global("View_Art_06","AR0608",1)
~ THEN REPLY #42188 /* ~"Studium Ruchu Fali #7."~ */ GOTO 42
  IF ~  Global("View_Art_05","AR0608",1)
~ THEN REPLY #42189 /* ~"Chwilowe Spojrzenie z Murów Moch'chma."~ */ GOTO 43
  IF ~~ THEN REPLY #42190 /* ~"Tak naprawdę chcę zapytać o coś innego..."~ */ GOTO 1
  IF ~~ THEN REPLY #42191 /* ~"Żaden. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #42192 /* ~"Witraż, który został znaleziony, gdy unosił się w powietrzu w trzeciej warstwie Arkadii trzydzieści dwa lata temu. Przepowiadał wypadki, które miały nastąpić. Kiedy już się wydarzyły, wówczas wizerunki na witrażu zblakły, tworząc to, co widzisz teraz. Niektórzy wierzą, że witraż uwięził zarówno światłość jak i ciemność z Kuli Nocy i Dnia na Arkadii, a następnie powoli uwalnia je, powodując w ten sposób krótkie, ale powolne gaśnięcie poranka i zmroku - ale tylko w obrębie szkieł, z których został utworzony."~ */
  IF ~~ THEN REPLY #42193 /* ~"Kula Nocy i Dnia? Arkadia?"~ */ GOTO 24
  IF ~~ THEN REPLY #42194 /* ~"Pozwól, że zapytam o inny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #42195 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42196 /* ~"To wszystko, co chcę wiedziec. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #42197 /* ~"Arkadia to Sfera spokoju i pokoju, znana też jako Kraina Dobra Doskonałego. Kula Nocy i Dnia to kula mieszcząca się na wierzchołku najwyższego szczytu Arkadii; każda połowa emituje albo światło, albo mrok. Obrót kuli sprawia, że na Arkadii jest dzień lub noc."~ */
  IF ~~ THEN REPLY #42198 /* ~"Pozwól, że zapytam o inny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #42199 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42200 /* ~"To wszystko, co chcę wiedziec. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #42201 /* ~"A, Róg Oczyszczenia... róg z kutego ołowiu. Metal ten pochodzi prosto z sześcianu Acheronu. Powiadają, że Róg Oczyszczenia rozbrzmiał po raz ostatni na polu bitwy w Krainie Niezgody, gdzie spotkały się Klany Szakala i Wydłubanego Oka. Legendy głoszą, że moc rogu została użyta pod koniec bitwy, aby zebrać unoszące się sześciany i zgnieść Armię Szakala, zanim mogła ujść z pola."~ */
  IF ~~ THEN REPLY #42202 /* ~"Sześciany? Acheron?"~ */ GOTO 26
  IF ~~ THEN REPLY #42203 /* ~"Pozwól, że zapytam o inny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #42204 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42205 /* ~"To wszystko, co chcę wiedziec. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #42206 /* ~"Acheron to Sfera surowo przestrzeganego prawa, gdzie podporządkowanie się jest ważniejsze od dobra. Zbudowana jest z gigantycznych metalowych sześcianów, które unoszą się w nieskończonej próżni... wiele sześcianów jest tak wielkich, że na ich ścianach zbudowano miasta czy nawet całe królestwa."~ */
  IF ~~ THEN REPLY #42207 /* ~"Pozwól, że zapytam o inny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #42208 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42209 /* ~"To wszystko, co chcę wiedziec. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 21.2
  SAY #42210 /* ~"Wszystkie są wyszczerbane z wielkiej magicznej płyty czarnego, nieskończonego lodu, który spoczywa w czarnych trzewiach Sfery Okantus." Yvana przerywa, bębniąc palcami w podbródek. "Powiadają, że ta płyta lodu jest ostatecznym celem Styksu, i że wspomnienia wszystkich tych, którzy zanurzyli się w niszczycielskie dla pamięci nurty Styksu, wciąż są zamrożone w lodzie."~ */
  IF ~~ THEN REPLY #42211 /* ~"Jeśli wody Styksu niszczą czyjeś wspomnienia, czy lód z Okantusa zrobiłby to samo?"~ */ GOTO 28
  IF ~~ THEN REPLY #42212 /* ~"Pozwól, że zapytam o następny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #42213 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42214 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #42215 /* ~"Mogę jedynie przypuszczać, że tak."~ */
  IF ~~ THEN REPLY #42216 /* ~"Pozwól, że zapytam o następny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #42217 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42218 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.3
  SAY #42219 /* ~"Ten fragment został znaleziony w katedrze na urodzajnych polach Elizjum w warstwie pierwszej, Amorii-Wolnej-od-Zgryzot, w miejscu, gdzie graniczy z rzeką Oceanus. Nie wiadomo, jak się nazywa, ale sprawność i kunszt wykonania uważane są za jeden z najbardziej uderzających przykładów obróbki kamieni szlachetnych w Sferach. Prostota, z jaką ten kawałek chwyta, czyści i wzmacnia światło poprzez swoje fasety, jest częścią jego zapierającej dech w piersiach cudowności. Wydaje się, że wydobywa na światło dzienne możliwe ideowe powiązanie między najbardziej złymi i najczystszymi bytami w wieloświecie... fascynujące."~ */
  IF ~~ THEN REPLY #42220 /* ~"Pozwól, że zapytam o następny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #42221 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42222 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.4
  SAY #42223 /* ~Łańcuch pochodzi z Brzęczącego Hiter, miasta łańcuchów, które wisi na Minaurosie, trzeciej warstwie Sfery Baator. Tamtejsze łańcuchy są najpiękniejsze w wieloświecie, lecz mieszkańcy Brzęczącego Hiter są złośliwcami i okrutnikami, więc używają łańcuchów niczym żywych broni przeciwko wszystkiemu, co wchodzi do ich miasta i gwałci ich prawa."~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #42224 /* ~"Kytoni chodzą wokół miasta łańcuchów niczym pająki w pajęczynie, zdobni w łańcuchy ciasno owinięte wokół ciała. Mają moc znaną jako 'dar łańcuchów', który pozwala im na manipulowanie łańcuchami przy pomocy umysłu. Niektórzy wierzą, że łańcuch z mojej galerii został ożywiony w czasie bitwy, w której kontrolujący go kyton został zabity od ciosu przeklętego młota... a jego esencja życia przeszła potem na sam łańcuch."~ */
  IF ~~ THEN REPLY #42225 /* ~"Pozwól, że zapytam o następny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #42227 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42228 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.5
  SAY #42229 /* ~"Uważa się, że posąg ten nie jest ostatecznym przeznaczeniem etherseriańskiego czarnoksiężnika Gangroighydona. Zaatakowany przez zbieraninę rywalizujących z nim czarnoksiężników w momencie, gdy osiągnął szczyt ekstazy mistycznej, dał się uwięzić przy pomocy czaru, który przemienił jego ciało w kamień. Powiadają, że Gangroighydon skamieniał z ostatnim, okropnym przekleństwem na ustach. Było to przekleństwo tak straszliwe, że *nigdy* żadna żywa istota nie miała go wymówić."~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #42230 /* ~"Powiadają, że moc klątwy wystarczyła, aby pokryć pęcherzami ciała tych, którzy ją usłyszeli. Mogła też roztrzaskać same kamienie."~ */
  IF ~~ THEN REPLY #42231 /* ~"Pozwól, że zapytam o następny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #42232 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42233 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.0
  SAY #42234 /* ~"Karasuthra to warstwa Krainy Zwierząt, wciąż pokryta mrokiem i wypełniona wszelkimi zwierzętami, które czyhają na swe ofiary nocą. Pewien malarz, który zakochał się w Pani Kotów i poszedł za nią do jej ojczyzny, dał mi te malowidła. Nigdy natomiast nie zdradził mi tajemnicy ich stworzenia."~ */
  IF ~~ THEN REPLY #42235 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42236 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42237 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 22.1
  SAY #42238 /* ~"Interesujący eksponat, nieprawdaż? Malarzowi udało się oddać ciekawy efekt z tymi formami w cieniu klifu. Kobieta, która mi to przyniosła, powiedziała, że znalazła go w opuszczonym obozie w Krainach Zewnętrznych... autora nie znaleziono nigdy. Prawdopodobnie został zamordowany przez tych samych najeźdźców, których wizerunek uwiecznił na malowidle."~ */
  IF ~~ THEN REPLY #42239 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42240 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42241 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.2
  SAY #42242 /* ~"To kopia obrazu z jednej ze ścian Wieży Bramowej, będącej największym azylem w Sigil. Wszystko, co jego mieszkaniec mógł powiedzieć to 'Hazazoth pochłonął N'gar... Hazazoth pochłonął N'gar...' Trochę to przerażające, jak sądzę, ale niemniej jednak obraz jest wspaniały."~ */
  IF ~~ THEN REPLY #42243 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42244 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42245 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.3
  SAY #42246 /* ~"Talazja to morze, w którym swój początek i koniec ma Rzeka Oceanus, wijąca się swym nurtem poprzez większą część Sfery Elizjum. Ten obraz został namalowany przez jednego z mieszkańców wyspy."~ */
  IF ~~ THEN REPLY #42247 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42248 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42249 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.4
  SAY #42250 /* ~"Niewiele wiem o tym eksponacie... po prostu pewnego dnia znalazłam go na progu mojej galerii, opatulonego w czarną tkaninę z napisem 'Z Cytadeli'. Jeden wytrawny klient wysnuł hipotezę, że być może to forteca jakiegoś wielkiego czarnoksiężnika, zawieszona w obrębie pół-sfery ich własnego tworu."~ */
  IF ~~ THEN REPLY #42251 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42252 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42253 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.5
  SAY #42254 /* ~"To malowidło obrazuje jedną z legend świata Goha należącego do pierwszej sfery materialnej. Udo był królem-czarodziejem o takiej sprawności i mocy, że postanowił rzucić zaklęcie, które zmieniłoby go w Moc, zaś ludzi jego wielkiego narodu w boskie sługi. Po wypełnieniu się zaklęcia, błyskawica uderzyła w pobliżu pałacu Udo i stanął on w płomieniach. Zanim echo grzmotu ucichło, miasto opustoszało... nie znaleziono ani jednej żywej istoty. Ponad 70 tysięcy ludzi zniknęło bez śladu, w mgnieniu oka. Nikt nie wie, co stało się z Udo i jego ludem."~ */
  IF ~~ THEN REPLY #42255 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42256 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42257 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 22.6
  SAY #42258 /* ~"Bulbog Kamienny Nos sprzedał mi ten obraz... przedstawia on pole pod Górą Clanggedin, domem karłowatych einheriarów - duchów Sfer Wyższych, które służą jako strażnicy lub wojownicy - w Sferze Arkadii."~ */
  IF ~~ THEN REPLY #42259 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42260 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42261 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 22.7
  SAY #42262 /* ~"Powiadają, że ten obraz przedstawia portret Raveli Szaradnej, prawdopodobnie najbardziej złej wiedźmy, jaka kiedykolwiek terroryzowała Szare Pustkowie i tereny leżące poza nim."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42263 /* ~"Co ci jest wiadomo o Raveli Szaradnej?"~ */ GOTO 17
  IF ~~ THEN REPLY #42264 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42265 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42266 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 22.8
  SAY #42267 /* ~"Ten eksponat sprzedał mi jakiś młodzieniec, którego imienia już nie pomnę. Miał ich więcej, ale miały już swoich właścicieli... albo tak mi mówił. Tak bardzo chciałam mieć całą kolekcję, ale, niestety - często bywa tak, że nie jest dane, aby niektóre rzeczy się spełniły."~ */
  IF ~~ THEN REPLY #42268 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42269 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42270 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.9
  SAY #42271 /* ~"Moch'chma to forteca githzerai, unosząca się w Sferze Limbo. Chwilowe Spojrzenie zostało namalowane przez uczoną chaosu o imieniu Dy, która pamięta wszystko, co zobaczy, z doskonałą czystością - kiedy nie ma napadu szału."~ */
  IF ~~ THEN REPLY #42272 /* ~"Pozwól, że zapytam o następny obraz..."~ */ GOTO 22
  IF ~~ THEN REPLY #42273 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42274 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~  GlobalGT("Yvana","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #42275 /* ~Yvana uśmiecha się i gestem przywołuje cię do siebie. "Witaj ponownie. Czy masz jakieś pytania odnośnie tych eksponatów?"~ */
  IF ~~ THEN REPLY #42276 /* ~"Nie, ale mam inne pytania..."~ */ GOTO 1
  IF ~~ THEN REPLY #42277 /* ~"Tak..."~ */ GOTO 21
  IF ~~ THEN REPLY #42278 /* ~"Nie teraz. Żegnaj, Yvano."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.4
  SAY #42279 /* ~Yvana bierze eksponat i przeciąga palcami po jego powierzchni. Palcami wyczuwa zewnętrzną powierzchnię, wreszcie podaje ci go z powrotem. "To coś więcej aniżeli dobrze wykonany zabawkowy modron, to pewne. Być może to jakaś zgadywanka albo klucz do portalu."~ */
  IF ~~ THEN REPLY #42280 /* ~"Czym jest modron?"~ */ GOTO 46
  IF ~~ THEN REPLY #42281 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42282 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #42283 /* ~"Modrony to rasa praworządnych i sprawnie zorganizowanych stworzeń. Występują w wielu postaciach i kształtach, przy czym każdy zajmuje inny stopień w sztywnej hierarchii modronów. Myślę, że ten tu to 'kwadron'."~ */
  IF ~~ THEN REPLY #42284 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #42285 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 1.0
  SAY #65153 /* ~Yvana przebiega koniuszkami palców po wygrawerowanych literach 'dziennika'. "Nie. Dobrze zrobisz, jeżeli zwrócisz się z tym pytaniem do prawdziwego językoznawcy... można takiego znaleźć w Gmachu Rozrywki."~ */
  IF ~~ THEN REPLY #65154 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #65155 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 21.6
  SAY #66654 /* ~"Dziwne, że o to pytasz... Słysząc straszliwy hałas, kilku klientów zbiegło się do mnie i staliśmy tak nad okaleczonym ciałem, które leżało na podłodze. Twardogłowi przybyli usunąć stamtąd ciało, ale nie udało im się znaleźć sprawcy. Powiedziałam im, że najprawdopodobniej jakiś szaleniec wypuścił Gangroighydona i klątwa czarnoksiężnika go zabiła... ale starego czarnoksiężnika nie można było nigdzie znaleźć. Niczego więcej nie wiem."~ */
  IF ~~ THEN REPLY #66655 /* ~"Pozwól, że zapytam o następny eksponat..."~ */ GOTO 21
  IF ~~ THEN REPLY #66656 /* ~"Mam następne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #66657 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END
