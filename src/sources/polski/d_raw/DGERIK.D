// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGERIK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGERIK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58157 /* ~Widzisz przed sobą chłopaka z twarzą szczura. Kiedy się do niego zbliżasz, spogląda na ciebie uważnie, jakby oceniał każdy twój ruch.~ */
  IF ~~ THEN REPLY #58158 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #58159 /* ~Nie zwracaj na niego uwagi.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58160 /* ~Chłopak pociera brodę i uważnie ci się przygląda. Masz wrażenie, jakby cię ważył na wadze. "Tak... witaj, śmiałku. Witaj w naszym domu. Czego chcesz od Gerika?"~ */
  IF ~~ THEN REPLY #58161 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58162 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 6.0 9.0 12.0
  SAY #58163 /* ~"Pytaj... pytaj..." Chłopak uśmiecha się do ciebie.~ */
  IF ~~ THEN REPLY #58164 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #58165 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 8
  IF ~~ THEN REPLY #58166 /* ~"Szukam devy. Nie wiesz, gdzie go można znaleźć?"~ */ GOTO 10
  IF ~~ THEN REPLY #58167 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58168 /* ~"Jesteśmy Gerik. Mówiliśmy ci to już... nieprawdaż?" Chłopak podnosi brwi.~ */
  IF ~~ THEN REPLY #58169 /* ~"Dlaczego mówisz o sobie *my*?"~ */ GOTO 4
  IF ~~ THEN REPLY #58170 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58171 /* ~"Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0
  SAY #58172 /* ~Chłopak marszczy czoło. "Bo jest nas więcej niż jeden..." Spogląda na lewo, potem na prawo, a w końcu przenosi swój wzrok na ciebie. "Nie widzisz nas?" Wskazuje obok siebie.~ */
  IF ~~ THEN REPLY #58173 /* ~"Tak, teraz widzę was wszystkich. Mam do was parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58174 /* ~"Ee... Nie, oprócz ciebie nie ma tu nikogo."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58175 /* ~Chłopak marszczy czoło, a potem przechyla się najpierw w prawo, a potem w lewo, szepcząc coś do niewidzialnego towarzysza. Po chwili znowu przenosi wzrok na ciebie. "Nie możemy pojąć, dlaczego tak jest. Może jesteś chory. Może będziemy mogli ci pomóc." Na jego twarzy pojawia się uśmiech.~ */
  IF ~~ THEN REPLY #58176 /* ~"Ach... tam są. Przepraszam, nie zauważyłem twoich towarzyszy. Teraz ich już widzę."~ */ GOTO 6
  IF ~~ THEN REPLY #58177 /* ~"To chyba ty potrzebujesz pomocy."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58178 /* ~Chłopak uśmiecha się i kiwa głową. "Dobrze... dobrze... wszystko jest w porządku, a my jesteśmy zadowoleni. Masz jeszcze jakieś pytania?"~ */
  IF ~~ THEN REPLY #58179 /* ~"Tak."~ */ GOTO 2
  IF ~~ THEN REPLY #58180 /* ~"Nie, muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #58181 /* ~Chłopak głęboko marszczy czoło. "To nas niepokoi... powinieneś odejść, musimy mieć czas, żeby się zastanowić..." Potem przestaje zwracać na ciebie uwagę.~ */
  IF ~~ THEN REPLY #58182 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #58183 /* ~Chłopak spogląda wkoło, a potem zaczyna wpatrywać się w dal. "To jest nasz letni dom... tu się nam podoba. Odgłos fal działa na nas kojąco."~ */
  IF ~~ THEN REPLY #58184 /* ~"Dlaczego mówisz o sobie *my*?"~ */ GOTO 4
  IF ~~ THEN REPLY #58185 /* ~"Fale? O jakich falach mówisz?"~ */ GOTO 9
  IF ~~ THEN REPLY #58186 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #58187 /* ~"Jakich falach?" Chłopak zaczyna się denerwować i wskazuje na odległy punkt przez ścianę. "Tych falach! Uwielbiamy ocean... morska bryza jest bardzo odświeżająca."~ */
  IF ~~ THEN REPLY #58188 /* ~"Ro... rozumiem. Tak, bardzo ładne. Mam jeszcze parę pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58189 /* ~"Uch... No cóż, nie służy mi słone powietrze. Muszę już iść. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #58190 /* ~Jego oczy się powiększają, a on sam kiwa głową. Spogląda na lewo, a potem na prawo i zaczyna rozmawiać z jakimś niewidzialnym towarzyszem. Po chwili przenosi wzrok na ciebie. "Tak... widzieliśmy devę. Był bardzo piękny..."~ */
  IF ~~ THEN REPLY #58191 /* ~"Gdzie mogę go znaleźć?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58192 /* ~Wygląda na to, że chłopak jest zmieszany. "Nie wiemy... straciliśmy go." Jego wzrok wpatruje się gdzieś w dal. "Straciliśmy go... straciliśmy..." Po chwili jego głos milknie. Wpatrując się ślepo w mur, chłopak nie zwraca uwagi na twoje próby nawiązania rozmowy.~ */
  IF ~~ THEN REPLY #58193 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #58194 /* ~Widzisz przed sobą Gerika. Wydaje się być pogrążony w swoim własnym świecie. W końcu dostrzega cię, gdy się do niego zbliżasz. "Pamiętamy cię... czego chcesz od Gerika?"~ */
  IF ~~ THEN REPLY #58195 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #58196 /* ~"Nic, żegnaj."~ */ EXIT
END
