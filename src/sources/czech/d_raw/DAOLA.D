// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAOLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAOLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 3 2 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45487 /* ~"Vítej v Aoskarově katedrále. Přišel jsi se se mnou poklonit Aoskarovi? Můžeš být jeho druhým následovníkem."~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60902 /* ~"Hledám radu ohledně jedné krabice a jednoho fienda."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45488 /* ~"Přišel jsem hledat radu ohledně jedné krabice a fienda."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45489 /* ~"Proč nejsou žádní další Aoskarovi učedníci?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45490 /* ~"Řekni mi více o Aoskarovi."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45491 /* ~"Chtěl bych se stát následovníkem Aoskara."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45492 /* ~"Možná někdy jindy. Sbohem."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 2 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45493 /* ~"Ztracená duše se navrací. Pojď; vzdejme dík Aoskarovi a oslavme tvůj návrat. Předpokládám, že jsi si rozmyslel vstup do mé kongregace."~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60951 /* ~"Hledám radu ohledně jedné krabice a jednoho fienda."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45494 /* ~"Přišel jsem hledat radu ohledně jedné krabice a fienda."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45495 /* ~"Jaké kongregace? Jsi jediný člověk, kterého tu vidím."~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45497 /* ~"Řekni mi více o Aoskarovi."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45498 /* ~"Chtěl bych se stát následovníkem Aoskara."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45499 /* ~"Možná někdy jindy. Sbohem."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 2 // from:
  SAY #45500 /* ~"Nechť Aoskar bdí nad tvými kroky. Jak ti mohu pomoct?"~ */
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45501 /* ~"Chtěl bych získat ten drahokam, co jsi vzal z Moridorovy krabice."~ */ GOTO 13
  IF ~~ THEN REPLY #45503 /* ~"Řekni mi více o Aoskarovi."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45504 /* ~"Proč nejsou žádní další Aoskarovi učedníci?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45506 /* ~"Chtěl bych se stát následovníkem Aoskara."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45507 /* ~"Co se stalo? V jednu chvíli jsem se málem stal následovníkem a pak už si pamatuji jen to, jak jsem uvězněn v nějakém 'labyrintu'."~ */ GOTO 17
  IF ~~ THEN REPLY #45509 /* ~"Teď nic. Sbohem."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Disciple","Global",1)
~ THEN BEGIN 3 // from:
  SAY #45511 /* ~"Vrátil jsi se! Omluv můj údiv, ale jsi prvním učedníkem, který se kdy vrátil. Většina se zdá být ztracena. Jak ti můžu pomoct?"~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60964 /* ~"Hledám radu ohledně jedné krabice a jednoho fienda."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45599 /* ~"Přišel jsem hledat radu ohledně jedné krabice a fienda."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45600 /* ~"Chtěl bych získat ten drahokam, co jsi vzal z Moridorovy krabice."~ */ GOTO 13
  IF ~~ THEN REPLY #45601 /* ~"Řekni mi více o Aoskarovi."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45602 /* ~"Co se stalo? V jednu chvíli jsem se málem stal následovníkem a pak už si pamatuji jen to, jak jsem uvězněn v nějakém 'labyrintu'."~ */ GOTO 17
  IF ~~ THEN REPLY #45603 /* ~"Teď nic. Sbohem."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shutup","Global",1)
