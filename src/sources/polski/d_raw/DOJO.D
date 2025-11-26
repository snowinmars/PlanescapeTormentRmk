// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOJO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DOJO~

IF ~  GlobalGT("CR_Vic","GLOBAL",3)
GlobalLT("CR_Vic","GLOBAL",6)
Global("Alley_Pregnant","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18838 /* ~Wielkolud porusza się bardzo niezgrabnie, całe jego ciało, od głowy do ogona, pokrywa cienka warstwa brązowego futra. "Ojo teraz lubić człowieka w ścianie." - Mówi smutno.~ */
  IF ~~ THEN REPLY #2830 /* ~"Co się stało?"~ */ GOTO 1
  IF ~~ THEN REPLY #18839 /* ~"Gdzie się wszyscy podziali?"~ */ GOTO 2
  IF ~~ THEN REPLY #18840 /* ~"Jesteś teraz szczurołakiem?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18841 /* ~"Teraz mówisz lepiej. Co się stało?"~ */ GOTO 5
  IF ~~ THEN REPLY #18842 /* ~"W takim razie lepiej cię zabiję."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18843 /* ~"Szkoda. Żegnaj."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2829 /* ~"Duże futro. Zęby. Wszyscy przyjaciele gryzą. Niektórzy to jedzenie. Niektórzy okryci futrem. Zostawić Ojo samego."~ */
  IF ~~ THEN REPLY #18844 /* ~"Więc gdzie się wszyscy podziali?"~ */ GOTO 2
  IF ~~ THEN REPLY #18845 /* ~"Więc to szczury urządziły napad? Dzięki. Żegnaj."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #18846 /* ~"Przyszły szczury i futrzani ludzie. Każdy bił. Oni odejść do płaczącego miejsca. Ojo nie iść za nimi. Oni wrócić. Oni okryci futrem i źli."~ */
  IF ~~ THEN REPLY #18847 /* ~"Rozumiem. Czy masz mi jeszcze coś do powiedzenia?"~ */ GOTO 6
  IF ~~ THEN REPLY #18848 /* ~"Rozumiem. Dzięki. Żegnaj."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.5 1.1 2.1 4.1 5.1
  SAY #18849 /* ~Kiedy się obracasz, zauważasz ogromnego człowieka szykującego się do skoku. W jego oczach czai się dzikość, z ust cieknie mu ślina. Wygląda na to, że jego zęby są bardzo, bardzo ostre.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18850 /* ~"Nie rób tego. Nie chcę cię skrzywdzić."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18851 /* ~"Nie rób tego. Nie chcę cię skrzywdzić."~ */ GOTO 8
  IF ~~ THEN REPLY #18852 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #18853 /* ~Mężczyzna smutno spogląda na swoje ręce, a potem na ciebie. Kiedy zaczyna mówić, w jego zębach odbija się światło. "Szczurowate." Na jego ustach zaczyna tańczyć złowrogi uśmiech.~ */
  IF ~~ THEN REPLY #18854 /* ~"Masz mi jeszcze coś do powiedzenia?"~ */ GOTO 6
  IF ~~ THEN REPLY #18855 /* ~"Hmm, to szkoda. Żegnaj."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #18856 /* ~"W takim razie nie mogę pozwolić, żebyś zarażał innych. Przygotuj się na śmierć."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #18857 /* ~Mężczyzna wzrusza ramionami.~ */
  IF ~~ THEN REPLY #18858 /* ~"Masz mi jeszcze coś do powiedzenia?"~ */ GOTO 6
  IF ~~ THEN REPLY #18859 /* ~"W takim razie, żegnaj."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0 5.0
  SAY #18860 /* ~"Odejdź. Szczurowate gryźć. Potem ja gryźć ciebie."~ */
  IF ~~ THEN REPLY #18861 /* ~"Dobrze. W takim razie, żegnaj."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #18862 /* ~Zapada chwila ciszy, a potem jego muskuły powoli zaczynają się rozluźniać. "Odejdź. Albo ja cię ugryźć."~ */
  IF ~~ THEN REPLY #18863 /* ~Odejdź.~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #18864 /* ~Zaatakuj go.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #18865 /* ~Mężczyzna nie zważa na twoje słowa i skacze na ciebie!~ */
  IF ~~ THEN REPLY #18866 /* ~"Ojo, czekaj!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18867 /* ~"Jeśli tak musi być..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Ojo","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #18868 /* ~Ogromny człowiek zwraca się w twoją stronę, przykuca, a potem skacze!~ */
  IF ~~ THEN REPLY #18869 /* ~"Ojo, czekaj!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18870 /* ~"Jeśli tego właśnie chcesz..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 10 // from:
  SAY #18871 /* ~Ojo odwraca się od ściany i spogląda na ciebie tępym wzrokiem.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 197
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18872 /* ~Ojo odwraca się od ściany i spogląda na Mortego. W jego oczach powoli zaczyna pojawiać się ogień.~ */
  IF ~~ THEN REPLY #18873 /* ~"Morte, wystarczy."~ */ EXTERN ~DMORTE~ 198
  IF ~~ THEN REPLY #18874 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #18875 /* ~"Ruszajmy stąd. Żegnaj, Ojo."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 12 // from: 11.1 16.0 17.0 18.4 19.1 20.2 22.2 23.1 27.3 28.2 29.1 30.2 31.1 32.3 33.6 35.1 36.1 37.1 38.2 39.1 40.4 41.4 42.4 43.3
  SAY #18876 /* ~Ojo po prostu się patrzy.~ */
  IF ~  Global("Know_Ojo_Wall","GLOBAL",1)
~ THEN REPLY #18877 /* ~"Możesz powtórzyć jeszcze raz, co mówiłeś o tym człowieku w ścianie?"~ */ GOTO 27
  IF ~~ THEN REPLY #18878 /* ~"Opowiedz mi o sobie jeszcze raz."~ */ GOTO 17
  IF ~~ THEN REPLY #18879 /* ~"Co tu robisz?"~ */ GOTO 18
  IF ~~ THEN REPLY #18880 /* ~"Opowiedz mi o mieszkańcach tej wioski."~ */ GOTO 33
  IF ~~ THEN REPLY #18881 /* ~"Opowiedz mi o katakumbach."~ */ GOTO 21
  IF ~~ THEN REPLY #18882 /* ~"Opowiedz mi o Zakopanej Wiosce."~ */ GOTO 21
  IF ~~ THEN REPLY #18883 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 14.0 15.0 21.0
  SAY #18884 /* ~Ojo mruga oczami.~ */
  IF ~~ THEN REPLY #18885 /* ~Wskaż na niego: "Kim jesteś?"~ */ GOTO 16
  IF ~~ THEN REPLY #18886 /* ~"Zapomnij o tym. Mam do ciebie parę innych pytań..."~ */ GOTO 15
  IF ~~ THEN REPLY #18887 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 14 // from:
  SAY #18888 /* ~Widzisz przed sobą potężnie zbudowanego mężczyznę z lekko otwartą szczęką. W jego oczach widać iskrę inteligencji, która jednak szybko gaśnie.~ */
  IF ~~ THEN REPLY #18889 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #18890 /* ~"Co tu robisz?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18891 /* ~"Opowiedz mi o mieszkańcach tej wioski."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18892 /* ~"Opowiedz mi o katakumbach."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18893 /* ~"Opowiedz mi o Zakopanej Wiosce."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18894 /* ~"Zapomnij o tym. Żegnaj."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #18895 /* ~Mężczyzna mruga oczami.~ */
  IF ~~ THEN REPLY #18896 /* ~"Opowiedz mi o sobie."~ */ GOTO 13
  IF ~~ THEN REPLY #18897 /* ~"Co tu robisz?"~ */ GOTO 21
  IF ~~ THEN REPLY #18898 /* ~"Opowiedz mi o mieszkańcach tej wioski."~ */ GOTO 21
  IF ~~ THEN REPLY #18899 /* ~"Opowiedz mi o katakumbach."~ */ GOTO 21
  IF ~~ THEN REPLY #18900 /* ~"Opowiedz mi o Zakopanej Wiosce."~ */ GOTO 21
  IF ~~ THEN REPLY #18901 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #18902 /* ~"Ojo."~ */
  IF ~~ THEN REPLY #18903 /* ~"W porządku. Mam do ciebie kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18904 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #18905 /* ~Mężczyzna wzrusza ramionami.~ */
  IF ~~ THEN REPLY #18906 /* ~"W porządku... w takim razie odpowiedz mi na kilka pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #18907 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #18908 /* ~"Ojo mówić..." Nagle przerywa i zaczyna masować sobie rękę.~ */
  IF ~~ THEN REPLY #18909 /* ~Przyjrzyj się jego ręce.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18910 /* ~"Z kim rozmawiasz?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18911 /* ~"Z kim rozmawiasz?"~ */ GOTO 24
  IF ~~ THEN REPLY #18912 /* ~"Co?"~ */ GOTO 22
  IF ~~ THEN REPLY #18913 /* ~"W porządku. Mam do ciebie parę innych pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #18914 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18915 /* ~Na jego skórze można zauważyć mały, zaczerwieniony strup. Mężczyzna zrywa go na twoich oczach.~ */
  IF ~~ THEN REPLY #18916 /* ~"Co stało się z twoją ręką?"~ */ GOTO 20
  IF ~~ THEN REPLY #18917 /* ~"Mam do ciebie kilka innych pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #18918 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #18919 /* ~"Ugryzienie."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18920 /* ~"Kto cię pogryzł?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18921 /* ~"Kto cię pogryzł?"~ */ GOTO 24
  IF ~~ THEN REPLY #18922 /* ~"W porządku. Mam do ciebie parę innych pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18923 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.4 12.5 14.1 14.2 14.3 14.4 15.1 15.2 15.3 15.4
  SAY #18924 /* ~"Nie rozmawiać z obcymi." Odwraca od ciebie wzrok pocierając rękę.~ */
  IF ~~ THEN REPLY #18925 /* ~"W porządku. Opowiedz mi o sobie."~ */ GOTO 13
  IF ~~ THEN REPLY #18926 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY #18927 /* ~"Ojo mówić." Mężczyzna odwraca się od ciebie.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18928 /* ~"Z kim rozmawiasz?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18929 /* ~"Z kim rozmawiasz?"~ */ GOTO 24
  IF ~~ THEN REPLY #18930 /* ~"W porządku. Mam do ciebie parę innych pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18931 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.1 20.0 22.0 40.0 41.1 42.1 43.0
  SAY #18932 /* ~Mężczyzna spogląda na ścianę, a potem przenosi wzrok na ciebie. "Człowiek w ścianie."~ */
  IF ~~ THEN REPLY #18933 /* ~"W tej ścianie jest człowiek?~ */ DO ~SetGlobal("Know_Ojo_Wall","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #18934 /* ~"Ee, rozumiem. Mam do ciebie parę innych pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18935 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.2 20.1 22.1 40.1 41.2 42.2 43.1
  SAY #18936 /* ~Ojo spogląda w kierunku jednej ze ścian, potem zwraca się do ciebie. Oczy mu się zwężają, a kącik jego ust zaczyna drgać. "Kim jesteś? Ty odejść."~ */
  IF ~~ THEN REPLY #18937 /* ~"Mam tylko do ciebie parę innych pytań."~ */ GOTO 25
  IF ~~ THEN REPLY #18938 /* ~"W porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #18939 /* ~"Nie! Ty odejść!" Mężczyzna zaczyna się denerwować.~ */
  IF ~~ THEN REPLY #18940 /* ~"Tylko parę nowych pytań."~ */ GOTO 26
  IF ~~ THEN REPLY #18941 /* ~"W takim razie w porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18942 /* ~Mężczyzna odwraca się od ciebie i wtula w róg. Żadne pochlebstwa na przekonają go, żeby spojrzał na ciebie albo odpowiedział.~ */
  IF ~~ THEN REPLY #18943 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0 23.0 28.1 29.0 30.1 31.0 32.2
  SAY #18944 /* ~Mężczyzna spogląda na ścianę, a potem z powrotem przenosi swój wzrok na ciebie.~ */
  IF ~~ THEN REPLY #18945 /* ~"Co mówi ten człowiek w ścianie?"~ */ GOTO 28
  IF ~~ THEN REPLY #18946 /* ~"Jak wygląda ten człowiek w ścianie?"~ */ GOTO 30
  IF ~~ THEN REPLY #18947 /* ~"Co to za ściana, w której on jest uwięziony?"~ */ GOTO 32
  IF ~~ THEN REPLY #18948 /* ~"W porządku. Mam do ciebie parę innych pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18949 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #18950 /* ~"Opowiada o miejscu z płaczącym kamieniem. Opowiada historie. Ja też opowiadać historie."~ */
  IF ~~ THEN REPLY #18951 /* ~"Historie o czym?"~ */ GOTO 29
  IF ~~ THEN REPLY #18952 /* ~"Mam do ciebie parę innych pytań dotyczącego tego człowieka w ścianie..."~ */ GOTO 27
  IF ~~ THEN REPLY #18953 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18954 /* ~"żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #18955 /* ~Mężczyzna spogląda na ścianę i milknie.~ */
  IF ~~ THEN REPLY #18956 /* ~"W takim razie w porządku. Możesz powtórzyć jeszcze raz, co mówiłeś o tym człowieku w ścianie?"~ */ GOTO 27
  IF ~~ THEN REPLY #18957 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18958 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY #18959 /* ~"Małe. Czerwone oczy. Owłosione."~ */
  IF ~~ THEN REPLY #18960 /* ~"Wygląda mi to na szczura."~ */ GOTO 31
  IF ~~ THEN REPLY #18961 /* ~"W porządku. Mam do ciebie parę innych pytań dotyczącego tego człowieka w ścianie..."~ */ GOTO 27
  IF ~~ THEN REPLY #18962 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18963 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 32.1
  SAY #18964 /* ~Mężczyzn kiwa potakująco głową.~ */
  IF ~~ THEN REPLY #18965 /* ~"W porządku. Mam do ciebie parę innych pytań dotyczącego tego człowieka w ścianie..."~ */ GOTO 27
  IF ~~ THEN REPLY #18966 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18967 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY #18968 /* ~Mężczyzna wskazuje na ścianę. Zauważasz w niej małą dziurę. Po bliższym przyjrzeniu się spostrzegasz, że dziura jest poszarpana, jakby została wygryziona przez szczura.~ */
  IF ~~ THEN REPLY #18969 /* ~"Wygląda jakby wygryzł ją szczur."~ */ GOTO 31
  IF ~~ THEN REPLY #18970 /* ~"Czy ten człowiek w ścianie jest szczurem?"~ */ GOTO 31
  IF ~~ THEN REPLY #18971 /* ~"Rozumiem... Mam do ciebie parę innych pytań dotyczącego tego człowieka w ścianie..."~ */ GOTO 27
  IF ~~ THEN REPLY #18972 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18973 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 12.3 35.0 36.0 37.0 38.1 39.0 40.3 41.3 42.3 43.2
  SAY #18974 /* ~"Kto?"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #18975 /* ~"Anna."~ */ GOTO 34
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18976 /* ~"Anna."~ */ GOTO 35
  IF ~~ THEN REPLY #18977 /* ~"Marta."~ */ GOTO 36
  IF ~~ THEN REPLY #18978 /* ~"Farod."~ */ GOTO 37
  IF ~~ THEN REPLY #18979 /* ~"Gris."~ */ GOTO 38
  IF ~~ THEN REPLY #18980 /* ~"Kwint."~ */ GOTO 39
  IF ~~ THEN REPLY #18981 /* ~"Zamiast tego mam do ciebie kilka innych pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18982 /* ~"Zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #18983 /* ~Mężczyzna spogląda z lękiem na Annę.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 109
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #18984 /* ~"Niedobra dziewczyna."~ */
  IF ~~ THEN REPLY #18985 /* ~"Dobrze. Opowiedz mi o innych."~ */ GOTO 33
  IF ~~ THEN REPLY #18986 /* ~"W porządku. Mam do ciebie kilka innych pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #18987 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.2
  SAY #18988 /* ~"Straszna wiedźma."~ */
  IF ~~ THEN REPLY #18989 /* ~"Dobrze. Opowiedz mi o innych."~ */ GOTO 33
  IF ~~ THEN REPLY #18990 /* ~"W porządku. Mam do ciebie kilka innych pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #18991 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.3
  SAY #18992 /* ~"Dziwny."~ */
  IF ~~ THEN REPLY #18993 /* ~"Dobrze. Opowiedz mi o innych."~ */ GOTO 33
  IF ~~ THEN REPLY #18994 /* ~"W porządku. Mam do ciebie kilka innych pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #18995 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.4
  SAY #18996 /* ~Nagle jego oczy zwężają się. "Nieżywy."~ */
  IF ~~ THEN REPLY #18997 /* ~"Skąd wiesz, że już nie żyje?"~ */ GOTO 40
  IF ~~ THEN REPLY #18998 /* ~"Dobrze. Opowiedz mi o innych."~ */ GOTO 33
  IF ~~ THEN REPLY #18999 /* ~"W porządku. Mam do ciebie kilka innych pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #19000 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.5
  SAY #19001 /* ~"Kwint."~ */
  IF ~~ THEN REPLY #19002 /* ~"Dobrze. Opowiedz mi o innych."~ */ GOTO 33
  IF ~~ THEN REPLY #19003 /* ~"W porządku. Mam do ciebie kilka innych pytań."~ */ GOTO 12
  IF ~~ THEN REPLY #19004 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0
  SAY #19005 /* ~"Człowiek w ścianie mi powiedział."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19006 /* ~"Opowiedz mi o człowieku w ścianie."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19007 /* ~"Opowiedz mi o człowieku w ścianie."~ */ GOTO 24
  IF ~~ THEN REPLY #19008 /* ~"Co ci powiedział?"~ */ GOTO 41
  IF ~~ THEN REPLY #19009 /* ~"Opowiedz mi o innych mieszkańcach wioski."~ */ GOTO 33
  IF ~~ THEN REPLY #19010 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #19011 /* ~"żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.2
  SAY #19012 /* ~"Gris nie żyje."~ */
  IF ~~ THEN REPLY #19013 /* ~"Gdzie jest Gris?"~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19014 /* ~"Opowiedz mi o człowieku w ścianie."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19015 /* ~"Opowiedz mi o człowieku w ścianie."~ */ GOTO 24
  IF ~~ THEN REPLY #19016 /* ~"Opowiedz mi o innych mieszkańcach wioski."~ */ GOTO 33
  IF ~~ THEN REPLY #19017 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #19038 /* ~"żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #19018 /* ~"W płaczącym miejscu."~ */
  IF ~~ THEN REPLY #19019 /* ~"Masz na myśli katakumby Łkających Kamieni?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19020 /* ~"Opowiedz mi o człowieku w ścianie."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19021 /* ~"Opowiedz mi o człowieku w ścianie."~ */ GOTO 24
  IF ~~ THEN REPLY #19022 /* ~"Opowiedz mi o innych mieszkańcach wioski."~ */ GOTO 33
  IF ~~ THEN REPLY #19023 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #19024 /* ~"żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19025 /* ~Mężczyzna potakuje głową.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19026 /* ~"Opowiedz mi o człowieku w ścianie."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19027 /* ~"Opowiedz mi o człowieku w ścianie."~ */ GOTO 24
  IF ~~ THEN REPLY #19028 /* ~"Opowiedz mi o innych mieszkańcach wioski."~ */ GOTO 33
  IF ~~ THEN REPLY #19029 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 12
  IF ~~ THEN REPLY #19030 /* ~"żegnaj."~ */ EXIT
END
