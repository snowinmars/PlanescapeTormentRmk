// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHILDON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHILDON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #12870 /* ~"Hej tam! Kto tam! STRAŻE! ON JEST TUTAJ!"~ */
  IF ~~ THEN REPLY #12871 /* ~Zrobione.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #12872 /* ~"Nie będziesz mnie znieważał! Precz stąd!"~ */
  IF ~~ THEN REPLY #12873 /* ~Odejdź.~ */ EXIT
END

IF ~  GlobalGT("G_Test2","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #12874 /* ~"I cóż ci teraz rzekł ten Śliniaczek? Daję głowę, że to same łgarstwa."~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #12875 /* ~"Właściwie to jeszcze z nim nie rozmawiałem. Mam jeszcze do ciebie kilka pytań."~ */ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",6)
~ THEN REPLY #12876 /* ~"Mówi, że nie było w tym żadnego spisku. On wręcz twierdzi, żeś na jego oczach zabił tego biednego skurla."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #12877 /* ~"Wciąż sprawdzam tę wersję o Anarchistach."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #12878 /* ~"Twierdzi, że wbił szydło w trupa jedynie dlatego, żeby mieć pewność, że i ty będziesz zamieszany w morderstwo. Uważa, że to ty jesteś mordercą i chciał się upewnić, że nie ujdzie ci to na sucho."~ */ GOTO 10
  IF ~  Global("G_Test2","GLOBAL",8)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #12879 /* ~"Twierdzi, że wbił szydło w trupa jedynie dlatego, żeby mieć pewność, że i ty będziesz zamieszany w morderstwo. Uważa, że to ty jesteś mordercą i chciał się upewnić, że nie ujdzie ci to na sucho."~ */ GOTO 11
  IF ~~ THEN REPLY #12880 /* ~"Zdecydowałem się już, kogo oskarżę."~ */ GOTO 18
  IF ~~ THEN REPLY #12881 /* ~"Teraz się jeszcze tym nie kłopocz. Chcę, abyś odpowiedział na kilka moich pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #12882 /* ~"Jeszcze nic. Żegnaj."~ */ EXIT
END

