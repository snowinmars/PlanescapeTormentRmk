// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIINA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIINA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2921 /* ~Oči githzeraiské ženy jsou plné nenávisti. "*Věz*, že jsi mi ukradl blízkého. *Věz*, že budeš trpět." Její ruce se začínají míhat ve vzduchu, zanechávajíc za sebou rozmazané stopy.~ */
  IF ~~ THEN REPLY #2922 /* ~"Co tím myslíš?"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43584 /* ~Bojuj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43585 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #43586 /* ~Tato žena má nažloutlou kůži a ostré rysy. Její tělo pokrývají tetování a u jejího boku se houpe dlouhá čepel. Její oči, jakoby černé perly, sledují tvé pohyby, jakmile se k ní přiblížíš.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43587 /* ~"Buď zdráva, šermířko."~ */ GOTO 3
  IF ~~ THEN REPLY #43588 /* ~"Buď zdráva."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43589 /* ~"Vyznáš se v pevnosti Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43590 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #43591 /* ~"Copak mi můžeš povědět o tomto místě?"~ */ GOTO 3
  IF ~~ THEN REPLY #43592 /* ~"Pardon, s někým jsem si tě spletl. Sbohem."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #43593 /* ~Tato žena má nažloutlou kůži a ostré rysy. Její tělo pokrývají tetování a u jejího boku se houpe dlouhá čepel. Její oči, jakoby černé perly, sledují tvé pohyby, jakmile se k ní přiblížíš.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43594 /* ~"Buď zdráva, šermířko."~ */ GOTO 3
  IF ~~ THEN REPLY #43595 /* ~"Buď zdráva."~ */ GOTO 3
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43596 /* ~"Vyznáš se v pevnosti Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43597 /* ~"Kdo jsi?"~ */ GOTO 3
  IF ~~ THEN REPLY #43598 /* ~"Copak mi můžeš povědět o tomto místě?"~ */ GOTO 3
  IF ~~ THEN REPLY #43599 /* ~"Pardon, s někým jsem si tě spletl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.3 1.4 2.0 2.1 2.3 2.4
  SAY #43600 /* ~"Lidi... většina lidí tě *zná* jako přítele. Já tě ale *neznám*. Nemohu ti pomoci."~ */
  IF ~~ THEN REPLY #43601 /* ~"Jen bych ti chtěl položit pár otázek..."~ */ GOTO 4
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43602 /* ~"Říká ti něco pevnost Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43603 /* ~"Tak možná někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43604 /* ~Při pohledu na tebe se v jejích očích zajiskřilo. "Slyš má slova a *poznej* mou mysl: Nemohu ti pomoci. Odejdi."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43605 /* ~"Říká ti něco pevnost Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43606 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF WEIGHT #3 ~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 5 // from:
  SAY #43607 /* ~"Ještě mi nejsi *znám*. *Věz*, že ti nemám co říci."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43608 /* ~"Říká ti něco pevnost Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43609 /* ~"Tak sbohem."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #43610 /* ~"Ještě mi nejsi *znám*. *Věz*, že ti nemám co říci."~ */
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43611 /* ~"Říká ti něco pevnost Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43612 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 3.1 4.0 5.0 6.0 23.2 24.2
  SAY #43613 /* ~Nepatrně se vypjala. "Jak jsi přišel k *poznání* toho jména?"~ */
  IF ~~ THEN REPLY #43614 /* ~"Skupina githyanki plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 8
  IF ~~ THEN REPLY #43615 /* ~"Řeči z ulice."~ */ GOTO 9
  IF ~~ THEN REPLY #43616 /* ~"Zapomeň na to."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0 10.0
  SAY #43617 /* ~Její pohled se zaryl do tvé tváře. Cítíš jak si zaznamenává tvou podobu. "*Věz*, že githzeraiové jsou ti vděčni. Nechť ti to není zapomenuto. Slunce zapadá nad Haldarem, cestovateli - musím varovat své lidi."~ */
  IF ~~ THEN REPLY #43618 /* ~"Hodně štěstí a sbohem."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~Řekl jsem jedné z githzerai, kterou jsem potkal, o plánovaném útoky githyankiů na pevnost Vristigor. Po vyslechnutí zprávy rychle odběhla pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 7.2
  SAY #43619 /* ~Nasadila tvrdý výraz. "Řekni mi zdroj."~ */
  IF ~~ THEN REPLY #43620 /* ~"Skupina githyanki plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 8
  IF ~~ THEN REPLY #43621 /* ~"Neřeknu."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #43622 /* ~"Jestli mi to neřekneš, budu se na tebe dívat skrze Vilquarovo oko!"~ */
  IF ~~ THEN REPLY #43623 /* ~"Skupina githyanki plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 8
  IF ~~ THEN REPLY #43624 /* ~"Proč bych ti to měl říkat?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #43625 /* ~Se sykotem začala v prostoru před tebou vykreslovat modré světlo...~ */
  IF ~~ THEN REPLY #43626 /* ~Bojuj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43627 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #5 ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 12 // from:
  SAY #43628 /* ~Tato žena má nažloutlou kůži a drsné rysy. Po těle má tetování, na straně má zavěšenou dlouhou čepel. Její oči jsou jako dvě malé černé perly. Když se k ní blížíš, sleduje tvé pohyby. "Rod Zerchaiů se ti klaní. Vím o tvé moudrosti a tvé pomoci. Řekni, jak ti mohu pomoci já."~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43629 /* ~"A cestovatel je potěšen. Doufal jsem, že bys mi mohla odpovědět na několik otázek."~ */ GOTO 13
  IF ~~ THEN REPLY #43630 /* ~"Mám nějaké otázky a doufal jsem, že bys mi mohla na ně odpovědět."~ */ GOTO 13
  IF ~~ THEN REPLY #43631 /* ~"Kdo jsi?"~ */ GOTO 14
  IF ~~ THEN REPLY #43632 /* ~"Promiň, s někým jsem si tě spletl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 16.0 17.1 19.0 20.0 21.0 22.0
  SAY #43633 /* ~"Promluv. Budu ti naslouchat."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43634 /* ~"Co mi můžeš říct o rozdílech mezi githyanki a githzerai?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43635 /* ~"Co mi můžeš říct o rozdílech mezi githyanki a githzerai?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43636 /* ~"Můžeš mě naučit způsobu mluvy githzerai?"~ */ GOTO 18
  IF ~~ THEN REPLY #43637 /* ~"Můžeš mě naučit způsobům Zerthimonů?"~ */ GOTO 22
  IF ~~ THEN REPLY #43638 /* ~"Teď už nemám žadné otázky. Díky za tvůj čas."~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #43639 /* ~"Jmenuji se Kii'na. Patřím k *zerthům*. Učím způsobům Zerthimonů a vedu lidi k jejich osudu."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43640 /* ~"Co mi můžeš říct o rozdílech mezi githyanki a githzerai?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43641 /* ~"Co mi můžeš říct o rozdílech mezi githyanki a githzerai?"~ */ GOTO 17
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43642 /* ~"Můžeš mě naučit způsobu mluvy githzerai?"~ */ GOTO 18
  IF ~~ THEN REPLY #43643 /* ~"Můžeš mě naučit způsobům Zerthimonů?"~ */ GOTO 22
  IF ~~ THEN REPLY #43644 /* ~"Teď už nemám žadné otázky. Díky za tvůj čas."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 13.4 14.4
  SAY #43645 /* ~"Západ slunce nad Haldarem, cestovateli. Jsi jako Elezpah v horách, statečný a nebojácný."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",1)
