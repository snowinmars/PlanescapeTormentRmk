// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRADINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRADINE~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20209 /* ~Na twój widok kobieta wydaje dziki wrzask. Zaczyna uciekać, a tatuaż wokół jej szyi zdaje się delikatnie poruszać w rytm jej kroków.~ */
  IF ~~ THEN REPLY #20210 /* ~"Zatrzymaj się..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20211 /* ~Pozwól jej odejść.~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #20212 /* ~Widząc cię powtórnie, kobieta wykrzywia twarz. "Znowu odmówił, nieprawdaż? I z pewnością przybywasz, aby odebrać to, co prawnie należy do mnie."~ */
  IF ~~ THEN REPLY #20213 /* ~"Prawnie należące do ciebie? Nie masz żadnego prawa do tego imienia i numeru. Ukradłaś je."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Radine_1","GLOBALLaw",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20214 /* ~"Nie potrzebujesz numeru, aby żyć. On tak. Nawet jeśli sprawi ci to ból, musisz z niego zrezygnować. Na dłuższą metę tak będzie lepiej dla was obojga."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Radine_1","GLOBALGood",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20215 /* ~"Oddaj to albo sam to dla niego odbiorę."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #20216 /* ~"Nie potrzebujesz jego numeru, aby żyć. Zrób sobie własny, jeśli go potrzebujesz, aby cię ogrzewał."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Radine_1","GLOBALLaw",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20217 /* ~"Zapomnij o tym. To nie jest warte mojego zachodu."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.3 9.1 13.1
  SAY #20218 /* ~"Myślę, że masz rację. Byłam złym człowiekiem, oj tak, i nie mogę tego zatrzymać. Masz." Ściąga z szyi wijący się tatuaż i wręcza go tobie. Cała przy tym drży. "Możesz mu już zdradzić jego imię. Nazywał się i będzie się nazywać Ku'u Yin. A teraz pozwól mi odejść."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #20219 /* ~"Oto trochę brzdęku za twój kłopot. Kup sobie coś, aby cię ogrzewało."~ */ DO ~TakePartyGold(30)
