// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DR_BONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DR_BONE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49641 /* ~Tento muž si píská veselou melodii a hraje si s udržovaným bojovým nožem. Jak ses k němu přiblížil, přestal pískat a zvědavě se na tebe podíval. "Hm? Co chceš?"~ */
  IF ~~ THEN REPLY #49642 /* ~"Měl bych pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #49643 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49644 /* ~Tento muž si stále ještě píská veselou melodii, zatímco si pohrává se svým zlověstně vyhlížejícím nožem. Jak ses k němu přiblížil, přestal pískat a znuděně se na tebe podíval. "Co teď, eh?"~ */
  IF ~~ THEN REPLY #49645 /* ~"Měl bych pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #49646 /* ~"Nic. Sbohem."
~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49647 /* ~"Se jmenuju Ratbone, kámo. Jsem nájemnej zloděj ve službách Sharegraveho, šéfa Sběračů, který můžeš vidět vokolo na tomto náměstí. Platí mi hlavně za výcvik jeho kámošů, aby byli dost tiší a aby uměli bojovat, když zdrhaj z průserů. Což bude asi tak všechno, co ti povím, kámo." Odfrkne a pokrčí rameny.~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49648 /* ~"Nájemný zloděj? Můžeš mě vyučit?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49649 /* ~"Víš, jak se dostat skrz ten průchod plný odpadků severozápadně odsud?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Muž jménem Ratbone mi řekl, že chci-li projít skrz průchod plný odpadků na Hadrníkově náměstí, měl bych se ohledně toho zeptat muže jménem Creeden. Řekl, že Creeden by měl být někde v Úlu, blízko Úřadu pro sledování škůdců a nemocí.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49650 /* ~"Hledám muže jménem Pharod. Víš, kde je?"~ */ GOTO 4
  IF ~~ THEN REPLY #49651 /* ~"Kde je ten chlápek Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49652 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 4.2 5.3 6.2 9.2 11.2
  SAY #49654 /* ~Kývl směrem k velikému polorozpadlému domu vedle něj. "Ale dej si bacha, kámo. Nemá rád návštěvy. Je ke všem podezřívavej. Sharegrave ani není jeho pravý jméno... tak mu jenom já a pár dalších přezdíváme."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49655 /* ~"Říkal jsi, že jsi nájemný zloděj? Můžeš mě vyučit?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49656 /* ~"Víš, jak se dostat skrz ten průchod plný odpadků severozápadně odsud?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Muž jménem Ratbone mi řekl, že chci-li projít skrz průchod plný odpadků na Hadrníkově náměstí, měl bych se ohledně toho zeptat muže jménem Creeden. Řekl, že Creeden by měl být někde v Úlu, blízko Úřadu pro sledování škůdců a nemocí.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49657 /* ~"Hledám muže jménem Pharod. Víš, kde je?"~ */ GOTO 4
  IF ~~ THEN REPLY #49658 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.2 5.2 6.1 9.1 11.1
  SAY #49659 /* ~Ratbone zakroutil hlavou. "Ne, nevím. No, ale prej je někde poblíž. A pár jeho chlápků se tu semtam proplete, když maj namířeno do nějakej skrytej díry, nikdo neví kam. Bych se vsadil, že někam tam nahoru přes ty vyvýšený plošiny, ale nic mi do toho neni." Pokrčil rameny a odplivl si. "Žij a nech žít, říká Ratbone."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49660 /* ~"Říkal jsi, že jsi nájemný zloděj? Můžeš mě vyučit?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49661 /* ~"Víš, jak se dostat skrz ten průchod plný odpadků severozápadně odsud?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Muž jménem Ratbone mi řekl, že chci-li projít skrz průchod plný odpadků na Hadrníkově náměstí, měl bych se ohledně toho zeptat muže jménem Creeden. Řekl, že Creeden by měl být někde v Úlu, blízko Úřadu pro sledování škůdců a nemocí.~ */ GOTO 5
  IF ~~ THEN REPLY #49662 /* ~"Kde je tvůj šéf... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49663 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 4.1 9.0 11.0
  SAY #49664 /* ~"Eh? Né, nevím. Hele... ptej se Creedena, Chytače krys. Někdy to tam de prohrabat a na chvilku podivně zmizí. Creeden je obvykle v Úlu, zrovna před Úřadem pro sledování škůdců a nemocí."~ */
  IF ~~ THEN REPLY #49665 /* ~"Úřad pro...? Kde to je?"~ */ GOTO 6
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49666 /* ~"Říkal jsi, že jsi nájemný zloděj? Můžeš mě vyučit?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49667 /* ~"Hledám muže jménem Pharod. Víš, kde je?"~ */ GOTO 4
  IF ~~ THEN REPLY #49668 /* ~"Kde je tvůj šéf... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49669 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49670 /* ~Ratbone se na tebe zamračil. "Zpět do Úlu, kámo. Najdi si průvodce, když to potřebuješ."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49671 /* ~"Říkal jsi, že jsi nájemný zloděj? Můžeš mě vyučit?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49672 /* ~"Hledám muže jménem Pharod. Víš, kde je?"~ */ GOTO 4
  IF ~~ THEN REPLY #49673 /* ~"Kde je tvůj šéf... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49674 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.0 4.0 5.1 6.0
  SAY #49675 /* ~"Samo, za nějaký prachy. Už byls někdy trénovanej?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #49676 /* ~"Ano, byl."~ */ GOTO 23
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #49677 /* ~"Ne, nebyl."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #49678 /* ~"Tak teda jo. Teď ti dám facku, tak uhni." Najednou švihnul otevřenou rukou k tvé hlavě.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #49679 /* ~Uhni úderu.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #49680 /* ~Uhni úderu.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #49681 /* ~Navzdory tvému úhybnému manévru ti dal Ratbone hlasitý pohlavek. "Promiň, kámo, seš strašně pomalej."~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49682 /* ~"Víš, jak se dostat skrz ten průchod plný odpadků severozápadně odsud?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Muž jménem Ratbone mi řekl, že chci-li projít skrz průchod plný odpadků na Hadrníkově náměstí, měl bych se ohledně toho zeptat muže jménem Creeden. Řekl, že Creeden by měl být někde v Úlu, blízko Úřadu pro sledování škůdců a nemocí.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49683 /* ~"Hledám muže jménem Pharod. Víš, kde je?"~ */ GOTO 4
  IF ~~ THEN REPLY #49684 /* ~"Kde je tvůj šéf... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49685 /* ~"Teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #49686 /* ~Vyhnul ses útoku Ratboneho. "To není špatný, kámo. No a teď ty prachy... padesát chlupů a hned se na to tvé cvičení podívám."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49687 /* ~"To zní dobře. Tady..."~ */ DO ~TakePartyGold(50)
