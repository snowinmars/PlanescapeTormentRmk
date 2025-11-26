// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCIRCLEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCIRCLEZ~

IF ~  Global("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #30106 /* ~Ten niewielki okrągły kamień to właśnie ów religijny "tekst", towarzyszący wszędzie Dak'konowi. Przedmiot ten zbudowany jest z ciągów zazębiających się wzajemnie kółek, które nałożone są artystycznie jedne na drugie. Złożoność płytek i zawiłość ich wzajemnych połączeń wskazują, że twórcą całego dzieła musiał być mistrz w swoim fachu. Nie zmienia to faktu, że nie masz zielonego pojęcia, jak otworzyć te płytki.~ */
  IF ~~ THEN REPLY #60450 /* ~Zostaw kamień w spokoju.~ */ EXIT
END

IF ~  GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 1 // from: 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.2 11.0 12.5 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.2 23.0 24.1 25.1 26.1 27.2 28.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.0 38.1 39.1 40.1 41.2 42.0 43.1 44.1 45.1 46.1 47.1 48.2 49.0 50.0 51.1 52.1 53.1 54.1 55.2 56.0 57.1 58.1 59.2 60.0
  SAY #60451 /* ~Niewielki, okrągły kamień to Nieprzerwany Krąg Zerthimona. Przedmiot ten zbudowany jest z ciągów zazębiających się wzajemnie kółek, które nałożone są artystycznie jedne na drugie. Złożoność płytek i zawiłość wzajemnych połączeń wskazują, że twórcą całego dzieła musiał być mistrz w swoim fachu.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60452 /* ~Otwórz pierwszą płytkę, tak jak cię uczył tego Dak'kon.~ */ GOTO 2
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60453 /* ~Otwórz Drugi Krąg Zerthimona.~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60454 /* ~Otwórz Trzeci Krąg Zerthimona.~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60455 /* ~Otwórz Czwarty Krąg Zerthimona.~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60456 /* ~Otwórz Piąty Krąg Zerthimona.~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60457 /* ~Otwórz Szósty Krąg Zerthimona.~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60458 /* ~Otwórz Siódmy Krąg Zerthimona.~ */ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60459 /* ~Otwórz Ósmy Krąg Zerthimona.~ */ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",13)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #60460 /* ~Przebadaj płytki i sprawdź, czy nie można ułożyć nowych kombinacji.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",14)
GiveExperience(Protagonist,3000)
~ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",16)
CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #60461 /* ~Przebadaj płytki i sprawdź, czy nie można ułożyć nowych kombinacji.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",17)
GiveExperience(Protagonist,6000)
~ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #60462 /* ~Przebadaj płytki i sprawdź, czy nie można ułożyć nowych kombinacji.~ */ GOTO 50
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60463 /* ~Przeczytaj powtórnie Pierwszy Krąg Zerthimona.~ */ GOTO 3
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60464 /* ~Przeczytaj powtórnie Drugi Krąg Zerthimona.~ */ GOTO 13
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60465 /* ~Przeczytaj powtórnie Trzeci Krąg Zerthimona.~ */ GOTO 24
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60466 /* ~Przeczytaj powtórnie Czwarty Krąg Zerthimona.~ */ GOTO 29
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60467 /* ~Przeczytaj powtórnie Piąty Krąg Zerthimona.~ */ GOTO 38
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60468 /* ~Przeczytaj powtórnie Szósty Krąg Zerthimona.~ */ GOTO 43
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60469 /* ~Przeczytaj powtórnie Siódmy Krąg Zerthimona.~ */ GOTO 53
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60470 /* ~Przeczytaj powtórnie Ósmy Krąg Zerthimona.~ */ GOTO 57
  IF ~~ THEN REPLY #60471 /* ~Zostaw Nienaruszony Krąg Zerthimona w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60472 /* ~Naśladujesz ruchy, jakie Dak'kon zwykł wykonywać, posługując się Kręgiem i płytki ustępują pod twoim dotykiem. Pierścienie układają się w nową konfigurację. Na pierścieniach dostrzegasz ciągi znaków. Nie przypominasz sobie, abyś kiedykolwiek widział podobne pismo. To ciągi wzajemnie na siebie zachodzących geometrycznych figur, z kołem jako symbolem dominującym. Ale po bliższym zapoznaniu się z tymi wyobrażeniami *wiesz* już, że *znasz* te symbole i potrafisz je odczytać.~ */
  IF ~~ THEN REPLY #60473 /* ~Przeczytaj Pierwszy Krąg Zerthimona.~ */ GOTO 3
  IF ~~ THEN REPLY #60474 /* ~Zostaw Nienaruszony Krąg Zerthimona w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.11 2.0
  SAY #60475 /* ~"*Wiedz*, że jesteśmy Pierwszym Ludem."~ */
  IF ~~ THEN REPLY #60476 /* ~Czytaj dalej...~ */ GOTO 4
  IF ~~ THEN REPLY #60477 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60479 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #60480 /* ~"Na początku był chaos. Potem z chaosu wynurzył się Lud. Kiedy Lud *poznał* istotę samego siebie, przestał być chaosem i stał się ciałem."~ */
  IF ~~ THEN REPLY #60481 /* ~Czytaj dalej...~ */ GOTO 5
  IF ~~ THEN REPLY #60482 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60483 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60484 /* ~"Z pomocą swoich myśli i dzięki *poznaniu* istoty materii, Lud uformował Pierwszy Świat i zamieszkał w nim i *poznaniem* podtrzymywał jego konstrukcję."~ */
  IF ~~ THEN REPLY #60485 /* ~Czytaj dalej...~ */ GOTO 6
  IF ~~ THEN REPLY #60486 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60487 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #60488 /* ~"A jako, że ciało było pojęciem nowym dla Ludu, nie zdołał on *poznać* jego istoty. Ciało wydało na świat nowe myśli. Chciwość i nienawiść, ból i radość, zazdrość i zwątpienie. Wszystkie te twory rozrastały się, żywiąc się sobą wzajemnie, a tym sposobem umysły Ludzi straciły jedność i uległy podzieleniu. Rozbicie to stało się ich karą."~ */
  IF ~~ THEN REPLY #60489 /* ~Czytaj dalej...~ */ GOTO 7
  IF ~~ THEN REPLY #60490 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60491 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #60492 /* ~"Namiętności zrodzone przez ciało były bardzo silne. Chciwość i nienawiść, ból i radość, zazdrość i zwątpienie - wszystkie one stały się drogowskazami dla wrogich sił. Stawszy się ciałem, Lud popadł w niewolę tych istot, które *poznały* ciało jedynie jako narzędzie podlegające ich woli. *Poznaj*, że bestie te zwane były *Illithidami*."~ */
  IF ~~ THEN REPLY #60493 /* ~Czytaj dalej...~ */ GOTO 8
  IF ~~ THEN REPLY #60494 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60495 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60496 /* ~"*Illithidowie* to rasa, która nie była zdolna *poznać* istoty samej siebie. Nauczyli się oni jak sprawić, by inne rasy również nie były zdolne *poznać* istoty samych siebie."~ */
  IF ~~ THEN REPLY #60497 /* ~Czytaj dalej...~ */ GOTO 9
  IF ~~ THEN REPLY #60498 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60499 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60500 /* ~"Były to istoty pełne macek. Pędzili oni żywot w  żywiole ciała i w ciele upatrywali narzędzie własnej woli. Ich krew była jak woda, a ich umysły kształtowane były przez ich myśli. Kiedy *Illithidowie* nawiedzili Ludzi, ci niebawem przestali być Ludem. Stali się niewolnikami."~ */
  IF ~~ THEN REPLY #60501 /* ~Czytaj dalej...~ */ GOTO 10
  IF ~~ THEN REPLY #60502 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60503 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60504 /* ~"*Illithidowie* wyprowadzili Lud z Pierwszego Świata i przywiedli go ku Światom Fałszywym. Kiedy zaś Ludzie poczęli pracować pośród tych światów, Illithidowie nauczyli ich Sztuki Ciała. Dzięki Sztuce Ciała, Lud *poznał* istotę straty. *Poznał* istotę cierpienia. *Poznał* istotę śmierci, zarówno umysłowej, jak i cielesnej. *Poznał* istotę tego, co znaczy być bestią wobec bliźnich i pożywiać się ich ciałem. *Poznał* istotę grozy, która płynie z tego, że zachowania takie potrafią przynosić rozkosz."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60505 /* ~Dokończ czytanie Kręgu.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",2)
