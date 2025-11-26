// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSEVTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSEVTAI~

IF ~  Global("Sevtai_Quest","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25995 /* ~Całe ciało tej kobiety jest pokryte bliznami - wyglądają jak po ugryzieniach albo jakby ktoś pociął jej skórę paznokciami. W rękach trzyma zwitek szmat. Jej pusty wzrok jest utkwiony w ścianie pomnika, na imionach, które tam wypisano.~ */
  IF ~~ THEN REPLY #25996 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #25997 /* ~Zostaw tę kobietę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26275 /* ~"Hsssst! Zabieraj się stąd!" Kobieta obnaża zęby pokazując rząd czarnych kłów. "Czego chcesz od Sev'Tai?!"~ */
  IF ~~ THEN REPLY #26494 /* ~"Co się stało?"~ */ GOTO 2
  IF ~~ THEN REPLY #26495 /* ~"Przepraszam, że cię niepokoiłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #26496 /* ~"Co się stało?! Ci Ka... Ka-o... KAOSyci zniszczyli mój wózek, zaatakowali mnie i zabili trzy siostry, które próbowały mi pomóc! Nie mam już sióstr - nie zostało już nic prócz imion na tym pomniku!"~ */
  IF ~~ THEN REPLY #26497 /* ~"Kaosyci?"~ */ GOTO 3
  IF ~~ THEN REPLY #26498 /* ~"Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26499 /* ~"Kaosyci to frakcja, a przynajmniej tak o sobie mówią. Ale tak naprawdę to tylko banda rozbójników, którzy biegają po Ulu i robią, co się im żywnie podoba! Nigdy nie zrobiłyśmy im nic złego! A oni rzucili się na nas jak stado psów i zniszczyli wszystko, co tylko dostało się w ich łapy."~ */
  IF ~~ THEN REPLY #26500 /* ~"Kim byli ci Kaosyci, którzy cię zaatakowali?"~ */ GOTO 4
  IF ~~ THEN REPLY #26501 /* ~"Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26502 /* ~"To gang działający w Ulu, banda ześwirowanych skurli, którzy wymyślili sobie nazwę... 'Wygłodzone Psy' albo jakieś podobne bzdury!"~ */
  IF ~~ THEN REPLY #26503 /* ~"Za parę monet mógłbym wpisać paru skurli do księgi umarłych. Jeśli masz jakieś miedziaki, to możemy się dogadać."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sevtai_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #26504 /* ~"Źle postąpili. Jeśli chcesz, mogę wyrównać ten rachunek. Jeśli zabili trzy osoby, to w takim razie 'Wygłodzone Psy' także stracą trzech swoich członków."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sevtai_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #26505 /* ~"Będę się ich wystrzegał... Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #26506 /* ~"Oddam ci miedziany kolczyk, jeśli wpiszesz trzech z tych morderców do księgi umarłych, zgoda?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26507 /* ~"Dobrze, ale już to zrobiłem. Niedawno zabiłem trzech z nich w Ulu. Może to byli ci, którzy zabili twoje siostry."~ */ JOURNAL #26101 /* ~Na zewnątrz Kostnicy, przy pamiątkowym kamieniu Grabarzy natknąłem się na dziwną kobietę, Sev'tai. Opłakiwała śmierć swoich trzech sióstr, które zostały napadnięte przez bandę chaosytów, zwących się Jazgotem Wygłodzonego Psa. Poprosiła mnie, abym zabił trzech z nich, a ja się zgodziłem... Rzecz w tym, że zanim z nią rozmawiałem, spotkałem ludzi, o których wspominała. Spełniłem jej prośbę zanim ją jeszcze wypowiedziała.~ */ GOTO 6
  IF ~~ THEN REPLY #26508 /* ~"Dopilnuję, żeby znaleźli się w księdze umarłych. Możesz mi powiedzieć, gdzie ich można znaleźć?"~ */ DO ~SetGlobal("Sevtai_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #26509 /* ~"Wątpię, żebym mógł ci pomóc, Sev'Tai. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.0 8.1
  SAY #26510 /* ~"Moce sprawiły, że dzisiaj dopełniła się sprawiedliwość!" Kobieta sięga ręką pomiędzy swoje włosy i wyciąga miedziany kolczyk. "Masz. Na pewno jest wart co najmniej trzydzieści trzy miedziaki. Należał do jednej z moich sióstr... Ale jej się już nie przyda."~ */
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",0)
~ THEN REPLY #26511 /* ~"Dobrze. Do zobaczenia, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(250)
~ EXIT
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",1)
~ THEN REPLY #26512 /* ~"Dobrze. Do zobaczenia, Sev'Tai."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26100 /* ~Powróciłem do Sev'Tai i poświadczyłem, że zabiłem Wygłodzone Psy. Dziewczyna była tak zdezorientowana i tak rozpaczliwie chciała wierzyć w ich śmierć, iż w końcu uwierzyła, że zrobiłem to o co mnie poprosiła. Głupia kobieta... przynajmniej mam z niej kilka miedziaków~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26513 /* ~"Wyjdź przez południową bramę... Potem zacznij obchodzić blok, aż dojdziesz do miejsca, w którym ludzie chodzą w kółko, wyjąc do nieba Sig. To będą Wygłodzone Psy."~ */
  IF ~  GlobalGT("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26514 /* ~"Już tam byłem. Ten blok, na południe stąd, jest pełen dziwek i pijaków. Pójdę tam jeszcze raz i zaraz wrócę."~ */ JOURNAL #26099 /* ~Na zewnątrz Kostnicy, przy pamiątkowym kamieniu Grabarzy natknąłem się na dziwną kobietę, Sev'tai. Opłakiwała śmierć swoich trzech sióstr, które zostały napadnięte przez bandę chaosytów, zwących się Jazgotem Wygłodzonego Psa. Poprosiła mnie, abym zabił trzech z nich, a ja się zgodziłem. Powiedziała mi, że mogę ich znaleźć w południowej części Ula, tam gdzie pełno jest ladacznic i pijaków.~ */ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26515 /* ~"W takim razie ich poszukam."~ */ JOURNAL #26098 /* ~Na zewnątrz Kostnicy, przy pamiątkowym kamieniu Grabarzy natknąłem się na dziwną kobietę, Sev'tai. Opłakiwała śmierć swoich trzech sióstr, które zostały napadnięte przez bandę chaosytów, zwących się Jazgotem Wygłodzonego Psa. Poprosiła mnie, abym zabił trzech z nich, a ja się zgodziłem. Powiedziała mi, że mogę ich znaleźć w Ulu, za bramą na południe od pomnika.~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #26516 /* ~"To znowu ty..." Kobieta odwraca się do ciebie, obnażając zęby w grymasie. "Przynosisz Sev'Tai jakieś wieści?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26517 /* ~"Znalazłem Wygłodzone Psy i wpisałem trzech z nich do księgi umarłych."~ */ JOURNAL #26520 /* ~Powróciłem do Sev'Tai gdy już zabiłem trzech członków gangu Wygłodzonych Psów. W zamian za swe usługi otrzymałem miedziany kolczyk i podziękowania za pomszczenie jej sióstr.~ */ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26518 /* ~Kłamstwo: "Znalazłem Wygłodzone Psy i wpisałem trzech z nich do księgi umarłych."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sevtai_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26519 /* ~"Nie mam jeszcze żadnych dobrych wieści. Ciągle poszukuję tych Kaosytów."~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #26521 /* ~Na twój widok, kobieta z kłami kiwa głową. "Sev'Tai i jej siostry dziękują ci za to, że pomogłeś sprawiedliwości."~ */
  IF ~~ THEN REPLY #26522 /* ~"Dobrze, Sev'Tai. Żegnaj."~ */ EXIT
END
