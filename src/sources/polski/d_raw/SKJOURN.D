// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKJOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~SKJOURN~

IF ~  Global("Maze_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #60402 /* ~Okazuje się, że jest to coś w rodzaju dziennika. Na konstrukcji z kości rozciągnięto płaty wysuszonej ludzkiej skóry. Co dziwniejsze, wygląda na to, że skóra zabliźniła się przy szwach, tworząc grzbiet prowizorycznej książki. Zewnętrzne płaty skóry tworzą okładkę dla innych płatów skóry zamkniętych wewnątrz konstrukcji z kości.~ */
  IF ~~ THEN REPLY #60403 /* ~Zbadaj zewnętrzną część.~ */ GOTO 1
  IF ~~ THEN REPLY #61187 /* ~Zbadaj skórę.~ */ GOTO 2
  IF ~~ THEN REPLY #61188 /* ~Zbadaj konstrukcję z kości.~ */ GOTO 3
  IF ~~ THEN REPLY #61189 /* ~Otwórz konstrukcję z kości.~ */ GOTO 4
  IF ~~ THEN REPLY #61190 /* ~Zostaw dziwny dziennik w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 3.0
  SAY #61191 /* ~Na zewnętrznej stronie płatów skóry krwią zapisano serię symboli, ale nie możesz ich zrozumieć; jest to chyba jakiś rodzaj pisma, ale wydaje się, że napisane są do góry nogami, z prawej strony do lewej i pod tak dziwacznym kątem, że bolą cię oczy.~ */
  IF ~~ THEN REPLY #61192 /* ~Zbadaj skórę.~ */ GOTO 2
  IF ~~ THEN REPLY #61193 /* ~Zbadaj konstrukcję z kości.~ */ GOTO 3
  IF ~~ THEN REPLY #61194 /* ~Otwórz konstrukcję z kości.~ */ GOTO 4
  IF ~~ THEN REPLY #61195 /* ~Zostaw dziwny dziennik w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 3.1
  SAY #61196 /* ~Skóra wydaje się tak samo blada jak twoja; jej szara powierzchnia, pokryta bliznami, przypomina ci o skórze zombich, zaś strony w dotyku przypominają bardziej zakonserwowaną wyprawioną skórę aniżeli skórę ludzką.~ */
  IF ~~ THEN REPLY #61197 /* ~Zbadaj część zewnętrzną.~ */ GOTO 1
  IF ~~ THEN REPLY #61198 /* ~Zbadaj konstrukcję z kości.~ */ GOTO 3
  IF ~~ THEN REPLY #61199 /* ~Otwórz konstrukcję z kości.~ */ GOTO 4
  IF ~~ THEN REPLY #61200 /* ~Zostaw dziwny dziennik w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #61201 /* ~Pomimo prymitywnego stylu pisma, musisz przyznać, że struktura kostna jest tak naprawdę dość intrygująca; kości zostały wyrzeźbione tak, że zgrabnie na siebie zachodzą. Wygląda na to, że kości można od siebie odczepić, jeżeli chce się księgę otworzyć i poczytać.~ */
  IF ~~ THEN REPLY #61202 /* ~Zbadaj część zewnętrzną.~ */ GOTO 1
  IF ~~ THEN REPLY #61203 /* ~Zbadaj skórę.~ */ GOTO 2
  IF ~~ THEN REPLY #61204 /* ~Otwórz konstrukcję z kości.~ */ GOTO 4
  IF ~~ THEN REPLY #61205 /* ~Zostaw dziwny dziennik w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 2.2 3.2
  SAY #61206 /* ~Otwierasz konstrukcję z kości, które odczepiają się z eleganckim *trzaskiem*. Otwierasz księgę i przyglądasz się jej stronicom... wypełniają je te same dziwne serie symboli, które były na okładce zewnętrznej, ale wydają się nie mieć żadnego sensu.~ */
  IF ~~ THEN REPLY #61207 /* ~Spróbuj odgadnąć znaczenie symboli.~ */ GOTO 5
  IF ~~ THEN REPLY #61208 /* ~Zamknij konstrukcję z kości i zostaw dziennik w spokoju.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 5.0
  SAY #61209 /* ~Nie wydaje się, aby symbole uszeregowano według jakiegokolwiek wzorca - przynajmniej takiego, który możesz dostrzec. Pokazane kąty i obrazy wydają się całkowicie przypadkowe, czego nie możesz jednak być do końca pewny.~ */
  IF ~~ THEN REPLY #61210 /* ~Spróbuj odgadnąć znaczenie symboli.~ */ GOTO 5
  IF ~~ THEN REPLY #61211 /* ~Zamknij konstrukcję z kości i zostaw dziennik w spokoju.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.1
  SAY #61212 /* ~Kiedy z powrotem zaczepiasz kości o siebie, nachodzi cię nagle dziwna myśl - że strony wewnętrzne *mają* nie mieć żadnego sensu. Ty... ktokolwiek wtedy był tobą... wstawił tam te symbole po to, aby oszukać wszystkich, którzy pragnęli przeczytać prawdziwą treść. Ukryta jest ona gdzieś indziej w elementach konstrukcji.~ */
  IF ~~ THEN REPLY #61213 /* ~Zbadaj kontrukcję kości.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61214 /* ~Badasz krawędź księgi i zauważasz, że jedna z kości ma pęknięcie grubości włosa wokół jednego ze swych końców; kładziesz rękę nad tą krawędzią i odkręcasz koniuszek kości, odsłaniając w ten sposób puste miejsce. W środku znajduje się niewielki, zwinięty skrawek skóry.~ */
  IF ~~ THEN REPLY #61215 /* ~Wyjmij skórę, przeczytaj ją.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 12.0
  SAY #61216 /* ~Ten skrawek skóry pokryty jest pismem; wygląda na to, że ktoś wciąż nadpisywał na nim różne rzeczy i to wielokrotnie, aż stało się niemal nieczytelne. Niemniej jednak potrafisz odczytać niektóre słowa i symbole...~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61217 /* ~"UWIĘZiony UWIĘZiony WOLA PANI niech się spełni... UNIKaj jej spojrzenia... zbyt WIELU ZGINĘŁO Z RĄK MOIch, zbyt WIELU dusić i zabijać i zatrzymywać im ODDECH w gardle... jest WYJŚCIE JA je ZNAM wtedy przyśmieję tej z OSTRZami..."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61218 /* ~"...JEDEN z ŁUCZNIKÓW zna wyjśCIE, JEDEN z nich, JEDEN ma wyjście, nie mogę tak po prostu PRZECHODZIĆ przez nie po jednym na raz, może - może trzeba mi przejść przez jeden, POTEM wrócić do tego samego portalu bez..."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61219 /* ~Wpis zmienia się w gryzmoły nie do odczytania. Z jakiegoś powodu czujesz, że jest to ostatni wpis... albo wcielenie zmarło w labiryncie, albo jakoś uciekło.~ */
  IF ~  Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61220 /* ~Zahacz ponownie stronice i odłóż dziennik.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #61223 /* ~W labiryncie Pani Bólu odnalazłem jeden z moich dzienników. W środku znajdował się rysunek kawałka skóry pokrytego jakimiś szalonymi wzorami. Niezależnie od tego, kim byłem kiedy pisałem te słowa, musiałem znajdować się wówczas o krok od portalu.~ */ EXIT
  IF ~  !Global("Current_Area","GLOBAL",1900)
~ THEN REPLY #61221 /* ~Zahacz ponownie stronice i odłóż dziennik.~ */ DO ~SetGlobal("Maze_Journal","GLOBAL",1)
~ EXIT
END

IF ~  Global("Maze_Journal","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #61224 /* ~Okazuje się, że jest to coś w rodzaju dziennika. Na konstrukcji z kości rozciągnięto płaty wysuszonej ludzkiej skóry. Co dziwniejsze, wygląda na to, że skóra zabliźniła się przy szwach, tworząc grzbiet prowizorycznej książki. Zewnętrzne płaty skóry tworzą okładkę dla innych płatów skóry zamkniętych wewnątrz konstrukcji z kości.~ */
  IF ~~ THEN REPLY #61225 /* ~Odczep konstrukcję z kości i przeczytaj skórę ze środka...~ */ GOTO 8
  IF ~~ THEN REPLY #61226 /* ~Zostaw dziwny dziennik na swoim miejscu.~ */ EXIT
END