~ GOTO 11
  IF ~  !Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #67271 /* ~Dokończ czytanie Kręgu.~ */ GOTO 11
  IF ~~ THEN REPLY #60506 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60507 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #60508 /* ~"Nieprzerwany Krąg umożliwia *poznanie* tego, jak Lud zatracił sam siebie. Oraz to, jak potem znów zdołał *poznać* swą istotę."~ */
  IF ~~ THEN REPLY #60509 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60510 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #60511 /* ~Układasz płytki w kombinację, której nauczył cię Dak'kon, a wówczas pojawia się nowy pierścień. Pierścień ten zawiera takie samo pismo, jak te, które przed chwilą odczytywałeś. Te same są też jego formy geometryczne... Wiesz, że już skądś, że znasz te symbole i potrafisz je odczytać.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60512 /* ~Przeczytaj Drugi Krąg Zerthimona.~ */ GOTO 13
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60513 /* ~Przeczytaj Trzeci Krąg Zerthimona.~ */ GOTO 24
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60514 /* ~Przeczytaj Czwarty Krąg Zerthimona.~ */ GOTO 29
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60515 /* ~Przeczytaj Piąty Krąg Zerthimona.~ */ GOTO 38
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60516 /* ~Przeczytaj Szósty Krąg Zerthimona.~ */ GOTO 43
  IF ~~ THEN REPLY #60517 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60518 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.12 12.0
  SAY #60519 /* ~"*Poznajcie*, że ciało nie zostawia śladu na stali. *Poznajcie*, że stal pozostawia ślad na ciele. *Poznawszy* istotę tego, Zerthimon stał się wolny."~ */
  IF ~~ THEN REPLY #60520 /* ~Czytaj dalej...~ */ GOTO 14
  IF ~~ THEN REPLY #60521 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60522 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #60523 /* ~"*Poznajcie*, że istoty pełne macek stworzone były z ciała. *Illithidowie* żywot swój pędzili w żywiole ciała i w ciele upatrywali narzędzie własnej woli. Jednym z miejsc, w których żywioł ciała podlegał woli *Illithidów* były Pola Łupin w Światach Fałszywych."~ */
  IF ~~ THEN REPLY #60524 /* ~Czytaj dalej...~ */ GOTO 15
  IF ~~ THEN REPLY #60525 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60526 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60527 /* ~"Na Polach tych porzucane były ciała Ludzi, którym *Illithidowie* pożarli mózgi. Człowiecze łupiny o wyżartych czaszkach były nawozem pod trujące ziele zaścielające ziemię. Zerthimon ciężko pracował na Polach, niezdolny *poznać* istoty samego siebie, ani istoty tego, co kryła przed nim przyszłość. Był narzędziem ciała, zaś ciało się temu nie sprzeciwiało."~ */
  IF ~~ THEN REPLY #60528 /* ~Czytaj dalej...~ */ GOTO 16
  IF ~~ THEN REPLY #60529 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60530 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60531 /* ~"To tam, na Polach Łupin, Zerthimon zdołał *poznać* istotę świętości stali. Któregoś obrotu księżyca, kiedy własnymi rękami uprawiał Pola, Zerthimon znalazł człowieczą łupinę, której mózgu nie wyżarto. Wszelako była martwa."~ */
  IF ~~ THEN REPLY #60532 /* ~Czytaj dalej...~ */ GOTO 17
  IF ~~ THEN REPLY #60533 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60534 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60535 /* ~"Zerthimonowi trudno było zrozumieć myśl, że jedna z człowieczych łupin zmarła, choć nie posłużyła za pokarm dla *Illithidów*. Z myśli tej zrodziło się jednak pragnienie *poznania* istoty tego, co stało się tej człowieczej łupinie."~ */
  IF ~~ THEN REPLY #60536 /* ~Czytaj dalej...~ */ GOTO 18
  IF ~~ THEN REPLY #60537 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60538 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60539 /* ~"Tkwiło w niej ostrze, które rozszczepiło kości czaszki. Zerthimon pojął, że to właśnie uśmierciło człowieczą łupinę. Stal pozostawiła swój ślad na ciele, lecz ciało nie pozostawiło śladu na stali."~ */
  IF ~~ THEN REPLY #60540 /* ~Czytaj dalej...~ */ GOTO 19
  IF ~~ THEN REPLY #60541 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60542 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #60543 /* ~"Zerthimon podniósł ostrze i zbadał jego powierzchnię. Na powierzchni stali dojrzał swoje własne odbicie. To właśnie poprzez własne odbicie, które zobaczył na powierzchni klingi, Zerthimon po raz pierwszy *poznał* istotę samego siebie. Stal była ostra i służyła swemu właścicielowi. Ta właśnie klinga została wzniesiona przeciw Gith, kiedy Zerthimon ogłaszał Oświadczenie o Dwóch Niebiosach."~ */
  IF ~~ THEN REPLY #60544 /* ~Czytaj dalej...~ */ GOTO 20
  IF ~~ THEN REPLY #60545 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60546 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #60547 /* ~"Zerthimon zatrzymał ostrze na wiele obrotów i kierował ku niemu wiele myśli. Używał go w swej pracy na Polach, a korzystając zeń, myślał o tym, jak inaczej można je wykorzystać."~ */
  IF ~~ THEN REPLY #60548 /* ~Czytaj dalej...~ */ GOTO 21
  IF ~~ THEN REPLY #60549 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60550 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60551 /* ~"*Illithidowie* byli wszakże potężni. Zerthimon uważał, że nie było takiej rzeczy, której istoty by oni nie *poznali*. Wszelako *Illithidowie* nigdy nie posługiwali się stalą. Ich jedynym narzędziem było ciało. Wszystko dokonywane było w oparciu o ciało, albowiem *Illithidowie*, stworzeni byli z ciała i *poznawali* jego istotę. Ale stal potężniejszy była od ciała. Jeżeli bowiem stal zabiła człowieczą łupinę, znaczyło to, że ciało było słabsze od stali."~ */
  IF ~~ THEN REPLY #60552 /* ~Czytaj dalej...~ */ GOTO 22
  IF ~~ THEN REPLY #60553 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60554 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #60555 /* ~"To właśnie wówczas Zerthimon *poznał* istotę tego, że ciało ustępuje stali. *Poznawszy* to, Zerthimon *poznał* również to, że stal jest potężniejsza od *Illithidów*."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60556 /* ~Dokończ czytanie symboli.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",4)
