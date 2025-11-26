// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSALABSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSALABSH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48444 /* ~Ten wysoki, chudy człowiek, odziany w ciężkie szkarłatne szaty, ma twarz o ostrych rysach i cerze ściągniętej jakby mrozem. Gdy podchodzisz, kłania ci się po królewsku. "Jestem Salabesz, często zwany Onyksem, przyszły nauczyciel magów w Gmachu Rozrywki. Jak mniemam przybywasz do mnie w interesach...?"~ */
  IF ~~ THEN REPLY #48445 /* ~"Nie... mam tylko kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #48446 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #48447 /* ~"Na jaki temat, hmmm? Mam nadzieję, że nie chodzi o tę Dzielnicę i tym podobne... cała masa pomniejszych rangą ludzi mogłaby odpowiedzieć na takie pytania, a ja skieruję cię zaraz do jednego z nich."~ */
  IF ~~ THEN REPLY #48448 /* ~"Dlaczego nazywają cię 'Onyksem'?"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48449 /* ~"Co masz na myśli mówiąc 'przyszły nauczyciel magów w Gmachu Rozrywki'?"~ */ JOURNAL #66221 /* ~W okolicach Miejskiego Gmachu Rozrywki spotkałem człowieka o imieniu Salabesz. Jegomość ten oznajmił mi, że aspiruje do objęcia prestiżowego stanowiska 'wychowawcy magów w Miejskim Gmachu Rozrywki', ale musi mieć szansę, aby wykazać, że jest lepszy niż aktualny wychowawca.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67858 /* ~"Złożyłeś już swoją prośbę o powołanie na stanowisko nauczyciela magów w Gmachu Rozrywki?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67859 /* ~"I jak... co z twoim powołaniem na stanowisko nauczyciela magów w Gmachu Rozrywki?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48450 /* ~"Jesteś Mistrzem Klątw? Być może mógłbyś - *czkawka!* - mi pomóc..."~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66247 /* ~"Wiesz coś o człowieku o imieniu Śmierdziwiatr, na którego rzucono klątwę?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~Powiedziano mi, że to Mieszacz Mordsens rzucił na Śmierdziwiatra, człowieka, którego spotkałem w Ulu, klątwę smrodu i, że dowcipnisia tego mogę spotkać w Miejskim Gmachu Rozrywki.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48451 /* ~"Czy ty jesteś magiem, który rzucił klątwę na tego artystę na ulicy?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 10
  IF ~~ THEN REPLY #48452 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.1 5.1 6.2 7.1 8.2 10.1 11.1 12.0 14.1 15.1 16.0 17.0 18.0
  SAY #48453 /* ~Salabesz uśmiecha się głupio. "Wcale mnie to nie dziwi."~ */
  IF ~~ THEN REPLY #48454 /* ~"Dlaczego nazywają cię 'Onyksem?'"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48455 /* ~"Co masz na myśli mówiąc 'przyszły nauczyciel magów w Gmachu Rozrywki'?"~ */ JOURNAL #66221 /* ~W okolicach Miejskiego Gmachu Rozrywki spotkałem człowieka o imieniu Salabesz. Jegomość ten oznajmił mi, że aspiruje do objęcia prestiżowego stanowiska 'wychowawcy magów w Miejskim Gmachu Rozrywki', ale musi mieć szansę, aby wykazać, że jest lepszy niż aktualny wychowawca.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67860 /* ~"Złożyłeś już swoją prośbę o powołanie na stanowisko nauczyciela magów w Gmachu Rozrywki?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67861 /* ~"I jak... co z twoim powołaniem na stanowisko nauczyciela magów w Gmachu Rozrywki?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48456 /* ~"Jesteś Mistrzem Klątw? Być może mógłbyś - *hik!* - mi pomóc..."~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66249 /* ~"Wiesz coś o człowieku o imieniu Śmierdziwiatr, na którego rzucono klątwę?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~Powiedziano mi, że to Mieszacz Mordsens rzucił na Śmierdziwiatra, człowieka, którego spotkałem w Ulu, klątwę smrodu i, że dowcipnisia tego mogę spotkać w Miejskim Gmachu Rozrywki.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48457 /* ~"Czy ty jesteś magiem, który rzucił klątwę na tego artystę na ulicy?"~ */ GOTO 10
  IF ~~ THEN REPLY #48458 /* ~"Nieważne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48459 /* ~"To długa opowieść, którą skrócę, aby zaoszczędzić sobie wysiłku. Gdy byłem młody, nazywano mnie Salabesz Złoty ponieważ mówiono, że mam serce ze złota... małe, twarde i żółte. Cóż, przekląłem głupca, który *to* rozpoczął, tak że mógł mówić jedynie swoim tyłkiem i wypróżniać się ustami. Wkrótce pojawiło się określenie 'Onyks' - ukute na tę samą modłę co 'Złoty', ale bez wątpienia mniej wyszukane. W każdym bądź razie, jestem teraz o wiele uprzejmiejszym facetem... o wiele mniej prawdopodobne jest teraz, że rzucę na kogoś klątwę czy coś w tym stylu. Nie jestem pewien, czy w dalszym ciągu zasługuję na to imię."~ */
  IF ~  GlobalLT("Know_Salabesh","AR0600",2)
