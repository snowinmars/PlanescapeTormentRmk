// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIRONNA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DIRONNA~

IF ~  Global("Iron_Nalls","AR0300",0)
~ THEN BEGIN 0 // from:
  SAY #9346 /* ~Tato žena s mohutnými rameny se pomalu šourá mezi trámy ležícími na ulici. Kope do nich svými ocelí podkovanými botami; jednou za čas se sehne a holýma rukama vytrhne z některého z trámů hřebík. Potom ho zvedne, přeměří očima a opatrně uloží do jakéhosi vaku.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13094 /* ~"Zdravím..."~ */ GOTO 6
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13095 /* ~"Zdravím..."~ */ GOTO 7
  IF ~~ THEN REPLY #13096 /* ~Opustit ji a nechat ji při práci.~ */ EXIT
END

IF ~  Global("Iron_Nalls","AR0300",1)
!NearbyDialog("DAnnah")
~ THEN BEGIN 1 // from:
  SAY #13038 /* ~Spouští své ruce podél těla. "Zase zpátky, co? Co potřebuješ tentokrát?"~ */
  IF ~~ THEN REPLY #13097 /* ~"Mám pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #13098 /* ~"Nic. Sbohem."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",1)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #13040 /* ~Spouštíc své ruce podél těla povídá. "Zase zpátky, co? Co zase potřebuješ --" Náhle spatří vedle tebe stát Annah. "Fajn, ... Kdopak je tvá nová přítelkyně?"~ */
  IF ~~ THEN REPLY #64412 /* ~"Její jméno je Annah."~ */ EXTERN ~DANNAH~ 82
  IF ~~ THEN REPLY #64413 /* ~"To je Annah - ale nejsem si jistý, jestli bych ji chtěl pokládat za přítele."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 83
END

IF ~  Global("Iron_Nalls","AR0300",2)
!NearbyDialog("DAnnah")
~ THEN BEGIN 3 // from:
  SAY #13050 /* ~Železná Nalls se vzpřímila a položila ruce na své boky. "Zase zpátky, co?" Rozhlíží se, jako by zmateně kolem tebe. "Řekni, chlapče... kdepak je to krásné mrně, které s tebou bylo posledně?~ */
  IF ~  Dead("Annah")
~ THEN REPLY #12967 /* ~"Ona je... mrtvá."~ */ GOTO 26
  IF ~  Dead("Annah")
~ THEN REPLY #13101 /* ~Lež: "Nejsem si jistý. Mám pár otázek..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Dead("Annah")
~ THEN REPLY #13102 /* ~"Nejsem si jistý. Mám pár otázek..."~ */ GOTO 27
  IF ~  Dead("Annah")
~ THEN REPLY #13103 /* ~Lež: "Nejsem si jistý. Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nalls_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~  !Dead("Annah")
~ THEN REPLY #13104 /* ~"Nejsem si jistý. Sbohem."~ */ GOTO 5
END