~ GOTO 23
  IF ~  !Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #67272 /* ~Dokończ czytanie symboli.~ */ GOTO 23
  IF ~~ THEN REPLY #60557 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60558 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #60559 /* ~"Stal stała się świętością Ludu. *Poznajcie*, iż stal jest świętością, poprzez którą Lud *poznał* istotę wolności."~ */
  IF ~~ THEN REPLY #60562 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60586 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.13 12.1
  SAY #60587 /* ~"Przez wiele obrotów Zerthimon pracował ciężko w mrocznych krainach Fałszywych Światów, dla *Illithida* Arlathiego Dwakroć Poległego. Praca ta zdruzgotałaby grzbiety wielu innych, ale Zerthimon pracował dalej, cierpiąc z wyczerpania i udręki."~ */
  IF ~~ THEN REPLY #60588 /* ~Czytaj dalej...~ */ GOTO 25
  IF ~~ THEN REPLY #60590 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60591 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #60592 /* ~"I zdarzyło się, że *Illithid* Arlathii Dwakroć Poległy wezwał Zerthimona przed swoje oblicze. Zarzucił Zerthimonowi, że ten popełnił wykroczenia nierozumnego oporu i tchórzostwa, na szkodę Illithidów. Oskarżenia te były kłamliwe, ale chytry Arlathii chciał tylko *poznać*, czy w Zerthimonie nie mieszka gniew. Chciał *poznać*, czy serce Zerthimona to serce niewolnika, czy serce buntownika."~ */
  IF ~~ THEN REPLY #60593 /* ~Czytaj dalej...~ */ GOTO 26
  IF ~~ THEN REPLY #60594 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60595 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #60596 /* ~"Zerthimon wolał przyjąć w milczeniu karę *Illithidów*, niżeli zdradzić swą nowo odkrytą siłę. Wiedział, że jeżeli okaże nienawiść, nie przysłuży się niczemu, a za to zaszkodzi innym, którzy myśleli tak jak on. Zerthimon zdecydował się przebyć karę i umieszczono go pośród Słupów Milczenia, i wystawiono na męki, trwające jeden obrót."~ */
  IF ~~ THEN REPLY #60597 /* ~Czytaj dalej...~ */ GOTO 27
  IF ~~ THEN REPLY #60598 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60599 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #60600 /* ~"Cierpiąc męki na Słupach, Zerthimon przeniósł swe myśli ku miejscu wolnym od bólu, dostępnym dla ducha, nie dla ciała. Przetrwał cały obrót, potem zaś znowu sprowadzono go przed oblicze Arlathii Dwakroć Poległego, Zerthimon wedle zwyczaju wyraził wdzięczność za karę, którą musiał odbyć. Uczyniwszy to, utwierdził się w oczach *Illithida* jako niewolnik, chociaż serce jego pozostało wolne."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60601 /* ~Dokończ czytanie symboli.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",6)
