// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWEAPS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWEAPS~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5559 /* ~"STRAŻE! STRAŻE! Mamy tu intruza!!"~ */
  IF ~~ THEN REPLY #5560 /* ~Zrobione.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5561 /* ~"Wybacz, ale nie mogę teraz z tobą rozmawiać. Może później, kiedy wrócisz."~ */
  IF ~~ THEN REPLY #5562 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Sabotage","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #5563 /* ~"Nie wiem jak ci dziękować, żeś zdybał tę stukniętą babę. Skąd mieliśmy wiedzieć, że była Anarchistką? Mogliśmy wszyscy przez nią zginąć. A teraz mów, jak mogę ci pomóc?"~ */
  IF ~~ THEN REPLY #5564 /* ~"Powiedz mi, z czyjego zlecenia powstaje ta machina?"~ */ GOTO 3
  IF ~~ THEN REPLY #5565 /* ~"Wspominałeś coś wcześniej o fazie krytycznej?"~ */ GOTO 24
  IF ~~ THEN REPLY #5566 /* ~"Co to za projekt?"~ */ GOTO 17
  IF ~~ THEN REPLY #5567 /* ~"Jakie ma być przeznaczenie tej rzeczy?"~ */ GOTO 18
  IF ~~ THEN REPLY #5568 /* ~"Dlaczego to takie tajne?"~ */ GOTO 19
  IF ~~ THEN REPLY #5569 /* ~"Kiedy to wszystko będzie gotowe?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5570 /* ~"Czy możesz mi coś powiedzieć o morderstwie, które popełniono w okolicy głównej kuźni?"~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5571 /* ~"Co możesz powiedzieć mi o swoim szefie?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5572 /* ~"Co możesz powiedzieć mi o swoim szefie?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5573 /* ~"Opowiedz mi o inżynierach zatrudnionych przy tym projekcie."~ */ GOTO 6
  IF ~~ THEN REPLY #5574 /* ~"Czy możesz mi powiedzieć, jak dojść do biura urzędnika?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5576 /* ~"Opowiedz mi o Bogowcach."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5577 /* ~"Opowiedz mi o inżynierach zatrudnionych przy tym projekcie."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5578 /* ~"Opowiedz mi o inżynierach zatrudnionych przy tym projekcie."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5579 /* ~"Opowiedz mi o inżynierach zatrudnionych przy tym projekcie."~ */ GOTO 11
  IF ~~ THEN REPLY #5580 /* ~"W tym momencie niczego mi nie potrzeba, dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 14.6
  SAY #5575 /* ~"Nie, nie mogę ci tego powiedzieć. Po pierwsze, nie wiem. Po drugie, podpisałem w kontrakcie umowę tajności, która związuje mnie na zawsze z projektem. Jeżeli projekt upadnie, mogę umrzeć, i tak samo wszyscy moi przyjaciele. Nie podejmę takiego ryzyka."~ */
  IF ~~ THEN REPLY #5581 /* ~"Rozumiem. Opowiedz mi zatem o czymś innym."~ */ GOTO 14
  IF ~~ THEN REPLY #5582 /* ~"Dobrze. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.6 14.7
  SAY #5583 /* ~"To okropne. Słyszałem, że ofiarą był jakiś trep, ale to nie oznacza, że zasłużył sobie na taki koniec. Ponieważ Kuźnia była zamknięta przez większą część roku, to musiał zrobić to ktoś stąd. Mogę powiedzieć jedno. Ręczę za wszystkich naszych robotników. Każdy patrzył każdemu na ręce i dlatego nie ma możliwości, aby mógł być to któryś z nas."~ */
  IF ~~ THEN REPLY #5584 /* ~"Ach tak. Czy zatem odpowiedziałbyś na kilka moich pytań?"~ */ GOTO 14
  IF ~~ THEN REPLY #5585 /* ~"Może i tak. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.7 14.8 16.0
  SAY #5586 /* ~"Zazwyczaj kręci się gdzieś w okolicy. Ona jest githzerai, odrzuconą przez własny lud. Pracuje tutaj, bo dzięki temu nie rzuca się w oczy i nie musi się wstydzić. Ona jest wspaniała i bystra."~ */
  IF ~  Global("Kellera_Met_Dakkon","AR0512",0)
