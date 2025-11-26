// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMFTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMFTREE~

IF ~  Global("Mourns","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9707 /* ~Widzisz zmęczonego, smutnego staruszka, który wpatruje się w martwy jesion, stojący na wprost niego. Mężczyzna mamrocze pod nosem i pociera brodę, jakby starał się coś zrozumieć. Od czasu do czasu smutno potrząsa głową.~ */
  IF ~~ THEN REPLY #16643 /* ~"Witaj..."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #16644 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16560 /* ~Gdy przerywasz jego rozmyślania, zdaje się być zaskoczony. Jego głos jest spokojny, ale pełen smutku. "Och... Bądź pozdrowiony przyjacielu. Jak ci się dzisiaj wiedzie?"~ */
  IF ~~ THEN REPLY #16645 /* ~"Całkiem dobrze."~ */ GOTO 2
  IF ~~ THEN REPLY #16646 /* ~"Źle."~ */ GOTO 3
  IF ~~ THEN REPLY #16647 /* ~"A czy to ma jakieś znaczenie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #16648 /* ~"Na razie zostawmy to w spokoju - Mam do ciebie parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #16649 /* ~"Trudno... Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #16561 /* ~Staruszek uśmiecha się, ale w jego oczach ciągle widać smutek. "To dobrze, przyjacielu. Mam nadzieję, że szczęście cię nie opuści." Wykonuje taki ruch, jak gdyby chciał obrócić się z powrotem do drzewa.~ */
  IF ~~ THEN REPLY #16650 /* ~"A co tobie przyniósł ten dzień?"~ */ GOTO 5
  IF ~~ THEN REPLY #16651 /* ~"Czekaj - Mam do ciebie parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16652 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.1
  SAY #16562 /* ~Staruszek smutnieje jeszcze bardziej. "Szkoda, przyjacielu... Przykro mi to słyszeć. Mam nadzieję, że będziesz miał więcej szczęścia." Wykonuje taki ruch, jak gdyby chciał obrócić się z powrotem do drzewa.~ */
  IF ~~ THEN REPLY #16653 /* ~"A co tobie przyniósł ten dzień?"~ */ GOTO 5
  IF ~~ THEN REPLY #16654 /* ~"Czekaj - Mam do ciebie parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16655 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16563 /* ~Staruszek jest zaskoczony, ale po chwili kiwa potakująco głową. "Tak, przyjacielu, masz rację. Przynajmniej jeśli o mnie chodzi... Choć wygląda na to, że to się nie liczy." Wykonuje taki ruch, jak gdyby chciał obrócić się z powrotem do drzewa.~ */
  IF ~~ THEN REPLY #16656 /* ~"U mnie wszystko w porządku."~ */ GOTO 2
  IF ~~ THEN REPLY #16657 /* ~"U mnie nie najlepiej."~ */ GOTO 3
  IF ~~ THEN REPLY #16658 /* ~"Nie liczy się? Co chcesz przez to powiedzieć?"~ */ GOTO 7
  IF ~~ THEN REPLY #16659 /* ~"Czekaj - Mam do ciebie parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16660 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0
  SAY #16564 /* ~Mężczyzna wzrusza lekko ramionami i obdarza cię niepewnym uśmiechem. "Szczęście mnie nie opuściło, choć i to nie przynosi mi pocieszenia."~ */
  IF ~~ THEN REPLY #16661 /* ~"Dlaczego?"~ */ GOTO 6
  IF ~~ THEN REPLY #16662 /* ~"Przykro mi - Mam do ciebie parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16663 /* ~"Przykro mi. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 29.0
  SAY #16565 /* ~Staruszek kładzie rękę na pobliskim drzewie. "Chodzi o drzewa, które rosną w Ulu. One umierają, przyjacielu - i nikogo to nie obchodzi." Widząc wyraz twojej twarzy, wykonuje ręką gest, jakby chciał cię uciszyć. "Może dla niektórych to nie ma znaczenia, ale dla mnie jest ważne. Myślę że to wstyd, zostawić te ostatnie strzępki życia i piękna w tej dzielnicy i patrzyć, jak umierają. Rozumiesz to, przyjacielu?"~ */
  IF ~~ THEN REPLY #16664 /* ~"Tak... To prawda, to smutne."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourns_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #16665 /* ~"Nie. Wszystko umiera, gdy przyjdzie odpowiedni czas. Po co się martwić, kiedy i jak to się stanie?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16666 /* ~"Nie, nie mogę. Jeśli te drzewa nikomu się na nic nie przydadzą, to kto by się nimi przejmował?~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mourns_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16667 /* ~"Tak. Mam do ciebie kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16668 /* ~"Rozumiem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 30.0
  SAY #16566 /* ~"To długa historia... wątpię, żeby to było coś, co zainteresowałoby jakiegoś przechodnia. Wystarczy jak powiem, że wszystkie moje wysiłki, by pobudzić tubylców do działania były... ignorowane."~ */
  IF ~~ THEN REPLY #16669 /* ~"Czego od nich chciałeś?"~ */ GOTO 9
  IF ~~ THEN REPLY #16670 /* ~"Rozumiem. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16671 /* ~"W takim razie, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 6.1 6.2 14.4 14.5 17.4 17.5
  SAY #16567 /* ~Stary człowiek wzdycha. "Tego się spodziewałem: nie różnisz się od pozostałych. Zostaw mnie w spokoju, dobrze?" Odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #16672 /* ~Odejdź.~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #16568 /* ~"Chciałem, aby oni... aby..." Starzec wydaje się być sfrustrowany brakiem słów. "...aby zaczęli się tym *interesować*. Czy to za wiele, przyjacielu?" Mężczyzna patrzy na ciebie wyczekująco.~ */
  IF ~~ THEN REPLY #16673 /* ~"Czym się interesować?"~ */ GOTO 6
  IF ~~ THEN REPLY #16674 /* ~"Chyba nie. Mam do ciebie parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16675 /* ~"Chyba nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #16569 /* ~Starzec wygląda na zaskoczonego i wykrzykuje: "Naprawdę? Ach! To znaczy, wspaniale! Czy możesz..." Przerywa wpół słowa i nagle staje się podejrzliwy. Potem odzyskuje spokój i zaczyna mówić zwykłym, spokojnym tonem. "W każdym razie to dobrze. Pewnie masz teraz do mnie 'parę pytań'..."~ */
  IF ~~ THEN REPLY #16676 /* ~"Tak, mam... ee, mam kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16677 /* ~"Nie, jeszcze nie. O co chciałeś zapytać?"~ */ GOTO 11
  IF ~~ THEN REPLY #16678 /* ~"Nie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #16570 /* ~Po raz pierwszy staruszek wydaje się naprawdę szczęśliwy. Wyjaśnia: "Ciężko tu przetrwać jakiejkolwiek formie życia... Wystarczy, że popatrzysz się wkoło siebie, a zrozumiesz, o czym mówię. Nie jestem pewien, czy drzewa mogły by się tu rozplenić, nawet gdyby w jakiś sposób *dostały* wystarczającą ilość światła i czystej wody..."~ */
  IF ~~ THEN REPLY #16679 /* ~"Mów dalej..."~ */ DO ~SetGlobal("Mourns_Belief","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #16680 /* ~"Chyba posłucham tego innym razem. Żegnaj."~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #16571 /* ~Przytakuje z entuzjazmem. "Ale gdyby wystarczająco dużo ludzi to *obchodziło*... Gdyby naprawdę chcieli, żeby te drzewa przeżyły... Ja po prostu wiem, że one przeżyją! Znowu zazielenią się i zakwitną!"~ */
  IF ~~ THEN REPLY #16681 /* ~"Co? To nie ma sensu."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mourns_1","GLOBALLaw",1)
~ GOTO 13
  IF ~~ THEN REPLY #16682 /* ~"Może masz rację."~ */ GOTO 14
  IF ~~ THEN REPLY #16683 /* ~"Może masz rację. Mam do ciebie parę pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #16684 /* ~"Może i tak. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #16572 /* ~Staruszek uśmiecha się ze zrozumieniem, kręcąc przy tym głową. "Teraz widzę, że nie pochodzisz stąd. Nie rozumiesz, tego, jak *funkcjonuje* Sigil. Tutaj wiara jest wszystkim... wszystkim!"~ */
  IF ~~ THEN REPLY #16685 /* ~"Może masz rację."~ */ GOTO 14
  IF ~~ THEN REPLY #16686 /* ~"Może masz rację. Mam do ciebie parę pytań..."~ */ GOTO 17
  IF ~~ THEN REPLY #16687 /* ~"Możliwe. Żegnaj."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #16573 /* ~"Nie mylę się. Jestem tego pewien." To silne przekonanie otacza go jak jakaś aura; zupełnie nie przypomina człowieka sprzed paru minut. "Tylko tyle od ciebie chcę... Po prostu przejmuj się nimi, miej nadzieję, że się odrodzą. A z czasem, gdy wystarczająco dużo ludzi będzie tego chciało, to się urzeczywistni. Czy możesz to dla mnie zrobić, przyjacielu?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16688 /* ~Prawda: "Tak, pomogę ci."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16689 /* ~Prawda: "Tak, pomogę ci."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16690 /* ~Kłamstwo: "Tak, pomogę ci."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16691 /* ~Kłamstwo: "Tak, pomogę ci."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16692 /* ~"Nie, ale do ciebie parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #16693 /* ~"Niestety, nie mogę. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0
  SAY #16574 /* ~"Wspaniale, przyjacielu, wspaniale! Dziękuję... dzięki tobie odzyskałem wiarę w moje zadanie. Może znajdę innych takich jak ty, którzy mnie posłuchają... Może uda się nam coś zmienić. Co mogę dla ciebie zrobić, przyjacielu?"~ */
  IF ~~ THEN REPLY #16694 /* ~"Mam kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16695 /* ~"Nic, ale dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.1
  SAY #16575 /* ~"Wspaniale, przyjacielu, wspaniale! Dziękuję... dzięki tobie odzyskałem wiarę w moje zadanie. Może znajdę innych takich jak ty, którzy mnie posłuchają... Może uda się nam coś zmienić. A co na to twoi towarzysze? Porozmawiasz z nimi w moim imieniu?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16698 /* ~"Co ty na to, Morte?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16699 /* ~"Anno? Może ty byś mogła?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16700 /* ~"Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16701 /* ~"Nie-Sławo, zastanowisz się nad tym?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16702 /* ~"Dak'konie, pomożesz temu człowiekowi?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16703 /* ~"Dak'konie: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16706 /* ~"Nordomie, myślisz, że mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16707 /* ~"Vhailorze, myślisz, że mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16708 /* ~"Może później. Mam do ciebie parę pytań..."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16709 /* ~"Może innym razem. Żegnaj."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 12.3 13.1 13.2
  SAY #16576 /* ~"Poczekaj, przyjacielu... zechciej mnie wysłuchać." Atmosfera zdecydowania otacza go jak jakaś aura; zupełnie nie przypomina człowieka sprzed paru minut. "Chcę od ciebie tylko jednego... Po prostu przejmuj się nimi, miej nadzieję, że się odrodzą. A z czasem, gdy wystarczająco dużo ludzi będzie tego chciało, to się urzeczywistni. Czy możesz to dla mnie zrobić, przyjacielu?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16710 /* ~Prawda: "Tak, pomogę ci."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16711 /* ~Prawda: "Tak, pomogę ci."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16713 /* ~Kłamstwo: "Tak, pomogę ci."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16714 /* ~Kłamstwo: "Tak, pomogę ci."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16715 /* ~"Nie, ale mam co ciebie parę pytań..."~ */ GOTO 8
  IF ~~ THEN REPLY #16717 /* ~"Nie, nie mogę. Żegnaj."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 28.5
  SAY #16577 /* ~"Wystarczy popatrzyć na to, co cię otacza, przyjacielu. Czy *cokolwiek* mogłoby mieć tu łatwe życie? A pomijając już przeklęte warunki, dabusy rzadko zaglądają do tej części Sigil."~ */
  IF ~~ THEN REPLY #16718 /* ~"Dabusy?"~ */ GOTO 19
  IF ~~ THEN REPLY #16720 /* ~"Dlaczego?"~ */ GOTO 21
  IF ~~ THEN REPLY #16721 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16722 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 21.0
  SAY #16578 /* ~"No wiesz, dabusy. Na pewno już je widziałeś... służą Pani - opiekują się miastem. Oczywiście nie o wszystkie dzielnice troszczą się z jednakowym zapałem." Staruszek spogląda smutno na drzewo, obok którego stoi.~ */
  IF ~~ THEN REPLY #16723 /* ~"Pani?"~ */ GOTO 20
  IF ~~ THEN REPLY #16724 /* ~"Dlaczego nie przychodzą tu częściej?"~ */ GOTO 21
  IF ~~ THEN REPLY #16726 /* ~"Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16727 /* ~"Właśnie to było mi potrzebne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 21.1
  SAY #16579 /* ~"Pani Bólu, przyjacielu? Władczyni Sigil?" Nagle urywa. Kreśląc półkole na swojej piersi, szepcze ci do ucha: "Lepiej o niej nie mówić. Wiedz tylko, że całe miasto jest pod jej kontrolą - choć czasami wydaje się być inaczej - i nie wspominaj o niej więcej."~ */
  IF ~~ THEN REPLY #16735 /* ~"Dobrze. Dlaczego dabusy nie przychodzą tu częściej?"~ */ GOTO 21
  IF ~~ THEN REPLY #16736 /* ~"Rozumiem. Mam do ciebie jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16737 /* ~"Nie będę już wspominać przy tobie jej imienia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.1 20.0
  SAY #16580 /* ~"Ul to niebezpieczne miejsce, ale nie o to chodzi... dabusy podlegają Pani, a nikt nie jest na tyle głupi, żeby z nią zadzierać. Podejrzewam, że to wszystko sprawka Upadłego."~ */
  IF ~~ THEN REPLY #16738 /* ~"Dabusy?"~ */ GOTO 19
  IF ~~ THEN REPLY #16739 /* ~"Pani?"~ */ GOTO 20
  IF ~~ THEN REPLY #16740 /* ~"Kim jest Upadły?"~ */ GOTO 22
  IF ~~ THEN REPLY #16741 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16742 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #16581 /* ~"Upadły? To... ach... Powiem tylko, że to jedyny dabus, który nie służy Pani. Nie znam wszystkich 'cieni' tej sprawy, ale jego kompani go unikają i mieszka tutaj, w Ulu, sam. Prowadzi salon tatuażu, ale większość mieszkańców Sigil unika tego miejsca."~ */
  IF ~~ THEN REPLY #16743 /* ~"Co wiesz o tym salonie tatuażu?"~ */ GOTO 23
  IF ~~ THEN REPLY #16744 /* ~"Czego mam się tam obawiać?"~ */ GOTO 26
  IF ~~ THEN REPLY #16745 /* ~"Nie wiesz czasem, dlaczego stał się taki jak teraz?"~ */ GOTO 27
  IF ~~ THEN REPLY #16746 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16747 /* ~"Właśnie to było mi potrzebne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 26.0 27.2 41.2 42.0 43.1
  SAY #16582 /* ~"Salon Upadłego znajduje się kilka budynków na wschód od tego miejsca. Łatwo go znaleźć, bo jest oznaczony jego symbolem, białym kołem przebitym błyskawicą. Sam nigdy tam nie byłem, ale z tego co wiem, Upadły potrafi zamieniać obrazy ze swoich słów - wiesz, że dabusy mówią obrazami, no wiesz, rebusami."~ */
  IF ~~ THEN REPLY #16748 /* ~"Tak, mów dalej."~ */ GOTO 24
  IF ~~ THEN REPLY #16749 /* ~"Naprawdę?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #16583 /* ~Staruszek kiwa potakująco głową. "Więc on w jakiś sposób potrafi zamieniać swoje rebusy w tatuaże. I to nie zwykłe tatuaże wykonane tuszem - Mówią, że jest w nich coś magicznego, i to nie tylko w sposobie ich tworzenia. Niestety, nie wiem o tej sprawie nic więcej."~ */
  IF ~~ THEN REPLY #16750 /* ~"Więc na co trzeba tam uważać?"~ */ GOTO 26
  IF ~~ THEN REPLY #16751 /* ~"Nie wiesz czasem, dlaczego stał się taki jak teraz?"~ */ GOTO 27
  IF ~~ THEN REPLY #16752 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16753 /* ~"Właśnie to było mi potrzebne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #16584 /* ~"Tak. Przekonasz się o co mi chodzi, gdy kiedyś porozmawiasz z jednym z nich. Nie mówią, tylko tworzą strumienie symboli ponad swoimi głowami." Staruszek wskazuje palcem ponad swoją głową, aby zobrazować o czym mówi. "Słuchacz musi odgadnąć, co taki dabus mówi, ale podobno nie jest to takie trudne. Wystarczy trochę poćwiczyć." Wzrusza ramionami.~ */
  IF ~~ THEN REPLY #16754 /* ~"Rozumiem. Mów dalej."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 22.1 24.0 27.3 41.3 42.1 43.2
  SAY #16585 /* ~"Od czasu, gdy odszedł od Pani, wielu ludzi twierdzi, że to tylko kwestia czasu, zanim padnie na niego jej cień. Wszyscy boją się, żeby czasem nie znaleźć się w pobliżu, gdy *to* się stanie."~ */
  IF ~~ THEN REPLY #16755 /* ~"Co wiesz o tym salonie tatuażu?"~ */ GOTO 23
  IF ~~ THEN REPLY #16756 /* ~"Nie wiesz czasem, dlaczego stał się taki jak teraz?"~ */ GOTO 27
  IF ~~ THEN REPLY #16757 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16758 /* ~"Właśnie to było mi potrzebne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2 24.1 26.1
  SAY #16586 /* ~"Tak jak już wspominałem, przyjacielu, nie jestem pewien. Słyszałem tylko plotki o tym, że opowiedział się po złej stronie, gdy jakaś Moc weszła w spór z Panią. Zawsze możesz go o to spytać. Podobno jest całkiem przyjazny, choć trochę zdziwaczał."~ */
  IF ~~ THEN REPLY #16759 /* ~"Co to jest Moc?"~ */ GOTO 41
  IF ~~ THEN REPLY #16760 /* ~"Pani?"~ */ GOTO 42
  IF ~~ THEN REPLY #16761 /* ~"Co wiesz na temat jego salonu tatuażu."~ */ GOTO 23
  IF ~~ THEN REPLY #16762 /* ~"Czego miałbym się obawiać w jego salonie?"~ */ GOTO 26
  IF ~~ THEN REPLY #16763 /* ~"Mam jeszcze parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16764 /* ~"Właśnie to było mi potrzebne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.1 3.1 4.3 5.1 6.3 7.1 9.1 10.0 15.0 16.8 18.2 19.2 20.1 21.3 22.3 24.2 26.2 27.4 29.2 30.1 31.3 32.2 33.2 34.1 35.0 36.0 37.0 40.0 41.4 42.2 43.3 44.0 45.8 46.0 47.0 48.1 49.9 50.0 51.8 53.0 61.0
  SAY #16587 /* ~Przytakuje głową oczekując na twoje pytanie.~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #22248 /* ~"Potrzebuję ziół, które wyrastają z tego nasiona. Pomożesz mi?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",3)
~ GOTO 54
  IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Tree_Helpers","AR0400",3)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16765 /* ~"Czy w drzewach zaszła już jakaś zmiana?"~ */ GOTO 45
  IF ~  Global("Mourns","GLOBAL",3)
GlobalGT("Tree_Helpers","AR0400",2)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16766 /* ~"Czy w drzewach zaszła już jakaś zmiana?"~ */ DO ~SetGlobal("Mourns_Quest","AR0400",2)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #16767 /* ~"Kim jesteś?"~ */ GOTO 29
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16768 /* ~"Co tutaj robisz?"~ */ GOTO 30
  IF ~~ THEN REPLY #16769 /* ~"Dlaczego te drzewa umierają?"~ */ GOTO 18
  IF ~~ THEN REPLY #16770 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16771 /* ~"Szukam człowieka imieniem Farod."~ */ GOTO 35
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16772 /* ~"Szukam mojego zaginionego dziennika."~ */ GOTO 36
  IF ~~ THEN REPLY #16773 /* ~"Trudno. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #16588 /* ~"Tutejsi ludzie zwą mnie 'Opłakującym Drzewa'."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16774 /* ~"A to dlaczego?"~ */ GOTO 6
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16775 /* ~"Co tutaj robisz?"~ */ GOTO 30
  IF ~~ THEN REPLY #16776 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16777 /* ~"Żegnaj, Opłakujący Drzewa."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.4 29.1 31.0 32.0
  SAY #16589 /* ~"Po prostu tracę swój czas, przyjacielu." Staruszek wzdycha smutno.~ */
  IF ~~ THEN REPLY #16778 /* ~"Co masz na myśli?"~ */ GOTO 7
  IF ~~ THEN REPLY #16779 /* ~"Rozumiem. Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16780 /* ~"W takim razie odchodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.6
  SAY #16590 /* ~"To najgorsze, co Sigil może ci zaoferować, przyjacielu. Tylko tyle można o nim powiedzieć." Starzec uśmiecha się smutno.~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16781 /* ~"W takim razie co tu robisz?"~ */ GOTO 30
  IF ~~ THEN REPLY #16782 /* ~"A gdyby była mi potrzebna praca?"~ */ GOTO 32
  IF ~~ THEN REPLY #16783 /* ~"Gdzie można się dobrze zabawić?"~ */ GOTO 33
  IF ~~ THEN REPLY #16784 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16785 /* ~"W takim razie, bywaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1 34.0
  SAY #16591 /* ~"W Ulu? Wątpię, żebyś coś takiego znalazł, chyba że jesteś złodziejem. Zawsze można zbierać trupy i znosić je do wrót Kostnicy, jeśli aż tak bardzo cię przyciśnie. Słyszałem, że Grabarze płacą za to, żeby nie dopuścić do jeszcze większego zanieczyszczenia ulic Ula."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16786 /* ~"Co tu robisz?"~ */ GOTO 30
  IF ~~ THEN REPLY #16787 /* ~"Gdzie można się dobrze zabawić?"~ */ GOTO 33
  IF ~~ THEN REPLY #16788 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16789 /* ~"W takim razie, bywaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.2 32.1
  SAY #16592 /* ~"No cóż, przyjacielu... Żeby znaleźć tu jakąś przyjemność, trzeba się trochę namęczyć. Na twoim miejscu poszukałbym jej w innej, bezpieczniejszej dzielnicy."~ */
  IF ~~ THEN REPLY #16790 /* ~"Co jest takiego niebezpiecznego?"~ */ GOTO 34
  IF ~~ THEN REPLY #16791 /* ~"Gdzie można tu znaleźć pracę?"~ */ GOTO 32
  IF ~~ THEN REPLY #16792 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16793 /* ~"W takim razie, bywaj."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #16593 /* ~"Tutaj? Wszystko, przyjacielu. Wszystko. No, może za wyjątkiem mnie. He, he."~ */
  IF ~~ THEN REPLY #16794 /* ~"Gdzie można tu znaleźć pracę?"~ */ GOTO 32
  IF ~~ THEN REPLY #16795 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16796 /* ~"Właśnie to było mi potrzebne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.7
  SAY #16594 /* ~"Przykro mi, przyjacielu. Kiedy przybyłem tu po raz pierwszy, rozmawiałem z wieloma ludźmi... Ale nie pamiętam nikogo o takim imieniu."~ */
  IF ~~ THEN REPLY #16797 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16798 /* ~"W takim razie, bywaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.8
  SAY #16595 /* ~"Nie przypominam sobie, żebym kiedyś coś takiego widział. Kiedy go ostatnio miałeś przy sobie, przyjacielu?"~ */
  IF ~~ THEN REPLY #16799 /* ~"No nie wiem. "Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16800 /* ~"Może. Bywaj."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #16596 /* ~"Witam znowu, przyjacielu."~ */
  IF ~~ THEN REPLY #16801 /* ~"Witaj. Mam do ciebie kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16802 /* ~"Pozdrawiam cię... I żegnam."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #16597 /* ~Patrzy na ciebie przez chwilę, po czym odwraca oczy. "O, to znowu ty... przyjacielu."~ */
  IF ~~ THEN REPLY #16803 /* ~"Mam kilka pytań..."~ */ GOTO 39
  IF ~~ THEN REPLY #16804 /* ~"Chcę przeprosić za moja wcześniejszą nieuprzejmość."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #16805 /* ~Kłamstwo: "Żałuję że byłem niegrzeczny... Chcę cię przeprosić."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #22239 /* ~"Pozdrowienia... i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #16598 /* ~"Przykro mi... przyjacielu. Tyle mam na głowie. Może porozmawiamy innym razem."~ */
  IF ~~ THEN REPLY #16806 /* ~"Wybacz mi mą wcześniejszą nieuprzejmość."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #20431 /* ~Kłamstwo: "Żałuję że byłem niegrzeczny... Chcę cię za to przeprosić."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #16807 /* ~"W takim razie, bywaj."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 38.2 39.0 39.1
  SAY #16599 /* ~Staruszek patrzy się na ciebie przez chwilę. "Przyjmuję twoje przeprosiny, przyjacielu. Czy masz do mnie jakieś pytania?"~ */
  IF ~~ THEN REPLY #16808 /* ~"Tak..."~ */ GOTO 28
  IF ~~ THEN REPLY #16809 /* ~"Powiedziałem, co miałem do powiedzenia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 27.0
  SAY #16600 /* ~"To bóstwo, przyjacielu. Zazwyczaj Pani nie ma z takimi problemów, ale trzyma ich z daleka od Sigil. Nazywał się Aoskar, ale nic nie wiem o całej tej sprawie."~ */
  IF ~~ THEN REPLY #16810 /* ~"Pani?"~ */ GOTO 42
  IF ~~ THEN REPLY #16811 /* ~"Nazywał się?"~ */ GOTO 43
  IF ~~ THEN REPLY #16812 /* ~"Co wiesz o salonie tatuażu Upadłego?"~ */ GOTO 23
  IF ~~ THEN REPLY #16813 /* ~"Czego mam się obawiać w salonie Upadłego?"~ */ GOTO 26
  IF ~~ THEN REPLY #16814 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16815 /* ~"Właśnie to było mi potrzebne. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.1 41.0 43.0
  SAY #16601 /* ~"Pani Bólu, przyjacielu? Władczyni Sigil?" Nagle urywa. Kreśląc półkole na swojej piersi, szepcze ci do ucha: "Lepiej o niej nie mówić. Wiedz tylko, że całe miasto jest pod jej kontrolą - choć czasami wydaje się być inaczej - i nie wspominaj o niej więcej."~ */
  IF ~~ THEN REPLY #16816 /* ~"Świetnie. Co wiesz o salonie tatuażu Upadłego?"~ */ GOTO 23
  IF ~~ THEN REPLY #16817 /* ~"Na co mam uważać w salonie Upadłego?"~ */ GOTO 26
  IF ~~ THEN REPLY #16818 /* ~"Rozumiem. Mam też inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16819 /* ~"Nie będę już wspominać przy tobie jej imienia. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #16602 /* ~Starzec smutno kiwa głową. "Z tego co wiem, Pani była przyczyną jego klęski. Lepiej o tym pamiętaj, jeśli przyszłoby ci kiedyś na myśl zadzierać z nią lub z jej sługami."~ */
  IF ~~ THEN REPLY #16820 /* ~"Pani?"~ */ GOTO 42
  IF ~~ THEN REPLY #16821 /* ~"Co wiesz o salonie tatuażu Upadłego?"~ */ GOTO 23
  IF ~~ THEN REPLY #16822 /* ~"Na co mam uważać w salonie Upadłego?"~ */ GOTO 26
  IF ~~ THEN REPLY #16823 /* ~"Mam jeszcze inne pytania..."~ */ GOTO 28
  IF ~~ THEN REPLY #16824 /* ~"Właśnie to było mi potrzebne. Żegnaj."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Mourns_Quest","AR0400",2)
~ THEN BEGIN 44 // from:
  SAY #16603 /* ~Opłakujący Drzewa uśmiecha się na twój widok. "Ach, mój przyjacielu, wróciłeś! Chciałeś czegoś ode mnie?"~ */
  IF ~~ THEN REPLY #16825 /* ~"Tak, mam kilka pytań..."~ */ GOTO 28
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16826 /* ~"Nie, chcę poprosić Morte, aby ci pomógł."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16827 /* ~"Nie, chcę poprosić Annę, aby ci pomogła."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16828 /* ~"Nie, chcę poprosić Ignusa, aby ci pomógł."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16829 /* ~"Nie, chcę poprosić Nie-Sławę, aby ci pomogła."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16830 /* ~"Nie, chcę poprosić Dak'kona, aby ci pomógł."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16831 /* ~"Nie, ale mam tu kogoś, kto ci pomoże. Dak'konie: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16832 /* ~"Nie, ale chcę poprosić Nordoma, aby ci pomógł."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16833 /* ~"Nie, ale chcę poprosić Vhailora, aby ci pomógł."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16834 /* ~"Nie, tylko tędy przechodzę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.1
  SAY #16604 /* ~"Nie, jeszcze nie, przyjacielu. Jednak nie tracę nadziei i codziennie namawiam ludzi."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16835 /* ~"Może Morte mógłby ci pomóc?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16836 /* ~"Może Anna mogłaby ci pomóc?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16837 /* ~"Może Ignus mógłby ci pomóc?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16838 /* ~"Może Nie-Sława mogłaby ci pomóc?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16839 /* ~"Może Dak'kon mógłby ci pomóc?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  InParty("Dakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16840 /* ~"Dobrze. Mam tu kogoś, kto ci pomoże. Dak'konie: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16841 /* ~"Może Nordom mógłby ci pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16842 /* ~"Może Vhailor mógłby ci pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16843 /* ~"To dobrze. Mam parę pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16844 /* ~"To dobrze. Żegnaj, Opłakujący Drzewa."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 28.2
  SAY #16605 /* ~"Tak, przyjacielu, zaszła pewna zmiana! Ledwo ją zauważyć, ale spójrz: z pnia wyrasta świeża gałąź, pojawiło się też kilka pączków. Teraz to już tylko kwestia czasu. Jeszcze raz dziękuję ci, żeś wlał w me serce nadzieję."~ */
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16845 /* ~"Cała przyjemność po mojej stronie. Mam do ciebie kilka pytań..."~ */ GOTO 28
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16846 /* ~"Nie ma za co, Opłakujący Drzewa. Żegnaj."~ */ EXIT
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16847 /* ~"To dla mnie... drobiazg. Mam jeszcze parę pytań..."~ */ GOTO 47
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16848 /* ~"Nie ma za co, Opłakujący Drzewa. Żegnaj."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.2 46.3
  SAY #16606 /* ~Opłakujący przez chwilę wydaje się być zakłopotany. "Czy stało się coś złego, przyjacielu? Coś cię zdenerwowało?"~ */
  IF ~~ THEN REPLY #16849 /* ~"Ach... Nie. Mam do ciebie tylko pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16850 /* ~"Nie, wszystko w porządku. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 14.2 17.2
  SAY #16607 /* ~"Wspaniale, przyjacielu, wspaniale! Dziękuję... dzięki tobie odzyskałem wiarę w moje zadanie. Może znajdę innych takich jak ty, którzy mnie posłuchają... Może uda się nam coś zmienić. Co mogę dla ciebie zrobić, przyjacielu?"~ */
  IF ~~ THEN REPLY #16851 /* ~Spójrz na drzewa, wyobraź sobie, jak będą wyglądały martwe.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 50
  IF ~~ THEN REPLY #16852 /* ~"Mam kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16853 /* ~"Nic, ale dziękuję. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 14.3 17.3
  SAY #16608 /* ~"Wspaniale, przyjacielu, wspaniale! Dziękuję... dzięki tobie odzyskałem wiarę w moje zadanie. Może znajdę innych takich jak ty, którzy mnie posłuchają... Może uda się nam coś zmienić. A co na to twoi towarzysze? Porozmawiasz z nimi w moim imieniu?"~ */
  IF ~~ THEN REPLY #16854 /* ~Spójrz na drzewa, wyobraź sobie, jak będą wyglądały martwe.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 51
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16855 /* ~"Morte? Co ty na to?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16856 /* ~"Anno? Mogłabyś?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16857 /* ~"Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16858 /* ~"Sławo, zastanowisz się nad tym?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16859 /* ~"Dak'konie, pomożesz temu człowiekowi?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16860 /* ~"Dak'konie: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16861 /* ~"Nordomie, może ty mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16862 /* ~"Vhailorze, pomożesz?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16863 /* ~"Może później. Mam jeszcze kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16864 /* ~"Może innym razem. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #16609 /* ~Opłakujący Drzewa uśmiecha się do ciebie, ale wygląda na zakłopotanego. "Co cię tak bawi, przyjacielu?"~ */
  IF ~~ THEN REPLY #16865 /* ~"Ee... Nic takiego, przyjacielu. Mam do ciebie kilka pytań..."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16866 /* ~"Och, nic takiego, Żegnaj, Opłakujący."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.0
  SAY #16610 /* ~Opłakujący Drzewa uśmiecha się do ciebie, ale wygląda na zakłopotanego. "Co cię tak bawi, przyjacielu?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16867 /* ~"Nie, nic. Morte? Co ty na to?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16868 /* ~"To nic. Anno, może ty?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16869 /* ~"Uśmiechałem się? Nie zwracaj na to uwagi. Ignusie?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16870 /* ~"To nic takiego. Sławo, zastanowisz się nad tym?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16871 /* ~"Nic, nic. Dak'konie, pomożesz temu człowiekowi?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16872 /* ~"Nic się nie stało. Dak'konie: pomóż temu człowiekowi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16873 /* ~"Och, nic. Nordomie, myślisz, że mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16874 /* ~"Nic. Vhailorze, mógłbyś pomóc?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16875 /* ~"Ee... nic takiego. Mam kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16876 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #16611 /* ~Gdy Opłakujący Drzewa zaczyna rozumieć, co za chwilę się wydarzy, w jego oczach pojawia się przerażenie. Nagle rzuca się pomiędzy Ignusa a drzewa: "Nie! Zatrzymaj się! Nie rób tego!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16877 /* ~Dalej...~ */ EXTERN ~DMORTE~ 186
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16878 /* ~Dalej...~ */ EXTERN ~DIGNUS~ 13
END

IF ~  Global("Mourns","GLOBAL",3)
Global("Mourns_Quest","AR0400",2)
~ THEN BEGIN 53 // from:
  SAY #16612 /* ~Opłakujący Drzewa uśmiecha się na twój widok. "Ach, mój przyjacielu, wróciłeś! Drzewa z dnia na dzień wyglądają coraz lepiej. Chciałeś czegoś ode mnie?"~ */
  IF ~~ THEN REPLY #16879 /* ~"Tak, mam kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #16880 /* ~"Nie, tylko przechodziliśmy. Żegnaj, Opłakujący Drzewa."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 28.0
  SAY #22240 /* ~Opłakujący Drzewa bierze od ciebie nasionko i zaczyna mu się przyglądać. "Co za dziwne nasienie... Co to za zęby wzdłuż krawędzi? Chyba jakieś kolce... Skąd je masz, przyjacielu?"~ */
  IF ~~ THEN REPLY #22249 /* ~"Stara Mebbet, znachorka z Placu, potrzebuje ziół, które wyrastają z tego nasiona. Nie wiesz, gdzie można je znaleźć?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #22241 /* ~"Nie..." Opłakujący Drzewa nie odrywa wzroku od nasionka. "Czegoś takiego nie widziałem w całym swoim życiu... Ach!" Wydaje okrzyk bólu, a na jego kciuku pojawia się kropla krwi. "Te kolce są bardzo ostre. Chyba lepiej będzie, jak oddam ci to z powrotem."~ */
  IF ~~ THEN REPLY #22250 /* ~"Więc i ty nie możesz mi pomóc?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #22242 /* ~"Jeśli ty nie zmusisz go, aby wyrosło, to ja też nie... ale mówię ci, przyjacielu, nigdy wcześniej czegoś takiego nie widziałem."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22251 /* ~"Gdybym chciał uprawiać je wystarczająco długo, czy można sprawić, aby wyrosło?"~ */ GOTO 58
  IF ~~ THEN REPLY #22252 /* ~"Czy jest jakiś sposób, aby rosło szybciej?"~ */ GOTO 58
  IF ~~ THEN REPLY #22254 /* ~"Nie mam zamiaru czekać, aż to cholerstwo wyrośnie. Potrzebuję ziół, i to zaraz."~ */ GOTO 60
  IF ~~ THEN REPLY #22255 /* ~"Chyba można by trochę poczekać, aż wyrośnie... Ile by to zajęło?"~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.3
  SAY #22243 /* ~Opłakujący Drzewa kręci głową. "Nie wiem. Może parę lat."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22256 /* ~"Gdybym chciał uprawiać je wystarczająco długo, czy można sprawić, aby wyrosło?"~ */ GOTO 58
  IF ~~ THEN REPLY #22257 /* ~"Czy jest jakiś sposób, aby rosło szybciej?"~ */ GOTO 58
  IF ~~ THEN REPLY #22258 /* ~"Nie mam zamiaru czekać, aż to cholerstwo wyrośnie. Potrzebuję ziół, i to zaraz."~ */ GOTO 60
  IF ~~ THEN REPLY #22259 /* ~"*Naprawdę* potrzebuję tych ziół. Czy można coś na to poradzić?"~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.0 56.1 57.0 57.1 57.3
  SAY #22244 /* ~Opłakujący Drzewa spogląda na nasionko. "Może... gdyby ci bardzo *zależało*, żeby wyrosło..."~ */
  IF ~~ THEN REPLY #22260 /* ~"Co masz na myśli?"~ */ GOTO 59
  IF ~~ THEN REPLY #22261 /* ~Skoncentruj się na nasieniu, siłą swojej *woli* spraw, aby wyrosło.~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22262 /* ~"Hmm, warto spróbować..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #22245 /* ~"To Sigil, przyjacielu. Tutaj wiara jest wszystkim. Wszystkim... od iglicy, na której spoczywa Sigil, na tym nasionku, które trzymasz w swojej ręce kończąc. Jeśli masz wystarczająco dużo *wiary*, wszystko jest możliwe..."~ */
  IF ~~ THEN REPLY #22263 /* ~Skoncentruj się na nasieniu, siłą swojej *woli* spraw, aby wyrosło.~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22264 /* ~"Hmm, warto spróbować..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 56.2 57.2 58.1 58.2 59.0 59.1
  SAY #22246 /* ~"Ku twemu zdziwieniu, w nasionku pojawia się *pęknięcie*, z którego po chwili wyrastają gałęzie, jak palce. Instynktownie upuszczasz nasiono, ale gałęzie przypominające pazury owijają się wokół twojego nadgarstka i nie puszczają."~ */
  IF ~~ THEN REPLY #22265 /* ~"Cóż to?"~ */ JOURNAL #21910 /* ~Już samą *chęcią*, by nasienie wykiełkowało, sprawiłem że zakwitło... teraz to cholerstwo okręciło mi się wokół nadgarstka i nie chce puścić. Przynajmniej nie zajmuje już miejsca w sakwie... lepiej jednak zwrócę tę rzecz Mebbet i zobaczę czy to jest to czego chciała.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #22247 /* ~Opłakujący Drzewa spogląda zaskoczony na gałęzie z kolcami owijające się wokół twojego nadgarstka. "Chyba... chyba kolce na tych gałęziach wystarczą twojej przyjaciółce."~ */
  IF ~~ THEN REPLY #22266 /* ~"Mam nadzieję, że uda jej się zdjąć ze mnie to przekleństwo. Ale zanim odejdę, potrzebuję odpowiedzi na kilka pytań..."~ */ GOTO 28
  IF ~~ THEN REPLY #22267 /* ~"W takim razie zwrócę to jej... Dziękuję za pomoc. Żegnaj."~ */ EXIT
END