~ GOTO 28
  IF ~  !Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #67275 /* ~Dokończ czytanie symboli.~ */ GOTO 28
  IF ~~ THEN REPLY #60602 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60603 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #60604 /* ~"Wzniósłszy się ponad własną nienawiść, Zerthimon sprawił, że Arlathii Dwakroć Poległy uznał go za słabego. Lecz kiedy nadszedł czas Wielkiego Powstania, Arlathii był pierwszym *Illithidem*, który *poznał* istotę śmierci z ręki Zerthimona i poległ po raz trzeci."~ */
  IF ~~ THEN REPLY #60605 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60606 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 1.14 12.2
  SAY #60607 /* ~"*Poznajcie*, że Wielkie Powstanie Ludu przeciw *Illithidom* było dziełem wielu dziesiątków obrotów. Zebrano wielu z Ludu i sekrecie wyćwiczono ich w sztuce walki z *Illithidami*. Uczyli się, jak osłaniać własne umysły i używać ich jako oręża. Uczyli się świętych prawd miecza, a, ponad wszystko, *poznawali* istotę wolności."~ */
  IF ~~ THEN REPLY #60608 /* ~Czytaj dalej...~ */ GOTO 30
  IF ~~ THEN REPLY #60609 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60610 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #60611 /* ~"Kilku spośród Ludu *poznało* naturę wolności i przyjęło ją do swych serc. *Poznanie* istoty wolności uczyniło ich potężnymi. Inni zaś wystraszyli się imienia wolności i pozostali cisi. Ale byli i tacy, którzy *poznali* istotę wolności i *poznali* istotę niewoli, lecz wolą ich było, aby Lud pozostał w okowach. Jednym z nich był Vilquar."~ */
  IF ~~ THEN REPLY #60612 /* ~Czytaj dalej...~ */ GOTO 31
  IF ~~ THEN REPLY #60613 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60614 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #60615 /* ~"Vilquar nie dostrzegał *wolności* w Wielkim Powstaniu, a jedynie interes. Widział, że *Illithidowie* rozmnożyli się na wielu Fałszywych Światach. Było tych światów tak wiele, że spojrzenie *Illithidów* sięgało jedynie na zewnątrz, ku tym, których jeszcze nie pochłonęli. Vilquar dostrzegł, że było wiele rzeczy, z których *Illithidowie* nie zdawali sobie sprawy. Nie dostrzegli oni przygotowań do Wielkiego Powstania."~ */
  IF ~~ THEN REPLY #60616 /* ~Czytaj dalej...~ */ GOTO 32
  IF ~~ THEN REPLY #60617 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60618 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #60619 /* ~"Vilquar przybył przed oblicze swojego pana - *Illithida* Zhijitarisa  i pozwolił mu *poznać* istotę przygotowań do Wielkiego Powstania. Potem Vilquar dodał kolejne kajdany do brzemienia swej niewoli, bowiem zgodził się służyć jako szpieg *Illithidów*. W zamian, zażądał od swego pana nagrody, zaś ten zgodził się to."~ */
  IF ~~ THEN REPLY #60620 /* ~Czytaj dalej...~ */ GOTO 33
  IF ~~ THEN REPLY #60628 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60629 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #60630 /* ~"Z chwilą zawarcia sekretnego przymierza między Vilquarem a *Illithidami*, nastąpiły czasy mroku. Wiele w tym czasie zdrad popełnił Vilquar i wielu ze swojego Ludu rzucił na pożarcie *Illithidów*. I zdało się, że Wielkie Powstanie zemrze przed swymi narodzinami. A *Illithidowie* z zadowoleniem spoglądali na służbę Vilquara."~ */
  IF ~~ THEN REPLY #60631 /* ~Czytaj dalej...~ */ GOTO 34
  IF ~~ THEN REPLY #60634 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60637 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #60638 /* ~"Lecz pod koniec tego okresu mroku, Zerthimon *poznał* istotę wiarołomstwa Vilquara. *Poznawszy* zaś istotę jego zdrady, Zerthimon nakazał trzymać w skrecie przygotowania, tak, aby Vilquar mógł myśleć, że jego liczne zdrady wreszcie się powiodły i Powstanie upadło. Zerthimon *poznał* istotę tego, że myśl Vilquara mknęła jedynie ku nagrodzie, którą przyobiecali mu Illithidowie. Vilquar widział tylko to, co chciał widzieć."~ */
  IF ~~ THEN REPLY #60639 /* ~Czytaj dalej...~ */ GOTO 35
  IF ~~ THEN REPLY #60640 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60641 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #60642 /* ~"Z chciwością w sercu, Vilquar przybył przed oblicze Zhijitarisa i opowiedział swemu panu o swoim zwycięstwie. Rzekł mu, że powstanie upadło, a *Illithidowie* mogą znowu skupiać swą uwagę na świecie zewnętrznym. Vilquar pochwalił mądrość, jaką okazali używając go jako szpiega i zażądał od nich przyobiecanej nagrody."~ */
  IF ~~ THEN REPLY #60643 /* ~Czytaj dalej...~ */ GOTO 36
  IF ~~ THEN REPLY #60644 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60645 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #60646 /* ~"W swej ślepej chciwości Vilquar zatracił *poznanie* istoty tego, dlaczego Lud dążył do wolności. Vilquar zatracił *poznanie* istoty niewoli. Zapomniał, co widzieli w nim i w jego pobratymcach panowie z rasy *Illithidów*. I tak to zdrada Vilquara wobec Ludu przyniosła inną zdradę. Vilquar *poznał* wówczas istotę tego, że gdy skończyła się jego służba dla *Illithidów*, stał się dla nich zbyteczny."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60647 /* ~Dokończ czytanie symboli.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",8)