~ THEN REPLY #66250 /* ~"Przekląłeś go powodując *co takiego*?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 14
  IF ~~ THEN REPLY #48460 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #48461 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.4 2.4 10.0 14.0
  SAY #48462 /* ~"Pomóc ci?" Salabesz naśmiewa się. "Wątpliwe." Zanim udaje ci się coś powiedzieć, on wzdycha, potrząsając głową. "Właściwie... *być może* mógłbym. W czym więc problem?"~ */
  IF ~~ THEN REPLY #48463 /* ~"Przeklął mnie Mieszacz Mordsens."~ */ GOTO 5
  IF ~~ THEN REPLY #48464 /* ~"Właściwie to mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48465 /* ~"Mieszacz Mordsens? Ech! Ten śliniący się idiota *nigdy* mi nie dorówna! Och, walki, które stoczyliśmy..." Salabesz marszczy czoło. "Teraz jednak mam to wszystko za sobą. Nie jest to już w moim stylu. Naprawdę nie wiem, co mógłbym dla ciebie zrobić... ostatecznie to jest *jego* klątwa. Nie taka, jaką rzuca się na przedmioty i tym podobne, którą można by znieść za pomocą prostych czarów... *On* będzie musiał ją usunąć i to z własnej woli."~ */
  IF ~~ THEN REPLY #48466 /* ~"Mógłbyś mnie więc nauczyć jakiejś klątwy, którą mógłbym na niego rzucić?"~ */ GOTO 6
  IF ~~ THEN REPLY #48467 /* ~"Mam więc inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #48468 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48469 /* ~"Hmm. Cóż... zwykle tego nie robię. Trzymam moje klątwy dla siebie. A poza tym, nawet pojedyncza klątwa zajmuje sporo, sporo czasu żeby się jej nauczyć - więcej niż miałbym ochotę na to poświęcić."~ */
  IF ~~ THEN REPLY #48470 /* ~"Mógłbym ci zapłacić za twoją fatygę..."~ */ GOTO 7
  IF ~~ THEN REPLY #48471 /* ~"Być może masz po prostu stracha, że twoje klątwy nie są już dość dobre, aby go pokonać..."~ */ GOTO 8
  IF ~~ THEN REPLY #48472 /* ~"Mam więc inne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #48473 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48474 /* ~"Nie, nie... po prostu nie mam na to ochoty." Salabesz patrzy ci prosto w oczy. "A teraz łaskawie zmień temat, zanim zaczniesz mnie denerwować."~ */
  IF ~~ THEN REPLY #48475 /* ~"Być może masz po prostu stracha, że twoje klątwy nie są już dość dobre, aby go pokonać..."~ */ GOTO 8
  IF ~~ THEN REPLY #48476 /* ~"W porządku. Mam kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #48477 /* ~"Nie ma sprawy, Salabesz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48478 /* ~"Co takiego?! Na wszelki absurd... słuchaj ty worze blizn, Salabesz Onyks jest *MISTRZEM* Klątw, jedynym! Wystarczyłoby żebym podyktował ci jedną linijkę, a wszystkie klątwy tego barana przestałyby zupełnie działać!"~ */
  IF ~~ THEN REPLY #48479 /* ~"Naucz mnie jej więc..."~ */ GOTO 7
  IF ~~ THEN REPLY #48480 /* ~Nadmij usta, zrób sceptyczną minę.~ */ DO ~SetGlobal("Know_Salabesh_Curse","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #48481 /* ~"Jestem pewien, że mógłbyś. Mam kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #48484 /* ~"Dobrze już, dobrze... żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #48485 /* ~"W porządku! *Zmusiłeś* mnie żebym to zrobił!" Salabesz wypowiada krótką sekwencję dziwnych sylab... słów mocy, które zapisujesz w pamięci, aby użyć ich później przeciwko Mieszaczowi. "Masz! Przekonaj się, co *to* z nim zrobi, a potem spróbuj powiedzieć, że Salabesz Onyks nie jest Mistrzem Klątw!"~ */
  IF ~~ THEN REPLY #48486 /* ~"Dziękuję, Salabeszu. Zrobię tak. Żegnaj."~ */ JOURNAL #48487 /* ~Od Salabesza nauczyłem się krótkiej klątwy, którą będę mógł użyć przeciw Mieszaczowi Mordsensowi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.6 2.6
  SAY #48488 /* ~"Ach..." Salabesz mruży oczy; jego usta zwijają się. "O *niego* ci chodzi. Tak, przekląłem go, a on sam dobrze sobie na to zasłużył! Naśmiewać się z przechodzącego maga... co za głupiec tak robi? Sam się o to *prosił*! W końcu *jestem* Salabesz Onyks, Mistrz Klątw. Nie obawiaj się jednak... klątwa jest niegroźna. Jeśli już, to potęguje jedynie jego żałosną egzystencję - nic mu nie będzie."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #48489 /* ~"Mistrz Klątw? Być może mógłbyś - *hik!* - mi pomóc..."~ */ GOTO 4
  IF ~~ THEN REPLY #48490 /* ~"Mam kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #48491 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1
  SAY #48492 /* ~"Stanowisko oficjalnego nauczyciela w jednej z sal ćwiczeń w Gmachu Rozrywki jest bardzo prestiżowe. Zamierzam pewnego dnia objąć stanowisko nauczyciela magów, ale tytuł ten obecnie należy do Pani Thorncombe. Gdybym tylko mógł jakoś udowodnić, że byłbym lepszym nauczycielem..."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",2)
