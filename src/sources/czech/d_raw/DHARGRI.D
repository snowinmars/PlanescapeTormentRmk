// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARGRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARGRI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 9 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2927 /* ~Kostlivec má na sobě něco, co vypadá jako prastará kněžská róba, těžká a bohatě zdobená. Drží velkou úchvatnou hůl, zakončenou složitě vyřezávanými rohy, visícími přívěsky a zlatou lebkou.~ */
  IF ~~ THEN REPLY #2928 /* ~"Zdravím..."~ */ DO ~SetGlobal("Hargrimm","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #21040 /* ~Nechej kněze kostlivců o samotě.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21041 /* ~Kostlivec, oči mu žhnou jako dva rozpálené uhly, kouká na tebe, ale nereaguje.~ */
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21042 /* ~"Jsi Tichý král?"~ */ GOTO 4
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
~ THEN REPLY #21043 /* ~"Jsi Hargrimm?"~ */ GOTO 2
  IF ~~ THEN REPLY #21044 /* ~"Měl bych pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #21045 /* ~"Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.0
  SAY #21046 /* ~Vznešeně mávne rukou, přívěsky pověšené na jeho holi zlehka zacinkají. V jeho tichém a pronikavém pohledu je něco znepokojivého.~ */
  IF ~~ THEN REPLY #21047 /* ~"Měl bych pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #21048 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 4.2 5.5 6.4 9.0 10.5 11.1 12.3 13.2 14.1 15.1 16.3 17.3 18.2 19.4 20.2 21.3 22.3 23.6 24.2 25.2 26.4 27.1 28.1 30.3 31.3 32.2 33.1 35.2 36.2 37.1 39.0 40.4 41.3 43.5 44.3 45.1 46.0 47.2 50.2 51.5 52.4 53.5 54.4 55.5 56.4 57.3 58.2 59.8 60.7 63.7 71.0 72.2 73.1 105.3 106.0 107.1
  SAY #21049 /* ~Pohybem ruky ti naznačí, abys pokračoval.~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21050 /* ~"Věděl jsi, že Soego je špión kraniokrys?"~ */ GOTO 40
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #21051 /* ~"Potkal jsem a zmasakroval skupinku kraniokrys v rozvalinách u starého průchodu."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ JOURNAL #21107 /* ~Řekl jsem Hargrimmovi, že jsem našel několik kraniokrys v Mrtvých národech a zabil jsem je. Poděkoval mi, ale nic mi nedal.~ */ GOTO 47
  IF ~  Global("DN_Appeal","AR1500",1)
~ THEN REPLY #21052 /* ~"Mohu mluvit s Tichým králem??"~ */ GOTO 5
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21053 /* ~"Proč jsem zde byl uvězněn?"~ */ GOTO 12
  IF ~~ THEN REPLY #21054 /* ~"Kde to jsem?"~ */ GOTO 15
  IF ~~ THEN REPLY #21102 /* ~"Co tu děláš?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #21103 /* ~"Kdo obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21104 /* ~"Rád bych se zeptal na něco konkrétnějšího..."~ */ GOTO 23
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21105 /* ~"Viděl jsi někde tady malou bronzovou kouli?"~ */ GOTO 33
  IF ~  NumInParty(1)
~ THEN REPLY #68093 /* ~"Můžu si tady odpočinout?"~ */ GOTO 107
  IF ~  NumInParty(1)
~ THEN REPLY #68094 /* ~"Potřebuju léčení - můžeš mi pomoct?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68095 /* ~"Můžeme si tady odpočinout?"~ */ GOTO 107
  IF ~  NumInPartyGT(1)
~ THEN REPLY #68096 /* ~"Potřebujeme léčení - můžeš nám pomoct?"~ */ GOTO 107
  IF ~~ THEN REPLY #21106 /* ~


"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #21108 /* ~Potřese hlavou, s děsivou grácií se otočí a ukáže na východ. Pak se zase otočí k tobě.~ */
  IF ~~ THEN REPLY #21109 /* ~"Jsi Hargrimm?"~ */ GOTO 2
  IF ~~ THEN REPLY #21110 /* ~"Mohu s ním mluvit?"~ */ GOTO 5
  IF ~~ THEN REPLY #21111 /* ~"Měl bych pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #21112 /* ~"Už budu muset jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1 14.0 25.0
  SAY #21113 /* ~Vztyčí kostnatou dlaň. Skřípavě zasténá, vyplivne trošku prachu, vycení čelisti a řekne: "Ne." Jeho hlas, hluboký a rezonující, ještě chvíli odeznívá jako v hluboké hrobce.~ */
  IF ~~ THEN REPLY #21114 /* ~"Ale proč ne?"~ */ GOTO 6
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21115 /* ~"Ale potřebuji od něj povolení, abych mohl odejít."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21116 /* ~"Ale potřebuji od něj povolení, abych mohl odejít."~ */ GOTO 10
  IF ~~ THEN REPLY #21117 /* ~Pravda: "Pusť mě k němu nebo tě rozsekám na prašivý kousky."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21118 /* ~Bluf : "Pusť mě k němu nebo tě rozsekám na prašivý kousky."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21119 /* ~"Tak to bych měl ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21120 /* ~"Tak to abych radši šel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21121 /* ~Jeho hlas zahřmí v chodbě: "Žádná živá bytost nesmí projít dveřmi do jeho trůnního sálu; stejně tak ti nemohu povolit ani audienci, kdyby to bylo možné. TY ho nespatříš."~ */
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalGT("Hargrimm_Trust","AR1500",1)
~ THEN REPLY #21122 /* ~"Ale potřebuji od něj povolení, abych mohl odejít."~ */ GOTO 7
  IF ~  Global("DN_Appeal","AR1500",1)
GlobalLT("Hargrimm_Trust","AR1500",2)
~ THEN REPLY #21123 /* ~"Ale potřebuji od něj povolení, abych mohl odejít."~ */ GOTO 10
  IF ~~ THEN REPLY #21124 /* ~Pravda: "Pusť mě k němu nebo tě rozsekám na prašivý kousky."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21125 /* ~Bluf: "Pusť mě k němu nebo tě rozsekám na prašivý kousky."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21126 /* ~"Tak to bych měl ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21127 /* ~"Tak to abych radši šel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0 47.0
  SAY #21128 /* ~"Vyřídím tvůj požadavek Tichému králi."~ */
  IF ~~ THEN REPLY #21129 /* ~"Díky..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #21130 /* ~"Tichý král promluvil. Jsi volný, můžeš jít. Již ti nebude nikdo bránit v odchodu."~ */
  IF ~~ THEN REPLY #21131 /* ~"Dík. Sbohem."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #21132 /* ~Hargrimm promluvil k Tichému králi v mém zájmu a já byl osvobozen od svého nevolnictví v oblasti Mrtvých národů.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 48 74 99 78 even though they appear after this state */
