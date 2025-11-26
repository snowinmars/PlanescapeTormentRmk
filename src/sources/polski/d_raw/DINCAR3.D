// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR3~

IF ~  Global("Good_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52688 /* ~"Obudził się."~ */
  IF ~~ THEN DO ~SetGlobal("Good_Incarnation","GLOBAL",1)
~ EXTERN ~DINCAR1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63861 /* ~"Wy dwaj, uciszcie się! Upewnijmy się czy z nim wszystko w porządku, a dyskusję zostawmy na później."~ */
  IF ~~ THEN REPLY #63862 /* ~"K... kim wy wszyscy jesteście?"~ */ EXTERN ~DINCAR1~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63863 /* ~"Uspokój się. Jest tylko zdezorientowany, jak my wszyscy. Daj mu chwilę, niech pozbiera myśli."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63864 /* ~"Ta kłótnia do niczego nie prowadzi! Zróbcie mu miejsce, zostawcie go w spokoju."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 4
END

IF ~  Global("Good_Incarnation","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #63865 /* ~Mężczyzna jest podobny do ciebie, ale jego twarz wydaje się w jakiś sposób... spokojniejsza. Gdy podchodzisz, uśmiecha się lekko i kiwa głową, jakby z aprobatą. "Wszystko w porządku?"~ */
  IF ~~ THEN REPLY #63866 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Good_Incarnation","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #63867 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 8.0
  SAY #63868 /* ~"Czy *kiedykolwiek* mieliśmy imię? A może miał je tylko ten pierwszy?" Chichocze cicho. "Wiedz, że jestem twoim sprzymierzeńcem - ja, tak jak pozostali, umarłem w twym umyśle, a to co widzisz przed sobą, to wszystko co pozostało."~ */
  IF ~~ THEN REPLY #63869 /* ~"Ale kim *jesteś*?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #63870 /* ~"Ach..." Jego uśmiech znika, przygląda ci się zatroskany. "Musisz czuć się zdezorientowany. Spróbuję ci wyjaśnić - jestem jednym z twoich wcieleń. Kiedyś zginąłem, teraz znów tu jestem."~ */
  IF ~~ THEN REPLY #63871 /* ~"Jak to możliwe?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63872 /* ~"Nie wiem. To, czego dotknąłeś w Fortecy, przywołało kawałki ciebie na powierzchnię." Na chwilę przerywa, zastanawia się. "Może jeden z pozostałych będzie wiedział, jak do tego doszło - ale ja nie."~ */
  IF ~~ THEN REPLY #63873 /* ~"Jeśli jesteś częścią mnie, chciałbym wiedzieć kilka rzeczy."~ */ GOTO 9
  IF ~~ THEN REPLY #63874 /* ~"Muszę to przemyśleć - jeszcze z tobą porozmawiam."~ */ EXIT
END

IF ~  Global("Good_Incarnation","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #63875 /* ~Gdy podchodzisz, uśmiecha się, jego głos odbija się lekkim echem. "Tak?"~ */
  IF ~~ THEN REPLY #63876 /* ~"Kim jesteś?"~ */ GOTO 5
  IF ~~ THEN REPLY #63877 /* ~"Skoro jesteś cząstką mnie, chciałbym wiedzieć kilka rzeczy."~ */ GOTO 9
  IF ~~ THEN REPLY #63878 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.1 10.1 11.1 12.1 13.0 14.1 15.0 16.0 17.1 18.1 19.0 20.0 29.2
  SAY #63879 /* ~"Pytaj."~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63880 /* ~"Żeby stąd wyjść, musisz znów stać się częścią mnie. Zrobisz to?"~ */ GOTO 21
  IF ~  Global("Know_Traces","GLOBAL",1)
~ THEN REPLY #63881 /* ~"Powiedziałeś przedtem, że kiedy umieramy, w umyśle pozostają ślady. To dlatego wszyscy się pojawiliście, prawda?"~ */ GOTO 29
  IF ~~ THEN REPLY #63882 /* ~"Żyłem niezliczoną ilość razy. Dlaczego tutaj są tylko trzy wcielenia?"~ */ GOTO 10
  IF ~~ THEN REPLY #63883 /* ~"Czy wiesz, dlaczego chciałem stać się nieśmiertelny?"~ */ GOTO 14
  IF ~~ THEN REPLY #63884 /* ~"Jakie było twoje życie?"~ */ GOTO 17
  IF ~~ THEN REPLY #63885 /* ~"Przyszedłem do tej Fortecy razem z towarzyszami... ale zostaliśmy rozdzieleni."~ */ GOTO 16
  IF ~~ THEN REPLY #63886 /* ~"Jak mogę się stąd wydostać?"~ */ GOTO 20
  IF ~~ THEN REPLY #63887 /* ~"Nie mam już więcej pytań - może porozmawiamy później."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #63888 /* ~"Nie wiem. Może jesteśmy tymi trzema, którzy są wciąż obecni w twym umyśle."~ */
  IF ~~ THEN REPLY #63889 /* ~"Obecni? W jaki sposób?"~ */ DO ~SetGlobal("Know_Traces","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #63890 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63891 /* ~"Muszę to przemyśleć - jeszcze z tobą porozmawiam."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63892 /* ~"Nie jestem pewien, ale sądzę, że gdy umieramy, w naszym umyśle mogą pozostać ślady poprzedniej osobowości - i wiem, że czasami możemy być odczuwalni."~ */
  IF ~~ THEN REPLY #63893 /* ~"Jak?"~ */ GOTO 12
  IF ~~ THEN REPLY #63894 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63895 /* ~"Muszę to przemyśleć - jeszcze z tobą porozmawiam."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 29.1
  SAY #63896 /* ~"Odkryłem, że kiedy masz znaleźć się w niebezpieczeństwie, albo jesteś bliski uświadomienia sobie czegoś, mogę wywołać poruszenie, pomóc ci znaleźć właściwy kierunek."~ */
  IF ~~ THEN REPLY #63897 /* ~"Więc to *ty* byłeś tym mrowieniem, które wciąż czułem z tyłu głowy?"~ */ GOTO 13
  IF ~~ THEN REPLY #63898 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63899 /* ~"Muszę to przemyśleć - jeszcze z tobą porozmawiam."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63900 /* ~"Nie umiem opisać jak to czułeś, ale to możliwe."~ */
  IF ~~ THEN REPLY #63901 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63902 /* ~"Muszę to przemyśleć - jeszcze z tobą porozmawiam."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63903 /* ~"Nie, nie wiem. Myślę, że ze strachu. Może jeden z pozostałych będzie wiedział, ale nie ja."~ */
  IF ~~ THEN REPLY #63904 /* ~"Dlaczego sądzisz, że ze strachu?"~ */ GOTO 15
  IF ~~ THEN REPLY #63905 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63906 /* ~"Muszę to przemyśleć - jeszcze z tobą porozmawiam."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63907 /* ~Mężczyzna lekko się uśmiecha, ale nie wygląda na rozbawionego; w tym uśmiechu jest raczej smutek. "Który człowiek pragnie umrzeć?" Wolno potrząsa głową. "Ale tylko pierwszy z nas naprawdę wie, dlaczego jesteśmy w tym stanie."~ */
  IF ~~ THEN REPLY #63908 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63909 /* ~"Muszę to przemyśleć - jeszcze z tobą porozmawiam."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63910 /* ~"Więc obawiam się, że twoi przyjaciele są już martwi." Wygląda na zbolałego. "To miejsce nienawidzi żyjących."~ */
  IF ~~ THEN REPLY #63911 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63912 /* ~"Muszę to przemyśleć - jeszcze z tobą porozmawiam."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY #63913 /* ~"Było spokojne, długie i pełne bólu i radości, których można spodziewać się w życiu. Przez jakiś czas byłem kartografem i przez wiele lat podróżowałem po Sferach."~ */
  IF ~~ THEN REPLY #63914 /* ~"W jaki sposób umarłeś?"~ */ GOTO 18
  IF ~~ THEN REPLY #63915 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63916 /* ~"Dobrze. Porozmawiamy później."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #63917 /* ~"W końcu, gdy podróżowałem nad polami Dwutopii, straszliwe cienie wzięły moje życie, gdy spałem. Umarłem, czując na sobie ich pazury."~ */
  IF ~~ THEN REPLY #63918 /* ~"To cienie tych, którzy umarli zamiast nas."~ */ GOTO 19
  IF ~~ THEN REPLY #63919 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63920 /* ~"Dobrze. Porozmawiamy później."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63921 /* ~Wygląda na przepełnionego bólem. "Tak, wiem... Teraz już to wiem. Nie można być w tym miejscu żalu i nie czuć ich agonii."~ */
  IF ~~ THEN REPLY #63922 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63923 /* ~"Dobrze. Porozmawiamy później."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.6
  SAY #63924 /* ~"Nie wiem - nigdy wcześniej tutaj nie byłem. Jeden z pozostałych może wiedzieć jak się stąd wydostać, ale nie ja."~ */
  IF ~~ THEN REPLY #63925 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63926 /* ~"Dobrze. Porozmawiamy później."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.0
  SAY #63927 /* ~"Podejrzewałem, że nie dane nam było tak żyć i że ta sytuacja jest tak nienaturalnie złożona, jak nienaturalna jest nasza nieśmiertelność." Kiwa głową. "Tak, połączę się z tobą ponownie."~ */
  IF ~~ THEN REPLY #63928 /* ~"Wiesz, że przestaniesz istnieć?"~ */ GOTO 22
  IF ~~ THEN REPLY #63929 /* ~"Dobrze."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #63930 /* ~Przytakuje. "Tak, wiem."~ */
  IF ~~ THEN REPLY #63931 /* ~"Dobrze."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 36.0
  SAY #63932 /* ~"Jeszcze jedna rzecz... tylko to..." Wcielenie przerywa na chwilę, patrząc na twoje rysy. "Zanim powrócę w niepamięć - chciałbym się czegoś dowiedzieć."~ */
  IF ~~ THEN REPLY #63933 /* ~"Mogę poświęcić ci trochę czasu. Co chcesz wiedzieć?"~ */ GOTO 24
  IF ~~ THEN REPLY #63934 /* ~"Nie mam na to czasu. Jeśli naprawdę chcesz mi pomóc, musisz mi się poddać."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63935 /* ~Przygląda się twoim oczom, jego twarz staje się posępna. "Czy *przeżyłeś* swoje życie - to krótkie życie, które było ci dane? W końcu... czy było warto?"~ */
  IF ~~ THEN REPLY #63936 /* ~"Nie. Odrodziłem się w okropnym miejscu i żałuję, że żyję."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63937 /* ~"Wydaje się, że było takie... krótkie. Nie chcę zapomnieć tych kilku rzeczy, których doświadczyłem i którymi mogłem się cieszyć."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63938 /* ~"Zbyt dużo podróżowałem, by się nim nacieszyć. Może mi się uda, gdy to wszystko się skończy."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63939 /* ~"Twoje pytanie nie ma znaczenia. Chciałbym już odejść."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63940 /* ~"To życie przyniosło tylko cierpienie, mnie samemu i innym. Chciałbym, żeby się skończyło, by w Sferach ponownie zapanował spokój."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 24.1 24.2 24.3 24.4
  SAY #63941 /* ~Przytakuje i przez chwilę wydaje ci się, że chce coś powiedzieć, ale nagle pada, a jego życie przechodzi w ciebie. Gdy jego ciało dotyka czarnych kamieni, czujesz mrowienie z tyłu głowy, które sprawia, że drżysz. Wiesz, że to wcielenie przestało istnieć.~ */
  IF ~~ THEN REPLY #63942 /* ~"Żegnaj..."~ */ DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
SetGlobal("Absorb_Good_Incarnation","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63943 /* ~Trzecie wcielenie mówi łagodnym, choć naznaczonym bólem głosem. "Dlaczego zrobiłeś tak straszną rzecz?"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 32
END

IF ~~ THEN BEGIN 27 // from:
  SAY #63944 /* ~Trzecie wcielenie przerywa. "Może nie ma na to odpowiedzi. Może nigdy nie było."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 73
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63945 /* ~Trzecie wcielenie przerywa. "Może nie ma na to odpowiedzi. Może nigdy nie było."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 74
END

IF ~~ THEN BEGIN 29 // from: 9.1
  SAY #63946 /* ~"Może nie rozumiem tego do końca, ale tak, wydaje się, że o to chodzi. I w pewien niewielki sposób możemy być odczuwalni."~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #63947 /* ~"Więc możliwe jest, że pierwszy z nas - ten prawdziwy, który był przed wszystkimi wcieleniami, może wciąż znajdować się w moim umyśle?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 30
  IF ~~ THEN REPLY #63948 /* ~"Niby jak?"~ */ GOTO 12
  IF ~~ THEN REPLY #63949 /* ~"Chciałbym wiedzieć coś jeszcze."~ */ GOTO 9
  IF ~~ THEN REPLY #63950 /* ~"Dobrze. Porozmawiamy później."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #63951 /* ~Wyraz jego twarzy zmienia się tylko na chwilę, ale nagle zdajesz sobie sprawę z kim rozmawiasz.~ */
  IF ~~ THEN REPLY #63952 /* ~"*Ty* byłeś pierwszym z nas."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63953 /* ~Patrzy udręczonym wzrokiem, a potem odwraca się od ciebie. "Wiem, o czym myślisz... Sądzisz, że poznanie umysłu pierwszego z nas w jakiś sposób pomoże ci w tym miejscu. Ale tak nie jest."~ */
  IF ~~ THEN REPLY #63954 /* ~"Ale dlaczego - mam tyle pytań, na które TY możesz odpowiedzieć. Dlaczego staliśmy się nieśmiertelni? Dlaczego?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #63955 /* ~"Ponieważ jeżeli umrzemy, *naprawdę* umrzemy..." Spogląda na ciebie stalowym spojrzeniem. "...królestwo śmierci *nie* będzie rajem, nie dla nas. Jeśli rozmawiałeś z pozostałymi, którzy tu są, wiedz, że zło, które jest w nich, jest tylko kroplą wody w porównaniu ze złem, które jest we mnie. To życie, to jedno życie, nawet *bez* tysięcy innych, zapewniło mi wieczne miejsce w Niższych Sferach."~ */
  IF ~~ THEN REPLY #63956 /* ~"Ale wydajesz się taki... spokojny. Lepiej nastawiony."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63957 /* ~"Tak, taki się stałem. Bo dla mnie..." W jego głosie pojawia się dziwne echo. "...to *żal* może zmienić naturę człowieka." Wzdycha. "Ale było już za późno. Byłem już przeklęty."~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #63958 /* ~"Odkryłem, że zmiana natury nie wystarczy. Potrzebowałem więcej czasu i więcej życia. Więc poszedłem do największej z Szarych Sióstr i poprosiłem ją o przysługę - chciałem, by pomogła mi żyć wystarczająco długo, bym mógł naprawić całe zło, które wyrządziłem. By sprawiła, żebym stał się nieśmiertelny."~ */
  IF ~~ THEN REPLY #63959 /* ~"I Ravela uczyniła to. Ale kiedy zabiła cię, by po raz pierwszy sprawdzić twą nieśmiertelność, wszystko zapomniałeś. *Wszystko*."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #63960 /* ~Wygląda na załamanego. "I odtąd Sfery umierają. Wielka to zbrodnia, a wina leży po mojej stronie."~ */
  IF ~~ THEN REPLY #63961 /* ~"Mam tak wiele pytań - kim jesteś, jakie było twoje *życie*? Kto..."~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63962 /* ~Wcielenie potrząsa głową, przerywając ci. "Kiedy przestanę istnieć, kiedy się z tobą połączę, znajdziesz wszystkie odpowiedzi. Poukładanie ich może zająć trochę czasu, ale będą w tobie." Uśmiecha się ze smutkiem. "Trudno słowami przekazać życie."~ */
  IF ~~ THEN REPLY #63963 /* ~"Dobrze, więc... staniemy się jednością. Jesteś gotów?"~ */ DO ~SetGlobal("Absorb_Real_Incarnation","GLOBAL",1)
~ GOTO 23
END