~ GOTO 37
  IF ~  !Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #67276 /* ~Dokończ czytanie symboli.~ */ GOTO 37
  IF ~~ THEN REPLY #60649 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60651 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #60652 /* ~"*Illithidowie* sowicie wynagrodzili Vilquara, otwierając jego czaszkę i pożerając jego mózg. Trupa zaś rzucili na Pola Łupin, tak aby jego krew mogła nasączyć dywany trującego ziela."~ */
  IF ~~ THEN REPLY #60653 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60654 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 1.15 12.3
  SAY #60655 /* ~"Zerthimon był pierwszym, który *poznał* istotę wolności. Wszelako nie był pierwszym, który *poznał* istotę buntu."~ */
  IF ~~ THEN REPLY #60656 /* ~Czytaj dalej...~ */ GOTO 39
  IF ~~ THEN REPLY #60657 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60658 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #60659 /* ~"Istotę buntu dane było *poznać* królowej-wojowniczce Gith, pochodzącej spośród Ludu. Gith wiele razy służyła zbrojnie *Illithidom* w wielu Światach Fałszywych, i *poznała* istotę wojny, i wlała miłość do niej w swoje serce. Ona to *poznała* istotę tego, jak powinno się rządzić ludami i jak je podbijać. Ona *poznała* ścieżki mocy i ona *poznała* istotę wykradania z rąk zdobywców oręża, przeciwko któremu byli oni bezbronni. Myśli Gith szły w jednym kierunku, a jej wola i jej ostrza stanowiły jedność."~ */
  IF ~~ THEN REPLY #60660 /* ~Czytaj dalej...~ */ GOTO 40
  IF ~~ THEN REPLY #60661 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60662 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #60663 /* ~"Kiedy zaś Zerthimon *poznał* istotę duszy Gith, przestał był świadom istoty samego siebie. Słowa Gith były jak płomienie, które ogarniały serca wszystkich, którzy słuchali jej mowy. Usłyszawszy słowa Gith, Zerthimon zapragnął *poznać* istotę wojny. Nie wiedział, jaka siła to sprawia, lecz wiedział, że pragnie połączyć swój miecz z mieczem Gith. Wiedział, że pragnie znaleźć ujście dla swojej nienawiści i podzielić się swym bólem z *Illithidami*."~ */
  IF ~~ THEN REPLY #60664 /* ~Czytaj dalej...~ */ GOTO 41
  IF ~~ THEN REPLY #60665 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60666 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #60667 /* ~"Gith była jedną z Ludu, ale jej *poznanie* istoty samej siebie była daleko większe, niż jakiekolwiek innego stworzenia, z jakim zetknął się Zerthimon. Gith *poznała* sztukę ciała i *poznała* istotę *Illithidów*, a dzięki tej wiedzy, poznała też istotę tego, jak pokonać ich w otwartej wojnie. Potęga jej wiedzy była tak ogromna, że wszyscy, którzy znaleźli się w pobliżu Gith wnet *poznali* istotę samych siebie."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60668 /* ~Dokończ czytanie symboli.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",10)
