// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DELI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #31866 /* ~Ten mężczyzna o ostrych rysach twarzy obserwuje otoczenie spod zmrużonych powiek. Jego spojrzenie zdradza niewielkie zainteresowanie. Od czasu do czasu spogląda na swoje paznokcie. Pomimo tego, że jest wystrojony w jedwabie i aksamity, wygląda podejrzanie i sprawia wrażenie bardziej niż trochę niebezpiecznego.~ */
  IF ~~ THEN REPLY #31937 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #31938 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2911 /* ~Patrzy w twoją stronę. Jego oczy to ciemne szczeliny, jak wąskie rany od pchnięcia poniżej brwi. Pomimo szczupłej budowy jego głos jest niski i szorstki. "Szpicuj się."~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31939 /* ~"Nie w tej chwili. Ty jesteś Eli Hawelok?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31940 /* ~"Nie teraz. Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #31941 /* ~"Na twoim miejscu uważał bym co mówię."~ */ GOTO 3
  IF ~~ THEN REPLY #31942 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 21.1
  SAY #31868 /* ~"Wydaje ci się, że łażę po Dzielnicy szukając obcych, dla których mógłbym przelewać cień? Szpicuj się."~ */
  IF ~  CheckStatGT(Protagonist,8,CHR)
~ THEN REPLY #31943 /* ~"W takim razie po co tu stoisz? By być opryskliwym dla przechodniów?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,9,CHR)
~ THEN REPLY #31944 /* ~"W takim razie po co tu stoisz? By być opryskliwym dla przechodniów?"~ */ GOTO 3
  IF ~~ THEN REPLY #31945 /* ~"Na twoim miejscu uważałbym co mówię."~ */ GOTO 3
  IF ~~ THEN REPLY #31946 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 2.2
  SAY #31870 /* ~Ignoruje cię.~ */
  IF ~~ THEN REPLY #31947 /* ~Złap go i potrząśnij trochę, by uzyskać kilka odpowiedzi."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31948 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #31871 /* ~"Heh." Cichnie na chwilę, potem uśmiecha się krzywo. "To dobre." Ocenia cię przez chwilę. "Jestem nauczycielem w Gmachu Rozrywek. Nazywam się Hawelok - Eli Hawelok. Jako doświadczony zwiadowca uczę sztuki podstępów."~ */
  IF ~~ THEN REPLY #31949 /* ~"Masz na myśli złodziejstwo?"~ */ GOTO 5
  IF ~~ THEN REPLY #31950 /* ~"Mógłbyś mnie szkolić?"~ */ GOTO 6
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65427 /* ~"Jesteś instruktorem złodziei w Gmachu Rozrywek? Posłuchaj... Qui-Sai nie będzie mnie szkolił na wojownika. Mówi, że mógłbym po prostu ukraść broń przeciwnikom, zostawiając ich bezbronnych. Co o tym myślisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #65428 /* ~"Jesteś instruktorem złodziei w Gmachu Rozrywek? Posłuchaj... Qui-Sai nie będzie mnie szkolił na wojownika. Mówi, że mógłbym po prostu ukraść broń przeciwnikom, zostawiając ich bezbronnych. Co o tym myślisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31951 /* ~"Rozumiem. Żegnaj, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 20.2
  SAY #28796 /* ~Jego usta układają się w obrzydliwy, szyderczy uśmiech. "Wszyscy mówią *złodziej* i *złodziejstwo*! Odwaliłem pięć zmian jako zwiadowca na Wojnie Kłamstw. Zwiadowca to mój tytuł... *zwiadowca*. Uczę sztuki skradania się i szpiegowania, a nie pospolitego złodziejstwa."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31952 /* ~"Przepraszam. Nie chciałem cię urazić. Mógłbyś mnie szkolić?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31953 /* ~"Mimo to mógłbyś mnie szkolić?"~ */ GOTO 11
  IF ~~ THEN REPLY #31954 /* ~"Rozumiem. Żegnaj, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 22.3
  SAY #31872 /* ~Eli marszczy brwi. "Nie wiem. Dość już mam uczenia drobnych kieszonkowców i ciekawskich Czuciowców." Mamrocze prawie do siebie: "Nie jestem pewien dlaczego w ogóle zgodziłem się to robić."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31955 /* ~"Może dlatego, że ucząc innych sprawiasz, że zdają sobie sprawę z twoich umiejętności."~ */ GOTO 7
  IF ~~ THEN REPLY #31956 /* ~"Co mogę zrobić, by przekonać cię, że jest inaczej?"~ */ GOTO 12
  IF ~~ THEN REPLY #31957 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31873 /* ~"Hmm..."~ */
  IF ~~ THEN REPLY #31958 /* ~"Jednocześnie bronisz swych umiejętności zapewniając ich, że nie jesteś pospolitym złodziejem, ale zwiadowcą i szpiegiem, mistrzem podstępów."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31883 /* ~Eli kiwa głową, trawiąc to co powiedziałeś. "Taa... nie da się temu zaprzeczyć. Chociaż jeśli spojrzeć na to w ten sposób, to rodzaj przeprosin."~ */
  IF ~~ THEN REPLY #31959 /* ~"Nie sądzę. Ludzie z twojego fachu zwykle nie są rozumiani, zaliczani niesprawiedliwie do tej samej kategorii co rozbójnicy i bandyci. W rozwiewaniu fałszywych poglądów nie ma nic złego."~ */ GOTO 10
  IF ~~ THEN REPLY #31960 /* ~"Masz rację, to żałosne."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #31884 /* ~Jego brwi unoszą się na chwilę w zaskoczeniu, potem gwałtownie się marszczą. "Szukasz kłopotów, co? Idź pobaw się w cieniu Pani, trepie. Szpicuj się!"~ */
  IF ~~ THEN REPLY #31961 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #31885 /* ~"Ha! Znowu masz rację." Po przyjacielsku uderza cię w ramię. "Dzięki, krwawniku." Nagle spogląda w dal. "Cóż... dość marnowania tutaj czasu. Wracam do Gmachu Rozrywek. Jeśli wciąż chcesz trenować, to tam możesz mnie znaleźć."~ */
  IF ~~ THEN REPLY #31962 /* ~"Może cię tam odszukam, Eli. Żegnaj."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY #31886 /* ~"Nie... dość już mam uczenia drobnych kieszonkowców i takich, którzy chcą zostać rabusiami."~ */
  IF ~~ THEN REPLY #31963 /* ~"Co mogę zrobić, by przekonać cię, że jest inaczej?"~ */ GOTO 12
  IF ~~ THEN REPLY #31964 /* ~"W takim razie żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 11.0
  SAY #31887 /* ~Zaciska usta i patrzy w górę. "Hrmm... wydaje mi się, że wiele rzeczy." Patrzy ci prosto w oczy. "Wyrażę się jasno: brzdęk. Chcesz szkolenia, będzie cię ono kosztować. Wcześniej uszczypnę Panią w tyłek, niż wyszkolę następnego trepa za darmo!"~ */
  IF ~~ THEN REPLY #31965 /* ~"Ile?"~ */ GOTO 13
  IF ~~ THEN REPLY #31966 /* ~"Zapomnij o tym żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31888 /* ~Eli wzrusza ramionami. Cholera, nie wiem. Pięć setek miedziaków wydaje się odpowiednią ceną... wiesz, jestem doświadczonym zwiadowcą... odsłużyłem pięć zmian na Wojnie Kłamstw! Mogę przekazać mnóstwo doświadczenia..."~ */
  IF ~~ THEN REPLY #31971 /* ~"Zgoda."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31972 /* ~"Co powiesz na trzysta?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31973 /* ~"Co powiesz na trzysta?"~ */ GOTO 14
  IF ~~ THEN REPLY #31975 /* ~"Co powiesz na dwieście?"~ */ GOTO 15
  IF ~~ THEN REPLY #31978 /* ~"Zapomnij o tym. Żegnaj."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.2 15.1
  SAY #31889 /* ~Potrząsa głową. "Nie. Chcę pięćset i tyle zapłacisz."~ */
  IF ~~ THEN REPLY #31979 /* ~"Zgoda."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~~ THEN REPLY #31980 /* ~"W takim razie zapomnij o tym. Żegnaj."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.3
  SAY #31890 /* ~Przewraca oczami. "Świrnięty jesteś, trepie? Do diabła, nie! Moja cena to pięćset; nie mniej nie więcej."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #31981 /* ~"W porządku, co powiesz na trzysta?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #31982 /* ~"W porządku, co powiesz na trzysta?"~ */ GOTO 14
  IF ~~ THEN REPLY #31983 /* ~"W takim razie zapomnij o tym. Żegnaj."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.4 14.1 15.2 17.1 23.1
  SAY #31891 /* ~"Jeśli wrócisz, to znasz cenę: pięćset miedziaków. Żegnaj, śmiałku."~ */
  IF ~~ THEN REPLY #31984 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 15.0
  SAY #31892 /* ~"W takim razie umowa stoi." Wymieniacie uścisk dłoni. "Masz je przy sobie?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #31985 /* ~"Tak... oto one."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #31986 /* ~"Nie... w tej chwili nie."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #31987 /* ~"Tak... oto one."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #31988 /* ~"Nie... w tej chwili nie."~ */ GOTO 19
  IF ~~ THEN REPLY #31989 /* ~"Właściwie nie chcę się szkolić od razu. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.2 23.0 23.2
  SAY #31893 /* ~Bierze z twojej dłoni rulonik miedzianych monet i chowa je w tunice. "Spotkamy się w Gmachu Rozrywki, tam będę cię szkolił. Na razie żegnaj, śmiałku."~ */
  IF ~~ THEN REPLY #31990 /* ~"Tam się zobaczymy, Eli. Żegnaj."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.3 23.3
  SAY #31894 /* ~"Jeśli wrócisz, to znasz cenę: trzysta miedziaków. Żegnaj, śmiałku."~ */
  IF ~~ THEN REPLY #31991 /* ~"Żegnaj, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.0 21.0
  SAY #31895 /* ~Uśmiecha się w wyższością. "Tak, to ja..."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31992 /* ~"Qui-Sai nie będzie mnie szkolił na wojownika... Mówi, że mógłbym po prostu ukraść broń przeciwnikom, zostawiając ich bezbronnych. Co o tym myślisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #31993 /* ~"Qui-Sai wciąż nie chce mnie szkolić na wojownika... Mówi, że mógłbym ukryć się przed wrogami i w ten sposób stać się niezwyciężonym. Co tym sądzisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31994 /* ~"Mógłbyś wyszkolić mnie na złodzieja?"~ */ GOTO 5
  IF ~~ THEN REPLY #31995 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedToGT(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #31896 /* ~Ten mężczyzna o ostrych rysach twarzy obserwuje otoczenie spod zmrużonych oczu. Jego spojrzenie zdradza niewielkie zainteresowanie. Zauważa jak podchodzisz i odwraca się w twoją stronę. "Wciąż tu węszysz?" Marszczy brwi. "Czego chcesz?"~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31996 /* ~"Zastanawiam się, czy to ty jesteś Eli Hawelok."~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31997 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #31998 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #31899 /* ~Eli zauważa, że podchodzisz, ale z wyrazu jego twarzy nie da się nic wyczytać. Zastanawiasz się, czy on naprawdę widzi przez te zmrużone, czarne oczy. "Hmm?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31999 /* ~"Qui-Sai nie będzie mnie szkolił na wojownika... Mówi, że mógłbym po prostu ukraść broń przeciwnikom, zostawiając ich bezbronnych. Co o tym myślisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32000 /* ~"Qui-Sai wciąż nie chce mnie szkolić na wojownika... Mówi, że mógłbym ukryć się przed wrogami i w ten sposób stać się niezwyciężonym. Co tym sądzisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~'Eli... mógłbyś mnie szkolić?"~ */ GOTO 23
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~'Eli... mógłbyś mnie szkolić?"~ */ GOTO 6
  IF ~~ THEN REPLY #32002 /* ~"Tylko przechodzę. Żegnaj, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.2
  SAY #31903 /* ~"Masz brzdęk?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #32003 /* ~"Całe pięćset miedziaków... oto one."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #32004 /* ~"Nie... w tej chwili nie."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #32005 /* ~"Całe trzysta miedziaków... oto one."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #32006 /* ~"Nie... w tej chwili nie."~ */ GOTO 19
  IF ~~ THEN REPLY #32007 /* ~"Właściwie nie chcę się szkolić już teraz. Żegnaj."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31904 /* ~"Idę do sali ćwiczeń zwiadowców w Gmachu Rozrywek, śmiałku. Jeśli chcesz pogadać albo poćwiczyć, to tam mnie znajdziesz. Żegnaj."~ */
  IF ~~ THEN REPLY #32008 /* ~"Żegnaj, Eli."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #31906 /* ~"Ha, patrzcie kto przyszedł!" Eli obdarza cię szelmowskim uśmiechem. "Witaj na mojej ziemi, śmiałku. Gotów do ćwiczeń?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32009 /* ~"Nie teraz. Qui-Sai nie będzie mnie szkolił na wojownika... Mówi, że mógłbym po prostu ukraść broń przeciwnikom, zostawiając ich bezbronnych. Co o tym myślisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32010 /* ~"Nie teraz. Qui-Sai wciąż nie chce mnie szkolić na wojownika... Mówi, że mógłbym ukryć się przed wrogami i w ten sposób stać się niezwyciężonym. Co tym sądzisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #32011 /* ~"Tak jestem gotowy."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #32012 /* ~"Tak jestem gotowy."~ */ GOTO 26
  IF ~~ THEN REPLY #32013 /* ~"Nie teraz, Eli. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.3 49.3
  SAY #31907 /* ~"Dobra, dobra. Tutaj... zobaczmy, czy uda ci się zabrać to z mojej dłoni, śmiałku." Wyciąga rękę; na jego dłoni leży pojedyncza miedziana moneta.~ */
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32014 /* ~Porwij monetę.~ */ DO ~GiveGoldForce(1)
SetGlobal("Eli","GLOBAL",4)
~ GOTO 27
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32015 /* ~Złap monetę.~ */ DO ~SetGlobal("Eli","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32016 /* ~Chwyć monetę.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31908 /* ~Twoja ręka wystrzela do przodu i porywa leżącą w jego dłoni monetę z taką szybkością, że jesteś tak samo zaszokowany jak Eli. "Na Moce! Śmiałku, jesteś szybszy niż na to wyglądasz..."~ */
  IF ~~ THEN REPLY #32017 /* ~"Dzięki."~ */ GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #31909 /* ~Wyrzucasz dłoń do przodu... ale Eli jest zbyt szybki. "Wystarczająco dobrze, śmiałku. Będziemy kontynuować."~ */
  IF ~~ THEN REPLY #32018 /* ~"W porządku..."~ */ GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #31910 /* ~Podejmujesz śmieszną próbę złapania monety Eliego. Marszczy brwi i smutno kiwa głową.~ */
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32019 /* ~"Co?"~ */ GOTO 30
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32020 /* ~"Co?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #31911 /* ~"Szkoda, śmiałku... Przykro mi to mówić, ale jesteś po prostu zbyt wolny, by dać sobie radę w tej pracy. Mimo to życzę ci powodzenia w tym co będziesz robił... Żegnaj."~ */
  IF ~~ THEN REPLY #32021 /* ~"Rozumiem. W takim razie żegnaj, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #31912 /* ~"Szkoda, śmiałku... Przykro mi to mówić, ale jesteś po prostu zbyt wolny, by dać sobie radę w tej pracy. Słuchaj - nie czuł bym się dobrze zabierając twoje pieniądze, masz... weź je z powrotem. Życzę powodzenia w tym co będziesz robił... Żegnaj."~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
~ THEN REPLY #32022 /* ~"Rozumiem. W takim razie żegnaj, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(500)
~ EXIT
  IF ~  Global("CW_Thief_Train","AR0600",2)
~ THEN REPLY #32023 /* ~"Rozumiem. W takim razie żegnaj, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(300)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 40.0
  SAY #31913 /* ~"Możemy zaczynać, śmiałku. Nauczę cię sześciu podstawowych umiejętności: jak poruszać się bezszelestnie i wykorzystywać cienie, by się ukryć, przetrząsania kieszeni, otwierania zamków, wykrywania i rozbrajania pułapek oraz jak wciągnąć wroga z zasadzkę i uderzyć z ukrycia w plecy."~ */
  IF ~~ THEN REPLY #32024 /* ~"Kontynuuj."~ */ GOTO 33
  IF ~~ THEN REPLY #32025 /* ~"Eli, wydaje mi się, że zrozumiałem podstawy. Przejdźmy do treningu."~ */ GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #31914 /* ~"Umiejętność bezszelestnego poruszania się, gdy jesteś ukryty w cieniu, jest bardzo przydatna. Wielu wrogów można uniknąć po prostu nie wchodząc im w pole widzenia. Atak z ukrycia także daje zwiadowcy znaczną przewagę, ale o tym powiem później. Pamiętaj, śmiałku: zwiadowca nie może się ukryć, jeśli wrogowie go widzą."~ */
  IF ~~ THEN REPLY #32026 /* ~"Kontynuuj."~ */ GOTO 34
  IF ~~ THEN REPLY #32027 /* ~"Eli, wydaje mi się, że zrozumiałem podstawy. Przejdźmy do treningu."~ */ GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31915 /* ~"Zwiadowcy często napotykają na swej drodze zamknięte kraty, ważne dokumenty albo przedmioty zamknięte w skrzyniach. W takich chwilach przydaje się umiejętność otwierania zamków. Zawsze dobrze jest sprawdzić, czy nie ma pułapek, o tym powiem jednak później."~ */
  IF ~~ THEN REPLY #32028 /* ~"Kontynuuj."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #31916 /* ~"Czasami wróg będzie miał ważny dokument, czy przedmiot przy sobie. W takich chwilach trzeba skorzystać z umiejętności kradzieży kieszonkowej, podkraść się blisko i zwędzić przedmiot. Zwiadowca zawsze musi być gotowy do walki albo ucieczki - na wypadek gdyby mu się nie udało."~ */
  IF ~~ THEN REPLY #32029 /* ~"Kontynuuj."~ */ GOTO 36
  IF ~~ THEN REPLY #32030 /* ~"Eli, wydaje mi się, że zrozumiałem podstawy. Przejdźmy do treningu."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #31917 /* ~"Czasem może się zdarzyć, że wrogowie zabezpieczą pułapkami obszar, który zwiadowca musi przekroczyć, czy pojemnik który musi otworzyć. Takie pułapki są zawsze dobrze ukryte; zwiadowca musi się zbliżać ostrożnie i przy pomocy swych umiejętności szukać czegoś podejrzanego. Bądź cierpliwy... Czasem znalezienie pułapki trwa dłuższą chwilę."~ */
  IF ~~ THEN REPLY #32031 /* ~"Kontynuuj."~ */ GOTO 37
  IF ~~ THEN REPLY #32032 /* ~"Eli, wydaje mi się, że zrozumiałem podstawy. Przejdźmy do treningu."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31918 /* ~"Jeśli zwiadowca *znajdzie* taką pułapkę, musi się zdecydować czy ją obejdzie, czy spróbuje rozbroić. Przy rozbieraniu pułapki trzeba zachować jak największą ostrożność, bo zawsze istnieje ryzyko, że w wyniku manipulacji zostanie uruchomiona."~ */
  IF ~~ THEN REPLY #32033 /* ~"Kontynuuj."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #31919 /* ~"Na końcu nauczę cię ostatniej zagrywki zwiadowcy... uderzenia z zaskoczenia. Jeśli zwiadowca napotka i zaatakuje wroga z ukrycia, to pierwszy cios będzie znacznie dokładniejszy i znacznie bardziej bolesny. W miarę jak zwiadowca nabiera doświadczenia, jego ataki z cienia stają się coraz bardziej śmiertelne. Pamiętaj jednak, że... gdy zwiadowca zaatakuje z ukrycia, ujawnia się swoim wrogom."~ */
  IF ~~ THEN REPLY #32034 /* ~"W porządku, Eli. Zajmijmy się szkoleniem."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 32.1 33.1 35.1 36.1 38.0
  SAY #31920 /* ~Eli kiwa głową. "Dobra, śmiałku... Po pierwsze, musisz się odprężyć. Jesteś za bardzo spięty. Musisz pozwolić, by w takich chwilach instynkt przejął nad tobą kontrolę. Musisz zaufać swoim przeczuciom..."

Tak zaczyna się twoje szkolenie na złodzieja.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32035 /* ~Naucz się ile tylko zdołasz.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Szkoliłem się na złodzieja pod okiem człowieka o imieniu Eli Hawelok, nauczyciela złodziei - czy jak woli 'zwiadowców' - w Gmachu Rozrywki.~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #32036 /* ~Naucz się ile tylko zdołasz.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Szkoliłem się na złodzieja pod okiem człowieka o imieniu Eli Hawelok, nauczyciela złodziei - czy jak woli 'zwiadowców' - w Gmachu Rozrywki.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32037 /* ~Naucz się ile tylko zdołasz.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Szkoliłem się na złodzieja pod okiem człowieka o imieniu Eli Hawelok, nauczyciela złodziei - czy jak woli 'zwiadowców' - w Gmachu Rozrywki.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32038 /* ~Naucz się ile tylko zdołasz.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~Szkoliłem się na złodzieja pod okiem człowieka o imieniu Eli Hawelok, nauczyciela złodziei - czy jak woli 'zwiadowców' - w Gmachu Rozrywki.~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 27.0 28.0
  SAY #31921 /* ~Eli kiwa głową. "Rozumiesz, że musisz porzucić swoją aktualną profesję, tak? Jesteś na to przygotowany?"~ */
  IF ~~ THEN REPLY #32039 /* ~"Tak, jestem gotowy."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 32
  IF ~~ THEN REPLY #32040 /* ~"Nie, lepiej nie. Może innym razem... żegnaj, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0
  SAY #31922 /* ~Po długim szkoleniu Eli kiwa z zadowoleniem głową. "Śmiałku, muszę powiedzieć, że nigdy nie natknąłem się na kogoś, kto uczyłby się szybciej. Powiedziałbym nawet, że kiedyś już to robiłeś!"~ */
  IF ~~ THEN REPLY #32041 /* ~"Możliwe, że tak, Eli, ale po prostu zapomniałem. Dzięki i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #31923 /* ~Po długim szkoleniu Eli kiwa z zadowoleniem głową. "Śmiałku, muszę powiedzieć, że nigdy nie natknąłem się na kogoś, kto uczyłby się szybciej. Powiedziałbym nawet, że kiedyś już to robiłeś!" Gdy Eli to mówi, zdajesz sobie nagle sprawę, że kiedyś już to robiłeś... wtedy posiadałeś wszystkie te umiejętności, a dzięki szkoleniu je odzyskałeś.~ */
  IF ~~ THEN REPLY #32042 /* ~"Możliwe, że tak, Eli, ale po prostu zapomniałem. Dzięki i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 39.2 39.3
  SAY #31924 /* ~Po długim szkoleniu Eli kiwa z zadowoleniem głową. "Śmiałku, muszę powiedzieć, że nigdy nie natknąłem się na kogoś, kto uczyłby się szybciej. Powiedziałbym nawet, że kiedyś już to robiłeś!" Gdy Eli to mówi, zdajesz sobie nagle sprawę, że kiedyś już to robiłeś... wtedy posiadałeś wszystkie te umiejętności.~ */
  IF ~~ THEN REPLY #32043 /* ~"Możliwe, że tak, Eli, ale po prostu zapomniałem. Dzięki i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #31925 /* ~Gdy mgliste wspomnienia o czajeniu się w ciemnych korytarzach i unikaniu śmiertelnych pułapek stają się wyraźniejsze, udaje ci się przypomnieć wystarczająco dużo, by przyswoić sobie więcej, niż Eli cię nauczył.~ */
  IF ~~ THEN REPLY #32044 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 25.2 49.2
  SAY #31926 /* ~"Niewiele cię nauczę, jeśli już przeszedłeś szkolenie. Jeżeli zszedłeś ze ścieżki zwiadowcy, zawsze mogę ci pokazać powrotną drogę."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32045 /* ~"Eli, chciałby znowu podjąć drogę podstępów."~ */ GOTO 46
  IF ~~ THEN REPLY #32046 /* ~"Rozumiem. Żegnaj, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #31927 /* ~"Rozumiesz, że musisz porzucić swoją aktualną profesję, tak? Jesteś na to przygotowany?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #32047 /* ~"Tak. Nie chcę być już wojownikiem."~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #32048 /* ~"Tak. Nie chcę być już magiem."~ */ GOTO 47
  IF ~~ THEN REPLY #32049 /* ~"Właściwie jeszcze nie teraz. Żegnaj, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #31928 /* ~"Doskonale! W takim razie przejdźmy do szkolenia... Doprowadzimy twoje zaniedbane umiejętności do właściwego poziomu!"~ */
  IF ~~ THEN REPLY #32050 /* ~Jeszcze raz zostań złodziejem.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31929 /* ~"Szybko się uczysz, śmiałku, muszę to przyznać." Przygląda ci się ciekawie przez wąskie szczeliny oczu, potem potrząsa głową. "Cóż, to wszystko - jesteś gotowy."~ */
  IF ~~ THEN REPLY #32051 /* ~"Dzięki, Eli. Żegnaj."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",5)
~ THEN BEGIN 49 // from:
  SAY #31930 /* ~Eli zatrzymuje się, by kiwnąć do ciebie głową. "Czołem śmiałku. Potrzebujesz czegoś?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32052 /* ~"Qui-Sai nie będzie mnie szkolił na wojownika... Mówi, że mógłbym po prostu ukraść broń przeciwnikom, zostawiając ich bezbronnych. Co o tym myślisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32053 /* ~"Qui-Sai wciąż nie chce mnie szkolić na wojownika... Mówi, że mógłbym ukryć się przed wrogami i w ten sposób stać się niezwyciężonym. Co tym sądzisz?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #64675 /* ~"Tak... Chciałbym spróbować jeszcze raz z tobą ćwiczyć."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #64676 /* ~"Tak... Chciałbym spróbować jeszcze raz z tobą ćwiczyć."~ */ GOTO 26
  IF ~~ THEN REPLY #32054 /* ~"Nie... tylko przechodzę. Żegnaj, Eli."~ */ EXIT
END

IF WEIGHT #0 ~  Global("CW_PP_Eli","GLOBAL",1)
!Global("Eli","GLOBAL",4)
~ THEN BEGIN 50 // from:
  SAY #31931 /* ~Mężczyzna popycha cię palcem. "Uważaj trepie... większość krwawników zabiłaby cię za to albo wezwała Twardogłowych. A teraz szpicuj się, zanim zmienię zdanie i wyciągnę stal."~ */
  IF ~~ THEN REPLY #32055 /* ~"Nie krępuj się, wyciągnij miecz. Schowam go w twojej czaszce."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32056 /* ~Odejdź.~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ EXIT
END

IF WEIGHT #1 ~  Global("CW_PP_Eli","GLOBAL",1)
Global("Eli","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #31932 /* ~Eli śmieje się cierpko, potrząsając głową. "Niezła próba, śmiałku... całkiem niezła."~ */
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",0)
~ THEN REPLY #32057 /* ~"Ee... dzięki."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
SetGlobal("CW_PP_Training","AR0601",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 52
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32058 /* ~"Ee... dzięki."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",1)
~ THEN REPLY #32059 /* ~"Ee... dzięki."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26793 /* ~"Twoje dłonie muszą poruszać się szybciej. Prędko do kieszeni, i z powrotem... inaczej pewnikiem zostaniesz zdybany."~ */
  IF ~~ THEN REPLY #32060 /* ~"Dziękuję, Eli. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1 51.2
  SAY #31934 /* ~"Tak, tak... A teraz zjeżdżaj, zanim twoje szturchnięcia zaczną mnie drażnić."~ */
  IF ~~ THEN REPLY #32061 /* ~"Żegnaj, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.2 20.0 22.0 25.0 49.0
  SAY #31935 /* ~Potrząsa głową. "To nieprawda, śmiałku. Nawet ja muszę przyznać, że wciąż trzeba toczyć walki. Poleganie na samym złodziejstwie to błąd."~ */
  IF ~~ THEN REPLY #32062 /* ~"Dziękuję, Eli. Żegnaj."~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
~ JOURNAL #66575 /* ~Qui-Sai nie zgodził się wyszkolić mnie na wojownika, twierdząc, że profesja złodziejska jest dalece bardziej przydatna, bo złodziej może zawsze skraść oręż swego przeciwnika i w ten sposób uniknąć walki. Tymczasem odbyłem rozmowę z Elim Hawelokiem, wychowawcą złodziei w Miejskim Gmachu Rozrywki, a on zdradził mi, że nie zawsze można uniknąć walki i takie pojmowanie uniwersalności sztuki złodziejskiej jest nieporozumieniem. Eli stwierdził dalej, że sztuka krycia się i wynajdywania kryjówek nie może nigdy w pełni zastąpić walki, szczególnie, że bywają wrogowie, przed którymi nie sposób się ukryć. Myślę, że to może być przyzwoity kontrargument w dyskusji z Qui-Sai.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 4.3 20.1 22.1 25.1 49.1
  SAY #31936 /* ~Potrząsa głową. "Żaden zwiadowca, nawet ja, nie osiągnął takiego mistrzostwa w bezszelestnym poruszaniu i ukrywaniu się. Przed niektórymi wrogami nie sposób się ukryć; zdradzi cię zapach lub same myśli."~ */
  IF ~~ THEN REPLY #32063 /* ~"Dziękuję, Eli. Żegnaj."~ */ JOURNAL #66576 /* ~Qui-Sai nie zgodził się wyszkolić mnie na wojownika, twierdząc, że profesja złodziejska jest dalece bardziej wartościowa, albowiem złodziej zawsze może ukryć się przed wrogiem i ujść przed nim bez żadnego szwanku. Tymczasem odbyłem rozmowę z Elim Hawelokiem, wychowawcą złodziei w Miejskim Gmachu Rozrywki, a on zdradził mi, że sztuka krycia się i wynajdywania kryjówek nie może nigdy w pełni zastąpić walki, szczególnie, że bywają wrogowie, przed którymi nie sposób się ukryć. Myślę, że to może być przyzwoity kontrargument w dyskusji z Qui-Sai.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.0
  SAY #65166 /* ~"Czekaj... Jeśli Qui-Sai robi to, co mi się wydaje, że robi, to nie zostawi cię tak. Jak zacznie cię nagabywać o ukrywanie się i takie tam, powiedz mu, że żaden zwiadowca, nawet ja, nie osiągnął takiego mistrzostwa w bezszelestnym poruszaniu i ukrywaniu się. Przed niektórymi wrogami nie sposób się ukryć; zdradzi cię zapach lub same myśli."~ */
  IF ~~ THEN REPLY #65167 /* ~"Zrozumiałem. Jeszcze raz dziękuję, żegnaj."~ */ EXIT
END
