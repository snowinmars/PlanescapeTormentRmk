// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1536 /* ~Vidíš jednoho ze strážců Curstu. Je zakrvácený a těžce oddychuje. "Nemám čas se vybavovat. Máš volné ruce, můžeš nám pomoci s ... obranou." Mává na tebe rukou propouštěje tě.~ */
  IF ~~ THEN REPLY #58830 /* ~"Co se stalo?"~ */ GOTO 1
  IF ~~ THEN REPLY #58832 /* ~"Velmi dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1538 /* ~"Stalo se to, že nějakej zatracenej hlupák něco osvobodil a my náhle musíme v Carceri bojovat o svoje životy. A teď odtud vypadni a dělej něco užitečného."~ */
  IF ~~ THEN REPLY #58831 /* ~"Tak sbohem."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1539 /* ~"Neříkal jsem ti, aby sis hleděl svých záležitostí? Myslel jsme to vážně! Vypadni!"~ */
  IF ~~ THEN REPLY #58833 /* ~"Fajn, fajn."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 3 // from:
  SAY #1540 /* ~"Co sakra, u Devíti pekel, děláš tady?"~ */
  IF ~~ THEN REPLY #58834 /* ~"Jenom se tak procházím kolem."~ */ GOTO 5
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58835 /* ~"Co mi můžeš říct o tom brnění?"~ */ GOTO 6
  IF ~~ THEN REPLY #58836 /* ~"Hledám devu."~ */ GOTO 7
  IF ~~ THEN REPLY #58837 /* ~"Nic. Sbohem."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #1541 /* ~"Zastav se hned!" Strážce se do tebe pustil!~ */
  IF ~~ THEN REPLY #58838 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58839 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 6.1
  SAY #58840 /* ~"Procházíš? Ve vězení? Přišel jsi někomu pomoct utéct!" Máchl po tobě svou zbraní!~ */
  IF ~~ THEN REPLY #58858 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58859 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #58841 /* ~"Nevím. Je to částí vězení tak dlouho, co pamatuju. Nemůžeme tu celu otevřít, ať se snažíme jak chceme. Je to hezký brnění, ale nemůžeme se k němu dostat. A teď jsi na řadě ty. Co tady dole děláš?"~ */
  IF ~~ THEN REPLY #58860 /* ~"Hledám devu."~ */ GOTO 7
  IF ~~ THEN REPLY #58861 /* ~"Jenom se tak procházím."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.0
  SAY #58842 /* ~Usmál se. "Brzy se přidáš k nebeským chórům, vole." Vytáhl zbraň a útočí!~ */
  IF ~~ THEN REPLY #58862 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58863 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #58843 /* ~Vidíš jednoho z Curstských nejlepších, vypadá docela znuděně. "Co chceš? Nevíš, že máme karanténu?"~ */
  IF ~~ THEN REPLY #58864 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 10
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58865 /* ~"Žena jménem Lady Roberta plánuje vraždu svého manžela Carla. Myslím, že je to jeden z Burgherových asistentů."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58866 /* ~"Chci se přiznat k vraždě Carla Parfidora."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58867 /* ~"Jeden z představitelů města mě požádal, ať zabiju jiného. Myslel jsem, že bych tě měl varovat."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58868 /* ~"Chci, abys mě zatknul."~ */ GOTO 15
  IF ~~ THEN REPLY #58869 /* ~"Hledám devu."~ */ GOTO 16
  IF ~~ THEN REPLY #58870 /* ~"Chtěl bych mluvit s člověkem, který to tady vede."~ */ GOTO 11
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58871 /* ~"Jeden z představitelů města mě požádal, ať zabiju jiného. Myslel jsem, že bych tě měl varovat."~ */ GOTO 22
  IF ~~ THEN REPLY #58929 /* ~"Nic. Sbohem."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from: 10.0 11.0 12.1 13.1 14.0 15.2 16.0 17.1 22.0
  SAY #58844 /* ~"Co chceš teď?"~ */
  IF ~~ THEN REPLY #58872 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 10
  IF ~~ THEN REPLY #58873 /* ~"Chtěl bych mluvit s člověkem, který to tady vede."~ */ GOTO 11
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58874 /* ~"Žena jménem Lady Roberta plánuje vraždu svého manžela Carla. Myslím, že je to jeden z Burgherových asistentů."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58875 /* ~"Chci se přiznat k vraždě Carla Parfidora."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58876 /* ~"Jeden z představitelů města mě požádal, ať zabiju jiného. Myslel jsem, že bych tě měl varovat."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58877 /* ~"Chci, abys mě zatknul."~ */ GOTO 15
  IF ~~ THEN REPLY #58878 /* ~"Hledám devu."~ */ GOTO 16
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58879 /* ~"Jeden z představitelů města mě požádal, ať zabiju jiného. Myslel jsem, že bych tě měl varovat."~ */ GOTO 22
  IF ~~ THEN REPLY #58932 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #58845 /* ~"Mor, máme tu mor, takže je karanténa. Nezjistili jsme, co to způsobuje, ale na nakažený části města jsme uvalili karanténu, aby se to dál nešířilo. Chceš ještě něco?"~ */
  IF ~~ THEN REPLY #58880 /* ~"Mám ještě pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #58881 /* ~"Ne. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.6 9.1 17.0
  SAY #58846 /* ~"Cože? Burgher? Je v administrativní budově. Hodně štěstí, jestli si s ním chceš promluvit. V poslední době nemluví s *nikým*. Má asi nějaké starosti..."~ */
  IF ~~ THEN REPLY #58882 /* ~"Mám ještě pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #58883 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 9.2
  SAY #58847 /* ~"Lady Roberta?" Zamračil se. "Podíváme se na to." Otočil se. "Oh. Díky."~ */
  IF ~~ THEN REPLY #58884 /* ~"Co, není za to nějaká odměna?"~ */ GOTO 17
  IF ~~ THEN REPLY #58885 /* ~"Mám ještě pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #58886 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.2 9.3
  SAY #58848 /* ~"Tohle není sranda. Tohle bereme smrtelně vážně. Ať už to udělal kdokoli, stráví dlouhý předlouhý čásek ve vězení."~ */
  IF ~~ THEN REPLY #58887 /* ~"Mluvím vážně. Zabil jsem ho."~ */ GOTO 18
  IF ~~ THEN REPLY #58888 /* ~"Oh. Omlouvám se za ten vtípek. Mám ještě další otázky..."~ */ GOTO 9
  IF ~~ THEN REPLY #58889 /* ~"Oh. Promiň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3 9.4
  SAY #58849 /* ~Zavrtěl hlavou. "Možná ti připadám jako pitomec, vole, ale já se do politiky zaplítat nebudu. Vážím si svý práce... a svýho života. Zajdi s tím za kapitánem."~ */
  IF ~~ THEN REPLY #58890 /* ~"Velmi dobře. Tak to mám ještě pár otázek."~ */ GOTO 9
  IF ~~ THEN REPLY #58891 /* ~"Tak sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4 9.5
  SAY #58850 /* ~"Zatknout tě? Za co?"~ */
  IF ~~ THEN REPLY #58892 /* ~"Zkrátka chci jít do vězení."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 19
  IF ~~ THEN REPLY #58893 /* ~"Protože jsem totální šílenec! Magor! Uhááá gůůhááá hahaha!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 20
  IF ~~ THEN REPLY #58894 /* ~"Zapomeň na to. Odpověz mi na pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #58895 /* ~"Zapomeň na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 9.6
  SAY #58851 /* ~"Tak to hledáš na blbý straně Velkýho Prstence, vole, protože i kdyby tady jeden byl, nenašel bys ho. Byl by zamknutej líp než lakomcovo zlato."~ */
  IF ~~ THEN REPLY #58896 /* ~"Tak dobře. Mám pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #58897 /* ~"Tak na to zapomeň. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.0
  SAY #58852 /* ~Uculil se. "Ctnost je samotná odměnou, ne? Jestli chceš víc, promluv si s někým zodpovědným."~ */
  IF ~~ THEN REPLY #58898 /* ~"Tak bych si rád promluvil s někým, kdo tomu tady šéfuje."~ */ GOTO 11
  IF ~~ THEN REPLY #58899 /* ~"Fajn. Mám pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #58900 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.0
  SAY #58853 /* ~"Půjdeš klidně, nebo to uděláme starým dobrým násilným způsobem?"~ */
  IF ~~ THEN REPLY #58901 /* ~"Půjdu klidně."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58902 /* ~"Budeme bojovat."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY #58854 /* ~"Když na tom trváš. Pojďme."~ */
  IF ~~ THEN REPLY #58903 /* ~"Rozmyslel jsem si to. Zapomeň na to."~ */ GOTO 21
  IF ~~ THEN REPLY #58904 /* ~"Dobrá. Pojďme."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #58855 /* ~"Přesvědčil jsi mně. Tak pojďme."~ */
  IF ~~ THEN REPLY #58905 /* ~"Rozmyslel jsem si to. Zapomeň na to."~ */ GOTO 21
  IF ~~ THEN REPLY #58906 /* ~"Dobrá. Pojďme."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #58856 /* ~"Na to už je trochu pozdě. Půjdeš v klidu, nebo ne?"~ */
  IF ~~ THEN REPLY #58908 /* ~"Půjdu klidně."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58909 /* ~"Budeme bojovat."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 8.7 9.7
  SAY #58928 /* ~Zavrtěl hlavou. "Možná ti připadám jako pitomec, vole, ale já se do politiky zaplítat nebudu. Vážím si svý práce... a svýho života. Zajdi s tím za kapitánem. Je u brány uprostřed města, na přechodu mezi další částí a toudle."~ */
  IF ~~ THEN REPLY #58930 /* ~"Velmi dobře. Tak to mám potom pár otázek..."~ */ GOTO 9
  IF ~~ THEN REPLY #58931 /* ~"Tak sbohem."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
Global("Curst_Arrest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #58933 /* ~"Co to... ÚTĚK!" Stráž útočí!"~ */
  IF ~~ THEN REPLY #58934 /* ~Bojuj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58935 /* ~Uteč.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