~ GOTO 42
  IF ~  !Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #67277 /* ~Dokończ czytanie symboli.~ */ GOTO 42
  IF ~~ THEN REPLY #60669 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60670 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #60671 /* ~"Nie było nikogo ponad Gith. Jej moc była tak wielka, że sprawiała, że inni poznawali *istotę* własnej mocy. I Zerthimon złożył swój miecz u jej stóp."~ */
  IF ~~ THEN REPLY #60672 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60673 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.16 12.4
  SAY #60674 /* ~"Na Spopielonej Równinie, Zerthimon rzekł Gith, że nad światem nie może być dwóch niebios. A kiedy rozległy się jego słowa, nadszedł czas wojny."~ */
  IF ~~ THEN REPLY #60675 /* ~Czytaj dalej...~ */ GOTO 44
  IF ~~ THEN REPLY #60676 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60677 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #60678 /* ~"Na Spopielonej Równinie, Lud odniósł zwycięstwo nad swymi panami z rasy *Illithidów*. Tak oto *poznali* istotę wolności."~ */
  IF ~~ THEN REPLY #60679 /* ~Czytaj dalej...~ */ GOTO 45
  IF ~~ THEN REPLY #60680 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60683 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #60684 /* ~"Jeszcze zanim zgasły wszystkie zielone ognie pobojowiska, Gith poczęła mówić o dalszej wojnie. Zgodziło się z nią wielu, których serca przepełnione były żądzą krwi. Gith mówiła nie tyle o pokonaniu *Illithidów*, lecz raczej o ich zgładzeniu. Kiedy zaś wszyscy *Illithidzi* zostaliby już zniszczeni, Gith miała poprowadzić wojnę przeciw wszystkim innym rasom w Sferach."~ */
  IF ~~ THEN REPLY #60685 /* ~Czytaj dalej...~ */ GOTO 46
  IF ~~ THEN REPLY #60686 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60687 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #60689 /* ~"W sercu Gith rozpaliły się ognie gniewu. Żyła ona wojną i w wojnie *poznała* istotę samej siebie. Pragnęła podbić wszystko, co napotkało jej spojrzenie."~ */
  IF ~~ THEN REPLY #60690 /* ~Czytaj dalej...~ */ GOTO 47
  IF ~~ THEN REPLY #60694 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60697 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #60698 /* ~"Zerthimon wypowiedział słowa, które zapoczątkowały opór przeciw Gith. Zerthimon rzekł Gith, że Lud ich już *poznał* istotę wolności. Teraz zaś powinien raz jeszcze *poznać* istotę samego siebie i naprawić szkody, których dawniej doznał. Zaś słowom Zerthimona przyklasnęło wielu innych z Ludu, albowiem zmęczyła ich wojna przeciw *Illithidom*."~ */
  IF ~~ THEN REPLY #60699 /* ~Czytaj dalej...~ */ GOTO 48
  IF ~~ THEN REPLY #60700 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60701 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #60702 /* ~"*Poznajcie*, że serce Gith i serce Zerthimona nie zgadzały się. Gith chciała, aby wojnę prowadzono dalej. Aby zniszczono wszystkich *Illithidów*. Aby ich ciała zniknęły. Wtedy Lud mógłby ogłosić się panem na Fałszywych Ziemiach. Gith powiedziała Zerthimonowi, że w tej kwestii ich serca nigdy nie będą zgodne. A słowa jej były zimne jak naga stal."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60703 /* ~Dokończ czytanie symboli.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",12)
