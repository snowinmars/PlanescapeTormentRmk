// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUSTFER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUSTFER~

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
GlobalLT("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #47616 /* ~"Co? Co chceš? Aby začala téci krev?"~ */
  IF ~~ THEN REPLY #47617 /* ~"Co by se mělo stát?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47618 /* ~"Co se stalo s tvou dobromyslnou povahou?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #47619 /* ~"Brzy. Jen potřebuji, abys mi odpověděl na pár otázek."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #47620 /* ~"Za chvíli. Jdi zas spát."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",1)
~ EXIT
END

IF ~  Global("Current_Lower_Planes","GLOBAL",1)
Global("Justifier_Lower_Planes","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #47621 /* ~"Co? Co chceš? Aby začala téci krev?"~ */
  IF ~~ THEN REPLY #47622 /* ~"Co by se mělo stát?"~ */ GOTO 9
  IF ~~ THEN REPLY #47623 /* ~"Co se stalo s tvou dobromyslnou povahou?"~ */ GOTO 7
  IF ~~ THEN REPLY #47624 /* ~"Brzy. Jen potřebuji, abys mi odpověděl na pár otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #47625 /* ~"Za chvíli. Jdi zas spát."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #47626 /* ~"Co? Co chceš? Aby začala téci krev?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47627 /* ~"Co by se mělo stát?"~ */ GOTO 9
  IF ~~ THEN REPLY #47628 /* ~"Co se stalo s tvou dobromyslnou povahou?"~ */ GOTO 7
  IF ~~ THEN REPLY #47629 /* ~"Brzy. Jen potřebuji, abys mi odpověděl na pár otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #47630 /* ~"Za chvíli. Jdi zas spát."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #47631 /* ~"Co? Co chceš? Aby začala téci krev?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47632 /* ~"Co by se mělo stát?"~ */ GOTO 9
  IF ~~ THEN REPLY #47633 /* ~"Co se stalo s tvou dobromyslnou povahou?"~ */ GOTO 7
  IF ~~ THEN REPLY #47634 /* ~"Brzy. Jen potřebuji, abys mi odpověděl na pár otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #47635 /* ~"Za chvíli. Jdi zas spát."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #47636 /* ~"Co? Co chceš? Aby začala téci krev?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47637 /* ~"Co by se mělo stát?"~ */ GOTO 9
  IF ~~ THEN REPLY #47638 /* ~"Co se stalo s tvou dobromyslnou povahou?"~ */ GOTO 7
  IF ~~ THEN REPLY #47639 /* ~"Brzy. Jen potřebuji, abys mi odpověděl na pár otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #47640 /* ~"Za chvíli. Jdi zas spát."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 5 // from:
  SAY #47641 /* ~"Co? Co chceš? Aby začala téci krev?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47642 /* ~"Co by se mělo stát?"~ */ GOTO 9
  IF ~~ THEN REPLY #47643 /* ~"Co se stalo s tvou dobromyslnou povahou?"~ */ GOTO 7
  IF ~~ THEN REPLY #47644 /* ~"Brzy. Jen potřebuji, abys mi odpověděl na pár otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #47645 /* ~"Za chvíli. Jdi zas spát."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 6 // from:
  SAY #47646 /* ~"Co? Co chceš? Aby začala téci krev?"~ */
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47648 /* ~"Co by se mělo stát?"~ */ GOTO 9
  IF ~~ THEN REPLY #47649 /* ~"Co se stalo s tvou dobromyslnou povahou?"~ */ GOTO 7
  IF ~~ THEN REPLY #47650 /* ~"Brzy. Jen potřebuji, abys mi odpověděl na pár otázek."~ */ GOTO 8
  IF ~~ THEN REPLY #47651 /* ~"Za chvíli. Jdi zas spát."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1 1.1 2.1 3.1 4.1 5.1 6.1
  SAY #47652 /* ~"To bylo dřív. Teď jsem jiný. Jsem znechucený všemi těmi prachy se dávícími a zženštilými skrblíky. Pojďme něco zabít, jo?"~ */
  IF ~~ THEN REPLY #47653 /* ~"Chci vědět, proč ses tak změnil."~ */ GOTO 9
  IF ~~ THEN REPLY #47654 /* ~"Nejdřív mi odpověz na pár věcí."~ */ GOTO 8
  IF ~~ THEN REPLY #47655 /* ~"Zapomeň na to. Promluvíme si později."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 2.2 3.2 4.2 5.2 6.2 7.1 9.1 13.0 14.0 15.0 16.0 17.1 18.0 19.2 20.0 21.1 22.0 41.2
  SAY #47656 /* ~"Nejdřív si popovídáme a pak někoho zabijeme."~ */
  IF ~~ THEN REPLY #47657 /* ~"Co se ti stalo?"~ */ GOTO 9
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47658 /* ~"Co mi můžeš říct o Mortem?"~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47659 /* ~"Co mi můžeš říct o Annah?"~ */ GOTO 13
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47660 /* ~"Co mi můžeš říct o Dak'konovi?"~ */ GOTO 14
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47661 /* ~"Co mi můžeš říct o Fall-from-Grace?"~ */ GOTO 15
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47662 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 16
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47663 /* ~"Co mi můžeš říct o Ignusovi?"~ */ GOTO 16
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47664 /* ~"Co mi můžeš říct o Nordomovi?"~ */ GOTO 16
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47665 /* ~"Co mi o sobě můžeš říct?"~ */ GOTO 17
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47666 /* ~"Co mi o sobě můžeš říct?"~ */ GOTO 18
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47667 /* ~"Co mi o sobě můžeš říct?"~ */ GOTO 19
  IF ~~ THEN REPLY #47668 /* ~"Zapomeň. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0
  SAY #47669 /* ~"Řekněme, že zdejší vzduch živí nenávist, víme? *Nenávidím* Nižší sféry a ony nenávidí mě."~ */
  IF ~~ THEN REPLY #47670 /* ~"Proč?"~ */ GOTO 10
  IF ~~ THEN REPLY #47671 /* ~"Tak mi odpověz na pár dotazů."~ */ GOTO 8
  IF ~~ THEN REPLY #47672 /* ~"Dost dobré. Asi tě teď odstraním."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47673 /* ~"Protože mě zkazily a už se to nikdy nespraví, kámo! A sklapni, pojďme zabíjet!"~ */
  IF ~~ THEN REPLY #47674 /* ~"Nejdřív mi odpověz na otázku..."~ */ GOTO 11
  IF ~~ THEN REPLY #47675 /* ~"Už si nemáme co říct."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #47676 /* ~Zbraň se pohroužila do mrzutého ticha.~ */
  IF ~~ THEN DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1
  SAY #47677 /* ~"Je to zlej, křivej parchant a nevěřil bych mu ani pozdravení... dybych měl ruce. Měl bys mít rozum a těm jeho radám věnovat *správnou* pozornost. Jen ti radím, nevěř mu - tydle týpky už znám. Vobrátíš se zády a máš v nich kudlu."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 488
END

IF ~~ THEN BEGIN 13 // from: 8.2
  SAY #47678 /* ~"Nic moc o ní nevím. V žilách jí koluje krev fienda. A fiendům se nedá věřit. Říkám ti, co nejdřív se jí zbav. Kromě toho, vždyť je ještě děcko. Můžeš si najít někoho trochu víc... zkušenějšího... víš, co myslím."~ */
  IF ~~ THEN REPLY #47679 /* ~"Díky za informace. Mám ještě pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #47680 /* ~"Díky."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3
  SAY #47681 /* ~"Ten? Zarytý, nudný pedant? Stejně zábavný jako soulož s modronem. To je tak všechno, co k tomu můžu říct."~ */
  IF ~~ THEN REPLY #47682 /* ~"Díky za informace. Mám ještě pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #47683 /* ~"Díky."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4
  SAY #47684 /* ~"Jasně, proč jí nevěřit. Výbornej nápad - věřit tanar'ri. Přece proto, že se narodili zlí, ještě nemusej bejt špatní, že? Mimochodem to, co slyšíš, je ironie. Ale jinak dobrý."~ */
  IF ~~ THEN REPLY #47685 /* ~"Díky za informace. Mám ještě pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #47686 /* ~"Díky."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 8.6 8.7
  SAY #47687 /* ~"Muč mě, ale nikdy předtím sem je neviděl."~ */
  IF ~~ THEN REPLY #47688 /* ~"Díky za informace. Mám ještě pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #47689 /* ~"Díky."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.8
  SAY #47690 /* ~"Já jsem Pan Ospravedlňovač. A říkej 'Pan', když to jméno vyslovuješ. 'Pan Ospravedlňovač.' A ne 'Ospravedlňovač.' Byl jsem ukován s požehnáním Hora z Arcadie. Pověz, vypadáš povědomě... Říkají mi tak, protože umím najít omluvu úplně na všechno. A jako bonus si po pár rozhovorech se mnou většina lidí přizná, že máš právo na to, co říkáš."~ */
  IF ~~ THEN REPLY #47691 /* ~"Jak povědomě?"~ */ GOTO 20
  IF ~~ THEN REPLY #47692 /* ~"Chápu. Mám pár dalších otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #47693 /* ~"Správně. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.9
  SAY #47694 /* ~"Vždy jsem Pan Ospravedlňovač... víš, pořád mi připadáš, že tě znám a to mě dohání k šílenství... je to něco s tanar'ri a... ech, nevadí. Jsem tvůj nejlepší přítel, nebo nejhorší noční můra. Záleží na tom, kterýho konce se zeptáš, kámo. Jmenuju se Pan Ospravedlňovač. PAN Ospravedlňovač. Nezapomeň na to."~ */
  IF ~~ THEN REPLY #47695 /* ~"Ještě pořád si nemůžeš vybavit, odkud mě znáš? No nic. Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #47696 /* ~"Ještě pořád si nevzpomínáš, he? Tak sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 8.10
  SAY #47697 /* ~"Už jsem si vzpomněl, co jsi zač. Myslel sis, že mě nachytáš. Ta spousta jizev mě zmátla, ale už jsem si vybavil tvůj obličej. Víš ty co? Když jsi tenkrát zemřel v souboji s vrocky, tak mě pokřivili. Je to tvoje vina. Ale víš, v tvých stopách teče krev. Kdo by se k tobě přilepil, docela určitě se namočí."~ */
  IF ~~ THEN REPLY #47698 /* ~"Vrockové? Co jsou zač?"~ */ JOURNAL #47796 /* ~Objevil jsem Pana Ospravedlňovače, mluvící palcát, který jsem používal. Nepamatuje si z mé minulosti mnoho, ale pravděpodobně jsme něco hledali v Abyssu a zemřeli.~ */ GOTO 21
  IF ~~ THEN REPLY #47699 /* ~"Pokřivili? Jak?"~ */ JOURNAL #47796 /* ~Objevil jsem Pana Ospravedlňovače, mluvící palcát, který jsem používal. Nepamatuje si z mé minulosti mnoho, ale pravděpodobně jsme něco hledali v Abyssu a zemřeli.~ */ GOTO 22
  IF ~~ THEN REPLY #47700 /* ~"Zapomeň na to. Měl jsem další otázky..."~ */ JOURNAL #47796 /* ~Objevil jsem Pana Ospravedlňovače, mluvící palcát, který jsem používal. Nepamatuje si z mé minulosti mnoho, ale pravděpodobně jsme něco hledali v Abyssu a zemřeli.~ */ GOTO 8
  IF ~~ THEN REPLY #47701 /* ~"Zapomeň na to."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~Objevil jsem Pana Ospravedlňovače, mluvící palcát, který jsem používal. Nepamatuje si z mé minulosti mnoho, ale pravděpodobně jsme něco hledali v Abyssu a zemřeli.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0
  SAY #47702 /* ~"Nevím. Vzpomenu si. Netrap mě a vybavím si to."~ */
  IF ~~ THEN REPLY #47703 /* ~"Skvěle. Měl jsem další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #47704 /* ~"Skvěle. Užij si fantazírování. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0
  SAY #47705 /* ~"Kdo jsou vrockové? Vůbec na nic si nevzpomínáš, co? Jsou to supí fiendi tanar'ri. Myslel bych, že po tom, co ti jedno z jejich kopí otevřelo hrudník, si takový malý detail budeš pamatovat. Bojovali jsme s nimi, zabili jsme je, jenže jeden z nich měl štěstí a zapsal tě do knihy mrtvých... a pak mě sebrali a pokřivili."~ */
  IF ~~ THEN REPLY #47706 /* ~"Jak tě pokřivili?"~ */ GOTO 22
  IF ~~ THEN REPLY #47707 /* ~"Skvěle. Měl jsem další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #47708 /* ~"Vážně špatné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1 21.0
  SAY #47709 /* ~Hlas mu zní téměř zoufale, jak se snaží si nevzpomínat. "Nechtěj to vědět. Jejich mysl je cizí a ryze zlá. Pokoušet se přiblížit něčemu takovýmu..." Chvěje se v tvém sevření. "Není to nic, nač by sis chtěl pamatovat. Řeknu jenom tolik - ve způsobech mučení jsou velmi vynalézaví."~ */
  IF ~~ THEN REPLY #47710 /* ~"Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #47711 /* ~"Vsadil bych se. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier_Lower_Planes","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #47712 /* ~Pan Ospravedlňovač vypadá skoro zmateně. "V Nižších sférách jsem se málem zbláznil, šéfe. Lituju. Nebudu se o to pokoušet znova."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47713 /* ~"Co se stalo?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47714 /* ~"Co se stalo?"~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #47715 /* ~"Všechno jasné. Jen mi odpověz na pár věcí."~ */ DO ~SetGlobal("Justifier_Lower_Planes","GLOBAL",2)
~ GOTO 31
  IF ~~ THEN REPLY #47716 /* ~"Všechno jasné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
SetGlobal("Justifier_Lower_Planes","GLOBAL",0)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 24 // from:
  SAY #47717 /* ~Pan Ospravedlňovač vypadá skoro zmateně. "V Nižších sférách jsem se málem zbláznil, šéfe. Lituju. Nebudu se o to pokoušet znova."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47718 /* ~"Co se stalo?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47719 /* ~"Co se stalo?"~ */ GOTO 30
  IF ~~ THEN REPLY #47720 /* ~"Všechno jasné. Jen mi odpověz na pár věcí."~ */ GOTO 31
  IF ~~ THEN REPLY #47721 /* ~"Všechno jasné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #47722 /* ~Pan Ospravedlňovač vypadá skoro zmateně. "V Nižších sférách jsem se málem zbláznil, šéfe. Lituju. Nebudu se o to pokoušet znova."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47723 /* ~"Co se stalo?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47724 /* ~"Co se stalo?"~ */ GOTO 30
  IF ~~ THEN REPLY #47725 /* ~"Všechno jasné. Jen mi odpověz na pár věcí."~ */ GOTO 31
  IF ~~ THEN REPLY #47726 /* ~"Všechno jasné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #47727 /* ~Pan Ospravedlňovač vypadá skoro zmateně. "V Nižších sférách jsem se málem zbláznil, šéfe. Lituju. Nebudu se o to pokoušet znova."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47729 /* ~"Co se stalo?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47730 /* ~"Co se stalo?"~ */ GOTO 30
  IF ~~ THEN REPLY #47731 /* ~"Všechno jasné. Jen mi odpověz na pár věcí."~ */ GOTO 31
  IF ~~ THEN REPLY #47732 /* ~"Všechno jasné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #47728 /* ~Pan Ospravedlňovač vypadá skoro zmateně. "V Nižších sférách jsem se málem zbláznil, šéfe. Lituju. Nebudu se o to pokoušet znova."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47733 /* ~"Co se stalo?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47734 /* ~"Co se stalo?"~ */ GOTO 30
  IF ~~ THEN REPLY #47735 /* ~"Všechno jasné. Jen mi odpověz na pár věcí."~ */ GOTO 31
  IF ~~ THEN REPLY #47736 /* ~"Všechno jasné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 28 // from:
  SAY #47737 /* ~Pan Ospravedlňovač vypadá skoro zmateně. "V Nižších sférách jsem se málem zbláznil, šéfe. Lituju. Nebudu se o to pokoušet znova."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47738 /* ~"Co se stalo?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47739 /* ~"Co se stalo?"~ */ GOTO 30
  IF ~~ THEN REPLY #47740 /* ~"Všechno jasné. Jen mi odpověz na pár věcí."~ */ GOTO 31
  IF ~~ THEN REPLY #47741 /* ~"Všechno jasné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Regret","GLOBAL",10)
~ THEN BEGIN 29 // from:
  SAY #47742 /* ~Pan Ospravedlňovač vypadá skoro zmateně. "V Nižších sférách jsem se málem zbláznil, šéfe. Lituju. Nebudu se o to pokoušet znova."~ */
  IF ~  GlobalGT("Justifier","GLOBAL",2)
~ THEN REPLY #47743 /* ~"Co se stalo?"~ */ GOTO 32
  IF ~  GlobalLT("Justifier","GLOBAL",3)
~ THEN REPLY #47744 /* ~"Co se stalo?"~ */ GOTO 30
  IF ~~ THEN REPLY #47745 /* ~"Všechno jasné. Jen mi odpověz na pár věcí."~ */ GOTO 31
  IF ~~ THEN REPLY #47746 /* ~"Všechno jasné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #47747 /* ~"Kdysi dávno, byl jsem s majitelem, jsme šli do Abyssu, abychom něco našli. Už jsem zapomněl, co to bylo. Mysleli jsme si, že si dokážem poradit se vším, co přijde. Mýlili jsme se. Můj majitel byl zabit a oni mě vzali a ... *pokřivili* mě. Občas, když se mi vybaví Nižší sféry, mám ještě mizerný pocit."~ */
  IF ~~ THEN REPLY #47748 /* ~"Vážně špatné. Měl jsem pro tebe pár otázek..."~ */ GOTO 31
  IF ~~ THEN REPLY #47749 /* ~"Vážně špatné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 23.2 24.2 25.2 26.2 27.2 28.2 29.2 30.0 32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.1 40.0 42.0 43.1 44.0 45.0 46.0
  SAY #47750 /* ~"Cokoli chceš vědět, šéfe."~ */
  IF ~  GlobalGT("Justifier_Lower_Planes","GLOBAL",0)
~ THEN REPLY #47751 /* ~"Co se ti stalo?"~ */ GOTO 33
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #47752 /* ~"Co mi můžeš říct o Mortem?"~ */ GOTO 34
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #47753 /* ~"Co mi můžeš říct o Annah?"~ */ GOTO 35
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #47754 /* ~"Co mi můžeš říct o Dak'konovi?"~ */ GOTO 36
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #47755 /* ~"Co mi můžeš říct o Fall-from-Grace?"~ */ GOTO 37
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #47756 /* ~"Co mi můžeš říct o Vhailorovi?"~ */ GOTO 38
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #47757 /* ~"Co mi můžeš říct o Ignusovi?"~ */ GOTO 38
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #47758 /* ~"Co mi můžeš říct o Nordomovi?"~ */ GOTO 38
  IF ~  Global("Justifier","GLOBAL",0)
~ THEN REPLY #47759 /* ~"Co mi o sobě můžeš říct?"~ */ GOTO 39
  IF ~  Global("Justifier","GLOBAL",1)
~ THEN REPLY #47760 /* ~"Co mi o sobě můžeš říct?"~ */ GOTO 40
  IF ~  GlobalGT("Justifier","GLOBAL",1)
~ THEN REPLY #47761 /* ~"Co mi o sobě můžeš říct?"~ */ GOTO 41
  IF ~~ THEN REPLY #47762 /* ~"Zapomeň na to. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.0 24.0 25.0 26.0 27.0 28.0 29.0
  SAY #47763 /* ~"Kdysi dávno jsi byl mým majitelem. Šli jsme pro cosi do Abyssu. Zapomněl jsem, co to bylo. Mysleli jsme si, že si dokážem poradit se vším, co přijde. Mýlili jsme se. Vběhli jsme do rány vrockům - supím fiendům tanar'ri - a i když jsme pobili celou jejich bandu, poslední z nich měl štěstí a roztrhal ti srdce na kusy svým hrozným kopím. Vzali mě a ... *pokřivili* mě. Občas, když se mi vybaví Nižší sféry, mám ještě mizerný pocit."~ */
  IF ~~ THEN REPLY #47764 /* ~"To je strašné. Mám pro tebe nějaké otázky..."~ */ GOTO 31
  IF ~~ THEN REPLY #47765 /* ~"To je opravdu hrozné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.0
  SAY #47766 /* ~Zdá se trochu na rozpacích. "Ztratil jsem nad tou částí kontrolu, když jsem byl, ztracen v Abyssu, pokřiven tanar'rii. Většinou si to hlídám. Omlouvám se, šéfe."~ */
  IF ~~ THEN REPLY #47767 /* ~"V pořádku. Odpověz mi na další otázky..."~ */ GOTO 31
  IF ~~ THEN REPLY #47768 /* ~"V pořádku. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #47769 /* ~Máš pocit, že se Oko na palcátu zakmitalo sem a tam. Zašeptal: "Mám z něj špatný pocit, šéfe, ale neumím to vyjádřit slovy. Lebka vypadá povědomě a vážou se k ní mraky špatných vzpomínek. Jenže nevím proč, protože si nic nepamatuju..."~ */
  IF ~~ THEN REPLY #47770 /* ~"Snad jindy. Mám další otázky..."~ */ GOTO 31
  IF ~~ THEN REPLY #47771 /* ~"Snad jindy. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.2
  SAY #47772 /* ~"Upřímný názor? No, je trochu divoká... ale pro tebe ta pravá. Skrývá to, ale... Myslím, že jí můžeš věřit, dokud ji sám nezradíš."~ */
  IF ~~ THEN REPLY #47773 /* ~"Díky. Mám další otázku..."~ */ GOTO 31
  IF ~~ THEN REPLY #47774 /* ~"Díky. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.3
  SAY #47775 /* ~"Má dobrý důvod, aby s tebou cestoval, šéfe, ale nevím, jestli je to v tvém nejlepším zájmu. Znáš tyhle githzerai - drží pospolu a když se přidají k někomu jinému, mají k tomu důvod. Nespustím z něj Oko."~ */
  IF ~~ THEN REPLY #47776 /* ~"Díky. Mám pár dalších otázek..."~ */ GOTO 31
  IF ~~ THEN REPLY #47777 /* ~"Díky za tvůj názor. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.4
  SAY #47778 /* ~Palcát začal o překot šeptat. "Šéfe! Co to vyvádíš s tanar'ri? Dvě slova. Tanar'ri. Sukuba. Je zlá. Její krev má kořeny ve zlu. Nedá se jí věřit. Může se dělat milou, ale to vůbec nic neznamená. Možná ti řekla, že se změnila, ale to může být jen další lež. Ona a ostatní jejího druhu spletají sítě z podvodů. Vždycky. Mají to v povaze."~ */
  IF ~~ THEN REPLY #47779 /* ~"Díky za tvůj názor. Odpověz mi na další otázky..."~ */ GOTO 31
  IF ~~ THEN REPLY #47780 /* ~"Díky za tvůj názor. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.5 31.6 31.7
  SAY #47781 /* ~"Vlastně... no, vlastně nic. Tyhle lidi neznám, šéfe."~ */
  IF ~~ THEN REPLY #47782 /* ~"V pořádku. Odpověz mi na pár otázek..."~ */ GOTO 31
  IF ~~ THEN REPLY #47783 /* ~"V pořádku. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.8
  SAY #47784 /* ~"Já jsem Pan Ospravedlňovač. Říkají mi tak, protože umím najít omluvu úplně pro všechno. A jako bonus si po pár rozhovorech se mnou většina lidí přizná, že máš právo na to, co říkáš. Byl jsem ukován kovářem z dílny samotného Hora v Arcadii, v pláních Heliopolis. Pověz... zdáš se mi povědomý..."~ */
  IF ~~ THEN REPLY #47785 /* ~"Jak povědomý?"~ */ GOTO 42
  IF ~~ THEN REPLY #47786 /* ~"Chápu. Měl jsem pár dalších otázek..."~ */ GOTO 31
  IF ~~ THEN REPLY #47787 /* ~"Správně. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 31.9
  SAY #47788 /* ~"Co je tady složitého? Jsem zbraň dobra a světla a jsem stvořen k boji. víš, pořád mi připadá, že tě znám a to mě dohání k šílenství... je to něco s tanar'ri a... ech, nevadí. Jsem tvůj nejlepší přítel, nebo nejhorší noční můra. Záleží na tom, kterýho konce se zeptáš." Hlasitě se směje vlastnímu vtipu.~ */
  IF ~~ THEN REPLY #47789 /* ~"Ještě pořád si nemůžeš vybavit, odkud mě znáš? No nic. Mám další otázky..."~ */ GOTO 31
  IF ~~ THEN REPLY #47790 /* ~"Ještě pořád si nevzpomínáš, he? Tak sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 31.10
  SAY #47791 /* ~"Už jsem si vzpomněl, kdo jsi! Vlastnil jsi mě, kdysi dávno. Mám z těch časů trochu zastřené vzpomínky, ale... jo. Jsi to ty. Mátly mě všechny ty jizvy. Teď vypadáš mnohem hůř. Musel jsi to mít těžké - byl jsem zvyklý ti radit, když ses po smrti probudil, ale když jsi zemřel v Abyssu po boji s vrocky, sebrali mě  sebou a nechali tě hnít. Jsem rád, že jsme se zase našli."~ */
  IF ~~ THEN REPLY #47792 /* ~"Kdo jsou vrockové?"~ */ JOURNAL #47796 /* ~Objevil jsem Pana Ospravedlňovače, mluvící palcát, který jsem používal. Nepamatuje si z mé minulosti mnoho, ale pravděpodobně jsme něco hledali v Abyssu a zemřeli.~ */ GOTO 43
  IF ~  False()
~ THEN REPLY #47793 /* ~"Pokřivili? Jak?"~ */ JOURNAL #47796 /* ~Objevil jsem Pana Ospravedlňovače, mluvící palcát, který jsem používal. Nepamatuje si z mé minulosti mnoho, ale pravděpodobně jsme něco hledali v Abyssu a zemřeli.~ */ GOTO 44
  IF ~~ THEN REPLY #47794 /* ~"Zapomeň na to. Mám další otázky..."~ */ JOURNAL #47796 /* ~Objevil jsem Pana Ospravedlňovače, mluvící palcát, který jsem používal. Nepamatuje si z mé minulosti mnoho, ale pravděpodobně jsme něco hledali v Abyssu a zemřeli.~ */ GOTO 8
  IF ~~ THEN REPLY #47795 /* ~"Zapomeň na to."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ JOURNAL #47796 /* ~Objevil jsem Pana Ospravedlňovače, mluvící palcát, který jsem používal. Nepamatuje si z mé minulosti mnoho, ale pravděpodobně jsme něco hledali v Abyssu a zemřeli.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.0
  SAY #47797 /* ~"Je mi líto, ale opravdu si teď nemůžu nic vybavit... dej mi trochu víc času a jsem si jistý, že si vzpomenu."~ */
  IF ~~ THEN REPLY #47798 /* ~"Skvěle. Měl jsem nějaké další otázky..."~ */ GOTO 31
  IF ~~ THEN REPLY #47799 /* ~"Skvěle. Jen si přemýšlej. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #47800 /* ~"Jsou to supí fiendi tanar'ri. Bojoval jsi statečně, ale byli v přesile. Se štěstím prošli tvou obranou, vytrhli ti zubatým kopím srdce z hrudi a nechali tě vykrvácet. A pak mě sebrali a pokřivili... bylo to příšerné..."~ */
  IF ~~ THEN REPLY #47801 /* ~"Jak tě pokřivili?"~ */ GOTO 44
  IF ~~ THEN REPLY #47802 /* ~"Mám další otázky..."~ */ GOTO 31
  IF ~~ THEN REPLY #47803 /* ~"Moc špatné. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 41.1 43.0
  SAY #47804 /* ~Hlas mu zní téměř zoufale, jak se snaží si nevzpomínat. "Nechtěj to vědět. Jejich mysl je cizí a ryze zlá. Pokoušet se přiblížit něčemu takovýmu..." Chvěje se v tvém sevření. "Není to nic, nač by sis chtěl pamatovat. Řeknu jenom tolik - ve způsobech mučení jsou velmi vynalézaví."~ */
  IF ~~ THEN REPLY #47805 /* ~"Mám další otázky..."~ */ GOTO 31
  IF ~~ THEN REPLY #47806 /* ~"Vsadil bych se. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END

IF ~  Global("Justifier","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #47808 /* ~Zbraň má oko - přesněji řečeno Oko - vyryté do tvrdého kovu palcátu. Když na tebe mluví, modře poblikává, pronášeje k tobě své pocity a myšlenky. "Zdravíčko. Ty musíš být můj nový pán."~ */
  IF ~~ THEN REPLY #47809 /* ~"Správný postřeh. Chtěl bych se tě na něco zeptat..."~ */ GOTO 31
END

IF ~  GlobalGT("Justifier","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #47810 /* ~"Zdravím opět. Co bys ode mě potřeboval?"~ */
  IF ~~ THEN REPLY #47811 /* ~"Jen jsem chtěl odpověď na pár otázek..."~ */ GOTO 31
  IF ~~ THEN REPLY #47812 /* ~"Nic. Sbohem."~ */ DO ~IncrementGlobal("Justifier","GLOBAL",1)
~ EXIT
END
