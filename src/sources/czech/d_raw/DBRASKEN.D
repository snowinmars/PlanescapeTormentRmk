// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRASKEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRASKEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45442 /* ~Hlasitým a burácivým hlasem se Brasken ptá: "Co ke všem čertům děláš v mém domě? Hned odejdi, nebo tě udělám ještě šerednějšího, než už jsi."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45443 /* ~"Byl jsem požádán, abych do tvé péče předal tuto krabici."~ */ GOTO 8
  IF ~~ THEN REPLY #45445 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45446 /* ~"Cože?! Zase ty! Pokud jsi nepřišel za mnou, pak bych ti doporučoval okamžitě odejít."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45447 /* ~"Byl jsem požádán, abych do tvé péče předal tuto krabici."~ */ GOTO 8
  IF ~~ THEN REPLY #45448 /* ~"Pardon, spletl jsem si dům. Už jdu."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 14 7 5 even though they appear after this state */
~  GlobalGT("FedEx","Global",2)
~ THEN BEGIN 2 // from:
  SAY #45449 /* ~"Jdi pryč, ty blázne! Už jsem ti o Morridorově krabici řekl vše, co vím."~ */
  IF ~~ THEN REPLY #45450 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 7 5 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45451 /* ~"Úlem jdou zvěsti, že nějaký chlapík šel a zabil fienda, co byl chycen v Morridorově krabici. Proslýchá se, že bitva s fiendem na něm zanechala strašlivé šrámy po celém těle. Nejsi náhodou ten chlápek, nebo ano?"~ */
  IF ~~ THEN REPLY #45452 /* ~"Samozřejmě; kdo jiný by to podle tebe mohl udělat?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45453 /* ~Zeširoka a dunivě ze zasmál, "Drzý a odvážný! To se mi líbí. Staneš se hrdinou, jenom co se zvěst o tvých hrdinských skutcích rozšíří. Dovol mi být jednímz prvních, co ti pogratuluje. Pojď... dáme si skleničku, abys mi mohl vyprávět příběh tvé odvahy."~ */
  IF ~~ THEN REPLY #45454 /* ~"Rád si s tebou dám džbánek nebo dva."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45455 /* ~"Možná někdy jindy. Mám hodně na práci. Sbohem."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Drunk","Global",1)
~ THEN BEGIN 5 // from:
  SAY #45456 /* ~"Velký chlapík se vrátil. Rozmyslel sis ten drink? Opravdu rád bych si poslechl o tvém hrdinském skutku."~ */
  IF ~~ THEN REPLY #45457 /* ~"Rád si s tebou dám džbánek nebo dva."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45458 /* ~"Možná někdy jindy. Mám hodně na práci. Sbohem."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0 14.0
  SAY #45459 /* ~Po několika korbelech, několika písničkách a několika vtipech jsi počal mít Braskena opravdu rád. Ve skutečnosti bys teď měl rád kohokoliv. Nakonec Brasken padl na podlahu v opileckém omámení. Uvědomil sis, že je čas jít.~ */
  IF ~~ THEN REPLY #45460 /* ~"Sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drunk","Global",2)
