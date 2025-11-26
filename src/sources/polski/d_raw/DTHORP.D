// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORP~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51205 /* ~Stworzenie może imponować rozmiarami. Mierzy sobie bez mała trzy metry. Jego masywną budowę uwydatnia silna muskulatura. Kiedy się doń zbliżasz, spogląda na ciebie wesoło i wybucha śmiechem.~ */
  IF ~~ THEN REPLY #51206 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #51207 /* ~Nie zwracaj uwagi na stwora.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51208 /* ~Stwór spogląda na ciebie z wysoka i uśmiecha się przyjacielsko "Czego chcesz, karzełku?"~ */
  IF ~~ THEN REPLY #51209 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51210 /* ~"Nic, żegnaj."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.0 6.1 7.1 8.1 9.1 10.1 11.1 12.0 14.0 23.0
  SAY #51211 /* ~"Masz pytanie, więc może Thorp, będzie miał odpowiedź." Stwór uśmiecha się.~ */
  IF ~~ THEN REPLY #51212 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #51213 /* ~"Co tutaj robisz?"~ */ GOTO 6
  IF ~~ THEN REPLY #51214 /* ~"Co możesz mi powiedzieć o tej dzielnicy?"~ */ GOTO 13
  IF ~  GlobalGT("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51215 /* ~"Powiadasz, że zamierzacie zmierzyć się z abiszai?"~ */ GOTO 15
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51216 /* ~"Rozmawiałem z Xanthią. Powiedziała mi, że zamierzacie walczyć z abiszai. Czy to prawda?"~ */ GOTO 15
  IF ~~ THEN REPLY #68262 /* ~"Czas już na mnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51217 /* ~Stwór z ogłuszającym łoskotem uderza się w pierś. "Jam jest Thorp." Wznosi ramiona ponad głowę i potrząsa pięściami ku niebu. "Thorp to potężny wojownik. Każdy tokola to potężny wojownik." Kładzie swoje pięści na biodrach i spogląda na ciebie "A ty kto?"~ */
  IF ~~ THEN REPLY #51219 /* ~Kłamstwo: "Jestem Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALThorp_Adahn","GLOBALAdahn",1)
IncrementGlobalOnceEx("GLOBALChaotic_Thorp_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #51220 /* ~"Nie pamiętam swojego imienia."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #51221 /* ~Stwór zastanawia się przez chwilę, a potem kiwa głową "To dobre imię dla karzełka. Ładnie brzmi. Podoba się Thorpowi."~ */
  IF ~~ THEN REPLY #51222 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51223 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #51224 /* ~Stwór kiwa głową, lustrując twoje blizny. "Masz mnóstwo blizn. Musisz być wielkim wojownikiem. Tak jak Thorp!" Marszczy brwi i kiwa głową w zamyśleniu "Oberwałeś też po głowie nie raz. Nie pamiętasz swojego imienia. Nie smuć się, za którymś razem wszystko sobie przypomnisz."~ */
  IF ~~ THEN REPLY #51225 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51226 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 13.0
  SAY #51227 /* ~Stwór rechocze i uśmiecha się do ciebie. "Thorp jest tutaj z przyjaciółmi." Pokazuje parę milczących tokolów. "Chcemy utłuc... latającego jaszczura." Thorp ryczy i wali o swoją pierś pięściami wielkości słusznych udźców wołowych.~ */
  IF ~~ THEN REPLY #51228 /* ~"Hm... Latającego jaszczura?"~ */ GOTO 7
  IF ~~ THEN REPLY #51229 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51230 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51231 /* ~Stwór kiwa głową i zaczyna dłońmi naśladować pełzające ruchy. "Jaszczur, wiesz? Ale latający jaszczur." Potrząsa swoimi ramionami jak ogromny bezkształtny ptak. Potem opanowuje się i patrzy na ciebie z oczekiwaniem.~ */
  IF ~~ THEN REPLY #51232 /* ~"Masz na myśli smoka?"~ */ GOTO 8
  IF ~~ THEN REPLY #51233 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51234 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51235 /* ~Stwór prycha i prostuje się na swoją całą, imponującą wysokość. "Thorp dobry, ale nie aż tak dobry. Pewnego dnia Thorp utłucze smoka..." Spogląda w nieodgadnioną przestrzeń z tęsknym wyrazem twarzy, a potem ciężko wzdycha "Ale ten dzień to jeszcze nie dzisiaj."~ */
  IF ~~ THEN REPLY #51236 /* ~"Hm, jeżeli nie chodzi o smoka, to o jakie stworzenie?"~ */ GOTO 9
  IF ~~ THEN REPLY #51237 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51239 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51240 /* ~"Thorp nie pamięta, jak to Xantia nazywa..." Namyśla się przez chwilę. "To jaszczur, wysoki jak Thorp. Chodzi wyprostowany, ma skrzydła, ma pazury, czerwonej barwy. Zdaje się, że nazwała go opie-szały." Thorp milknie, a potem wzrusza potężnymi ramionami.~ */
  IF ~~ THEN REPLY #51241 /* ~"Słyszałem o stworze zwanym abiszai. Może to o niego ci chodzi?"~ */ DO ~SetGlobal("Barsh_Abishai","GLOBAL",1)
~ JOURNAL #67299 /* ~Tokola o imieniu Thorp, i jego dwaj pobratymcy z tegoż samego plemienia, wybierają się na polowanie na abiszai. Co prawda nie wygląda na to, aby osobnicy ci grzeszyli przesadną inteligencją, ale też, trzeba przyznać, nie należą bynajmniej do ułomków. Może im się uda.~ */ GOTO 10
  IF ~~ THEN REPLY #51242 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51243 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51245 /* ~Oczy stwora rozjaśniają się, a na jego usta wstępuje radosny uśmiech. Tokola kiwa głową. "Tak, tak. Abiszai. Latający jaszczur. Thorp i jego druhowie tłuką naprawdę dobrze. Thorp będzie czcigodny wojownik. Xantia przyjmie przeprosiny..."~ */
  IF ~~ THEN REPLY #51246 /* ~"O co chodzi z tą Xanthią i przeprosinami?"~ */ GOTO 11
  IF ~~ THEN REPLY #51247 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51248 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51249 /* ~"Thorp poszedł z druhami do tawerny ubiegłej nocy. Thorp upił się jak bela, przewrócił się na stół Xantii i wylał na nią wszystkie napoje." Te wspomnienia najwyraźniej zmieszały Thorpa "Xantia powiedziała, że nie przyjmie przeprosin, dopóki Thorp nie udowodni, że jest czcigodnym wojownikiem."~ */
  IF ~~ THEN REPLY #51250 /* ~"Tak więc zgładzenie abiszai ma cię uczynić czcigodnym wojownikiem?"~ */ JOURNAL #67300 /* ~Z tego, co opowiedział mi Thorp, zrozumiałem, że niedawno Tokola razem ze swoimi kamratami zalał się w pestkę w oberży i obraził przebywającą tam damę, wylewając na nią niechcący wszystkie napoje. Niewiasta ta, o imieniu Xanthia, nie chce przyjąć przeprosin Thorpa, dopóki ten nie dowiedzie, że jest czcigodnym wojownikiem. A czcigodny wojownik to według niej ktoś, kto potrafi zgładzić abiszai.~ */ GOTO 12
  IF ~~ THEN REPLY #51251 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51252 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51253 /* ~Thorp wzrusza ramionami. "Xantia tak powiedziała. Thorp nie wie."~ */
  IF ~~ THEN REPLY #51254 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51255 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #51256 /* ~Thorp wpatruje się przez chwilę w ciebie, a potem wzrusza ramionami. "Thorp nie wiedzieć. Thorp tutaj od niedawna." Na jego twarzy pojawia się dziecięcy uśmiech "Thorp tutaj bawić się!"~ */
  IF ~  Global("Barsh_Abishai","GLOBAL",0)
~ THEN REPLY #51257 /* ~"Bawić się? W jakim sensie?"~ */ GOTO 6
  IF ~  Global("Barsh_Abishai","GLOBAL",1)
~ THEN REPLY #51258 /* ~"Tak. Będziecie tłuc abiszai."~ */ GOTO 14
  IF ~  Global("Barsh_Abishai","GLOBAL",2)
~ THEN REPLY #63237 /* ~"Tak. Będziecie tłuc abiszai."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #51259 /* ~Thorp uśmiecha się i entuzjastycznie przytakuje. "Tak, tak. Thorp i jego przyjaciele tłuką dobrze!"~ */
  IF ~~ THEN REPLY #51260 /* ~"Ach tak. Mam jeszcze kilka innych pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51261 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.3 2.4 13.2
  SAY #51262 /* ~Thorp uśmiecha się i entuzjastycznie przytakuje. "Tak, tak. Thorp i jego przyjaciele tłuką dobrze!"~ */
  IF ~  !Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51263 /* ~"No cóż, baw się dobrze. Żegnaj."~ */ EXIT
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51264 /* ~Ostrzeż Thorpa: "Słyszałem, że abiszai pokonać można tylko z pomocą magii."~ */ DO ~AddexperienceParty(6000)
IncrementGlobalOnceEx("GLOBALGood_Thorp_1","GLOBALGood",1)
SetGlobal("Barsh_Abishai","GLOBAL",4)
~ JOURNAL #67301 /* ~Ostrzegłem Thorpa, że abiszai można uśmiercić tylko z pomocą magicznego oręża. Dobrze, że to uczyniłem, bo inaczej całe to polowanie na abiszai miałoby dla Thorpa i jego kamratów bardzo żałosny finał.~ */ GOTO 16
  IF ~  Global("Know_Xanthia_Plan","GLOBAL",1)
~ THEN REPLY #51265 /* ~Nie ostrzegaj Thorpa: "No cóż, baw się dobrze. Mam wrażenie, że odniesiesz zwycięstwo. Żegnaj."~ */ DO ~AddexperienceParty(1500)
IncrementGlobalOnceEx("GLOBALEvil_Thorp_1","GLOBALGood",-1)
SetGlobal("Barsh_Abishai","GLOBAL",3)
~ JOURNAL #67302 /* ~Wygląda na to, że Thorp nie ma zielonego pojęcia, że abiszai można pokonać tylko za pomocą magii albo magicznego oręża. Mogłem go ostrzec... Chociaż z drugiej strony, zepsułbym w ten sposób całkiem nieźle się zapowiadającą walkę.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #51266 /* ~Thorp obdarza cię spojrzeniem pełnym zafrasowania "Trzeba magii? A skąd ty wiedzieć?"~ */
  IF ~~ THEN REPLY #51267 /* ~"Tak się dowiedziałem, Thorpie. Tak ludzie mówią."~ */ GOTO 17
  IF ~~ THEN REPLY #51268 /* ~"Rozmawiałem z Xantią. Ona mi to powiedziała."~ */ GOTO 21
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51269 /* ~"Thorp nie ma magii. Przyjaciele Thorpa też nie mają magii. Jak zaczniemy tłuc abiszai, to umrzemy..." Thorp wzdycha ciężko "Thorp nie stanie się czcigodnym wojownikiem. A Xanthia nie przyjmie przeprosin."~ */
  IF ~~ THEN REPLY #51270 /* ~"Chciałeś ryzykować życiem dla honoru damy, Thorpie. Tak postępuje tylko czcigodny wojownik."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51271 /* ~Thorp wpatruje się w ciebie przez moment bezmyślnym spojrzeniem, a potem na jego twarzy pojawia się szeroki uśmiech. "Naprawdę? Thorp i przyjaciele Thorpa to czcigodni wojownicy?"~ */
  IF ~~ THEN REPLY #51272 /* ~"Tak. Możesz uznać, że honor Xantii znalazł właściwą satysfakcję, a przeprosiny zostały przyjęte."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 22.0
  SAY #51273 /* ~"Thorp dziękuje ci. Ty ocaliłeś mu życie. Ty ocaliłeś życie przyjaciół Thorpa." Odwraca się do pary milczących tokolów i tłumaczy im coś pośpiesznie podniesionym głosem. W chwilę później cała trójka oddaje ci pokłon i każdy z nich ofiarowuje ci po sakiewce.~ */
  IF ~~ THEN REPLY #51274 /* ~"Dziękuję."~ */ DO ~GiveGoldForce(600)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51275 /* ~Thorp uśmiecha się "Ty dobry przyjaciel. Ty zasługujesz na to."~ */
  IF ~~ THEN REPLY #51277 /* ~"Teraz już czas na mnie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.1
  SAY #51278 /* ~Wyraz zastanowienia na twarzy Thorpa po pewnym czasie ustępuje miejsca odkrywczemu zdumieniu. "Xantia ma Thorpa za głupca. Ona kłamała, żeby Thorp i przyjaciele Thorpa zginęli..."~ */
  IF ~~ THEN REPLY #51279 /* ~"Obawiam się, że to prawda, Thorpie."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #51280 /* ~Thorp kiwa głową ze zrozumieniem. "Xantia nie zasługuje na przeprosiny. Thorp jest już wolny od przysięgi."~ */
  IF ~~ THEN REPLY #51281 /* ~"Tak, jesteś wolny od długu."~ */ GOTO 19
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #51282 /* ~Widzisz Thorpa, tokolę. Kiedy się doń zbliżasz, wita cię przyjacielskim uśmiechem: "Karzełek wrócił! Co ty teraz chcesz od Thorpa?"~ */
  IF ~~ THEN REPLY #51283 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51284 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #51285 /* ~Widzisz Thorpa, tokolę. Kiedy się doń zbliżasz, wita cię przyjacielskim rechotem: "Karzełek wrócił! Czego chcesz od Thorpa?"~ */
  IF ~~ THEN REPLY #66163 /* ~"Niczego. Po prostu czekam na rozpoczęcie tej wspaniałej walki pomiędzy wami a abiszai."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #63465 /* ~Thorp wybucha gromkim śmiechem, który przy pewnej dozie szczęścia mógłby ogłuszyć wołu, a potem wali o swoją rosłą pierś kułakami wielkości kamieni młyńskich. "Thorp potężny wojownik! A już wkrótce Thorp będzie czcigodny wojownik!" Po tej prezentacji uspokaja się i posyła ci spojrzenie pełne śmiertelnej powagi. "A wtedy dama przebaczy Thorpowi jego nieokrzesanie."~ */
  IF ~~ THEN REPLY #63466 /* ~"Żegnaj, Thorpie."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 26 // from:
  SAY #63467 /* ~Widzisz Thorpa, tokolę. Kiedy się doń zbliżasz, wita cię przyjacielskim śmiechem: "Karzełek, dobry przyjaciel Thorpa wrócił! Czego chcesz od Thorpa?" Tokola uśmiecha się ciepło: "Thorp nie zapomniał, że uratowałeś Thorpowi życie."~ */
  IF ~~ THEN REPLY #66164 /* ~"Niczego, żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Kill_Special_Abashai_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #66165 /* ~Widzisz Thorpa, tokolę. Kiedy się doń zbliżasz, wita cię przyjacielskim śmiechem: "Thorp dzięki ci składa, karzełku. Ty pomogłeś Thorpowi!"~ */
  IF ~~ THEN REPLY #66166 /* ~"Ależ proszę bardzo. Bywaj zdrów, Thorpie."~ */ JOURNAL #67303 /* ~Czasem naprawdę zadziwiam samego siebie. Zrobiło mi się żal Thorpa i jego przyjaciół, więc pomogłem im w uśmierceniu abiszai. Cóż tego mogę powiedzieć? I ja miewam chwile słabości.~ */ EXIT
END
