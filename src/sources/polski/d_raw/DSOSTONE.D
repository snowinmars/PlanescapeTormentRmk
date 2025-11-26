// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOSTONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOSTONE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #64887 /* ~Ten czarny kamień pokrywa gruba warstwa kurzu, jak gdyby spoczywał w tym miejscu przez całe lata. Sprawia wrażenie wykruszonego fragmentu jednego z posągów. Na jego powierzchni widnieją ciągi znaków runicznych i innych symboli. Wydają ci się osobliwie znajome.~ */
  IF ~~ THEN REPLY #64888 /* ~Przyjrzyj się kamieniowi...~ */ GOTO 1
  IF ~~ THEN REPLY #64889 /* ~Odłóż kamień na miejsce.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64890 /* ~Kiedy dotykasz kamienia, na jego powierzchni kształtują się usta i zaczynają przemawiać twoim własnym głosem. Głos ten odbija się, jakby przemawiający znajdował się w środku ogromnej komnaty.~ */
  IF ~~ THEN REPLY #64914 /* ~Słuchaj...~ */ GOTO 2
  IF ~~ THEN REPLY #64915 /* ~Puść kamień. Niechaj ucichnie.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64891 /* ~"Dak'konie, Morte, Zachariaszu, Deionarro - to ja. Dzięki niewielkiemu zaklęciu komunikacyjnemu, umieściłem w tym kamieniu wiadomość dla was. Słuchajcie tedy pilnie, a potem zróbcie, co wam nakazuję."~ */
  IF ~~ THEN REPLY #64912 /* ~Słuchaj dalej.~ */ GOTO 3
  IF ~~ THEN REPLY #64913 /* ~Pozwól, niechaj kamień ucichnie.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64892 /* ~Głos nabiera tchu, po czym odzywa się ponownie. Dźwięczy w nim nuta irytacji. "Nie mam pojęcia, jak to się stało, że jesteśmy w różnych miejscach, ale podejrzewam, że to portal, którym tu przybyliśmy, nas rozdzielił. To tylko mała niedogodność - kiedy znajdziecie ten kamień, pozostańcie przy nim i poczekajcie, aż do was dołączę. Zgodnie z moimi przeczuciami, ta Forteca mogłaby pomieścić w swoim wnętrzu kilka miast. Dlatego im mniej będziecie wędrować po okolicy, tym łatwiej będę was mógł odnaleźć."~ */
  IF ~~ THEN REPLY #64910 /* ~Słuchaj dalej.~ */ GOTO 4
  IF ~~ THEN REPLY #64911 /* ~Pozwól, niechaj kamień ucichnie.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64893 /* ~Mówiący znów zaczerpuje powietrza, a potem odzywa się ponownie, ale już nieco innym tonem. Głos brzmi, jakby mówiący równocześnie przyglądał się czemuś i komentował to. "Udało mi się wywalczyć sobie drogę przez pierwszą z krypt. To miejsce zamieszkują mordercze cienie. Jest ich stanowczo zbyt wiele, aby je wszystkie pokonać. Dlatego, jeżeli traficie na któregoś z nich, uciekajcie, zanim zdążą was otoczyć. Te cienie są znacznie silniejsze niż te, które spotykaliśmy wcześniej. Mam wrażenie, że energia tej Sfery w jakiś sposób je karmi i wzmacnia."~ */
  IF ~~ THEN REPLY #64908 /* ~Słuchaj dalej.~ */ GOTO 5
  IF ~~ THEN REPLY #64909 /* ~Pozwól, niechaj kamień ucichnie.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64894 /* ~Głos znowu nabiera tchu, a potem odzywa się ponownie: "W tej krypcie znajduje się kilka wielkich reliktów z czasów wojny, które przenosiły mnie z miejsca na miejsce. Zwabiałem cienie w pobliże jednej z machin, a potem przenosiłem się w inne miejsce. Zyskałem tym nieco czasu, który wystarczył mi do ucieczki. Kiedy użyłem czterech reliktów, otworzył się portal na zewnątrz." Głos przerywa, jakby mówiącemu właśnie coś przyszło na myśl.~ */
  IF ~~ THEN REPLY #64906 /* ~Słuchaj dalej.~ */ DO ~SetGlobal("Freed_Fortress_Shadows","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #64907 /* ~Pozwól, niechaj kamień ucichnie.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64895 /* ~"Uderzyła mnie myśl, że krypta, z której przybyłem, była czymś w rodzaju strażnicy, a machiny odgradzają ją zarówno od części wewnętrznej Fortecy, jak i od zewnętrznej. Jakakolwiek siła wzniosła tę Fortecę, musiała celowo umieścić w jej wnętrzu armię cieni. Albowiem cienie te, nie posiadając materii, nie mogą skorzystać z machin aby wydostać się poza kryptę. Hmmm. Będę się musiał nad tym jeszcze zastanowić..."~ */
  IF ~~ THEN REPLY #64904 /* ~Słuchaj dalej.~ */ GOTO 7
  IF ~~ THEN REPLY #64905 /* ~Pozwól, niechaj kamień ucichnie.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64896 /* ~"Nieważne. Jestem teraz w komnacie, w której znajduje się ogromny kryształ i zanim ruszę dalej, zamierzam przyjrzeć mu się dokładnie." Głos milknie, jak gdyby mówiący rozglądał się dookoła. "W komnacie znajduje się też pięć posągów. Każdy z nich posiada moje rysy. Posągi wyglądają na bardzo *stare*, jakby stały tutaj od wielu lat."~ */
  IF ~~ THEN REPLY #64902 /* ~Słuchaj dalej.~ */ GOTO 8
  IF ~~ THEN REPLY #64903 /* ~Pozwól, niechaj kamień ucichnie.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64897 /* ~"Jeśli chodzi o kryształ... wiele wskazuje na to, że nie jest on częścią Fortecy. Jego rozmiary i kształt przywodzą mi na myśl coś, o czym czytałem w starożytnych kronikach. Było to więzienie położone w innym wymiarze, mające zdolność rozdzielania duszy. Mam wrażenie, że nie przez przypadek zostałem przeniesiony właśnie tutaj. Wydaje mi się, że kryształ to pułapka, dlatego *nie* próbujcie go dotykać, zanim się ponownie nie zejdziemy... I to nie jest prośba, ale *rozkaz*, Morte."~ */
  IF ~~ THEN REPLY #64900 /* ~Słuchaj dalej.~ */ GOTO 9
  IF ~~ THEN REPLY #64901 /* ~Pozwól, niechaj kamień ucichnie.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64898 /* ~"Teraz będę próbował odnaleźć was wszystkich. Jeśli traficie na ten zaklęty kamień, *nie* ruszajcie się z tego miejsca, bo inaczej nigdy was nie znajdę. U stóp jednego z posągów zostawiłem nieco zapasów. Nie zmarnujcie ich, gdyż nie wiem, ile czasu zabierze nam odnalezienie naszego wroga i wydostanie się poza to miejsce. Mogą być nam potrzebne później. Zobaczymy się wkrótce."~ */
  IF ~~ THEN REPLY #64899 /* ~Poczkaj, aż kamień zamilknie.~ */ EXIT
END
