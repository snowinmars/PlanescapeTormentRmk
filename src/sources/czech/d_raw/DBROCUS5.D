// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3206 /* ~Mužovo obočí je hluboce svraštěné, jak se soustředí. Když ses přiblížil, podíval se na tebe. "Ano?"~ */
  IF ~~ THEN REPLY #3207 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #40689 /* ~"Nic, jenom procházím kolem. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40690 /* ~Tenhle vážně vyhlížející muž se stále pokouší na něco přijít. Když ses k němu přiblížil, zarazil rozjetý proud svých myšlenek a podíval se na tebe. "Ano?"~ */
  IF ~~ THEN REPLY #40691 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #40692 /* ~"Nic, jenom procházím kolem. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.3 4.1 5.0 6.2 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0
  SAY #40693 /* ~Vypadá trochu rozrušeně, ale nic neříká.~ */
  IF ~~ THEN REPLY #40694 /* ~"Vypadá to, že máš problémy..."~ */ GOTO 3
  IF ~~ THEN REPLY #40695 /* ~"Co tady děláš?"~ */ GOTO 6
  IF ~~ THEN REPLY #40696 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40697 /* ~"Co mi můžeš říct o mlčící prostitutce?"~ */ GOTO 9
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40698 /* ~"Slyšel jsem, že je Kesai-Serris Ravelina dcera. Je to pravda?"~ */ GOTO 10
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40699 /* ~"Pokouším se najít Vivianinu voňavku... nevíš, kde by mohla být?"~ */ GOTO 11
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40700 /* ~"Pokouším se najít Marissin Karmínový závoj... Nevíš, kde by mohl být?"~ */ GOTO 12
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40701 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 13
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40702 /* ~"Už jsem mluvil s devíti prostitutkami... nevíš kdo nebo kde je desátá studentka?"~ */ GOTO 14
  IF ~~ THEN REPLY #40703 /* ~"No vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40704 /* ~Muž se zamračil. "Ne, nemám problémy... Jenom se pokouším přijít na způsob, jak vyhrát nad Dolorou.~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40705 /* ~"Kým?"~ */ GOTO 4
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #40706 /* ~"Ano, je to dobrý oponent."~ */ GOTO 8
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40707 /* ~"Tak si s ní musím zahrát."~ */ GOTO 7
  IF ~~ THEN REPLY #40708 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40709 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.0
  SAY #40710 /* ~"Dolora je jedna z místních prostitutek. Odměřená, vzdělaná a inteligentní... její mysl je ostrá jako břitva. Pokud máš rád výzvu, zkus ji porazit ve hře strategie."~ */
  IF ~~ THEN REPLY #40711 /* ~"Takže jsi ji nikdy neporazil?"~ */ GOTO 5
  IF ~~ THEN REPLY #40712 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40713 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40714 /* ~Zamračeně zavrtěl hlavou. "Hrával jsem proti Vivian, jedné z místních žen. Myslel jsem si o sobě, že jsem docela schopný... ale pak jsem potkal Doloru. Mám silné podezření, že mě Vivian nechávala vyhrát, ale nikdy jsem se jí nezeptal."~ */
  IF ~~ THEN REPLY #40715 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40716 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #40717 /* ~"Odpočívám po další prohře z rukou Dolory. Ale myslím si, že jsem ji tentokrát málem porazil, takže se pokouším vymyslet, co bych měl udělat, abych příště vyhrál."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40718 /* ~"Kdo je Dolora?"~ */ GOTO 4
  IF ~  Global("Dolora","GLOBAL",1)
Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40719 /* ~"Musím si s ní taky zahrát."~ */ GOTO 7
  IF ~~ THEN REPLY #40720 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40721 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.1
  SAY #40722 /* ~Přikývl. "Je tady ještě něco, nebo...?"~ */
  IF ~~ THEN REPLY #40723 /* ~"Ano; Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40724 /* ~"Ne, to je vše. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1
  SAY #40725 /* ~"Hele, mám tady pár věcí, nad kterými musím přemýšlet. Takže kdyby ti to nevadilo..."~ */
  IF ~~ THEN REPLY #40726 /* ~"Počkej - chci se tě ještě na něco zeptat..."~ */ GOTO 2
  IF ~~ THEN REPLY #40727 /* ~"Tak to se omlouvám, že jsem tě vyrušil. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #40728 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #40729 /* ~"Nic, vážně."~ */
  IF ~~ THEN REPLY #40730 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40731 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #40732 /* ~"Ravel říkáš? Nikdy jsem se jí na to neptal. Možná bys to měl zkusit ty."~ */
  IF ~~ THEN REPLY #40733 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~  Global("Kesai_Ask","AR0605",0)
~ THEN REPLY #40734 /* ~"Tak tedy sbohem."~ */ EXIT
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #40735 /* ~"Možná to udělám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.5
  SAY #40736 /* ~"Ne. Už jsem s Vivian nějakou dobu nemluvil, vůbec jsem nevěděl, že ji ztratila. To je škoda - opravdu ji vždy obklopovala ta nejúžasnější erotizující vůně..."~ */
  IF ~~ THEN REPLY #40737 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40738 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6
  SAY #40739 /* ~"Ne. Ještě něco."~ */
  IF ~~ THEN REPLY #40740 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40741 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.7
  SAY #40742 /* ~"Ne." Muž se usmál, ale pak si povzdechl. "No, ano. Je to noční čarodějnice, uvržená do jednoho z bludišť Paní Bolesti. Straší se s ní děti... ale vsadil bych se, že to není zrovna informace, po které pátráš."~ */
  IF ~~ THEN REPLY #40743 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40744 /* ~"Stejně díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.8
  SAY #40745 /* ~Zavrtěl hlavou. "Ne. Pokud vím, je jich tady jenom devět."~ */
  IF ~~ THEN REPLY #40746 /* ~"Mám ještě další otázku..."~ */ GOTO 2
  IF ~~ THEN REPLY #40747 /* ~"Tak tedy sbohem."~ */ EXIT
END