~ GOTO 49
  IF ~  !Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #67278 /* ~Dokończ czytanie symboli.~ */ GOTO 49
  IF ~~ THEN REPLY #60707 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60708 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #60709 /* ~"I Zerthimon ogłosił Oświadczenie o Dwóch Niebiosach. A zaraz po jego słowach nadeszła wojna."~ */
  IF ~~ THEN REPLY #60710 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60711 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.10
  SAY #60719 /* ~Ostrożnie badasz Krąg, obserwując połączenia i poszukując nowych układów, ale mimo twoich wysiłków, żadne nowe kręgi nie wynurzają się.~ */
  IF ~~ THEN REPLY #60720 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60721 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 1.6 1.8
  SAY #60722 /* ~Kiedy sprawdzasz pierścienie Drugiego Kręgu, odnajdujesz dziwne połączenie płytek, snujące opowieść o trudach ludu Gith przygotowującego Wielkie Powstanie. Z połączenia tego wynurza się nowy Krąg. Otwierasz go, pociągając za płytkę i odczytujesz nową historię.~ */
  IF ~~ THEN REPLY #60724 /* ~Ocdczytaj symbole...~ */ GOTO 53
  IF ~~ THEN REPLY #60725 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60726 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 1.7 1.9
  SAY #60727 /* ~Kiedy badasz pierścienie siedmiu Kręgów Zerthimona, nagle dostrzegasz, że połączenia sformowały nowy wzór. Chwytasz palcami krawędzie Kręgu, otwierasz ukryty segment i wyciągasz płytkę. Możesz się jej teraz przyjrzeć.~ */
  IF ~~ THEN REPLY #60728 /* ~Odczytaj symbole...~ */ GOTO 57
  IF ~~ THEN REPLY #60730 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60731 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 1.17 51.0
  SAY #60732 /* ~"*Poznajcie*, że Wielkie Powstanie Ludu przeciwko *Illithidom* było dziełem długiego czasu. Wielu z Ludu przeżyło swe żywoty i zmarło, zanim przygotowano Wielkie Powstanie."~ */
  IF ~~ THEN REPLY #60733 /* ~Czytaj dalej...~ */ GOTO 54
  IF ~~ THEN REPLY #60734 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60735 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #60736 /* ~"Fundamenty Wielkiego Powstania wznoszono powoli. Zbierano stal, aby można nią było pozostawić ślady na ciele *Illithidów*. Rozwinięto sposoby *poznawania* poruszeń Illithidów, na początku słabe i zawodne, potem zaś silniejsze, niczym krzepki młodzieniec wyrastający ze słabego dziecka. Zaś kiedy *poznano* istotę poruszeń Illithidów, czujnie ich obserwowano. Obserwacja ta pozwoliła bowiem na *poznanie* istoty umysłów *Illithidów*."~ */
  IF ~~ THEN REPLY #60737 /* ~Czytaj dalej...~ */ GOTO 55
  IF ~~ THEN REPLY #60738 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60739 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #60740 /* ~"Kiedy zaś *poznano* istotę umysłów Illithidów, zebrano wielu spośród Ludu i w sekrecie nauczono ich sposobów osłaniania własnych umysłów i sposobów używania umysłów jako narzędzi walki. Nauczono ich świętych prawd stali, zaś nade wszystko, pozwolono im *poznać* istotę wolności."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60741 /* ~Dokończ czytanie symboli.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",15)
