// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCON~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #60874 /* ~Widzisz mechanicznego mężczyznę. Jego jedno ramię pokryte jest skórą w kolorze zgniło-żółtym. Mimo, że jest konstruktem, jego twarz jest bardzo ożywiona, i krzywi się na twój widok.~ */
  IF ~~ THEN REPLY #60875 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #60876 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60877 /* ~W miarę jak patrzy na ciebie, jego mechanizm hałaśliwie zwęża mu oczy. Nagle uderza się obiema rękami w pierś i podskakuje kilka razy, powodując potężne dzwonienie w pudle. W końcu się uspakaja i łypie na ciebie. "Uuuuk!"~ */
  IF ~~ THEN REPLY #60878 /* ~"Jaki miał być tego cel?"~ */ GOTO 2
  IF ~~ THEN REPLY #60879 /* ~"Kim jesteś?"~ */ GOTO 5
  IF ~~ THEN REPLY #60880 /* ~"Czym jesteś?"~ */ GOTO 6
  IF ~~ THEN REPLY #60881 /* ~"Co robisz?"~ */ GOTO 7
  IF ~~ THEN REPLY #60882 /* ~"Nie mam na to naprawdę czasu. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60883 /* ~Prostując się i drapiąc po głowie, patrzy na ciebie zmieszany. "To miało wywołać reakcję strachu. Udało się?"~ */
  IF ~~ THEN REPLY #60884 /* ~"Niezupełnie."~ */ GOTO 3
  IF ~~ THEN REPLY #60885 /* ~"Tak, to było genialne."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #60886 /* ~Wzdycha i odwraca na chwilę wzrok. "Przykro mi to słyszeć. Miałem nadzieję, że uda mi się zwiększyć na tyle moją przeciętną długość życia, żeby zarobić na tobie parę punktów. No cóż..." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60887 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #60888 /* ~Uśmiecha się i potakuje głową. "Znakomicie. Zapamiętam to jako wykonywalną technikę na przyszły użytek." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60889 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #60890 /* ~"Jestem twoim śmiertelnym wrogiem." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60891 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2
  SAY #60892 /* ~"Jestem konstruktem średnio zbrojnym. Obecnie posiadam: przeciętną umiejętność walki, przeciętną inteligencję, i średnią umiejętność posługiwania się bronią, którą mogę sobie wybrać." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60893 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #60894 /* ~"Oceniam cię teraz, żeby określić twoje słabe punkty." Konstrukt przerywa. "Ukończyłem ocenianie i zamierzam przypuścić bezlitosny atak." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60895 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4
  SAY #60896 /* ~"Najpierw śmiesz zwracać na siebie moją uwagę, a teraz tak po prostu, chcesz mnie odprawić? Nie sądzę!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #60897 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #60898 /* ~Widzisz mechanicznego mężczyznę. Jego jedno ramię pokryte jest skórą w kolorze zgniło-żółtym. Mimo, że jest konstruktem, jego twarz jest bardzo ożywiona, i krzywi się na twój widok.~ */
  IF ~~ THEN REPLY #60899 /* ~"Witaj."~ */ GOTO 10
  IF ~~ THEN REPLY #60900 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60901 /* ~Patrzy na ciebie z przesadną drwiną i zaczyna ci się uważnie przyglądać. W końcu warczy jednostajnym śmiechem. "To najlepsze, co mogli przysłać? Żal mi tych głupców." Nie przestaje drwić z ciebie.~ */
  IF ~~ THEN REPLY #60903 /* ~"Najlepsze, co kto mógł przysłać?"~ */ GOTO 11
  IF ~~ THEN REPLY #60904 /* ~"Kim jesteś?"~ */ GOTO 12
  IF ~~ THEN REPLY #60905 /* ~"Czym jesteś?"~ */ GOTO 13
  IF ~~ THEN REPLY #60906 /* ~"Co robisz?"~ */ GOTO 14
  IF ~~ THEN REPLY #60907 /* ~"Muszę już iść. Żegnaj."~ */ GOTO 15
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #60908 /* ~Odrzuca do tyłu głowę i śmieje się. "Cha, Cha! Twoje żałosne wysiłki ci nie pomogą. Wiedz, że twój los jest już przesądzony, ty głupcze!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #60909 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #60910 /* ~"Nie mam tożsamości, jestem jeszcze jednym bezimiennym mięsem armatnim postawionym na drodze, by ci przeszkodzić w zbadaniu tych gmachów." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60911 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #60912 /* ~Przerywa na chwilę, żeby się podrapać po głowie. "Jestem potworem, który będzie bił cię dotkliwie dotąd, aż umrzesz... chyba że, oczywiście, wcześniej ty zabijesz mnie." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60915 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #60916 /* ~"Przybieram postawę śmiałości i wyższości w celu wywołania w tobie poczucia nieudolności. Jeśli mi się to uda, zapewni mi to zwycięstwo w walce, którą teraz zainicjuję." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60917 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #60918 /* ~"Ha! Wydaje ci się, że zachowując się nonszalancko i próbując mnie odprawić, uda ci się uniknąć mego gniewu? O nie, głupcze!" Skacze do ataku.~ */
  IF ~~ THEN REPLY #60919 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 16 // from:
  SAY #60920 /* ~Widzisz mechanicznego mężczyznę. Jego jedno ramię pokryte jest skórą w kolorze zgniło-żółtym. Mimo, że jest konstruktem, jego twarz jest bardzo ożywiona, i krzywi się na twój widok.~ */
  IF ~~ THEN REPLY #60921 /* ~"Witaj."~ */ GOTO 17
  IF ~~ THEN REPLY #60922 /* ~Zignoruj stwora.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60923 /* ~"Witaj i ty!" Patrzy na ciebie bez wyrazu.~ */
  IF ~~ THEN REPLY #60924 /* ~"Kim jesteś?"~ */ GOTO 18
  IF ~~ THEN REPLY #60926 /* ~"Czym jesteś?"~ */ GOTO 19
  IF ~~ THEN REPLY #60927 /* ~"Co robisz?"~ */ GOTO 20
  IF ~~ THEN REPLY #60928 /* ~"Muszę już iść, żegnaj."~ */ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60929 /* ~Przerywa, żeby się zastanowić, po czym wzrusza ramionami. "Nie mam pojęcia." Marszczy brwi. "Nie jestem pewien, czy kiedykolwiek wiedziałem kim jestem. Czuję, że moja tożsamość, sam sens mojego istnienia był w jakiś sposób mało znaczący. Czuję się zagubiony... sam... czuję, że muszę... wyładować na kimś lub na czymś moje frustracje..." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60930 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #60931 /* ~Marszczy brwi. "Czuję, że jestem tylko pionkiem w jakiejś okrutnej grze. Nie mam tożsamości, życia, a teraz ty zjawiasz się i zaczynasz mnie irytować swoimi bezsensownymi pytaniami. Nienawidzę życia, nienawidzę ciebie." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60932 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY #60933 /* ~Patrzy na ciebie z pogardą. "Czekam, aż skończymy to wzajemne przekomarzanie, a wtedy będę mógł cię pobić do nieprzytomności." Rzuca ci spojrzenie pełne nienawiści.~ */
  IF ~~ THEN REPLY #60934 /* ~"Dlaczego chcesz to zrobić?"~ */ GOTO 21
  IF ~~ THEN REPLY #60935 /* ~Zaatakuj stwora.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60937 /* ~Wzrusza ramionami. "Mój twórca nie przewidział innych opcji. W momencie, kiedy skończę mówić to zdanie, zostanie zainicjowana walka z tobą." Skacze do ataku.~ */
  IF ~~ THEN REPLY #60938 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.3
  SAY #60939 /* ~"Żegnaj i ty. Nim jednak odejdziesz, pozwól mi proszę, wyładować na tobie moje frustracje, które zostały wywołane twoją obecnością tutaj."~ */
  IF ~~ THEN REPLY #60941 /* ~Broń się.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
END