~ THEN BEGIN 7 // from:
  SAY #45461 /* ~"Och, mám hlavu jako střep! Mám dojem, že mě to nikdy nepřejde."~ */
  IF ~~ THEN REPLY #45462 /* ~Nechej Braskena s jeho trápením.~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0
  SAY #45463 /* ~"No, proč to neřekneš? Tak, dej mi ji a můžeš jít." Jak mu krabici podáváš, mění se Braskenův výraz z dychtivého očekávání na výraz pobavení. "Hele ho! Na ten trik už podruhé nenaletím. Dej tu věc ode mě pryč."~ */
  IF ~~ THEN REPLY #45464 /* ~"Nerozumím tomu; proč nikdo tu krabici nechce? Nejdřív Ku'atraa a teď ty."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45465 /* ~"Ku'atraa, říkáš?" Brasken propukl v hurónský smích. "Propána, to je ten chlapík, co ode mne tu krabici koupil. Myslel si, jak dobrý obchod u mě neudělal. Hádám, že zjistil, že je ta drahocennost více než hodna ceny, kterou mi zaplatil. Ten nebožák si neuvědomil, do čeho jde, dokud nebylo pozdě."~ */
  IF ~~ THEN REPLY #45466 /* ~"Tak co je teda na té krabici tak hrozného?"~ */ GOTO 10
  IF ~~ THEN REPLY #46623 /* ~"Nezajímá mě historie té věci. Jenom mi řekni, jak se jí mám zbavit."~ */ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45467 /* ~"Chceš mi říct, že skutečně o krabici, co máš, nic nevíš? Takže, řekl bych, že se nic nestane, když ti prozradím, co vím. Především, aby sis třeba něco nepomyslel, prokletí této krabice působí jenom na jejího majitele a jejím majitelem se můžeš stát jenom tehdy, když tu krabici ochotně přijmeš."~ */
  IF ~~ THEN REPLY #45468 /* ~"Tím odpadá myšlenka prostě nechat tu krabici ležet, aby ji někdo našel... takže, co je v krabici?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #45469 /* ~"No, to je dobrá otázka. Ta krabice je v Úlu už odnepaměti. Točí se kolem ní spousta fám. Jak si asi dovedeš představit, během času byla pravda zkřivena víc a víc s každým dalším převyprávěním toho příběhu." ~ */
  IF ~~ THEN REPLY #45470 /* ~"Pokračuj."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45471 /* ~"Slyšel jsem o krabici mnoho historek a všechny mají opakující se motiv. Jméno, které bylo dáno té mizerné věci je 'Moridorova krabice' a její majitel zemře, pokud ji sám nebo někdo jiný otevře. Ale konec konců, kdo ví? Někdo říká, že je tam starobylý drak, zatímco jiní říkají, že je tam zlá duše Moridora samotného. Nemůžu nic tvrdit jistě, ale už jen při pohledu na krabici může každý říct, že je na ní něco zlověstného a nikdo nebude takový blázen, aby ji otvíral."~ */
  IF ~~ THEN REPLY #45472 /* ~"Co s ní mám udělat?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 9.1 12.0
  SAY #45473 /* ~"Navrhoval bych ti, abys navštívil Shilandru. Žije v severovýchodní části Úlu. Právě od ní jsem 'vyhrál' tu krabici. Kdo ví, možná bude mít víc povědomí o tom, co s ní udělat. Nebo můžeš najít nějakého jiného neznalého troubu, co si ji od tebe vezme. Je to na tobě. Hodně štěstí."~ */
  IF ~~ THEN REPLY #45474 /* ~"Sbohem."~ */ DO ~SetGlobal("FedEx","Global",3)
SetGlobal("Beta","Global",2)
SetGlobal("Delta","Global",1)
AddexperienceParty(250)
~ JOURNAL #60387 /* ~Rozhovorem s Braskenem jsem se hodně naučil. Zdá se, že jsem nešťastným majitelem prokleté skříňky, jako bych neměl dost jiných problémů na starosti. Ta odporná věc má dokonce jméno. Říká se jí Moridorova skříňka a vypadá to, že každý její vlastník je prokletý a brzy zemře. Měl bych ji otevřít. Co se obsahu týká, je stále záhadou. Brasken mi doporučil, abych si zaplatil návštěvu u Shilandry, co žije poblíž Márnice, v severovýchodní části Úlu. Jsem odsouzen k věčnému hledání původních majitelů téhle věci?~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 14 // from:
  SAY #45475 /* ~"Ta zpráva je všude! Gratuluji k prolomení prokletí Moridorovy krabice. Musím připustit, že jsem byl poněkud skeptický, že by takový ošklivý trouba mohl uspět v takové záležitosti. Abys věděl, pořád si myslím, že jsi ošklivější než prasečí zadnice... ale získal jsi respekt pro to, co jsi udělal. Pojď; dáme si skleničku a ty mi řekneš, jak jsi to dokázal."~ */
  IF ~~ THEN REPLY #45476 /* ~"Rád si s tebou dám džbánek nebo dva."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(3)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45477 /* ~"Možná někdy jindy. Mám hodně na práci. Sbohem."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END
