// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELDOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELDOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #47128 /* ~Tvář má nehybnou, ale v jeho hlase je znát rozčilení. "Zradil jsi naše ideály. Není tu pro tebe místo. Naše stráže tě doprovodí k východu. Odejdeš v míru?"~ */
  IF ~~ THEN REPLY #47129 /* ~"Chtěl bych se omluvit a znovu vstoupit k Věřícím v pramen."~ */ GOTO 1
  IF ~~ THEN REPLY #47130 /* ~"Odejdu v míru."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47131 /* ~"Budete mě muset odtud vyhodit."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47132 /* ~"Jak ses jednou otočil zády k naší víře, není cesty zpět. Jestli chceš, můžeš na to nahlížet jako na další zkoušku, ale už se ti nikdy neotevřeme a nebudeme ti pomáhat v hledání poznání. Teď... odejdeš v pokoji, nebo bude prolévána krev?"~ */
  IF ~~ THEN REPLY #47133 /* ~"Odejdu v míru."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47134 /* ~"Budete mě muset odtud vyhodit."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #47135 /* ~"Zdravím, kamaráde! Co pro tebe dnes můžu udělat?"~ */
  IF ~~ THEN REPLY #47136 /* ~"Potřeboval bych uzdravit, jestli mohu žádat."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47137 /* ~"Potřebuji koupit pár věcí."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47138 /* ~"Rád bych tu přespal."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47139 /* ~"Rád bych viděl tajný projekt, jestli mohu."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47140 /* ~"Ztratil jsem odznak a nemůžu se dostat do místnosti s tajným projektem."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47143 /* ~"Bedai-Lihn mě požádala, abych stroj zničil."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47144 /* ~"Bedai-Lihn je ta, kdo zničila stroj."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47145 /* ~"Bedai-Lihn je ta, kdo zničila stroj."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47146 /* ~"Bedai-Lihn mě požádala, abych stroj zničil. Odmítl jsem ji, ale myslel jsem, že bych vám to měl říct."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47147 /* ~"Bedai-Lihn mě požádala, abych zabil Sandoze. Myslel jsem, že byste to měl vědět."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47148 /* ~"Bedai-Lihn mě požádala, abych zabil Sandoze. Myslel jsem, že byste to měl vědět."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47149 /* ~"Bedai-Lihn zabila Sandoze."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47150 /* ~"Bedai-Lihn zabila Sandoze."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47151 /* ~"Mám pro tebe vzkaz od vyvolávače Giltspura."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51167 /* ~"Nic, dík. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 9.3
  SAY #47152 /* ~"Dokázal jsi svou spolehlivost. Zde. Vezmi si tohle." Vkládá do tvých rukou odznak vyzdobený symbolem Božích lidí. "Neztrať to. Jestli se to stane, obávám se, že nový již nedostaneš, takže buď opatrný. Je ještě něco dalšího, co pro tebe mohu udělat?"~ */
  IF ~~ THEN REPLY #47153 /* ~"Ano, mám pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #47154 /* ~"Ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 9.4
  SAY #47155 /* ~"Lituji, ale nemohu ti dát jiný. Nevaroval jsem tě, že když o něj přijdeš, nový už nedostaneš?" Povzdechl si. "Je ještě něco dalšího, co pro tebe mohu udělat?"~ */
  IF ~~ THEN REPLY #47156 /* ~"Odpověz mi na pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #47157 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 2.9 2.10 2.12 9.5 9.7 9.8 9.9 9.10 9.12
  SAY #47158 /* ~Jeho přátelská tvář dostala tvrdý a chmurný výraz. "Je-li tomu tak, musíme ji zadržet a najít pravdu. A jestli se vše prokáže... popravíme ji. Omluv mě. Musím se věnovat svým povinnostem."~ */
  IF ~~ THEN REPLY #47159 /* ~"Jistě, samozřejmě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47160 /* ~Po návratu ti Keldor s pevnou tváří řekl. "Tvá informace pomohla k zatčení nebezpečného zločince. Získali jsme tím body u Harmonických a Nemilosrdných, tvým přičiněním. Máš naše díky - a čistě osobně, jsem ti vděčný, žes dokázal potvrdit mou víru, že jsi pro Boží lidi skvělou posilou."~ */
  IF ~~ THEN REPLY #47161 /* ~"Rádo se stalo. Mám pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #47162 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.6 2.11 9.6 9.11
  SAY #47163 /* ~Jeho přátelská tvář dostala tvrdý a chmurný výraz. "Je-li tomu tak, musíme ji zadržet a najít pravdu. A jestli se vše prokáže... popravíme ji. Omluv mě. Musím se věnovat svým povinnostem."~ */
  IF ~~ THEN REPLY #47164 /* ~"Jistě, samozřejmě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47165 /* ~Když se vrátil, jeho obličej byl ještě hrozivější. "Zmizela. Nikdo ji neviděl proklouznout ven a nikdo neví, kam šla. Přesto máš naše díky, že jsi nás varoval před její zradou. Buď ujištěn, že jakmile někde v tady ukáže svou tvář, je ztracena. Máš na to mé slovo."~ */
  IF ~~ THEN REPLY #47166 /* ~"Mám na tebe pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #47167 /* ~"Jestli ji potkám, bude to jisté. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.0 6.0 8.0 11.0 55.0
  SAY #47168 /* ~"Další otázky? Co chceš vědět?"~ */
  IF ~~ THEN REPLY #47169 /* ~"Potřeboval bych uzdravit, jestli mohu žádat."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47170 /* ~"Potřebuji koupit pár věcí."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47171 /* ~"Rád bych tu přespal."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47172 /* ~"Rád bych viděl tajný projekt, jestli mohu."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47173 /* ~"Ztratil jsem odznak a nemůžu se dostat do místnosti s tajným projektem."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47174 /* ~"Bedai-Lihn mě požádala, abych stroj zničil."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47175 /* ~"Bedai-Lihn je ta, kdo zničila stroj."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47176 /* ~"Bedai-Lihn je ta, kdo zničila stroj."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47177 /* ~"Bedai-Lihn mě požádala, abych stroj zničil. Odmítl jsem ji, ale myslel jsem, že bych vám to měl říct."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47178 /* ~"Bedai-Lihn mě požádala, abych zabil Sandoze. Myslel jsem, že byste to měl vědět."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47179 /* ~"Bedai-Lihn mě požádala, abych zabil Sandoze. Myslel jsem, že byste to měl vědět."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47180 /* ~"Bedai-Lihn zabila Sandoze."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47181 /* ~"Bedai-Lihn zabila Sandoze."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47182 /* ~"Mám pro tebe vzkaz od vyvolávače Giltspura."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51168 /* ~"Nic, dík. Sbohem."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",5)
