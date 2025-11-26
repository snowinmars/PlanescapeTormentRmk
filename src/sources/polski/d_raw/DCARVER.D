// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARVER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARVER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49641 /* ~Człowiek ten pogwizduje sobie wesołą melodię, bawiąc się dobrze utrzymanym nożem bojowym. Gdy podchodzisz bliżej, człowiek przestaje gwizdać i rzuca ci zaciekawione spojrzenie. "Hm? Czego?"~ */
  IF ~~ THEN REPLY #49642 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #49643 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49644 /* ~Człowiek w dalszym ciągu pogwizduje sobie wesoło, bawiąc się podniszczonym nożem. Gdy podchodzisz bliżej, człowiek przestaje gwizdać i rzuca ci znudzone spojrzenie. "Co znowu?"~ */
  IF ~~ THEN REPLY #49645 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #49646 /* ~"Nic. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49647 /* ~"Mi na imię Kościszczur śmiałku. Jezdem najemnym złodziejem w służbie Współgrobca, szefa Zbieraczy, których widziałeś na tym placu. Płaci mi głównie za uczenie swoich chłopców, jak być naprawdę bezszelestnym i jak walczyć, gdy wpadnie się w kłopoty. Pewnie tylko na pytania o te rzeczy będę mógł ci odpowiedzieć, śmiałku." Pociąga nosem i wzrusza ramionami.~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49648 /* ~"Jesteś najemnym złodziejem? Możesz mnie wyszkolić?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49649 /* ~"Wiesz jak się przedrzeć przez to zawalone śmieciami przejście na północny zachód stąd?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Mężczyzna o imieniu Kościszczur powiedział mi, że jeżeli chciałbym przebyć tonący w odpadkach łuk na Placu Szmaciarzy, powinienem poprosić o radę człowieka o imieniu Kriden. Kościszczur dodał, że Kridena można zazwyczaj spotkać gdzieś w Ulu, niedaleko Biura do Spraw Szkodników i Zapobiegania Chorobom.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49650 /* ~"Szukam człowieka imieniem Farod. Wiesz, gdzie się znajduje?"~ */ GOTO 4
  IF ~~ THEN REPLY #49651 /* ~"Gdzie znajdę tego całego Współgrobca?"~ */ GOTO 3
  IF ~~ THEN REPLY #49652 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 4.2 5.3 6.2 9.2 11.2
  SAY #49654 /* ~Ruchem głowy wskazuje na podniszczony dom stojący nieopodal. "Bądź jednak ostrożny śmiałku. On nie lubić gości. Jest piekielnie podejrzliwy wobec wszystkich. Współgrobiec nie jest nawet jego prawdziwym imieniem... po prostu tak na niego mówiem ja i inni."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49655 /* ~"Powiedziałeś, że jesteś najemnym złodziejem? Możesz mnie wyszkolić?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49656 /* ~"Wiesz jak się przedrzeć przez to zawalone śmieciami przejście na północny zachód stąd?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Mężczyzna o imieniu Kościszczur powiedział mi, że jeżeli chciałbym przebyć tonący w odpadkach łuk na Placu Szmaciarzy, powinienem poprosić o radę człowieka o imieniu Kriden. Kościszczur dodał, że Kridena można zazwyczaj spotkać gdzieś w Ulu, niedaleko Biura do Spraw Szkodników i Zapobiegania Chorobom.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49657 /* ~"Szukam człowieka imieniem Farod. Wiesz, gdzie się znajduje?"~ */ GOTO 4
  IF ~~ THEN REPLY #49658 /* ~"To wszystko, co chciałem wiedzieć. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.2 5.2 6.1 9.1 11.1
  SAY #49659 /* ~Kościszczur potrząsa głową. "Ni, nie. Słyszę jednak, że jest w pobliżu. Niektórzy z jego chłopców przelatują od czasu do czasu, zmierzając do jakiejś kryjówki znajdującej się nie wiadomo gdzie. Założem się, że gdzieś w górze, w okolicy tych unoszących się platform, ale to nie mój interes." Wzrusza ramionami i spluwa na ziemię. "Żyj i daj żyć, mówi Kościszczur."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49660 /* ~"Powiedziałeś, że jesteś najemnym złodziejem? Możesz mnie wyszkolić?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49661 /* ~"Wiesz jak się przedrzeć przez to zawalone śmieciami przejście na północny zachód stąd?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Mężczyzna o imieniu Kościszczur powiedział mi, że jeżeli chciałbym przebyć tonący w odpadkach łuk na Placu Szmaciarzy, powinienem poprosić o radę człowieka o imieniu Kriden. Kościszczur dodał, że Kridena można zazwyczaj spotkać gdzieś w Ulu, niedaleko Biura do Spraw Szkodników i Zapobiegania Chorobom.~ */ GOTO 5
  IF ~~ THEN REPLY #49662 /* ~"Gdzie znajdę twojego szefa... Współgrobca?"~ */ GOTO 3
  IF ~~ THEN REPLY #49663 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 4.1 9.0 11.0
  SAY #49664 /* ~"Ech? Ni, nie. Powiedzmy, że... możesz zapytać Kridena Szczurołapa. Zagląda tam czasami i znika potem na jakąś chwilę. Kridena zazwyczaj można zastać w Ulu, tuż obok Biura do Spraw Szkodników i Zapobiegania Chorobom."~ */
  IF ~~ THEN REPLY #49665 /* ~"Biuro do spraw...? Gdzie to jest?"~ */ GOTO 6
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49666 /* ~"Powiedziałeś, że jesteś najemnym złodziejem? Możesz mnie wyszkolić?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49667 /* ~"Szukam człowieka imieniem Farod. Wiesz, gdzie się znajduje?"~ */ GOTO 4
  IF ~~ THEN REPLY #49668 /* ~"Gdzie znajdę twojego szefa... Współgrobca?"~ */ GOTO 3
  IF ~~ THEN REPLY #49669 /* ~"Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49670 /* ~Patrząc na ciebie, Kościszczur robi niezadowoloną minę. "Wracaj do Ula śmiałku. Znajdź se oprowadzacza, jeśli potrzebujesz."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49671 /* ~"Powiedziałeś, że jesteś najemnym złodziejem? Możesz mnie wyszkolić?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49672 /* ~"Szukam człowieka imieniem Farod. Wiesz, gdzie się znajduje?"~ */ GOTO 4
  IF ~~ THEN REPLY #49673 /* ~"Gdzie znajdę twojego szefa... Współgrobca?"~ */ GOTO 3
  IF ~~ THEN REPLY #49674 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.0 4.0 5.1 6.0
  SAY #49675 /* ~"Jasne, za kupę brzdęku. Szkolono cię już wcześniej?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #49676 /* ~"Tak."~ */ GOTO 23
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #49677 /* ~"Nie."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #49678 /* ~"W porządku. Uderzem cie teraz delikatnie, a ty spróbuj tego uniknąć." Znienacka uderza cię otwartą dłonią w głowę.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #49679 /* ~Uniknij ciosu.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #49680 /* ~Uniknij ciosu.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #49681 /* ~Pomimo twojego uniku, Kościszczur uderza cię solidnie w tył głowy. "Przykro mi śmiałku; po prostu za wolno sie zbierasz."~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49682 /* ~"Wiesz jak się przedrzeć przez to zawalone śmieciami przejście na północny zachód stąd?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Mężczyzna o imieniu Kościszczur powiedział mi, że jeżeli chciałbym przebyć tonący w odpadkach łuk na Placu Szmaciarzy, powinienem poprosić o radę człowieka o imieniu Kriden. Kościszczur dodał, że Kridena można zazwyczaj spotkać gdzieś w Ulu, niedaleko Biura do Spraw Szkodników i Zapobiegania Chorobom.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49683 /* ~"Szukam człowieka imieniem Farod. Wiesz, gdzie się znajduje?"~ */ GOTO 4
  IF ~~ THEN REPLY #49684 /* ~"Gdzie znajdę twojego szefa... Współgrobca?"~ */ GOTO 3
  IF ~~ THEN REPLY #49685 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #49686 /* ~Unikasz ciosu Kościszczura. "Nieźle śmiałku. Pomówmy teraz o brzdęku... pięćdziesiąt miedziaków i zaczynamy trening od zaraz."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49687 /* ~"Brzmi nieźle. Proszę."~ */ DO ~TakePartyGold(50)
