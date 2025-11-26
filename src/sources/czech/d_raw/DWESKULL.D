// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWESKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DWESKULL~

IF ~  Global("WeSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31810 /* ~Podivně tvarovaná lebka nejprve několikrát vysoce zapištěla, než k tobě promluvila. "M-m-m-můžu t-ti nnn-nnn-nějak p-p-p-pomoct?"~ */
  IF ~~ THEN REPLY #31811 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31812 /* ~"Jak ses sem dostal?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31813 /* ~"Co mi můžeš říct o Lotharovi?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31814 /* ~"Co mi můžeš říct o těch ostatních lebkách?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31815 /* ~"Ne. Sbohem."~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("WeSkull_Talk","AR0508",1)
~ THEN BEGIN 1 // from:
  SAY #31816 /* ~"Z-z-z-zase t-ty?"~ */
  IF ~~ THEN REPLY #31817 /* ~"Kdo jsi?"~ */ GOTO 2
  IF ~~ THEN REPLY #31818 /* ~"Jak ses sem dostal?"~ */ GOTO 3
  IF ~~ THEN REPLY #31819 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #31820 /* ~"Co mi můžeš říct o těch ostatních lebkách?"~ */ GOTO 5
  IF ~~ THEN REPLY #31821 /* ~"Už ne moc dlouho. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #31822 /* ~"Jsem K-k-kozloč-č-čes. Byl jsem K-k-krysod-dlak."~ */
  IF ~~ THEN REPLY #31823 /* ~"KRYSO-dlak? Kolik takových -dlačích monster vůbec existuje?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 5.1
  SAY #31824 /* ~"Je to t-takové t-t-rapné. B-byl jsem ve své k-k-krysí f-formě hledat nějaké j-jídlo u D-d-d-doutnající nebb-božtíka a ... řekněme, že j-jsem n-n-nečekal, že s-s-servírka b-bude mít s-s-stříbrnou v-vidličku. Mantuok mě našel v k-k-křečí a já s-s-s-skončil t-t-tady."~ */
  IF ~~ THEN REPLY #31825 /* ~"Co mi můžeš říct o Manutokovi?"~ */ GOTO 7
  IF ~~ THEN REPLY #31826 /* ~"Co mi můžeš říct o těch ostatních lebkách?"~ */ GOTO 5
  IF ~~ THEN REPLY #31827 /* ~"Co mi můžeš říct o Lotharovi?"~ */ GOTO 4
  IF ~~ THEN REPLY #31828 /* ~"Aha. Fajn, Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.2 5.2
  SAY #31829 /* ~Kozločesova lebka úplně zmlkla. Kdyby měla oči, ty by se teď nejspíš kroutily v hrůze. "J-jdi... pryč..." zašeptala lebka. Odmítá s tebou dále mluvit.~ */
  IF ~~ THEN REPLY #31830 /* ~"Tak teda sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 3.1
  SAY #31831 /* ~"Jsou d-d-děsné. J-j-jenom p-p-protože jsou t-to l-lidksé lebky, m-m-m-myslí si, že jsou nějak l-lep-pší, n-než já. N-N-NENÁVIDÍM j-je."~ */
  IF ~~ THEN REPLY #31832 /* ~"Toť zdravý názor. Tak mi pověz něco o sobě."~ */ GOTO 2
  IF ~~ THEN REPLY #31833 /* ~"To je fajn. Jak ses sem dostal?"~ */ GOTO 3
  IF ~~ THEN REPLY #31834 /* ~"Tak to máš asi rád Lothara, viď?"~ */ GOTO 4
  IF ~~ THEN REPLY #31835 /* ~"Dobře ti tak. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #31836 /* ~"Oh, s-s-s-pousta. H-h-havrani, v-v-vlci, m-m-medvědi, j-jezevci... dokonce i k-k-krokodýlové. Jako by v-všechna zvířata měla s-s-svůj lykant-t-tropický p-p-protějšek. Je to v-v-vážně d-d-docela zajímavé."~ */
  IF ~~ THEN REPLY #31837 /* ~"Jací krysodlakové se tady potulují?"~ */ GOTO 8
  IF ~~ THEN REPLY #31838 /* ~"Jak se dá zabít takový dlak?"~ */ GOTO 9
  IF ~~ THEN REPLY #31839 /* ~"No teda. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0 8.0
  SAY #31840 /* ~"T-ten z-zz-zatracenej r-r-rádoby kk-k-k-kouzelník! T-ten b-b-b-blebec! J-já jsem z něj udělal, co j-je dnes! P-p-před roky, když b-b-yl jenom s-s-smradlavej d-d-dvojnožec, jsem ho našel a d-d-dal si s-sváču z jeho n-n-nohy. Chutnalo to j-jako n-n-nakládaný m-maso. B-b-byl jsem opilý několik d-d-d-dní! A pak se u-ukázal. A pak z-z-získal n-nějakou k-knížku a z-ze mě je v-v-vyhozený s-s-smetí a dekorace na p-p-poličce! Bastard!"~ */
  IF ~~ THEN REPLY #31841 /* ~"Znáš nějaké jeho tajemství?"~ */ GOTO 10
  IF ~~ THEN REPLY #31842 /* ~"Jak ho můžu zabít?"~ */ GOTO 9
  IF ~~ THEN REPLY #31843 /* ~"Tvrdý život. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #31844 /* ~"M-M-Mantuok a jeho b-b-banda. Já ho p-pozvedl a c-c-co dělá on? Jde a prodá mě L-l-lotharovi! Ale to je fajn, p-p-protože jsem š-šéfovi vykecal spoustu j-jeho t-t-t-tajemství. Mantuok si m-m-myslí, že je v bb-b-bezpečí, ale L-lotha ví v-v-všechno."~ */
  IF ~~ THEN REPLY #31845 /* ~"Co mi můžeš říct o Mantuokovi?"~ */ GOTO 7
  IF ~~ THEN REPLY #31846 /* ~"Jako co?"~ */ GOTO 10
  IF ~~ THEN REPLY #31847 /* ~"Jak ho můžu zabít?"~ */ GOTO 9
  IF ~~ THEN REPLY #31848 /* ~"Dobře. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.2
  SAY #31849 /* ~"Z-zabít l-lykantropa je j-jednoduché. Prostě n-n-najdi s-s-stříbrnou nebo magickou zbraň a p-p-propíchni ho! Normání z-z-braně moc n-nefungují... j-j-jednou d-do mě nastříleli spoustu š-šípů. Akorát t-t-o píchalo a v-v-vypadal jsem j-jako j-jehelníček!"~ */
  IF ~~ THEN REPLY #31850 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.1
  SAY #31851 /* ~"Jeho t-t-tajemství je, že p-p-pracuje jak pro Lothara, tak pro M-m-mnohojednoho, úlové v-vědomí krys. N-nevím, co p-p-plánuje, ale n-na t-tom stejně nezáleží, p-p-protože jsem všechno ř-ř-řekl L-lotharovi."~ */
  IF ~~ THEN REPLY #31852 /* ~"Aha. Díky a Sbohem."~ */ EXIT
END