IF ~  GlobalLT("G_Test2","GLOBAL",5)
GlobalGT("G_Test2","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #12883 /* ~"Wstyd, co się z stało z tym biednym kowalem Avildonem. Ale w gruncie rzeczy, on nie potrafił harować bez wytchnienia. Brakowało mu *poświęcenia*. Takim to torem toczą się sprawy na tych Sferach, zważ na moje słowa... każdy hultaj dostaje to, co mu się należy. No nic. Cóż stary Tyldon może dla ciebie zrobić?"~ */
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #12884 /* ~"Saros - pamiętasz Sarosa, czyż nie? On dał mi szydło znalezione w pobliżu ciała. Dziwnym trafem na rękojeści tego szydła jest wyryte twoje imię. Jak byś wyjaśnił ten zadziwiający zbieg okoliczności?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",5)
~ JOURNAL #67284 /* ~Wybadałem Tyldona na temat szydła, które dał mi Saros. Tyldon utrzymuje, że to Saros próbuje go we wszystko wrobić.~ */ GOTO 43
  IF ~~ THEN REPLY #12885 /* ~"Chciałbym zadać ci kilka pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #12886 /* ~"Na razie nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #12887 /* ~"Porozmawiaj nie tylko ze mną, trepie! Masz do czynienia z osobnikiem niebezpiecznym i musisz się upewnić, że nie zabije nikogo więcej. Do roboty!"~ */
  IF ~~ THEN REPLY #12888 /* ~"Tyldonie, powiedziałem, że potrzebuję odpowiedzi na kilka pytań. Tedy odpowiedz na nie."~ */ GOTO 17
  IF ~~ THEN REPLY #12889 /* ~"Pracuję nad sprawą. Nie martw się. Do widzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #12890 /* ~"CO TAKIEGO? Mówię ci, że ten chłoptaś to złodziej i morderca, a ty mi nie chcesz wierzyć? A co, jeżeli dodam do tego, że ten młokos to Anarchista, członek Ligi Rewolucyjnej?"~ */
  IF ~~ THEN REPLY #12891 /* ~"Dlaczego mam w to uwierzyć?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Tyldon utrzymuje, że Saros jest Anarchistą i działa w porozumieniu z inżynier Bedai-Lin, aby okryć Tyldona niesławą.~ */ GOTO 6
  IF ~~ THEN REPLY #12892 /* ~Kłamstwo: "Jeżeli to prawda, przypilnuję, aby kara go nie minęła."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_1","GLOBALLaw",-1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Tyldon utrzymuje, że Saros jest Anarchistą i działa w porozumieniu z inżynier Bedai-Lin, aby okryć Tyldona niesławą.~ */ GOTO 7
  IF ~~ THEN REPLY #12893 /* ~Prawda: "Jeżeli to prawda, przypilnuję, aby kara go nie minęła."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_1","GLOBALLaw",1)
SetGlobal("G_Test2","GLOBAL",7)
~ JOURNAL #67285 /* ~Tyldon utrzymuje, że Saros jest Anarchistą i działa w porozumieniu z inżynier Bedai-Lin, aby okryć Tyldona niesławą.~ */ GOTO 7
  IF ~~ THEN REPLY #12894 /* ~"Szczerze powiedziawszy, nie ma to dla mnie znaczenia. Wydaje mi się, że dowiedziałem się już wystarczająco wiele, aby być pewnym, że to ty jesteś zbrodniarzem."~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #12895 /* ~"Bo ja tak mówię. Bo chociaż to, co powiem, może również uczynić ze mnie zbrodniarza, nie powstrzymam się, bowiem ponad wszystko w świecie najmilsza jest mi sprawiedliwość." Milknie na chwilę. "Wiem, że on jest Anarchistą, bo próbował mnie zwerbować. On i ta pani inżynier Bedai-Lin. Powiedziałem, że się zgadzam, aby wciągnąć ich w zasadzkę, ale potem uświadomiłem sobie, że nie potrafiłbym skrzywdzić biednego Sarosa. Odmówiłem, a oni teraz próbują zatrzeć swoje ślady. To dlatego chcą się mnie pozbyć. To oni są mordercami. Nie ja."~ */
  IF ~~ THEN REPLY #12896 /* ~"Przyjąwszy, że to prawda, dlaczegóż nie miałbym uwięzić i ciebie?"~ */ GOTO 8
  IF ~~ THEN REPLY #12897 /* ~"To twoja wersja. Potem to sprawdzę. A teraz odpowiedz na kilka moich pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #12898 /* ~"Dobra. Zaraz to sprawdzę. Nie odchodź stąd, Tyldonie. Do widzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2
  SAY #12899 /* ~"Ależ to prawda! Klnę się na święte oczy mojej biednej matki, niechaj spoczywa w pokoju. On i ta kobieta-inżynier, Bedai-Lin, próbowali mnie zwerbować. Powiedziałem im, że się do nich przyłączę, bo chciałem renegatów zdemaskować. Działałem dla dobra swojej frakcji. Ale potem stwierdziłem, że nie jestem w stanie tego uczynić. Wtedy właśnie doszli do wniosku, że najlepiej będzie, jeżeli zawisnę na suchej gałęzi."~ */
  IF ~~ THEN REPLY #12900 /* ~"Interesujące. Ale zarazem niewiarygodne. Twoja opowieść wygląda na bardzo naciąganą. Wydaje mi się, że powinienem na ciebie donieść."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #12901 /* ~"Ach tak. Sprawdzę to. Odpowiedz na kilka moich pytań, Tyldonie."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ GOTO 17
  IF ~~ THEN REPLY #12902 /* ~"Przyjrzę się całej tej sprawie. Dzięki za informacje."~ */ DO ~SetGlobal("G_Test2","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.3 6.0 7.0
  SAY #12903 /* ~"Co? Oskarżasz MNIE? Ależ ja tego nie uczyniłem! Czyż umysł ci strepiał? Ja nie jestem tym, kogo szukasz! Proszę! Nie rób tego!"~ */
  IF ~~ THEN REPLY #12904 /* ~"Po prostu pozwoliłem sobie na niewielki żart, Tyldonie. Rozluźnij się. Chciałbym, żebyś odpowiedział na kilka moich pytań."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #12905 /* ~"Żartuję sobie z ciebie, Tyldonie. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #12906 /* ~"Wszystkie dowody jednoznacznie wskazują na twoją winę, Tyldonie. Spotkamy się na twojej egzekucji."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thildon_1","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2
  SAY #12907 /* ~"Ciągle się temu przyglądasz? Coś kiepski z ciebie oficer śledczy, co? Nie wiem nawet, po co ci to powiedziałem, kiedy ty nawet nie zamierzasz sprawdzić tych informacji..."~ */
  IF ~~ THEN REPLY #12908 /* ~"Dość już tej hipokryzji, Tyldonie. Odpowiedz na kilka moich pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #12909 /* ~"Powiedziałeś mi już wszystko, co chciałem od ciebie usłyszeć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.3
  SAY #12910 /* ~Twarz nadzorcy przybiera barwę pergaminu. "Co?... On... On przyznał się, że jest Anarchistą?"~ */
  IF ~~ THEN REPLY #12911 /* ~"Tak. Odnoszę wrażenie, że uważa, iż stanowisz niebezpieczeństwo dla całego otoczenia, bez znaczenia, czy to Anarchiści, czy Bogowcy. I że ktoś musi cię powstrzymać. Saros gotów jest przyznać się do własnych zbrodni, jedynie po to, aby być pewnym, że i ciebie nie ominie karząca ręka sprawiedliwości.~ */ GOTO 14
  IF ~~ THEN REPLY #12912 /* ~"Tak. A ty jesteś mordercą. Twoje zachowanie zdradza cię."~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 2.4
  SAY #12913 /* ~"Uczynił to? Wobec tego musisz go aresztować! Czyż nie widzisz, jakie zagrożenie stanowi dla otoczenia? Jak mogłeś dać wiarę słowom tego złodziejskiego, kłamliwego nasienia, kiedy oczywistym jest, że za grosz w nim uczciwości! Zaaresztuj go i zrób z nim porządek!"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12914 /* ~"Słuchaj, Tyldonie, z tego, co mi się wydaje, to on jest gotów przyjąć swój wyrok, o ile ty podzielisz jego los. Wszystko to, co o nim słyszałem utwierdza mnie w przekonaniu, że on nie jest złym dzieciakiem - i jeżeli chce ponieść karę, jedynie po to by być pewnym, że i ciebie nie ominie należyta nagroda, to musi oznaczać, że sobie na to naprawdę zasłużyłeś."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #12915 /* ~"To mi nie brzmi zbyt sensownie. Dlaczego miałby to uczynić?'~ */ GOTO 12
  IF ~~ THEN REPLY #12916 /* ~"Tak się składa, że nie ty jesteś tutaj od wydawania mi poleceń, Tyldonie. Pamiętaj o tym. A teraz odpowiedz na kilka moich pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #12917 /* ~"Nie przeciągaj strony, Tyldonie. Twoja sytuacja i tak już jest bardzo ciężka. Miłego dnia życzę."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #12918 /* ~"Dla korzyści Anarchistów, trepie!" Ścisza głos i patrzy na ciebie ze złowrogim namaszczeniem. "Ci Anarchiści to banda fanatyków. Oni nie patyczkują się z takimi jak ja, którzy chcą ich pogrążyć. Poświęcają każdego, aby dopiąć swego celu." Prostuje się i oznajmia. "To właśnie dzięki takimi uczciwym ludziom, jak ja, te draby nie czują się jeszcze zupełnie bezkarnie."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12919 /* ~"Doprawdy, Tyldonie? Saros to młody człowiek, a młodzież bywa omylna. Poważnie wątpię w to, że Saros zdecydowałby się poświęcić się dla twojej zguby, tylko po to, żeby ochronić ludzi, którzy sami wciągnęli go w te kłopoty. Lojalność to cecha piękna i godna podziwu, ale Saros jest dość bystry, aby zorientować się, kiedy wabi się go w pułapkę. Nie, Tyldonie, uważam, że to ty jesteś winny."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #12920 /* ~"Zdaje mi się, że coś tutaj nie gra, ale nie jestem pewien, co to takiego."~ */ GOTO 13
  IF ~~ THEN REPLY #12921 /* ~"Mówisz poważnie? Dobrze. Odpowiedz na kilka moich pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #12922 /* ~"Dobrze ci idzie. Żegnaj, Tyldonie."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #12923 /* ~"Kłopot polega na tym, że twoja mózgownica nie potrafi pojąć spisku, który te łotry snują! Otrząśnij swoją głowę z ciemności, w której jest pogrążona, przejrzyj na oczy, trepie, i przyskrzyń tego małego gnojka!" Przez chwilę wydaje się przerażony tym, co powiedział i tym, do kogo to powiedział, dlatego dodaje: "Och. Wybacz. Żyję ostatnio pod dużą presją. To niełatwo żyć z piętnem mordercy i anarchisty."~ */
  IF ~~ THEN REPLY #12924 /* ~"Nie wątpię. Przemyślę uważnie całą sprawę. Teraz odpowiedz mi na kilka innych pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #12925 /* ~"Jestem pewien, że to nieprawda. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 10.1 11.0 12.0 18.2 40.0 40.3
  SAY #12926 /* ~Jego ciężka twarz nabiega apoplektyczną czerwienią. "Oskarżasz mnie? Ależ ja nie jestem mordercą! Ja po prostu próbuję zdemaskować Anarchistów, trepie! Na bogów, nie możesz mnie o coś takiego posądzać! Nie wolno ci wierzyć każdemu, kto posądza mnie o to, czy tamto!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #12927 /* ~"Czy powiedziałbyś to samo pod przysięgą i pod zaklęciem? Założę się, że Saros zrobiłby to bez wahania."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #12928 /* ~"Saros jest wiarygodniejszym świadkiem. Jest bardziej przekonywujący, a poza tym nie jest tutaj tak znienawidzony, jak ty. Mogę się założyć, że jego wersja jest prawdziwa i to właśnie mam zamiar powiedzieć Keldorowi."~ */ GOTO 15
  IF ~~ THEN REPLY #12929 /* ~"Doniosę na was obu. Co o tym myślisz? Żegnaj, Tyldonie. Nie zobaczymy się więcej."~ */ EXIT
  IF ~~ THEN REPLY #12930 /* ~"Zrobię, jak będę uważał za stosowne. Żegnaj. Tyldonie."~ */ EXIT
  IF ~~ THEN REPLY #12931 /* ~"Przemyślę to wnikliwie i długo. Ty, w międzyczasie, ciesz się życiem, Tyldonie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #12932 /* ~"Cholera. Czy wolno mi przynajmniej wziąć swoje rzeczy i przyśmiać temu miejscu? Stary Tyldon gwarantuje ci, że tego nie pożałujesz!"~ */
  IF ~~ THEN REPLY #12933 /* ~"Dobrze. Ruszaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Thildon_2","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #12934 /* ~"Tylko wówczas, jeśli zdołasz się stąd wydostać zanim dotrę do Keldora. Ale twoje szanse są nikłe."~ */ EXIT
  IF ~~ THEN REPLY #12935 /* ~"Nie. Pozostaniesz tutaj albo zakosztujesz jeszcze większych przykrości. Możesz być pewien, że potrafię o to zadbać. Miłego dnia, Tyldonie."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Thildon_2","GLOBALLaw",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12936 /* ~"Już idę, idę. Więcej o mnie nie usłyszysz."~ */
  IF ~~ THEN REPLY #12937 /* ~"Odejdź, zanim się nie rozmyślę."~ */ EXIT
  IF ~~ THEN REPLY #12938 /* ~"Zmieniłem zdanie. Nie ominie cię spotkanie z katem. Żegnaj, Tyldonie."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6 3.1 4.0 6.1 7.1 8.0 9.0 11.2 12.2 13.0 18.3 19.7 20.3 21.2 22.0 24.0 25.1 26.0 28.0 29.0 30.0 31.0 32.2 34.0 35.0 37.1 38.0 40.1 41.0 42.0 43.0
  SAY #12939 /* ~"Szukasz odpowiedzi? Jakich?"~ */
  IF ~~ THEN REPLY #12940 /* ~"Kim jesteś?"~ */ GOTO 19
  IF ~~ THEN REPLY #12941 /* ~"Opowiedz mi o Bogowcach."~ */ GOTO 30
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #12942 /* ~"Co robiłeś w nocy, podczas której doszło do morderstwa?"~ */ GOTO 37
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12943 /* ~"Muszę skorzystać z kuźni. Możesz dać mi trochę rudy?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12944 /* ~"Muszę skorzystać z kuźni. Możesz dać mi trochę rudy?"~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12945 /* ~"Muszę skorzystać z kuźni. Możesz dać mi trochę rudy?"~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12946 /* ~"Muszę skorzystać z kuźni. Możesz dać mi trochę rudy?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12947 /* ~"Muszę skorzystać z kuźni. Możesz dać mi trochę rudy?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12948 /* ~"Muszę skorzystać z kuźni. Możesz dać mi trochę rudy?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12949 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #12950 /* ~"A na kogo chcesz donieść?" Mężczyzna wydaje się dziwnie pobudzony.~ */
  IF ~~ THEN REPLY #12951 /* ~"Mam zamiar wskazać Sarosa jako mordercę."~ */ GOTO 39
  IF ~~ THEN REPLY #12952 /* ~"Oskarżam was obu: ciebie i Sarosa."~ */ GOTO 40
  IF ~~ THEN REPLY #12953 /* ~"Powiem Keldorowi, że to ty jesteś mordercą."~ */ GOTO 14
  IF ~~ THEN REPLY #12954 /* ~"Jeszcze nikogo, mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #12955 /* ~"Jeszcze nie powiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #12956 /* ~"Jestem Tyldon Szary, nadzorca tego miejsca. Moja praca tutaj polega na pilnowaniu, czy robotnicy pracują należycie. I czy nikt im w tym nie przeszkadza, tak jak ty. I tak niewiele się przykładają, leniwe trepy, i gdyby nie ja, zmarnowaliby tutaj cały boży dzień. Jestem surowy... ale sprawiedliwy. Spytaj tu o to każdego."~ */
  IF ~~ THEN REPLY #12957 /* ~"Dlaczego nazywasz się 'Szary'?"~ */ GOTO 20
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12958 /* ~"Więc to ty jesteś tym facetem, którego mogę prosić o trochę rudy żelaza do kuźni."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 31
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",2)
~ THEN REPLY #12959 /* ~"Więc to ty jesteś tym facetem, którego mogę prosić o trochę rudy żelaza do kuźni."~ */ GOTO 32
  IF ~  GlobalGT("Forge","GLOBAL",3)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12960 /* ~"Więc to ty jesteś tym facetem, którego mogę prosić o trochę rudy żelaza do kuźni."~ */ GOTO 32
  IF ~  GlobalLT("Forge","GLOBAL",4)
Global("G_Test1","GLOBAL",0)
~ THEN REPLY #12961 /* ~"Więc to ty jesteś tym facetem, którego mogę prosić o trochę rudy żelaza do kuźni."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 33
  IF ~  GlobalGT("Forge","GLOBAL",3)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12962 /* ~"Więc to ty jesteś tym facetem, którego mogę prosić o trochę rudy żelaza do kuźni."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~  GlobalLT("Forge","GLOBAL",4)
GlobalLT("G_Test1","GLOBAL",3)
GlobalGT("G_Test1","GLOBAL",0)
~ THEN REPLY #12963 /* ~"Więc to ty jesteś tym facetem, którego mogę prosić o trochę rudy żelaza do kuźni."~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
~ GOTO 34
  IF ~~ THEN REPLY #12964 /* ~"Być może. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #12965 /* ~"Być może. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #12966 /* ~"Szary, bo jestem przez większość dnia uwalany sadzą z tych pieców. Takie przezwisko nadali mi moi robotnicy... bez wątpienia z szacunku dla mnie."~ */
  IF ~~ THEN REPLY #12968 /* ~Powiedz z sarkazmem. "Bez wątpienia. Rzeczywiście wydają się szanować twoją delikatną duszę."~ */ GOTO 21
  IF ~~ THEN REPLY #12969 /* ~Powiedz z powagą: "Nie wątpię."~ */ GOTO 25
  IF ~~ THEN REPLY #12970 /* ~"Jasne. Tak musi być."~ */ GOTO 27
  IF ~~ THEN REPLY #12971 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #12972 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #12973 /* ~"Sugerujesz, że nie jestem sprawiedliwy dla moich podwładnych? Chyba dlatego, że jestem dla nich jak ojciec, a nie jak nadzorca!"~ */
  IF ~~ THEN REPLY #12974 /* ~"Przykro to mówić, ale większość z nich była w dzieciństwie regularnie bita..."~ */ GOTO 22
  IF ~~ THEN REPLY #12975 /* ~"Sugeruję tylko, że może okazujesz im nieco zbyt daleko idącą sprawiedliwość, jeżeli wiesz, co mam na myśli."~ */ GOTO 24
  IF ~~ THEN REPLY #12976 /* ~"Dobra, dobra. Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #12977 /* ~"Jestem pewien. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 27.2
  SAY #12978 /* ~Jego twarz przybiera z wściekłości barwę purpury. Kiedy w końcu opanowuje się, prycha "Zejdź z moich oczu, albo każę się wypędzić strażnikom!"~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12979 /* ~"Nie. Nie teraz, kiedy prowadzę śledztwo w sprawie tego morderstwa. A teraz odpowiedz na kilka moich pytań."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12980 /* ~"Po prostu odpowiedz na kilka moich pytań..."~ */ GOTO 23
  IF ~~ THEN REPLY #12981 /* ~"Dobrze. Teraz odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1 24.1 29.1
  SAY #12982 /* ~Mężczyzna grzmiącym głosem wzywa straże. "STRAŻE! Zabierzcie tego żałosnego plugawca sprzed moich oczu i przypilnujcie, żeby już tu NIE WRÓCIŁ!"~ */
  IF ~~ THEN REPLY #12983 /* ~"Pożałujesz tego. Przygotuj się na śmierć, wieprzu."~ */ DO ~Enemy()
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #12984 /* ~"W porządku. Żegnaj."~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #12985 /* ~"Naprawdę tak uważasz? Sugerujesz, że nie traktuję ich właściwie? Że powinienem coś w tym zmienić? Cóż, pomyślę o tym. Ale wszystko wskazuje na to, że nic nie ulegnie zmianie. A teraz zejdź mi z oczu."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12986 /* ~"Zaprzestań na chwilę swojej pracy. Odpowiedz na kilka moich pytań."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #12987 /* ~"Po prostu odpowiedz na kilka moich pytań..."~ */ GOTO 23
  IF ~~ THEN REPLY #12988 /* ~"Dobrze, teraz odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 20.1
  SAY #12989 /* ~"Naturalnie. Tak właśnie jest. Dobrze wiedzą, że jak będzie inaczej, nie ominie ich kara."~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #12990 /* ~"Sugerujesz, że kowal dostał to, na co zasłużył?"~ */ GOTO 26
  IF ~~ THEN REPLY #12991 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #12992 /* ~"Ach tak. Żegnam."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12993 /* ~Twarz nadzorcy na moment oblewa się bladością "To tylko figura retoryczna, nic poza tym. Nie ma w tym żadnej aluzji."~ */
  IF ~~ THEN REPLY #12994 /* ~"Dobrze. A teraz odpowiedz na kilka moich pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #12995 /* ~"Pomyślimy o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.2
  SAY #12996 /* ~"A cóż to miało oznaczać?"~ */
  IF ~~ THEN REPLY #12997 /* ~"To znaczy, że zgadzam się z tobą."~ */ GOTO 28
  IF ~~ THEN REPLY #12998 /* ~"Oznacza to, że nie wierzę w to, aby cię zbytnio szanowali."~ */ GOTO 29
  IF ~~ THEN REPLY #12999 /* ~"Oznacza to, żebyś się szpicował, trepie!"~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #13000 /* ~"No tak. Wieloświat byłby lepszym miejscem, gdyby wszyscy tak postępowali. A teraz już muszę wracać do pracy."~ */
  IF ~~ THEN REPLY #13001 /* ~"Mam jeszcze kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #13002 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #13003 /* ~"Wierzysz w to, w co chcesz uwierzyć, człowieczku. Znam swoich pracowników. Oni potrzebują nad sobą silnej ręki. Właśnie za to mnie szanują. A teraz zejdź mi z oczu!"~ */
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #13004 /* ~"Zaprzestań na chwilę swojej pracy. Odpowiedz na kilka moich pytań."~ */ GOTO 17
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #13005 /* ~"Po prostu odpowiedz na kilka moich pytań..."~ */ GOTO 23
  IF ~~ THEN REPLY #13006 /* ~"Bardzo dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 17.1
  SAY #13007 /* ~"Zatrudniono mnie i wyszkolono, abym stał się tym, kim jestem teraz i jestem im za to wdzięczny. Kiedy tu przyszedłem, byłem jak świeży grunt, na którym oni wyhodowali strzelisty las. Pokierowali moim zdolnościami i rozwinęli je. Słuchaj, jestem prawdziwym ulubieńcem faktona, i któregoś dnia okaże się, jak jestem ważny dla tej organizacji. Oni uważają, że noszą w sobie cząstkę boskości. Uważam to za prawdę. Myślę, że jestem bliżej prawdy niż większość z nich. To daje mi prawo do postępowania, jakbym był bogiem i do wymagania od moich podwładnych religijnej czci wobec mojej osoby. Uczę się, jak posługiwać się moją władzą i jak przenosić góry wiarą w samego siebie. A kiedy zawładnę wszechświatem, możesz być pewny, że nie zapomnę o tych wszystkich trepach, którzy stali na mojej drodze."~ */
  IF ~~ THEN REPLY #13008 /* ~"To... interesujące. Mam jeszcze kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #13009 /* ~"Ach tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 17.3 19.1
  SAY #13010 /* ~"Domyślam się, że kucie nie idzie ci zbyt dobrze, co? Dobra, bierz, co chcesz i rób, co chcesz." Nadzorca bezceremonialnie urywa kawał rudy żelaza z pobliskiego stosu i ciska ci w dłonie. "Czy jeszcze czegoś ode mnie potrzebujesz, czy też mogę wrócić do nadzorowania tych nieszczęśników?"~ */
  IF ~~ THEN REPLY #13011 /* ~"Mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #13012 /* ~"Wracaj do pracy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 17.4 17.5 19.2 19.3
  SAY #13013 /* ~Nadzorca lustruje cię przez zmrużone oczy. "Tyle tylko rzec mogę, że po mojemu to ci do niczego nie potrzebne. Znikaj, trepie."~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #13014 /* ~"Czy nie lepiej byłoby dać mi tę rudę po dobroci i dalej cieszyć się dobrym zdrowiem?"~ */ DO ~GiveItemCreate("iore",Protagonist,1,0,0)
IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 35
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #13015 /* ~"Czy nie lepiej byłoby dać mi tę rudę po dobroci i dalej cieszyć się dobrym zdrowiem?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_4","GLOBALLaw",-1)
~ GOTO 36
  IF ~~ THEN REPLY #13016 /* ~"Dobra, dobra. A teraz mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #13017 /* ~"Jeżeli tego chcesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 17.6 19.4
  SAY #13018 /* ~Nadzorca mierzy cię spojrzeniem od stóp do głów, zastanawia się przez chwilę i odzywa się wreszcie: "Chcesz zostać kowalem? A wiesz ty, co ogień potrafi zrobić ze skórą? Bierz zatem, co ci potrzeba i nie przeszkadzaj moim robotnikom. Miłego dnia życzę ci, panie."~ */
  IF ~~ THEN REPLY #13019 /* ~"Zatem, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 17.7 17.8 19.5 19.6
  SAY #13020 /* ~"Zdaję się, że ostatnimi czasy każdy może stać się Bogowcem." mówi zrzędliwie "To nie to samo co dawniej, kiedy trzeba było wykazać się prawdziwym potencjałem, żeby zostać członkiem Frakcji. Potrzebujesz żelaza do swoich babskich zabaw? Bierz zatem, co chcesz i znikaj." Nadzorca wrzuca się w dłonie grudę żelaza.~ */
  IF ~~ THEN REPLY #13021 /* ~"Dzięki, mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #13022 /* ~"Dzięki, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #13023 /* ~Nadzorca patrzy badawczo na rozmiar twych ramion, zagląda ci w twarz i dochodzi do wniosku, że nie żartujesz. "Nie myśl, że o tym zapomnę, trepie." mówi wrzucając ci w dłonie kawał rudy żelaza. Ale kiedy to robi unika twojego spojrzenia.~ */
  IF ~~ THEN REPLY #13024 /* ~"Dzięki, mam kilka innych pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #13025 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.1
  SAY #13026 /* ~Nadzorca patrzy krytycznie na rozmiar twoich ramion i prycha z pogardą. "Jakżeś mógł sądzić, że się ciebie przelęknę? Szpicuj się, trepie." Odwraca od ciebie głowę.~ */
  IF ~~ THEN REPLY #13027 /* ~Zaatakuj go.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #13028 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 17.2
  SAY #13029 /* ~"Co robiłem? A co? Siedziałem w moim pokoju, ze słuszną pajdą chleba i dzbanem wina w dłoniach. Nie opuszczałem mieszkania. Nie było potrzeby."~ */
  IF ~~ THEN REPLY #13030 /* ~"Czy znasz kogoś, kto mógłby to potwierdzić?"~ */ DO ~SetGlobal("G_Suspect_S","GLOBAL",1)
SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #13031 /* ~"Ach tak. Mam jeszcze kilka innych pytań."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #13032 /* ~"Ach tak. Żegnaj."~ */ DO ~SetGlobal("G_Suspect_T","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #13033 /* ~"Nie. Jeśli naprawdę szukasz winowajców, to zwróciłbym twoją uwagę na Sarosa. Temu małemu złodziejaszkowi wszystko uchodzi na sucho, bo jego ojciec jest wysoko postawioną personą. Zawsze interesowały go nowe doznania. Praktycznie rzecz biorąc jest Czuciowcem, jeśliś ciekaw. Po prostu zachciało mu się poznać na własnej skórze, jak to jest zabić kogoś i ujść bezkarnie."~ */
  IF ~~ THEN REPLY #13034 /* ~"Saros, tak? Zapamiętam to imię. W międzyczasie, mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #13035 /* ~"Saros, tak? Sprawdze to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.0
  SAY #13036 /* ~Nadzorca uśmiecha się promiennie, odsłaniając kilka zepsutych zębów i pochyla się, aby uścisnąć twoją rękę. "Dobrego wyboru dokonałeś, przyjacielu. Dobrego. Żegnaj, do miłego zobaczenia!"~ */
  IF ~~ THEN REPLY #13037 /* ~"Nie wątpię. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 18.1
  SAY #9347 /* ~Na jego twarz wstępuje ożywienie, jak gdyby otrzymał policzek. "Oskarżasz nas obu? A cóż takiego ja uczyniłem?"~ */
  IF ~~ THEN REPLY #13039 /* ~"Według mnie to ty zamordowałeś tego kowala i próbowałeś wrobić Sarosa w tę zbrodnię. Zaś Saros próbował w nielegalny sposób zwrócić na ciebie uwagę prawa oraz winny jest innych przestępstw."~ */ GOTO 14
  IF ~~ THEN REPLY #13041 /* ~"Po prostu żartuję sobie z ciebie, Tyldonie. Rozluźnij się. Odpowiedz mi na kilka innych pytań."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #13042 /* ~"Żartuję sobie z ciebie. Tyldonie. Żegnaj."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thildon_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #13043 /* ~"Zabiłeś kowala Avildona i próbujesz się z tego wyłgać. Żegnaj."~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 41 // from:
  SAY #13044 /* ~"A cóż to u licha, znowu ty?"~ */
  IF ~~ THEN REPLY #13045 /* ~"Odpowiedz na kilka moich pytań, Tyldonie."~ */ GOTO 17
  IF ~~ THEN REPLY #13046 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 42 // from:
  SAY #13047 /* ~Widzisz brzuchatego mężczyznę o ciężkich ramionach i krzaczastej brodzie. Śmierdzi od niego, jakby nie zakosztował kąpieli od stuleci, a i jego oddech trudno uznać za rozkosz dla nozdrzy. Człowiek ten jest pochłonięty wydawaniem rozkazów swoim podwładnym, a kiedy doń się zbliżasz, akurat karze jednego z nich solidnym klapsem w ucho. Potem dostrzegłszy cię, odwraca się, poprawiając pas "Czegóż chcesz?"~ */
  IF ~~ THEN REPLY #13048 /* ~"Mam kilka pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #13049 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 3.0
  SAY #13091 /* ~Nadzorca wygląda teraz na zmieszanego. "Saros to złodziej. Wszystko wskazuje na to, że to on ukradł mi to szydło. Już od dłuższego czasu nie miałem tego szydła, ale nigdy o tym nie wspominałem, bo doszedłem do wniosku, że po prostu gdzieś je zgubiłem. Teraz już wiem, że Saros ukradł je po to, żeby mnie wrobić w zabójstwo. Lepiej łap go prędko, zanim ci przyśmieje." Widząc wyraz twojej twarzy, dodaje: "Zanim ci nie ucieknie."~ */
  IF ~~ THEN REPLY #13092 /* ~"To brzmi zbyt kunsztownie. Spytam się go o to, zaraz po tym, jak odpowiesz mi na kilka innych pytań."~ */ GOTO 17
  IF ~~ THEN REPLY #13093 /* ~"Zatem znajdę go. Żegnaj."~ */ EXIT
END