IncrementGlobalOnceEx("GLOBALGood_Radine_2","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #20220 /* ~"Dzięki. Mam jeszcze kilka pytań..."~ */ GOTO 5
  IF ~~ THEN REPLY #20221 /* ~"Dzięki. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 7.0 19.0
  SAY #20222 /* ~Kobieta kurczy się na dźwięk twojej groźby. "A powiedział mi, że ten numer będzie mnie chronić przed złymi ludźmi. Weź więc tę przeklętą rzecz i skończmy z tym!" Zdziera wijący się tatuaż z szyi, wraz ze sporym kawałkiem skóry, ciska go w twoją stronę i ucieka.~ */
  IF ~~ THEN REPLY #20223 /* ~Goń ją.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20224 /* ~Pozwól jej odejść.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #20225 /* ~"Wielkie dzięki, śmiałku." Kobieta chowa pieniądze do kieszeni. Od chwili, gdy opuściła ją moc tatuażu, wygląda bardziej niechlujnie. "Najlepiej byłoby więc dla mnie, gdybym teraz odeszła... i wykorzystała brzdęk, który dostałam od ciebie. Być może spotkamy się jeszcze w bardziej sprzyjających okolicznościach."~ */
  IF ~~ THEN REPLY #20226 /* ~"Tak. Żegnaj, Radine."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20227 /* ~"Nie kradnij już więcej imion, Radine. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #20228 /* ~Kobieta odwraca głowę i oddala się powłócząc nogami. Brak wytatuowanego numeru, który otaczał ją mgiełką tajemnicy, sprawia, że wygląda na całkowicie pozbawioną życia. Jest to ostatnia rzecz jaką zauważasz.~ */
  IF ~~ THEN REPLY #20229 /* ~"Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #20230 /* ~Gdy wracasz, kobieta nie wykazuje żadnego zainteresowania, po chwili jednak otrząsa się z otępienia. W chwili gdy to robi, tatuaż na jej szyi zaczyna się wić. "To znowu ty, śmiałku? Mówię ci, że nie zdradzę imienia i nie oddam numeru. Powiem ci coś - używanie tego imienia i numeru przyniosło mi szczęście. Zapłacę mu dobrze, to będzie mógł sobie kupić nowe, co ty na to?"~ */
  IF ~~ THEN REPLY #20231 /* ~"Ile możesz dać?"~ */ GOTO 7
  IF ~~ THEN REPLY #20232 /* ~"Chyba się nie dogadamy. Oddaj mi imię i numer."~ */ GOTO 7
  IF ~~ THEN REPLY #45386 /* ~"A może bym tak kupił je od ciebie?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 8.3
  SAY #20233 /* ~"Co powiesz na przyzwoite dwadzieścia monet? To powinno mu wystarczyć, dopóki nie zdobędzie nowego kompletu, co? Bądź tak dobry i idź zapytaj go, czy to wystarczy."~ */
  IF ~~ THEN REPLY #20234 /* ~"Po prostu daj mi imię i numer albo będę musiał wydrzeć je z ciebie. Wierz mi, nie spodoba ci się to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #20235 /* ~"Świetnie. Pójdę go zapytać. Odpowiedz najpierw na kilka pytań."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #20236 /* ~"Świetnie. Pójdę go zapytać."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #45387 /* ~"A może bym tak kupił je od ciebie?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.1 9.3 10.2 11.2 12.1 13.2 14.1 15.0 16.1 17.0 19.1
  SAY #20237 /* ~"Być może znam odpowiedzi, a być może nie."~ */
  IF ~~ THEN REPLY #20238 /* ~"Opowiedz mi o sobie."~ */ GOTO 9
  IF ~~ THEN REPLY #20239 /* ~"Opowiedz mi o tym miejscu."~ */ GOTO 11
  IF ~~ THEN REPLY #20240 /* ~"Opowiedz mi o tym tatuażu."~ */ GOTO 10
  IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN REPLY #20241 /* ~"O jakiej cenie wspominałaś?"~ */ GOTO 7
  IF ~~ THEN REPLY #20242 /* ~"W takim razie zapomnij o tym."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 11.0
  SAY #20243 /* ~"Ja? Mam w tej chwili dwa imiona, a pokażę ci tylko jedno - nawet nie myśl o kradzieży tego nowego, hi, hi! Możesz mnie nazywać Radine, skarbie, a ja zachowam to drugie imię tylko dla siebie, przyrzekam."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20244 /* ~"Człowiek, do którego należało to imię chce odzyskać swoje imię i numer. Umiera bez nich."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20245 /* ~"Wiem, że sprawi ci to kłopot, I wiem, że niełatwo będzie zrezygnować z tego, co teraz masz, ale... czy byłabyś tak uprzejma zwrócić mu to imię i numer?"~ */ DO ~AddexperienceParty(250)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20246 /* ~"Dwa imiona, co? Musi być miło je mieć."~ */ GOTO 13
  IF ~~ THEN REPLY #20247 /* ~"Nie wątpię. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #20248 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2 11.1
  SAY #20249 /* ~"O tej wijącej się rzeczy? To jest numer identyfikacyjny. To jest mój numer, który otrzymałam od dobrego człowieka widzącego, że jest mi zimno bez numeru, który mógłby mnie chronić. Teraz jestem szczęśliwsza niż kiedykolwiek przedtem."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20250 /* ~"Ten człowiek chce je natychmiast odzyskać."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20251 /* ~"Ciekawe. Jak to działa?"~ */ GOTO 14
  IF ~~ THEN REPLY #20252 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #20253 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY #20254 /* ~"O Zakopanej Wiosce? Dość przyjemne miejsce, moim zdaniem, o ile nie przeszkadza ci odór otwieranych zwłok, śmiecie gromadzone na dachu i wszędobylskie szczury. Z pewnością jest tu dużo zimniej, jeśli ma się tylko jedno imię i żadnego numeru, który mógłby cię chronić."~ */
  IF ~~ THEN REPLY #20255 /* ~"Opowiedz mi o swoim imieniu."~ */ GOTO 9
  IF ~~ THEN REPLY #20256 /* ~"Opowiedz mi o tym numerze."~ */ GOTO 10
  IF ~~ THEN REPLY #20257 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #20258 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.0 14.0 16.0
  SAY #20259 /* ~Jej głos staje się piskliwy. "Cóż, nie może tego dostać! Zaoferował je mnie, a ja je zatrzymałam. Nigdy nic nie mówił o nie *wypożyczaniu* ich i nigdy nie mówił, że potrzebuje ich z powrotem! Nie dostanie ich! Możesz iść i powiedzieć mu to! Jeśli naprawdę potrzebuje imienia, powiedz mu, że może mieć moje... 'Radine' powinno być dość dobre dla każdego!"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20260 /* ~"Nie było dość dobre dla ciebie... dlaczego miałoby wystarczyć jemu?"~ */ GOTO 15
  IF ~~ THEN REPLY #20261 /* ~"Przekażę mu. Odpowiedz jeszcze na kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #20262 /* ~"Przekażę mu. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #45389 /* ~"A może bym tak kupił je od ciebie?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY #20263 /* ~"Tak, skarbie."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20264 /* ~"Człowiek, do którego należało to imię, chce odzyskać swoje imię i numer. Umiera bez nich."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20265 /* ~"Wiem, że sprawi ci to kłopot, I wiem, że niełatwo będzie zrezygnować z tego, co teraz masz, ale... czy byłabyś tak uprzejma zwrócić mu to imię i numer?"~ */ DO ~AddexperienceParty(250)
SetGlobal("KYName","GLOBAL",6)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20266 /* ~"Możesz odpowiedzieć jeszcze na kilka pytań?"~ */ GOTO 8
  IF ~~ THEN REPLY #20267 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #20268 /* ~"Numery to bezpieczeństwo, bezpieczeństwo to ciepło, a ciepło to komfort. Numery mogą to wszystko dla ciebie zrobić, skarbeńku, o ile szanujesz ich moc."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20269 /* ~"Człowiek, który dał ci ten numer chce go teraz z powrotem..."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20270 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #20271 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #20272 /* ~"Istnieje kolosalna różnica między dorastaniem pod własnym imieniem i korzystaniem z cudzego, skarbeńku. Nowe nastawienie kryjące się pod starym imieniem może zmienić to wszystko. Widzisz, co zrobiłam z tym imieniem?"~ */
  IF ~~ THEN REPLY #20273 /* ~"Porozmawiam z nim o tym. Najpierw odpowiedz na kilka pytań."~ */ GOTO 8
  IF ~~ THEN REPLY #20274 /* ~"Dobrze więc. Porozmawiam z nim o tym."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #20275 /* ~Kobieta znów wpatruje się tępo w dal, ale tym razem jej umysł nie błądzi tak bardzo - nie wystraszyła jej twoja obecność. "To znowu ty, co?"~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20276 /* ~"Czy ty jesteś Radine? Człowiek, któremu zabrałaś imię, chce je teraz z powrotem."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20277 /* ~"Mam jeszcze kilka pytań do ciebie..."~ */ GOTO 8
  IF ~~ THEN REPLY #20278 /* ~"Nie, przykro mi. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #20279 /* ~Widzisz niechlujnie ubraną kobietę o zniszczonej twarzy. Jej oczy wpatrują się w dal. Wydaje się, że pod jej skórą zaczynają gromadzić się nowe siły, jak gdyby otrzymała nowe życie. Na jej szyi znajduje się zdobiony tatuaż. Ożywia się, kiedy do niej przemawiasz. "Ech? Czego chcesz?"~ */
  IF ~~ THEN REPLY #20280 /* ~"Chcę tylko zadać ci kilka pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #20281 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 7.3 12.3
  SAY #45388 /* ~Patrzy na ciebie jak gdybyś był szalony. "Jesteś całkowicie pomylony? Oczywiście, że nie sprzedam mojego imienia!"~ */
  IF ~~ THEN REPLY #45391 /* ~"Dlaczego nie?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #45390 /* ~"Ponieważ to jest moje imię, trepie! Nie sprzedaje się swojego imienia!"~ */
  IF ~~ THEN REPLY #45392 /* ~"Po prostu daj mi imię i numer albo będę musiał wydrzeć je z ciebie. Wierz mi, nie spodoba ci się to."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,0,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #45393 /* ~"Świetnie. Pójdę go zapytać. Odpowiedz najpierw na kilka pytań."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #45394 /* ~"Świetnie. Pójdę go zapytać."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
END
