// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DWANGYAR~

IF ~  Global("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3009 /* ~Kobieta wydaje się być w średnim wieku. W jej włosach możesz dostrzec siwe pasma. Wyraz zatroskania nie opuszcza jej twarzy... Kiedy dostrzega cię, masz wrażenie, że waha się pomiędzy poproszeniem cię, abyś zostawił ją w spokoju, a wezwaniem mężczyzny siedzącego przy stole, aby ją w tym wyręczył.~ */
  IF ~~ THEN REPLY #3010 /* ~"Witaj."~ */ DO ~SetGlobal("Wife_of_Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11844 /* ~Zostaw kobietę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11806 /* ~"Naj... najlepiej będzie, jeżeli odejdziesz, zanim wezwę swego męża. On się nie będzie bawił w uprzejmości wobec kogoś, kto nieproszony włazi do naszego domu."~ */
  IF ~~ THEN REPLY #11845 /* ~"Gdybyś naprawdę chciała go zawołać, już dawno byś to zrobiła. Chciałbym zadać ci kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11846 /* ~"Spróbuj tylko wezwać swojego męża, a oboje zginiecie. A teraz odpowiadaj na moje pytania."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11847 /* ~"Uspokój się, chciałem ci tylko zadać kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #11848 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2 25.1 25.3
  SAY #11807 /* ~Kobieta spogląda z niepokojem w stronę swojego męża. "Nie mam czasu na takie rzeczy, obcy przybyszu. Nie zawracaj mi głowy."~ */
  IF ~~ THEN REPLY #11849 /* ~"Wybacz... Czy dobrze się czujesz?"~ */ GOTO 4
  IF ~~ THEN REPLY #11850 /* ~"No to znajdź sobie czas. Mam następujące pytania..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11851 /* ~"Zatem żegnaj. Wybacz, że zabrałem ci czas."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.2 16.0 25.2
  SAY #11808 /* ~Kobieta blednie, a jej oczy rozszerzają się w przerażeniu. Zanim jesteś w stanie zadać jej pytanie, niewiasta chwyta głęboki oddech i zaczyna wrzeszczeć!~ */
  IF ~~ THEN REPLY #11852 /* ~"A niech to..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #11809 /* ~"Ja? Kobieta wygląda na zdziwioną. "Och... Tak, tak." Ścisza głos. "Lepiej będzie, jeśli odejdziesz. Mój mąż nie jest sobą ostatnimi czasy. Lepiej będzie, jak nie będziesz prowokował go swoją obecnością."~ */
  IF ~  Global("Angyar","GLOBAL",1)
~ THEN REPLY #11853 /* ~"Rozmawiałem z nim... Wygląda na zmartwionego. Co mu się przydarzyło?"~ */ GOTO 5
  IF ~  Global("Angyar","GLOBAL",0)
~ THEN REPLY #11854 /* ~"Co mu się przydarzyło?"~ */ GOTO 5
  IF ~~ THEN REPLY #11855 /* ~"Najlepiej będzie, jeżeli, ani ty, ani on nie będziecie mnie prowokowali. A teraz posłuchaj, mam następujące pytania..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11856 /* ~"Zatem żegnaj. Wybacz, że zabrałem ci czas."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #11810 /* ~"Dziwnie się zachowuje ostatnimi czasy. Może coś mu dolega..." Kobieta wzrusza ramionami bez specjalnego przekonania.~ */
  IF ~~ THEN REPLY #11857 /* ~"Co mu się naprawdę przydarzyło?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #11858 /* ~"Jeśli powiesz mi, o co chodzi, możemy mógłbym ci jakoś pomóc."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #11859 /* ~"Zatem żegnaj. Wybacz, że zabrałem ci czas."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #11811 /* ~"Myślę... Myślę, że zrobił coś, czego teraz żałuje." Jej zatroskanie przeobraża się w rozpacz. "Wydaje mi się, że podpisał Kontrakt Umarłych. Nie mogę sobie wyobrazić, co skłoniło go do tak głupiego kroku!"~ */
  IF ~~ THEN REPLY #11860 /* ~"Kontrakt Umarłych?"~ */ GOTO 12
  IF ~~ THEN REPLY #11861 /* ~"Ach tak. Wygląda na to, że nie brakuje ci trosk. Żegnaj."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #11812 /* ~Kobieta powstrzymuje cię. "Proszę cię, nie mów nikomu o tym, co ci powiedziałam. A już szczególnie mojemu mężowi..." Wygląda na przerażoną. "Obiecaj mi."~ */
  IF ~~ THEN REPLY #11862 /* ~"Dlaczego?"~ */ GOTO 10
  IF ~~ THEN REPLY #11863 /* ~Kłamstwo: "Przysięgam. Nie powiem nikomu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11864 /* ~Przyrzeczenie: "Przysięgam, że nie powiem nikomu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11865 /* ~"Nie będę niczego takiego obiecywał. Żegnaj."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 10.3 10.4 11.1 11.2
  SAY #11813 /* ~Kobieta wygląda na odprężoną... ale jedynie nieznacznie. "Zatem żegnaj."~ */
  IF ~~ THEN REPLY #11866 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #11814 /* ~Jej rozpacz jeszcze bardziej potężnieje. "Nie powinnam nigdy do ciebie otworzyć ust..." W jej oczach pojawiają się łzy. "Jestem tak samo głupia, jak mój mąż!"~ */
  IF ~~ THEN REPLY #11867 /* ~"A dlaczego to taka tajemnica?"~ */ GOTO 10
  IF ~~ THEN REPLY #11868 /* ~"Masz absolutną rację. Trzeba było mi tego nie mówić. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #11869 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #11815 /* ~"Mój mąż jest znany z porywczości... I to on wymógł na mnie obietnicę zachowania w sekrecie tego, co uczynił..." Kobieta patrzy ci prosto w oczy. "Nie wolno ci o tym komukolwiek powiedzieć."~ */
  IF ~~ THEN REPLY #11870 /* ~"Nie powinnaś była mi tego mówić... Obietnice są po to, aby ich dotrzymywać, bo jeżeli tak się dzieje, nie ma zaufania pomiędzy ludźmi. Lepiej byłoby, gdybyś niczego takiego mu nie obiecywała."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_2","GLOBALLaw",1)
~ GOTO 11
  IF ~~ THEN REPLY #11871 /* ~"Obietnica złożona pod wpływem pogróżek to żadna obietnica. Nie będę miał żadnych wyrzutów sumienia, jeśli ją złamię."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11872 /* ~"Obietnice są po to, aby je łamać. Rzadko kiedy bywają ważniejsze od czyjegoś dobrobytu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11873 /* ~Kłamstwo: "Przysięgam. Nie powiem nikomu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11874 /* ~Przyrzeczenie: "Przysięgam, że nie powiem nikomu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11875 /* ~"Nie będę niczego takiego obiecywał. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #11816 /* ~Kobieta wzdycha. "No cóż..."~ */
  IF ~~ THEN REPLY #11876 /* ~"Posłuchaj, może mógłbym jakoś ci pomóc... Czym są te Kontrakty Umarłych, o których mówiłaś?"~ */ GOTO 12
  IF ~~ THEN REPLY #11877 /* ~Kłamstwo: "Mniejsza o to. Przysięgam, że nie powiem nikomu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11878 /* ~Przyrzeczenie: "Mniejsza o to. Przysięgam, że nie powiem nikomu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11879 /* ~"Chyba na tym nasza rozmowa się zakończy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 11.0 25.0
  SAY #11817 /* ~"Martwi... Grabarze... Jeśli spiszesz z nimi umowę, oddajesz im po śmierci swoje ciało."~ */
  IF ~~ THEN REPLY #11880 /* ~"Co Grabarze robią z ciałami nieboszczyków?"~ */ GOTO 13
  IF ~~ THEN REPLY #11881 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11818 /* ~"Oni ożywiają je za pomocą swoich sztuczek czarnoksięskich, i robią z nieboszczyka chodzącego trupa, ich niewolnika, dopóki..." Spogląda bezradnie na swojego męża. "Dopóki nie zgnije do reszty."~ */
  IF ~~ THEN REPLY #11882 /* ~"Więc dlaczego twój mąż zdecydował się podpisać coś takiego?"~ */ GOTO 14
  IF ~~ THEN REPLY #11883 /* ~"Przecież twojemu mężowi po śmierci ciało nie będzie do niczego potrzebne. Więc cóż to za problem?"~ */ GOTO 15
  IF ~~ THEN REPLY #11884 /* ~"Wygląda na to, że nie brakuje ci trosk. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.2
  SAY #11819 /* ~"Może po prostu chciał przynieść do domu więcej brzdęku niż zazwyczaj. On jest bardzo ambitny... Ale myślę, że taka decyzja bardzo dużo go kosztowała."~ */
  IF ~~ THEN REPLY #11885 /* ~"To duże nieszczęście. Niemniej jednak chciałbym zadać ci kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #11886 /* ~"A nie można unieważnić tego kontraktu?"~ */ GOTO 17
  IF ~~ THEN REPLY #11887 /* ~"Przecież twojemu mężowi po śmierci ciało nie będzie do niczego potrzebne. Więc cóż to za problem?"~ */ GOTO 15
  IF ~~ THEN REPLY #11888 /* ~"Wygląda na to, że nie brakuje ci trosk. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.2
  SAY #11820 /* ~"Ten diabelski kontrakt to jedna sprawa. A druga to zmiana jaka zaszła w moim mężu... Od chwili podpisania tej umowy stał się ponury i mroczny. Nie potrafi też wziąć się za jakąś uczciwą pracę. Tak jakby padł na niego cień Pani..." Kobieta wzdycha.~ */
  IF ~~ THEN REPLY #11889 /* ~"To duże nieszczęście. Niemniej jednak chciałbym zadać ci kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #11890 /* ~"A nie można unieważnić tego kontraktu?"~ */ GOTO 17
  IF ~~ THEN REPLY #11891 /* ~"Więc dlaczego twój mąż zdecydował się podpisać coś takiego?"~ */ GOTO 14
  IF ~~ THEN REPLY #11892 /* ~"Wygląda na to, że nie brakuje ci trosk. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0 17.1 24.0
  SAY #11821 /* ~Kobieta spogląda w stronę męża z obawą. "Nie mam czasu na takie rzeczy, obcy przybyszu. Czekają mnie domowe obowiązki."~ */
  IF ~~ THEN REPLY #11893 /* ~"No to znajdź sobie czas. Teraz mam następujące pytania..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11894 /* ~"Zatem żegnaj. Wybacz, że zabrałem ci czas."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1
  SAY #11822 /* ~Kobieta patrzy na ciebie ze zdziwieniem, a potem wzdycha. "Ależ ja próbowałam. Rozmawiałam z Grabarzem, który był przy spisaniu tej przeklętej umowy, ale on potraktował mnie ozięble, jak to Graby mają w zwyczaju. Nawet palnął mi kazanie na temat mojego męża, jak gdybym nie miała prawa, aby mu pomagać i go bronić!" Kobieta ściąga usta w wąską szparkę, jakby chciała pokazać ci minę tamtego Grabarza. "Był zimny i bezduszny jak głaz."~ */
  IF ~~ THEN REPLY #11895 /* ~"Zobaczymy, co da się zrobić. Kim był ten Grabarz, u którego twój mąż podpisał ten kontrakt?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #11896 /* ~"To duże nieszczęście. Niemniej jednak chciałbym zadać ci kilka pytań..."~ */ GOTO 16
  IF ~~ THEN REPLY #11897 /* ~"Wygląda na to, że nie brakuje ci trosk. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 20.0
  SAY #11823 /* ~"Na pewno nie pogardzę tak przyjacielskim gestem." Wygląda na wdzięczną, ale maska zgryzoty zaraz spada z powrotem na jej twarz. "Ale bardzo cię proszę, abyś nie wyjawił, że to ja namówiłam cię do tego. Mój mąż jest znany z porywczości, więc gdyby się o tym dowiedział..." Kobieta wzdryga się.~ */
  IF ~~ THEN REPLY #11898 /* ~Kłamstwo: "Obiecuję, że twój mąż nie dowie się o niczym."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 21
  IF ~~ THEN REPLY #11899 /* ~Przyrzeczenie: "Obiecuję, że twój mąż nigdy się o tym nie dowie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #11900 /* ~"Nie mogę składać takich obietnic. Zobaczymy, co się teraz będzie działo."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #11824 /* ~"Ten Grab nazywa się Grobowładny... Nie znam jego imienia. Ma swój stolik w grabarskiej karczmie w Ulu. Zdaje się, że ona nazywa się 'Proch do Prochu'. Tam go z pewnością znajdziesz. Przesiaduje tam i próbuje namówić innych ludzi do odsprzedania Grabom swoich ciał."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11902 /* ~"Och, Mortai? On jest martwy."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11903 /* ~"Wobec tego pójdę go poszukać. Gdzie jest ta karczma 'Proch do Prochu'?"~ */ JOURNAL #64577 /* ~Poznałem w Ulu kobietę, której mąż, Angyar podpisał 'Kontrakt Umarłych' z jednym z Grabarzy bawiących w karczmie "Proch do Prochu", osobnikiem o imieniu Mortai Grobowładny. Zaofiarowałem się, że spróbuję unieważnić dla niej ten kontrakt, a kiedy to uczynię, powrócę do niej i opowiem jej i samemu Angyarowi, jak cała sytuacja wygląda. Żona Angyara powiedziała mi, że karczma "Proch do Prochu" znajduje się w tej samej części Ula, co jej chata. Trzeba iść na południe i na zachód od Kamienia Pamiątkowego Grabarzy, i wypatrywać zombie, który stoi nieopodal wejścia do karczmy.~ */ GOTO 20
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11904 /* ~"Mam już ten kontrakt twojego męża. Tutaj przy sobie."~ */ JOURNAL #64578 /* ~Poznałem w Ulu kobietę, której mąż, Angyar podpisał 'Kontrakt Umarłych' z jednym z Grabarzy bawiących w karczmie "Proch do Prochu", osobnikiem o imieniu Mortai Grobowładny. Ponieważ już miałem przy sobie kontrakt Angyara nie musiałem się już fatygować i wędrować do grabarskiej karczmy.~ */ GOTO 28
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #11825 /* ~"Wyjdź stąd na ulicę, potem przejdź pod Kamień Pamiątkowy, a stamtąd skieruj się na południowy zachód..." Kobieta dotyka w zamyśleniu swojej brody. "Powinieneś zaraz potem rozpoznać to miejsce. Zaraz z przodu jest tam jeden z nich..." Kobieta krzywi się z obrzydzenia. "Jeden z tych grabarskich chodzących umrzyków."~ */
  IF ~~ THEN REPLY #11905 /* ~"Dobrze. Zobaczę, czy da się coś zrobić."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 18.0 18.1 38.0
  SAY #11826 /* ~"Dzięki, obcy przybyszu... Bardzom ci wdzięczna za pomoc."~ */
  IF ~~ THEN REPLY #11906 /* ~"To dla mnie żaden kłopot. Zobaczę, czy się da unieważnić kontrakt twojego męża."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY #11827 /* ~"Zatem proszę cię, abyś milczał wobec wszystkich o tej sprawie."~ */
  IF ~~ THEN REPLY #11907 /* ~"Bardzo dobrze. Zobaczę, czy się da unieważnić kontrakt twojego męża."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 37.0
  SAY #11828 /* ~"Martwy?" Kobieta wydaje się wstrząśnięta. "Ale przecież Kontrakt... Czy nie ma sposobu, żeby..."~ */
  IF ~  !PartyHasItem("Acontrac")
~ THEN REPLY #11908 /* ~"To faktycznie problem."~ */ JOURNAL #64579 /* ~Poznałem w Ulu kobietę, której mąż, Angyar podpisał 'Kontrakt Umarłych' z jednym z Grabarzy bawiących w karczmie "Proch do Prochu", osobnikiem o imieniu Mortai Grobowładny. Ponieważ tego akurat Grabarza zdążyłem już wpakować do Księgi Umarłych, to tym samym sprawa Angyara jest już definitywnie przegrana. To przykre.~ */ GOTO 24
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11909 /* ~"Nie martw się... Mam ten kontrakt przy sobie."~ */ JOURNAL #64578 /* ~Poznałem w Ulu kobietę, której mąż, Angyar podpisał 'Kontrakt Umarłych' z jednym z Grabarzy bawiących w karczmie "Proch do Prochu", osobnikiem o imieniu Mortai Grobowładny. Ponieważ już miałem przy sobie kontrakt Angyara nie musiałem się już fatygować i wędrować do grabarskiej karczmy.~ */ GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11829 /* ~Kobieta milknie. Rzuca okiem na męża, a potem odwraca się do ciebie. "Wobec tego, nie można już nic poradzić." Jej głos brzmi grobowo. "Proszę cię, odejdź."~ */
  IF ~~ THEN REPLY #11910 /* ~"Najpierw chciałbym zadać ci kilka pytań..."~ */ DO ~Enemy()
~ GOTO 16
  IF ~~ THEN REPLY #11911 /* ~"Żegnaj."~ */ DO ~Enemy()
~ EXIT
END

IF ~  GlobalGT("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #11830 /* ~Żona Angyara patrzy na ciebie z przestrachem. "Powiedziałam, że nie jesteś tu mile widziany. Dlatego najlepiej będzie, jeżeli odejdziesz, zanim wezwę swego męża. On się nie będzie bawił w uprzejmości wobec kogoś, kto nieproszony włazi do naszego domu."~ */
  IF ~  Global("Angyar_Quest","GLOBAL",1)
~ THEN REPLY #11912 /* ~"Powiedz mi jeszcze raz o tym Kontrakcie Umarłych, który podpisał twój mąż."~ */ GOTO 12
  IF ~~ THEN REPLY #11913 /* ~"Gdybyś naprawdę chciała go zawołać, już dawno byś to zrobiła. Chciałbym zadać ci kilka pytań..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11914 /* ~"Spróbuj tylko wezwać swojego męża, a oboje zginiecie. A teraz odpowiadaj na moje pytania."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11915 /* ~"Uspokój się, chciałem ci tylko zadać kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #11917 /* ~"Żegnaj."~ */ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #11831 /* ~Żona Angyara wita się spojrzeniem pełnym nadziei "Poradziłeś coś...?"~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11916 /* ~"Tak, udało mi się wydostać ten kontrakt od Mortai. Oto i on."~ */ GOTO 28
  IF ~~ THEN REPLY #11918 /* ~"Jeszcze nie. Powiedz mi jeszcze raz, kim był ten Grabarz, przy którym twój mąż podpisał ten kontrakt?"~ */ GOTO 37
  IF ~~ THEN REPLY #11919 /* ~"Ciągle nad tym pracuję. Żegnaj."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11832 /* ~Żona Angyara wita cię z uśmiechem. "Witaj, dobry panie. Czym mogę służyć?"~ */
  IF ~~ THEN REPLY #11920 /* ~"Zastanawiałem się, czy nie mógłbym tutaj odpocząć."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11921 /* ~"Brakuje mi funduszy... Możesz mi pomóc?"~ */ DO ~StartStore("Wangyar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #11922 /* ~"Wpadłem po prostu, żeby sprawdzić, jak się miewasz. Bądź zdrowa."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.2 23.1 26.0 37.2
  SAY #11833 /* ~Kobieta wydaje westchnienie ulgi, a jej oczy zachodzą mgłą. "Och, na wszelkie Moce... Musisz być devą w przebraniu, jeżeli zrobiłeś taką rzecz dla kogoś, kogo ledwie znasz..."~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11923 /* ~Daj jej kontrakt.~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ JOURNAL #64580 /* ~Udało mi się odzyskać Kontrakt Angyara i zwróciłem go jego żonie. Podziękowała mi serdecznie i poprosiła, żebym pokazał odzyskany Konrakt jej mężowi.~ */ GOTO 29
  IF ~~ THEN REPLY #11924 /* ~"Nie zrobiłem tego za darmo. Oczekuję czegoś w zamian."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11834 /* ~"Nie... nie. Jeżeli możesz, pokaż kontrakt mojemu mężowi i powiedz, że zdobyłeś go dla niego. Ale mów w jaki sposób... Byłabym bardzo wdzięczna."~ */
  IF ~~ THEN REPLY #11925 /* ~"Bardzo dobrze. Zatem pokażę mu go."~ */ EXIT
  IF ~~ THEN REPLY #11926 /* ~"Nie zrobiłem tego za darmo. Oczekuję czegoś w zamian."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.1
  SAY #11835 /* ~Kobieta patrzy na ciebie z obawą. "Mam trochę pieniędzy, parę miedziaków... Zechciałbyś je przyjąć?"~ */
  IF ~~ THEN REPLY #11927 /* ~"Tak."~ */ DO ~GivePartyGold(11)
~ GOTO 31
  IF ~~ THEN REPLY #11928 /* ~"Te kilka miedziaków to za mało. Co masz jeszcze innego?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11836 /* ~Kobieta sięga do zakamarków swoich szat i wyciąga garść miedziaków. Patrzy na nie przez chwilę ze smutkiem, a potem wręcza je tobie. "To i tak niewielka podzięka za uratowanie duszy mojego męża."~ */
  IF ~~ THEN REPLY #11929 /* ~"To dobre na początek. A co jeszcze masz?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #11930 /* ~"Dobrze. Oto i kontrakt."~ */ JOURNAL #64580 /* ~Udało mi się odzyskać Kontrakt Angyara i zwróciłem go jego żonie. Podziękowała mi serdecznie i poprosiła, żebym pokazał odzyskany Konrakt jej mężowi.~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1
  SAY #11837 /* ~"Nie... nie. Jeżeli możesz, pokaż kontrakt mojemu mężowi i powiedz, że zdobyłeś go dla niego. Ale mów w jaki sposób... Byłabym bardzo wdzięczna."~ */
  IF ~~ THEN REPLY #11931 /* ~"Bardzo dobrze. Zatem pokażę mu go."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1 31.0
  SAY #11838 /* ~"Nie mam nic poza tym." Kobieta wygląda na przerażoną. "Mówię prawdę, panie. Nie ma nic więcej. Przecież mój mąż nie podpisałby kontraktu z Grabami, gdybyśmy byli zamożni..."~ */
  IF ~~ THEN REPLY #11932 /* ~"Nie okłamuj mnie, kobieto. Co masz jeszcze innego?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_6","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #11933 /* ~"Mniejsza o to. Oto i kontrakt."~ */ JOURNAL #64580 /* ~Udało mi się odzyskać Kontrakt Angyara i zwróciłem go jego żonie. Podziękowała mi serdecznie i poprosiła, żebym pokazał odzyskany Konrakt jej mężowi.~ */ GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11839 /* ~Kobieta blednie a jej oczy rozszerzają się w przerażeniu. Zanim jesteś w stanie wykonać choćby jeden ruch, kobieta chwyta głęboki oddech i zaczyna wrzeszczeć!~ */
  IF ~~ THEN REPLY #11934 /* ~"A niech to..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Angyar","GLOBAL",3)
~ THEN BEGIN 35 // from:
  SAY #11840 /* ~Żona Angyara odwraca się do ciebie, kiedy do niej podchodzisz, a potem zerka ze smutkiem na swojego męża. "Wdzięczna ci jestem, że zdobyłeś ten kontrakt, ale rozłościłeś mojego męża." Jeszcze spogląda na męża ze strachem w oczach "Najlepiej będzie, jak zaraz stąd pójdziesz."~ */
  IF ~~ THEN REPLY #11935 /* ~"Dobrze. Wybacz, że zabrałem ci czas."~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",3)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 36 // from:
  SAY #11841 /* ~Żona Angyara wita się spojrzeniem pełnym nadziei "Dałeś mu go?"~ */
  IF ~~ THEN REPLY #11936 /* ~"Jeszcze nie. Wrócę tutaj, kiedy go zdobędę."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 26.1
  SAY #11842 /* ~"Ten Grab nazywa się Grobowładny... Nie znam jego imienia. Ma swój stolik w grabarskiej karczmie w Ulu. Zdaje się, że ona nazywa się 'Proch do Prochu'. Tam go z pewnością znajdziesz. Przesiaduje tam i próbuje namówić innych ludzi do odsprzedania Grabom swoich ciał."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11937 /* ~"Och, Mortai? On jest martwy."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11938 /* ~"Wobec tego pójdę go poszukać. Gdzie jest ta karczma 'Proch do Prochu'?"~ */ GOTO 38
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11939 /* ~"Mam już ten kontrakt twojego męża. Tutaj przy sobie."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #11843 /* ~"Wyjdź stąd na ulicę, potem przejdź pod Kamień Pamiątkowy, a stamtąd skieruj się na południowy zachód..." Kobieta dotyka w zamyśleniu swojej brody. "Powinieneś zaraz potem rozpoznać to miejsce. Zaraz z przodu jest tam jeden z nich..." Kobieta krzywi się z obrzydzenia. "Jeden z tych grabarskich chodzących umrzyków."~ */
  IF ~~ THEN REPLY #11940 /* ~"Dobrze. Zobaczę, czy da się coś zrobić."~ */ GOTO 21
END