NearbyDialog("DDakkon")
~ THEN REPLY #5587 /* ~"Zastanawiam się, że zechce porozmawiać z moim przyjacielem Dak'konem."~ */ EXTERN ~DDAKKON~ 6
  IF ~~ THEN REPLY #5588 /* ~"Zatem może porozmawiam z nią później. A teraz mam do ciebie jeszcze kilka pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5589 /* ~"Dzięki za to, żeś poświęcił mi swój czas. Miłego dnia życzę."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.9 14.10
  SAY #5590 /* ~"Nasz główny inżynier, Nil Xander, to skończony geniusz. Stworzył rzeczy, o których innym nawet się nie śniło. Ludzie mówią, że skonstruował nawet składany portal, a w wolnych chwilach pracuje podobno nad Kreatorem Snów. Ponoć dawno temu jego rodzina zobowiązała się do wykonania takiego urządzenia dla pewnego człowieka, który nie mógł śnić własnym sumptem. Nasz drugi inżynier, pani Bedai-Lin to może nie aż tak znakomita postać, ale również bardzo bystry specjalista. Bywa czasem omylna, ale jej prace świadczą o tym, że jest zręcznym i obiecującym fachowcem. Zazwyczaj można ich spotkać w głównej sali."~ */
  IF ~~ THEN REPLY #5591 /* ~"Świetnie. W międzyczasie chciałbym, żebyś odpowiedział na kilka moich pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5592 /* ~"Pracuje nad Kreatorem Snów, tak? Być może go poszukam."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.10 14.11
  SAY #5593 /* ~"Biuro urzędnika znajdziesz tuż obok głównej kuźni."~ */
  IF ~~ THEN REPLY #5594 /* ~"Dzięki. Odpowiedz jeszcze na inne pytanie."~ */ GOTO 14
  IF ~~ THEN REPLY #5595 /* ~"Dzięki."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.11 14.12
  SAY #5596 /* ~"Co myślę o Bogowcach? Najlepsza rzecz, jaką mogę rzec o tej frakcji, to może to, że autentycznie troszczymy się o ludzi - nie tylko o członków frakcji, ale o wszystkich. Każdy z nas może stać się bogiem albo kimś więcej niż bóg. I dlatego pomagamy wszystkim. Inaczej stalibyśmy się coraz większymi zarozumialcami, a przez to głupcami. A my nie jesteśmy głupcami."~ */
  IF ~~ THEN REPLY #5597 /* ~"Czas pokaże. Odpowiedz teraz na moje inne pytanie."~ */ GOTO 14
  IF ~~ THEN REPLY #5598 /* ~"Oczywiście. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.12 14.13
  SAY #5599 /* ~"Już zapewne wiesz, że Bedai-Lin została podejrzana o morderstwo. Ona była dobra, ale niegodna większego zaufania. Skąd niby mieliśmy wiedzieć, że jest morderczynią? Nasz główny inżynier to Nil Xander, wspaniały stary człowiek. Ludzie mówią, że skonstruował nawet składany portal, a w wolnych chwilach pracuje podobno nad Kreatorem Snów. Ponoć dawno temu jego rodzina zobowiązała się do wykonania takiego urządzenia dla pewnego człowieka, który nie mógł śnić własnym sumptem. Zazwyczaj można go spotkać w głównej sali."~ */
  IF ~~ THEN REPLY #5600 /* ~"Świetnie. Mam jeszcze jedno pytanie."~ */ GOTO 14
  IF ~~ THEN REPLY #5601 /* ~"Pracuje nad Kreatorem Snów, tak? Być może go poszukam."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.13 14.14
  SAY #5602 /* ~"Dzięki składam mocom, że powstrzymałeś tę sukę Bedai-Lin. Przecież to, co robiła, godziło w życie wszystkich nas tutaj. Jeśli zaś chodzi o naszego inżyniera Nila Xandera, to zazwyczaj można go spotkać w głównej sali. Ten wspaniały konstruktor zbudował w swoim życiu mnóstwo zadziwiających wynalazków, a wiele wskazuje na to, że jeszcze niejeden cud wyjdzie spod jego ręki."~ */
  IF ~~ THEN REPLY #5603 /* ~"Dzięki. Opowiedz mi jeszcze o czymś."~ */ GOTO 14
  IF ~~ THEN REPLY #5604 /* ~"Wiele na to wskazuje, tak? Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.14 14.15
  SAY #5605 /* ~"Skąd mogliśmy wiedzieć, że Bedai-Lin nosi się z zamiarem podkopania całej struktury Bogowców? Wiedzieliśmy, że umie posługiwać się magią, ale nie wiedzieliśmy, że jest Anarchistką. Jeśli zaś chodzi o naszego inżyniera Nila Xandera, to zazwyczaj można go spotkać w głównej sali. Ten wspaniały konstruktor stworzył w swoim życiu mnóstwo zadziwiających wynalazków, a wiele wskazuje na to, że jeszcze niejeden cud wyjdzie spod jego ręki."~ */
  IF ~~ THEN REPLY #5606 /* ~"Rzeczywiście, kto by pomyślał? Mam jeszcze kilka innych pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5607 /* ~"Może zatem poszukam go. Miłego dnia życzę."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 15.0 15.3
  SAY #5608 /* ~Człowiek przypatruje ci się przez dłuższą chwilę, potem zaś decyduje się ci zaufać. "He, he... W tej chwili, cóż w ogóle nie jest słabym punktem? Zewnętrzna powłoka jest wciąż słaba - jeszcze jej nie utwardziliśmy. Porty ogniowe są wyposażone w broń, ale ta jest jeszcze bardzo niestabilna. No i wewnętrzny kocioł parowy pod wpływem obciążenia, jakie mu nadajemy, może w każdej chwili wybuchnąć. Praktycznie rzecz biorąc ta rzecz tylko czeka, żeby rozpaść się w drobny mak. Moim zdaniem największe zagrożenie to mechanizm ogniowy, tutaj na końcu. Jeżeli go trafi szlag, to razem z nim zaraz wszystkich robotników."~ */
  IF ~~ THEN REPLY #5609 /* ~"Dzięki. Mam jeszcze kilka pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5610 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 14.9 16.1
  SAY #5611 /* ~"Chcesz dowiedzieć się czegoś o Kel'lerze? Jakiś walnięty skurl ją zabił i to wszystko, co mam na jej temat do powiedzenia. Kończymy tę rozmowę, bo już odchodzisz. Straże! Zabierzcie stąd tego trepa!"~ */
  IF ~~ THEN REPLY #5612 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0 4.0 5.1 6.0 7.0 8.0 9.0 10.0 11.0 12.0 15.6 17.3 18.3 19.4 20.4 21.0 22.1 23.1 24.1 25.0
  SAY #5613 /* ~"Tak? Co takiego chcesz wiedzieć?"~ */
  IF ~  GlobalLT("Sabotage","GLOBAL",4)