~ THEN REPLY #43646 /* ~"Povečeřela jsem u Torygova stolu. Sbohem." ("Jsem ti vděčná.")~ */ EXIT
  IF ~~ THEN REPLY #43647 /* ~"Díky. Sbohem."~ */ EXIT
END

IF WEIGHT #6 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #43648 /* ~"Buď zdráv, Bojovníku."~ */
  IF ~~ THEN REPLY #43649 /* ~"Buď zdráva. Mám ještě nějaké další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #43650 /* ~"Buď zdráva, Kii'no, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 14.1
  SAY #43651 /* ~Na chvíli se na tebe přísně podívala. Gith byla velká válečnice, která osvobodila náš lid ze zajetí *illithidských* otrokářů. Zerthimon byl její poručík. Když oba osvobodili naše lidi, tak se Gith na Větrných pláních obrátila proti Zerthimonovi. Slova byla vyřčena, ocel obnažena a z jednoho člověka se stali lidé dva. Ti, kteří zůstali s tou čubkou, si začali říkat Githyanki. Ti z nás, co jsme šli za Zerthimonem a zůstali věrni Lidem, jsme si začali říkat Githzeraiové." ~ */
  IF ~~ THEN REPLY #43652 /* ~"A to je důvod, proč se navzájem tak nenávidíte?"~ */ JOURNAL #39486 /* ~Objevil jsem, že rivalita mezi githzerai a githyanki pochází ze stejného původu - obě rasy nenávidí to, co se stalo z druhé odnože. Je zvláštní, jak často se dvě věci, pocházející ze stejného zdroje, diametrálně odlišují.~ */ GOTO 20
  IF ~~ THEN REPLY #43653 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ JOURNAL #39486 /* ~Objevil jsem, že rivalita mezi githzerai a githyanki pochází ze stejného původu - obě rasy nenávidí to, co se stalo z druhé odnože. Je zvláštní, jak často se dvě věci, pocházející ze stejného zdroje, diametrálně odlišují.~ */ GOTO 13
  IF ~~ THEN REPLY #43654 /* ~"Díky. Sbohem."~ */ JOURNAL #39486 /* ~Objevil jsem, že rivalita mezi githzerai a githyanki pochází ze stejného původu - obě rasy nenávidí to, co se stalo z druhé odnože. Je zvláštní, jak často se dvě věci, pocházející ze stejného zdroje, diametrálně odlišují.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 14.2
  SAY #43655 /* ~"Mluva Githzeraiů se opírá o historii. Všechny události se pro nás staly příběhy. Metafora je mocný nástroj. Inspirace k hrdinství našich lidí a zároveň zastrašovací prostředek pro ničemné choutky. Pokud mluvíme o Torygovu stolu, tak si připomínáme, že Toryg byl proslulý pro svou pohostinnost a dobrou vůli. Pokud mluvíme o Selqantovu srdci, tak si připomínáme smilnou a krutou povahu Selqantovu. Pochopil jsi to?"~ */
  IF ~~ THEN REPLY #43656 /* ~"Ano."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Zerth Kii'na mě naučila mnoho z jazyku githzerai. Je založený na metaforách, alegoriích a příbězích z historie githzerai.~ */ GOTO 21
  IF ~~ THEN REPLY #43657 /* ~"Ne."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #43658 /* ~"V tom případě tě nemohu ničemu dalšímu naučit."~ */
  IF ~~ THEN REPLY #43659 /* ~"Dobrá. Mám ještě nějaké další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #43660 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #43661 /* ~"Obě skupiny našich lidí jsou jako Penanští mezci - tvrdohlaví slepí a nepříjemní. Githyanki k tomu přidávají ještě surovost. Nenávidí nás za naši expandující říši, které nerozumí."~ */
  IF ~~ THEN REPLY #43662 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #43663 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0
  SAY #43664 /* ~Takže naše výuka začíná:
Moudrý člověk "napsal knihu Anarcha."
Připomínka "Vilquarova oka" znamená obvinit někoho ze zrady.
O štědrých lidech se říká, že jejich "skříně jsou prázdné."
Běžný pozdrav je "Buď zdráv, bojovníku" a "Zerchaiův rod se ti klaní" a na něj je možné odpovědět "a cestovatel je potěšen."
Tvá mysl je plná mnohých jiných podobných frází.
~ */
  IF ~~ THEN REPLY #43665 /* ~"Díky, Kii'no. Mám ještě další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #43666 /* ~"Díky, Kii'no. Slunce zapadá nad Haldarem." ("Bylo to zajímavé a příjemné.")~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.3 14.3
  SAY #43667 /* ~"Nemohu. Jsi příliš rozpolcen, příliš... aby ses naučil našim způsobům."~ */
  IF ~~ THEN REPLY #43668 /* ~"Aha. Mám ještě nějaké další otázky..."~ */ GOTO 13
  IF ~~ THEN REPLY #43669 /* ~"Díky, Kii'no. Sbohem."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #43670 /* ~Tato žena má nažloutlou kůži a drsné rysy. Po těle má tetování, na straně má zavěšenou dlouhou čepel. Její oči jsou jako dvě malé černé perly. Když se k ní blížíš, sleduje tvé pohyby.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43671 /* ~"Zdravím, bojovníku."~ */ GOTO 26
  IF ~~ THEN REPLY #43672 /* ~"Zdravím."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43673 /* ~"Říká ti něco pevnost Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43674 /* ~"Kdo jsi?"~ */ GOTO 25
  IF ~~ THEN REPLY #43675 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 25
  IF ~~ THEN REPLY #43676 /* ~"Promiň, spletl jsem se. Sbohem."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #43677 /* ~Jak se přibližuješ, tak tě tiše a upřeně sleduje.~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43678 /* ~"Zdravím, bojovníku."~ */ GOTO 26
  IF ~~ THEN REPLY #43812 /* ~"Zdravím."~ */ GOTO 25
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43813 /* ~"Říká ti něco pevnost Vristigor?"~ */ GOTO 7
  IF ~~ THEN REPLY #43814 /* ~"Kdo jsi?"~ */ GOTO 25
  IF ~~ THEN REPLY #43815 /* ~"Co mi můžeš říct o tomto místě?"~ */ GOTO 25
  IF ~~ THEN REPLY #43816 /* ~"Promiň, spletl jsem se. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.3 23.4 24.1 24.3 24.4
  SAY #43684 /* ~Je znepokojena. "Ještě mi nejsi *znám*. Z tohoto setkání nemůže mít prospěch ani  jeden z nás. Sbohem."~ */
  IF ~~ THEN REPLY #43685 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0 24.0
  SAY #43686 /* ~"Ještě mi nejsi *znám*, i když mě zdravíš podle zvyků mých lidí. Na tom stejně nezáleží... nemohu ti pomoci, cestovateli. Sbohem."~ */
  IF ~~ THEN REPLY #43687 /* ~"Člun se solným povlakem rozpíná plachty."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 60 even though they appear after this state */