~  Global("Hargrimm","GLOBAL",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #21133 /* ~Hargrimm mávl tvým směrem, jako že tě bere na vědomí.~ */
  IF ~~ THEN REPLY #21134 /* ~"Měl bych pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #21135 /* ~"Jen procházím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2 6.1 47.1
  SAY #21136 /* ~Zdvihne svou dlaň. "Ne. Z vůle Tichého krále nesmíš toto místo opustit."~ */
  IF ~  Global("DN_Reason","AR1500",1)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21137 /* ~"Co mohu udělat, abych tě přesvědčil?"~ */ GOTO 43
  IF ~  Global("DN_Reason","AR1500",0)
!Global("DN_Rats","AR1500",3)
~ THEN REPLY #21138 /* ~"Co mohu udělat, abych tě přesvědčil?"~ */ GOTO 59
  IF ~  Global("DN_Rats","AR1500",3)
~ THEN REPLY #67809 /* ~"Ale... co *jiného* mám udělat, abych tě přesvědčil?"~ */ DO ~SetGlobal("Soego_Quest","GLOBAL",1)
~ JOURNAL #67810 /* ~Zeptal jsem se Hargrimma, co ještě mám udělat, aby mě uvolnil. Řekl mi, ať najdu důvod, proč odstranit z Mrtvých Národů Soega, pak že promluví mým jménem k Tichému Králi.~ */ GOTO 105
  IF ~~ THEN REPLY #21139 /* ~Pravda: "Pusť mě k němu nebo tě rozsekám na prašivý kousky."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21140 /* ~Bluf: "Pusť mě k němu nebo tě rozsekám na prašivý kousky."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_1","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #21141 /* ~"Tak to bych měl ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21142 /* ~"Tak to abych radši šel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.3 5.4 6.2 6.3 10.3 10.4
  SAY #21143 /* ~Jeho hlas vybuchne v tichu chodby: "O *NIC* PODOBNÉHO SE ANI NESNAŽ!" Ze stropu spadne trochu omítky a v uších ti ještě chvilku zvoní od toho zvuku. Když se z toho vzpamatuješ, všimneš si, že se kolem něj tvoří aura síly. Avšak zatím se nechystá útočit.~ */
  IF ~~ THEN REPLY #21144 /* ~Zaútoč první.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21145 /* ~"Tak to bych měl ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21146 /* ~"Tak to abych radši šel. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 107.0
  SAY #21147 /* ~"To je vůle Tichého krále. Ti živí, kteří jsou polapeni tu strádají tak dlouho, dokud nejsou jako ostatní."~ */
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21150 /* ~"Nedá se přesvědčit, aby změnil svou vůli?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm mi řekl, že existuje jistá naděje, že mě Tichý král propustí. Kdybych tak s ním mohl jen mluvit...~ */ GOTO 14
  IF ~~ THEN REPLY #21148 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #21149 /* ~"Jako ostatní?"~ */ GOTO 13
  IF ~~ THEN REPLY #21151 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21152 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #21154 /* ~"Opravdu mrtví. Ti, kteří nemají hlas a navěky spí. Nechť Tichý král nad nimi bdí!"~ */
  IF ~~ THEN REPLY #21155 /* ~"Pověz mi o Tichém králi."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 24
  IF ~  Global("DN_Appeal","AR1500",0)
~ THEN REPLY #21156 /* ~"Nedá se přesvědčit, aby mne propustil?"~ */ DO ~SetGlobal("DN_Appeal","AR1500",1)
~ JOURNAL #21153 /* ~Hargrimm mi řekl, že existuje jistá naděje, že mě Tichý král propustí. Kdybych tak s ním mohl jen mluvit...~ */ GOTO 14
  IF ~~ THEN REPLY #21157 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21158 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.1
  SAY #21159 /* ~Po chvilce mlčení se jeho ústa otevřou, aby opět promluvila: "Je to troufalost, ale snad. Nevyzpytatelné jsou činy Tichého krále."~ */
  IF ~~ THEN REPLY #21160 /* ~"Mohu s ním mluvit?"~ */ GOTO 5
  IF ~~ THEN REPLY #21161 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21162 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4
  SAY #21163 /* ~Ukáže kolem sebe. "Na území Mrtvých národů, komnatách Tichého krále."~ */
  IF ~~ THEN REPLY #21164 /* ~"Pověz mi o Tichém králi."~ */ GOTO 24
  IF ~~ THEN REPLY #21165 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21166 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.5 23.0
  SAY #21167 /* ~Ukazuje na svou hůl a róbu. "Nazývají mne Hargrimmem. Jsem nejvyšší kněz zdejších obyvatel. Šířím slovo Tichého krále mezi jeho poddanými."~ */
  IF ~~ THEN REPLY #21168 /* ~"Jak ses sem dostal?"~ */ GOTO 57
  IF ~~ THEN REPLY #21169 /* ~"Jeho poddanými? Kdo jiný je zde?"~ */ GOTO 17
  IF ~~ THEN REPLY #21170 /* ~"Pověz mi o Tichém králi."~ */ GOTO 24
  IF ~~ THEN REPLY #21171 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21173 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.6 16.1 18.1 19.3 20.1 21.2 22.2 50.1 51.4 52.3 53.4 54.3 55.4 56.3 57.1 58.0 72.1
  SAY #21172 /* ~"My, kostlivci. Jiní nemrtví - zombie a ghúlové. Bývaly tu jen stíny, ale už je tomu dlouho, co odletěly. Někdy zde tráví své poslední dny někdo z Živých. A na východ odtud žije mnoho kraniokrys."~ */
  IF ~~ THEN REPLY #21174 /* ~"Pověz mi o vás."~ */ GOTO 18
  IF ~~ THEN REPLY #21175 /* ~"Pověz mi o jiných nemrtvých."~ */ GOTO 19
  IF ~~ THEN REPLY #21176 /* ~"Pověz mi o krysách."~ */ GOTO 22
  IF ~~ THEN REPLY #21177 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21178 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #21179 /* ~"Pečujeme o zemřelé, opravdu mrtvé a sloužíme tak Tichému králi. Tuto práci zde vykonáváme již po staletí."~ */
  IF ~~ THEN REPLY #21180 /* ~"Pověz mi o Tichém králi."~ */ GOTO 24
  IF ~~ THEN REPLY #21181 /* ~


"Kdo ještě obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21182 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21183 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #21184 /* ~Svou odpověď vydechne s obláčkem prachu: "O kom?"~ */
  IF ~~ THEN REPLY #21185 /* ~"O zombiích."~ */ GOTO 20
  IF ~~ THEN REPLY #21186 /* ~"O ghúlech."~ */ GOTO 21
  IF ~~ THEN REPLY #21187 /* ~"Jaké stíny?"~ */ GOTO 50
  IF ~~ THEN REPLY #21188 /* ~"No nic. Kdo ještě obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21189 /* ~"No nic. Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21190 /* ~"No nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 26.2
  SAY #21191 /* ~"Slouží Tichému králi a Mrtvým národům jako pracovní síly. Pracují pod vedením Ošuntělé Máry, nejinteligentnější a nejchytřejší osoby mezi nimi."~ */
  IF ~~ THEN REPLY #21192 /* ~"Pověz mi o Ošuntělé Máry."~ */ GOTO 26
  IF ~~ THEN REPLY #21193 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21194 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21195 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 22.1 32.0
  SAY #21196 /* ~"Nevěřím jim ani jejich vůdkyni Acaste. Pozorují nás hladovýma očima a všechny by nás pojedli, kdyby nás nebylo tolik a Tichý král nebyl takovou autoritou." Odmlčel se, jakoby přemýšlel.~ */
  IF ~~ THEN REPLY #21197 /* ~"Pokračuj..."~ */ JOURNAL #21202 /* ~Hargrimm mi řekl, že je znepokojen ohledně Acaste. Myslí si, že pouze kombinace počtu kostlivců a zombie a k tomu strach z Tichého krále drží Acaste a její ghúly od zabití a sežrání všeho, co se nachází v katakombách.~ */ GOTO 72
  IF ~~ THEN REPLY #21198 /* ~"Pověz mi o Acaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21199 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21200 /* ~"Mám ještě nějaké otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21201 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.2 45.0
  SAY #21203 /* ~"Je to zmatená havěť, která sem jednou přišla ve velkém množství a začala se živit mrtvolami, o které jsme pečovali. Ghúlové jich většinu vytlačili zpátky, ale už nikdy neopustili svá doupata odsud na východ."~ */
  IF ~~ THEN REPLY #21204 /* ~"Mají nějaká slabá místa?"~ */ JOURNAL #21209 /* ~Abych si lépe poradil s kraniokrysami, tak mi Hargrimm řekl, že bych měl vyhledat a zničit co nejvíce jejich malých skupin, jak jen to bude možné. Takhle by větší skupiny měly méně krys a tím menší sílu, aby ostatní povolali do boje.~ */ GOTO 46
  IF ~~ THEN REPLY #21205 /* ~"Vyprávěj mi o ghúlech."~ */ GOTO 21
  IF ~~ THEN REPLY #21206 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21207 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21208 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.7 24.1 25.1 26.3 27.0 28.0 30.2 31.2 32.1
  SAY #21210 /* ~V oblaku starého prachu zašeptal svou odpověď: "O kom?"~ */
  IF ~~ THEN REPLY #21211 /* ~"Řekni mi o sobě."~ */ GOTO 16
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #21212 /* ~"Řekni mi o Tichém králi."~ */ GOTO 24
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21213 /* ~"Řekni mi o Ošuntělé Mary."~ */ GOTO 26
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21214 /* ~"Řekni mi o Soegovi."~ */ GOTO 29
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",1)
~ THEN REPLY #21215 /* ~"Řekni mi o Soegovi."~ */ GOTO 28
  IF ~  Global("Know_Acaste","GLOBAL",1)
!Dead("Acaste")
~ THEN REPLY #21216 /* ~"Řekni mi o Acaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21217 /* ~"Nevadí. Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21218 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.1 13.0 15.0 16.2 18.0 23.1 31.1 57.2 58.1
  SAY #21219 /* ~"Náš bůh a zjevení, on jež je zákon a náš ochránce. Udělal bys dobře, kdybys tady nevyvolával nějaké problémy, cizinče, oči Tichého krále jsou všude a jeho soud je velmi rychlý."~ */
  IF ~~ THEN REPLY #21220 /* ~"Proč je nazýván Tichý král?"~ */ GOTO 25
  IF ~~ THEN REPLY #21221 /* ~"Chci se zeptat na někoho jiného..."~ */ GOTO 23
  IF ~~ THEN REPLY #21222 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21223 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #21224 /* ~"Nemluví více než je nutné, aby nás vedl. Modli se k Tichému králi."~ */
  IF ~~ THEN REPLY #21225 /* ~"Mohl bych s ním mluvit?"~ */ GOTO 5
  IF ~~ THEN REPLY #21226 /* ~"Chci se zeptat na někoho jiného..."~ */ GOTO 23
  IF ~~ THEN REPLY #21227 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21228 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 23.2 52.0
  SAY #21229 /* ~"Je nejinteligentnější z těch, kterým se říká 'hnijící stádo,' těch zombie, co obývají Mrtvé národy. Na rozdíl od většiny z nás, její srdce nezemřelo v momentě smrti. To je vše co mohlo být řečeno."~ */
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23857 /* ~"Nezdá se ti, že je obtížné jí rozumět?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Když jsem s Hargrimmem mluvil o tom, že nerozumím Ošuntělé Mary, řekl mi, že se musím  *naučit* s ní mluvit. Snad bude vědět, co tím chtěl říci.~ */ GOTO 27
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #21230 /* ~"Jak jí rozumíš?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Když jsem s Hargrimmem mluvil o tom, že nerozumím Ošuntělé Mary, řekl mi, že se musím  *naučit* s ní mluvit. Snad bude vědět, co tím chtěl říci.~ */ GOTO 27
  IF ~~ THEN REPLY #21231 /* ~"Pověz mi o... 'hnijícím stádě'."~ */ GOTO 20
  IF ~~ THEN REPLY #21232 /* ~"Chci se zeptat na někoho jiného..."~ */ GOTO 23
  IF ~~ THEN REPLY #21233 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21234 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #21236 /* ~Nastala dlouhá pauza před tím, než kostlivec odpověděl. "Musíš se *naučit* naslouchat, to je všechno."~ */
  IF ~~ THEN REPLY #21237 /* ~"Chci se zeptat na někoho jiného..."~ */ GOTO 23
  IF ~~ THEN REPLY #21238 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21239 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4
  SAY #21240 /* ~Jeho hlas byl ještě pochmurnější: "Už o něm nebudu víc mluvit. Kéž Tichý král prokleje jeho ubohou duši!"~ */
  IF ~~ THEN REPLY #21241 /* ~"Chci se zeptat na někoho jiného..."~ */ GOTO 23
  IF ~~ THEN REPLY #21242 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21243 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.3 105.2
  SAY #21244 /* ~"Zkoušel nás přesvědčit, abychom se vzdali tohoto 'přesčasu života,' jak tomu on říká a přešli do Pravé smrti. Tvrdí, že je to náš hněv, jež nás kotví k tomuto životu a my jej musíme opustit a splnit naši povinnost. Chce, abychom byli mrtví..."~ */
  IF ~~ THEN REPLY #21245 /* ~"Pokračuj..."~ */ JOURNAL #21249 /* ~Hargimm je ze Soega nešťastný, protože Spalovač se neustále snaží přesvědčit obyvatele Mrtvých národů, aby zemřeli. Mohlo by se mu to podařit a jejich počet by se razantně snížil. Cítí, že celá jejich civilizace by tím byla ohrožena, neschopná se ubránit hrozbám jako jsou kraniokrysy nebo Acastini ghúlové.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #21250 /* ~"Někteří jeho slovům naslouchají, ale nikdo se nepoddal jeho mínění. Ti, jež by byli navždy umlčeni. Náš počet by se snížil a všechno co máme by bylo zničeno tím co nás obklopuje. Soego možná věří, že koná dobrou věc, ale po pravdě řečeno vyvolává velké zlo."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #67811 /* ~"Víš, že je to špión krys?"~ */ GOTO 40
  IF ~~ THEN REPLY #21251 /* ~"Proč mu dovolíte, aby zde pobýval?"~ */ GOTO 31
  IF ~~ THEN REPLY #21252 /* ~"Chci se zeptat na někoho jiného..."~ */ GOTO 23
  IF ~~ THEN REPLY #21253 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21254 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #21255 /* ~"Nemůžeme ho násilím přinutit, aby odešel. Ví, že mu nesmíme ublížit. Příměří mrtvých... žádný nemrtvý nesmí zranit Spalovače aniž by byl napaden jako první. Stejně tak si Tichý král přeje, aby se v jeho síních nevraždilo."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
~ THEN REPLY #21256 /* ~"Věděl jsi, že je špión kraniokrys?"~ */ GOTO 40
  IF ~~ THEN REPLY #21257 /* ~"Řekni mi o Tichém králi."~ */ GOTO 24
  IF ~~ THEN REPLY #21258 /* ~"Chci se zeptat na někoho jiného..."~ */ GOTO 23
  IF ~~ THEN REPLY #21259 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21260 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1 23.5 72.0
  SAY #21261 /* ~"Je matriarchou ghúlů, kteří přišli do našich síní. Je silná a neuvěřitelně mazaná."~ */
  IF ~~ THEN REPLY #21262 /* ~"Pověz mi něco o ghúlech."~ */ GOTO 21
  IF ~~ THEN REPLY #21263 /* ~"Chci se zeptat na někoho jiného..."~ */ GOTO 23
  IF ~~ THEN REPLY #21264 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21265 /* ~"To je všechno, co jsem chtěl vědět. Sbohem.."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.8 59.0 60.0 63.0
  SAY #21266 /* ~Zavrtěl hlavou. "Takovou věc jsem ještě neviděl. Proč tento předmět hledáš?"~ */
  IF ~~ THEN REPLY #21267 /* ~"Pro muže jménem Pharod."~ */ GOTO 34
  IF ~~ THEN REPLY #21268 /* ~"Nevadí. Mám ještě další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #21269 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #21270 /* ~Kostlivec se stáhnul zpět. Prohlížel si tě, jako by se ti chtěl podívat pod povrch. "Krev stále ještě proudí v jeho černém, červy prožraném srdci? Ten sípající pytel masa stále posílá své lidi přepadat a plenit naše domovy." Ještě jednou se na tebe podíval. "Udělal jsi chybu, že jsi sem přišel... my na našem území netolerujeme takové znesvětitele."~ */
  IF ~~ THEN REPLY #21271 /* ~"Ale já nepatřím k jeho lidem..."~ */ GOTO 38
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21272 /* ~"Co tedy hodláš dělat?"~ */ GOTO 36
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21273 /* ~"Co tedy hodláš dělat?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2
  SAY #21274 /* ~Tiše na tebe civěl. "Nic... Příměří mrtvých tě ochraňuje. Myslím, že tu zůstaneš až do své smrti.~ */
  IF ~~ THEN REPLY #21275 /* ~"Ale já nemůžu zemřít."~ */ GOTO 37
  IF ~~ THEN REPLY #21276 /* ~"Ale já ve skutečnosti nejsem jedním z Pharodových lidí."~ */ GOTO 38
  IF ~~ THEN REPLY #21277 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21278 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #21279 /* ~"Popravíme tě, jak říká zákon Tichého krále. Žádnému vykradači hrobů není dovoleno, aby tu žil."~ */
  IF ~~ THEN REPLY #21280 /* ~"Ale já nemůžu zemřít."~ */ GOTO 37
  IF ~~ THEN REPLY #21281 /* ~"Ale já ve skutečnosti nejsem jedním z Pharodových lidí."~ */ GOTO 38
  IF ~~ THEN REPLY #21282 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21283 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.0 36.0
  SAY #21284 /* ~Civěl do tvých očí po celou dobu než odpověděl. "To nepředstavuje žádný problém. Můžeš tu zůstat, pod dohledem Tichého krále, na věčnost. Možná jednoho dne odhalíš pošetilost svých názorů a rozhodneš se být užitečný naší spravedlivé civilizaci."~ */
  IF ~~ THEN REPLY #21285 /* ~"Ale já ve skutečnosti nejsem jedním z Pharodových lidí."~ */ GOTO 38
  IF ~~ THEN REPLY #21286 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21287 /* ~"Teď už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.0 35.1 36.1 37.0
  SAY #21288 /* ~"Proč jsi teda tady, vtrháváš do našich domovů a děláš poskoka pro tu bídnou duši?"~ */
  IF ~~ THEN REPLY #21289 /* ~"Hledám pro něj kouli a on mi na oplátku dá informaci, kterou potřebuji. Žádný jiný vztah mezi námi není."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #21290 /* ~"Je to pouze žoldáctví, jednorázová dohoda. Pokud mu vrátím kouli, tak mi to vynahradí."~ */ DO ~SetGlobal("DN_Sphere_Reason","GLOBAL",2)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #21291 /* ~Pečlivě si tě prohlížel a klepal si kostěným prstem na bradu -- *klep, klep, klep.* "Nezdá se mi, že jsi ten typ, který se spolčuje s takovým člověkem. Snad mluvíš pravdu. Možná... zdá se, že se tady tvá přítomnost dá tolerovat."~ */
  IF ~~ THEN REPLY #21292 /* ~"Dobře. Mám ještě další otázky..."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21293 /* ~"Dobře. Sbohem."~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 3.0 30.0 31.0 43.0 44.0 105.1
  SAY #21294 /* ~Přiblížil se k tobě, byl cítit zaprášenou a plesnivou látkou. "O čem to mluvíš? Jaký máš důkaz, že je Soego spolčen s tou havětí?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #21295 /* ~"Když jsem s nimi mluvil, tak mi to řekli."~ */ GOTO 41
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57892 /* ~"V jeho obydlí, v deníku, je důkaz. Teď už je ale mrtvý."~ */ JOURNAL #21303 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Řekl, že se tím bude zabývat později.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21296 /* ~"Důkaz je v jeho komnatách, jeho deník."~ */ JOURNAL #21302 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Hargrimm jej konfrontoval v této věci, uznal jej vinným a chtěl ho zavřít do jeho komnat až do smrti. Poté se Soego proměnil v krysodlaka, zaútočil na Hargrimma, ale byl rychle zabit.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21297 /* ~"Důkaz je v jeho komnatách, jeho deník. Mluvil jsem s ním o tom a on se přeměnil v krysu velikosti člověka a zaútočil na mě."~ */ JOURNAL #21302 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Hargrimm jej konfrontoval v této věci, uznal jej vinným a chtěl ho zavřít do jeho komnat až do smrti. Poté se Soego proměnil v krysodlaka, zaútočil na Hargrimma, ale byl rychle zabit.~ */ GOTO 42
  IF ~~ THEN REPLY #21299 /* ~"Nevadí. Mám ještě další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #21300 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21304 /* ~"Možná že ti lhali, abys zabil Soega. Uvažoval jsi i o této možnosti?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #57893 /* ~"V jeho obydlí, v deníku, je důkaz. Teď už je ale mrtvý."~ */ JOURNAL #21303 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Řekl, že se tím bude zabývat později.~ */ GOTO 71
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21305 /* ~"Důkaz je v jeho komnatách, jeho deník."~ */ JOURNAL #21302 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Hargrimm jej konfrontoval v této věci, uznal jej vinným a chtěl ho zavřít do jeho komnat až do smrti. Poté se Soego proměnil v krysodlaka, zaútočil na Hargrimma, ale byl rychle zabit.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67794 /* ~"V jeho místnosti je důkaz, jeho deník. Když jsem se ho na to zeptal, změnil se na krysodlaka a zaútočil na mě."~ */ JOURNAL #21302 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Hargrimm jej konfrontoval v této věci, uznal jej vinným a chtěl ho zavřít do jeho komnat až do smrti. Poté se Soego proměnil v krysodlaka, zaútočil na Hargrimma, ale byl rychle zabit.~ */ GOTO 42
  IF ~~ THEN REPLY #21306 /* ~"Tak tedy najdu nějaký jiný důkaz. Mám ještě další otázky."~ */ JOURNAL #21301 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniovkrysami, ale nemohl jsem mu to dokázat k jeho spokojenosti. Snad najdu přesvědčivější důkaz o Soegovi sám.~ */ GOTO 3
  IF ~~ THEN REPLY #21307 /* ~"Nevadí, tak tedy najdu nějaký jiný důkaz. Sbohem."~ */ JOURNAL #21301 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniovkrysami, ale nemohl jsem mu to dokázat k jeho spokojenosti. Snad najdu přesvědčivější důkaz o Soegovi sám.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 40.2 40.3 41.1 41.2 73.0 102.2 102.3 103.1 103.2
  SAY #21309 /* ~"Uvidíme. Seženu Soega a promluvím s ním ohledně této věci v jeho komnatách. Pokud to je pravda, budu ti dlužen poděkování."~ */
  IF ~~ THEN REPLY #21310 /* ~Čekej.~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",1)
SetGlobal("Spawn_Soego","GLOBAL",1)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
FadeToColor([20.0],0)
SetGlobal("1500_Destroy_Duplicate","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 10.0 62.0
  SAY #21311 /* ~Chvíli uvažoval než začal mluvit. "Dokaž Mrtvým národům, že nikomu nemíníš ublížit. Konej dobro. Možná potom vyřídím tvou prosbu Tichému králi."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21312 /* ~"Věděl jsi, že Soego je špión kraniokrys?"~ */ GOTO 40
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
!Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21313 /* ~"Mohu říci Spalovačům, že Pharod jim prodává mrtvoly, které tady ukradl. Jsem si jist, že by jej zastavili."~ */ GOTO 44
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",1)
Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #21314 /* ~"Mohu říci Spalovačům, že Pharod jim prodává mrtvoly, které tady ukradl. Jsem si jist, že by jej zastavili."~ */ DO ~IncrementGlobalOnceEx("GLOBALCHaotic_Hargrimm_2","GLOBALLaw",-2)
~ GOTO 44
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57708 /* ~"Je tady něco, co bych pro tebe mohl udělat?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm mi řekl, abych prohledal okolí Mrtvých národů a zabil každou kraniokrysu, na kterou narazím.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21315 /* ~"Je tu někdo koho potřebuješ zavraždit?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm mi řekl, abych prohledal okolí Mrtvých národů a zabil každou kraniokrysu, na kterou narazím.~ */ GOTO 45
  IF ~~ THEN REPLY #21316 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21317 /* ~"Tak tedy zjistím co se dá dělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.2
  SAY #21319 /* ~"Jsem si jistý, že víš o problémech své nabídky. Nemůžeme ti dovolit odejít s nadějí, že bys takovou věc zvládl."~ */
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #21320 /* ~"Věděl jsi, že Soego je špión kraniokrys?"~ */ GOTO 40
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #57737 /* ~"Je tady něco, co bych pro tebe mohl udělat?"~ */ DO ~SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21318 /* ~Hargrimm mi řekl, abych prohledal okolí Mrtvých národů a zabil každou kraniokrysu, na kterou narazím.~ */ GOTO 45
  IF ~  Global("DN_Rats","AR1500",0)
~ THEN REPLY #21321 /* ~"Je tu někdo koho potřebuješ zavraždit?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_2","GLOBALGood",-1)
SetGlobal("DN_Rats","AR1500",1)
SetGlobal("Hargrimm_Rats","GLOBAL",1)
SetGlobal("Rat_Quest","GLOBAL",1)
~ JOURNAL #21324 /* ~Hargrimm mi řekl, abych prohledal okolí Mrtvých národů a zabil každou kraniokrysu, na kterou narazím.~ */ GOTO 45
  IF ~~ THEN REPLY #21322 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21323 /* ~"Tak si tedy najdu něco jiného co udělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.3 43.4 44.1 44.2
  SAY #21325 /* ~"Ano, možná. Ghúlové občas objeví malou skupinku dobře ukrytých kraniokrys, které sem přišly špehovat. Pokud na nějaké narazíš, určitě je zabij."~ */
  IF ~~ THEN REPLY #21326 /* ~"Řekni mi o kraniokrysách."~ */ GOTO 22
  IF ~~ THEN REPLY #21327 /* ~"Budu si to pamatovat. Mám ještě další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #21328 /* ~"Možná to udělám. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 22.0
  SAY #21329 /* ~"Jejich síla je ve velkých počtech. Pokud bys nacházel a zabíjel malé, oddělené skupiny, silnější hejno by pomalu ztrácelo svou sílu. Například ve svých krysích doupatech na východě jsou velmi mocní. Myslím, že zabití této havěti v Úlu, nahoře, je může oslabit tady, dole."~ */
  IF ~~ THEN REPLY #21330 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21331 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 3.1
  SAY #21332 /* ~Přikývl, zřejmě potěšen. "Máš naše díky. Možná nad tebou Tichý král drží ochranou ruku."~ */
  IF ~  Global("Hargrimm_Trust","AR1500",1)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67795 /* ~"Takže... promluvíš teď k Tichému Králi?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 7
  IF ~  Global("Hargrimm_Trust","AR1500",0)
Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #67796 /* ~"Takže... promluvíš teď k Tichému Králi?"~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 10
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #21333 /* ~"Mám ještě další otázky..."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ GOTO 3
  IF ~~ THEN REPLY #21334 /* ~"Už půjdu. Sbohem."~ */ DO ~IncrementGlobal("Hargrimm_Trust","AR1500",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 74 99 78 even though they appear after this state */
~  Global("DN_Prisoner","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #21335 /* ~Hargrimm ti obřadně přikývl.~ */
  IF ~  GlobalGT("DN_Rats_Dead","AR1500",5)
Global("DN_Rats","AR1500",2)
~ THEN REPLY #67274 /* ~"V troskách staré chodby jsem našel skupinku krys  a pobil jsem je."~ */ DO ~SetGlobal("Rat_Quest","GLOBAL",2)
SetGlobal("DN_Rats","AR1500",3)
AddexperienceParty(3750)
~ EXIT
  IF ~  NumInParty(1)
~ THEN REPLY #63994 /* ~"Mohu si zde odpočinout?"~ */ GOTO 101
  IF ~  NumInParty(1)
~ THEN REPLY #63995 /* ~"Potřeboval bych vyléčil -- můžeš mi pomoci?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63996 /* ~"Můžeme si zde odpočinout?"~ */ GOTO 101
  IF ~  NumInPartyGT(1)
~ THEN REPLY #63997 /* ~"Potřebovali bychom vyléčit -- můžeš nám pomoci?"~ */ DO ~StartStore("Hargrimm",Protagonist)
~ EXIT
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatGT(Protagonist,15,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61825 /* ~"Chtěl jsem se tě zeptat na Ošuntělou Mary... Nemáš problémy, když s ní mluvíš?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Když jsem s Hargrimmem mluvil o tom, že nerozumím Ošuntělé Mary, řekl mi, že se musím  *naučit* s ní mluvit. Snad bude vědět, co tím chtěl říci.~ */ GOTO 100
  IF ~  GlobalGT("Stale_Mary","GLOBAL",0)
CheckStatLT(Protagonist,16,INT)
Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #61826 /* ~"Chtěl jsem se tě zeptat na Ošuntělou Mary... Jak to, že jí rozumíš?"~ */ DO ~SetGlobal("Hargrimm_Clue","AR1500",1)
~ JOURNAL #21235 /* ~Když jsem s Hargrimmem mluvil o tom, že nerozumím Ošuntělé Mary, řekl mi, že se musím  *naučit* s ní mluvit. Snad bude vědět, co tím chtěl říci.~ */ GOTO 100
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21336 /* ~"Neviděl jsi tu někde malou bronzovou kouli?"~ */ GOTO 49
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #64946 /* ~"Věděl jsi, že Soego je špionem kraniových krys?"~ */ GOTO 102
  IF ~~ THEN REPLY #21337 /* ~"Sbohem, Hargrimme."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.7 100.0
  SAY #21338 /* ~Zatřásl hlavou. "Žádnou takovou věc jsem tady neviděl. Možná hlouběji pod Sigilem... prohledej zatopené katakomby. Vstup do těchto prostor najdeš na západ od místa, kterým jsi sem přišel poprvé. Dávej si pozor, abys nevyrušil odpočívající mrtvé, jinak na sebe sešleš hněv Tichého krále!"~ */
  IF ~~ THEN REPLY #21339 /* ~"Díky. Sbohem, Hargrimme."~ */ JOURNAL #21340 /* ~Hargrimm mi poradil, abych prohledal zatopené katakomby za územím Mrtvých národů, že tam možná najdu bronzovou kouli, kterou hledám.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 19.2
  SAY #21341 /* ~"Nevíme. Možná, že se potulují někde jinde. My opouštíme toto místo velmi vzácně." Na chvíli přestal, jako by se chtěl ujistit zda má pokračovat. "Jednou mnoho stínů pobývalo mezi námi, ale pak už nikdy do našich hal nepřišly. Odešly už dávno a my nevíme kam šly. Někteří říkají, že se potulují po rovinách."~ */
  IF ~~ THEN REPLY #21342 /* ~"Potulují se po rovinách?"~ */ JOURNAL #21346 /* ~Hargrimm mi řekl, že mnoho stínů jednou pobývalo v Mrtvých národech. Podle vidění Ošuntělé Mary, byly před dlouhým časem vlákány do pevnosti ve Sféře záporné hmoty.~ */ GOTO 51
  IF ~~ THEN REPLY #21343 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21344 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21345 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #21347 /* ~"Kdysi jsem se na to ptal. Mary říká, že viděla jejich zhoubu ve zjevení. Tvrdí, že byly vlákány do polozbořené pevnosti plující ve Sféře záporné hmoty, do hřbitova žalu, z něhož není úniku."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21348 /* ~"Kdo je Mary?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21349 /* ~"Mary... Ošuntělá Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21350 /* ~"Pevnost ve sféře záporné hmoty?"~ */ GOTO 53
  IF ~~ THEN REPLY #21351 /* ~"Proč tady pobýváte?"~ */ GOTO 55
  IF ~~ THEN REPLY #21352 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21353 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21354 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 53.1 53.2 54.0 54.1 55.1 55.2 56.0 56.1
  SAY #21355 /* ~Přikývl. "Ano, Ošuntělá Mary, možná nad ní Tichý král drží ochrannou ruku. Před dávnými věky byla ve svém životě věštkyně a stále má čas od času vidění."~ */
  IF ~~ THEN REPLY #21356 /* ~"Řekni mi o ní."~ */ GOTO 26
  IF ~~ THEN REPLY #21357 /* ~"Zmínil ses o pevnosti?"~ */ GOTO 53
  IF ~~ THEN REPLY #21358 /* ~"Proč tady pobýváte?"~ */ GOTO 55
  IF ~~ THEN REPLY #21359 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21360 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21361 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.2 52.1 55.3 56.2
  SAY #21362 /* ~"Ano." Kněz kostlivců zatřásl hlavou. "Úplná pošetilost."~ */
  IF ~~ THEN REPLY #21363 /* ~"Proč?"~ */ GOTO 54
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21364 /* ~"Kdo je Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21365 /* ~"Zmínil ses o Mary... Ošuntělé Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21366 /* ~"Proč tady pobýváte?"~ */ GOTO 55
  IF ~~ THEN REPLY #21367 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21368 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21369 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #21370 /* ~"Tato Sféra je místo, ve kterém veškerá energie, která zaplňuje prostory nemrtvých, má svůj zdroj. Když nás opustí život, tak máme naději, že pomocí kouzel a hněvu... a možná dalších věcí..., tato energie snad zaplní prázdný prostor, který nám dává prázdný život. Ale nedokážu pochopit jak něco tady může vůbec *existovat*."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21371 /* ~"Kdo je Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21372 /* ~"Zmínil ses o Mary... Ošuntělé Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21373 /* ~"Proč tady pobýváte?"~ */ GOTO 55
  IF ~~ THEN REPLY #21374 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21375 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21376 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.3 52.2 53.3 54.2
  SAY #21377 /* ~"Tento národ je v naší péči. Jsou ve věčném klidu, v pravé smrti, je nutné je chránit a starat se o ně... jinak by na ně hrůzy katakomb zaútočily a přetrhly by jejich spánek. Pečovat o ně je naše svatá povinnost."~ */
  IF ~~ THEN REPLY #21378 /* ~"Hrůzy katakomb?"~ */ GOTO 56
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21379 /* ~"Kdo je Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21380 /* ~"Zmínil ses o... Ošuntělé Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21381 /* ~"Zmínil ses o pevnosti?"~ */ GOTO 53
  IF ~~ THEN REPLY #21382 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21383 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21384 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #21385 /* ~"Živé... lidské a jiné bestie živící se mrtvolami..., všichni kdo pohrdají naší odpřísáhlou povinností pohřbívat. Snad nás Tichý král ochrání."~ */
  IF ~  Global("Know_Stale_Mary","GLOBAL",0)
~ THEN REPLY #21386 /* ~"Kdo je Mary?"~ */ GOTO 52
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
~ THEN REPLY #21387 /* ~"Zmínil ses o ... Ošuntělé Mary?"~ */ GOTO 52
  IF ~~ THEN REPLY #21388 /* ~"Zmínil ses o pevnosti?"~ */ GOTO 53
  IF ~~ THEN REPLY #21389 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21390 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21391 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 16.0
  SAY #21392 /* ~"Zemřel jsem před dávnými časy a zjistil, že po smrti je pouze zapomnění... naštěstí jsem v poslední chvíli udělal z tohoto okraje krok zpět."~ */
  IF ~~ THEN REPLY #21393 /* ~"Krok zpět?"~ */ GOTO 58
  IF ~~ THEN REPLY #21394 /* ~"Zmínil ses o následovnících. Kdo další je tady?"~ */ GOTO 17
  IF ~~ THEN REPLY #21395 /* ~"Řekni mi o Tichém králi."~ */ GOTO 24
  IF ~~ THEN REPLY #21396 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21397 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #21398 /* ~"Ano, procitl jsem tady. Bloudil jsem katakombami nevýslovně dlouho, než jsem narazil na trůn mého pána, Tichého krále. Promlouval ke mně a od tohoto osudného setkání byly zrozeny Mrtvé národy."~ */
  IF ~~ THEN REPLY #21399 /* ~"Zmínil ses o následovnících. Kdo další je tady?"~ */ GOTO 17
  IF ~~ THEN REPLY #21400 /* ~"Řekni mi o Tichém králi."~ */ GOTO 24
  IF ~~ THEN REPLY #21401 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21402 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 10.1
  SAY #21403 /* ~"Nejprve bych rád věděl proč jsi tady."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21404 /* ~"Něco hledám. Malou bronzovou kouli."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21405 /* ~"Poslal mě Mnohojeden ze společenství kraniokrys."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21406 /* ~"Hledám Soega."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21407 /* ~"Nemám žádný důvod."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21408 /* ~Lež: "Nemám žádný důvod."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21409 /* ~Lež: "Nemám žádný důvod."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21410 /* ~Lež: "Nemám žádný důvod."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21411 /* ~"To není tvoje starost."~ */ GOTO 60
  IF ~~ THEN REPLY #21412 /* ~"Nevadí. Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21413 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.7
  SAY #21414 /* ~Kostlivec pokrčil rameny a mávl rukou. "Ať je po tvém. Užívej si tady."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21415 /* ~"Něco hledám. Malou bronzovou kouli."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21416 /* ~"Poslal mě Mnohojeden ze společenství kraniových krys."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21417 /* ~"Hledal jsem Soega."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21418 /* ~"Nemám žádný důvod."~ */ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21419 /* ~Lež: "Nemám žádný důvod."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21420 /* ~Lež: "Nemám žádný důvod."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21421 /* ~Lež: "Nemám žádný důvod."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 63
  IF ~~ THEN REPLY #21422 /* ~"Počkej. Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21423 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.2 60.2 63.2
  SAY #21424 /* ~"Kolik ještě lidí pošle do našich hal ten mrtvolně bledý uctívač?! Armády? Celé regimenty?! Možná všechny ze Sigilu?!" Kostlivec obrátil pozornost na tebe. "Jsi ve společenství Spalovačů? Nosíš jejich pouta víry a padáš na kolena před jejich směšnou představou o pravé smrti?"~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21425 /* ~"Ne."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21426 /* ~"Ano."~ */ GOTO 62
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21427 /* ~Lež: "Ne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_4","GLOBALLaw",-1)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1 61.2 63.3 63.4 63.5 63.6 67.0 68.0
  SAY #21428 /* ~"Pche!" Kostlivec se od tebe odvrátil a zatřásl hlavou.~ */
  IF ~~ THEN REPLY #21429 /* ~"Tedy...?"~ */ DO ~SetGlobal("DN_Reason","AR1500",1)
~ GOTO 43
END

IF ~~ THEN BEGIN 63 // from: 59.3 59.4 59.5 59.6 60.3 60.4 60.5 60.6
  SAY #21430 /* ~"Opravdu? Nemůžu tomu uvěřit."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #21431 /* ~"Něco hledám. Malou bronzovou kouli."~ */ GOTO 33
  IF ~  Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21432 /* ~"Poslal mě Mnohojeden ze společenství kraniokrys."~ */ GOTO 64
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
~ THEN REPLY #21433 /* ~"Hledal jsem Soega."~ */ GOTO 61
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21434 /* ~"To je pravda."~ */ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21435 /* ~Lež: "To je pravda."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  !Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21436 /* ~Lež: "To je pravdu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~  Global("Pharod_Quest","GLOBAL",1)
Global("CR_Vic","GLOBAL",1)
~ THEN REPLY #21437 /* ~Lež: "To je pravda."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_3","GLOBALLaw",-1)
~ GOTO 62
  IF ~~ THEN REPLY #21438 /* ~"Nevadí. Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21439 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 59.1 60.1 63.1
  SAY #21440 /* ~"Pro Tichého krále! Ty jsi ve společenství těch *škůdců!?"* Začínal zuřit. "Ty se držíš záměrů těchto zmatených pojídačů mrtvol, kteří znesvěcují hroby v naší péči a živí se jejich zbytky?!"~ */
  IF ~~ THEN REPLY #21441 /* ~"Omlouvám se..."~ */ GOTO 65
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21442 /* ~"Ano. A co?"~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21443 /* ~"Ano. A co?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #21444 /* ~"Jak jsi mohl! Pro co tě sem poslali?"~ */
  IF ~~ THEN REPLY #21445 /* ~"Zabít Tichého krále."~ */ GOTO 68
  IF ~~ THEN REPLY #21446 /* ~Lež: "Vyjednat příměří."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
  IF ~~ THEN REPLY #21447 /* ~Lež: "Ze žádného důvodu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #21448 /* ~Mihotající se rudá světla jeho očí se zúžila. "Tomu nevěřím. Možná máš jinou odpověď, která by byla blíže pravdě."~ */
  IF ~~ THEN REPLY #21449 /* ~"Zabít Tichého krále."~ */ GOTO 68
  IF ~~ THEN REPLY #21450 /* ~Lež: "Vyjednat příměří."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_5","GLOBALLaw",-1)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 65.1 66.1
  SAY #21451 /* ~"Tady není o čem vyjednávat. Příměří funguje. Naučili se respektovat naše hranice a my respektujeme jejich."~ */
  IF ~~ THEN REPLY #21452 /* ~"Rozhodně, to je můj důvod proč jsem tady."~ */ GOTO 62
END

IF ~~ THEN BEGIN 68 // from: 65.0 66.0
  SAY #21453 /* ~"Jak odvážné, vstoupil jsi do našich hal a vyhrožuješ našemu pánu?! A navíc z příkazu mozku havěti? Budeš trpět pro svou drzost!"~ */
  IF ~~ THEN REPLY #21454 /* ~"Pouze říkám pravdu. Nepřeji si jej teď zabít."~ */ GOTO 62
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21455 /* ~"Ať tedy trpím."~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21456 /* ~"Ať tedy trpím."~ */ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 64.1 68.1
  SAY #21457 /* ~"Tyto katakomby opustíš pouze v trusu ghúlů! Snad nám Tichý král prokáže v boji přízeň!"~ */
  IF ~~ THEN REPLY #21458 /* ~Postav se jejich útoku.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #21459 /* ~Uteč.~ */ DO ~Enemy()
SetGlobal("Undead_Alert","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 64.2 68.2
  SAY #21462 /* ~Pozvedl svou hůl, pak se najednou zarazil. "Běda!  Máš velké štěstí a milost Tichého krále, že ctíme smrtelnou smlouvu. Buď ujištěn, že *nikdy* neopustíš tyto katakomby. Sbohem."~ */
  IF ~~ THEN REPLY #21461 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 40.1 41.0
  SAY #21463 /* ~"Podívám se na to. Pokud je to pravda, budu ti dlužen poděkování."~ */
  IF ~~ THEN REPLY #21464 /* ~"Mám ještě další otázky..."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
ClearAllActions()
~ GOTO 3
  IF ~~ THEN REPLY #21465 /* ~"Už půjdu. Sbohem."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 72 // from: 21.0
  SAY #21466 /* ~"Jsou stále hladoví. Pokud bychom je neměli pod kontrolou, tak by divoce vtrhli do Pohřbené vesnice a doupat kraniokrys, vše by pozabíjeli a pak by se vrátili zničit vše co je tady."~ */
  IF ~~ THEN REPLY #21467 /* ~"Řekni mi o Acaste."~ */ GOTO 32
  IF ~~ THEN REPLY #21468 /* ~"Kdo jiný obývá toto místo?"~ */ GOTO 17
  IF ~~ THEN REPLY #21469 /* ~"Mám ještě další otázky..."~ */ GOTO 3
  IF ~~ THEN REPLY #21470 /* ~"To je všechno, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #21471 /* ~"Možná utekl kvůli něčemu jinému. Uvažoval jsi i o této možnosti?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #21472 /* ~"Důkaz je v jeho komnatách, jeho deník."~ */ JOURNAL #21302 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Hargrimm jej konfrontoval v této věci, uznal jej vinným a chtěl ho zavřít do jeho komnat až do smrti. Poté se Soego proměnil v krysodlaka, zaútočil na Hargrimma, ale byl rychle zabit.~ */ GOTO 42
  IF ~~ THEN REPLY #21473 /* ~"Tak tedy najdu nějaký jiný důkaz. Mám ještě další otázky."~ */ GOTO 3
  IF ~~ THEN REPLY #21474 /* ~"Nevadí, tak tedy najdu nějaký jiný důkaz. Sbohem."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 99 78 even though they appear after this state */
~  Global("Prisoner_Movie","GLOBAL",1)
~ THEN BEGIN 74 // from:
  SAY #21475 /* ~"Stůj! Zašel jsi příliš daleko, cestovateli a překročil jsi hranice Mrtvých národů, říši Tichého krále! Podřídíš se v klidu a míru?"~ */
  IF ~~ THEN REPLY #21476 /* ~"Podřídit se čemu?"~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("Know_Hargrimm","GLOBAL",1)
SetGlobal("Know_Silent_King","GLOBAL",1)
SetGlobal("Hargrimm_Talk","AR1500",2)
SetDoorLocked("AR1500D1",TRUE)
SetDoorLocked("AR1500D2",TRUE)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #21477 /* ~"Je to vůle Tichého krále. Kdo projde branou k našim národům, stane se vězněm této země. Podřídíš se?"~ */
  IF ~~ THEN REPLY #21478 /* ~"Dobrá, podřídím se."~ */ GOTO 76
  IF ~~ THEN REPLY #21479 /* ~"Ne, nepodřídím."~ */ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #21480 /* ~"Tak tedy pojď... doprovodíme tě do kaple. Pamatuj si toto: můžeš se volně procházet těmito halami, ale nesmíš opustit katakomby. Budeš zde vězněm až do své smrti. Až poté povstaneš, stejně jako my, budeš volný. Modli se k Tichému králi. Jeho vůle bude naplněna."~ */
  IF ~~ THEN REPLY #21481 /* ~Následuj je.~ */ DO ~SetGlobal("Prisoner_Movie","GLOBAL",2)
SetGlobal("DN_Surrender","AR1500",1)
StartCutSceneMode()
StartCutSceneEx("1500cs3",FALSE)
~ JOURNAL #61610 /* ~Setkal sem se s jakýmsi mocným nemrtvým kouzelníkem, který prohlašoval, že jsem vnikl na území Mrtvých Národů, říše nějakého 'Tichého Krále.' Když jsem souhlasil že se vzdám, byl mi umožněn volný pohyb po jejich území, avšak s tím, že nesmím opustit katakomby. Ten kostlivý kněz mi řekl,  že budu vězněm až dokud nezemřu, pak obživnu stejně jako oni a konečně budu svobodný. Snad je tu i jiná cesta...~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1
  SAY #21482 /* ~"Pak tedy zde zemřeš, v halách Tichého krále."~ */
  IF ~~ THEN REPLY #21483 /* ~"Dobrá, podřídím se."~ */ GOTO 76
  IF ~~ THEN REPLY #21484 /* ~"Ať se tedy stane."~ */ DO ~SetGlobal("Undead_Alert","AR1500",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ JOURNAL #61609 /* ~Setkal sem se s jakýmsi mocným nemrtvým kouzelníkem, který prohlašoval, že jsem vnikl na území Mrtvých Národů, říše nějakého 'Tichého Krále.' Jakmile jsem se odmítl vdát, napadl mě se svýmy nemrtvými pomocníky.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Throne_Movie","GLOBAL",1)
~ THEN BEGIN 78 // from:
  SAY #23955 /* ~"Tak ty jsi přišel." Kostlivec se otočil, aby upřel svůj zrak nad masivní trůn. "Jak vidíš, tady končí naše kultura."~ */
  IF ~~ THEN REPLY #24110 /* ~"Co myslíš?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
  IF ~~ THEN REPLY #24112 /* ~"Je tohle Tichý král?"~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #24114 /* ~Počkej potichu než bude pokračovat.~ */ DO ~SetGlobal("Throne_Movie","GLOBAL",2)
SetGlobal("Play_Throne_Movie","GLOBAL",2)
SetGlobal("Silent_King","GLOBAL",1)
~ GOTO 80
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #23956 /* ~"Ano."~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 78.0 78.2 79.0
  SAY #23957 /* ~"Nikdo se nesmí dovědět, že král mluví jenom potichu."~ */
  IF ~~ THEN REPLY #24117 /* ~"Jak dlouho to pokračuje dál?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24119 /* ~"Proč nemluví?"~ */ GOTO 82
END

IF ~~ THEN BEGIN 81 // from:
  SAY #23958 /* ~Hargrimm se vynoří ze stínu. "Už je to dlouho, co s námi přestal mluvit -- on sám zatraceně třikrát unikl jisté smrti." Stopy hněvu a zoufalství trčí z jeho hlasu. "Zanechal nás tady, abychom trpěli mezi živými! Dostalo se nám... modlitby... všech těch živých."~ */
  IF ~~ THEN REPLY #24121 /* ~"Proč tedy vládne?"~ */ GOTO 83
  IF ~~ THEN REPLY #24124 /* ~"Pokud je tomu tak... jak vládne?"~ */ GOTO 84
  IF ~~ THEN REPLY #24126 /* ~"Kdo tedy opravdu vládne?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY #23959 /* ~"Je tichý, protože opouští toto místo. Zanechal nás tady jisté smrti... a na jeho místě tady zbyl jenom tento chrapot."~ */
  IF ~~ THEN REPLY #24129 /* ~"Jak dlouho to takhle pokračuje dál?"~ */ EXTERN ~DSTALEMA~ 48
  IF ~~ THEN REPLY #24131 /* ~"Proč tedy vládne?"~ */ GOTO 83
  IF ~~ THEN REPLY #24133 /* ~"Pokud je tomu tak... jak vládne?"~ */ GOTO 84
  IF ~~ THEN REPLY #24134 /* ~"Kdo tedy opravdu vládne Mrtvým národům?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 83 // from: 81.0 82.1 84.0
  SAY #23960 /* ~"Vládne, protože musí."~ */
  IF ~~ THEN REPLY #24135 /* ~"Ale pokud je mrtev... jak?"~ */ GOTO 84
  IF ~~ THEN REPLY #24136 /* ~"Kdo tedy opravdu vládne Mrtvým národům?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 84 // from: 81.1 82.2 83.0
  SAY #23961 /* ~"My tlumočíme přání Tichého krále na základě toho, co nám řekl mnoho dlouhých let předtím. Není to snadné..." Je slyšet, že je Hargrimm unavený; prohýbá se pod tíhou neviditelného nákladu. "Mnoho otázek, mnoho otázek mám pro něho."~ */
  IF ~~ THEN REPLY #24139 /* ~"Proč stále vládne?"~ */ GOTO 83
  IF ~~ THEN REPLY #24141 /* ~"Tak kdo tady skutečně vládne?"~ */ GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 81.2 82.3 83.1 84.1
  SAY #23962 /* ~"S Tichým králem mluvíme já a Mary. Vládneme jeho jménem."~ */
  IF ~~ THEN REPLY #24143 /* ~"Proč neřekneš svým lidem pravdu?"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #23963 /* ~"Přeji si, aby se zachovalo všechno, co jsme vytvořili. Nechci zemřít."~ */
  IF ~~ THEN EXTERN ~DSTALEMA~ 49
END

IF ~~ THEN BEGIN 87 // from:
  SAY #23964 /* ~"Kdyby se o tom dozvěděli naši vlastní lidé... nebo kdyby Acaste objevila tento podvod... nebo Mnohojeden, kdyby měli tušení kraniové krysy... všechno to, co jsme vytvořili, by bylo zničeno. Tento chrapot je všechno, co drží všechny ty vnitřní i venkovní nepřátele v šachu. Kdyby pravda vyšla najevo, obrátila by se naše malá civilizace v prach."~ */
  IF ~~ THEN REPLY #24150 /* ~"Pokračuj..."~ */ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #23965 /* ~"Nemohu tě nutit, abys mlčel. Ale rád bych tě požádal, aby sis uvědomil, co by se stalo, kdyby ses jenom slůvkem zmínil o tom, cos tu viděl."~ */
  IF ~~ THEN REPLY #24152 /* ~Nabídni slib: "Přeji si jen odejít, Hargrimme. Umožni mi to a já budu mlčet."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24154 /* ~Nabídni falešný slib: "Přeji si jen odejít, Hargrimme. Umožni mi to a já budu mlčet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-1)
~ GOTO 89
  IF ~~ THEN REPLY #24156 /* ~"Tví lidé by měli být informováni. Když bude tvoje civilizace zničena."~ */ GOTO 90
  IF ~~ THEN REPLY #24159 /* ~"Proč nevsadíte na trůn nového krále?"~ */ GOTO 93
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1 93.2 93.3 94.1 94.2 96.0 96.1
  SAY #23966 /* ~Hargrimm se na moment odmlčí. "Můžeš opustit toto místo. Jdi, teď... a prosím tě: važ si svého světa."~ */
  IF ~~ THEN REPLY #24164 /* ~"Díky. Sbohem."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~Použil jsem portál, o kterém mi řekla Ošuntělá Mary a vstoupil jsem do trůnní místnosti Tichého Krále. Tam jsem zjistil, že vládce Mrtvých Národů je jenom vyschlá mrtvola. Slíbil jsem, že nikomu neprozradím, co jsem se dozvěděl a za to mně Hargrimm uvolnil, mohu z Mrtvých N8rodů klidně odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.2 93.4 94.3 96.2
  SAY #24092 /* ~Hargrimm se na chvíli odmlčí. "Ještě jednou, nemohu tě donutit, abys zůstal zticha. Ale musím vědět, jestli jim to řekneš nebo ne."~ */
  IF ~~ THEN REPLY #24166 /* ~"Řeknu jim."~ */ GOTO 98
  IF ~~ THEN REPLY #24181 /* ~Pravda: "Neřeknu jim to."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 91
  IF ~~ THEN REPLY #24182 /* ~Lež: "Neřeknu jim to."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.1 90.2
  SAY #24093 /* ~"Jsem ti vděčný. Můžeš opustit toto místo teď, pokud chceš. Použij dveře na severním konci trůnní místnosti."~ */
  IF ~~ THEN REPLY #24183 /* ~"Díky. Sbohem."~ */ DO ~AddexperienceParty(7500)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ JOURNAL #67162 /* ~Použil jsem portál, o kterém mi řekla Ošuntělá Mary a vstoupil jsem do trůnní místnosti Tichého Krále. Tam jsem zjistil, že vládce Mrtvých Národů je jenom vyschlá mrtvola. Slíbil jsem, že nikomu neprozradím, co jsem se dozvěděl a za to mně Hargrimm uvolnil, mohu z Mrtvých N8rodů klidně odejít.~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #24094 /* ~Beze všeho.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from: 88.3
  SAY #24095 /* ~"Král musí být živý, když sedí na trůně. Ten nepřijme nikoho jiného. Pokud jednou někdo na trůně sedí..." Hargrimmův tón hlasu se stává mnohem zlověstnějším: "...nemůže ho opustit."~ */
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
Global("Soego_Fled","GLOBAL",0)
~ THEN REPLY #24185 /* ~"A co  Soego?"~ */ GOTO 94
  IF ~~ THEN REPLY #24186 /* ~"Stanu se vaším králem, když mě budete ctít."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24187 /* ~Nabídni slib: "Přeju si jenom odejít, Hargrimme. Umožni mi to a já budu mlčet."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24188 /* ~Nabídni falešný slib: "Přeju si jenom odejít, Hargrimme. Umožni mi to a já budu mlčet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24189 /* ~"Tví lidé by měli být informování. Když bude tvoje civilizace zničena."~ */ GOTO 90
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #24096 /* ~"Soego by nebyl dobrým králem. Je příliš zamilován do svého vlastního hlasu, než aby zůstal zticha. Taková pozice na trůně by ho také oloupila o Pravou smrt. Bylo by to rouhání, pokusit se okrást nás o životy, které vlastníme."~ */
  IF ~~ THEN REPLY #24190 /* ~"Stanu se vašim králem, když mě budete chtít."~ */ EXTERN ~DSTALEMA~ 50
  IF ~~ THEN REPLY #24191 /* ~Nabídni slib: "Přeju si jenom odejít, Hargrimme. Umožni mi to a já budu mlčet."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24192 /* ~Nabídni falešný slib: "Přeju si jenom odejít, Hargrimme. Umožni mi to a já budu mlčet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24193 /* ~"Tví lidé by měli být informování. Když bude tvoje civilizace zničena."~ */ GOTO 90
END

IF ~~ THEN BEGIN 95 // from:
  SAY #24097 /* ~"Když jednou někdo sedí na trůně, oni ho nemůžou nikdy vynechat. Smrt... Pravá smrt... jediná může uvolnit Tichého krále."~ */
  IF ~~ THEN REPLY #24194 /* ~"Ano. Udělám to..."~ */ EXTERN ~DSTALEMA~ 51
  IF ~~ THEN REPLY #24195 /* ~"V tomto případě, ne."~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.1 97.0
  SAY #24098 /* ~"Víc, než jsem myslel." Hargrimm vzdychá, zvedá se oblak prachu. "Tak... stále bych rád věděl, jestli budeš mluvit pravdivě o povaze Tichého krále, nebo ne."~ */
  IF ~~ THEN REPLY #24196 /* ~Nabídni slib: "Přeju si jenom odejít, Hargrimme. Umožni mi to a já budu mlčet."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hargrimm_1","GLOBALLaw",1)
~ GOTO 89
  IF ~~ THEN REPLY #24197 /* ~Nabídni falešný slib: "Přeju si jenom odejít, Hargrimme. Umožni mi to a já budu mlčet."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_6","GLOBALLaw",-2)
~ GOTO 89
  IF ~~ THEN REPLY #24198 /* ~"Tví lidé by měli být informování. Když bude tvoje civilizace zničena."~ */ GOTO 90
END

IF ~~ THEN BEGIN 97 // from:
  SAY #24099 /* ~Hargrimm kyne hlavou a ukazuje směrem k trůnu. "Tak přijmi svůj trůn, ó Tichý králi..."~ */
  IF ~~ THEN REPLY #24199 /* ~"Počkej... Raději ne."~ */ GOTO 96
  IF ~~ THEN REPLY #24200 /* ~Ujmi se trůnu.~ */ DO ~SetGlobal("Took_Throne","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 90.0
  SAY #24100 /* ~Kostlivec kněze smutně potřásá svojí hlavou. "Bohužel to nemůžeme dovolit, Žijící. Možná mi Tichý král prokáže laskavost lahví..."~ */
  IF ~~ THEN REPLY #24201 /* ~Bojuj.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #24202 /* ~Zdrhej.~ */ DO ~SetGlobal("1501_Undead_Alert","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR1501")
~ THEN BEGIN 99 // from:
  SAY #58914 /* ~Hargrimm slavnostně ukázal na široké dveře na jižní části trůnní místnosti Tichého Krále. "Teď odejdi, ó Živý, a pamatuj: nemluv o tomto. Pokud bys se mnou chtěl znovu mluvit, můžeš to udělat venku, ne v této svaté místnosti."~ */
  IF ~~ THEN REPLY #58915 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 48.5 48.6
  SAY #61822 /* ~Než kostlivec odpověděl, nastala dlouhá pauza. "Musíš se *naučit* poslouchat, to je všechno."~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #61823 /* ~"Aha. A neviděl jsi tady někde malou bronzovou kouli?"~ */ GOTO 49
  IF ~~ THEN REPLY #61824 /* ~"Ještě si s tebou možná promluvím. Sbohem, Hargrimme."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 48.1 48.3
  SAY #63992 /* ~Hargrimm na tebe v tichosti na chvíli zírá, pak slabě zavzdychá. "Je bezpečno, tady. Odpočinek."~ */
  IF ~~ THEN REPLY #63993 /* ~"Díky."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 48.8
  SAY #64947 /* ~Tiskne se to k tobě, vnímáš jen prach a tlející látku. "O čem že to mluvíš, cože? Jaký máš důkaz toho, že Soego je spolčen se škůdci?"~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",1)
~ THEN REPLY #64954 /* ~"Hovořil jsem s nimi a oni mi to tak řekli."~ */ GOTO 103
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #64955 /* ~"Důkaz je v jeho deníku. Ačkoliv je teď již mrtev."~ */ JOURNAL #21303 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Řekl, že se tím bude zabývat později.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64956 /* ~"Důkaz je v jeho deníku.."~ */ JOURNAL #21302 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Hargrimm jej konfrontoval v této věci, uznal jej vinným a chtěl ho zavřít do jeho komnat až do smrti. Poté se Soego proměnil v krysodlaka, zaútočil na Hargrimma, ale byl rychle zabit.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #64957 /* ~"Důkaz je v jeho deníku. Hovořil jsem s ním o tom, proměnil se v lidskou krysu a napadl mě."~ */ JOURNAL #21302 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Hargrimm jej konfrontoval v této věci, uznal jej vinným a chtěl ho zavřít do jeho komnat až do smrti. Poté se Soego proměnil v krysodlaka, zaútočil na Hargrimma, ale byl rychle zabit.~ */ GOTO 42
  IF ~~ THEN REPLY #64959 /* ~"V pořádku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #64948 /* ~"Mohli ti klamat a ty jsi tak zabil Soega. Přemýšlel jsi na tím taky takhle?"~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67797 /* ~"V jeho místnosti je důkaz, jeho deník.  Ale on už je mrtvý."~ */ JOURNAL #21303 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Řekl, že se tím bude zabývat později.~ */ GOTO 104
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67798 /* ~"V jeho místnosti je důkaz, jeho deník."~ */ JOURNAL #21302 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Hargrimm jej konfrontoval v této věci, uznal jej vinným a chtěl ho zavřít do jeho komnat až do smrti. Poté se Soego proměnil v krysodlaka, zaútočil na Hargrimma, ale byl rychle zabit.~ */ GOTO 42
  IF ~  Global("Soego_Journal","GLOBAL",1)
Global("Soego_Fled","GLOBAL",1)
Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67799 /* ~"V jeho místnosti je důkaz, jeho deník. Když jsem se ho na to zeptal, změnil se na krysodlaka a zaútočil na mě."~ */ JOURNAL #21302 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniokrysami. Hargrimm jej konfrontoval v této věci, uznal jej vinným a chtěl ho zavřít do jeho komnat až do smrti. Poté se Soego proměnil v krysodlaka, zaútočil na Hargrimma, ale byl rychle zabit.~ */ GOTO 42
  IF ~~ THEN REPLY #64962 /* ~"Nevadí, půjdu najít nějaký další důkaz. Sbohem."~ */ JOURNAL #21301 /* ~Řekl jsem Hargrimmovi o spolčení Soega s kraniovkrysami, ale nemohl jsem mu to dokázat k jeho spokojenosti. Snad najdu přesvědčivější důkaz o Soegovi sám.~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #64949 /* ~"Chtěl bych té věci přijít na kloub. Může to být pravda, jsem tvým dlužníkem, děkuji."~ */
  IF ~~ THEN REPLY #64963 /* ~"Musím jít. Sbohem."~ */ DO ~SetGlobal("Soego_Exposed","GLOBAL",2)
IncrementGlobal("Hargrimm_Trust","AR1500",1)
AddexperienceParty(3750)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 10.2
  SAY #67800 /* ~Kostlivec kněz hluboce zamručel, světélka v jeho očích pohasla, jak se pohroužil do svých myšlenek. "Soego. Zbav nás přítomnosti toho Spalovače prokletého a já tvým jménem k Tichému Králi o tvé svobodě promluvím. Ale... *netoužím*, bys ho zavraždil. Pouze nám důvod dej, kterýť umožnil by nám jeho se zbaviti a z Národů mrtvých ho odstraniti."~ */
  IF ~  Global("Know_Soego_Rats","GLOBAL",0)
Global("Soego_Journal","GLOBAL",0)
Global("DN_Soego_Killed","GLOBAL",1)
~ THEN REPLY #67802 /* ~"Soego? Oh... je mrtvý."~ */ GOTO 106
  IF ~  OR(2)
!Global("Know_Soego_Rats","GLOBAL",0)
!Global("Soego_Journal","GLOBAL",0)
Global("Soego_Exposed","GLOBAL",0)
~ THEN REPLY #67803 /* ~"Víš, že je to špión krys?"~ */ GOTO 40
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #67804 /* ~"Co je za problém se Soegem?"~ */ GOTO 29
  IF ~~ THEN REPLY #67805 /* ~

"Podívám se na to. Mám pár dalších otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #67806 /* ~"Uvidím, co s tím půjde udělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #67801 /* ~"On jest...? Pche! Předpokladem mým jest, že přeješ si, bych jménem tvým k Tichému králi  promluvil... ale tak neučiním! Dokud mi vraždu Soega neobjasníš, místo toto neopustíš."~ */
  IF ~~ THEN REPLY #67807 /* ~"Fajn. Mám pár otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #67808 /* ~"Tak zkusím teda něco najít."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 3.9 3.10 3.11 3.12
  SAY #68089 /* ~"Ne. Kdybys ty nebyl býval vězněm na tomto místě, jež smrt svou očekává, má odpověď by jiná býti mohla."~ */
  IF ~~ THEN REPLY #68090 /* ~"Proč *jsem* vězněm?"~ */ GOTO 12
  IF ~~ THEN REPLY #68091 /* ~"Mám pár dalších otázek..."~ */ GOTO 3
  IF ~~ THEN REPLY #68092 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END