~ THEN BEGIN 4 // from:
  SAY #45604 /* ~Aola asi upadl do hlubokého transu. Slyšíš, jak stále a dokola zpívá chvalozpěvy k Aoskarovi.~ */
  IF ~~ THEN REPLY #45605 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #45606 /* ~Vysvětlil jsi mu své nesnáze. Aola si patrně na chvíli vše rozmýšlel a pak ti odvětil. "Já, pokorný učedník velkého Aoskara, ti můžu vskutku pomoci. Nejdříve mi musíš přenechat tu krabici."~ */
  IF ~~ THEN REPLY #45607 /* ~Dej mu krabici.~ */ DO ~DestroyPartyItem("Dbox",TRUE)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45608 /* ~Aola položil Moridorovu krabici pod drátěnou konstrukci ve tvaru pyramidy a mumlá modlitby k Aoskarovi. Brzy zaplnil boky pyramidy povědomý třpyt portálu. Aola pak  do portálu uvolněně vložil ruce a švihem Moridorovu krabici otevřel.~ */
  IF ~~ THEN REPLY #45609 /* ~Pokračuj.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45610 /* ~Zakřičel jsi ve snaze jej zastavit, ale už bylo pozdě. Téměř okamžitě se začala krabice vytrácet, zatímco vnitřek pyramidy začal vyplňovat bledý dým. Pocit nesmírné hrůzy zaplnil místnost a máš co dělat, abys sám neutekl ze stanu.~ */
  IF ~~ THEN REPLY #45611 /* ~Pokračuj.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45612 /* ~Povšiml sis, že jak se proužky dýmu dotkly stěn pyramidy, byly vtahovány do hučícího víru portálu. Jak se ztratil i poslední z nich, pocit strachu pominul. Aola se na tebe poněkud nervózně usměje. "Hleď na sílu Aoskara, Hlídače bran!"~ */
  IF ~~ THEN REPLY #45613 /* ~"Jsem si jist, že fiend takové síly, že jej bylo nutné spoutat tolika kouzly, nebude mít příliš práce, aby se dostal zpět. A až se mu to povede, bude slídit po tobě..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45615 /* ~"To jsem vzal v úvahu. Podívej, každá strana pyramidy obsahuje portál do jiné sféry. Tím pádem jsem rozptýlil jeho esence daleko široko v celém mnohovesmíru. Věděl jsi, že jsou tam rasy, co nakládají s fiendy jako s nějakými delikatesami?" Začíná rychle pomlaskávat a natahuje se do pyramidy, prosívá popel z krabice a vyndává drahokam, který na ní byl připevněn. "Odměna za mé služby. Použiji jej na přestavbu své krásné katedrály."~ */
  IF ~~ THEN REPLY #45617 /* ~"Nechej si ten drahokam; zasloužil sis jej. Sbohem."~ */ DO ~SetGlobal("FedEx","Global",10)
SetGlobal("Shutup","Global",1)
CreateItem("DGem",1,0,0)
SetGlobal("Epsilon","Global",2)
AddexperienceParty(1000)
~ JOURNAL #60389 /* ~Moridorova skříňka našla svůj klid. Díky pomoci kněze boha Aoskara. Za odměnu si kněz vzal drahokam, který byl umístěn na víku skříňky. Je to velmi drahý vzácný kámen... přece jenom, byl použit ke spoutání fienda. ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.2 2.2 11.1
  SAY #45618 /* ~"Během let jsem měl mnoho učedníků. Bohužel se všichni ztratili. Vlastně je to dost frustrující. Jakmile se stali zasvěcenými, už jsem je nikdy neviděl. Později se vynořily zvěsti o tom, že příčinou toho je samotná Paní. Teď už nikdo nepřichází. Jsi první duše, co sem po dlouhé době zavítala."~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45619 /* ~"Nemám strach; chci se stát Aoskarovým následovníkem."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("Aoskar","Global",0)
~ THEN REPLY #45620 /* ~"Řekni mi víc o Aoskarovi."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45621 /* ~"Paní... nechci s ní křížit moje kroky. Raději půjdu. Sbohem."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.3 1.3 2.1 3.3 10.1
  SAY #45623 /* ~Aolův hlas se zdá být nyní více podbízivý. "Aoskar je Hlídačem bran. Za Aoskarem leží moc portálů, průchodů a příležitosti. Sigil, známý také jako Město dveří, býval domovem Aoskara, dokud nebyl 'zapuzen' tou zlořečenou Paní. Teď je zde už jen několik věřících v Aoskara, protože to Paní zakazuje. To se nicméně brzy změní, protože já pomáhám lidem vidět Aoskarovu velikost. Ona nemůže stát proti vůli lidu!"~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45624 /* ~"Přeji si stát se učedníkem Aoskara."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("One","Global",0)
