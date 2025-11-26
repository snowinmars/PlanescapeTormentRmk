// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDABUS~

IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1782 /* ~Widzisz przed sobą wysoką postać z bujną czupryną siwych włosów. Jej skóra ma zielonkawy odcień, a z czoła wystaje para kozich rogów. Postać jest ubrana w długie, zwiewne szaty i wydaje się, że lekko unosi się nad ziemią.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #1784 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #1783 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1785 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #6863 /* ~Zostaw istotę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #2781 /* ~Postać odwraca się w twoim kierunku, a wokół jej głowy ukazuje się ciąg symboli. Otacza je subtelna poświata i po prostu... unoszą się w powietrzu.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 52
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #1786 /* ~Postać odwraca się w twoim kierunku, a wokół jej głowy ukazuje się ciąg symboli. Otacza je subtelna poświata i po prostu... unoszą się w powietrzu.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 34
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1787 /* ~Dabus czeka cierpliwie; jego ręce są schowane w rękawach. Nad jego głową ukazuje się ciąg symboli, który po chwili znika, a na jego miejscu pojawia się znak zapytania.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6864 /* ~Spróbuj rozpocząć rozmowę. Sprawdź, czy możesz przetłumaczyć to, co chce ci powiedzieć.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6867 /* ~Spróbuj rozpocząć rozmowę. Sprawdź, czy możesz przetłumaczyć to, co chce ci powiedzieć.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6869 /* ~Spróbuj porozmawiać z dabusem i sprawdź, czy potrafisz go zrozumieć.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6870 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6871 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6872 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6873 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6874 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6875 /* ~"Anno, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6876 /* ~"Dak'konie, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6877 /* ~"Nie-Sławo, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6878 /* ~"Przykro mi, ale cię nie rozumiem."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6879 /* ~"Eee... żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 22.0 22.1
  SAY #6730 /* ~Próbujesz zadać dabusowi kilka pytań, aby przyzwyczaić się do rebusów, które ukazują się ponad jego głową. W trakcie tej 'rozmowy', twój rozmówca jest bardzo cierpliwy. Podaje ci do przetłumaczenia proste zdania. Po pewnym czasie zaczynasz się w nich orientować... Masz wrażenie, że nie są one dla ciebie zupełnie obce.~ */
  IF ~~ THEN REPLY #6880 /* ~"Może mógłbyś mi pomóc..."~ */ GOTO 8
  IF ~~ THEN REPLY #6881 /* ~"Chciałem tylko odświeżyć moją znajomość rebusów. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 22.2
  SAY #6731 /* ~Próbujesz zadać dabusowi kilka pytań, aby przyzwyczaić się do rebusów, które ukazują się ponad jego głową. Choć w trakcie tej 'rozmowy' twój rozmówca jest bardzo cierpliwy, to nie udaje ci się zrozumieć symboli. W końcu dabus przestaje wyświetlać symbole i po prostu czeka.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6882 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6883 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6884 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6885 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6886 /* ~"Anno, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6887 /* ~"Dak'konie, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6888 /* ~"Nie-Sławo, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6889 /* ~"Przykro mi, ale cię nie rozumiem."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6890 /* ~"Eee... żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.12 4.1 5.8 8.6 9.1 10.1 10.2 11.1 12.1 12.2 19.3 22.12
  SAY #6732 /* ~Dabus lekko skłania głowę. Ponad nią zaczynają wirować symbole. Potem odwraca się od ciebie.~ */
  IF ~~ THEN REPLY #6891 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.11 5.7 22.4
  SAY #6733 /* ~Ponad głową dabusa ukazuje się ciąg symboli. Potem dabus kłania się i odwraca od ciebie.~ */
  IF ~~ THEN REPLY #6892 /* ~"Eee... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.0 9.0 10.0 11.0 12.0 19.2 22.3
  SAY #6734 /* ~Dabus czeka.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6893 /* ~"Kim jesteś?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6894 /* ~"Czym się zajmujesz?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6895 /* ~"Kim jesteś?"~ */ DO ~FloatRebus(Myself)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6896 /* ~"Czym się zajmujesz?"~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #6897 /* ~"Opowiedz mi o Pani Bólu."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #6898 /* ~"Opowiedz mi o Upadłym."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #6899 /* ~"Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6735 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli. Chyba mówi, że jest dabusem.~ */
  IF ~~ THEN REPLY #6902 /* ~"Mam do ciebie jeszcze jedno pytanie..."~ */ GOTO 8
  IF ~~ THEN REPLY #6903 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #6736 /* ~Ponad głową dabusa ukazuje się grupa symboli. Chyba mówi, że wykonuje swój obowiązek... albo obowiązki.~ */
  IF ~~ THEN REPLY #6904 /* ~"Mam do ciebie jeszcze jedno pytanie..."~ */ GOTO 8
  IF ~~ THEN REPLY #6905 /* ~"Bardzo opisowe. Dziękuję. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6906 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #6737 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli. (Jestem dabusem.)~ */
  IF ~~ THEN REPLY #6900 /* ~"Mam do ciebie jeszcze jedno pytanie..."~ */ GOTO 8
  IF ~~ THEN REPLY #6901 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #6738 /* ~Ponad głową dabusa ukazuje się grupa symboli. (Wypełniam swoje obowiązki.)~ */
  IF ~~ THEN REPLY #6907 /* ~"Mam do ciebie jeszcze jedno pytanie..."~ */ GOTO 8
  IF ~~ THEN REPLY #6908 /* ~"Bardzo opisowe. Dziękuję. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6909 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 13 // from:
  SAY #6739 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6910 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6911 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6912 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6913 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6740 /* ~Ponad głową dabusa ukazuje się grupa symboli.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6914 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6915 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6916 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 15 // from:
  SAY #6741 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli. Chyba mówi, że jest dabusem.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6917 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6918 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6919 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6920 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 16 // from:
  SAY #6742 /* ~Ponad głową dabusa ukazuje się grupa symboli. Chyba mówi, że wykonuje swój obowiązek... albo obowiązki.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6921 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6922 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6923 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 17 // from:
  SAY #6743 /* ~Dabus lekko przechyla głowę, ponad którą ukazuje się strumień symboli. (Jestem dabusem.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6924 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6925 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6926 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6927 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 18 // from:
  SAY #6744 /* ~Ponad głową dabusa ukazuje się grupa symboli. (Wypełniam swoje obowiązki.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6928 /* ~"Co on powiedział, Anno?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6929 /* ~"Co on powiedział, Dak'konie?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6930 /* ~"Co on powiedział, Sławo?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 19 // from: 8.4
  SAY #6745 /* ~Nad głową dabusa ukazuje się pojedynczy symbol. Pokazuje on metaliczną, kobiecą maskę, z której boków wychodzą ostrza. Już samo patrzenie na ten upiorny wizerunek sprawia, że czujesz się nieswojo.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6931 /* ~"Eee... nie takiej odpowiedzi się spodziewałem."~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 4
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6932 /* ~"Eee... Rozumiem. Dak'konie, czy możesz mu zadać następne pytanie?~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 1
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6933 /* ~"Eee... Mam do ciebie jeszcze jedno pytanie..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~~ THEN REPLY #6934 /* ~"Eee... To wszystko, co chciałem wiedzieć. Żegnaj."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 8.5
  SAY #6746 /* ~Ponad głową dabusa ukazuje się pojedynczy symbol. To biały owal przecięty czarną błyskawicą. Po chwili symbol znika, a dabus odwraca się od ciebie i przestaje zwracać na ciebie uwagę.~ */
  IF ~~ THEN REPLY #6935 /* ~"Eee... W takim razie, żegnaj."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #6747 /* ~Widzisz przed sobą dabusa. Jest ubrany w długie, zwiewne szaty i lekko unosi się nad ziemią.~ */
  IF ~~ THEN REPLY #6936 /* ~"Witaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~~ THEN REPLY #6938 /* ~Zostaw dabusa w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.1 21.0
  SAY #6748 /* ~Dabus odwraca się w twoim kierunku, a wokół jego głowy ukazuje się ciąg symboli. Otacza je subtelna poświata i po prostu... unoszą się w powietrzu.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6939 /* ~Spróbuj rozpocząć rozmowę. Sprawdź, czy możesz przetłumaczyć to, co chce ci powiedzieć.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6940 /* ~Spróbuj rozpocząć rozmowę. Sprawdź, czy możesz przetłumaczyć to, co chce ci powiedzieć.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6941 /* ~Spróbuj z nią porozmawiać i sprawdź, czy potrafisz go zrozumieć.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6942 /* ~"Mam do ciebie kilka pytań..."~ */ GOTO 8
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6943 /* ~"Przykro mi, ale cię nie rozumiem."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6944 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6945 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6946 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6947 /* ~"Morte, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6948 /* ~"Anno, czy możesz przetłumaczyć, co on mówi?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6949 /* ~"Dak'konie, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6950 /* ~"Nie-Sławo, czy możesz przetłumaczyć, co on mówi?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6951 /* ~"Mniejsza z tym. Przepraszam za najście. Żegnaj."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END
