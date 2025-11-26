// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFIGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~GFIGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5691 /* ~"Soudruzi! Ke mně! Narušitel! Přímo tady!"~ */
  IF ~~ THEN REPLY #5692 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5693 /* ~"Pane, byl jsi požádán o odchod. Prosím, učiň tak. Teď."~ */
  IF ~~ THEN REPLY #5694 /* ~Hotovo.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 even though they appear after this state */
~  CreatureInArea("AR0500")
~ THEN BEGIN 2 // from:
  SAY #5695 /* ~"Prosím, nádvoří musí být volné, pane. Buď pojď dovnitř, nebo ven."~ */
  IF ~~ THEN REPLY #66282 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #5701 /* ~NULOVÝ MÓD~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #5704 /* ~NULOVÝ MÓD~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #5708 /* ~NULOVÝ MÓD~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #5712 /* ~"Dobrý den, pane. Mohu ti nějak pomoci?"~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5714 /* ~"No, ano. Nevěděl jsem, s kým si o tom promluvit, ale řekl bych, že ty budeš ta pravá osoba. Bedai-Lihn mě požádala, abych zabil Sandoze. Co s tím?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5715 /* ~"Hledám vraha kováře. Neviděl jsi tu noc něco zvláštního?"~ */ GOTO 12
  IF ~~ THEN REPLY #5716 /* ~"Kde je kancelář úředníka?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5717 /* ~"Kde tady najdu nějakého hlavouna?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5718 /* ~"Kde tady najdu nějakého hlavouna?"~ */ GOTO 9
  IF ~~ THEN REPLY #5719 /* ~"Ne, děkuju. Na shledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.4 9.0 10.1 14.1 16.0 19.0 20.0
  SAY #5720 /* ~"Obávám se, že je to tajné, pane. I pro ceněné členy našeho společenstva. Pokud nejsi zasvěcený do projektu, nebo pokud nedostaneš povolení od někoho z vedení, nemůžeme tě pustit dovnitř."~ */
  IF ~~ THEN REPLY #5721 /* ~"Dobrá tedy. Potřeboval bych najít kancelář úředníka?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5722 /* ~"Fajn. Kde tady najdu nějakého hlavouna?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5723 /* ~"Fajn. Kde tady najdu nějakého hlavouna?"~ */ GOTO 9
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5724 /* ~"Hledám vraha kováře. Neviděl jsi tu noc něco zvláštního?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5725 /* ~"Když mluvíme o hlavounech: Bedai-Lihn mě požádala, abych zabil Sandoze. Co s tím?"~ */ GOTO 13
  IF ~~ THEN REPLY #5726 /* ~"Co kdybych to z tebe vymlátil?"~ */ GOTO 11
  IF ~~ THEN REPLY #5727 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.0 9.1 10.0 16.3 19.2 20.2
  SAY #5759 /* ~"Na jih od hlavní pece, pane, tam najdeš kancelář s velkým stolem. To je úředníkova kancelář.'"~ */
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5760 /* ~"Děkuju ti. Kde bych našel hlavouny?"~ */ GOTO 9
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5761 /* ~"Děkuju ti. Kde bych našel hlavouny?"~ */ GOTO 10
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5762 /* ~"Hledám vraha kováře. Neviděl jsi tu noc něco zvláštního?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5763 /* ~"Nevím, komu to říct, ale... Bedai-Lihn mě požádala, ať zabiju Sandoze."~ */ GOTO 13
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5764 /* ~"Co je za těmi hlídanými dveřmi?"~ */ GOTO 7
  IF ~~ THEN REPLY #64516 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.4 7.2 8.0 16.5 19.4 20.4
  SAY #5765 /* ~"Poté, co zemřel Sandoz je Keldor asi jediný, kdo ti může pomoci. Najdeš ho v hlavní zasedací hale - dveřmi na pravé straně hlavní pece. Nemůžeš to minout."~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5766 /* ~"Fajn. Co je za těmi hlídanými dveřmi?"~ */ GOTO 7
  IF ~~ THEN REPLY #5767 /* ~"Můžeš mi říct, kde najdu úředníkovu kancelář?"~ */ GOTO 8
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5768 /* ~"Hledám vraha kováře. Neviděl jsi tu noc něco zvláštního?"~ */ GOTO 12
  IF ~~ THEN REPLY #5769 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3 7.1 8.1 16.4 19.3 20.3
  SAY #5770 /* ~"Mohou ti pomoci buď Sandoz nebo Keldor. Keldor je v hlavní zasedací hale - dveře napravo u hlavní pece. Sandoz je většinou v místnostech v zadní části Haly."~ */
  IF ~~ THEN REPLY #5771 /* ~"Díky. Můžeš mi říct, kde najdu úředníkovu kancelář?"~ */ GOTO 8
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5772 /* ~"Co je za těmi hlídanými dveřmi?"~ */ GOTO 7
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5773 /* ~"Hledám vraha kováře. Neviděl jsi tu noc něco zvláštního?"~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5774 /* ~"Když mluvíme o Sandozovi... Bedai-Lihn mě požádala, abych ho zabil. Co s tím?"~ */ GOTO 13
  IF ~~ THEN REPLY #5775 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.5
  SAY #5776 /* ~"To bych rád viděl. Pane."~ */
  IF ~~ THEN REPLY #5777 /* ~Zaútoč.~ */ DO ~Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5778 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.3 8.2 9.2 10.2 16.2 18.0
  SAY #5779 /* ~"Ne, pane. Na noc jsme z místnosti odešli."~ */
  IF ~~ THEN REPLY #5780 /* ~"Není to zvláštní?"~ */ GOTO 14
  IF ~~ THEN REPLY #5781 /* ~"Čí to byl rozkaz?"~ */ GOTO 15
  IF ~~ THEN REPLY #5782 /* ~"Mám ještě další otázky, které se ke vraždě nevztahují."~ */ GOTO 16
  IF ~~ THEN REPLY #5783 /* ~"Aha. Zajímavé. Děkuju ti za tvůj čas."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0 7.4 8.3 10.3 16.1 19.1 20.1
  SAY #5784 /* ~"CO? Myslíš to vážně? Tak to si jdi promluvit s Kendorem. My se zatím postaráme o inženýrku. Díky a na shledanou."~ */
  IF ~~ THEN REPLY #5785 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 15.1 17.1
  SAY #5786 /* ~"Ano, pane, je to zvláštní. Většinou tam jsme den i noc, abychom zajistili bezpečí projektu."~ */
  IF ~~ THEN REPLY #5787 /* ~"Kdo má autority vás takto propustit?"~ */ GOTO 15
  IF ~~ THEN REPLY #5788 /* ~"Co mi můžeš říct o tom projektu?"~ */ GOTO 7
  IF ~~ THEN REPLY #5789 /* ~"Takže říkáš, že jsi nic neviděl."~ */ GOTO 17
  IF ~~ THEN REPLY #5790 /* ~"Zajímavé. Děkuju ti."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #5791 /* ~"Jediní lidé s takovou autoritou jsou Thildon a Bedai-Lihn. Řekl bych, že rozkaz mohl vydat někdo z faktolů, ale je nepravděpodobné, že by to byl někdo z nich. Nevím, odkud rozkaz přišel a ani nevím, proč by ho někdo chtěl vydat."~ */
  IF ~~ THEN REPLY #5792 /* ~"To mi moc nepomůže, ale pro začátek aspoň něco. Odpověz mi ještě na pár otázek."~ */ GOTO 16
  IF ~~ THEN REPLY #5793 /* ~"A není to zvláštní, že jste dostali takový rozkaz?"~ */ GOTO 14
  IF ~~ THEN REPLY #5794 /* ~"A nic jsi neviděl?"~ */ GOTO 17
  IF ~~ THEN REPLY #5795 /* ~"To je... 'osvětlující.' Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 15.0 17.0 18.1
  SAY #5796 /* ~"Víc otázek?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5797 /* ~"Co je za těmi hlídanými dveřmi?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5798 /* ~"No, ano. Nevěděl jsem, s kým si o tom promluvit, ale řekl bych, že ty budeš ta pravá osoba. Bedai-Lihn mě požádala, abych zabil Sandoze. Co s tím?"~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5799 /* ~"Hledám vraha kováře. Neviděl jsi tu noc něco zvláštního?"~ */ GOTO 12
  IF ~~ THEN REPLY #5800 /* ~"Kde je úředníkova kancelář?"~ */ GOTO 8
  IF ~  !Dead("Sandoz")