~ THEN BEGIN 10 // from: 12.12
  SAY #47183 /* ~"Vyslovíš přísahu Božích lidí a vstoupíš mezi nás?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47184 /* ~"Ano."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47185 /* ~"Ano."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47186 /* ~"Ano."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66311 /* ~"Ano."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66312 /* ~"Ano."~ */ GOTO 56
  IF ~~ THEN REPLY #66313 /* ~"Ještě ne. Nejdřív mám nějaké otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #66314 /* ~"Ještě ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 51.0 52.0 56.0 56.1 56.2 56.3 56.4
  SAY #47187 /* ~Přísaha: "Strasti života jsou zkouškami. Vše, co mě potká, je poučením. Bolest je způsob, jakým nám mnohovesmír vštěpuje své lekce. Co nejvíce nenávidím na jiných lidech, je odrazem toho, co nenávidím na sobě. Budu konat tak, abych zvyšoval svou sílu a pomáhal jiným v dosažení jejich cílů. Budu pamatovat, že jiskra božství je ve všech věcech. Přísahám věrnost cestě Věřících v pramen a nikdy se jí nevzdám." Složil jsi přísahu a Keldor se usmál. "Vítej u Božích lidí, příteli. Potřebuješ teď ode mě něco?"~ */
  IF ~~ THEN REPLY #47188 /* ~"Měl bych nějaké otázky..."~ */ JOURNAL #46638 /* ~Přidal jsem se k Věřícím ve zdroj a jsem teď oficiálně Boží člověk. Toto byla má přísaha: "Životní soužení jsou testy. Není nic, co bych potkal a co by nebyla lekce. Bolest je způsob používaný mnohovesmírem jako poučení. Co nejvíce nenávidím v ostatních je odraz toho, co nejvíce nenávidím v sobě. Budu se chovat tak, abych aktivoval svůj potenciál a abych pomohl ostatním v dosažení jejich cílů. Zapamatuju si, že ve všem je jiskřička božství. Přísahám věrnost Věřícím ve Zdroj a jejich cílům, nikdy je neopustím."~ */ GOTO 9
  IF ~~ THEN REPLY #47189 /* ~"Zrovna teď ne. Sbohem."~ */ JOURNAL #46638 /* ~Přidal jsem se k Věřícím ve zdroj a jsem teď oficiálně Boží člověk. Toto byla má přísaha: "Životní soužení jsou testy. Není nic, co bych potkal a co by nebyla lekce. Bolest je způsob používaný mnohovesmírem jako poučení. Co nejvíce nenávidím v ostatních je odraz toho, co nejvíce nenávidím v sobě. Budu se chovat tak, abych aktivoval svůj potenciál a abych pomohl ostatním v dosažení jejich cílů. Zapamatuju si, že ve všem je jiskřička božství. Přísahám věrnost Věřícím ve Zdroj a jejich cílům, nikdy je neopustím."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.5 13.0 14.0 16.0 18.0 19.0 20.2 21.0 22.0 23.1 24.10 25.10 26.0 27.2 28.2 29.2 30.0 31.3 32.1 33.1 34.1 35.1 36.1 37.2 38.1 39.4 43.0 44.0 47.0 50.0 51.5 52.5 53.0 54.0 55.1
  SAY #47190 /* ~"Co jsi chtěl vědět?"~ */
  IF ~~ THEN REPLY #47191 /* ~"Kdo jsi?"~ */ GOTO 23
  IF ~~ THEN REPLY #47192 /* ~"Co mi můžeš povědět o tomhle místě?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47193 /* ~"Jaké výhody plynou ze vstupu k Božím lidem?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #47194 /* ~"Pověz mi o vašem společenství."~ */ GOTO 25
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47195 /* ~"Co mi můžeš říct o vašem společenství?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47196 /* ~"Rád bych se přidal k Božím lidem."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47197 /* ~"Rád bych se přidal k Božím lidem."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47198 /* ~"Rád bych se přidal k Božím lidem."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47199 /* ~"Rád bych se přidal k Božím lidem."~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #47200 /* ~"Potřebuji se něco dozvědět o kovárně."~ */ GOTO 39
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #47201 /* ~"Chtěl jsem si promluvit o vyšetřování vraždy."~ */ GOTO 44
  IF ~  Global("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #47202 /* ~"Chtěl jsem mluvit o Sandozovi."~ */ GOTO 50
  IF ~  Global("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #47203 /* ~"Rád bych složil přísahu Božích lidí."~ */ GOTO 10
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47204 /* ~"Rád bych viděl tajný projekt, jestli mohu."~ */ GOTO 13
  IF ~  Global("Token_A","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47205 /* ~"Ztratil jsem odznak a nemůžu se dostat do místnosti s tajným projektem."~ */ GOTO 14
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47206 /* ~"Bedai-Lihn mě požádala, abych stroj zničil."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 15
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47207 /* ~"Bedai-Lihn je ta, kdo zničila stroj."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 17
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47208 /* ~"Bedai-Lihn je ta, kdo zničila stroj."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 15
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47209 /* ~"Bedai-Lihn mě požádala, abych stroj zničil. Odmítl jsem ji, ale myslel jsem, že bych vám to měl říct."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47210 /* ~"Bedai-Lihn mě požádala, abych zabil Sandoze. Myslel jsem, že byste to měl vědět."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 15
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47211 /* ~"Bedai-Lihn mě požádala, abych zabil Sandoze. Myslel jsem, že byste to měl vědět."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47212 /* ~"Bedai-Lihn zabila Sandoze."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 17
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47213 /* ~"Bedai-Lihn zabila Sandoze."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~Udal jsem Bedai-Lihn Keldorovi za její Anarchistické styky a pokusy narušit práci ve Slévárně. Keldor tím byl potěšen.~ */ GOTO 15
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #51169 /* ~"Mám pro tebe zprávu od Giltspura."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #51170 /* ~"Nic, dík. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.13
  SAY #47215 /* ~Usmívá se. "Příteli, to ti nemohu umožnit, dokud nedokážeš, že jsi přítel Božích lidí."~ */
  IF ~~ THEN REPLY #47216 /* ~"Tak mi zodpověz pár dalších otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #47217 /* ~"Snad později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.14
  SAY #47218 /* ~"Lituji, ale další ti dát nemohu." Povzdechl si. "Je snad něco jiného, s čím ti mohu pomoci?"~ */
  IF ~~ THEN REPLY #47219 /* ~"Zodpověz pár dalších otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #47220 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.15 12.17 12.18 12.19 12.20 12.22
  SAY #47221 /* ~Jeho přátelská tvář dostala tvrdý a chmurný výraz. "Je-li tomu tak, musíme ji zadržet a najít pravdu. A jestli se vše prokáže... popravíme ji. Omluv mě. Musím se věnovat svým povinnostem."~ */
  IF ~~ THEN REPLY #47222 /* ~"Jistě, samozřejmě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47223 /* ~Po návratu ti Keldor s pevnou tváří řekl. "Tvá informace pomohla k zatčení nebezpečného zločince. Získali jsme tím body u Harmonických a Nemilosrdných, tvým přičiněním. Máš naše díky - a čistě osobně, jsem ti vděčný, žes dokázal potvrdit mou víru, že budeš pro Boží lidi skvělou posilou."~ */
  IF ~~ THEN REPLY #47224 /* ~"Rádo se stalo. Mám pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #47225 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.16 12.21
  SAY #47226 /* ~Jeho přátelská tvář dostala tvrdý a chmurný výraz. "Je-li tomu tak, musíme ji zadržet a najít pravdu. A jestli se vše prokáže... popravíme ji. Omluv mě. Musím se věnovat svým povinnostem."~ */
  IF ~~ THEN REPLY #47227 /* ~"Jistě, samozřejmě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #47228 /* ~Když se vrátil, jeho obličej byl ještě hrozivější. "Zmizela. Nikdo ji neviděl proklouznout ven a nikdo neví, kam šla. Přesto máš naše díky, že jsi nás varoval před její zradou. Buď ujištěn, že jakmile někde tady ukáže svou tvář, je ztracena. Máš na to mé slovo."~ */
  IF ~~ THEN REPLY #47229 /* ~"Mám na tebe pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #47230 /* ~"Jestli ji potkám, bude to jisté. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2
  SAY #47231 /* ~"Kromě společnosti tak úžasných lidí, jako jsou tady," usmívá se, "získáš skoro neomezený přístup k našemu zařízení. Máme místa k přespání, kouzla, zboží. Něco z toho najdeš jen u našeho spolku, další je běžné i v Sigilu. A pro naše členy je všechno mnohem levnější."~ */
  IF ~~ THEN REPLY #47232 /* ~"Dobře. Mám pár otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #47233 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.1
  SAY #47234 /* ~"Toto je Velká slévárna, domov Věřících v pramen, známých také jako Boží lidé. Zde vyrábíme zboží, které se rozváží po všech sférách - v mnoha světech jsme vyhlášeni. Odvádíme jen tu nejlepší práci. Říká se, že máme kováře, kteří mohou soupeřit i s těmi v hoře Clangeddin. Osobně si nemyslím, že bychom byli tak dobří... ale JSME blízko."~ */
  IF ~~ THEN REPLY #47235 /* ~"Můžete přijmout další zakázku?"~ */ GOTO 21
  IF ~~ THEN REPLY #47236 /* ~"Co mi můžeš říct o lidech kolem?"~ */ GOTO 22
  IF ~~ THEN REPLY #47237 /* ~"Chápu. Mám další otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #47238 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #47239 /* ~"Lituji, příteli, nemůžeme. Pracujeme na dlouhodobé zakázce a ta nám bere většinu našich zdrojů. Snad až budeme hotovi... je to otázka let." Pokrčil rameny. "Omlouvám se."~ */
  IF ~~ THEN REPLY #47240 /* ~"Mám další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #47241 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #47242 /* ~"Máme tu širokou škálu různých lidí, nejvíce se podílejí na udržování tohoto místa v chodu kováři a dělníci. Máme také pár inženýrů, dokážou s podstatou hmoty neuvěřitelné věci. Někdy se zeptej Nihla Xandera na jeho Tvůrce snů."~ */
  IF ~~ THEN REPLY #47243 /* ~"Možná to udělám. Měl bych víc otázek..."~ */ GOTO 12
  IF ~~ THEN REPLY #47244 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #47245 /* ~Široce se usmál. "Můj příteli, já jsem Keldor z Durianu, jeden ze správců Božích lidí a formálně pečuji o toto místo, dokud jsou naši skuteční vůdcové pryč na tajné poradě."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47246 /* ~"Co mi můžeš říct o vašem společenství?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #47247 /* ~"Mám další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #47248 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.4 23.0
  SAY #47249 /* ~Usmívá se, tvář pokrytou vráskami. "Co bys o nás rád věděl?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47250 /* ~"Jak mohu vstoupit?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47251 /* ~"Jak mohu vstoupit?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47252 /* ~"Jak mohu vstoupit?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47253 /* ~"Jak mohu vstoupit?"~ */ GOTO 29
  IF ~~ THEN REPLY #47254 /* ~"V co věří vaše společenství?"~ */ GOTO 31
  IF ~~ THEN REPLY #47255 /* ~"Pověz mi o historii společenství."~ */ GOTO 32
  IF ~~ THEN REPLY #47256 /* ~"Co mám udělat, abych se dostal do společenství?"~ */ GOTO 33
  IF ~~ THEN REPLY #47257 /* ~"Má společenství nějaké nepřátele?"~ */ GOTO 34
  IF ~~ THEN REPLY #47258 /* ~"Co děláš jinak?"~ */ GOTO 35
  IF ~~ THEN REPLY #47259 /* ~"Proč se jmenujete zrovna takhle?"~ */ GOTO 36
  IF ~~ THEN REPLY #47260 /* ~"Právě teď nic. Chtěl jsem se zeptat..."~ */ GOTO 12
  IF ~~ THEN REPLY #47261 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.3 27.1 28.1 29.1 31.2 32.0 33.0 34.0 35.0 36.0 37.1 38.0
  SAY #47262 /* ~"Milerád. Co bys chtěl vědět?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47263 /* ~"Jak mohu vstoupit?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47264 /* ~"Jak mohu vstoupit?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47265 /* ~"Jak mohu vstoupit?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47266 /* ~"Jak mohu vstoupit?"~ */ GOTO 29
  IF ~~ THEN REPLY #47267 /* ~"V co věří vaše společenství?"~ */ GOTO 31
  IF ~~ THEN REPLY #47268 /* ~"Pověz mi o historii společenství."~ */ GOTO 32
  IF ~~ THEN REPLY #47269 /* ~"Co mám udělat, abych se dostal do společenství?"~ */ GOTO 33
  IF ~~ THEN REPLY #47270 /* ~"Má společenství nějaké nepřátele?"~ */ GOTO 34
  IF ~~ THEN REPLY #47271 /* ~"Co děláš jinak?"~ */ GOTO 35
  IF ~~ THEN REPLY #47272 /* ~"Proč se jmenuješ zrovna takhle?"~ */ GOTO 36
  IF ~~ THEN REPLY #47273 /* ~"Právě teď nic. Chtěl jsem se zeptat..."~ */ GOTO 12
  IF ~~ THEN REPLY #47274 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 12.5 24.0 25.0 27.0 28.0 29.0
  SAY #47275 /* ~"Když chceš vstoupit k Věřícím v pramen, musíš splnit tři úkoly. První úkol: Musíš jít do kovárny a vyrobit předmět. Tím ukážeš svou schopnost vidět možnosti uvězněné v každé hroudě železa; že jsi schopen vytvořit věc, která obstojí ve zkoušce času. Změří tvou představivost a dovednost učinit možné skutečností. Promluv si s dozorčí slévárny Alissou v Hlavní slévárně, abys věděl, jak to chodí."~ */
  IF ~~ THEN REPLY #47276 /* ~"Mám další otázky..."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~Jsem na cestě za příslušností k Božím lidem. Nejprve mám najít kováře ve Velké slévárně, který mě naučí pracovat v dílně tak, že svedu vytvářet předměty. Mám tím dokázat, že umím využít i možnosti pouhé chladné kamenné hroudy. To nemůže být příliš složité. Až budu hotov, mám se Keldorem vrátit. ~ */ GOTO 12
  IF ~~ THEN REPLY #47277 /* ~"Jdu na to. Sbohem."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~Jsem na cestě za příslušností k Božím lidem. Nejprve mám najít kováře ve Velké slévárně, který mě naučí pracovat v dílně tak, že svedu vytvářet předměty. Mám tím dokázat, že umím využít i možnosti pouhé chladné kamenné hroudy. To nemůže být příliš složité. Až budu hotov, mám se Keldorem vrátit. ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.6 24.1 25.1
  SAY #47278 /* ~Do tváře se mu vplížil zlomyslný úsměv. "Nuže, nejprve se budeš muset vzdát svého členství u Spalovačů."~ */
  IF ~~ THEN REPLY #47279 /* ~"No dobrá. Vzdám se ho. Co mám udělat?"~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47280 /* ~"Nejsem si jistý, jestli jsem na to připraven. Zodpověz mi ještě nějaké dotazy na vaše společenství, ano?"~ */ GOTO 25
  IF ~~ THEN REPLY #47281 /* ~"Ještě ne. Mám pár otázek, ne o vašem společenství."~ */ GOTO 12
  IF ~~ THEN REPLY #47282 /* ~"Ještě ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.7 24.2 25.2
  SAY #47283 /* ~Do tváře se mu vplížil zlomyslný úsměv. "Nuže, nejprve se budeš muset vzdát svého členství u Vnímavých."~ */
  IF ~~ THEN REPLY #47284 /* ~"No dobrá. Vzdám se ho. Co mám udělat?"~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47285 /* ~"Nejsem si jist, zda jsem na to připraven. Zodpověz mi ještě nějaké otázky na vaše společenství, ano?"~ */ GOTO 25
  IF ~~ THEN REPLY #47286 /* ~"Ještě ne. Mám pár otázek, ne o vašem společenství."~ */ GOTO 12
  IF ~~ THEN REPLY #47287 /* ~"Ještě ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 12.8 24.3 25.3
  SAY #47288 /* ~Do tváře se mu vplížil zlomyslný úsměv. "Nuže, nejprve se budeš muset vzdát svého členství u Chaotiků."~ */
  IF ~~ THEN REPLY #47289 /* ~"No dobrá. Vzdám se ho. Co mám udělat?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47290 /* ~"Nejsem si jist, zda jsem na to připraven. Zodpověz mi ještě nějaké otázky na vaše společenství, ano?"~ */ GOTO 25
  IF ~~ THEN REPLY #47291 /* ~"Ještě ne. Mám pár otázek, ne o vašem společenství."~ */ GOTO 12
  IF ~~ THEN REPLY #47292 /* ~"Ještě ne, díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 39.0
  SAY #47293 /* ~"Některý z tamních kovářů by měl být schopen pomoci."~ */
  IF ~~ THEN REPLY #47294 /* ~"No dobrá. Mám nějaké dodatečné otázky."~ */ GOTO 12
  IF ~~ THEN REPLY #47295 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4 25.4
  SAY #47296 /* ~"Věříme, že vesmír je obří zkušební prostor, místo, kde procházíme řadou zkoušek. Tyto zkoušky probíhají tvým životem, řadou tvých životů. Každý krok každého dne může být tou zkouškou a tvá odměna v příštím životě závisí na tom, jak ses poučil v tomto životě. Věříme, že se tělo učí ze zkušenosti... tato zkušenost se během tvých životů rozrůstá a tvaruje tě v něco dokonalejšího než jen prosté bytí."~ */
  IF ~~ THEN REPLY #47297 /* ~"Jaký je smysl toho všeho?"~ */ GOTO 37
  IF ~~ THEN REPLY #47298 /* ~"Dosud je to rozumné. Pokračuj."~ */ GOTO 38
  IF ~~ THEN REPLY #47299 /* ~"Dobře... další otázky na vaše společenství."~ */ GOTO 25
  IF ~~ THEN REPLY #47300 /* ~"Ještě ne. Mám pár otázek, ne o vašem společenství."~ */ GOTO 12
  IF ~~ THEN REPLY #47301 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.5 25.5
  SAY #47302 /* ~"Obecně se věří, že nás založil Perrine, v době před Velkým hnutím, kdy bylo všeho všudy patnáct společenstev. Během hnutí stmelila Augy z Faunelu názory společenství do podoby, jakou mají dnes - reinkarnovala se tisíckrát a dokázala si *každý* život zapamatovat. Naučila nás, jak zacházet s poznáním a zavedla nás do nové epochy. Tihle dva byli v našem společenství nejdůležitějšími postavami - máme spoustu dalších příběhů, ale tyhle jsou hlavní kostrou."~ */
  IF ~~ THEN REPLY #47303 /* ~"Dobře... další otázky na vaše společenství."~ */ GOTO 25
  IF ~~ THEN REPLY #47304 /* ~"Mám pár otázek, ne o vašem společenství..."~ */ GOTO 12
  IF ~~ THEN REPLY #47305 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.6 25.6
  SAY #47306 /* ~"No, mimo přístupu do naší vynikající slévárny, pokoje a pryčny pro tebe a tvé přátele, zvláštní zboží a kouzla a mnohem příznivější reakce u lidí, které potkáš na ulici, toho není mnoho, čím bychom se vyplatili. Pochopitelně, jestli máš v plánu k nám vstoupit pouze proto, abys získal výhody, musel bych hlasovat proti."~ */
  IF ~~ THEN REPLY #47331 /* ~"Dobře... Měl bych na vaše společenství další otázky."~ */ GOTO 25
  IF ~~ THEN REPLY #47332 /* ~"Mám pár otázek, ne o vašem společenství..."~ */ GOTO 12
  IF ~~ THEN REPLY #47333 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 24.7 25.7
  SAY #47334 /* ~"Nemáme žádné nepřátele, samo sebou. Nicméně, jsou tu někteří, co naši víru popírají. Bezútěšný úklad pohlíží s opovržením na myšlenku, kterou dovádíme dál než k dokonalosti. Myslím si, že když nevěří ve smysl této myšlenky, měli by se přes to přenést... stejně jako musí Spalovači. Spalovači myslí, že život je jen iluze, příprava na Pravou smrt, zatímco naše víra zdůrazňuje život. Oni velebí smrt, my oslavujeme život. Co by mohlo být více protichůdné?"~ */
  IF ~~ THEN REPLY #47335 /* ~"Dobře... Měl bych na vaše společenství další otázky."~ */ GOTO 25
  IF ~~ THEN REPLY #47336 /* ~"Mám pár otázek, ne o vašem společenství..."~ */ GOTO 12
  IF ~~ THEN REPLY #47337 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 24.8 25.8
  SAY #47338 /* ~"No, vedeme Velkou slévárnu. A také Dům poselství, kde učíme lidi, kteří se zdají být budoucími bohy... lidi, co vykazují nějaký druh zvláštních schopností, odlišujících je od normálních smrtelníků. Lidé říkají, že to děláme proto, abychom měli na své straně moc, ale pravdou je, že tak činíme s vírou, že je to další z úkolů. Děláme to nejlepší, abychom každého tvora naučili pevně čelit své odpovědnosti - chceme vidět mnohovesmír se vyvíjet."~ */
  IF ~~ THEN REPLY #47339 /* ~"Dobře... Měl bych na vaše společenství další otázky."~ */ GOTO 25
  IF ~~ THEN REPLY #47340 /* ~"Mám pár otázek, ne o vašem společenství..."~ */ GOTO 12
  IF ~~ THEN REPLY #47341 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 24.9 25.9
  SAY #47342 /* ~"To je správná otázka. Naše pravé jméno je Věřící v pramen, neboť věříme, že veškerý život pramení z čistého, původního zřídla. Ale také věříme, že všechna stvoření mají moc najít v sobě božství, proto je přirozené, že máme přezdívku Boží lidé."~ */
  IF ~~ THEN REPLY #47343 /* ~"Dobře... Měl bych na vaše společenství další otázky."~ */ GOTO 25
  IF ~~ THEN REPLY #47344 /* ~"Mám pár otázek, ne o vašem společenství..."~ */ GOTO 12
  IF ~~ THEN REPLY #47345 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.0
  SAY #47346 /* ~"Nejsme si úplně jisti. Ostatně, ještě jsme se nedostali ke konci toho všeho, že? Nejlépe si to umíme představit tak, že se propleteme řadou životů, najdeme pravé odpovědi a nakonec dosáhneme božství a možná i víc. Co nás tam čeká, nikdo neví."~ */
  IF ~~ THEN REPLY #47347 /* ~"Dobře. Pokračuj."~ */ GOTO 38
  IF ~~ THEN REPLY #47348 /* ~"Dobře... Měl bych na vaše společenství další otázky."~ */ GOTO 25
  IF ~~ THEN REPLY #47349 /* ~"Mám pár otázek, ne o vašem společenství..."~ */ GOTO 12
  IF ~~ THEN REPLY #47350 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1 37.0
  SAY #47351 /* ~"Takže. Život je zkouška. Touto zkouškou procházíme. Pokud projdeme, přecházíme do nové formy. Může to být podoba archona, fienda, nebo mocnosti. Naše rozhodnutí v tomto životě, nám pomáhají zmapovat další cestu. Zdali přitom máme svobodnou vůli, či nikoli, je stále předmětem diskuse." Usmál se. "Já jsem, samozřejmě, na straně lidí pro svobodnou vůli... Nenávidím pomyšlení, že jsou má rozhodnutí dána předem."~ */
  IF ~~ THEN REPLY #47352 /* ~"Dobře... Měl bych na vaše společenství další otázky."~ */ GOTO 25
  IF ~~ THEN REPLY #47353 /* ~"Mám pár otázek, ne o vašem společenství..."~ */ GOTO 12
  IF ~~ THEN REPLY #47354 /* ~"Díky za tvůj čas. Sbohem."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 44 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",2)
~ THEN BEGIN 39 // from: 12.9
  SAY #47355 /* ~"Chceš se zeptat na něco o kovárně? Odpovím na vše, na co budu moci."~ */
  IF ~~ THEN REPLY #47356 /* ~"Ještě jednou, s kým mám promluvit?"~ */ GOTO 30
  IF ~  Global("G_Test1","GLOBAL",3)
~ THEN REPLY #47357 /* ~Ukaž mu předmět, co jsi vykoval: "Jsem hotov s kovářským dílem."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 40
  IF ~  Global("G_Test1","GLOBAL",4)
~ THEN REPLY #47358 /* ~Ukaž mu předmět, co jsi vykoval: "Jsem hotov s kovářským dílem."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 41
  IF ~  Global("G_Test1","GLOBAL",5)
~ THEN REPLY #47359 /* ~Ukaž mu předmět, co jsi vykoval: "Jsem hotov s kovářským dílem."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 42
  IF ~~ THEN REPLY #47360 /* ~"Vlastně mi jen zodpověz další otázky..."~ */ GOTO 12
  IF ~~ THEN REPLY #47361 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #47362 /* ~Vzal tvůj výrobek a pečlivě si jej prohlédl. Zdá se, že se snaží zdržet krutých slov. "Alespoň jsi to zkusil, hm? Jsi připraven na další zkoušku? Doufám, že určitě ano..."~ */
  IF ~~ THEN REPLY #47363 /* ~"Předpokládám, že jsem..."~ */ DO ~GiveExperience(Protagonist,6000)
~ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY #47364 /* ~Vzal tvůj výrobek a pečlivě si jej prohlédl. "Půjde to. S trochou praxe se možná staneš slušným kovářem. Jsi připraven na další zkoušku? Doufám, že určitě ano..."~ */
  IF ~~ THEN REPLY #47365 /* ~"Předpokládám, že jsem..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 39.3
  SAY #47366 /* ~Vzal tvůj výrobek a pečlivě si jej prohlédl. "To je, bezpochyby, jeden z nejlepších kousků, jaké jsem u uchazečů viděl. Dojdeš daleko, příteli. Jsi připraven na další zkoušku? Doufám, že určitě ano..."~ */
  IF ~~ THEN REPLY #47367 /* ~"Předpokládám, že jsem..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.0 41.0 42.0
  SAY #47368 /* ~Pokračuje s ponurou tváří. "Do slévárny pronikl vrah, proto upustím od dříve připraveného úkolu a tvou novou zkouškou bude najít toho zabijáka. Jdi si promluvit s dozorčí jménem Alissa Tield v hlavní slévárně a začni odtamtud. Až budeš s vyšetřováním hotov a budeš znát jméno viníka, vrať se."~ */
  IF ~~ THEN REPLY #47369 /* ~"Dobře. Nejdřív mi odpověz na další otázky..."~ */ JOURNAL #39501 /* ~Podařilo se mi splnit první úkol pro Boží lidi a nyní se pouštím do dalšího - jde o vyšetření vraždy. Nejprve si mám promluvit se správcem Slévárny a později, až nasbírám důkazy, si promluvit s Keldorem. ~ */ GOTO 12
  IF ~~ THEN REPLY #47370 /* ~"Vrátím se. Sbohem."~ */ JOURNAL #39501 /* ~Podařilo se mi splnit první úkol pro Boží lidi a nyní se pouštím do dalšího - jde o vyšetření vraždy. Nejprve si mám promluvit se správcem Slévárny a později, až nasbírám důkazy, si promluvit s Keldorem. ~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 44 // from: 12.10
  SAY #47371 /* ~"Nuže? Už jsi zjistil, kdo spáchal ten ohavný čin? Máš jistotu?"~ */
  IF ~~ THEN REPLY #47372 /* ~"Ještě ne. Rád bych se tě ještě na něco zeptal..."~ */ GOTO 12
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_T","GLOBAL",1)
~ THEN REPLY #47373 /* ~"Ano. Thildon je vinen. Nemá věrohodné alibi."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_S","GLOBAL",1)
~ THEN REPLY #47374 /* ~"Ano. Saros je vinen. Ví se, že se plížil kolem slévárny."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",3)
~ THEN REPLY #47375 /* ~"Ano. Thildon i Saros jsou vinní, stejně tak Bedai-Lihn. Žádný z nich nemůže vysvětlit, kde byli v noci vraždy."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #47376 /* ~"Ano. Thildon se provinil. Saros mi dal šídlo, které našel u těla. Patřilo Thildonovi."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_1","GLOBALLaw",-2)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #47377 /* ~"Ano. Provinil se Saros. Chtěl svalit vinu na Thildona tím, že mu ukradl šídlo. Tvrdí, že je našel poblíž těla, ale Thildon to popírá. Saros je ten muž."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_2","GLOBALLaw",-2)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #47378 /* ~"Udělal to Saros. Je ve spolku s Anarchisty."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47379 /* ~"Ten zločin spáchal Thildon, ale Saros jej z toho obvinil - jde o spiknutí Anarchistů. A Saros je v jeho středu. Zatkněte je oba."~ */ DO ~SetGlobal("G_Test2","GLOBAL",11)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 49
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47380 /* ~"Udělal to Thildon. Měl s Avildonem osobní rozepře a pokusil se obvinit Sarose. Potrestejte ho."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47381 /* ~"Saros je Anarchista. Pokouší se poškodit slévárnu. Chtěl, aby podezření padlo na Thildona."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 44.1 44.2 44.3
  SAY #47382 /* ~Zavrtěl hlavou. "To už víme. Pro odsouzení stále není dost důkazů. Jdi zpět a vypátrej další." Vrátil se ke své práci.~ */
  IF ~~ THEN REPLY #47383 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.4 44.8
  SAY #47384 /* ~Zavrtěl hlavou. "To bych do Thildona nikdy neřekl. Ale myslím, že jsi své vyšetřování vedl důkladně... a věřím ti. Dovol, abych zavolal stráže."~ */
  IF ~~ THEN REPLY #47385 /* ~"Jistě, samozřejmě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #39500 /* ~Obvinil jsem Thildona z vraždy kováře Avildona. Byl zatčen.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 48.0 49.0
  SAY #47386 /* ~Vypadá zdrcen velkým smutkem. "Je po všem. Moje díky za rozřešení případu. Zbývá ti vyplnit poslední úkol. Sandoz, otec Sarossy a Sarose, jeden z našich nejdůležitějších členů, se vrátil z vyčerpávající cesty. Zamknul se ve svém pokoji ve věži a chystá se k sebevraždě. Promluv s ním. Zastav ho."~ */
  IF ~~ THEN REPLY #47387 /* ~"Jdu na to. Jen bych se chtěl na něco přeptat..."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~Můj finální test pro členství u společenstva Božích lidí je rozmluvit sebevraždu jednomu z nich. Jmenuje se Sandoz, je to otec Sarose a Sarossy.~ */ GOTO 12
  IF ~~ THEN REPLY #47388 /* ~"Jdu na to. Sbohem."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~Můj finální test pro členství u společenstva Božích lidí je rozmluvit sebevraždu jednomu z nich. Jmenuje se Sandoz, je to otec Sarose a Sarossy.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.5 44.6 44.9
  SAY #47389 /* ~Zalapal po dechu. "Nemohu uvěřit, že by Saros udělal něco takového... ale proč by Thildon lhal? Hrozná věc, ale jestli tvrdíš, že je to tak, musí to tak být. Měl bych ho nechat zatknout. Dovol mi zavolat stráže."~ */
  IF ~~ THEN REPLY #47390 /* ~"Jistě, samozřejmě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",9)
FadeFromColor([20.0],0)
~ JOURNAL #39498 /* ~Obvinil jsem Sarose z vraždy kováře Avildona. Byl zatčen.~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 44.7
  SAY #47391 /* ~"Cože? Oba dva? Dnešní den je pro Boží lidi velmi smutný, skutečně smutný... Dovol na chvíli, musím zavolat stráže."~ */
  IF ~~ THEN REPLY #47392 /* ~"Jistě, samozřejmě."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",11)
FadeFromColor([20.0],0)
~ JOURNAL #39495 /* ~Obvinil jsem Thildona i Sarose z vraždy kováře Avildona. Byli zatčeni.~ */ GOTO 47
END

IF WEIGHT #5 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 50 // from: 12.11
  SAY #47393 /* ~"Přesvědčil jsi ho, že má život cenu?"~ */
  IF ~  !Global("G_Test3","GLOBAL",6)
!Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47394 /* ~"Ještě ne. Stále žije, zatím. Odpovíš mi na další otázky?"~ */ GOTO 12
  IF ~  Global("G_Test3","GLOBAL",6)
~ THEN REPLY #47395 /* ~"Uspěl jsem. Znovu získal chuť k životu."~ */ DO ~AddexperienceParty(12000)
SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64545 /* ~Ohlásil jsem Keldorovi úspěch ve věci záchrany Sandozova života. Byl neobyčejně potěšený.~ */ GOTO 51
  IF ~  Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47396 /* ~"Zklamal jsem. Vzal si život."~ */ DO ~SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64546 /* ~Ohlásil jsem Keldorovi neúspěch ve věci záchrany Sandozova života. Ačkoliv byl zklamaný, pochopil, že to byl obtížný úkol a řekl mi, že jsem test udělal prostě tím, jak jsem se snažil.~ */ GOTO 52
  IF ~~ THEN REPLY #47397 /* ~"Ještě ne. Pracuji na tom. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #47398 /* ~"Podařilo se ti to? Skvělé zprávy! Gratuluji, můj příteli! Dokázal jsi, že jsi hoden stát se jedním z Božích lidí! Přál by sis teď složit přísahu, nebo snad později?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47399 /* ~"Teď."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47400 /* ~"Teď."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47401 /* ~"Teď."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67783 /* ~"Teď."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67784 /* ~"Teď."~ */ GOTO 56
  IF ~~ THEN REPLY #67785 /* ~"Udělám to později. Odpovíš mi nejdřív na nějaké otázky?"~ */ GOTO 12
  IF ~~ THEN REPLY #67786 /* ~"Udělám to později. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.2
  SAY #47402 /* ~"Nezdařilo se? To je smutná, špatná zpráva. Ale snažil ses, že? To je velmi důležité. Že ses pokusil." Opravdu se snaží vypadat vesele, ale nezdařilo se. "Chtěl bys složit přísahu teď nebo později?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47403 /* ~"Teď."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47404 /* ~"Teď."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47405 /* ~"Teď."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67787 /* ~"Teď."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67788 /* ~"Teď."~ */ GOTO 56
  IF ~~ THEN REPLY #67789 /* ~"Udělám to později. Odpovíš mi nejdřív na nějaké otázky?"~ */ GOTO 12
  IF ~~ THEN REPLY #67790 /* ~"Udělám to později. Sbohem."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 53 // from:
  SAY #47406 /* ~Vidíš zdatného muže, oplývajícího vitalitou. Má opálenou tvář posetou vráskami a v černých vousech prosvítá stříbro. "Hola, cizinče, vítej! Co pro tebe v tento skvělý den můžu udělat?"~ */
  IF ~~ THEN REPLY #47407 /* ~"Rád bych ti položil pár otázek..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47408 /* ~"Mám pro tebe vzkaz od vyvolávače Giltspura."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54086 /* ~"Zrovna teď nic, díky. Sbohem."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 54 // from:
  SAY #47409 /* ~"Vítej, příteli! Co pro tebe mohu dnes udělat?"~ */
  IF ~~ THEN REPLY #47410 /* ~"Rád bych ti položil pár otázek..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47411 /* ~"Mám pro tebe vzkaz od vyvolávače Giltspura."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54087 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 12.23 53.1 54.1
  SAY #51171 /* ~"Zpráva, eh?" Vzal si od tebe zprávu. "Velmi dobře. Můžeš mu říct, že zpráva byla dodána. Chtěl jsi ještě něco?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51172 /* ~"Mám ještě pár otázek."~ */ GOTO 9
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51173 /* ~"Mám ještě pár otázek."~ */ GOTO 12
  IF ~~ THEN REPLY #51174 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.1 10.2 10.3 10.4 51.1 51.2 51.3 51.4 52.1 52.2 52.3 52.4
  SAY #66315 /* ~Zamračil se na tebe. "Nejprve se musíš zříct členství v jiném společenství."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66318 /* ~Zřekni se Anarchistů: "Zříkám se toho společenství."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Anarchists","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66319 /* ~"Zříkám se Vnímavých."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66320 /* ~"Zříkám se Spalovačů."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Dustmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66321 /* ~"Zříkám se Chaotiků."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66322 /* ~Lži, abys mohl špehovat pro Anarchisty. "Zříkám se toho společenství."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~~ THEN REPLY #66323 /* ~"Ne."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.5
  SAY #66316 /* ~"Tak v tom případě se nemůžeš přidat k našemu společenství. Sbohem." Otočil se od tebe.~ */
  IF ~~ THEN REPLY #66317 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #6342 /* ~"Zjistíš, že nejsem bezbranný, zjizvenče. Nepřibližuj se."~ */
  IF ~~ THEN REPLY #6343 /* ~Hotovo.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 59 // from:
  SAY #6344 /* ~"Určitě sem nepatříš. Okamžitě odejdi, vetřelče, nebo stráže zvolí drsnější postup než je pouhé vyvedení."~ */
  IF ~~ THEN REPLY #6347 /* ~Odejdi.~ */ EXIT
END
