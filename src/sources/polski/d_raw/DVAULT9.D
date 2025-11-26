// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAULT9.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAULT9~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45843 /* ~"Witaj w Skarbcu Dziewiątego Świata! Jakże ci się mogę przysłużyć, o Sigilczyku?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45844 /* ~"Co to za miejsce?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45845 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45846 /* ~"Słyszałem, że były problemy z odzyskaniem złożonych tutaj rzeczy."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45847 /* ~"Mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #66903 /* ~"Żegnaj."~ */ GOTO 11
END

IF WEIGHT #2 /* Triggers after states #: 12 even though they appear after this state */
~  !Global("Vault_Attack","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45848 /* ~"Bądź podwójnie pozdrowiony w Skarbcu Dziewiątego Świata! Jakże ci się mogę przysłużyć, o Sigilczyku?"~ */
  IF ~  Global("Know_Vault","AR0510",0)
~ THEN REPLY #45849 /* ~"Co to za miejsce?"~ */ DO ~SetGlobal("Know_Vault","AR0510",1)
~ GOTO 2
  IF ~  Global("Know_Head","AR0510",0)
~ THEN REPLY #45850 /* ~"Kim jesteś?"~ */ DO ~SetGlobal("Know_Head","AR0510",1)
~ GOTO 3
  IF ~~ THEN REPLY #45851 /* ~"Chciałbym oddać coś na przechowanie."~ */ GOTO 6
  IF ~~ THEN REPLY #45852 /* ~"Chciałbym coś odebrać."~ */ GOTO 9
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45853 /* ~"Słyszałem, że były problemy z odzyskaniem złożonych tutaj rzeczy."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45854 /* ~"Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0
  SAY #45855 /* ~"Skarbiec Dziewiątego Świata czuje radość, że może służyć jako magazyn dla Niższej Dzielnicy i wszystkich istot z Sigil! Nasza dewiza to 'Przyjdź do nas, bo świat nigdy nie jest za wielki!' Zapewniamy przestrzeń magazynową tym, którzy mają niewiele wolnego miejsca. Nasze ceny są konkurencyjne! Nasza obsługa jest wzorowa! A nasza uprzejmość w stosunku do klientów jest znana we wszystkich Sferach."~ */
  IF ~~ THEN REPLY #45856 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #45857 /* ~"Żegnaj."~ */ GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 7.1
  SAY #45858 /* ~"Jestem głosem Skarbca Dziewiątego Świata. Jestem tu do twoich usług, kliencie. Mów tedy, czego pragniesz, a postaram się spełnić każde twoje życzenie!"~ */
  IF ~~ THEN REPLY #45859 /* ~"Chciałbym oddać coś na przechowanie."~ */ GOTO 6
  IF ~~ THEN REPLY #45860 /* ~"Chciałbym coś odebrać."~ */ GOTO 9
  IF ~~ THEN REPLY #45861 /* ~"Dlaczego to miejsce nazywane jest Skrabcem Dziewiątego Świata?"~ */ GOTO 4
  IF ~~ THEN REPLY #45862 /* ~"Czy to miejsce jest rzeczywiście tak duże, jak cały świat?"~ */ GOTO 5
  IF ~~ THEN REPLY #45863 /* ~"Mniejsza z tym. Dziękuję."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 7.4
  SAY #45864 /* ~"Szczerze powiedziawszy, nie mam zielonego pojęcia! Chyba po prostu właściciele doszli do wniosku, że taka nazwa byłaby niegłupia, albo coś w tym guście."~ */
  IF ~~ THEN REPLY #45865 /* ~"Chciałbym oddać coś na przechowanie."~ */ GOTO 6
  IF ~~ THEN REPLY #45866 /* ~"Chciałbym coś odebrać."~ */ GOTO 9
  IF ~~ THEN REPLY #45867 /* ~"Czy to miejsce jest rzeczywiście tak duże, jak cały świat?"~ */ GOTO 5
  IF ~~ THEN REPLY #45868 /* ~"Och. Żegnaj więc."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 3.3 4.2 7.5
  SAY #45869 /* ~"Nie, to tylko delikatne kłamstewko reklamowe. Jest tu mnóstwo miejsca, ale nie aż tak wiele!"~ */
  IF ~~ THEN REPLY #45870 /* ~"Chciałbym oddać coś na przechowanie."~ */ GOTO 6
  IF ~~ THEN REPLY #45871 /* ~"Chciałbym coś odebrać."~ */ GOTO 9
  IF ~~ THEN REPLY #45872 /* ~"Dlaczego to miejsce nazywane jest Skrarbcem Dziewiątego Świata?"~ */ GOTO 4
  IF ~~ THEN REPLY #45873 /* ~"Och. Żegnaj więc."~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.0 4.0 5.0 7.2
  SAY #45874 /* ~"Przykro mi! W tym momencie skarbiec jest zapełniony. Ale może będę mógł pomóc ci w inny sposób?"~ */
  IF ~~ THEN REPLY #45875 /* ~"Myślałem, że to coś w rodzaju ogromnej przechowalni."~ */ GOTO 8
  IF ~~ THEN REPLY #45876 /* ~"Chciałbym coś odebrać."~ */ GOTO 9
  IF ~~ THEN REPLY #45877 /* ~"Chciałbym ci jeszcze zadać kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #45878 /* ~"Nie. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 0.3 6.2 8.0 9.7 10.1 12.0 13.1 15.0 16.0 17.0 18.0 19.0 20.0
  SAY #45879 /* ~"Naturalnie! Czym mogę służyć?"~ */
  IF ~~ THEN REPLY #45880 /* ~"Co to za miejsce?"~ */ GOTO 2
  IF ~~ THEN REPLY #45881 /* ~"Kim jesteś?"~ */ GOTO 3
  IF ~~ THEN REPLY #45882 /* ~"Chciałbym oddać coś na przechowanie."~ */ GOTO 6
  IF ~~ THEN REPLY #45883 /* ~"Chciałbym coś odebrać."~ */ GOTO 9
  IF ~~ THEN REPLY #45884 /* ~"Dlaczego to miejsce nazywane jest Skarbcem Dziewiątego Świata?"~ */ GOTO 4
  IF ~~ THEN REPLY #45885 /* ~"Czy to miejsce jest rzeczywiście tak duże, jak cały świat?"~ */ GOTO 5
  IF ~  GlobalLT("Warehouse_Clear","GLOBAL",4)
GlobalGT("Warehouse_Clear","GLOBAL",0)
~ THEN REPLY #45886 /* ~"Słyszałem, że były problemy z odzyskaniem złożonych tutaj rzeczy."~ */ DO ~SetGlobal("Warehouse_Clear","GLOBAL",4)
~ GOTO 10
  IF ~~ THEN REPLY #45887 /* ~"Mniejsza z tym. Dziękuję."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45888 /* ~"Hm... No tak." W głosie można usłyszeć pewne zmieszanie. "Z tym, że ostatnimi czasy odnotowujemy duży deficyt przestrzeni magazynowej i w ogóle dzieje się tutaj coś podejrzanego. Na razie nie wiemy, co to jest. Ale mówiąc krótko a treściwie: Na dzień dzisiejszy nie przyjmujemy w Skarbcu żadnych rzeczy na przechowanie."~ */
  IF ~~ THEN REPLY #45889 /* ~"Och. A zatem mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #45890 /* ~"Ach tak. Żegnaj zatem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 4.1 5.1 6.1 7.3 10.0 13.0
  SAY #45891 /* ~"O jaki przedmiot chodzi?"~ */
  IF ~  Global("Vault_Gold","GLOBAL",1)
~ THEN REPLY #45892 /* ~"Szukam worka wypełnionego monetami."~ */ GOTO 13
  IF ~  Global("Vault_Gold","GLOBAL",0)
~ THEN REPLY #45893 /* ~"Szukam worka wypełnionego monetami."~ */ GOTO 14
  IF ~  Global("Pillow_Quest","GLOBAL",3)
~ THEN REPLY #45894 /* ~"Przyszedłem odebrać poduszkę trumniarza Hamrysa."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",4)
GiveItemCreate("DrmPllw",Protagonist,1,0,0)
~ GOTO 17
  IF ~  Global("Plans_Quest","GLOBAL",3)
~ THEN REPLY #45895 /* ~"Powiedziano mi, że mogę tu odebrać plany grobowca."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",4)
GiveItemCreate("TombPlan",Protagonist,1,0,0)
~ GOTO 18
  IF ~  Global("Stolen_Papers","GLOBAL",3)
!Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45896 /* ~"Powiedziano mi, żebym ci powiedział, że przyszedłem po pożyczkę."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",3)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45897 /* ~"Powiedziano mi, żebym ci powiedział, że przyśmiałem Szpicerowi."~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",4)
SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
GiveItemCreate("LoanDoc",Protagonist,1,0,0)
~ GOTO 20
  IF ~  Global("Stolen_Papers","GLOBAL",4)
Global("Evidence_Papers","GLOBAL",3)
~ THEN REPLY #45898 /* ~"Powiedziano mi, żebym ci powiedział, że przyśmiałem Szpicerowi."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",4)
GiveItemCreate("Evidence",Protagonist,1,0,0)
~ GOTO 20
  IF ~~ THEN REPLY #45899 /* ~"O żaden. Ale mam kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #45900 /* ~"O żaden. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.4 2.1 7.6
  SAY #45901 /* ~"Tak. Moi panowie są również bardzo zainteresowani tym zjawiskiem. I ja bym wiele dał, żeby to zgłębić! Ale jestem tylko zwykłym zaczarowanym łbem, niczym więcej! Nie mam zielonego pojęcia, co się stało z tą całą przestrzenią magazynową. W każdym razie Skarbiec jest otwarty dla każdego. Powinieneś bez problemów dostać tutaj, to czego szukasz. Wystarczy tylko poprosić!"~ */
  IF ~~ THEN REPLY #45902 /* ~"Chciałbym coś odebrać."~ */ GOTO 9
  IF ~~ THEN REPLY #45903 /* ~"Zamiast tego, mam kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #45904 /* ~"Dziękuję, nie omieszkam. Z tym, że później. Póki co, bądź zdrów."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 0.4 1.5 3.4 4.3 5.3 6.3 7.7 8.1 9.8 10.2 12.1 13.2 15.1 16.1 17.1 18.1 19.1 20.1
  SAY #45905 /* ~"Bądź zdrów, panie. I pamiętaj, że Skarbiec Dziewiątego Świata szanuje twój czas i pieniądze. Wróć tutaj kiedykolwiek przyjdzie ci na to ochota."~ */
  IF ~~ THEN REPLY #45906 /* ~"Tak, wiadoma rzecz."~ */ EXIT
  IF ~~ THEN REPLY #45907 /* ~"Żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Vault_Attack","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #45908 /* ~"Wybacz, panie, ale uprasza się o nie atakowanie czarodziejskiego łba."~ */
  IF ~~ THEN REPLY #45909 /* ~"Dobra. Mam kilka pytań..."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 7
  IF ~~ THEN REPLY #45910 /* ~"Dobra. Żegnaj."~ */ DO ~SetGlobal("Vault_Attack","GLOBAL",0)
~ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #45911 /* ~"Och, jakże mi przykro, panie! Ten przedmiot już został zabrany. Może chciałbyś, panie, odebrać coś innego?"~ */
  IF ~~ THEN REPLY #45912 /* ~"Tak."~ */ GOTO 9
  IF ~~ THEN REPLY #45913 /* ~"Nie. Chciałbym, żebyś odpowiedział mi na kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #45914 /* ~"Nie. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #45915 /* ~"Mamy worek monet odpowiadający twojemu opisowi, panie! Pragnę jeszcze od ciebie, panie, jednej tylko informacji: Ile monet znajdowało się w tym worku?"~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #45916 /* ~Masz wrażenie, że akurat ta liczba jest poprawna... "1123 monety."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #45918 /* ~Masz wrażenie, że akurat ta liczba jest poprawna... "1123 monety."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #45930 /* ~Masz wrażenie, że akurat ta liczba jest poprawna... "1123 monety."~ */ DO ~SetGlobal("Vault_Gold","GLOBAL",1)
GivePartyGold(1123)
~ GOTO 15
  IF ~~ THEN REPLY #45937 /* ~Zgadnij: "1000 monet."~ */ GOTO 16
  IF ~~ THEN REPLY #45938 /* ~Zgadnij: "500 monet."~ */ GOTO 16
  IF ~~ THEN REPLY #45940 /* ~Zgadnij: "750 monet."~ */ GOTO 16
  IF ~~ THEN REPLY #45943 /* ~Zgadnij: "331 monet."~ */ GOTO 16
  IF ~~ THEN REPLY #45945 /* ~Zgadnij: "2112 monet."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #45917 /* ~"Proszę bardzo, panie. Dzięki za przechowanie twoich rzeczy w Skrabcu Dziewiątego Świata. Czy życzysz sobie jeszcze czegoś?"~ */
  IF ~~ THEN REPLY #45984 /* ~"Chciałbym ci jeszcze zadać kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #45986 /* ~"Nie, dziękuję. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 14.3 14.4 14.5 14.6 14.7
  SAY #45948 /* ~"Och, jakże mi przykro, panie. To na pewno nie jest twój worek! Czy życzysz sobie jeszcze czegoś, panie?"~ */
  IF ~~ THEN REPLY #45950 /* ~"Chciałbym ci jeszcze zadać kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #45952 /* ~"Nie, dziękuję. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 9.2
  SAY #45954 /* ~"Poduszkę? Ależ oczywiście... wielka, KAMIENNA poduszka. Oto i twoja poduszka, mistrzu Hamrysie, bierz ją i niechaj cię przy niej same słodkie sny nawiedzają! Czy życzysz sobie jeszcze czegoś, panie?"~ */
  IF ~~ THEN REPLY #45957 /* ~"Chciałbym ci jeszcze zadać kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #45959 /* ~"Nie, dziękuję. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 18 // from: 9.3
  SAY #45962 /* ~"Plany grobowca? Nie wydajesz mi się być martwym, a jeśli nawet jesteś, nie moja to sprawa, panie! Oto i plany! Czy życzysz sobie jeszcze czegoś, panie?"~ */
  IF ~~ THEN REPLY #45965 /* ~"Chciałbym ci jeszcze zadać kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #45978 /* ~"Nie, dziękuję. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 19 // from: 9.4
  SAY #45990 /* ~"Och! Jedno z moich tajemnych haseł. Oto dokumenty, których szukasz, panie! Dziękuję! Czy życzysz sobie jeszcze czegoś, panie?"~ */
  IF ~~ THEN REPLY #45991 /* ~"Mam jeszcze kilka pytań."~ */ GOTO 7
  IF ~~ THEN REPLY #45992 /* ~"Nie, dziękuję. Żegnaj."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 9.5 9.6
  SAY #45993 /* ~"Możliwe, panie, cokolwiek by to miało oznaczać! Niestety nie jestem niczym więcej jak durnym, zaczarowanym łbem! Oto i twoje dokumenty! Dziękuję! Czy życzysz sobie jeszcze czegoś, panie?"~ */
  IF ~~ THEN REPLY #45994 /* ~"Chciałbym ci jeszcze zadać kilka pytań..."~ */ GOTO 7
  IF ~~ THEN REPLY #45995 /* ~"Niczego. Żegnaj."~ */ GOTO 11
END