~ GOTO 56
  IF ~  !Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #67279 /* ~Dokończ czytanie symboli.~ */ GOTO 56
  IF ~~ THEN REPLY #60743 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60744 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 55.1
  SAY #60745 /* ~"Wszelako rzeczy takie nie przyszły od razu. *Poznawanie* istoty wielu rzeczy było powolne, zaś brzemię czasu ciążyło wszystkimi jednakowo. Od *poznania* istoty odbicia w ostrzu stali, poprzez *poznanie* istoty posługiwania się własną wolą, aż po poznanie *istoty* postrzegania własnej woli. Wszystkie te rzeczy i wiele innych z wolna *poznawał* Lud. I po pewnym czasie *poznał* wszystko."~ */
  IF ~~ THEN REPLY #60746 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60747 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.18 52.0
  SAY #60748 /* ~"*Poznajcie*, że podzielony umysł dzieli również duszę. Wola i dłoń muszą być jednym. *Poznawszy* istotę tego, staniecie się silni."~ */
  IF ~~ THEN REPLY #60749 /* ~Czytaj dalej...~ */ GOTO 58
  IF ~~ THEN REPLY #60750 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60751 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #60752 /* ~"*Poznajcie*, że czyny wasze muszą iść za głosem szczerości, z głębin waszego serca. Nie próbujcie czynami sprzeniewierzać się swemu sercu, bowiem droga taka zaprowadzi was ku nieszczęściom. *Poznajcie*, że bez wielkiego cierpienia, Wielkie Powstanie nigdy by nie doszło do skutku, a Lud nigdy by nie *poznał* istoty samego siebie."~ */
  IF ~~ THEN REPLY #60753 /* ~Czytaj dalej...~ */ GOTO 59
  IF ~~ THEN REPLY #60754 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60755 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #60756 /* ~"*Poznajcie*, że nie ma we wszystkich światach potęgi większej niźli jedność. Kiedy wszyscy *poznają* istotę jednego zamierzenia, kiedy dłonie wszystkich poprowadzi jedna wola, a czynom wszystkich będzie przyświecać jeden cel, Sfery zostaną wzruszone w swych podstawach."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60757 /* ~Dokończ czytanie symboli.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",18)
~ GOTO 60
  IF ~  !Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #67280 /* ~Dokończ czytanie symboli.~ */ GOTO 60
  IF ~~ THEN REPLY #60764 /* ~Przerwij lekturę i ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60769 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #60773 /* ~"Podzielony umysł to taki, który nie jest zdolny *poznać* istoty samego siebie. Podzielony umysł rozszczepia ciało. Myśli skoncentrowane na jednym celu wzmacniają ciało. *Poznając* siebie, rośnijcie w siłę."~ */
  IF ~~ THEN REPLY #60774 /* ~Ponownie zbadaj krąg.~ */ GOTO 1
  IF ~~ THEN REPLY #60775 /* ~Zawrzyj na powrót płytki i zapieczętuj Krąg.~ */ EXIT
END
