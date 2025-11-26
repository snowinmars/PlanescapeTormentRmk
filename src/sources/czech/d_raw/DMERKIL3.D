// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL3~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10504 /* ~Prošedivělý Nemilosrdný se k tobě pomalu otočil, prohlíží si tvou tvář a najednou začal mávat rukama. Třímá v nich obzvláště strašlivou zbraň. "Hoši! Máme mezi námi vraha!" Zaútočil na tebe.~ */
  IF ~~ THEN REPLY #10505 /* ~Napadni jej.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10506 /* ~Uteč.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10507 /* ~Vidíš prošedivělého urostlého muže v brnění pobitém hroty. Chladnokrevně si tě prohlíží od hlavy k patě a hodnotí tě. U tvé tváře se na chvíli zastaví, jako by mu něco připomněla. Pak povzdechne a říká: "Můžu ti s něčím pomoct, příteli?"~ */
  IF ~~ THEN REPLY #10508 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #10509 /* ~"Poznáváš mě?"~ */ GOTO 4
  IF ~~ THEN REPLY #10510 /* ~"Kdo jsou tady tví přátelé?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10511 /* ~"Hledám deník. Neviděl jsi nějaký?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10512 /* ~"Hledám Sběrače jménem Pharod. Nevíš náhodou, kde bych ho mohl najít?"~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10514 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 13
  IF ~~ THEN REPLY #10515 /* ~"Řekni mi něco o tomto místě, jestli můžeš."~ */ GOTO 7
  IF ~~ THEN REPLY #10516 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10513 /* ~"Chceš ode mne něco?"~ */
  IF ~~ THEN REPLY #10517 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #10518 /* ~"Poznáváš mě?"~ */ GOTO 4
  IF ~~ THEN REPLY #10519 /* ~"Kdo jsou tady tví přátelé?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10520 /* ~"Hledám deník. Viděl jsi nějaký?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10521 /* ~"Znáš Sběrače jménem Pharod? Hledám ho."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10522 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 13
  IF ~~ THEN REPLY #10523 /* ~"Řekni mi něco o tomto místě, jestli můžeš."~ */ GOTO 7
  IF ~~ THEN REPLY #10524 /* ~"Ne, teď ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.0
  SAY #10525 /* ~"Já? Jsem Tarner."~ */
  IF ~~ THEN REPLY #10526 /* ~"Co to máš za výstroj?"~ */ GOTO 9
  IF ~~ THEN REPLY #10527 /* ~"Kdo jsou tví přátelé?"~ */ GOTO 5
  IF ~~ THEN REPLY #10528 /* ~"Odpovíš mi ještě na nějaké otázky?"~ */ GOTO 8
  IF ~~ THEN REPLY #10529 /* ~"Díky. Dobrý den."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.1
  SAY #10530 /* ~"Myslel jsem, že ano, ale ty obrázky byly staletí staré a ten podezřelý už musí být mrtev. No ano, jsou tady roviny a stávají se v nich i podivnější věci. Navíc, pokud jsi ten chlápek, kterého jsem myslel, už jsi očividně prošel trestem v podobě bolesti."~ */
  IF ~~ THEN REPLY #10531 /* ~"Můžeš mi něco říct o té osobě, o které mluvíš?"~ */ GOTO 10
  IF ~~ THEN REPLY #10532 /* ~"Ha. Kdo ví? Odpověz mi ještě na nějaké otázky, ano?"~ */ GOTO 8
  IF ~~ THEN REPLY #10533 /* ~"Víc než si myslíš. Více než vím *já* sám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 3.1 8.2
  SAY #10534 /* ~"To je Caleb a Ilsidon. Caleb je nový přírůstek -- nový rekrut. Ilsidon je sval. Já jsem mozek."~ */
  IF ~~ THEN REPLY #10535 /* ~"Co tady děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #10536 /* ~"Rekrut? To je důvod, proč jste stejně oblečení?"~ */ GOTO 9
  IF ~~ THEN REPLY #10537 /* ~"Trefa. Odpověz mi ještě na pár otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #10538 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 8.3
  SAY #10539 /* ~"Viděl jsem už hodně ve špinavých ulicích Sigilu, příteli. Ale je málo šancí, že bych jej viděl, ledaže by byl něčím nápadný."~ */
  IF ~~ THEN REPLY #10540 /* ~"Nuže dobrá. Měl bys odpovědi i na další otázky?"~ */ GOTO 8
  IF ~~ THEN REPLY #10541 /* ~"Myslím, že by bylo těžké si na to vzpomenout. Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.6 8.6
  SAY #10542 /* ~"Toto? To je krčma u Doutnajícího nebožtíka. Traduje se, že je to tady plné portálů a podobně, ale to se ostatně dá říct téměř o celém Sigilu. Je tu dobré a levné pití a pokud ti nevadí společnost štamgastů a fiendů, pak to teda není špatné místo. Chceš-li o tomto místě vědět víc, promluv si třeba s barmanem."~ */
  IF ~~ THEN REPLY #10543 /* ~"Rozumím. Chtěl bych vědět ještě něco jiného."~ */ GOTO 8
  IF ~~ THEN REPLY #10544 /* ~"Skvělé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.1 5.2 6.0 7.0 9.0 10.0 11.1 12.0 13.0
  SAY #10545 /* ~"Co bys chtěl vědět?"~ */
  IF ~~ THEN REPLY #10546 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #10547 /* ~"Poznal jsi mě?"~ */ GOTO 4
  IF ~~ THEN REPLY #10548 /* ~"Kdo jsou tady tví přátelé?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10549 /* ~"Hledám deník. Viděl jsi nějaký?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10550 /* ~"Slyšel jsi někdy o Sběrači jménem Pharod? Hledám jej."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10551 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 13
  IF ~~ THEN REPLY #10552 /* ~"Řekni mi něco o tomto místě, jestli můžeš."~ */ GOTO 7
  IF ~~ THEN REPLY #10553 /* ~"Teď nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 5.1 11.0
  SAY #10554 /* ~"Je to svým způsobem uniforma. Jsme Rudá Smrt... Nemilosrdní. Jsme lidé práva. Někdo spáchá zločin, my ho předáme spravedlnosti. Také napravujeme křivdy. Chceš-li vědět víc, promluv s některým naším náborářem.~ */
  IF ~~ THEN REPLY #10555 /* ~"Dobrá. Odpovíš mi ještě na další otázek?"~ */ GOTO 8
  IF ~~ THEN REPLY #10556 /* ~"Dobrý den."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0
  SAY #10557 /* ~"Byl to obzvláště brutální zločinec, aspoň co vím. Ale to bylo, pochopitelně, už před staletími. Prý měl obrovskou sílu a dost zuřivosti na to, aby urval hlavu i bariaurovi. Nikdo s ním nechtěl nic mít. Říká se, že byl obklíčen hlídkou Rudé Smrti, unikl skrz jeden portál a od té doby nebyl spatřen.
