// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPORPHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPORPHIR~

IF ~  Global("Porphiron","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25992 /* ~Wydaje się, że każdy centymetr skóry tego człowieka jest pokryty siecią czarnych linii, jakby jakiś artysta chciał piórem podkreślić każde załamanie na jego ciele. Ogólny efekt jest taki, że nawet gdy jego twarz nie ma żadnego wyrazu, wygląda tak, jakby marszczył czoło.~ */
  IF ~~ THEN REPLY #25993 /* ~"Witaj."~ */ DO ~SetGlobal("Porphiron","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #25994 /* ~Zostaw człowieka z rysunkami na twarzy w spokoju.~ */ EXIT
END

IF ~  GlobalGT("Porphiron","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26633 /* ~Widzisz przed sobą Porfiriona. Ciągle stoi na ulicy, nie zwracając uwagi na przechodniów. Linie na jego twarzy łączą się ze sobą pod kątem prostym.~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26686 /* ~"Witaj, Porfirionie. Czy mogę zadać ci parę pytań?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26687 /* ~"Witaj, Porfirionie."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26688 /* ~"Witaj, Porfirionie. Czy mogę zadać ci parę pytań?"~ */ GOTO 3
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26689 /* ~"On zwraca cię do ciebie i pyta: Czy mogę ci zadać parę pytań?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26690 /* ~"On zwraca cię do ciebie, Porfirionie."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26691 /* ~"On zwraca cię do ciebie i pyta: Czy mogę ci zadać parę pytań?"~ */ GOTO 3
  IF ~~ THEN REPLY #26692 /* ~Zostaw Porfiriona w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.4
  SAY #26634 /* ~Kiedy zaczynasz mówić, linie na twarzy Porfiriona zaczynają łagodnieć. "On spytałby: Czy masz sznur paciorków, który został skradziony?"~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26694 /* ~"Tak mi się wydaje? Czy o to ci chodzi?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26697 /* ~Po odzyskaniu naszyjnika z rąk bandytów na zewnątrz karczmy pod Gorejącym Człekiem, zwróciłem go Porfirionowi.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26695 /* ~"Jeszcze nie... Możesz powtórzyć, gdzie ci go ukradziono?"~ */ GOTO 23
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26696 /* ~"Jeszcze nie. Jeszcze poszukam, a potem wrócę."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 1.5
  SAY #26635 /* ~"On pyta: Jakie pytania zaraz zadasz?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26698 /* ~"Czy możesz nauczyć mnie stąpać ścieżką wojownika?"~ */ GOTO 35
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #26699 /* ~"Chcę zrezygnować z mojej aktualnej klasy i znowu zostać wojownikiem."~ */ GOTO 32
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26700 /* ~"Powiedz mi, czy mogę już przejść następny etap szkolenia?"~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26701 /* ~"Powiedz mi, czy mogę już przejść następny etap szkolenia?"~ */ GOTO 53
  IF ~  ExtraProficiencyGT(Protagonist,0)
ProficiencyGT(Protagonist,FIST,0)
ProficiencyGT(Protagonist,DAGGER,0)
ProficiencyGT(Protagonist,HAMMER,0)
ProficiencyGT(Protagonist,AXE,0)
ProficiencyGT(Protagonist,CLUB,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26702 /* ~"Jestem już biegły we wszystkich rodzajach broni, Porfirionie. Czy możesz mnie nauczyć czegoś jeszcze?"~ */ GOTO 52
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26703 /* ~"Chcę poznać tajniki następnych typów broni."~ */ GOTO 42
  IF ~~ THEN REPLY #26704 /* ~"Nie mam teraz do ciebie żadnych pytań. Może wrócę tu jeszcze później."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26636 /* ~"On ma imię: Zwą go Porfirion." Głos tego mężczyzny brzmi jak gong, kiedy mówi, linie na jego twarzy zaczynają się zmieniać i przybierają kształt kół. "On chciałby wiedzieć: czemu się do niego zwracasz?"~ */
  IF ~~ THEN REPLY #26706 /* ~"Chcę zadać ci kilka pytań dotyczących tego miasta."~ */ GOTO 5
  IF ~~ THEN REPLY #26707 /* ~"Mniejsza z tym. Wybacz, że zawracam ci głowę."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 1.3 4.0
  SAY #26637 /* ~"On chciałby ci powiedzieć: On nie może odpowiedzieć na twoje pytania." Linie na twarzy mężczyzny zaczynają tworzyć kąty ostre, a potem rozsypują się w gęstwinę gryzmołów. "On znalazł się w tym miejscu otoczonym murami dopiero niedawno."~ */
  IF ~~ THEN REPLY #26708 /* ~"Zatem dobrze. Muszę spytać cię o to, dlaczego linie na twojej twarzy... poruszają się?"~ */ GOTO 6
  IF ~~ THEN REPLY #26709 /* ~"Wybacz, że zawracam ci głowę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26638 /* ~"Linie pokazują gniew: Czy obrazisz się?" Linie na twarzy mężczyzny powoli zaczynają się prostować, przybierając kształt lekko zakrzywionych linii. "On nie chciał cię obrazić: Czy przyjmiesz jego najszczersze przeprosiny?"~ */
  IF ~~ THEN REPLY #26710 /* ~"Nie obraziłeś mnie... dlaczego jesteś taki zły?"~ */ GOTO 7
  IF ~~ THEN REPLY #26712 /* ~"Dziękuję za twój cenny czas. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26639 /* ~"On opowie ci o wydarzeniu, do którego doszło w ostatnich dniach: Czy wiesz, że on został napadnięty przez trzech zbirów? Zażądali od niego pewnego przedmiotu. On bał się, że go zaatakują: Co zrobił? Oddał im przedmiot, którego chcieli."~ */
  IF ~~ THEN REPLY #26713 /* ~"Nie dziwię się, że się bałeś. Jeśli było ich trzech, mogli cię zabić, gdybyś nie oddał im tego przedmiotu."~ */ GOTO 8
  IF ~~ THEN REPLY #26714 /* ~"Rozumiem. Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26640 /* ~"On nie został dobrze zrozumiany." Linie na twarzy mężczyzny zaczynają tworzyć kąty ostre, ale potem z powrotem wygładzają się. "On nie obawiał się, że go zabiją: On bał się, że będzie musiał zabić tych trzech."~ */
  IF ~~ THEN REPLY #26715 /* ~"Jeśli mogłeś ich zabić, to dlaczego pozwoliłeś, żeby cię obrabowali?"~ */ GOTO 9
  IF ~~ THEN REPLY #26717 /* ~"Zachowałeś się bardzo dzielnie. I roztropnie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26641 /* ~"On kroczy ścieżką wojownika: On umie obchodzić się z różnymi rodzajami broni. Pięść, miecz, kij, topór, młot... Żadna z tych broni nie jest mu obca."~ */
  IF ~~ THEN REPLY #26718 /* ~"To nie jest żadne wytłumaczenie... Jeśli jesteś takim świetnym wojownikiem, to dlaczego pozwoliłeś, żeby cię obrabowali?"~ */ GOTO 10
  IF ~~ THEN REPLY #26719 /* ~"Rozumiem. Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26642 /* ~"Jemu zabroniono atakować." Kiedy mężczyzna mówi, linie na jego twarzy zdają się rozchodzić jak fale. "Gdyby on zaatakował tych trzech w gniewie, przysięga wystrzegania się przemocy zostałaby złamana."~ */
  IF ~~ THEN REPLY #26720 /* ~"Przysięga wystrzegania się przemocy? Jesteś wojownikiem i *pacyfistą*?"~ */ GOTO 11
  IF ~~ THEN REPLY #26721 /* ~"Rozumiem. Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26643 /* ~"On nie zna dobrze twojej mowy: Co to znaczy być 'passy-fistą'?"~ */
  IF ~~ THEN REPLY #26722 /* ~"Mniejsza z tym. Po co ci takie umiejętności, jeśli nie wolno ci nikogo zaatakować?"~ */ GOTO 12
  IF ~~ THEN REPLY #26723 /* ~"To nieważne. Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26644 /* ~"On należy do *Bractwa Erit Agge*. Czekamy na Dni Ostateczne, kiedy zostaniemy powołani do bitwy. Do tego czasu on nie może wykorzystywać swoich umiejętności."~ */
  IF ~~ THEN REPLY #26724 /* ~"A zanim do tego dojdzie, pozwolisz, żeby okradano cię na ulicy i nie będziesz się bronił?"~ */ GOTO 13
  IF ~~ THEN REPLY #26725 /* ~"Jeśli takie są twoje zasady, to udało ci się je zachować. Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26645 /* ~"On wyjaśni: Ten przedmiot przedstawia dużą wartość. Ale zasady *Erit Agge* są dla niego o wiele cenniejsze."~ */
  IF ~~ THEN REPLY #26727 /* ~"Nie możesz walczyć, ale może jest jakaś szansa, żeby namówić tych złodziei, by oddali ci twój przedmiot?"~ */ GOTO 14
  IF ~~ THEN REPLY #26728 /* ~"Rozumiem. Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #26646 /* ~"On zwrócił się do tych trzech, żeby oddali mu ten przedmiot: Co się stało? Jego prośby zostały przyjęte z pogardą: Napastnicy nie chcieli zwrócić mu przedmiotu."~ */
  IF ~~ THEN REPLY #26729 /* ~"Może spróbuję odzyskać dla ciebie ten przedmiot."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Porphiron_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #26730 /* ~"Mogę złajać ich jak psy i zabrać to, co ukradli."~ */ GOTO 19
  IF ~~ THEN REPLY #26731 /* ~"Jeśli mi zapłacisz, to mogę ten przedmiot dla ciebie odzyskać."~ */ GOTO 15
  IF ~~ THEN REPLY #26732 /* ~"Rozumiem. Przykro mi z powodu twojej straty. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #26647 /* ~"On przeprasza: On nie ma już nic więcej, co można by było zabrać."~ */
  IF ~~ THEN REPLY #26733 /* ~"W takim razie po prostu ich pozabijam."~ */ GOTO 19
  IF ~~ THEN REPLY #26734 /* ~"Nie masz *nic*?"~ */ GOTO 16
  IF ~~ THEN REPLY #26735 /* ~"Zatem nie mogę ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #26648 /* ~"On przeprasza po raz kolejny: Czy zgodzisz się przejść szkolenie?"~ */
  IF ~~ THEN REPLY #26736 /* ~"Szkolenie? W czym?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Porphiron_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #26738 /* ~"Nie interesuje mnie to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26649 /* ~"On umie obchodzić się z różnymi rodzajami broni: Pięść, miecz, kij, topór, młot: Żadna z tych broni nie jest mu obca. Czy chcesz także je poznać?"~ */
  IF ~~ THEN REPLY #26739 /* ~"Hmmmm. Szkolenie w posługiwaniu się bronią? Jeśli to za darmo..."~ */ GOTO 18
  IF ~~ THEN REPLY #26740 /* ~"Nie interesuje mnie to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26650 /* ~"On wyjawia cenę: Przynieś mu tylko skradziony przedmiot, nic więcej."~ */
  IF ~~ THEN REPLY #26741 /* ~"Zgoda, zrobię to. Jak wyglądał ten skradziony przedmiot?"~ */ GOTO 22
  IF ~~ THEN REPLY #26742 /* ~"Nie interesuje mnie to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1 15.0
  SAY #26651 /* ~"On musi spytać: Czy masz zamiar użyć przemocy wobec tych trzech, którzy go okradli?"~ */
  IF ~~ THEN REPLY #26743 /* ~"Jeśli nie będą mieli na tyle rozsądku, żeby mi go oddać, kiedy ich poproszę, to może się zrobić niewesoło."~ */ GOTO 20
  IF ~~ THEN REPLY #26744 /* ~"Nie, jeśli będę mógł coś na to poradzić."~ */ GOTO 21
  IF ~~ THEN REPLY #26745 /* ~"Obawiam się, że nie mogę ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26652 /* ~Linie na twarzy mężczyzny przybierają formę zachodzących na siebie elips. "Jeśli tylko taką wiadomość rozumieją, to właśnie w taki sposób trzeba z nimi rozmawiać."~ */
  IF ~~ THEN REPLY #26747 /* ~"Zgoda. Co to był za przedmiot?"~ */ GOTO 22
  IF ~~ THEN REPLY #26748 /* ~"Obawiam się, że nie mogę ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26653 /* ~"On ma duże obawy: Oni nie zrozumieją wiadomości, która nie będzie poparta przemocą." Linie na twarzy mężczyzny przybierają kształt elips. "Ale on nie zabrania ci spróbować."~ */
  IF ~~ THEN REPLY #26749 /* ~"Zgoda. Co to był za przedmiot?"~ */ GOTO 22
  IF ~~ THEN REPLY #26751 /* ~"Obawiam się, że nie mogę ci pomóc. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0 20.0 21.0
  SAY #26654 /* ~"Ten przedmiot to różaniec z czarnych i czerwonych paciorków, który nosi się na szyi. Wartości tych paciorków nie można wyznaczyć miedzią: Ich wartość trzeba mierzyć wiarą."~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26752 /* ~"Czekaj. Mam przy sobie naszyjnik, którego szukasz. Czy to ten?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26756 /* ~Wędrując po Ulu spotkałem mężczyznę z całymi seriami pląsających po jego skórze linii. Twierdzi, że naszyjnik jego "bractwa"... Erit-Agge, jak mi się wydaje... został ukradziony przez trzech zbirów ubranych w czarno - czerwone stroje. Miało do tego dojść przed "gospodą, która w środku płonie." Okazało się, że już odebrałem naszyjnik tym trzem łotrom, tak więc mogłem go od razu zwrócić.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26754 /* ~"Zobaczę, czy uda mi się odzyskać ten naszyjnik. Czy wiesz, gdzie można znaleźć tych trzech bandytów?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 2.1 22.1
  SAY #26655 /* ~"On wie, gdzie doszło do wymiany gniewnych słów i gdzie przepadł ten przedmiot: Przy barze, który płonie wewnątrz. Tych trzech stało przed nim: Ich szaty były czarno-czerwone."~ */
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #26757 /* ~"Trzech złodziei ubranych na czerwono i czarno, stojący przed barem, który pali się w środku? To nie powinno być zbyt trudne do znalezienia. Żegnaj."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26760 /* ~Wędrując po Ulu spotkałem mężczyznę z całymi seriami pląsających po jego skórze linii. Twierdzi, że naszyjnik jego "bractwa"... Erit-Agge, jak mi się wydaje... został ukradziony przez trzech zbirów ubranych w czarno - czerwone stroje. Miało do tego dojść przed "gospodą, która w środku płonie." Zobaczę czy uda mi się znaleźć to miejsce - może nawet odzyskam wtedy zrabowaną własność tego człowieka.~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #26758 /* ~"Trzech bandytów, ubranych w czerwone i czarne szaty, przed gospodą Pod Gorejącym Człekiem. Poszukam ich. Żegnaj."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26759 /* ~Wędrując po Ulu spotkałem mężczyznę z całymi seriami pląsających po jego skórze linii. Twierdzi, że naszyjnik jego "bractwa"... Erit-Agge, jak mi się wydaje... został ukradziony przez trzech zbirów ubranych w czarno - czerwone stroje. Stało się to na zewnątrz gospody pod Gorejącym Człekiem. Pójdę sprawdzić czy uda mi się go odzyskać.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.0 22.0
  SAY #26656 /* ~"On widzi, co masz w ręku: To paciorki, które on kiedyś utracił." Mężczyzna zabiera różaniec z twojej ręki... Kiedy to robi, spostrzegasz, że jego ręce są pokryte takimi samymi liniami jak jego twarz. "On ma pytanie: Jak udało ci się odebrać paciorki tym trzem?"~ */
  IF ~  Dead("ThugP1")
~ THEN REPLY #26761 /* ~"Udało mi się ich zabić i zabrać paciorki."~ */ GOTO 25
  IF ~  Global("Porphiron_Necklace","GLOBAL",0)
!Dead("ThugP1")
~ THEN REPLY #26762 /* ~"Udało mi się go im ukraść."~ */ GOTO 26
  IF ~  Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26763 /* ~"Udało mi się go od nich odkupić."~ */ GOTO 28
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26764 /* ~"Naopowiadałem im trochę małych kłamstw, a oni zdecydowali się oddać mi paciorki."~ */ GOTO 27
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26765 /* ~"Udało mi się ich przekonać, że w ich interesie leży oddanie mi tego naszyjnika."~ */ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",1)
!Global("Porphiron_Necklace","GLOBAL",1)
~ THEN REPLY #26766 /* ~Kłamstwo: "Ee... Udało mi się ich przekonać, żeby mi go oddali. Zrobili to z radością."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26767 /* ~Kłamstwo: "Ee... Udało mi się go od nich odkupić. Całkiem chętnie się o niego targowali."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1 26.2 27.1 27.2 28.1 28.2
  SAY #26657 /* ~"On jest zadowolony: Wiadomość przemocy została przekazana. On dziękuje."~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26768 /* ~"Cała przyjemność po mojej stronie. Jeśli nie możesz brać udziału w walce, to w jaki sposób zdobyłeś umiejętności potrzebne wojownikowi?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26769 /* ~"A co ze szkoleniem we władaniu bronią, które mi obiecałeś?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #26658 /* ~"On wie: Ci, co walczą za pomocą oszustw, otrzymali od Bractwa *Erit Agge* swoją nazwę." Na twarzy Porfiriona znowu pojawiają się kąty ostre. "Nazywamy ich oszustami: Stąpają oni ścieżką bez żadnych zasad i bez honoru."~ */
  IF ~~ THEN REPLY #26770 /* ~"Gdybyś był prawdziwym wojownikiem, nauczyłbyś się używać KAŻDEGO dostępnego typu broni."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26771 /* ~Prawda: "Och, złodziei trzeba było zabić."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26772 /* ~Kłamstwo: "Och, złodziei trzeba było zabić."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 24.3 24.4 24.5
  SAY #26659 /* ~"On wie: Ci, co walczą za pomocą słów, otrzymali od Bractwa *Erit Agge* swoją nazwę." Na twarzy Porfiriona znowu pojawiają się kąty ostre. "Nazywamy ich dyplomatami: Stąpają oni ścieżką bez żadnych zasad i bez honoru."~ */
  IF ~~ THEN REPLY #26773 /* ~"Gdybyś był prawdziwym wojownikiem, nauczyłbyś się używać KAŻDEGO dostępnego typu broni."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26774 /* ~Prawda: "Och, złodziei trzeba było zabić."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26775 /* ~Kłamstwo: "Och, złodziei trzeba było zabić."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 24.2 24.6
  SAY #26660 /* ~"On wie: Ci, co walczą za pomocą monet, otrzymali od Bractwa *Erit Agge* swoją nazwę." Na twarzy Porfiriona znowu pojawiają się kąty ostre. "Nazywamy ich kupcami: Stąpają oni ścieżką bez żadnych zasad i bez honoru."~ */
  IF ~~ THEN REPLY #26776 /* ~"Gdybyś był prawdziwym wojownikiem, nauczyłbyś się używać KAŻDEGO dostępnego typu broni."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26777 /* ~Prawda: "Och, złodziei trzeba było zabić."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26778 /* ~Kłamstwo: "Och, złodziei trzeba było zabić."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #26661 /* ~"On prosi o wybaczenie: On nie chciał cię obrazić." Linie na twarzy Porfiriona nagle się zaostrzają, a potem powoli zaczynają przybierać kształt zmarszczek na powierzchni wody. "On prosi o przyjęcie najszczerszych podziękowań za wielką przysługę."~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26779 /* ~"Nie ma za co. Jednak mam do ciebie pytanie: Jeśli nie możesz brać udziału w walce, to w jaki sposób zdobyłeś umiejętności potrzebne wojownikowi?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26780 /* ~"Hmmm. A co ze szkoleniem w walce bronią, który mi obiecałeś?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.0 29.0
  SAY #26662 /* ~"On wyjaśnia: *Erit Agge* może kogoś szkolić tylko wtedy, jeśli nie ma między nimi gniewu."~ */
  IF ~~ THEN REPLY #26781 /* ~"Rozumiem. Czy mógłbyś mnie nauczyć, jak się posługiwać tymi rodzajami broni?"~ */ GOTO 31
  IF ~~ THEN REPLY #26782 /* ~"Pytam tylko z ciekawości. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.1 29.1 30.0
  SAY #26663 /* ~"On mógłby cię szkolić, tak. Ale on cię ostrzega: Wraz ze znajomością przemocy przychodzi pokusa, żeby jej użyć."~ */
  IF ~~ THEN REPLY #26783 /* ~"Mam nadzieję."~ */ GOTO 32
  IF ~~ THEN REPLY #26784 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.1 31.0
  SAY #26664 /* ~"On przemawia: Czy twoją wolą jest porzucić swoją wcześniejszą ścieżkę? Nie można podążać ścieżką wojownika, jeśli nie ma się skupionego umysłu."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26785 /* ~"Oprócz walki nie mam teraz żadnego innego zajęcia. Chcę wstąpić na ścieżkę wojownika."~ */ GOTO 35
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #26786 /* ~"Tak. Chcę porzucić Sztukę maga i wstąpić na drogę wojownika."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #26787 /* ~"Nie chcę już być złodziejem... Chcę wstąpić na drogę wojownika."~ */ GOTO 33
  IF ~~ THEN REPLY #26788 /* ~"Nie, nie teraz. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1 32.2
  SAY #26665 /* ~"On cię słyszał: Możesz wstąpić na ścieżkę wojownika. On prosi cię o uwagę..."~ */
  IF ~~ THEN REPLY #26790 /* ~"Dobrze..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #26666 /* ~"Teraz podążasz ścieżką wojownika. Czy chcesz dowiedzieć się o możliwych drogach?"~ */
  IF ~~ THEN REPLY #26791 /* ~"Tak."~ */ GOTO 35
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26792 /* ~"One nie są mi już obce. Czego możesz mnie nauczyć o posługiwaniu się bronią?"~ */ GOTO 42
  IF ~~ THEN REPLY #26794 /* ~"Nie teraz... Po prostu myślę o zmianie swojej ścieżki. Dziękuję, Porfirionie."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.0 32.0 34.0 42.10 51.0
  SAY #26667 /* ~"On będzie cię szkolił." Linie na jego twarzy przybierają kształt trójkątów. "One pokazują trzy podstawy treningu: skupienie, doświadczenie, biegłość."~ */
  IF ~~ THEN REPLY #26795 /* ~"Nie rozumiem. Możesz mi to wytłumaczyć?"~ */ JOURNAL #26798 /* ~Porfirion opowiedział mi o treningu w sztuce walki. Zaznaczył, że jeśli chciałbym dowiedzieć się więcej na ten temat, muszę przyjąć profesję wojownika. Gdybym był czarodziejem, złodziejem, lub zajmował się jeszcze czymś innym, musiałbym porzucić te profesje, aby nauczyć się więcej o broniach i walce.~ */ GOTO 36
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26796 /* ~"Te pojęcia już znam. Co możesz mi po wiedzieć o posługiwaniu się bronią?"~ */ GOTO 42
  IF ~~ THEN REPLY #26797 /* ~"Prawdę mówiąc, to może wrócę tu jeszcze, gdy będę gotowy na szkolenie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26668 /* ~"On zacznie od skupienia: Żeby nauki odniosły skutek, musisz umieć się skupić. Musisz związać się wyłącznie ze ścieżką wojownika. Musisz być tylko wojownikiem, nikim innym."~ */
  IF ~~ THEN REPLY #26799 /* ~"Rozumiem: Jeśli chcę nauczyć się posługiwania bronią, mogę być tylko wojownikiem. Jaki jest następny etap szkolenia?"~ */ JOURNAL #26803 /* ~Porfiron powiedział, że istnieje granica tego jak wiele wojownik może się nauczyć na początku. Zależy ona od poziomu wojownika. Nalegał, abym wrócił po więcej lekcji, gdy nabędę więcej doświadczenia.~ */ GOTO 37
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26800 /* ~"Te pojęcia już znam. Co możesz mi po wiedzieć o posługiwaniu się bronią?"~ */ GOTO 42
  IF ~~ THEN REPLY #26801 /* ~"Prawdę mówiąc, to może wrócę tu jeszcze, gdy będę gotowa na szkolenie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26669 /* ~"Teraz on opowie o doświadczeniu: Prawdziwa znajomość walki pochodzi tylko z doświadczenia. Zawsze jest pewien limit tego, ile wiedzy o posługiwaniu się bronią można zaabsorbować. Kiedy osiągnie się nowy poziom w sztuce wojownika, jest się gotowym na następne nauki."~ */
  IF ~  Global("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26804 /* ~"Rozumiem: Istnieje pewne ograniczenie wiedzy, którą mogę posiąść na początku, ale potem, po osiągnięciu następnego poziomu, to ograniczenie zostaje zwiększone. Jaki jest następny etap szkolenia?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26805 /* ~"Rozumiem: Istnieje pewne ograniczenie wiedzy, którą mogę posiąść na początku, ale potem, po osiągnięciu następnego poziomu, to ograniczenie zostaje zwiększone. Jaki jest następny etap szkolenia?"~ */ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26806 /* ~"Te pojęcia już znam. Co możesz mi po wiedzieć o posługiwaniu się bronią?"~ */ GOTO 42
  IF ~~ THEN REPLY #26807 /* ~"Prawdę mówiąc, to może wrócę tu jeszcze, gdy będę gotowy na szkolenie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #26670 /* ~"Teraz on opowie o biegłości: Sztuki władania bronią można się nauczyć tylko do pewnego momentu. On mógłby dodać: Sztuki władania bronią można kogoś nauczyć tylko do pewnego momentu. Sztukę walki bronią można poznać na trzech poziomach: na poziomie laika, biegłego i specjalisty. Pomiędzy nimi są poziomy, na których uczeń przewyższa wcześniejsze nauki, ale nie osiągnął jeszcze prawdziwie następnej umiejętności."~ */
  IF ~~ THEN REPLY #26808 /* ~"Co to za poziomy?"~ */ GOTO 39
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26809 /* ~"Podstawy już znam. Czego możesz mnie nauczyć o posługiwaniu się bronią?"~ */ GOTO 42
  IF ~~ THEN REPLY #26810 /* ~"Chyba wystarczy mi już tych nauk... Wrócę później, jeśli uznam, że potrzebuję szkolenia."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26671 /* ~"Laik nie zna broni, której używa. Jego ataki są niezdarne, a zadawane obrażenia mniejsze od tych, które można by było zadać."~ */
  IF ~~ THEN REPLY #26811 /* ~"To tak jak ja, gdy obudziłem się na stole w Kostnicy... mów dalej. Na czym polega poziom biegłego?"~ */ GOTO 40
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26812 /* ~"Podstawy już znam. Czego możesz mnie nauczyć o posługiwaniu się bronią?"~ */ GOTO 42
  IF ~~ THEN REPLY #26813 /* ~"Chyba wystarczy mi już tych nauk... Wrócę później, jeśli uznam, że potrzebuję szkolenia."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26672 /* ~"Ktoś, kto jest biegły we władaniu bronią, poznał ją i można powiedzieć, że posługuje się nią *biegle*. Jego ataki nie są już niezdarne. Zadaje ciosy szybko i pewnie."~ */
  IF ~~ THEN REPLY #26814 /* ~"A co umie specjalista?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",2)
~ JOURNAL #26817 /* ~Porfiron powiedział, że są trzy poziomy biegłości w posługiwaniu się jakąkolwiek bronią.

Na początku jest poziom laika, kiedy broń wręcz przeszkadza atakującemu. Jego ataki są niezgrabne, niedokładne, a broń zadaje mniej obrażeń niż gdyby władał nią doświadczony wojownik. Na takim poziomie znajdowałem się chyba po przebudzeniu w Kostnicy. Będę musiał trochę poćwiczyć, jeśli mam się lepiej posługiwać orężem.

Następny jest poziom biegłego, który przychodzi po opanowaniu przez wojownika podstaw posługiwania się swoją bronią. Jego ataki nie są już ograniczone nieznajomością oręża, stają się szybsze i dokładniejsze.

Następny jest poziom specjalisty, kiedy to atakujący nie tylko jest wyszkolony w użyciu broni, lecz czyni ją również przedłużeniem swej woli. Jego ataki są szybsze, a zadawane obrażenia - większe.~ */ GOTO 41
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26815 /* ~"Podstawy już znam. Czego możesz mnie nauczyć o posługiwaniu się bronią?"~ */ GOTO 42
  IF ~~ THEN REPLY #26816 /* ~"Chyba wystarczy mi już tych nauk... Wrócę później, jeśli uznam, że potrzebuję szkolenia."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26673 /* ~"Specjalista to ktoś, kto posługuje się bronią lepiej niż biegle. Taki ktoś *specjalizuje się* we władaniu daną bronią, która przestaje być narzędziem, a staje się przedłużeniem jego woli."~ */
  IF ~~ THEN REPLY #26818 /* ~"Rozumiem. Czego możesz mnie nauczyć?"~ */ GOTO 42
  IF ~~ THEN REPLY #26819 /* ~"Wystarczy mi już tych wiadomości. Może jeszcze do ciebie wrócę. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 3.5 34.1 35.1 36.1 37.2 38.1 39.1 40.1 41.0 43.2 44.2 45.2 46.2 47.2 49.0 50.0 53.0
  SAY #26674 /* ~"On zna tajniki walki na pięści, mieczem, kijem, toporem i młotem. Którą z tych broni chcesz poznać?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26820 /* ~"Chcę się dowiedzieć czegoś o pięściach."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26821 /* ~"Chcę się dowiedzieć czegoś o pięściach."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26822 /* ~"Chcę się dowiedzieć czegoś o sztyletach."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26823 /* ~"Chcę się dowiedzieć czegoś o sztyletach."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26824 /* ~"Chcę się dowiedzieć czegoś o pałkach."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26825 /* ~"Chcę się dowiedzieć czegoś o pałkach."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26826 /* ~"Chcę się dowiedzieć czegoś o toporach."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26827 /* ~"Chcę się dowiedzieć czegoś o toporach."~ */ GOTO 46
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26828 /* ~"Chcę się dowiedzieć czegoś o młotach."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26829 /* ~"Chcę się dowiedzieć czegoś o młotach."~ */ GOTO 47
  IF ~~ THEN REPLY #26830 /* ~"Czy jeszcze raz możesz mi powtórzyć o tym, na czym polega ścieżka wojownika?"~ */ GOTO 35
  IF ~~ THEN REPLY #26831 /* ~"Dzisiaj nie mam czasu na szkolenie. Może tu jeszcze powrócę, gdy zdecyduję, że chcę się nauczyć czegoś więcej."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #26675 /* ~"Ten, kto używa pięści, uderza szybko i może skruszyć przeciwnikowi kości. Możesz natknąć się na następujące typy broni: ciężkie rękawice, sztylety naręczne, a nawet cestus. Przy ich pomocy możliwe jest zadanie ran miażdżonych, kłutych i ciętych. Twoja wiedza jest ograniczona: Czy chcesz użyć części swojego talentu, aby nabyć biegłości w posługiwaniu się tą bronią?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,2)
~ THEN REPLY #26832 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26836 /* ~Z pomocą Porfirona... i wiele sińców później... osiągnąłem poziom biegłego w walce na pięści.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,FIST,1)
~ THEN REPLY #26833 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #24443 /* ~Porfirion stwierdził, że nie może mnie nauczyć niczego więcej o walce na pięści. Powiedział, że będę musiał znaleźć jakiegoś mistrza walki, który mnie wytrenuje.~ */ GOTO 50
  IF ~~ THEN REPLY #26834 /* ~"Nie... Jakimi innymi typami broni możesz mnie nauczyć się posługiwać?"~ */ GOTO 42
  IF ~~ THEN REPLY #26835 /* ~"Nie, dzisiaj chyba nie mam ochoty na szkolenie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.3
  SAY #26676 /* ~"Ten, który używa sztyletu, uderza szybko. Obrażenia może zadawać przez cięcie, jak pazur, lub przebijanie, jak igła. Typ obrażeń zależy od rodzaju sztyletu. Czy chcesz użyć części swojego talentu, aby nabyć biegłości w posługiwaniu się tą bronią?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,2)
~ THEN REPLY #26837 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26841 /* ~Z pomocą Porfirona... i wiele blizn później... osiągnąłem poziom biegłego we władaniu sztyletem. Kiedy mój nauczyciel odkrył, że dosyć szybko odzyskuję siły po kolejnych cięciach, nie tracił ani chwili i traktował mnie jak deskę do ćwiczeń.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,DAGGER,1)
~ THEN REPLY #26838 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26842 /* ~Porfiron stwierdził, że nie jest w stanie nauczyć mnie więcej o sztuce walki sztyletem. Dodał, że jeśli chcę się w niej specjalizować, będę musiał znaleźć mistrza tej broni.~ */ GOTO 50
  IF ~~ THEN REPLY #26839 /* ~"Nie... Jakimi innymi typami broni możesz mnie nauczyć się posługiwać?"~ */ GOTO 42
  IF ~~ THEN REPLY #26840 /* ~"Nie, dzisiaj chyba nie mam ochoty na szkolenie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #26677 /* ~"Ten, który używa pałki, nie może atakować tak szybko jak pięścią czy sztyletem, ale potrafi wyrządzić większe obrażenia. Pałka miażdży ciało przeciwnika jak spadająca skała. Czy chcesz użyć części swojego talentu, aby nabyć biegłości w posługiwaniu się tą bronią?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,2)
~ THEN REPLY #26843 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26850 /* ~Z pomocą Porfirona... i wiele sińców później... osiągnąłem poziom biegłego w posługiwaniu się maczugami.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,CLUB,1)
~ THEN REPLY #26847 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26851 /* ~Porfiron stwierdził, że nie jest w stanie nauczyć mnie więcej o sztuce walki na maczugi. Dodał, że jeśli chcę się w niej specjalizować, będę musiał znaleźć mistrza tej broni.~ */ GOTO 50
  IF ~~ THEN REPLY #26848 /* ~"Nie... Jakimi innymi typami broni możesz mnie nauczyć się posługiwać?"~ */ GOTO 42
  IF ~~ THEN REPLY #26849 /* ~"Nie, dzisiaj chyba nie mam ochoty na szkolenie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 42.7
  SAY #26678 /* ~"Ten, który używa topora, nie może atakować tak szybko jak przy użyciu pałki, ale za to wyrządza większe obrażenia. Topór tnie ciało przeciwnika jak wielki pazur. Czy chcesz użyć części swojego talentu, aby nabyć biegłości w posługiwaniu się tą bronią?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,2)
~ THEN REPLY #26852 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26856 /* ~Z pomocą Porfiriona... i wiele blizn później... osiągnąłem poziom biegłego w posługiwaniu się toporem. Od kiedy Porfiron odkrył, że szybko odzyskuję siły, nawet po najbardziej wściekłych cięciach, nie tracił ani chwili i próbował przerobić mnie na szczapy drewna.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,AXE,1)
~ THEN REPLY #26853 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26857 /* ~Porfiron stwierdził, że nie jest w stanie nauczyć mnie więcej o sztuce walki na topory. Dodał, że jeśli chcę się w niej specjalizować, będę musiał znaleźć mistrza tej broni.~ */ GOTO 50
  IF ~~ THEN REPLY #26854 /* ~"Nie... Jakimi innymi typami broni możesz mnie nauczyć się posługiwać?"~ */ GOTO 42
  IF ~~ THEN REPLY #26855 /* ~"Nie, dzisiaj chyba nie mam ochoty na szkolenie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.9
  SAY #26679 /* ~"Ten, który używa młota, nie może atakować tak szybko jak pałką, ale potrafi wyrządzić większe obrażenia. Młot miażdży ciało przeciwnika jak po upadku z wysokiej skały. Czy chcesz użyć części swojego talentu, aby nabyć biegłości w posługiwaniu się tą bronią?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,2)
~ THEN REPLY #26858 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26862 /* ~Z pomocą Porfirona... i wiele sińców później... osiągnąłem poziom biegłego w posługiwaniu się młotem. Chyba trochę potrwa zanim ucichnie dzwonienie w mojej głowie.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,HAMMER,1)
~ THEN REPLY #26859 /* ~"Tak, chcę nauczyć się posługiwania tym typem broni."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26863 /* ~Porfiron stwierdził, że nie jest w stanie nauczyć mnie więcej o sztuce walki młotem. Dodał, że jeśli chcę się w niej specjalizować, będę musiał znaleźć mistrza tej broni.~ */ GOTO 50
  IF ~~ THEN REPLY #26860 /* ~"Nie... Jakimi innymi typami broni możesz mnie nauczyć się posługiwać?"~ */ GOTO 42
  IF ~~ THEN REPLY #26861 /* ~"Nie, dzisiaj chyba nie mam ochoty na szkolenie. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0 44.0 45.0 46.0 47.0
  SAY #26680 /* ~"On będzie cię szkolić: Najpierw przyjmij taką postawę..."~ */
  IF ~~ THEN REPLY #26864 /* ~"Tak..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26681 /* ~"On musi cię pochwalić: Szybko przyjmujesz wiedzę."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26865 /* ~"Dziękuję. Chętnie poznam inne rodzaje broni, jeśli będziesz mnie chciał nauczyć."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26866 /* ~"Dziękuję. Chętnie poznam inne rodzaje broni, jeśli będziesz mnie chciał nauczyć."~ */ GOTO 51
  IF ~~ THEN REPLY #26867 /* ~"Dziękuję. Chyba wystarczy na dzisiaj tych nowości."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 43.1 44.1 45.1 46.1 47.1
  SAY #26682 /* ~"On nie może cię już nic więcej nauczyć: Czy wiesz, że umiesz już biegle posługiwać się tym typem broni? On może udzielić ci tylko jednej, ostatniej rady: Poszukaj mistrza, jeśli chcesz i możesz nauczyć się więcej. Pozostań wierny ścieżce wojownika, a twoja wiedza jeszcze długo nie natrafi na ograniczenia."~ */
  IF ~~ THEN REPLY #26868 /* ~"W porządku. Jakimi innymi typami broni możesz mnie nauczyć się posługiwać?"~ */ GOTO 42
  IF ~~ THEN REPLY #26869 /* ~"W takim razie spróbuję go znaleźć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 3.2 42.0 42.2 42.4 42.6 42.8 49.1
  SAY #26683 /* ~"On widzi, że twój umysł jest już wypełniony do granic możliwości, i na razie nie możesz posiąść dalszej wiedzy o władaniu bronią: Przyjdź do mnie, kiedy awansujesz na wyższy poziom. Wtedy on będzie cię szkolił."~ */
  IF ~~ THEN REPLY #26870 /* ~"Jeśli nie możesz nauczyć mnie niczego więcej o typach broni, to może opowiesz mi o tym, jak to jest być wojownikiem?"~ */ JOURNAL #26872 /* ~Porfiron powiedział, że nie jest już w stanie więcej mnie nauczyć na temat walki bronią; osiągnąłem już limit wiedzy jak na swoje doświadczenie. Dodał, że powinienem wrócić, kiedy zdobędę nowy poziom w sztuce walki, a wtedy on będzie może w stanie nauczyć mnie czegoś więcej.~ */ GOTO 35
  IF ~~ THEN REPLY #26871 /* ~"Zatem dobrze. Powrócę, gdy osiągnę następny poziom Rzemiosła."~ */ JOURNAL #26872 /* ~Porfiron powiedział, że nie jest już w stanie więcej mnie nauczyć na temat walki bronią; osiągnąłem już limit wiedzy jak na swoje doświadczenie. Dodał, że powinienem wrócić, kiedy zdobędę nowy poziom w sztuce walki, a wtedy on będzie może w stanie nauczyć mnie czegoś więcej.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 3.4
  SAY #26684 /* ~"On może udzielić ci tylko jednej, ostatniej rady: Poszukaj mistrza, jeśli chcesz nauczyć się więcej."~ */
  IF ~~ THEN REPLY #26873 /* ~"W takim razie spróbuję go znaleźć. Żegnaj."~ */ JOURNAL #26875 /* ~Porfiron stwierdził, że nie jest w stanie nauczyć mnie więcej o sztuce walki. Dodał, że jeśli chcę się dalej specjalizować, będę musiał znaleźć mistrza broni.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.3
  SAY #26685 /* ~"On widzi, że twój umysł jest gotowy na przyjęcia nowych wiadomości: Jaką bronią chcesz się nauczyć biegle posługiwać?"~ */
  IF ~~ THEN REPLY #26876 /* ~"Czego możesz mnie nauczyć?"~ */ GOTO 42
  IF ~~ THEN REPLY #26877 /* ~"Dziękuję, może później."~ */ EXIT
END
