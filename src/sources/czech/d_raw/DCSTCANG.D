// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3172 /* ~Vidíš mladého muže se zamračeným obličejem. Něco si mumlá, zjevně má spoustu práce.~ */
  IF ~~ THEN REPLY #3173 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #13708 /* ~Ignorovat ho.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #13709 /* ~Zprvu sis myslel, že tě neslyšel, ale pak se k tobě otočil a zběžně si tě prohlédl. Po chvíli se otočil zpět. "Neznám tě, hňupe, a nechci znát. Padej pryč, abych ti nemusel ublížit."~ */
  IF ~~ THEN REPLY #13710 /* ~"Podívej, jen bych se tě chtěl na něco zeptat."~ */ GOTO 2
  IF ~~ THEN REPLY #13711 /* ~"Vyhrožuješ špatné osobě, hlupáku. Zkrátka odpověz na mé otázky a já tě nebudu muset odnaučovat takovým způsobům."~ */ GOTO 3
  IF ~~ THEN REPLY #13712 /* ~Napadni jej.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13713 /* ~"Dobře. Tak teda jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13714 /* ~Otočil hlavu, aby se na tebe podíval a jeho obličej zrudnul vztekem. Mluví k tobě se zaťatými zuby. "Otázky? Vypadám snad jako místní vševěd, idiote? Jdi mi z očí, než ti přidám pár novejch jizev."~ */
  IF ~~ THEN REPLY #13715 /* ~"Vyhrožuješ špatné osobě, hlupáku. Prostě odpověz na mé otázky a já tě nebudu muset odnaučovat takovým způsobům."~ */ GOTO 3
  IF ~~ THEN REPLY #13716 /* ~"Tak se ukaž."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13717 /* ~"Dobře, tak teda jdu."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #13718 /* ~Prudce se otočil, jeho obličej zrudl vztekem. Zdá se, že se chystal něco říct, když tu se zastavil, jak se na tebe lépe podíval. Jeho oči šmátrají po mnoha jizvách, které pokrývají tvé tělo a jeho hněv vyprchal a změnil se ve strach. "Uh... promiň, kamaráde. Co žes to potřeboval vyjasnit?"~ */
  IF ~~ THEN REPLY #13719 /* ~"Hledám devu. Slyšel jsem, že bych ho mohl najít tady."~ */ GOTO 4
  IF ~~ THEN REPLY #13720 /* ~"Co je tady nového?"~ */ GOTO 5
  IF ~~ THEN REPLY #13721 /* ~"Řekni mi něco o Curstu."~ */ GOTO 6
  IF ~~ THEN REPLY #13722 /* ~"Ale nic."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0
  SAY #13723 /* ~Zamyšleně se zamračil a na chvíli se odvrátil. "Špatná městská brána, kamaráde. Devové tudy nechodí, alespoň jsem o tom neslyšel."~ */
  IF ~~ THEN REPLY #13724 /* ~"Dobrá. Tak ještě pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #13725 /* ~"Díky. Ještě se uvidíme."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 7.1
  SAY #13726 /* ~"To ti nedokážu říct. Snažím se nestrkat nos do cizejch věcí. Pak našinec žije dýl a líp." Zarazil se a vypadá poněkud nervózně. "Bez urážky, ale vážně... měl bys to dělat taky tak."~ */
  IF ~~ THEN REPLY #13727 /* ~"To si zapamatuju. Stejně mi ještě o něčem pověz."~ */ GOTO 7
  IF ~~ THEN REPLY #13728 /* ~"Zvláštní... nevím o tom, že bych tě žádal o radu. Ještě jedno uklouznutí a budeš platit."~ */ GOTO 8
  IF ~~ THEN REPLY #13729 /* ~


"Díky za radu. Ještě se uvidíme."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 7.2
  SAY #13730 /* ~Než odpověděl, odfrkl si a rozhlédl se dokola. "Curst znamená Prokletí a není to náhoda, kamaráde. Tento plac je vězení pro všecky, co si zpackali život. A nejhorší na tom je, že si většina z těch hlupáků ani neuvědomuje, že jsou vězni."~ */
  IF ~~ THEN REPLY #13731 /* ~"Vězení?"~ */ GOTO 9
  IF ~~ THEN REPLY #13732 /* ~"Aha. Jiná otázka."~ */ GOTO 7
  IF ~~ THEN REPLY #13733 /* ~"Tedy, díky za informaci."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.1 8.0 9.0
  SAY #13734 /* ~"Jistě. Co chceš vědět?"~ */
  IF ~~ THEN REPLY #13735 /* ~"Hledám devu. Slyšel jsem, že bych ho mohl najít tady."~ */ GOTO 4
  IF ~~ THEN REPLY #13736 /* ~"Co je tady nového?"~ */ GOTO 5
  IF ~~ THEN REPLY #13737 /* ~"Řekni mi něco o Curstu."~ */ GOTO 6
  IF ~~ THEN REPLY #13738 /* ~"Ale nic."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #13739 /* ~Jeho obličej opět zrudl, jak se snaží udržet na uzdě. "Promiň, už se to nestane. Oh, chtěls ještě něco?"~ */
  IF ~~ THEN REPLY #13740 /* ~"Jo, mám pro tebe pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #13741 /* ~"Ne, to bude vše."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #13742 /* ~Rozhlédl se a naklonil se k tobě blíž. "No, na první pohled se to nezdá, ale Curst je prostě vězení. Jen zkus odejít a uvidíš, co mám namysli. Jestli nemáš nějaký dost dobrý důvod a způsob, jak to udělat, nedostaneš se za městské brány." Odmlčel se a opět se rozhlédl. "Víc už říct nemůžu."~ */
  IF ~~ THEN REPLY #13743 /* ~"Hmm. Dovol mi ještě pár otázek."~ */ GOTO 7
  IF ~~ THEN REPLY #13744 /* ~"Díky. Ještě se uvidíme."~ */ EXIT
END