GlobalGT("Sabotage","GLOBAL",1)
~ THEN REPLY #5614 /* ~"Jakie są słabe strony tej machiny?"~ */ GOTO 15
  IF ~~ THEN REPLY #5615 /* ~"Wspomniałeś coś poprzednio o fazie krytycznej."~ */ GOTO 24
  IF ~~ THEN REPLY #5616 /* ~"Co to za projekt?"~ */ GOTO 17
  IF ~~ THEN REPLY #5617 /* ~"Jakie ma być przeznaczenie tej rzeczy?"~ */ GOTO 18
  IF ~~ THEN REPLY #5618 /* ~"Dlaczego to takie tajne?"~ */ GOTO 19
  IF ~~ THEN REPLY #5619 /* ~"Kiedy to wszystko będzie gotowe?"~ */ GOTO 20
  IF ~~ THEN REPLY #5620 /* ~"Powiedz mi, z czyjego zlecenia powstaje ta machina?"~ */ GOTO 3
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5621 /* ~"Czy możesz mi coś powiedzieć o morderstwie, które popełniono w okolicy głównej kuźni?"~ */ GOTO 4
  IF ~  !Dead("Kellera")
~ THEN REPLY #5622 /* ~"Co możesz powiedzieć mi o swoim szefie?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5623 /* ~"Co możesz powiedzieć mi o swoim szefie?"~ */ GOTO 13
  IF ~  !Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5624 /* ~"Opowiedz mi o inżynierach zatrudnionych przy tym projekcie."~ */ GOTO 6
  IF ~~ THEN REPLY #5626 /* ~"Czy możesz mi powiedzieć, jak dojść do biura urzędnika?"~ */ GOTO 7
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5627 /* ~"Opowiedz mi o Bogowcach."~ */ GOTO 8
  IF ~  False()
!Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5628 /* ~"Opowiedz mi o inżynierach zatrudnionych przy tym projekcie."~ */ GOTO 9
  IF ~  Global("Sabotage","GLOBAL",6)
!Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5629 /* ~"Opowiedz mi o inżynierach zatrudnionych przy tym projekcie."~ */ GOTO 10
  IF ~  !Global("Sabotage","GLOBAL",6)
Global("F_Ass","GLOBAL",5)
~ THEN REPLY #5630 /* ~"Opowiedz mi o inżynierach zatrudnionych przy tym projekcie."~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #16224 /* ~"Co to za projekt?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #5631 /* ~"W tym momencie niczego mi nie potrzeba, dziękuję."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #5625 /* ~Człowiek przygląda ci się podejrzliwie. "A czemu cię to interesuje?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #5632 /* ~"Ponieważ sam zajmuję się trochę magią i myślałem, że moje umiejętności mogłyby się przydać dla celów optymalizacji robót nad tym projektem. Jeżeli podasz mi słabe strony tego urządzenia, może potrafiłbym jakoś im zaradzić."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5633 /* ~"Ponieważ sam zajmuję się trochę magią i myślałem, że moje umiejętności mogłyby się przydać dla celów optymalizacji robót nad tym projektem. Jeżeli podasz mi słabe strony tego urządzenia, może potrafiłbym jakoś im zaradzić."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #5634 /* ~"Bo to cała rzecz wygląda na bardzo kruchą."~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #5635 /* ~"Ponieważ zostałem upoważniony do obejrzenia tego projektu, i chciałbym poznać jego słabe strony."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 12
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #5636 /* ~"Ponieważ zostałem upoważniony do obejrzenia tego projektu, i chciałbym poznać jego słabe strony."~ */ GOTO 16
  IF ~~ THEN REPLY #5637 /* ~"Jestem po prostu ciekawy, to wszystko."~ */ GOTO 16
  IF ~~ THEN REPLY #5638 /* ~"Zapomnij o tym. Mam kilka innych pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5639 /* ~"Zapomnij o tym. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 15.2 15.4 15.5
  SAY #5640 /* ~Człowiek przygląda ci się jeszcze bardziej podejrzliwie. "Nie zamierzam odpowiadać na takie pytania. Jeśli interesują cię takie sprawy, porozmawiaj z Kel'lerą, a nie ze mną."~ */
  IF ~  !Dead("Kellera")
~ THEN REPLY #5641 /* ~"Gdzie jest Kel'lera?"~ */ GOTO 5
  IF ~  Dead("Kellera")
