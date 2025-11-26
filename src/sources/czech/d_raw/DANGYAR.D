// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DANGYAR~

IF ~  Global("Angyar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3007 /* ~Muž vypadá... posedlý. Oči má napůl zavřené, jako by měl problémy se spaním, a jeho vlasy jsou dlouhé a nečesané. Bradku má pokrytou kousky mrtvé kůže a starými zbytky jídla. Nevypadá to, že by si tvého příchodu všiml.~ */
  IF ~~ THEN REPLY #3008 /* ~"Zdravím..."~ */ DO ~SetGlobal("Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11701 /* ~Zanechej muže jeho myšlenkám.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11671 /* ~Muž se podíval po hlase a jeho lenivý výraz zmizel... vypadá, jako by mu někdo zapálil plamínky v očích. "Co se sereš do mýho domu?" Zúžil oči a zatnul zuby. "Dělej! Nebo tě pošlu zpátky do hrobu, ze kterýhos právě vylez!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11702 /* ~"Mluvil jsem s tvou ženou. Myslím, že ti můžu pomoct..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11703 /* ~"Mluvil jsem s tvou ženou. Myslím, že ti můžu pomoct..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11704 /* ~"No tak, jen si to zkus, jestli si myslíš, že na to máš sílu..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11705 /* ~"*Nikdo* se mnou nebude tak mluvit... Omluv se, nebo se z tohohle baráku stane hrobka."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11706 /* ~Ukaž mu jeho smlouvu se Spalovači.~ */ GOTO 6
  IF ~~ THEN REPLY #11707 /* ~"Uklidni se. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #11708 /* ~"Sbohem tedy."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 5.0 5.1
  SAY #11672 /* ~"Proč votravovals mojí starou?! Todle nejni žádnej útulek pro kurvomily... pro tebe bude nejlepčí dyž ji necháš bejt a vypadneš z mýho domu dřív, než si tě přičmárnou do knihy mrtvejch!"~ */
  IF ~~ THEN REPLY #11709 /* ~"No tak, jen si to zkus, jestli si myslíš, že na to máš sílu..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11710 /* ~"*Nikdo* se mnou nebude tak mluvit... Omluv se, nebo se z tohohle baráku stane hrobka."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11711 /* ~Ukaž mu jeho smlouvu se Spalovači.~ */ GOTO 6
  IF ~~ THEN REPLY #11712 /* ~"Uklidni se. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #11713 /* ~"Sbohem tedy."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.3 1.5 2.1 2.3 5.3 5.5
  SAY #11673 /* ~Muž nevýslovně zrudl a začal křičet. "Seš hluchej?!" Zavrčel a plivl ti pod nohy. *"Ty voplzlej, zjizvenej pse! Vodpal, nebo ti kůži nezachráněj ani všickni bozi, co sou!"*~ */
  IF ~~ THEN REPLY #11714 /* ~"No tak, jen si to zkus, jestli si myslíš, že na to máš sílu..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11715 /* ~"Sbohem tedy."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.6 2.4 3.1 5.6
  SAY #11674 /* ~"Nejlepčí bude, když se tady už nevokážeš, ty smradlavej parchante," rozloučil se muž.~ */
  IF ~~ THEN REPLY #11716 /* ~"Tak a je to. Vysloužil sis místo v hrobě."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11717 /* ~Odejdi beze slova.~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY #11675 /* ~Vidíš Angyara - nevypadá o nic lépe než předtím. Když ses k němu znovu přiblížil, pomalu se na tebe otočil. Jeho tvář ztvrdla. "Už zas! Tys mě asi POPRVÝ neslyšel, ty zavšivenej pse?! Vypadni z mýho domu, nebo, ať při mně stojej všickni bozi, tě podříznu tam co stojíš!"~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11718 /* ~"Mluvil jsem s tvou ženou. Myslím, že ti můžu pomoct..."~ */ GOTO 2
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11719 /* ~"Mluvil jsem s tvou ženou. Myslím, že ti můžu pomoct..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 2
  IF ~~ THEN REPLY #11720 /* ~"No tak, jen si to zkus, jestli si myslíš, že na to máš sílu..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11721 /* ~"*Nikdo* se mnou nebude tak mluvit... Omluv se, nebo se z tohohle baráku stane tvoje hrobka."~ */ GOTO 3
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11722 /* ~Ukaž mu jeho smlouvu se Spalovači.~ */ GOTO 6
  IF ~~ THEN REPLY #11723 /* ~"Uklidni se. Mám nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #11724 /* ~"Sbohem tedy."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 1.4 2.2 5.4
  SAY #11676 /* ~Když jsi vytáhl smlouvu, z Angyarovy tváře zmizela krev. Na chvíli jako by ztratil slova, pak se jeho zuřivost vrátila. "Kdes to vzal?! U všeckejch bohů, řekni mi to..."~ */
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11725 /* ~"Tvá žena mi řekla, kde je. Má o tebe strach."~ */ GOTO 7
  IF ~  GlobalGT("Angyar_Quest","GLOBAL",0)
Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11726 /* ~"Tvá žena mi řekla, kde je. Má o tebe strach."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_1","GLOBALLaw",-2)
~ GOTO 7
  IF ~~ THEN REPLY #11727 /* ~"Vzal jsem ho Spalovači jménem Mortai. Je na něm tvé jméno."~ */ GOTO 11
  IF ~~ THEN REPLY #11728 /* ~Roztrhej smlouvu.~ */ JOURNAL #64584 /* ~Roztrhal jsem Smrtelnou smlouvu, která Angyarovi způsobila tolik utrpení. Vypadal, že spolu s kousky papíru mizely i jeho roky. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #11677 /* ~Angyar si nejprve začal cosi mumlat, pak ale našel cíl své zloby: "Já... já jí *zabiju*! Já..."~ */
  IF ~~ THEN REPLY #11729 /* ~"*Nedotkneš* se jí, jestli víš, co je pro tebe dobré."~ */ GOTO 8
  IF ~~ THEN REPLY #11730 /* ~"To je tvoje věc, ale nejdříve si to vyřídíme spolu: co mi dáš za tu smlouvu?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #11731 /* ~"Řekla mi o tom, protože má o tebe strach... a tvoje reakce je *potrestat* ji za to, že se o tebe stará?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #11732 /* ~Roztrhat smlouvu.~ */ JOURNAL #64584 /* ~Roztrhal jsem Smrtelnou smlouvu, která Angyarovi způsobila tolik utrpení. Vypadal, že spolu s kousky papíru mizely i jeho roky. ~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #11678 /* ~"Ty se... ty se *opovažuješ* poučovat mě, jak se mám v mým *vlastním zkurveným* domě chovat?" Zhluboka se nadechl a pak vybuchl: "Vystřel, sakra! A vezmi si ten zasranej papír s sebou!"~ */
  IF ~~ THEN REPLY #11733 /* ~"Tak proč mě nedonutíš odejít, když si myslíš, že na to máš..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11734 /* ~"Počkej!  Řekla mi to proto, že má o tebe starost... a tvoje reakce je *potrestat* ji za to, že se o tebe stará?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Angyar_2","GLOBALGood",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #11679 /* ~"Lhala mě, svýmu *manželovi!*" Angyarov sevřel ruku do pěsti a upřeně se na tebe podíval. "Řikal sem jí, aby vo tom s nikým nemluvila a vona to vyslepičí prvnímu cizákovi, kerej sem přitáhne!" ~ */
  IF ~~ THEN REPLY #11735 /* ~"Porušila svůj slib, protože tě miluje. Zákony a přísahy musí někdy ustoupit před důležitějšími věcmi."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",0)
~ THEN REPLY #11736 /* ~"Máš důvod být rozzlobený. Neměla by slibovat, když ten slib nechtěla dodržet. Nemůžu mít respekt pro lidi, kteří porušují přísahy, ale tahle věc už je teď minulostí."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Angyar_1","GLOBALLaw",1)
~ GOTO 10
  IF ~  Global("Lawful_Wife_of_Angyar_1","GLOBAL",1)
~ THEN REPLY #11737 /* ~"Máš důvod být rozzlobený. Neměla by slibovat, když ten slib nechtěla dodržet. Nemůžu mít respekt pro lidi, kteří porušují přísahy, ale tahle věc už je teď minulostí."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_4","GLOBALLaw",-2)
~ GOTO 10
  IF ~~ THEN REPLY #11738 /* ~"No, udělala to a ty se s tím teď budeš muset vyrovnat. K tomu se už nedá víc říct."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11680 /* ~Zdá se, že Angyar se trochu uklidnil a zabručel: "Co se stalo, stalo se..." Podezřívavě se na tebe podíval, pak kývl na smlouvu. "Co teda chceš dělat s tim papírem?"~ */
  IF ~~ THEN REPLY #11741 /* ~Roztrhat smlouvu.~ */ JOURNAL #64584 /* ~Roztrhal jsem Smrtelnou smlouvu, která Angyarovi způsobila tolik utrpení. Vypadal, že spolu s kousky papíru mizely i jeho roky. ~ */ GOTO 12
  IF ~~ THEN REPLY #11739 /* ~"Předpokládám, že mi za to zaplatíš, stejně jako za to zaplatili tobě."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY #11681 /* ~Angyar nemůže od smlouvy odtrhnout oči. "Pročs mi to přines?" Dívá se podezřívavě: "Chceš to prodat?"~ */
  IF ~~ THEN REPLY #11740 /* ~Roztrhat smlouvu.~ */ JOURNAL #64584 /* ~Roztrhal jsem Smrtelnou smlouvu, která Angyarovi způsobila tolik utrpení. Vypadal, že spolu s kousky papíru mizely i jeho roky. ~ */ GOTO 12
  IF ~~ THEN REPLY #11742 /* ~"Předpokládám, že mi za to zaplatíš, stejně jako za to zaplatili tobě."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_1","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 6.3 7.3 10.0 11.0 14.0
  SAY #11682 /* ~Roztrhal jsi listinu a Angyar zničenýma očima sleduje kousky papíru, jak padají na zem. Nepatrně se zachvěl, poté se narovnal, jako by z něj spadlo velké břímě. "Ty..." Vypadá, jako by ti chtěl poděkovat, pak se ale zarazil a podezřívavě si tě měří. "Nic není zadara. Aspoň ne v Úlu, kámo."~ */
  IF ~~ THEN REPLY #11743 /* ~"Považuj to za službu zadarmo. A očekávej, že se v Úlu spousta věcí změní, dokud budu poblíž."~ */ DO ~AddexperienceParty(750)
IncrementGlobalOnceEx("GLOBALGood_Angyar_1","GLOBALGood",2)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 13
  IF ~~ THEN REPLY #11744 /* ~"Možná budu v budoucnosti potřebovat nějakou službičku. Můžeš mi pomoct?"~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 30
  IF ~~ THEN REPLY #11745 /* ~"No, jestli máš pocit, že mi něco dlužíš, tak  mám nějaké otázky..."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ GOTO 15
  IF ~~ THEN REPLY #11746 /* ~"Tak si najdi způsob, jak mi zaplatit. Prozatím sbohem."~ */ DO ~AddexperienceParty(750)
DestroyPartyItem("AContrac",FALSE)
SetGlobal("Angyar","GLOBAL",2)
SetGlobal("Angyar_Quest","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11683 /* ~Angyarův rozhněvaný výraz zjihnul; vypadá unavený z toho nenadálého štěstí. "Já... já... já sem se asi musel poslední půlměsíc modlit k tý správný mocnosti." Vzdychl. "Máš mý díky, kámo... Ať už maj jakoukoliv cenu."~ */
  IF ~~ THEN REPLY #11747 /* ~"No, možná mi můžeš pomoct... Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11748 /* ~"Jenom neudělej znovu stejnou chybu. Příště nemusím být poblíž, abych ti pomohl."~ */ EXIT
  IF ~~ THEN REPLY #11749 /* ~"Má to pro mě velkou cenu. Dej na sebe pozor, Angyare."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1 10.1 11.1
  SAY #11684 /* ~"Už jsem svůj život jednomu chlapovi prodal a znova to dělat nebudu, zvlášť ne chodící mrtvole." Zabručel. "Vypadni z mýho domu, nebo umřeš podruhý!"~ */
  IF ~~ THEN REPLY #11750 /* ~Roztrhat smlouvu.~ */ JOURNAL #64584 /* ~Roztrhal jsem Smrtelnou smlouvu, která Angyarovi způsobila tolik utrpení. Vypadal, že spolu s kousky papíru mizely i jeho roky. ~ */ GOTO 12
  IF ~~ THEN REPLY #11751 /* ~"Chceš mě zabít? Tak pojď, zkus si to..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11752 /* ~"Velmi dobře. Nechám si tu smlouvu u sebe... Jenom abys věděl, že pořád existuješ, a že až zemřeš, bude platit. Sbohem, Angyare."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Angyar_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Angyar_2","GLOBALGood",-1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.2 13.0 16.1 17.3 18.3 19.2 20.1 21.0 22.1 23.3 25.2 26.0 27.0 28.1 29.0 30.0
  SAY #11685 /* ~Angyar pokýval. "Ptej se."~ */
  IF ~~ THEN REPLY #11753 /* ~"Můžu se tě zeptat, proč jsi se upsal Spalovačům?"~ */ GOTO 22
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11754 /* ~"Hledám muže jménem Pharod. Nevíš, kde bych ho mohl najít?"~ */ GOTO 16
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11755 /* ~"Ztratil jsem deník. Neviděl jsi nějaký poblíž?"~ */ GOTO 29
  IF ~~ THEN REPLY #11756 /* ~"Nebude ti vadit, když si tady odpočinu?"~ */ GOTO 28
  IF ~~ THEN REPLY #11757 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #11686 /* ~Angyar pokýval. "To méno znám a není to voblíbený méno."~ */
  IF ~~ THEN REPLY #11758 /* ~"Co mi o něm můžeš říct?"~ */ GOTO 17
  IF ~~ THEN REPLY #11759 /* ~"Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11760 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11687 /* ~Zamračil se. "Je to jeden z těch Sběračů a taky někdo s dlouhým stínem: má pár chlapců kerý přiběhnou, když kejvne prstem. Není to zrovna pán sféry, ale do křížku bych se s ním pouštět nechtěl."~ */
  IF ~~ THEN REPLY #11761 /* ~"Sběrači?"~ */ GOTO 18
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11762 /* ~"Nevíš, kde bych ho mohl najít?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar mi řekl, kde bych našel Pharoda; řekl, že Pharod je zahrabaný někde *pod* Hadrníkovým náměstím. Řekl mi, že tam je někde nějaký druh "portálu", který vede k Pharodovu úkrytu, a že budu potřebovat nějakou veteš, abych ho mohl otevřít. ~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11763 /* ~"Nevíš, kde bych ho mohl najít?"~ */ JOURNAL #64576 /* ~Angyar mi řekl, kde bych našel Pharoda; řekl, že Pharod je zahrabaný někde *pod* Hadrníkovým náměstím. Řekl mi, že tam je někde nějaký druh "portálu", který vede k Pharodovu úkrytu, a že budu potřebovat nějakou veteš, abych ho mohl otevřít. ~ */ GOTO 20
  IF ~~ THEN REPLY #11764 /* ~"Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11765 /* ~"Aha. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #11688 /* ~"Lidský supi, šakali, hyeny... voplzlý hajzlové, kerý nemaj kouska cti v těle. Většina z nich má brloh na Hadrníkově náměstí. Sbíraj mrtváky, voberou je vo všechno co má cenu a pak je prodávaj zpátky Spalovačům v Márnici."~ */
  IF ~~ THEN REPLY #11766 /* ~"Proč to dělají?"~ */ GOTO 19
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11767 /* ~"Takže Pharod je jeden z těch Sběračů? Nevíš, kde bych ho mohl najít?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar mi řekl, kde bych našel Pharoda; řekl, že Pharod je zahrabaný někde *pod* Hadrníkovým náměstím. Řekl mi, že tam je někde nějaký druh "portálu", který vede k Pharodovu úkrytu, a že budu potřebovat nějakou veteš, abych ho mohl otevřít. ~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11768 /* ~"Kdeže můžu najít toho Pharoda?"~ */ JOURNAL #64576 /* ~Angyar mi řekl, kde bych našel Pharoda; řekl, že Pharod je zahrabaný někde *pod* Hadrníkovým náměstím. Řekl mi, že tam je někde nějaký druh "portálu", který vede k Pharodovu úkrytu, a že budu potřebovat nějakou veteš, abych ho mohl otevřít. ~ */ GOTO 20
  IF ~~ THEN REPLY #11769 /* ~"Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11770 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11689 /* ~"Spalovači platěj za těla. Pomáhá to udržet ulice čistý, když zrovna neprší."~ */
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",0)
~ THEN REPLY #11771 /* ~"Takže Pharod je jeden z těch Sběračů? Nevíš, kde bych ho mohl najít?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Angyar_Betrays_Pharod","GLOBAL",1)
~ JOURNAL #64576 /* ~Angyar mi řekl, kde bych našel Pharoda; řekl, že Pharod je zahrabaný někde *pod* Hadrníkovým náměstím. Řekl mi, že tam je někde nějaký druh "portálu", který vede k Pharodovu úkrytu, a že budu potřebovat nějakou veteš, abych ho mohl otevřít. ~ */ GOTO 20
  IF ~  Global("Angyar_Betrays_Pharod","GLOBAL",1)
~ THEN REPLY #11772 /* ~"Kdeže můžu najít toho Pharoda?"~ */ JOURNAL #64576 /* ~Angyar mi řekl, kde bych našel Pharoda; řekl, že Pharod je zahrabaný někde *pod* Hadrníkovým náměstím. Řekl mi, že tam je někde nějaký druh "portálu", který vede k Pharodovu úkrytu, a že budu potřebovat nějakou veteš, abych ho mohl otevřít. ~ */ GOTO 20
  IF ~~ THEN REPLY #11773 /* ~"Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11774 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1 17.2 18.1 18.2 19.0 19.1
  SAY #11690 /* ~"Řeknu ti to, ale stejně tě asi nepotěším..." Jeho vrásky se prohloubily. "Jeden z mejch příbuznejch narazil na pár jeho lidí a votevřel si vo starym Pharodovi hubu na špacír... Pharod teď má svý doupě pohřbený někde *pod* Hadrníkovym náměstím. Vede tam ňákej portál, u kterýho potřebuješ mít v ruce haraburdí, aby ses skrz něj dostal."~ */
  IF ~~ THEN REPLY #11775 /* ~"Kde je to Hadrníkovo náměstí?"~ */ GOTO 21
  IF ~~ THEN REPLY #11776 /* ~"Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11777 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11691 /* ~"Je to pár bloků vocaď... di na západ od Márniční brány, pokavád neuvidíš všude kolem sebe bordel, hadry a harampádí. Uděláš nejlíp, když tam budeš vopatrnej... místní sběrači někdy nečekaj, až tělo umře, aby sebrali mrtvolu, chápeš?"~ */
  IF ~~ THEN REPLY #11778 /* ~"Mám nějaké další otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11779 /* ~"Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.0
  SAY #11692 /* ~"Možná tě zmátl ten luxus tady všude kolem..." Ušklíbl se. "Máme míň než nic a já potřebuju prachy. A je docela fuk, kde je vemu. Prodání mýho těla Spalovačum je vo moc čestnější než většina práce tady kolem..."~ */
  IF ~~ THEN REPLY #11780 /* ~"Co tě přesvědčilo, aby sis to rozmyslel?"~ */ GOTO 23
  IF ~~ THEN REPLY #11781 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11782 /* ~"Jsem jenom zvědavý. Sbohem, Angyare."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11693 /* ~"Prostě jen..." Povzdechl si a pokračoval: "Před půlměsícem sem uviděl jednu z těch zombie na ulici... jednu z těch zombie, co dělaj pro Spalovače a píchlo mě u srdce. Viděl sem, že sem zmákl chybu... nechcu po smrti patřit mezi ně."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #11783 /* ~"Tak to jsi neměl podepsat tu smlouvu."~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #11784 /* ~"Tak to jsi neměl podepsat tu smlouvu."~ */ GOTO 24
  IF ~~ THEN REPLY #11785 /* ~"Všichni občas uděláme nějakou chybu. ~ */ GOTO 26
  IF ~~ THEN REPLY #11786 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11787 /* ~"Jsem jenom zvědavý. Sbohem, Angyare."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1 25.0
  SAY #11694 /* ~Angyar zrudnul. "Nepotřebuju žádný z tvejch kázání! Sakra, ty se *odvažuješ* se mnou mluvit v mým vlastním domě vo svejch zásluhách? Nikdo se tě neprosil, abys pro mě ten zasranej papír sháněl - *nic* ti nedlužim, tak táhni! Táhni k čertu! Nechcu tě ani vidět!~ */
  IF ~~ THEN REPLY #11788 /* ~"Tak proč mě nedonutíš odejít, když si myslíš, že na to máš..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11789 /* ~"Sbohem tedy."~ */ DO ~Enemy()
SetGlobal("Angyar","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #11695 /* ~Jak se chystáš promluvit, něco ti říká, že Angyar pravděpodobně nepřijme tvé kázání pokojně.~ */
  IF ~~ THEN REPLY #11790 /* ~"Tak to jsi neměl podepisovat tu smlouvu, Angyare."~ */ GOTO 24
  IF ~~ THEN REPLY #11791 /* ~"Všichni občas uděláme nějakou chybu. ~ */ GOTO 26
  IF ~~ THEN REPLY #11792 /* ~"Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11793 /* ~"Jsem jenom zvědavý. Sbohem, Angyare."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.1
  SAY #11696 /* ~Angyar zabručel. "Taky si myslím..."~ */
  IF ~~ THEN REPLY #11794 /* ~"Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11795 /* ~"Dobrá, jsem jenom zvědavý. Sbohem, Angyare."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11697 /* ~Vidíš Angyara - vypadá mnohem lépe než předtím; do jeho tváře se vrátila trocha barvy a jeho oči ztratily svůj strašidelný vzhled. Když jsi k němu znovu přišel, pomalu se k tobě otočil a zafuněl: "Hmmm... eslipak to neni sám světec z Úlu, zachránce nebožáků ... nebožáků, jako sem já." Zabručel: "Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #11796 /* ~"Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11797 /* ~"Jenom jsem se chtěl podívat, jak se ti daří, Angyare. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 15.3 30.1
  SAY #11698 /* ~Angyar pokýval. "To je to nejmenší co můžu udělat. Stará ti přinese ňáký deky..."~ */
  IF ~~ THEN REPLY #11798 /* ~"Díky..."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11799 /* ~"Ještě nechci odpočívat. Mám nějaké otázky..."~ */ GOTO 15
  IF ~~ THEN REPLY #11800 /* ~"Ještě nechci odpočívat. Možná se ale vrátím, až se mi bude chtít spát. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 15.2
  SAY #11699 /* ~Angyar se zamračil, poté potřásl hlavou. "Nic takovýho sem neviděl, kámo."~ */
  IF ~~ THEN REPLY #11801 /* ~"Možná mi tedy můžeš odpovědět na pár otázek..."~ */ GOTO 15
  IF ~~ THEN REPLY #11802 /* ~"Stejně díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 12.1
  SAY #11700 /* ~"Už jsem svůj život jednomu chlapovi prodal a znova to dělat nebudu." Potřásl hlavou. "Teď urovnáme dluh."~ */
  IF ~~ THEN REPLY #11803 /* ~"Velmi dobře. Pokud cítíte potřebu zaplatit, mohl byste mi zodpovědět pár otázek..."~ */ GOTO 15
  IF ~~ THEN REPLY #11804 /* ~"Mohl bych si tady odpočinout."~ */ GOTO 28
  IF ~~ THEN REPLY #11805 /* ~"Nic mi nedlužíš, Angyare - ber to jako službu zdarma. Sbohem."~ */ EXIT
END