~ THEN REPLY #48493 /* ~"Zawsze możesz wspomnieć o tym, że jest uzależniona od kamieni doznań. Wygląda no to, że nie chce już uczyć..."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",3)
~ JOURNAL #48496 /* ~Powiedziałem Salabeszowi, że Pani Thorncombe spędza cały swój czas w sensorium i nie ma zamiaru więcej uczyć. Był chętny zająć jej miejsce, ale nie jestem pewien, czy byłby z niego dobry nauczyciel. Najlepiej jak powiadomię o jego intencjach Panią Thorncombe i dam jej ostatnią okazję, by ustaliła na czym jej naprawdę zależy.~ */ GOTO 12
  IF ~~ THEN REPLY #48494 /* ~"Mam kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #48495 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #48497 /* ~Salabesh wykrzywia usta w paskudnym uśmiechu. "*Doprawdy*? Nie chce już uczyć? Doskonale…" Zaciera ręce z radości. "W takim razie wkrótce upomnę się o stanowisko nauczyciela nowego maga."~ */
  IF ~~ THEN REPLY #48498 /* ~"Mam kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #48499 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #48500 /* ~Widzisz Salabesza Onyksa. Kłania ci lekko choć wdzięcznie. "Hmm. Znów stajesz przede mną..."~ */
  IF ~~ THEN REPLY #48501 /* ~"Tak. Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #48502 /* ~"Tylko tędy przechodziłem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0
  SAY #66236 /* ~"Och, tak... dobrze słyszałeś." Salabesz wzdycha ze szczęścia i chichocze pod nosem. "Tego typu rzeczy sprawiają, że jestem znany jako Mistrz Klątw."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66237 /* ~"Mistrz Klątw? Być może mógłbyś - *hik!* - mi pomóc..."~ */ GOTO 4
  IF ~~ THEN REPLY #66238 /* ~"Mam kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #66239 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.5
  SAY #66240 /* ~"Śmierdziwiatr...? Hmm." Brwi Salabesza nagle wystrzeliwują w górę. "Och, tak... Mieszacz Mordsens przeklął tego człowieka, o ile dobrze sobie przypominam. Dlaczego pytasz? Starasz się cofnąć jego klątwę? Powodzenia... Wiedz, że tylko Mieszacz może to zrobić."~ */
  IF ~  Global("Jumble","GLOBAL",0)
~ THEN REPLY #66241 /* ~"Gdzie znajdę tego Mieszacza Mordsensa?"~ */ GOTO 16
  IF ~~ THEN REPLY #66243 /* ~"Mam kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #66244 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66242 /* ~"W Gmachu Rozrywki, jak sądzę. Niski, tęgi koleś o chytrym uśmiechu. Nigdy nic nie mówi, więc będzie ci niezwykle trudno coś z niego wyciągnąć."~ */
  IF ~~ THEN REPLY #66245 /* ~"Mam kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #66246 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.2 2.2
  SAY #67852 /* ~Salabesz pochmurnieje. "Nie... ostatnio uraziłem przewodniczącego komisji magów z Gmachu Rozrywki i czuję, że najlepiej będzie trochę odczekać zanim złożę swoją prośbę. Poza tym jestem pewien, że w najbliższej przyszłości 'Pani' Thorncombe nie opuści w podskokach sensorium..." Chichocze złowieszczo.~ */
  IF ~~ THEN REPLY #67853 /* ~"Mam kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #67854 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.3 2.3
  SAY #67855 /* ~"Ta bezmyślna kobieta o rozmytym mózgu... Thorncombe, w końcu stwierdziła, że może już opuścić sensorium i powrócić do nauczania, tak więc moje szanse są pogrzebane. Nie chcę o tym więcej mówić!" Salabesz wypowiada pod nosem podłe klątwy.~ */
  IF ~~ THEN REPLY #67856 /* ~"Mam więc kolejne pytanie..."~ */ GOTO 2
  IF ~~ THEN REPLY #67857 /* ~"Nie mam już więcej pytań. Żegnaj."~ */ EXIT
END
