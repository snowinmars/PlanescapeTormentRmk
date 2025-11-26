// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #3176 /* ~Sjaba spluwa pod twoje stopy. "Psie! Ośmielasz się jeszcze do mnie odzywać, mimo że to twoje kłamstwa uwięziły mnie w tym miejscu! Mam nadzieję, że Styks cię pochłonie i wyrzuci na brzeg twoje wyblakłe kości, które przerobią na flety dla armii gównojadów!"~ */
  IF ~~ THEN REPLY #68278 /* ~"Żegnaj, Sjabo."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3178 /* ~Na orlej twarzy tej kobiety widać wzniosłość, ale gdy do ciebie przemawia, łatwo wyczuć pogardę. "Jestem zajęta. Nie zajmuj mi dużo czasu."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #3180 /* ~"Mam tylko kilka pytań..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60214 /* ~"Mam tylko kilka pytań dotyczących Klątwy."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60215 /* ~"Rozmawiałem z An'izjuszem. Złożył mi ciekawą propozycję."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60216 /* ~"W takim razie zapomnij o tym. Żegnaj."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",3)
GlobalLT("C_Off","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #60217 /* ~"No i co?"~ */
  IF ~  Global("C_Off","GLOBAL",5)
~ THEN REPLY #60218 /* ~"Zaoferował mi dużą sumę, żebym cię zdradził."~ */ GOTO 9
  IF ~  Global("C_Off","GLOBAL",6)
~ THEN REPLY #60219 /* ~"Rozmawiałem z kapitanem straży. Powiedział, że wysłał oddział, żeby odprowadzić An'izjusza do więzienia."~ */ DO ~SetGlobal("C_Off","GLOBAL",10)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #60222 /* ~Pochwaliłem się swoim sukcesem w wydaniu An'izjusza strażnikom Klątwy. Sjaba była tym zachwycona i godziwie wynagrodziła mnie za to niewielkie niewielkie łotrostwo.~ */ GOTO 10
  IF ~~ THEN REPLY #60220 /* ~"Pracuję nad tym. Mam do ciebie parę pytań..."~ */ GOTO 11
  IF ~~ THEN REPLY #60221 /* ~"Pracuję nad tym. Mam do ciebie parę pytań..."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #60223 /* ~"Nasza sprawa została zakończona. Ruszaj stąd, ale będę musiała zawołać straże, aby cię stąd wyprowadziły."~ */
  IF ~~ THEN REPLY #60224 /* ~"Dobrze."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #60225 /* ~"Wracasz tak szybko? Nie mam czasu na twoje pytania, człowieku z bliznami."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #60226 /* ~"Mam tylko kilka pytań..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60227 /* ~"Mam tylko kilka pytań dotyczących Klątwy."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60228 /* ~"Rozmawiałem z An'izjuszem. Złożył mi ciekawą propozycję."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60229 /* ~"W takim razie zapomnij o tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #60230 /* ~"Nie jestem jakąś pospolitą informatorką, która byłaby na każde twoje skinienie. Odejdź stąd."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60231 /* ~"W takim razie może cię zainteresuje, że rozmawiałem z An'izjuszem. Powiedział mi coś bardzo ciekawego."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60232 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 4.1
  SAY #60233 /* ~Kobieta ogląda cię z zainteresowaniem. "Bardzo chciałabym zostać i porozmawiać z takim wspaniałym okazem, ale obawiam się, że obowiązki mnie wzywają. Rozumiesz, prawda? Na pewno rozumiesz."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60234 /* ~"W takim razie może cię zainteresuje, że rozmawiałem z An'izjuszem. Powiedział mi coś bardzo ciekawego."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60235 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 4.2 5.0 6.0
  SAY #60236 /* ~"Znowu chce mnie w jakiś sposób zniesławić, prawda? Ile trzeba, żeby obrócić jego knowania przeciwko niemu samemu? Co powiesz na dwa razy tyle, ile on ci proponuje?"~ */
  IF ~~ THEN REPLY #60237 /* ~"Zgoda. Umowa stoi."~ */ GOTO 8
  IF ~~ THEN REPLY #60238 /* ~"Przesyła ci pozdrowienia. To wszystko."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60239 /* ~"W takim razie ruszaj i zrób mu to, co kazał ci mnie wyrządzić - dopilnuję, żeby nie ominęła cię sowita nagroda."~ */
  IF ~~ THEN REPLY #60240 /* ~"W takim razie jeszcze tu wrócę."~ */ JOURNAL #60241 /* ~Sjaba, urzędniczka z Klątwy, ofiarowała mi dwa razy tyle, co An'izjusz, w zamian za wystrychnięcie An'izjusza na dudka. No cóż, zastanowię się jeszcze nad tym.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #60242 /* ~"Dość tego! Dam tyle, ile on, ale nic więcej." Kobieta uśmiecha się do ciebie, jakby rzuciła ci wyzwanie. "Musisz podjąć decyzję. Ale pamiętaj... Może ode mnie dostaniesz też coś jeszcze."~ */
  IF ~~ THEN REPLY #60243 /* ~"Dobrze. Żegnaj."~ */ JOURNAL #68274 /* ~Sjaba wyznaczyła mi ostatnie zadanie w jej łańcuchu zdrad i łotrostw godzących w An'izjusza.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #60244 /* ~Kobieta podaje ci ciężką sakwę z monetami. "W takim razie zabieraj to i odejdź. Nie było tej rozmowy." Puszcza do ciebie oko. "Masz moją wdzięczność... Żegnaj."~ */
  IF ~~ THEN REPLY #60245 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY #60246 /* ~"Jestem strasznie zajęta. Może znajdę dla ciebie czas, kiedy wypełnisz swoje zadanie? Z góry dziękuję." Kobieta obdarza cię przepięknym uśmiechem i odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #60247 /* ~"W taki razie, jeszcze tu wrócę..."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #60248 /* ~Kobieta uśmiecha się szyderczo. "Tak, jestem pewna, że to wszystko. Pamiętaj... Dam dwa razy tyle, ile on ci zaproponował. Pomyśl o tym, nieznajomy."~ */
  IF ~~ THEN REPLY #60249 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 13 // from:
  SAY #66785 /* ~Ten mężczyzna, noszący na sobie ubranie urzędnika Klątwy, jest przerażony. "Oni chcą mnie zabić! Robiłem tylko to, co do mnie należało, a oni myślą, że miałem coś wspólnego z tym zamieszaniem. I to tylko dlatego, że podpisałem rozkazy o egzekucji! Nie chciałem zrobić nic złego! Wykonywałem tylko moją pracę! Proszę, pomóż mi!"~ */
  IF ~~ THEN REPLY #66792 /* ~"Zrobię co w mojej mocy. Życz mi szczęścia."~ */ EXIT
  IF ~~ THEN REPLY #66793 /* ~"Zasłużyłeś sobie na taki los."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #66794 /* ~"W takim razie mam nadzieję, że gehrelethy wyrżną was wszystkich! Ty draniu!"~ */
  IF ~~ THEN REPLY #66795 /* ~"Giń."~ */ EXIT
END