~ THEN REPLY #5801 /* ~"Kde bych našel hlavouny?"~ */ GOTO 10
  IF ~  Dead("Sandoz")
~ THEN REPLY #5802 /* ~"Kde bych našel hlavouny?"~ */ GOTO 9
  IF ~~ THEN REPLY #5803 /* ~"Zapomeň na to. Na shledanou."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.2
  SAY #5804 /* ~"Přesně tak, pane. Nic jsem neviděl."~ */
  IF ~~ THEN REPLY #5805 /* ~"Hm. Tak mi odpověz na pár otázek."~ */ GOTO 16
  IF ~~ THEN REPLY #5806 /* ~"Nemyslíš si, že byl ten rozkaz nezvyklý?"~ */ GOTO 14
  IF ~~ THEN REPLY #5807 /* ~"To je... 'osvětlující.' Sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 18 // from:
  SAY #5808 /* ~"Vím, že co se týče té vraždy, máme ti být nápomocni jakýmkoli způsobem, ale musím tě varovat, že moje pomoc moc cenná nebude."~ */
  IF ~~ THEN REPLY #5809 /* ~"Proč ne? Nebyl jsi tady?"~ */ GOTO 12
  IF ~~ THEN REPLY #5810 /* ~"Dobře. No, stejně mám nějaké otázky."~ */ GOTO 16
  IF ~~ THEN REPLY #5811 /* ~"Oh. Tak na to zapomeň."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 19 // from:
  SAY #5812 /* ~Vidíš schopného ale trochu znuděného strážného. "Zdravím, pane. Mohu být nějak nápomocen?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5813 /* ~"Co je za těmi hlídanými dveřmi?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5814 /* ~"No, ano. Nevěděl jsem, s kým si o tom promluvit, ale řekl bych, že ty budeš ta pravá osoba. Bedai-Lihn mě požádala, abych zabil Sandoze. Co s tím?"~ */ GOTO 13
  IF ~~ THEN REPLY #5815 /* ~"Kde je úředníkova kancelář?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5816 /* ~"Kde bych našel hlavouny?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5817 /* ~"Kde bych našel hlavouny?"~ */ GOTO 9
  IF ~~ THEN REPLY #5818 /* ~"Zapomeň na to. Na shledanou."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #5819 /* ~"Zdravím, pane. Mohu ti nějak pomoci?"~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5820 /* ~"Co je za těmi hlídanými dveřmi?"~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5821 /* ~"No, ano. Nevěděl jsem, s kým si o tom promluvit, ale řekl bych, že ty budeš ta pravá osoba. Bedai-Lihn mě požádala, abych zabil Sandoze. Co s tím?"~ */ GOTO 13
  IF ~~ THEN REPLY #5822 /* ~"Kde je úředníkova kancelář?"~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5823 /* ~"Kde bych našel hlavouny?"~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5824 /* ~"Kde bych našel hlavouny?"~ */ GOTO 9
  IF ~~ THEN REPLY #5825 /* ~"Zapomeň na to. Na shledanou."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 21 // from:
  SAY #67221 /* ~Stráž se na tebe rozzlobeně dívá. "Uhni z cesty. Máme tady práci, která nepočká."~ */
  IF ~~ THEN REPLY #67222 /* ~"Sbohem."~ */ EXIT
END