~  NearbyDialog("DDakkon")
Global("Dakkon_Know_Kiina","AR0500",0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #43688 /* ~Tato žena má nažloutlou kůži a drsné rysy. Po těle má tetování, na straně má zavěšenou dlouhou čepel. Její oči jsou jako dvě malé černé perly. Když se k ní blížíš, sleduje Dak'konovy pohyby.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 133
END

IF WEIGHT #11 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 28 // from:
  SAY #43689 /* ~Zerth hněvivě hledí na Dak'kona, jak se s tebou vrací. Opět se k tobě obrátila, jako by vyzývala Dak'kona, aby zasáhl cíl.~ */
  IF ~~ THEN REPLY #43690 /* ~"Dak'kone, sraz ji."~ */ EXTERN ~DDAKKON~ 137
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43691 /* ~"Přestaň, Kii'no. Říká ti něco pevnost Vristigor?"~ */ GOTO 36
  IF ~~ THEN REPLY #43692 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #43693 /* ~Jak se přibližuješ, naprosto tě ignoruje. Dak'kon jí nepatrně přikývl na pozdrav, čehož si vůbec nevšímá. Vyrazila na Dak'kona se smrští hrubých slov a on reaguje ve stejném tónu. Zdá se, že ji to rozzuřilo.~ */
  IF ~~ THEN REPLY #43694 /* ~"Dak'kone, můžeš mi to překládat?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #43695 /* ~"Co říkala?"~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 32
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43696 /* ~"Zeptej se jí, jestli jí říká něco pevnost Vristigor."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 36
  IF ~~ THEN REPLY #43697 /* ~Čekej.~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
SetGlobal("Kiina_Speak","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #43698 /* ~"Vypadnem odsud."~ */ DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from:
  SAY #43699 /* ~"Proč urážíš Kompletní kruh Zerthimonů, když jej nosíš na svém srdci? Ty se nepočítáš mezi Lidi, zrádče Shrak'at'lora! Anarchové a *zerthové* promluvili a ty by ses měl jejich slovům podrobit. Nemůžeš ke mně promlouvat... a ani k jinému *zerthovi*".~ */
  IF ~~ THEN DO ~SetGlobal("Dakkon_Know_Kiina","AR0500",1)
~ EXTERN ~DDAKKON~ 145
END

IF ~~ THEN BEGIN 31 // from: 29.4
  SAY #43700 /* ~Dak'kon ji přerušil uprostřed věty odměřenou poklonou. Otočila se od něj směrem k tobě a hledí na tebe. "Kráčíš ve stínu párii!"~ */
  IF ~~ THEN REPLY #43701 /* ~"Pojďme."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0 29.1
  SAY #43702 /* ~"Nemusí ti překládat. Řeknu ti to. Jsi člověk, mající na těle jizvy a krev a nehodíš se k tomu, abys slyšel promlouvat Zerthimona. Kráčíš ve stínu párii. Ještě mě přemluvil, abych ti dovolila poslouchat mou řeč. Vím, že budeš."~ */
  IF ~~ THEN REPLY #43703 /* ~"Mám jen několik otázek..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43704 /* ~"Říká ti něco pevnost Vristigor?"~ */ GOTO 36
  IF ~~ THEN REPLY #43705 /* ~"Nechci nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #43706 /* ~Vypadá současně pobavená i vylekaná. "Ano, uhoď, Dak'kone a nech vykypět svou proradnost ze svého srdce githyanki." Nastavila mu své hrdlo.~ */
  IF ~~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXTERN ~DDAKKON~ 138
END

IF ~~ THEN BEGIN 34 // from:
  SAY #43707 /* ~Opět mluví k Dak'konovi. "Srazíš mě pro někoho, jež nepatří k Lidem? Mají jeho slova větší váhu, než slova *zertha*? Jsi opravdu ztracen, Dak'kone. Jak se to jenom mohlo stát?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 139
END

IF ~~ THEN BEGIN 35 // from:
  SAY #43708 /* ~"Sešel jsi ze své cesty, Dak'kone. *Věz*, že jsem doufala, že jsi našel svou cestu. Lituji tě. Sbohem."~ */
  IF ~~ THEN REPLY #43709 /* ~"Pojďme, Dak'kone."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.1 29.2 32.1
  SAY #43710 /* ~Tvrdě se na tebe dívala. "Jak jsi ty, který kráčí ve stínu párii, přišel k tomu jménu?"~ */
  IF ~~ THEN REPLY #43711 /* ~"Skupina githyanki plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 37
  IF ~~ THEN REPLY #43712 /* ~"Řeči z ulice."~ */ GOTO 38
  IF ~~ THEN REPLY #43713 /* ~"Zapomeň na to."~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0 38.0 41.4 42.2 52.4 55.2 60.1
  SAY #43714 /* ~"*Věz*... *věz*, že jsem ti vděčná... tobě a tomuhle *zerthovi.* *Věz*, že ti to nebude zapomenuto". Obrátila se k Dak'konovi. "*Věz*, že ani toto neodčiní pád Shrak'at'lora. Verdikt Anarchův platí stále."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43715 /* ~"Hmmm... Sbohem."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
SetGlobal("Shrakatlor","GLOBAL",1)
EscapeArea()
~ JOURNAL #39489 /* ~Řekl jsem jedné z githzerai, kterou jsem potkal, o plánovaném útoky githyankiů na pevnost Vristigor. Po vyslechnutí zprávy rychle odběhla pryč.~ */ EXIT
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43716 /* ~"Hmmm... Sbohem."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
IncrementGlobal("Githzerai","GLOBAL",2)
AddexperienceParty(8000)
EscapeArea()
~ JOURNAL #39489 /* ~Řekl jsem jedné z githzerai, kterou jsem potkal, o plánovaném útoky githyankiů na pevnost Vristigor. Po vyslechnutí zprávy rychle odběhla pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2
  SAY #43717 /* ~"Musím vědět, kde jsi to jméno slyšel."~ */
  IF ~~ THEN REPLY #43718 /* ~"Skupina githyanki plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 37
  IF ~~ THEN REPLY #43719 /* ~"Neřekl jsem to jasně? Neprozradím ti to."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #43720 /* ~"Vilquarovo oko!" Otočila ke k Dak'konovi. "Ať to řekne!"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 140
END

IF ~~ THEN BEGIN 40 // from:
  SAY #43721 /* ~"Tak tedy oba zemřete." A rukama začala zaklínat.~ */
  IF ~~ THEN REPLY #43722 /* ~Bojuj.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43723 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 29.3
  SAY #43724 /* ~Po další vzrušené konverzaci žena najednou ukončila hovor s Dak'konem. "Nebudu tě poslouchat. Poslouchat budeš ty mě. Nejsi mi *znám*, ale tvé ozdoby o tobě mluví špatně. Tvé tělo je kniha psaná jizvami a krví a chodíš ve stínu párii, kterému není *znám* Zerthimon a ani nezná sám sebe. Co ty na to!"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43725 /* ~"Zdravím, bojovníku."~ */ GOTO 42
  IF ~~ THEN REPLY #43726 /* ~"Zdravím."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43727 /* ~"Stín párii? Co tím myslíš?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43728 /* ~"Stín párii? Co tím myslíš?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43729 /* ~"Skupina githyanki plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43730 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43731 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43732 /* ~"Můžeš mě naučit jazyk githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43733 /* ~"Můžeš mě naučit způsobům Zerthimonů?"~ */ GOTO 59
  IF ~~ THEN REPLY #43734 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 52.0 52.1
  SAY #43735 /* ~Podrážděně zasyčela. "Tvé žerty jsou jako prach. Znamení smutku se blíží - času není nazbyt. Poznám tvé otázky, má vůle je, abys odešel."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43736 /* ~"Co jsi myslela tím, když jsi řekla, že kráčím ve stínu párii?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43737 /* ~"Co jsi myslela tím, když jsi řekla, že kráčím ve stínu párii?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43738 /* ~"Skupina githyanki plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43739 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43740 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43741 /* ~"Můžeš mě naučit jazyk githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43742 /* ~"Můžeš mě naučit způsobům Zerthimonů?"~ */ GOTO 59
  IF ~~ THEN REPLY #43743 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.2 41.3 42.0 42.1 52.2 52.3 55.0 55.1 61.0 61.1
  SAY #43744 /* ~"Kráčíš s páriem a není ti známa jeho minulost? Dokáže mluvit o všem možném, ale pokud se jedná o jeho minulost, zůstává zticha? Zeptej se ho na Shrak'at'lora, na pád mocné pevnosti do rukou githyanki a uvidíš, co ti odhalí jeho rozpolcená mysl. Zeptej se ho, jak mluví jazykem Zerthimonů, ale jeho *karach* je jako mlha."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 141
END

IF ~~ THEN BEGIN 44 // from:
  SAY #43745 /* ~"O tom, jaké jsou názory Zerthimonů, není pochyb. Generace *zerthů* jsou jako Rrakmův klenot, mají pouze jediný  názor na tuto záležitost. Tvůj postoj k této věci je odlišný. Tvá pochybnost je důsledek pramenící z tvé vlastní nevěrnosti."~ */
  IF ~~ THEN DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DDAKKON~ 142
END

IF ~~ THEN BEGIN 45 // from:
  SAY #43746 /* ~"Se smrtí Shrak'at'lora spočineš ve zmítajícím se chaosu, protože vše vidíš Vilquarovýma očima. Tvá mysl je rozpolcena a tvůj *karach* je slabý!"~ */
  IF ~~ THEN REPLY #43747 /* ~Postav se čepelím do cesty.~ */ EXTERN ~DDAKKON~ 143
  IF ~~ THEN REPLY #43748 /* ~"Dak'kone, zastavíš to?"~ */ GOTO 48
  IF ~~ THEN REPLY #43749 /* ~"Nevšímej si toho, Dak'kone."~ */ GOTO 48
  IF ~~ THEN REPLY #43750 /* ~Zaútoč na zertha.~ */ EXTERN ~DDAKKON~ 143
END

IF ~~ THEN BEGIN 46 // from:
  SAY #43751 /* ~"Pse! Githyankijský zrádný pse!" Rozpřáhla se svým mečem proti tobě!~ */
  IF ~~ THEN REPLY #43752 /* ~"Je čas zemřít, Kii'no."~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #43753 /* ~Čepele proti sobě navzájem vyrazily ve vířivém pohybu!~ */
  IF ~~ THEN DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2
  SAY #43754 /* ~Dak'kon neochotně sklopil svou čepel. Kii'na na něj chvíli nedůvěřivě hleděla a pak s ostrým úšklebkem řekla: "Pravda se konečně ukázala. Tvá mysl není rozpolcená. Ty jsi... *otrokem* tohoto člověka. Mluví k tobě s autoritou Anarcha a ty jej *posloucháš*".~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",0)
~ EXTERN ~DDAKKON~ 144
END

IF ~~ THEN BEGIN 49 // from:
  SAY #43755 /* ~"Jeho slova mají stejnou váhu jako tvá a mají Limbovu podobu. Nebudu tě poslouchat, Dak'kone."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 146
END

IF ~~ THEN BEGIN 50 // from:
  SAY #43756 /* ~"Rozmluvy Zerthimonů nejsou k tomu, aby je poslouchali lidé. Jejich mysl není jednotná a ať cestují kdekoliv, tak vyvolávají rozkoly. Tento má na sobě jizvy a krev a cestuje se zrádcem. V tvém nitru bije srdce Vilquarovo, jestli se mě ptáš, zda-li mu budu naslouchat."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 147
END

IF ~~ THEN BEGIN 51 // from:
  SAY #43757 /* ~"Já jej poslouchat nebudu. Poslouchat bude on mě."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 148
END

IF ~~ THEN BEGIN 52 // from:
  SAY #43758 /* ~Githijská žena se k tobě otočila. Její černě perlové oči se nebezpečně blýskaly. Nejsi mi *znám*, ale tvůj vzhled o tobě mluví špatně. Tvé tělo je kniha psaná jizvami a krví a kráčíš ve stínu párii, který si uplatňuje nárok mluvit se Zerthimony. Co ty na to!"~ */
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43759 /* ~"Zdravím, bojovníku."~ */ GOTO 42
  IF ~~ THEN REPLY #43760 /* ~"Zdravím."~ */ GOTO 42
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43761 /* ~"Stín párii? Co tím myslíš?"~ */ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43762 /* ~"Stín párii? Co tím myslíš?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43763 /* ~"Skupina githyanki plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43764 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43765 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43766 /* ~"Můžeš mě naučit jazyk githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43767 /* ~"Můžeš mě naučit způsobům Zerthimonů?"~ */ GOTO 59
  IF ~~ THEN REPLY #43768 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 41.5 41.6 42.3 42.4 52.5 52.6 55.3 55.4 61.2 61.3
  SAY #43769 /* ~Na chvíli se na Dak´kona přísně podívala. Gith byla velká válečnice, která osvobodila náš lid ze zajetí *illithidských* otrokářů. Zerthimon byl její poručík. Když oba osvobodili naše lidi, tak se Gith na Větrných pláních obrátila proti Zerthimonovi. Slova byla vyřčena, ocel obnažena a z jednoho člověka, se stali lidé dva. Ti, kteří zůstali s tou čubkou, si začali říkat Githyanki. Ti z nás, co jsme šli za Zerthimonem a zůstali věrni Lidem, jsme si začali říkat Githzeraiové. Náš hněv je upřen na Githiinu zradu." ~ */
  IF ~~ THEN REPLY #43770 /* ~"A to je důvod proč se navzájem tak nenávidíte?"~ */ JOURNAL #39486 /* ~Objevil jsem, že rivalita mezi githzerai a githyanki pochází ze stejného původu - obě rasy nenávidí to, co se stalo z druhé odnože. Je zvláštní, jak často se dvě věci, pocházející ze stejného zdroje, diametrálně odlišují.~ */ GOTO 54
  IF ~~ THEN REPLY #43771 /* ~"Aha. Mám ještě nějaké otázky..."~ */ JOURNAL #39486 /* ~Objevil jsem, že rivalita mezi githzerai a githyanki pochází ze stejného původu - obě rasy nenávidí to, co se stalo z druhé odnože. Je zvláštní, jak často se dvě věci, pocházející ze stejného zdroje, diametrálně odlišují.~ */ GOTO 55
  IF ~~ THEN REPLY #43772 /* ~"Díky. Sbohem."~ */ JOURNAL #39486 /* ~Objevil jsem, že rivalita mezi githzerai a githyanki pochází ze stejného původu - obě rasy nenávidí to, co se stalo z druhé odnože. Je zvláštní, jak často se dvě věci, pocházející ze stejného zdroje, diametrálně odlišují.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #43773 /* ~"Obě skupiny našich lidí jsou jako Penanští mezci - tvrdohlaví, slepí a nepříjemní. Githyankiové k tomu přidávají ještě surovost. Nenávidí nás za naši expandující říši, které nerozumí."~ */
  IF ~~ THEN REPLY #43774 /* ~"Aha. Mám ještě nějaké otázky..."~ */ GOTO 55
  IF ~~ THEN REPLY #43775 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.0 53.1 54.0 57.0 58.0 59.0 60.0
  SAY #43776 /* ~"Ach'ali rozhodla! Ptej se a bude ti odpovězeno."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43777 /* ~"Co jsi tím myslela, když jsi řekla, že kráčím ve stínu párii?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43778 /* ~"Co jsi tím myslela, když jsi řekla, že kráčím ve stínu párii?"~ */ GOTO 43
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43779 /* ~"Skupina githyanki plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43780 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43781 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43782 /* ~"Můžeš mě naučit jazyk githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43783 /* ~"Můžeš mě naučit způsobům Zerthimonů?"~ */ GOTO 59
  IF ~~ THEN REPLY #43784 /* ~"Už nemám žádné otázky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 41.7 42.5 52.7 55.5 61.4
  SAY #43785 /* ~"Pokud se ten, který s tebou cestuje s tím netrápil, tak já tě to naučím. "Mluva Githzerai se opírá o historii. Všechny události se pro nás staly příběhy. Metafora je mocný nástroj. Inspirace k hrdinství našich lidí a zároveň zastrašovací prostředek pro ničemné choutky. Pokud mluvíme o Torygovu stolu, tak si připomínáme, že Toryg byl proslulý pro svou pohostinnost a dobrou vůli. Pokud mluvíme o Selqantovu srdci, tak si připomínáme smilnou a krutou povahu Selqantovu. Pochopil jsi to?"~ */
  IF ~~ THEN REPLY #43786 /* ~"Ano."~ */ DO ~SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,5000)
IncrementGlobal("Githzerai","GLOBAL",1)
~ JOURNAL #58927 /* ~Zerth Kii'na mě naučila mnoho z jazyku githzerai. Je založený na metaforách, alegoriích a příbězích z historie githzerai.~ */ GOTO 57
  IF ~~ THEN REPLY #43787 /* ~"Ne."~ */ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #43788 /* ~Tvá výuka pokračuje:
Moudrý člověk "napsal knihu Anarcha."
Připomínka "Vilquarova oka" znamená obvinit někoho ze zrady."
O štědrých lidech se říká, že jejich "skříně jsou prázdné."
Běžný pozdrav je "Buď zdráv, bojovníku" a "Zerchaiův rod se ti klaní" a na něj je možné odpovědět "a cestovatel je potěšen."
Tvá mysl je plná mnohých jiných podobných frází.
~ */
  IF ~~ THEN REPLY #43789 /* ~"Mám ještě nějaké další otázky..."~ */ GOTO 55
  IF ~~ THEN REPLY #43790 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43791 /* ~"Pak tedy už ti nemohu sloužit. Nechť si o té záležitosti s tebou promluví ten, s kterým cestuješ."~ */
  IF ~~ THEN REPLY #43792 /* ~"Mám jenom nějaké další otázky..."~ */ GOTO 55
  IF ~~ THEN REPLY #43793 /* ~"Asi to budu muset udělat, protože to, co říkáš ty, nedává smysl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 41.8 42.6 52.8 55.6 61.5
  SAY #43794 /* ~Nasadila tvrdý výraz. "Cestuješ s jedním, jež sám sebe nazývá *zerth* a poučuje mě o mé morálce a navíc po mně žádáš, abych tě naučila našim způsobům? Požádej *jeho* ať tě to naučí, ale ne mě!"~ */
  IF ~~ THEN REPLY #43798 /* ~"Uklidni se a odpověz mi na nějaké další otázky."~ */ GOTO 55
  IF ~~ THEN REPLY #43799 /* ~"Možná. Sbohem."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
Global("Kiina_Speak","GLOBAL",1)
~ THEN BEGIN 60 // from:
  SAY #43800 /* ~"Vrátil ses, abys mě znovu trápil? Co chceš nyní?"~ */
  IF ~~ THEN REPLY #43801 /* ~"Jen jsem se chtěl zeptat na pár otázek..."~ */ GOTO 55
  IF ~  Global("Vristigor","GLOBAL",1)
~ THEN REPLY #43802 /* ~"Skupina githyankiů plánuje během sedmi dní útok na pevnost. Dokonce jsou už na cestě."~ */ GOTO 37
  IF ~~ THEN REPLY #43803 /* ~"Nic. Sbohem."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 61 // from:
  SAY #43804 /* ~Když ses blížil, tak se před tebou zdráhavě uklonila. "*Věz*, že tvá slova nás zachránila před tragédií. Zavázali jsme se přísahou ke Zlaté ruce. Tvůj výběr společníků je nešťastný..." Letmo se podívala na Dak'kona. "Ale dokázal jsi nám své přátelství. Budu ti naslouchat." Podle vzdoru v jejích slovech, ale zřejmě není ochotna s tebou jednat.~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43805 /* ~"Co mi můžeš říct o Dak'konovi?"~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 43
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #43806 /* ~"Co mi můžeš říct o Dak'konovi?"~ */ GOTO 43
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #43807 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyankii?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #43808 /* ~"Můžeš mě naučit rozdílům mezi githzerai a githyanki?"~ */ GOTO 53
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43809 /* ~"Můžeš mě naučit jazyk githzerai?"~ */ GOTO 56
  IF ~~ THEN REPLY #43810 /* ~"Můžeš mě naučit způsobům Zerthimonů?"~ */ GOTO 59
  IF ~~ THEN REPLY #43811 /* ~"Už nemám žádné otázky. Sbohem."~ */ EXIT
END
