// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILLON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILLON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #7095 /* ~"Ajajaaaaaaj! Stráže! Vetřelec!"~ */
  IF ~~ THEN REPLY #7096 /* ~Hotovo.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #7097 /* ~"Musíte odejít, pán. Jestli vás mají čapnout a odvést, nechci, aby vás nachytali tady."~ */
  IF ~~ THEN REPLY #7098 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",0)
Global("Alarm1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #7099 /* ~"Co pro vás můžu udělat, pán?"~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7100 /* ~"Potřeboval bych něco vykovat. Dáš mi trochu rudy?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7101 /* ~"Potřeboval bych něco vykovat. Dáš mi trochu rudy?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7102 /* ~"Pověz mi o svém předchůdci."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7103 /* ~"Pověz mi o svém předchůdci."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7104 /* ~"Pověz mi o svém předchůdci."~ */ GOTO 7
  IF ~~ THEN REPLY #7105 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0
  SAY #7106 /* ~"Já lituji, pán. Nadřízený mi řekl, že jste u kovadliny strávil příliš mnoho času. Teď je řada na dalších. Velice se vám omlouvám."~ */
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7107 /* ~"Pověz mi o svém předchůdci."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7108 /* ~"Pověz mi o svém předchůdci."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7109 /* ~"Pověz mi o svém předchůdci."~ */ GOTO 7
  IF ~~ THEN REPLY #7110 /* ~"V pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1
  SAY #7111 /* ~"Chceš rudu? Skvěle, tady máš. Ať ti dobře poslouží. Ale musíš vědět, jak s ní správně zacházet."~ */
  IF ~~ THEN REPLY #7112 /* ~"Budu. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #7113 /* ~"Jistěže. Servus."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.0
  SAY #7114 /* ~"To bylo to nejzáhadnější! Jakmile byl Saros pod zámkem, Thildon zmizel. Bez jakékoliv zprávy či vysvětlení... nezanechal vůbec nic. Prostě po anglicku zmizel. Stejně to byla pěkná svině, nikdo zde pro něj nebrečel."~ */
  IF ~~ THEN REPLY #7115 /* ~"Potřeboval bych něco vykovat. Poskytneš mi trochu rudy?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7116 /* ~"Potřeboval bych něco vykovat. Poskytneš mi trochu rudy?"~ */ GOTO 4
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7117 /* ~"Chápu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1
  SAY #7118 /* ~"Nuže! Když jsme se dozvěděli, že ho chytli a zabásli, udělali jsme vše jen proto, aby se na něj rychle zapomnělo. Nikdo toho hajzla neměl rád, to je věc jistá. Vlastně jeho odchod byl pro nás úlevou."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7119 /* ~"Potřeboval bych něco vykovat. Dáš mi trochu rudy?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7120 /* ~"Potřeboval bych něco vykovat. Poskytneš mi trochu rudy?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7121 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 3.2
  SAY #7122 /* ~"Byla to zatracená škoda, že Saros musel odejít. Nicméně, zbavili jsme se toho šmejda Thildona... takto končí kšefty s fiendem, jen co je pravda. Sarose tu každý měl rád, ale Thildona? Zmizel a to stačí."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7123 /* ~"Potřeboval bych něco vykovat. Dáš mi trochu rudy?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7124 /* ~"Potřeboval bych něco vykovat. Poskytneš mi trochu rudy?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7125 /* ~"Chápu. Servus."~ */ EXIT
END