~ THEN REPLY #45626 /* ~"Proč nejsou žádní další Aoskarovi učedníci?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45629 /* ~"Paní... nechci s ní křížit moje kroky. Raději půjdu. Sbohem."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.4 1.4 2.3 10.0 11.0
  SAY #45631 /* ~"Úžasné! Je to tak dlouho, co mě o to někdo požádal." Aola tě přiměl vykonat řadu komplikovaných rituálů a pak říká, "Teď jsi Aoskarovým následovníkem; jdi a šiř slovo lidem ze Sigilu tak, aby mohli všichni poznat Aoskarovu slávu!"~ */
  IF ~~ THEN REPLY #45634 /* ~Sbohem.~ */ DO ~SetGlobal("Shutup","Global",1)
SetGlobal("Lady","Global",50)
SetGlobal("Disciple","Global",1)
SetGlobal("DMaze","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 3.2
  SAY #45635 /* ~"Naštěstí pro tebe jsem ještě neměl čas jej prodat. Přenechám ti jej za výhodnou cenu tří set měďáků."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45636 /* ~"Beru ho."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldGT(99)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #61596 /* ~"Co takhle sto mědáků?"~ */ GOTO 19
  IF ~  PartyGoldLT(300)
~ THEN REPLY #45638 /* ~"To si nemůžu dovolit."~ */ GOTO 15
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45639 /* ~"To je zlodějna... to nezaplatím."~ */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.0 19.0
  SAY #45641 /* ~"Nechť se na tebe Aoskar, bůh portálů, dveří a 'příležitosti', usměje."~ */
  IF ~~ THEN REPLY #45643 /* ~Sbohem.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2 19.1 19.2
  SAY #45645 /* ~"To je opravdu nemilé. Už nemůžu jít níž. Možná by sis mohl vydělat nějaké peníze a pak se vrátit. Budu více než šťasten a ten drahokam ti podržím."~ */
  IF ~~ THEN REPLY #45646 /* ~Sbohem.~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY #45648 /* ~"Opravdu potřebuji peníze na přestavbu katedrály. Jsi si jist, že si to nerozmyslíš? ...protože vím, že bych přinejmenším tolik mohl dostat na trhu."~ */
  IF ~~ THEN REPLY #45649 /* ~"Beru ho."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("DGem",Protagonist)
~ GOTO 14
  IF ~~ THEN REPLY #45651 /* ~"Zapomeň na to."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.4
  SAY #45654 /* ~"Vypadá to, že jsi byl někam přenesen portálem. Jenom zkušení následovníci Aoskarovi a Paní mohou dělat takové věci. To by mohlo vysvětlit zmizení mých ostatních učedníků. Nad tím se musím zahloubat. Prosím, odejdi."~ */
  IF ~~ THEN REPLY #45657 /* ~Sbohem.~ */ DO ~SetGlobal("DMaze","Global",2)
SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.0 1.0 3.0
  SAY #60914 /* ~Jakmile jsi vysvětlil svůj problém, Aola si krabici krátce prohlédl a podal ti ji zpět. "Nemyslím si že by s tou krabicí bylo něco v nepořádku. A teď mě omluv, mám práci."~ */
  IF ~~ THEN REPLY #60925 /* ~Sbohem.~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #61597 /* ~"Nevím proč, ale líbíš se mi. Nechám ti ten kámen za dvě stovky, ale ani o mědák míň. Co říkáš?"~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #61598 /* ~"Beru to."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(200)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldLT(200)
~ THEN REPLY #61600 /* ~"Tolik nemám."~ */ GOTO 15
  IF ~~ THEN REPLY #61599 /* ~"Zapomeň na to."~ */ GOTO 15
END