~ GOTO 12
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49688 /* ~"Nie mam tyle."~ */ GOTO 11
  IF ~~ THEN REPLY #49689 /* ~"Nie, dzięki."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2 24.1 24.2
  SAY #49690 /* ~Kościszczur wzrusza apatycznie ramionami.~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49691 /* ~"Wiesz jak się przedrzeć przez to zawalone śmieciami przejście na północny zachód stąd?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Mężczyzna o imieniu Kościszczur powiedział mi, że jeżeli chciałbym przebyć tonący w odpadkach łuk na Placu Szmaciarzy, powinienem poprosić o radę człowieka o imieniu Kriden. Kościszczur dodał, że Kridena można zazwyczaj spotkać gdzieś w Ulu, niedaleko Biura do Spraw Szkodników i Zapobiegania Chorobom.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49692 /* ~"Szukam człowieka imieniem Farod. Wiesz, gdzie się znajduje?"~ */ GOTO 4
  IF ~~ THEN REPLY #49693 /* ~"Gdzie znajdę twojego szefa... Współgrobca?"~ */ GOTO 3
  IF ~~ THEN REPLY #49694 /* ~"Żegnaj więc."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #49695 /* ~"Wiesz chyba, że trza ci porzucić wszystko, czym sie teraz zajmujesz, rozumiemy sie? Nie możesz być jednocześnie wojownikiem, czy kim tam chcesz *i* złodziejem. Pasuje ci to śmiałku?"~ */
  IF ~~ THEN REPLY #49696 /* ~"Tak."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 13
  IF ~~ THEN REPLY #49697 /* ~"Nie, zdecydowanie nie. Wezmę z powrotem moje miedziaki... żegnaj, Kościszczurze."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49698 /* ~"Zabierajmy sie więc do dzieła. Nauczem cie tutaj sześciu najważniejszych sztuczek złodzieja: skradania, ukrywania sie, otwierania zamków i kradzieży kieszonkowej, znajdywania i usuwania pułapek oraz mojej ulubionej sztuczki: zadawania śmiałym trepom ciosu w plecy."~ */
  IF ~~ THEN REPLY #49699 /* ~"Mów dalej..."~ */ GOTO 14
  IF ~~ THEN REPLY #49700 /* ~"Myślę, Kościszczurze, że rozumiem podstawy. Bierzmy się do ćwiczeń."~ */ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #49701 /* ~"Skradanie sie - ukrywanie sie w cieniu i bezszelestne poruszanie sie - jest niezmiernie przydatne. Lepszy żywy głupiec niż martwy śmiałek, ech? Dzięki temu unikasz kłopotów, a ponadto, jeśli *chcesz* kogoś obrobić, masz przewagę od samego początku... ale powim ci o tem więcej nieco później. Zapamiętaj jednak, że... nie możesz sie skradać, jeśli ktoś już cię obserwuje."~ */
  IF ~~ THEN REPLY #49702 /* ~"Mów dalej..."~ */ GOTO 15
  IF ~~ THEN REPLY #49703 /* ~"Myślę, Kościszczurze, że rozumiem podstawy. Bierzmy się do ćwiczeń."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #49704 /* ~"Kradzież kieszonkowa i otwieranie zamków to również dobra rzecz... dobry sposób na zwiększenie dochodów. Bądź w gotowości do odwrotu na wypadek, gdyby ktoś cię złapał na gorącym uczynku i zawsze sprawdzaj, czy na miejscu nie ma pułapek, jeśli otwierasz podejrzanie wyglądający zamek. Jeśli będziesz szukać pułapek, sprawdź teren dokładnie i powoli... czasami wystarczy chwila lub dwie, aby znaleźć pułapkę."~ */
  IF ~~ THEN REPLY #49705 /* ~"Mów dalej..."~ */ GOTO 16
  IF ~~ THEN REPLY #49706 /* ~"Myślę, Kościszczurze, że rozumiem podstawy. Bierzmy się do ćwiczeń."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #49707 /* ~"Jeśli znajdziesz pułapkę, wykorzystaj swoje umiejętności i rozbrój tę przeklętą rzecz. To bardzo podobne do otwierania zamka szyfrowego."~ */
  IF ~~ THEN REPLY #49708 /* ~"Mów dalej..."~ */ GOTO 17
  IF ~~ THEN REPLY #49709 /* ~"Myślę, Kościszczurze, że rozumiem podstawy. Bierzmy się do ćwiczeń."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49710 /* ~"Ostatnia rzecz, jakiej cie nauczem, to *atak od tyłu*. Kościszczur wzdycha z radości. "Jeśli uda ci sie podkraść do łajdaka i chcesz mu dołożyć, po prostu zaatakuj skurla od tyłu. Masz o wiele większą szanse, że go trafisz, a kiedy ci się to uda, wal mocno."~ */
  IF ~~ THEN REPLY #49711 /* ~"W porządku. Bierzmy się do ćwiczeń."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 13.1 14.1 15.1 16.1 17.0
  SAY #49712 /* ~Kościszczur kiwa głową. "W porządku, śmiałku... Po pierwsze, musisz sie wyluzować. Za dużo w tobie napięcia. Czasami musisz pozwolić by prowadził cię instynkt i ufać swojemu przeczuciu..." W ten oto sposób rozpoczyna się twoje szkolenie na złodzieja.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #49713 /* ~Naucz się wszystkiego, czego zdołasz.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Nauczyłem się złodziejskiego kunsztu pod okiem człowieka o imieniu Kościszczur, którego poznałem na Placu Szmaciarzy.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #49714 /* ~Naucz się wszystkiego, czego zdołasz.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Nauczyłem się złodziejskiego kunsztu pod okiem człowieka o imieniu Kościszczur, którego poznałem na Placu Szmaciarzy.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #49715 /* ~Naucz się wszystkiego, czego zdołasz.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Nauczyłem się złodziejskiego kunsztu pod okiem człowieka o imieniu Kościszczur, którego poznałem na Placu Szmaciarzy.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #49716 /* ~Naucz się wszystkiego, czego zdołasz.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Nauczyłem się złodziejskiego kunsztu pod okiem człowieka o imieniu Kościszczur, którego poznałem na Placu Szmaciarzy.~ */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #49718 /* ~Po długim okresie szkolenia Kościszczur kiwa z zadowoleniem głową. "Musze rzec śmiałku, że nigdy nie natknąłem sie na bardziej pojętnego ucznia. Mógłbym przysiąc, że znasz to wszystko od dawna!"~ */
  IF ~~ THEN REPLY #49719 /* ~"Być może, Kościszczurze, po prostu nie pamiętam. Dzięki i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #49720 /* ~Po długim okresie szkolenia Kościszczur kiwa z zadowoleniem głową. "Musze rzec śmiałku, że nigdy nie natknąłem sie na bardziej pojętnego ucznia. Mógłbym przysiąc, że znasz to wszystko od dawna!" Gdy Kościszczur tak mówi, zdajesz sobie sprawę, że *znasz* to już od dawna... że kiedyś w przeszłości nauczono cię wszystkich tych umiejętności, a trening rozbudził je na nowo.~ */
  IF ~~ THEN REPLY #49721 /* ~"Być może, Kościszczurze, po prostu nie pamiętam. Dzięki i żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2 18.3
  SAY #49722 /* ~Po długim okresie szkolenia Kościszczur kiwa z zadowoleniem głową. "Musze rzec śmiałku, że nigdy nie natknąłem sie na bardziej pojętnego ucznia. Mógłbym przysiąc, że znasz to wszystko od dawna!" Gdy Kościszczur tak mówi, zdajesz sobie sprawę, że *znasz* to już od dawna... że kiedyś w przeszłości nauczono cię wszystkich tych umiejętności.~ */
  IF ~~ THEN REPLY #49723 /* ~"Być może, Kościszczurze, po prostu nie pamiętam. Dzięki i żegnaj."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49724 /* ~W miarę jak mgliste wspomnienia o czajeniu się w przyciemnionych alejkach i unikaniu śmiercionośnych pułapek nabierają wyrazu, udaje ci się przypomnieć sobie tyle, że 'uczysz' się więcej niż nauczył cię Kościszczur.~ */
  IF ~~ THEN REPLY #49725 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0
  SAY #49726 /* ~"Nie jestem pewien, ile mogę cie nauczyć, jeśli już cie szkolono, śmiałku. Jeśli zaniedbujesz złodziejskie praktyki z powodu innego zajęcia - walki, magii, czy czegokolwiek innego - mogę ci pomóc nadrobić zaległości."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49727 /* ~"Chcę na powrót stać się złodziejem."~ */ GOTO 24
  IF ~~ THEN REPLY #49728 /* ~"Rozumiem. Żegnaj, Kościszczurze."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #49729 /* ~Kościszczur kiwa głową. "Pomówmy teraz o brzdęku... pięćdziesiąt miedziaków i zaczynamy trening od zaraz."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49730 /* ~"Brzmi nieźle. Proszę."~ */ DO ~TakePartyGold(50)
~ GOTO 25
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49731 /* ~"Nie mam tyle..."~ */ GOTO 11
  IF ~~ THEN REPLY #49732 /* ~"Nie, dzięki."~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #49733 /* ~"Wiesz chyba, że trza ci porzucić wszystko czym sie teraz zajmujesz, rozumiemy się? Nie możesz być wojownikiem, czy kim tam chcesz, *i* złodziejem. Pasuje ci to, śmiałku?"~ */
  IF ~~ THEN REPLY #49734 /* ~"Tak."~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 26
  IF ~~ THEN REPLY #49735 /* ~"Nie, zdecydowanie nie. Wezmę z powrotem moje miedziaki... Żegnaj, Kościszczurze."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #49736 /* ~"Szybko sie uczysz śmiałku - cholernie szybko." Przygląda ci się przez chwilę z zaciekawieniem, po czym wzrusza ramionami. "I po sprawie; jesteś z powrotem w interesie."~ */
  IF ~~ THEN REPLY #49737 /* ~"Dzięki, Kościszczurze. Żegnaj."~ */ EXIT
END
