// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPLINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPLINT~

IF ~  NumTimesTalkedTo(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2989 /* ~Złota skóra tego wielkiego człowieka wydaje się miotać iskry, jak gdyby był cały utoczony z metalu. Trudno ci powiedzieć, czy to naturalna barwa, czy też dzieło odpowiednich farb. Wielkolud mierzy cię chłodnym spojrzeniem, kiedy się doń zbliżasz, lecz, gdy zatrzymujesz się przed nim, zgina się w pełnym uszanowania ukłonie. "Witaj u bram Miejskiego Gmachu Rozrywki, wędrowcze. Jesteśmy Drzazga, odźwierny Miejskiego Gmachu Rozrywki i Król-Kapłan Ur w jednej osobie. Czy możemy ci w czymkolwiek pomóc?". Pokorny ton pytania wyraźnie kontrastuje z jego potężnym i władczym głosem, rozchodzącym się z łoskotem po całej komnacie.~ */
  IF ~~ THEN REPLY #65145 /* ~"Zatem, jak możesz mi pomóc?"~ */ GOTO 2
  IF ~~ THEN REPLY #48511 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #48512 /* ~"Niczego mi nie potrzeba w tej chwili. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0 3.3 4.3 5.0 6.3 7.1 8.1 9.0 10.8 11.0 12.0 13.0 14.0 15.1 16.0 17.9 18.4 19.1 20.0 20.1 21.1 22.0 23.5 27.0 30.0 31.1 32.1 35.2 36.0 37.0 38.0 39.0 41.0 43.1 44.0 45.0
  SAY #48513 /* ~"Z przyjemnością odpowiemy na wszystkie twoje pytania, o ile dotyczyć będą one spraw Miejskiego Gmachu Rozrywki, bądź też Stronnictwa Doznań."~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #51522 /* ~"Znam człowieka imieniem Iannis, któremu, mam taką nadzieję, umożliwisz na krótki czas dostęp do prywatnego sensorium..."~ */ GOTO 40
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65152 /* ~"Czy nie ma tu jakiegoś lingwisty czy mędrca, który mógłby mi pomóc w odczytaniu języka, w którym zapisany został tekst tego dwunastościanu?"~ */ DO ~SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66262 /* ~"Mieszacz Mordsens rzucił na mnie klątwę. Czy jest tu może ktoś, kto mógłby pomóc mi pozbyć się tego przekleństwa?"~ */ JOURNAL #66264 /* ~Rozmawiałem z Drzazgą o klątwie, jaką rzucił na mnie Mieszacz. Odźwierny Miejskiego Gmachu Rozrywki poradził mi, abym zwrócił się do człowieka o imieniu Salabesz, którego powinienem znaleźć albo w samym Gmachu, albo w jego okolicach. Salabesz zazwyczaj nosi szaty w kolorze czerwonym i czarnym.~ */ GOTO 45
  IF ~~ THEN REPLY #48514 /* ~"Chciałbym spytać o ciebie..."~ */ GOTO 5
  IF ~~ THEN REPLY #48515 /* ~"Jak możesz mi pomóc, Drzazgo?"~ */ GOTO 2
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48516 /* ~"Czy jest tu jakieś miejsce, gdzie mógłbym odpocząć?"~ */ GOTO 31
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #66170 /* ~"Czy jest tu jakieś miejsce, gdzie mógłbym odpocząć?"~ */ GOTO 44
  IF ~~ THEN REPLY #48517 /* ~"Opowiedz mi o Miejskim Gmachu Rozrywki."~ */ GOTO 6
  IF ~~ THEN REPLY #48518 /* ~"Opowiedz mi o Stronnictwie Doznań."~ */ GOTO 7
  IF ~~ THEN REPLY #48519 /* ~"Jest tutaj ktoś, kogo szukam."~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #48520 /* ~"Czy ktokolwiek tutaj mógłby wiedzieć coś o Raveli Szaradnej?"~ */ GOTO 35
  IF ~~ THEN REPLY #48521 /* ~"Właściwie mniejsza o to. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.4 32.0
  SAY #48522 /* ~"Pełnimy tu wiele funkcji, wędrowcze. Odpowiadamy na pytania gości dotyczące Miejskiego Gmachu Rozrywki i jego mieszkańców. Wskazujemy gościom i członkom Stronnictwa Doznań drogę do sensoriów oraz sal wykładowych. Wprowadzamy do Stronnictwa nowych członków. Wreszcie, pośredniczymy w zakupach czynionych w skarbcu Stronnictwa, a tyczących towarów takich jak zaklęcia, magiczne artefakty i inne."~ */
  IF ~~ THEN REPLY #48523 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48524 /* ~"Czy możesz pokazać mi sensoria?"~ */ GOTO 3
  IF ~~ THEN REPLY #48525 /* ~"Na jakie wykłady można się teraz wybrać?"~ */ GOTO 4
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48526 /* ~"Chciałbym zakupić coś w skrabcu Stronnictwa."~ */ DO ~StartStore("Splinter",Protagonist)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48527 /* ~"Jak można dokonać zakupu w skarbcu Stronnictwa?"~ */ GOTO 18
  IF ~~ THEN REPLY #48528 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 8.0
  SAY #48529 /* ~"Są dwa rodzaje sensoriów: sensoria publiczne, gdzie każdy z gości za cenę od dziesięciu do pięćdziesięciu miedziaków może skorzystać z kamieni doznań, zaś obok nich są sensoria prywatne, do których dostęp mają jedynie członkowie Stronnictwa Doznań. Do żadnego z tych sensoriów nie możesz dotrzeć na własną rękę. Musimy cię tam osobiście *zaprowadzić*."~ */
  IF ~~ THEN REPLY #48530 /* ~"Zaprowadź mnie zatem do publicznego sensorium."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48531 /* ~"Zaprowadź mnie zatem do prywatnego sensorium."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48532 /* ~"Jak można się dostać do prywatnego sensorium?"~ */ GOTO 18
  IF ~~ THEN REPLY #48533 /* ~"Poczekaj. Ciekawi mnie jeszcze jedna rzecz..."~ */ GOTO 1
  IF ~~ THEN REPLY #48534 /* ~"Właściwie to już czas na mnie. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #48535 /* ~"Aktualnie w Miejskim Gmachu Rozrywki wykładają następujący mędrcy: Adwokat Śmierci, który wygłasza mowę o śmierci i o tym, co po niej nadchodzi, dalej Krzywy Ghysis, który snuje opowieść o Wojnie Krwi, oraz Trzem-Sferom-Przypisany, który naucza o potędze charakteru i sile wiary. Mamy wrażenie, że wszyscy ci mędrcy są teraz tutaj, dlatego możemy ci w każdej chwili wskazać drogę do ich sal wykładowych."~ */
  IF ~  !Dead("DeathAd")
~ THEN REPLY #48536 /* ~"Chciałbym wybrać się na wykład Adwokata Śmierci."~ */ GOTO 37
  IF ~  !Dead("Ghysis")
~ THEN REPLY #48537 /* ~"Chciałbym wybrać się na wykład Krzywego Ghysisa."~ */ GOTO 38
  IF ~  !Dead("3Planes")
~ THEN REPLY #48538 /* ~"Chciałbym wybrać się na wykład Trzem-Sferom-Przypisanego."~ */ GOTO 39
  IF ~~ THEN REPLY #48539 /* ~"Ciekawi mnie jeszcze jedna sprawa..."~ */ GOTO 1
  IF ~~ THEN REPLY #48540 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #48541 /* ~"Niewiele można dodać do tego, co już powiedzieliśmy. Jesteśmy Drzazga, odźwierny Miejskiego Gmachu Rozrywki, a zarazem półboski syn Isahar i Król-Kapłan Ur w jednej osobie. Pewnego dnia do naszego świata zawitali wędrowcy z innych sfer i opowiedzieli nam o Stronnictwie Doznań. Byliśmy zafascynowani i zdecydowaliśmy się przybyć tutaj z nimi. Zostawiliśmy Ur w zręcznych dłoniach naszej królowej małżonki, tak, aby móc przybyć do tego miejsca i na własnej skórze poznać, co to 'służba' bliźnim i 'pokora' wobec świata. Jako, że w tej sferze czas płynie inaczej niż w Ur, sto lat, które przyszło nam spędzić w tym świecie, w Ur oznacza nie więcej jak ledwie kilka miesięcy. Kiedy minie jeszcze dekada, bądź dwie, osiągniemy gotowość do powrotu do Ur by ponownie objąć władzę."~ */
  IF ~~ THEN REPLY #48542 /* ~"Ach tak... Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48543 /* ~"To już wszystko, co chcieliśmy wiedzieć. Bywaj zdrów, Drzazgo."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7
  SAY #48544 /* ~"Miejski Gmach Rozrywki to jedna z największych budowli w Sigil; zbudowana dla potrzeb najsilniejszej frakcji w mieście, Stronnictwa Doznań. Miejski Gmach Rozrywki to siedziba Stronnictwa. Obejmuje sensoria, sale wykładowe, komnaty ćwiczebne oraz kwatery dla gości i stałych członków frakcji.~ */
  IF ~~ THEN REPLY #48545 /* ~"Opowiedz mi o Stronnictwie Doznań."~ */ GOTO 7
  IF ~~ THEN REPLY #48546 /* ~"Opowiedz mi o sensoriach."~ */ GOTO 8
  IF ~~ THEN REPLY #48547 /* ~"Opowiedz mi o komnatach ćwiczebnych."~ */ GOTO 9
  IF ~~ THEN REPLY #48548 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48549 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.8 6.0
  SAY #48550 /* ~"Podstawą wierzeń Czuciowców jest przekonanie, że wieloświat można prawdziwie poznać jedynie poprzez wrażenia zmysłowe. Jeżeli jakieś zjawisko nie jest uchwytne zmysłami, to w świetle nauk Czuciowców, oznacza to, że ono po prostu nie istnieje. Tylko poprzez doświadczanie i poznawanie wszystkich wrażeń można dotrzeć do pełnej prawdy o wieloświecie. A Stronnictwo Doznań to zbiorowość, która gromadzi wszelkie wrażenia i udostępnia się je innym, najczęściej za pośrednictwem sensoriów."~ */
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48551 /* ~"Czy mogę zostać członkiem Stronnictwa?"~ */ GOTO 17
  IF ~~ THEN REPLY #48552 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48553 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #48554 /* ~"Sensoria to komnaty, w których znajduje się wiele kamieni rejestracyjnych albo kamieni doznań. Kamienie te to przedmioty magiczne, w których można przechowywać wiele rozmaitych wrażeń i doznań, a potem przekazywać je innym, ciekawym cudzych doświadczeń. Jeżeli taka twoja wola, możemy cię skierować do jednego z takich sensoriów."~ */
  IF ~~ THEN REPLY #48742 /* ~"Tak, proszę, zrób to."~ */ GOTO 3
  IF ~~ THEN REPLY #48556 /* ~"Nie, ale mam inne pytanie."~ */ GOTO 1
  IF ~~ THEN REPLY #48557 /* ~"Nie... Nie teraz. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #48558 /* ~"Są trzy kategorie komnat ćwiczebnych - dla wojowników, złodziei i dla czarodziejów. Jeżeli chcesz do nich dotrzeć, przejdź tedy przez środkowe drzwi wschodniej ściany, a za nimi przez jeszcze jedne drzwi. Znajdziesz się w narożniku holu... Idąc w kierunku wschodnim znajdziesz troje drzwi w ścianie południowej. Wiodą one kolejno do trzech komnat ćwiczebnych, każda innej kategorii..."~ */
  IF ~~ THEN REPLY #48559 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48560 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.9
  SAY #48561 /* ~"A kogóż tak usilnie poszukujesz, wędrowcze?"~ */
  IF ~  Global("P_Journal","GLOBAL",3)
Global("Know_Finam_Lang","GLOBAL",1)
~ THEN REPLY #48562 /* ~"Szukam Finama, lingwisty."~ */ GOTO 11
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #48563 /* ~"Szukam pani Jolmi z Domu Syrma..."~ */ GOTO 12
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #48564 /* ~"Szukam Wesołka."~ */ GOTO 36
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #48565 /* ~"Szukam Qui-Saia, nauczyciela wojowników."~ */ GOTO 13
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #48566 /* ~"Szukam Eliego Haweloka, nauczyciela złodziei."~ */ GOTO 14
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #48567 /* ~"Szukam Pani Thorncombe, nauczycielki magów."~ */ GOTO 15
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #48568 /* ~"Szukam Monteka, faktotuma tutejszego Stronnictwa."~ */ GOTO 16
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #48569 /* ~"Szukam Monteka, faktotuma tutejszego Stronnictwa."~ */ GOTO 16
  IF ~~ THEN REPLY #48570 /* ~"Właściwie to nikogo. Mam inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48571 /* ~"Mniejsza o to. Bywaj zdrów, Drzazgo."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 43.0
  SAY #48572 /* ~"Finam obecnie nie wykłada tutaj, więc najlepiej byłoby go poszukać w jego własnym domu. Idź na południe od wejścia do Miejskiego Gmachu Rozrywki, pomiędzy Gallerią Yvany a Apteką. Ujrzysz tam po prawej ręce dom Finama - domek o pięciu ścianach, położony na zachód od Sklepu z Osobliwościami."~ */
  IF ~~ THEN REPLY #48573 /* ~"Dzięki. Mam jeszcze inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48574 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #48575 /* ~"Ostatnio Jolmi upodobała sobie tę komnatę. Podejrzewamy, że Jolmi czeka na czyjeś przyjście albo poszukuje z kimś kontaktu. Tak, czy owak powinna być w pobliżu."~ */
  IF ~~ THEN REPLY #48576 /* ~"Dzięki. Mam jeszcze inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48577 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY #48579 /* ~"Qui-Sai często szuka spokojnych miejsc, gdzie może oddać się medytacji. Najprawdopodobniej znajdziesz go w którejś z mniej zatłoczonych komnat. Poznasz go po tym, że będzie trzymał się tam z dala od innych, stał bez poruszenia, pogrążony w stanie cichej kontemplacji."~ */
  IF ~~ THEN REPLY #48580 /* ~"Dzięki. Mam jeszcze inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48581 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.4
  SAY #48582 /* ~"Eli Hawelok opuścił ten gmach pewien czas temu. A kiedy wychodził, wyglądał na wściekłego. Podejrzewamy, że Eli może włóczyć się gdzieś po dzielnicy, w pobliżu Miejskiego Gmachu Rozrywki."~ */
  IF ~~ THEN REPLY #48583 /* ~"Dzięki. Mam jeszcze inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48584 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.5
  SAY #48585 /* ~Drzazga marszczy lekko brwi i mruży oczy. "Bez wątpienia znajdziesz ją w jednym z sensoriów. Pani Thorncombe ostatnio wymiguje się od swoich obowiązków i spędza stanowczo zbyt wiele czasu pośród kamieni doznań. Możesz tam się udać, jeżeli taka twoja wola, ale musimy cię tam osobiście *zaprowadzić*."~ */
  IF ~~ THEN REPLY #48586 /* ~"Tak, proszę, zrób to."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~~ THEN REPLY #48587 /* ~"Nie, ale mam inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48588 /* ~"Nie... nie teraz. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.6 10.7
  SAY #48589 /* ~"Montek to bardzo zajęty młodzieniec. Zazwyczaj można go znaleźć krążącego gdzieś pomiędzy tą komnatą a trzema innymi, które leżą wzdłuż wschodniej ściany.~ */
  IF ~~ THEN REPLY #48590 /* ~"Dzięki. Mam jeszcze inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48591 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.0 18.0
  SAY #48592 /* ~"Ten, kto chciałby wejść do grona Stronnictwa Doznań, musi żywić chęć dzielenia się z innymi własnymi doświadczeniami. Wymaga się okazania pięciu wrażeń, po jednym na każdy z pięciu zmysłów. Można również okazać pojedyncze całościowe doznanie, które zawiera silne bodźce dla każdego z pięciu zmysłów. Muszą to być wrażenia albo zupełnie nowe, albo też wyraźnie odbiegające od tych, które już mamy na składzie. Jeżeli uznamy okazane przez ciebie wrażenia za godne uwagi, wówczas zostaną one umieszczone we wnętrzu kamieni doznań, a ty, jako nowy Czuciowiec nauczysz się sztuki Czuciowego Dotyku. Daje to umiejętność wchłaniania cudzych ran i obrażeń, i leczenia ich poprzez przyjmowanie na siebie cierpienia innych."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48593 /* ~"Jestem już co prawda członkiem frakcji Bogowców, ale..."~ */ GOTO 23
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48594 /* ~"Jestem już co prawda członkiem frakcji Grabarzy, ale..."~ */ GOTO 23
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48595 /* ~"Jestem już co prawda członkiem... innej frakcji, ale..."~ */ GOTO 23
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48596 /* ~"Jestem już co prawda członkiem frakcji Chaosytów, ale..."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48597 /* ~"Należę już do frakcji Bogowców. Zmieniłem zdanie... Nie obrócę się przeciwko mojej frakcji."~ */ GOTO 22
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48598 /* ~"Należę już do frakcji Grabarzy. Zmieniłem zdanie... Nie obrócę się przeciwko mojej frakcji."~ */ GOTO 22
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48599 /* ~"Należę już do... innej frakcji. Zmieniłem zdanie... Nie obrócę się przeciwko mojej frakcji."~ */ GOTO 22
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48600 /* ~"Należę już do frakcji Chaosytów. Zmieniłem zdanie... Nie obrócę się przeciwko mojej frakcji."~ */ GOTO 22
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #48601 /* ~"Jestem gotowy. Chcę stać się członkiem Stronnictwa."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~~ THEN REPLY #48602 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48603 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.4 3.2 31.0 35.1
  SAY #48604 /* ~"Musisz być członkiem Stronnictwa Doznań."~ */
  IF ~~ THEN REPLY #48605 /* ~"Czy mogę przystać do Stronnictwa?"~ */ GOTO 17
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #48606 /* ~"A co, jeżeli już kiedyś *należałem* do Stronnictwa? Nie było mnie długo w tym miejscu, ale zapewniam cię... Byłem niegdyś Czuciowcem."~ */ GOTO 19
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #48607 /* ~Blef: "Och, ależ ja *jestem* Czuciowcem. Naprawdę."~ */ GOTO 20
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #48608 /* ~Blef: "Ależ ja jestem członkiem frakcji, Drzazgo... Po prostu od dłuższego czasu nie bawiłem w tych stronach. W czasie mojej nieobecności zgromadziłem wiele doznań... Tak wiele, jak wiele blizn na moim ciele."~ */ GOTO 21
  IF ~~ THEN REPLY #48609 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48610 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #48611 /* ~Drzazga pochyla się, aby dokładniej cię obejrzeć. "Nie rozpoznajemy cię... Ale widzimy, że z twych ust nie kapie jad kłamstwa. Dobrze więc. Przyznamy ci dostęp do przywilejów zastrzeżonych tylko dla członków Stronnictwa Doznań... *jeżeli* przekażesz Nam doznania jakie ostatnio zgromadziłeś."~ */
  IF ~~ THEN REPLY #48612 /* ~"W porządku... Jestem gotowy."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48613 /* ~"Mniejsza o to. Mam inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48614 /* ~"Mniejsza o to. Bywaj zdrów, Drzazgo."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY #48615 /* ~"Prawdziwy Król-Kapłan Ur potrafi dojrzeć jad kłamstwa w ustach rozmówcy. Kłamanie Nam to rzecz nad wyraz nieroztropna, wędrowcze."~ */
  IF ~~ THEN REPLY #48616 /* ~"To był... żart, a nie kłamstwo. Mam inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48617 /* ~"Wybacz mi zatem. Mam inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48618 /* ~"To był tylko żart, Drzazgo. Bywaj zdrów."~ */ EXIT
  IF ~~ THEN REPLY #48619 /* ~"Zatem proszę cię o wybaczenie, Drzazgo. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY #48620 /* ~Drzazga mruży oczy i chrząka mierząc twoją postać wzrokiem. "Zatem... dobrze. Przyznamy ci dostęp do przywilejów zastrzeżonych tylko dla członków Stronnictwa Doznań... *jeżeli* przekażesz Nam doznania jakie ostatnio zgromadziłeś."~ */
  IF ~~ THEN REPLY #48621 /* ~"W porządku... Jestem gotowy."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48622 /* ~"Zapomnijmy o tym. Mam inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48623 /* ~"Mniejsza o to. Bywaj zdrów, Drzazgo."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.4 17.5 17.6 17.7
  SAY #48624 /* ~Drzazga tylko kiwa głową.~ */
  IF ~~ THEN REPLY #48625 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48626 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.0 17.1 17.2 17.3
  SAY #48627 /* ~"Oni ci nie przebaczą. Nie będzie odwrotu."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48628 /* ~"Jestem gotów, aby przyłączyć się do Stronnictwa Doznań. Nie czuję się w niczym związany z frakcją Bogowców."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48629 /* ~"Jestem gotów, aby przyłączyć się do Stronnictwa Doznań. Nie czuję się już w niczym związany z frakcją Grabarzy."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48630 /* ~"Jestem gotów, aby przyłączyć się do Stronnictwa Doznań. Nie czuję się już w niczym związany z... moją starą frakcją."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48631 /* ~"Jestem gotów, aby przyłączyć się do Stronnictwa Doznań. Nie czuję się już w niczym związany z frakcją Chaosytów."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48632 /* ~Skłam, aby zinfiltrować Czuciowców dla Anarchistów: "Jestem gotów, aby przyłączyć się do Stronnictwa Doznań. Nie czuję się już w niczym związany z moją dawną frakcją."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Splinter_1","GLOBALLaw",-1)
SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #48633 /* ~"Zapomnijmy o tym. Mamy kilka innych pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #48634 /* ~"Nie wydaje mi się, abym był do tego gotowy. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.8 23.0 23.1 23.2 23.3 23.4
  SAY #48635 /* ~"Po pierwsze, czy masz nam do zaoferowania jakieś doświadczenie odnoszące się do zmysłu powonienia? Może być również sam *zapach*, jeśli takowy posiadasz."~ */
  IF ~~ THEN REPLY #48636 /* ~"Właściwie, to chciałbym zaoferować wrażenie dotyczące wszystkich pięciu zmysłów: Obudziłem się mianowicie, nie wiedząc, gdzie jestem, na zimnej, spłukanej krwią żelaznej płycie we wnętrzu Kostnicy, w miejscu, które tylko Grabarze i umarli zaszczycają swoją obecnością..."~ */ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 33.0
  SAY #48637 /* ~Kiwa głową. "Zaiste poruszające przeżycie."~ */
  IF ~~ THEN REPLY #48638 /* ~"A i tak opuściłem część o gadającej czaszce, która skoczyła ku mnie znienacka, ledwo stanąłem na nogi. Czy to wystarczy, Drzazgo?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #48639 /* ~"Tak... Teraz pojdziemy do pustego kamienia, aby napełnić go treścią twojego doświadczenia. Potem zaś zyskasz dostęp do przywilejów zastrzeżonych dla członków Stronnictwa Doznań, a także opanujesz sztukę Czuciowego Dotyku."~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #48640 /* ~Idź z nim, aby zarejestrować swoje przeżycia i opanować sztukę Czuciowego Dotyku.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48641 /* ~Idź z nim, aby zarejestrować swoje przeżycia i udać, że opanowujesz sztukę Czuciowego Dotyku.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #48642 /* ~Powracasz razem z Drzazgą do korytarza Gmachu Rozrywki.

"Witamy cię w Stronnictwie Doznań, wędrowcze. Niechaj dalsze podróże i doświadczenia będą ci kostkami brukowymi na wielkiej drodze ku prawdom wieloświata."~ */
  IF ~~ THEN REPLY #48643 /* ~"Dziękuję, Drzazgo. Mam pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48644 /* ~"Dziękuję, Drzazgo. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.0 21.0
  SAY #48645 /* ~"Prosimy o pięć doznań, po jednym na każdy z pięciu zmysłów... Można również okazać pojedyncze doświadczenie, które zawiera silne bodźce dla każdego z pięciu zmysłów."~ */
  IF ~~ THEN REPLY #48646 /* ~"W takim razie, chciałbym zaoferować wrażenie dotyczące wszystkich pięciu zmysłów: Obudziłem się mianowicie, nie wiedząc, gdzie jestem, na zimnej, spłukanej krwią żelaznej płycie we wnętrzu Kostnicy, w miejscu, które tylko Grabarze i umarli zaszczycają swoją obecnością..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 34.0
  SAY #48647 /* ~Kiwa głową. "Zaiste poruszające przeżycie."~ */
  IF ~~ THEN REPLY #48648 /* ~"A i tak opuściłem część o gadającej czaszce, która skoczyła ku mnie znienacka, ledwo stanąłem na nogi. Czy to wystarczy, Drzazgo?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #48649 /* ~"Tak. Witamy cię ponownie, wędrowcze, i przyznajemy ci dostęp do przywilejów zastrzeżonych dla członków Stronnictwa Doznań."~ */
  IF ~~ THEN REPLY #48650 /* ~"Dziękuję, Drzazgo. Mam pytanie..."~ */ DO ~GiveExperience(Protagonist,10000)
~ GOTO 1
  IF ~~ THEN REPLY #48651 /* ~"Dziękuję, Drzazgo. Bywaj zdrów."~ */ DO ~GiveExperience(Protagonist,10000)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.5
  SAY #48652 /* ~"We wnętrzu Miejskiego Gmachu Rozrywki jest wiele kwater, ale tylko członkowie Stronnictwa Doznań mogą z nich korzystać. Jeżeli chcesz je zobaczyć, idź stąd na wschód, przejdź przez Gmach Rozrywki, a z czasem do nich dotrzesz. Jest tam urzędnik, który wpuszcza Czuciowców do ich kwater."~ */
  IF ~~ THEN REPLY #48653 /* ~"Więc nie ma innego sposobu, aby skorzystać tutaj z kwatery?"~ */ GOTO 18
  IF ~~ THEN REPLY #48654 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48655 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #48656 /* ~Drzazga spogląda na ciebie równie chłodno, jak wówczas, kiedy cię pierwszy raz dostrzegł. "Witamy cię ponownie w progach Miejskiego Gmachu Rozrywki, wędrowcze. Czy możemy w czymś pomóc?"~ */
  IF ~~ THEN REPLY #65146 /* ~"Zatem, jak możesz mi pomóc?"~ */ GOTO 2
  IF ~~ THEN REPLY #48657 /* ~"Mam kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #48658 /* ~"W tym momencie akurat nic mi nie potrzeba. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0
  SAY #48659 /* ~Drzazga kiwa głową. "Nie przerywaj."~ */
  IF ~~ THEN REPLY #48660 /* ~"Całe moje ciało cuchnęło płynem balsamującym, ale nawet ten smród nie dorównywał odorowi krwi. Dziesiątki trupów leżało na niezliczonych splamionych krwią płytach, identycznych do tej, z której ja się podniosłem. Szczątki te, z niewiadomych dla mnie przyczyn, padały łupem koszmarnych mechanizmów, które zawzięcie się nad nimi pastwiły, kawałkując i szatkując je na miazgę. Jedynym dźwiękiem, jaki dochodził do moich uszu był zgrzyt metalu i odległe odgłosy krzątaniny potwornych robotników, gdy przewozili kamienne płyty po zardzewiałych żelaznych torach."~ */ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 28.0
  SAY #48661 /* ~Drzazga kiwa głową. "Nie przerywaj."~ */
  IF ~~ THEN REPLY #48662 /* ~"Całe moje ciało cuchnęło płynem balsamującym, ale nawet ten smród nie dorównywał odorowi krwi. Dziesiątki trupów leżało na niezliczonych splamionych krwią płytach, identycznych do tej, z której ja się podniosłem. Szczątki te, z niewiadomych dla mnie przyczyn, padały łupem koszmarnych mechanizmów, które zawzięcie się nad nimi pastwiły, kawałkując i szatkując je na miazgę. Jedynym dźwiękiem, jaki dochodził do moich uszu był zgrzyt metalu i odległe odgłosy krzątaniny potwornych robotników, gdy przewozili kamienne płyty po zardzewiałych żelaznych torach."~ */ GOTO 29
END

IF ~~ THEN BEGIN 35 // from: 1.10
  SAY #48663 /* ~Drzazga zamyka oczy i namyśla się przez krótką chwilą. "Radzimy, abyś porozmawiał o Raveli z czarodziejem o imieniu Quell. Można go znaleźć gdzieś w Miejskim Gmachu Rozrywki, najczęściej w prywatnym sensorium."~ */
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48664 /* ~"Zaprowadź mnie do prywatnego sensorium."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48665 /* ~"Jak można dostać się do prywatnego sensorium?"~ */ GOTO 18
  IF ~~ THEN REPLY #48666 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48667 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 10.2
  SAY #48668 /* ~"Wesołek najczęściej krąży pomiędzy salami wykładowymi. Przejdź przez środkowe drzwi we wschodniej ścianie a za nimi jeszcze przez następne drzwi. Tym sposobem trafisz do holu, a tam możesz zastać Wesołka."~ */
  IF ~~ THEN REPLY #48669 /* ~"Dzięki. Mam jeszcze inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #48670 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 4.0
  SAY #49868 /* ~"Przejdź przez środkowe drzwi we wschodniej ścianie i za nimi jeszcze przez jedne drzwi. Tym sposobem trafisz do holu. Przetnij hol i wejdź w drugie drzwi w ścianie północnej."~ */
  IF ~~ THEN REPLY #49869 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #49870 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.1
  SAY #49871 /* ~"Przejdź przez najbardziej wysunięte na południe drzwi położone w ścianie wschodniej."~ */
  IF ~~ THEN REPLY #49872 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #49873 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 4.2
  SAY #49874 /* ~"Przejdź przez środkowe drzwi we wschodniej ścianie i za nimi następne drzwi. Trafisz w ten sposób do holu. Przetnij hol i wejdź w pierwsze drzwi w ścianie północnej."~ */
  IF ~~ THEN REPLY #49875 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #49876 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 1.0
  SAY #51517 /* ~"A z jakiego powodu mielibyśmy pozwolić na coś takiego?"~ */
  IF ~~ THEN REPLY #51518 /* ~"Ponieważ jeden z kamieni, które się tam znajdują, zawiera cząstkę przeżyć jego córki. Ona zmarła daleko od domu, długo nie widziana przez ojca, a on wciąż gorzko opłakuje jej utratę."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",2)
~ JOURNAL #51523 /* ~Rozmawiałem z Drzazgą, odźwiernym Miejskiego Gmachu Rozrywki, w sprawie przyznania Iannisowi pozwolenia na obejrzenie zawartości kamienia doznań jego zmarłej córki. Drzazga wyraził zgodę i teraz pozostaje mi tylko powiadomić Iannisa, że może wejść do środka.~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #51519 /* ~Drzazga kiwa głową, zastanawia się przez moment, potem zaś znowu kiwa głową. "Tak, zgadzamy się by ten Iannis wszedł do prywatnego sensorium. Przy należytej eskorcie, rzecz jasna. Możesz mu powiedzieć, że ma nasze zezwolenie."~ */
  IF ~~ THEN REPLY #51520 /* ~"Dziękuję, Drzazgo. Mam jeszcze inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #51521 /* ~"Dziękuję, Drzazgo. Żegnaj."~ */ EXIT
END

IF ~  Global("Splinter","GLOBAL",1)
~ THEN BEGIN 42 // from:
  SAY #56842 /* ~Wielkolud wybucha szyderczym śmiechem. "Nie będziesz już więcej frasować tu spokojnych ludzi. Sprawimy, że znikniesz z tego miejsca." Drzazga macha ręką, ostrość twego widzenia gdzieś znika, a wraz z nią, znika sprzed oczu obraz Gmachu Rozrywki.~ */
  IF ~~ THEN REPLY #56843 /* ~"Co się...?"~ */ DO ~SetGlobal("Splinter","GLOBAL",0)
TeleportParty("AR0500",[980.2100],0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.1
  SAY #65147 /* ~"Wiemy o kimś, kto mógłby ci pomóc. To niejaki Finam."~ */
  IF ~~ THEN REPLY #65148 /* ~"A gdzie mógłbym go znaleźć?"~ */ GOTO 11
  IF ~~ THEN REPLY #65150 /* ~"Dzięki. Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #65151 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 1.6
  SAY #66167 /* ~"Tak, w obrębie Miejskiego Gmachu Rozrywki znajdują się kwatery. Gdyby ci przyszła ochota na to, aby je odwiedzić, przejdź przez Gmach kierując się na wschód stąd. Z czasem zbliżysz się do tych komnat. Będziesz mógł tam porozmawiać z urzędnikiem kwaterunkowym."~ */
  IF ~~ THEN REPLY #66168 /* ~"Mam jeszcze jedno pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #66169 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.2
  SAY #66258 /* ~"Radzimy, abyś porozmawiał z człowiekiem imieniem Salabesz. Zazwyczaj można go spotkać w Miejskim Gmachu Rozrywki, bądź też w jego najbliższym sąsiedztwie. Salabesz to człek wysoki i chudy, odziany zwykle w szaty barwy czarnej lub karmazynowej."~ */
  IF ~~ THEN REPLY #66259 /* ~"Dzięki. Mam jeszcze inne pytanie..."~ */ GOTO 1
  IF ~~ THEN REPLY #66260 /* ~"To już wszystko, co chciałem wiedzieć. Bywaj zdrów."~ */ EXIT
END