~ GOTO 12
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49688 /* ~"Tolik nemám..."~ */ GOTO 11
  IF ~~ THEN REPLY #49689 /* ~"Ne, díky."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2 24.1 24.2
  SAY #49690 /* ~Ratbone lhostejně pokrčil rameny.~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49691 /* ~"Víš, jak se dostat skrz ten průchod plný odpadků severozápadně odsud?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Muž jménem Ratbone mi řekl, že chci-li projít skrz průchod plný odpadků na Hadrníkově náměstí, měl bych se ohledně toho zeptat muže jménem Creeden. Řekl, že Creeden by měl být někde v Úlu, blízko Úřadu pro sledování škůdců a nemocí.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49692 /* ~"Hledám muže jménem Pharod. Víš, kde je?"~ */ GOTO 4
  IF ~~ THEN REPLY #49693 /* ~"Kde je tvůj šéf... Sharegrave?"~ */ GOTO 3
  IF ~~ THEN REPLY #49694 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #49695 /* ~"A je ti jasný, že musíš přestat dělat cokoliv dělals doteď, jo? Nemůžeš bejt bojovník nebo co já vím ještě a *zároveň* zloděj. Seš s tím smířenej, kámo?"~ */
  IF ~~ THEN REPLY #49696 /* ~"Ano, jsem."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 13
  IF ~~ THEN REPLY #49697 /* ~"Ne, raději ne. Vezmu si své měďáky zpátky... sbohem, Ratbone."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49698 /* ~"Tak dem teda na to. Naučím tě tu šest zlodějskejch mistrovství: kradení se, schovávání ve stínu, páčení zámků, kapsářství, hledání pastí včetně jejich vodstranění a moje oblíbené: vrážení kudel do zad kurážnejch troubů."~ */
  IF ~~ THEN REPLY #49699 /* ~"Do toho..."~ */ GOTO 14
  IF ~~ THEN REPLY #49700 /* ~"Myslím, že základy chápu, Ratbone. Dejme se do výcviku."~ */ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #49701 /* ~"Plížení - skrejvání ve stínu a vopravdu tichej pohyb - je fakt užitečný. Lepší živej lump než mrtvej kámo, co? A nejde jen vo to, aby ses držel z dosahu nebezpečí, ale když *vopravdu* budeš chtít někoho zapíchnout, pak budeš muset mít navrch... ale o tom ti řeknu víc pozdějc. Ovšem zapamatuj si... nemůžeš se začít plížit, když už na tebe někdo čumí."~ */
  IF ~~ THEN REPLY #49702 /* ~"Pokračuj..."~ */ GOTO 15
  IF ~~ THEN REPLY #49703 /* ~"Myslím, že základy chápu, Ratbone. Dejme se do výcviku."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #49704 /* ~"Páčení zámků a chmatáctví je taky dost dobrý... jako doplněk k vlastnímu příjmu a tak. Jenom buď připravenej zdrhat, kdybys byl při kapsářství náhodou zmerčenej a vždycky se porozhlídni po pastích, když máš páčit podezřelej zámek. Když hledáš pasti, prostě pečlivě a pomalu prozkoumej okolí... někdy to chvilku trvá, než je uvidíš."~ */
  IF ~~ THEN REPLY #49705 /* ~"Pokračuj..."~ */ GOTO 16
  IF ~~ THEN REPLY #49706 /* ~"Myslím, že základy chápu, Ratbone. Dejme se do výcviku."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #49707 /* ~"Když *už* najdeš nějakou past, použij svoje dovednosti k odstranění tý prohnilosti. Je to skoro stejný, jak páčení zámku, fakt."~ */
  IF ~~ THEN REPLY #49708 /* ~"Pokračuj..."~ */ GOTO 17
  IF ~~ THEN REPLY #49709 /* ~"Myslím, že základy chápu, Ratbone. Dejme se do výcviku."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49710 /* ~"Poslední věc, kterou tě naučím je *backstab.*" Ratbone vzdychl nadšením. "Když se ti povede proplížit se k nějakému hajzlovi a chceš začít rvačku, prostě toho smrada zezadu napadni. Pak budeš mít sakra lepší šanci trefit ho a když se to povede, zasáhneš silnějc."~ */
  IF ~~ THEN REPLY #49711 /* ~"Dobrá tedy. Dejme se do výcviku."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 13.1 14.1 15.1 16.1 17.0
  SAY #49712 /* ~Ratbone přikývl. "Jasnačka, kámo... nejdřív ale se musíš uvolnit. Seš moc napjatej. Někdy se budeš muset nechat vést svejma instinktama a věřit předtuchám..." A tak začal tvůj výcvik jako zloděje.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #49713 /* ~Nauč se, co můžeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Trénoval jsem na zloděje pod vedením muže jménem Ratbone, kterého jsem potkal na Hadrníkově náměstí.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #49714 /* ~Nauč se, co můžeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Trénoval jsem na zloděje pod vedením muže jménem Ratbone, kterého jsem potkal na Hadrníkově náměstí.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #49715 /* ~Nauč se, co můžeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Trénoval jsem na zloděje pod vedením muže jménem Ratbone, kterého jsem potkal na Hadrníkově náměstí.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #49716 /* ~Nauč se, co můžeš.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Trénoval jsem na zloděje pod vedením muže jménem Ratbone, kterého jsem potkal na Hadrníkově náměstí.~ */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #49718 /* ~Po dlouhé době tréninku na tebe Ratbone uznale kývne. "Musím říct, kámo - nikdy sem se nesetkal s tak rychle se učícím žákem. Skoro bych řek, žes to všechno už musel někdy dělat!"~ */
  IF ~~ THEN REPLY #49719 /* ~"Možná dělal, Ratbone, a prostě zapomněl. Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #49720 /* ~Po dlouhé době tréninku na tebe Ratbone uznale kývne. "Musím říct, kámo - nikdy sem se nesetkal s tak rychle se učícím žákem. Skoro bych řek, žes to všechno už musel někdy dělat!" Jak Ratbone mluví, začínáš si uvědomovat, že jsi to už kdysi *dělal*..., že jsi kdysi míval všechny tyto dovednosti a výcvik je znovu probudil.~ */
  IF ~~ THEN REPLY #49721 /* ~"Možná dělal, Ratbone, a prostě zapomněl. Díky a sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2 18.3
  SAY #49722 /* ~Po dlouhé době tréninku na tebe Ratbone uznale kývne. "Musím říct, kámo - nikdy sem se nesetkal s tak rychle se učícím žákem. Skoro bych řek, žes to všechno už musel někdy dělat!" Jak Ratbone mluví, začínáš si uvědomovat, že jsi to už kdysi *dělal*..., že jsi kdysi míval všechny tyto dovednosti.~ */
  IF ~~ THEN REPLY #49723 /* ~"Možná dělal, Ratbone, a prostě zapomněl. Díky a sbohem."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49724 /* ~Do popředí vyplavala vybledlá vzpomínka na skrývání v potemnělých chodbách a vyhýbání srmtícím pastem, podařilo se ti vzpomenout dost na to, aby ses 'naučil' více, než od Ratbona.~ */
  IF ~~ THEN REPLY #49725 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0
  SAY #49726 /* ~"Nejsem si jistej, co tě víc můžu naučit, když už byls jednou vyučenej, kámo. Ale jestli si třeba zlodějství flákal kvůli jinejmu zaměření - bojování, magii nebo co já vím - moh bych ti to znovu osvěžit.~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49727 /* ~"Chci se stát znovu zlodějem, Ratbone."~ */ GOTO 24
  IF ~~ THEN REPLY #49728 /* ~"Rozumím. Sbohem, Ratbone."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #49729 /* ~Ratbone přikývl. "No a teď ty prachy... padesát chlupů a hned se na to tvé cvičení podívám." ~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49730 /* ~"To zní dobře. Tady..."~ */ DO ~TakePartyGold(50)
~ GOTO 25
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49731 /* ~"Tolik nemám..."~ */ GOTO 11
  IF ~~ THEN REPLY #49732 /* ~"Ne, díky."~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #49733 /* ~"A je ti jasný, že musíš přestat dělat cokoliv si dělal doteď, jo? Nemůžeš bejt bojovník nebo co já vím ještě a *zároveň* zloděj. Seš s tím smířenej, kámo?"~ */
  IF ~~ THEN REPLY #49734 /* ~"Ano, jsem."~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 26
  IF ~~ THEN REPLY #49735 /* ~"Ne, raději ne. Vezmu si své měďáky zpátky... sbohem, Ratbone." ~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #49736 /* ~"Seš rychlej žák, kámo - sakra rychlej." Chvíli si tě zvědavě prohlíží a pak pokrčí rameny. "A je to; seš hotovej."~ */
  IF ~~ THEN REPLY #49737 /* ~"Díky, Ratbone. Sbohem."~ */ EXIT
END