IF ~  Global("Iron_Nalls","AR0300",2)
NearbyDialog("DAnnah")
~ THEN BEGIN 4 // from:
  SAY #13051 /* ~Železná Nalls se vzpřímila a položila ruce na své boky. Když vidí Annah, široce se usmívá. "Jo, zase tady, co? Je hezký zase vidět tvou příjemnou tvář, děvče." Obrátí se na tebe "Co chceš ty, chlapče?"~ */
  IF ~~ THEN REPLY #13105 /* ~"Mám pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #13106 /* ~"Nic. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 3.4 4.1 6.1 7.1 9.3 10.3 11.3 12.4 13.2 14.3 15.2 16.1 17.3 18.4 19.4 20.4 21.1 22.1 23.1 24.2 25.1 26.1 27.1 28.3 29.6 30.7 31.6 32.6 33.6 34.4 36.5 37.4 38.1
  SAY #13052 /* ~"Šťastnou cestu, chlapče."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13107 /* ~Odejít.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ EXIT
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13108 /* ~Odejít.~ */ DO ~SetGlobal("Iron_Nalls","AR0300",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0
  SAY #13053 /* ~Zvedá se a poslouchajíc tě se přibližuje. Zdvořile se usmívá, ale pomalu je vidět, jak se její ruce přibližují k jílci její zbraně - řekl bys, že se připravuje na potíže. V jednom z jejích očí jsi zahlédl záblesk mléčného povlaku. "To je vše, co ode mne potřebuješ, chlapče?"~ */
  IF ~~ THEN REPLY #13109 /* ~"Mám pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #13110 /* ~"Nic, nemysli na to. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #13054 /* ~Zvedá se a poslouchajíc tě se přibližuje. Její zbraň je sice schovaná, ale cítíš, že je připravena jí ihned tasit. V jednom jejím oku sleduješ jako by záblesk mléčné dráhy. Po očku sleduje Annah, usmívá se a aniž by čekala na odezvu, kývne na pozdrav. "To je všechno, co ode mě potřebuješ, chlapče?"~ */
  IF ~~ THEN REPLY #13111 /* ~"Mám pár otázek..."~ */ GOTO 8
  IF ~~ THEN REPLY #13112 /* ~"Nic, nemysli na to. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.0 4.0 6.0 7.0 9.2 10.0 11.2 13.1 14.2 15.1 16.0 17.2 18.3 19.3 20.3 21.0 22.0 23.0 24.1 25.0 26.0 27.0 28.2 29.5 30.6 31.5 32.5 33.5 34.3 36.4 37.3 38.0
  SAY #13055 /* ~Přikyvuje. "Tak se teda ptej."~ */
  IF ~  Global("RP_Portal","GLOBAL",3)
~ THEN REPLY #48403 /* ~"Měl jsem se zeptat ženy jménem Nalls, která by měla být někde tady kolem, na zasypaný průchod na Hadrníkově náměstí. Můžeš mi pomoct?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",4)
GiveItemCreate("Junk",Protagonist,1,0,0)
~ JOURNAL #39472 /* ~Žena jménem Železná Nalls mi řekla, že průchod zasypaný smetím, který jsem objevil na Hadrníkově náměstí je ve skutečnosti portál, který omylem objevila. Jako klíč slouží hrst haraburdí, které musí mít první osoba v průchodu - tedy já - u sebe. Nalls řekla, že to vede do malého, otevřeného prostoru s branou, která vede do podzemí, které ale ona neprozkoumala.~ */ GOTO 38
  IF ~  Global("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13113 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 9
  IF ~  Global("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13114 /* ~"Kdo jsi?"~ */ DO ~SetGlobal("Iron_Nalls","AR0300",1)
~ GOTO 28
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
!NearbyDialog("DAnnah")
~ THEN REPLY #13115 /* ~"Kdo jsi, ksakru?"~ */ GOTO 9
  IF ~  GlobalGT("Iron_Nalls","AR0300",0)
NearbyDialog("DAnnah")
~ THEN REPLY #13116 /* ~"Kdo jsi, ksakru?"~ */ GOTO 28
  IF ~~ THEN REPLY #13117 /* ~"Co to děláš?"~ */ GOTO 11
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13118 /* ~"Můžeš mi říct něco o tomhle místě?"~ */ GOTO 22
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13119 /* ~"Můžeš mi říct něco o tomhle místě?"~ */ GOTO 35
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13120 /* ~"Hledám muže jménem Pharod."~ */ GOTO 23
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #13121 /* ~"Hledám deník, který jsem ztratil. Neviděla jsi nějaký?"~ */ GOTO 24
  IF ~~ THEN REPLY #13122 /* ~"Nemysli na to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.3
  SAY #13056 /* ~Vytahuje tři hřebíky ze svého vaku, vyhazuje je do povětří a zachytává je do svých dlaní. "Říkají mi Železná Nalls." Pokládá je pomalu zpět do vaku s malým *cinknutím.*~ */
  IF ~~ THEN REPLY #13123 /* ~"Proč sbíráš hřebíky?"~ */ GOTO 12
  IF ~~ THEN REPLY #13124 /* ~"Co se ti stalo s očima?"~ */ GOTO 10
  IF ~~ THEN REPLY #13125 /* ~"OK. Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13126 /* ~"Vhodné jméno. Sbohem, Nalls."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 9.1 20.0 28.1
  SAY #13057 /* ~Obličej Nalls ztvrdnul. "To není tvůj problém, frajere. Proč? Chtěl by sis doplnit zranění do svý kolekce?"~ */
  IF ~~ THEN REPLY #13127 /* ~"Ne, ne skutečně. Mám nějaké další otázky..."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #13128 /* ~"Ne."~ */ GOTO 21
  IF ~~ THEN REPLY #13129 /* ~"Snažíte se mi vyhrožovat? To bych viděl docela rád..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13130 /* ~"Ne, nemůžu. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 8.5
  SAY #13058 /* ~Zavírá své oči. "Díval ses, co jsem dělala, frajere? Sbírala hřebíky!" Jemně se usmívá, třepajíc hlavou.~ */
  IF ~~ THEN REPLY #13131 /* ~"Proč?"~ */ GOTO 12
  IF ~~ THEN REPLY #13132 /* ~"Odkud všechno to dřevo přichází?"~ */ GOTO 13
  IF ~~ THEN REPLY #13133 /* ~"Mám další otázky."~ */ GOTO 8
  IF ~~ THEN REPLY #13134 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 9.0 11.0 28.0
  SAY #13059 /* ~"Prodávám je jednomu chlapovi, jménem Hamrys, v Dolní čtvrti. Je to výrobce rakví."~ */
  IF ~~ THEN REPLY #13135 /* ~"Řekni mi více o tomhle Hamrysovi."~ */ GOTO 17
  IF ~~ THEN REPLY #13136 /* ~"Kde najdu Dolní čtvrť?"~ */ GOTO 18
  IF ~~ THEN REPLY #13137 /* ~"Ještě někdo tady sbírá hřebíky?"~ */ GOTO 19
  IF ~~ THEN REPLY #13138 /* ~"Odkud všechno to dřevo pochází?"~ */ GOTO 13
  IF ~~ THEN REPLY #13139 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.3
  SAY #13060 /* ~Pokrčí rameny. "Tak různě všelijak, jak se dá. Někdy seberu dřevo, když ho dabus nashromáždí z nějaké budovy a než ho jiný dabus zase odnese pryč. Pravděpodobně ho získávají z těch starých baráků a zdí, co zbourají nebo postaví."~ */
  IF ~~ THEN REPLY #13140 /* ~"Dabus?"~ */ GOTO 14
  IF ~~ THEN REPLY #13141 /* ~"Mám další otázky."~ */ GOTO 8
  IF ~~ THEN REPLY #13142 /* ~"To je vše, co jsem chtěl vědět. Sbohem"~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.0
  SAY #13061 /* ~"Aha, dabusové -- Otroci Velké Paní Bolesti." Bezradně se na tebe kouká. "Musíš být nový v Sigilu."~ */
  IF ~~ THEN REPLY #13143 /* ~"Řekni mi více o dabusech."~ */ GOTO 15
  IF ~~ THEN REPLY #13144 /* ~"Můžu se zeptat na Paní?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13145 /* ~"Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13146 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #13062 /* ~"Pracují všude ve městě, dělají, co Paní chce. Stále staví a přestavují', Používají vše staré k tomu, aby vytvořili něco nového."~ */
  IF ~~ THEN REPLY #13147 /* ~"Můžu se zeptat na Paní?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #13148 /* ~"Mám další otázky."~ */ GOTO 8
  IF ~~ THEN REPLY #13149 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #13063 /* ~Nalls se na tebe mračí. "Ach, ne, nemůžeš! Nechci už o ní říct víc, než jsem řekla..." Svým prstem si nakreslila polokruh nad srdcem. "Dám ti jednu radu, chlapče... nikoho už se na Paní nevyptávej."~ */
  IF ~~ THEN REPLY #13150 /* ~"Velmi dobře. Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13151 /* ~"Tak tedy sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 12.0 18.1 19.1 20.1
  SAY #13064 /* ~"Není toho moc, co říct... je trochu upovídaný -- bude mlít tou svojí klapačkou, až z toho budeš hotovej. Potřebuje hřebíky, já potřebuju harampádí, a tak to tady chodí."~ */
  IF ~~ THEN REPLY #13152 /* ~"Kde najdu Dolní čtvrť?"~ */ GOTO 18
  IF ~~ THEN REPLY #13153 /* ~"Je tu ještě někdo jiný, kdo sbírá hřebíky?"~ */ GOTO 19
  IF ~~ THEN REPLY #13154 /* ~"Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13155 /* ~"To je vše, co jsem si přál vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 12.1 17.0 19.2 20.2
  SAY #13065 /* ~"Eh... Znala jsem cestu, opravdu, ale dabusové zase mění kolem dokola ulice. Teď už nevím, jak se tam dostat -- Budu potřebovat zmapovat novou cestu-- Ale počítám s tím, že dabusové to nakonec spraví."~ */
  IF ~~ THEN REPLY #13156 /* ~"Dabus?"~ */ GOTO 14
  IF ~~ THEN REPLY #13157 /* ~"Řekni mi více o tom Hamrysovi."~ */ GOTO 17
  IF ~~ THEN REPLY #13158 /* ~"Sbírá tady ještě někdo hřebíky?"~ */ GOTO 19
  IF ~~ THEN REPLY #13159 /* ~"Hmm. Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13160 /* ~"Možná dostanu lepší informace někde jinde. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 12.2 17.1 18.2
  SAY #13066 /* ~Ušklíbla se a zatřepala hlavou. "Nikdo nebyl dostatečně chytrý aby to udělal přede mnou, a zničím každého kdo se pokusí tvrdit něco jiného" poťukává si rukou po své dlouhé, ostré dýce.~ */
  IF ~~ THEN REPLY #13161 /* ~"To 'tvrdíš ty?'"~ */ GOTO 20
  IF ~~ THEN REPLY #13162 /* ~"Řekni mi více o tom Hamrysovi."~ */ GOTO 17
  IF ~~ THEN REPLY #13163 /* ~"Kde najdu Dolní čtvrť?"~ */ GOTO 18
  IF ~~ THEN REPLY #13164 /* ~"Vidím. Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13165 /* ~"To je dobře. Tak tedy sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #13067 /* ~"Ano, takhle to vidím já! Pravýho chlapa je těžké najít. Poslala jsem tam už spoustu chlapů, ale když neměli štěstí, vrátili se bez vnitřností." Její oči se zlomyslně leskly." V Úlu je známá jako mstivá Železná Nalls', tomu věř."~ */
  IF ~~ THEN REPLY #13166 /* ~"Proto máš poraněné oko?"~ */ GOTO 10
  IF ~~ THEN REPLY #13167 /* ~"Řekni mi více o tom Hamrysovi."~ */ GOTO 17
  IF ~~ THEN REPLY #13168 /* ~"Kde najdu Dolní čtvrť?"~ */ GOTO 18
  IF ~~ THEN REPLY #13169 /* ~"Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13170 /* ~"Vidím. Tak tedy sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 21 // from: 10.1
  SAY #13068 /* ~Srdečně se usmívá. "Nemyslím si, že bys měl moc místa na další tetování!"~ */
  IF ~~ THEN REPLY #13171 /* ~"Hah... Mám nějaké další otázky."~ */ GOTO 8
  IF ~~ THEN REPLY #13172 /* ~"Mohl bych být v pořádku. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.6
  SAY #13069 /* ~"Ah, podívej chlapče. Mám hodně práce - Hřebíky se samy neuloží do bedýnek, zatímco si tady budeme zpívat chvalozpěvy. Proč si nenajdeš někoho jinýho, koho bys obíral o čas?"~ */
  IF ~~ THEN REPLY #13175 /* ~"Nech mě zeptat se tě ještě na něco jiného..."~ */ GOTO 8
  IF ~~ THEN REPLY #13176 /* ~"Možná budu. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 23 // from: 8.8 29.4 30.5 31.4 32.4 33.4 34.2 36.3 37.2
  SAY #13070 /* ~Přikyvuje. "Jo, slyšela jsem to jméno, opravdu. Je to šéf Sběračů, nebo aspoň jsem to o něm slyšela. Opravdu nevím, kde bys ho mohl najít. Můžeš zkusit Hadrníkovo náměstí; Je to severozápadně odtud. Schází se tam všichni Sběrači..."~ */
  IF ~~ THEN REPLY #13173 /* ~"Vidím. Mám nějaké další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13174 /* ~"Tak se tam teda po něm podívám. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 8.9
  SAY #13071 /* ~"Ne, neviděla." Na chvíli se odmlčí. "Víš, to je dobrý nápad, fakt... deník. Možná můžu začít se svým vlastním."~ */
  IF ~~ THEN REPLY #13177 /* ~"Ano, to je. Je to úžasné, kolik člověk dokáže zapomenout... deník ti může pomoci nalézt ztracené myšlenky."~ */ GOTO 25
  IF ~~ THEN REPLY #13178 /* ~"Možná... Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13179 /* ~"Možná ano. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #13072 /* ~Přemýšlí o tom, co jsi řekl. "Heh. Máš pravdu. Máš skutečně pravdu, chlape! Udělám to. Díky ti za ten nápad." usmívá se.~ */
  IF ~~ THEN REPLY #13180 /* ~"Samozřejmě. Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13181 /* ~"To nic. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 26 // from: 3.0
  SAY #13073 /* ~Nalls vypadá opravdu ustaraně. "Eh... ah... vidím. To je smutná věc, opravdu. Všechno je v Úlu příliš neprůhledné, to ti říkám." Trhavě třepe hlavou, jako by chytila melancholickou náladu. "Dobrá tedy, co jsi to potřeboval?"~ */
  IF ~~ THEN REPLY #13182 /* ~"Říkám. Má nějaké další otázky...!!"~ */ GOTO 8
  IF ~~ THEN REPLY #13183 /* ~"Nic, nemysli na to. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 27 // from: 3.1 3.2
  SAY #13074 /* ~"Oh?" Konečně obrací pozornost směrem k vám. "To je opravdu špatné, opravdu. Teď, co jsi to potřeboval?"~ */
  IF ~~ THEN REPLY #13184 /* ~"Řekl jsem, že mám nějaké další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13185 /* ~"Nic, nemysli na to. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 28 // from: 8.2 8.4
  SAY #13075 /* ~Bere tři hřebíky ze svého vaku, vyhazuje je do vzduchu a zachytává v jemných dlaních. "Říkají mi Železná Nalls." S cinknutím vrací hřebíky zpět do vaku. Zběžně pohledne na Annah, aby viděla, jestli už zaregistrovala její přítomnost a pomalu se otáčí znovu na tebe.~ */
  IF ~~ THEN REPLY #13186 /* ~"Proč sbíráš ty hřebíky?"~ */ GOTO 12
  IF ~~ THEN REPLY #13187 /* ~"Jak jsi ztratila své oko?"~ */ GOTO 10
  IF ~~ THEN REPLY #13188 /* ~"Dobrá tedy. Mám další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #13189 /* ~"Zajímavé jméno. Sbohem, Nalls."~ */ GOTO 5
END

IF ~~ THEN BEGIN 29 // from:
  SAY #13076 /* ~Nalls má jedinou připomínku, ale rychle ji zase spolkne.  Pěkně se na tebe usmívá: "Opravdu můžu, chlapče. Co je to, co hledáš?"~ */
  IF ~~ THEN REPLY #13190 /* ~"Hledám práci."~ */ GOTO 30
  IF ~~ THEN REPLY #13191 /* ~"Hledám něco, čím bych se zabavil."~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13192 /* ~"Něco, na co bych si měl dát v okolí pozor?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13193 /* ~"Něco, na co bych si měl dát v okolí pozor?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13194 /* ~"Hledám muže, kterému říkají Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13195 /* ~"Nic, zrovna teď. Nech mě zeptat se na něco jiného..."~ */ GOTO 8
  IF ~~ THEN REPLY #13265 /* ~"Nevadí. sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 30 // from: 29.0 33.1 34.0 36.0 37.0
  SAY #13077 /* ~Nalls trhá hlavou. "Skutečně jsou pouze dva druhy práce v Úlu... můžeš jít sbírat na pole hmyz, nebo po ulicích mrtvoly. ~ */
  IF ~~ THEN REPLY #13196 /* ~"Chytil mozek?"~ */ GOTO 31
  IF ~~ THEN REPLY #13197 /* ~"Sbíráním... mrtvých?"~ */ GOTO 32
  IF ~~ THEN REPLY #13198 /* ~"Co když hledám něco, čím bych se pobavil?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13199 /* ~"Něco, na co bych si měl dát v okolí pozor?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13200 /* ~"Něco, na co bych si měl dát v okolí pozor?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13201 /* ~"Také hledám muže jménem Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13202 /* ~" Nech mě zeptat se na něco jiného..."~ */ GOTO 8
  IF ~~ THEN REPLY #13266 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #13078 /* ~"Aha. Město Sigil platí za hledání malých, ostrých ocásků. Lokace kanceláře je východně odtud; muž uvnitř ti řekne více."~ */
  IF ~~ THEN REPLY #13203 /* ~"Co mi můžeš říct o sbírání 'mrtvých?'"~ */ GOTO 32
  IF ~~ THEN REPLY #13204 /* ~"Co když hledám něco, čím bych se zabavil?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13205 /* ~"Něco, na co bych si měl dát v okolí pozor?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13206 /* ~"Něco, na co bych si měl dát v okolí pozor?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13207 /* ~"Také hledám muže, kterého jménem Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13208 /* ~"Nech se mě zeptat něco dalšího..."~ */ GOTO 8
  IF ~~ THEN REPLY #13267 /* ~"Možná se pak po něm podívám. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 32 // from: 30.1 31.0
  SAY #13079 /* ~ "Spalovač ti dá trochu harampádí, když mu přineseš mrtvolu... udržujou tak ulice čisté, alespoň částečně. Lidem, kteří se tím živí říkáme Sběrači... čističi, jako já -- ale hřebíky nepáchnou jako mrtvoly." Olizuje se.~ */
  IF ~~ THEN REPLY #13209 /* ~"Cos mi to řekl o chytání mozků?"~ */ GOTO 31
  IF ~~ THEN REPLY #13210 /* ~"Co když hledám něco, čím bych se zabavil?"~ */ GOTO 33
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13211 /* ~"Něco, na co bych si měl dát v okolí pozor?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13212 /* ~"Něco, na co bych si měl dát v okolí pozor?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13213 /* ~"Také hledám muže jménem Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13214 /* ~"Dostatečně pravdivý. Nech mě zeptat se ještě na pár věcí..."~ */ GOTO 8
  IF ~~ THEN REPLY #13268 /* ~

"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 33 // from: 29.1 30.2 31.1 32.1 34.1 37.1
  SAY #13080 /* ~"Dobrá, To pak závisí na tom, co pěkného najdeš. Je tady kolem pár dobrejch hospod Bar Zapomnění a U Doutnajícího nebožtíka. Slušná společnost, ale zase -- záleží na tom, jakou společnost hledáš." Kouká na Annah a myslím, že už nemá co říci.~ */
  IF ~~ THEN REPLY #13215 /* ~"Jak mám najít tahle místa?"~ */ DO ~SetGlobal("Know_Dustman_Bar","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #13216 /* ~"Co tahle nějakou práci?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13217 /* ~"Něco, na co bych si měl dát tady v okolí pozor?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13218 /* ~"Něco, na co bych si měl dát tady v okolí pozor?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13219 /* ~"Také hledám muže jménem Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13220 /* ~" Nech mě zeptat se na něco jiného...~ */ GOTO 8
  IF ~~ THEN REPLY #13269 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 34 // from: 29.2 30.3 31.2 32.2 33.2 36.1
  SAY #13081 /* ~"Pěkně hodně tě každý v Úlu obtěžuje... a tebe z toho samozřejmě nevyjímaje! Prostě se snaž rychle skončit, to je vše." Ještě jednou tě odhadne. "Jsem si jistá, že se můžeš postarat sám o sebe... a tvá přítelkyně vypadá zrovna tak, to teda jo." Nall se kouká na Annah, ale mladá žena její komentář ignoruje.~ */
  IF ~~ THEN REPLY #13221 /* ~"Co takhle nějakou práci?"~ */ GOTO 30
  IF ~~ THEN REPLY #13222 /* ~"Co když hledám něco, čím bych se pobavil?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13223 /* ~"Také hledám muže jménem Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13224 /* ~" Nech mě zeptat se na něco dalšího..."~ */ GOTO 8
  IF ~~ THEN REPLY #13225 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 35 // from: 8.7
  SAY #13082 /* ~Kývne na Annah. "Vypadá jako dobrá společnice při putování v Úlu... ptal ses ji na to někdy?" Nalls se usmívá na zlodějku, ač její zničené oko podává jen chabý výraz.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 88
END

IF ~~ THEN BEGIN 36 // from: 33.0
  SAY #13083 /* ~Nalls se na chvíli zamyslí, škrábajíc se na bradě. "Bar Zapomnění je blízko Márnice; když se vydáš jihozápadně od hlavní brány. U Doutnajícího nebožtíka  -- je východně odtud. půjdu tam s tebou, abych si dala ňáký pití, ale musím pak udělat hodně práce, opravdu musím."~ */
  IF ~~ THEN REPLY #13226 /* ~"Co takhle nějakou práci?"~ */ GOTO 30
  IF ~  Dead("Adyzoel")
~ THEN REPLY #13227 /* ~"Něco, na co bych si měl dát tady v okolí pozor?"~ */ GOTO 34
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #13228 /* ~"Něco, na co bych si měl dát tady v okolí pozor?"~ */ GOTO 37
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13229 /* ~"Také hledám muže jménem Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13230 /* ~"Můžu se zeptat na pár dalších věcí..."~ */ GOTO 8
  IF ~~ THEN REPLY #13270 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 37 // from: 29.3 30.4 31.3 32.3 33.3 36.2
  SAY #13259 /* ~"Tady v Úlu lidé pořád otravují... a vypadá to, že ty seš jedním z nich! Slyšela jsem, že putování je v současnosti hodně nebezpečné, ale jestli hledáš potíže..." Odhadne si tě ještě jednou. "Myslím, že se o sebe dokážeš postarat a tví přátelé vypadají, že také." Nalls se upřeně dívá na Annah, ale ta její slova ignoruje.~ */
  IF ~~ THEN REPLY #13260 /* ~"Nějaká práce tady v okolí?"~ */ GOTO 30
  IF ~~ THEN REPLY #13261 /* ~"Co když hledám něco k pobavení?"~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13262 /* ~"Také hledám muže jménem Pharod."~ */ GOTO 23
  IF ~~ THEN REPLY #13263 /* ~" Nech mě zeptat se na něco dalšího..."~ */ GOTO 8
  IF ~~ THEN REPLY #13264 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ GOTO 5
END

IF ~~ THEN BEGIN 38 // from: 8.0
  SAY #48400 /* ~Nalls pomalu přikývla. "Je to portál, víš. Sem na něj narazila blbou náhodou... esli ho chceš otevřít, ti stačí akorát vzít hromadu bordelu a jít tam. Dyž budeš to haraburdí mít u sebe, tak se ti tam otevře volnej flek, a tam je nějaká brána, co vede do podzemí. Sem si řekla, že to je vo držku, strkat tam čumák a rači sem práskla do bot a vypadla vod tama. Na..." Podala ti hrst harampádí. "Esli chceš, tak si vem todle. Stejně bysem s tím mrskla někam..."~ */
  IF ~~ THEN REPLY #48401 /* ~"Díky. Mám ještě další otázky..."~ */ GOTO 8
  IF ~~ THEN REPLY #48402 /* ~"Díky, Nalls. Sbohem."~ */ GOTO 5
END