~ THEN REPLY #5642 /* ~"Gdzie jest Kel'lera?"~ */ GOTO 13
  IF ~~ THEN REPLY #5643 /* ~"Nie, zapomnij, że o to pytałem. Do widzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2 14.2 14.16 18.0 19.1 20.1
  SAY #5644 /* ~"Wydaje mi się, że to broń. Nie wiemy, czy ma ona przeznaczenie wojenne czy łowieckie, i na wszystkie moce, jeżeli to broń myśliwska, to nie chciałbym zobaczyć stworzenia, które zostanie z niej ugodzone. Ale kiedy się już z tym uwiniemy, powstanie rzecz dorównująca Okrętowi Chaosu, który kilka lat temu zbudowali Strażnicy Zagłady, wespół z tanar'ri. Przynajmniej na coś takiego się zanosi."~ */
  IF ~~ THEN REPLY #5645 /* ~"Co ta rzecz ma robić?"~ */ GOTO 18
  IF ~~ THEN REPLY #5646 /* ~"Dlaczego to takie tajne?"~ */ GOTO 19
  IF ~~ THEN REPLY #5647 /* ~"Kiedy to wszystko będzie gotowe?"~ */ GOTO 20
  IF ~~ THEN REPLY #5648 /* ~"Mam jeszcze kilka innych pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5649 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.3 14.3 17.0 19.2 20.2
  SAY #5650 /* ~"Nie jestem pewien. O tych sprawach powinieneś porozmawiać z którymś z inżynierów. Wiem tylko, że to jest wyposażone w wielki, skoncentrowany strumień gorąca; to udoskonaleniu tej właśnie części poświęciliśmy tyle czasu. Zdołaliśmy nawet umocować to na stałe w tym urządzeniu. Ale są jeszcze inne elementy, nad którymi nawet nie zaczęliśmy pracować. Zajmiemy się nimi dopiero wówczas, kiedy zakończymy jedną fazę robót."~ */
  IF ~~ THEN REPLY #5651 /* ~"Powiedz mi jeszcze raz, co to takiego?"~ */ GOTO 17
  IF ~~ THEN REPLY #5652 /* ~"Dlaczego to takie tajne?"~ */ GOTO 19
  IF ~~ THEN REPLY #5653 /* ~"Kiedy to wszystko będzie gotowe?"~ */ GOTO 20
  IF ~~ THEN REPLY #5654 /* ~"Odpowiedz, proszę, na kilka moich pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5655 /* ~"Dziękuję. To na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 14.4 17.1 18.1 20.3
  SAY #5656 /* ~"Gdybyś wiedział, że twój wróg buduje przeciw tobie broń, czyż nie zrobiłbyś wszystkiego, aby ją zniszczyć? Nie mamy zielonego pojęcia, kto będzie celem tej broni. Wystarczą nam zapewnienia wysoko postawionych, że broń ta nie zostanie użyta w sposób, który uznalibyśmy za niestosowny. Nikt z nas nie wie, z czyjego zlecenia pracujemy, więc też nie ma obaw, abyśmy mieli się z tym wygadać komuś, kto chciałby tę broń zniszczyć... Szczególnie, że wszyscy przypieczętowaliśmy jej stan własnym życiem."~ */
  IF ~~ THEN REPLY #5657 /* ~"Co chcesz przez to powiedzieć?"~ */ GOTO 21
  IF ~~ THEN REPLY #5658 /* ~"Powiedz mi jeszcze raz, co to takiego?"~ */ GOTO 17
  IF ~~ THEN REPLY #5659 /* ~"Co ta rzecz ma robić?"~ */ GOTO 18
  IF ~~ THEN REPLY #5660 /* ~"Kiedy to wszystko będzie gotowe?"~ */ GOTO 20
  IF ~~ THEN REPLY #5661 /* ~"Odpowiedz, proszę, na kilka moich pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5662 /* ~"Dziękuję. To na razie."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.5 14.5 17.2 18.2 19.3
  SAY #5663 /* ~"Całe urządzenie najprawdopodobniej nie będzie gotowe wcześniej, jak w następnym dziesięcioleciu, ale jego najistotniejsza część powstanie już w tym roku. Do jej wykończenia potrzeba jakichś magicznych rytuałów, a to podobno pochłania wiele czasu. To będzie dla nas bardzo pokrzepiające, że nie będziemy przypieczętowani do niestabilnej konstrukcji, która w każdej chwili może runąć."~ */
  IF ~~ THEN REPLY #5664 /* ~"Przypieczętowani? Co chcesz przez to powiedzieć?"~ */ GOTO 21
  IF ~~ THEN REPLY #5665 /* ~"Powiedz mi jeszcze raz, co to takiego?"~ */ GOTO 17
  IF ~~ THEN REPLY #5666 /* ~"Co ta rzecz ma robić?"~ */ GOTO 18
  IF ~~ THEN REPLY #5667 /* ~"Dlaczego to takie tajne?"~ */ GOTO 19
  IF ~~ THEN REPLY #5668 /* ~"Chciałbym ci zadać jeszcze kilka pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5669 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #5670 /* ~"Z uwagi na specyfikę całego projektu - tajność i takie rzeczy, nie mówiąc już o czarach, które umożliwiają nam prowadzenie robót przy tej machinie - musieliśmy przypieczętować część naszego życia do machiny. Pieczęcie będą zdjęte, kiedy prace zostaną zakończone, ale jeżeli machina będzie niesprawna, albo też, bogowie brońcie nas, padnie ofiarą sabotażu, wszyscy zginiemy."~ */
  IF ~~ THEN REPLY #5671 /* ~"To brzmi niewesoło. Tak czy siak, chciałbym zadać ci jeszcze kilka innych pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5672 /* ~"To brzmi niewesoło. Tak czy siak, życzę powodzenia. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #5673 /* ~Widzisz odzianego w szaty Bogowców mężczyznę - diabelstwo, pochłoniętego obserwacją przedmiotu znajdującego się w środku pomieszczenia. "Naprawdę nie mogę teraz z tobą rozmawiać. Znajdujemy się w fazie krytycznej."~ */
  IF ~~ THEN REPLY #5674 /* ~"W fazie krytycznej?"~ */ GOTO 24
  IF ~~ THEN REPLY #5675 /* ~"Miałem nadzieję, że odpowiesz na kilka moich pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5676 /* ~"Wybacz zatem, że ci chciałem przeszkodzić. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from:
  SAY #5677 /* ~"Znowu ty? A czegóż chcesz tym razem?"~ */
  IF ~~ THEN REPLY #5678 /* ~"Wspominałeś coś wcześniej o fazie krytycznej."~ */ GOTO 24
  IF ~~ THEN REPLY #5679 /* ~"Mam do ciebie kilka pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5680 /* ~"W takim razie zostawię cię w spokoju. Do zobaczenia."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.1 14.1 22.0 23.0
  SAY #5681 /* ~"Tak. Projekt, nad którym pracujemy, to broń. Ale może znaleźć również pokojowe zastosowanie. Daleko jeszcze do końca robót, ale teraz znajdujemy się w bardzo delikatnej fazie, na tyle delikatnej, że jeżeli jakiś trep nawali, to wszyscy znajdziemy się w księdze umarłych."~ */
  IF ~~ THEN REPLY #5682 /* ~"Czym się zajmujecie?"~ */ GOTO 25
  IF ~~ THEN REPLY #5683 /* ~"Och. Mam kilka pytań."~ */ GOTO 14
  IF ~~ THEN REPLY #5684 /* ~"Ach. Zatem życzę powodzenia."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #5685 /* ~"Regulujemy teraz pewne parametry w dolnym magicznym rezonansie urządzenia. Jeden błąd może zniweczyć cały projekt, a jeżeli coś takiego nastąpi, wszyscy padniemy ofiarą niekontrolowanej fali magii."~ */
  IF ~~ THEN REPLY #5686 /* ~"Ach tak. A czy zechciałbyś odpowiedzieć na kilka moich pytań?"~ */ GOTO 14
  IF ~~ THEN REPLY #5687 /* ~"Ach tak. Zatem żegnaj."~ */ EXIT
END
