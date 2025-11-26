// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISHO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #50027 /* ~Vidíš rudovlasou ženu, malou a buclatou. Její tvář je zvrásněna záští, obavami a starostmi, které ji asi sžíraly příliš dlouho. Když ses přiblížil, ušklíbla se a odvrátila hlavu, abys nemohl vidět její oči - chová se, jako by si myslela, že když ona nevidí tebe, nevidíš ani ty ji. Pro ni ani neexistuješ.~ */
  IF ~~ THEN REPLY #50029 /* ~"Takže sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #50030 /* ~Tato žena tě stále nezlomně ignoruje. Nic z toho, co jí říkáš, na ni nedělá dojem.~ */
  IF ~~ THEN REPLY #50031 /* ~"Tak tedy dobrá."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 2 // from:
  SAY #50033 /* ~Vidíš rudovlasou ženu, malou a buclatou. Její tvář je zvrásněna záští, obavami a starostmi, které ji asi sžíraly příliš dlouho. Zachraptí: "Ty seš ten, co se chce dostat do podzemí, jo? Musíš prokázat Doně Quisho službičku, než ti dá svůj díl klíče. V tomto městě je uvězněn jeden fiend. Potřebuju ho osvobodit." Než stačíš jakkoli zareagovat, vmáčkne ti do ruky svitek.~ */
  IF ~~ THEN REPLY #50035 /* ~"Proč?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50036 /* ~"S osvobozováním fiendů nechci nic mít."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50038 /* ~"Řekni mi, co mám udělat."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50039 /* ~"Fall-from-Grace, jaký je tvůj názor?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #50040 /* ~"Protože je můj! Protože jsem pro něj hodně obětovala! Protože mi ho vzali, schovali přede mnou a uvěznili a nikdo mi nebyl ochotný pomoct, přestože to bylo vše, co jsem pro sebe kdy chtěla!" Její hlas se stal mazaným. "Ale teď mám vědomosti, které ty potřebuješ a nikdy je nedostaneš, pokud Agril-Shanaka nepustíš."~ */
  IF ~~ THEN REPLY #50041 /* ~"Jak mám vědět, že se nerozběsní?"~ */ GOTO 6
  IF ~~ THEN REPLY #50042 /* ~"S osvobozováním findů nechci nic mít."~ */ GOTO 4
  IF ~~ THEN REPLY #50043 /* ~"Řekni mi, co mám udělat."~ */ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50044 /* ~"Fall-from-Grace, jaký je tvůj názor?"~ */ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 8.1
  SAY #50045 /* ~Vysměje se ti do obličeje. "To je jedno. Potřebuješ pátý díl Klíče. Já ho mám. A pokud si nechceš do toho tvého drahého podzemí hledat jinou cestu, pak musíš udělat, co řeknu."~ */
  IF ~~ THEN REPLY #50046 /* ~"Jak mám vědět, že se nerozběsní?"~ */ GOTO 6
  IF ~~ THEN REPLY #50047 /* ~"Neudělám to."~ */ GOTO 7
  IF ~~ THEN REPLY #50048 /* ~"Řekni mi, co mám udělat."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.2 6.0 8.2
  SAY #50049 /* ~"Najdi ve městě sýpku. Najdi v ní pentagram vyrytý do podlahy. Použij u něj ten svitek a jak se Agril-Shanak objeví... osvoboď jej. Vyjednej si s ním jakoukoliv odměnu, ale propusť jej. Je mi jedno, co uděláš potom."~ */
  IF ~~ THEN REPLY #50050 /* ~"Dobrá. Sbohem."~ */ JOURNAL #50051 /* ~Pro pátou část Klíče mám ve městě najít sýpku, najít uvnitř pentagram, u toho pentagramu použít svitek a osvobodit fienda Agril-Shanaka. Až to udělám, mám se vrátit k Doně Quisho pro Klíč.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0
  SAY #50052 /* ~Oči jí zalil lehký úsměv, jeden z nejjedovatějších úsměvů, jaký jsi kdy viděl. "To mě vůbec nezajímá. Vyřiď si to s tím fiendem, jak chceš. Já jej jen chci mít volného."~ */
  IF ~~ THEN REPLY #50053 /* ~"Co mám udělat?"~ */ GOTO 5
  IF ~~ THEN REPLY #50054 /* ~"Neudělám to."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 9.1
  SAY #50055 /* ~"Pak nedostaneš pátý díl Klíče. Až změníš názor, pak ano. V tom případě se vrať." Zachichotá se a odvrátí se od tebe.~ */
  IF ~~ THEN REPLY #50056 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",5)