Mají jeho obrázky. Odstranit pár z tvých jizev a mohl bys to být ty. Ale stejně asi ne."~ */
  IF ~~ THEN REPLY #10558 /* ~"To vypadá na odporného týpka. Měl bych ještě pár otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #10559 /* ~"Hrozné. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10560 /* ~"Čekáme na zločince. Bude to první Calebovo zatčení -- jestli se ten lotr, kterého hledáme, ukáže."~ */
  IF ~~ THEN REPLY #10561 /* ~"Cože, jste něco jako policie? To proto je vaše brnění... uniformou?"~ */ GOTO 9
  IF ~~ THEN REPLY #10562 /* ~"Aha. Odpověz mi ještě na několik otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #10563 /* ~"Hodně štěstí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.4 2.4 8.4
  SAY #10564 /* ~"Hledáš ho, hm? Z tónu tvého hlasu bych sázel na to, že to nebude kvůli rychlému drinku někde v taverně. Hele, znám Pharoda už dlouho. Je to slizoun, ano je, a bude ještě dlouho trvat, než se nám podaří mu něco přišít. Problém je, že jenom fanatici jako Vhailor by někoho oběsili i bez jediného kousku důkazu. Abych to neprotahoval, nevím kde ten ničema je, ale měl bys vědět, že je podezřelý a nebylo by pro tebe dobré, kdybys s ním byl spatřen."~ */
  IF ~~ THEN REPLY #10565 /* ~"Díky za radu. Můžeš mi ještě na něco odpovědět?"~ */ GOTO 8
  IF ~~ THEN REPLY #10566 /* ~"Díky za nic, příteli. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 2.5 8.5
  SAY #10567 /* ~"Vhailor? Fanatik to byl. Nikdy by neustoupil, pokud by si myslel, že je v právu, a to ani kdyby věděl, že by ho to mohlo stát život. Tak oddaný pojetí práva, skutečného práva, až bych se vsadil, že by zabil samotnou Smrt pro získání informátora, který by ho dovedl ke zločinci. Žádné slitování pro odpadlíky. Byl pro nás všechny vzorem."~ */
  IF ~~ THEN REPLY #10568 /* ~"Skutečná oddanost. Odpovíš mi ještě na několik otázek?"~ */ GOTO 8
  IF ~~ THEN REPLY #10569 /* ~"Vsadil bych se, že byl. Sbohem."~ */ EXIT
END