Global("Free_Fiend","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #50057 /* ~Když jsi k ní přišel tentokrát, odhodlaně na tebe upřela svůj zrak. Zachraptěla, "Ty seš ten, co se chce dostat do podzemí, jo? Musíš prokázat Doně Quisho službičku, než ti dá svůj díl klíče. V tomto městě je uvězněn jeden fiend. Potřebuju ho osvobodit." Než stačíš jakkoli zareagovat, vmáčkne ti do ruky svitek.~ */
  IF ~~ THEN REPLY #50058 /* ~"Proč?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50059 /* ~"S osvobozováním fiendů nechci nic mít."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50060 /* ~"Řekni mi, co mám udělat."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50061 /* ~"Fall-from-Grace, jaký je tvůj názor?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~  GlobalGT("Free_Fiend","GLOBAL",0)
GlobalLT("Free_Fiend","GLOBAL",3)
~ THEN BEGIN 9 // from:
  SAY #50062 /* ~Jak ses přiblížil, Dona Quisho vzhlédla a její rysy zaplavilo opovržení. "Ještě jsi Agril-Shanaka neosvobodil, nebo ano? Vrať se, až to uděláš."~ */
  IF ~~ THEN REPLY #50063 /* ~"Cože jsem to měl udělat?"~ */ GOTO 10
  IF ~~ THEN REPLY #50064 /* ~"Já to neudělám."~ */ GOTO 7
  IF ~~ THEN REPLY #50065 /* ~"Dobrá. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #50066 /* ~Netrpělivě vydechne. "Sýpka. Pentagram. Přečíst svitek. To je tak těžký? Do toho." Otočila se pryč.~ */
  IF ~~ THEN REPLY #50067 /* ~"Takže sbohem."~ */ EXIT
END

IF ~  Global("Free_Fiend","GLOBAL",3)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #50068 /* ~"Jsi hotov, že ano? Ano, jsi... ale kde je Agril-Shanak?"~ */
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50069 /* ~Pravda: "Je mrtvý."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 13
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50070 /* ~Lež: "Bude tady."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50071 /* ~"Jsem si jist, že tu za chvíli bude."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #68287 /* ~"Nechal jsem ho v pentagramu. Můžeš si ho uvolnit sama. Já ho znovu přivolal. Zbytek je na tobě."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.2 11.3
  SAY #50072 /* ~Zasmála se. "A my teď uskutečníme své plány, položíme své pasti a oni budou litovat svých omylů, ó ano." Vmáčkne ti do rukou pytlík mincí. "Tady je poslední část Klíče: 'Jako z Centra natřikráte k nejkrajnějšímu pólu.' Vrať se k Poskvrněnému Barsovi a promluv si s ním; nasměruje tě správným směrem." Stále se smějící posbírala své věci a odcupitala ven.~ */
  IF ~~ THEN REPLY #50073 /* ~"Sbohem..."~ */ DO ~GivePartyGold(1500)
AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50074 /* ~Dona Quisho mi dala pátý díl ke Klíči: "Jako z Centra natřikráte k nejkrajnějšímu pólu." Zamumlala si něco o odplatě a řekla mi, že si mám znovu zajít promluvit se Zkaženým Vrdelem o použití klíče.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #50075 /* ~Její obličej pobledl. "Mrtvý... ale... ? Ty jsi jej zabil? Pak jsem ztracena. Vem si svůj zatracený klíč a jdi." Jako bez života zanotovala tato slova: "Jako z Centra natřikráte k nejkrajnějšímu pólu." Chvíli se rozhlížela. "Promluv si znovu s Vrdelem. Bude vědět, co udělat." Posbírala si své věci a odešla.~ */
  IF ~~ THEN REPLY #50076 /* ~"Tak tedy sbohem."~ */ DO ~AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50077 /* ~Dona Quisho mi dala pátý díl ke Klíči: "Jako z Centra natřikráte k nejkrajnějšímu pólu." Řekla mi, abych si zase promluvil se Zkaženým Vrdelem, mumlala něco o tom, že je ztracena, když jsem jí řekl o Agril-Shanakově smrti a utekla, jako by ji honilo devět čertů.~ */ EXIT
END
