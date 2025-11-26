// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFLEECE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DFLEECE~

IF ~  Global("Fleece","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1754 /* ~Vidíš muže, který se zmateně rozhlíží okolo po budovách. Vypadá to, že se ztratil a něco si pro sebe mumlá. ~ */
  IF ~~ THEN REPLY #1755 /* ~"Zdravím."~ */ DO ~SetGlobal("Fleece","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #1756 /* ~Projdi kolem.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1757 /* ~Muž vypadá osvobozeně. "*Konečně!* Poprosil bych o shovívavost, dobrý pane, vypadá to, že jsem zabloudil v tomto bludišti ulic..." nespokojeně se pousmál. "Obávám se, že je mi tahle část města poněkud..." prolítnul očima okolí. "...neznámá. Obyvatelé vypadají dost neochotně na to, aby pomohli návštěvníkovi..." Dívá se na tebe plný naděje. "Mohl bych tě snad poprosit o pomoc?"~ */
  IF ~~ THEN REPLY #1758 /* ~"To záleží na tom, jakou pomoc potřebuješ."~ */ GOTO 2
  IF ~~ THEN REPLY #1759 /* ~"Samozřejmě. Kam vlastně jdeš?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fleece_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #1760 /* ~"To záleží na tobě. Být tebou, odešel bych odtud tak rychle, jak bych jen mohl."~ */ GOTO 9
  IF ~~ THEN REPLY #1761 /* ~"Teď opravdu nemám čas ti pomáhat... Sbohem."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 27.0
  SAY #1762 /* ~"Hledám dům mé tety Marguerity. Líčila mi, že obývá dům, který stojí blízko Márnice, ale vypadá to, že se tahle ulice od mé poslední návštěvy hodně změnila... víš o tom domě, o kterém teď mluvím?"~ */
  IF ~~ THEN REPLY #1763 /* ~Lež: "Jo vím. Můžu ti ukázat kde to je... samozřejmě ne zadarmo."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1764 /* ~Pravda: "Obávám se, že jsem nikdy o takovém místě neslyšel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Fleece_2","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #1765 /* ~"Nemůžu ti pomoct. Sbohem."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1766 /* ~"Ah, tak to je skutečně bezvadný. Co jsem zaslechl z posledních vět, měla by mít svůj domov někde blízko Márnice." Přivíraje oči, pozorně tě studuje. "Víš přesně, kde je její dům?"~ */
  IF ~~ THEN REPLY #2246 /* ~Lži: "Je to na jihovýchod od Márnice, blízko jednoho z mauzoleí."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_3","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #2247 /* ~"Promiň, říkal jsi 'Teta Margarita?' Špatně jsem ti rozuměl, myslel jsem někoho jiného."~ */ GOTO 6
  IF ~~ THEN REPLY #2248 /* ~"Oh, počkej. Já myslel, že se ptáš na jeden z okolních bordelů. To nic."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_3","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2249 /* ~Muž zavrtěl hlavou. "Oh, ne, ne... není tak blízko, určitě ne. Možná jsi myslel někoho jiného." Muž se rozhlédl kolem, pak se k tobě otočil zády. "Uvidím, jestli to neví náhodou někdo jiný. Děkuju ti za tvůj drahocenný čas, dobrý pane."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2250 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2251 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2252 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2253 /* ~"Sbohem."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2254 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #2255 /* ~Muž se zklamaně zamračil. "Ach, řekl bych, že by bylo příliš velké štěstí, kdybys věděl o takovém místě." Lehce kývl, na znamení díků. "No, děkuju ti za tvůj čas, dobrý pane."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2256 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2257 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2258 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2259 /* ~"Sbohem."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2260 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #2261 /* ~"Snadná chyba, dobrý pane. Děkuju ti za tvůj čas."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2262 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2263 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2264 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2265 /* ~"Sbohem."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2266 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #2267 /* ~Muž překvapeně zamrkal. "Ech... ne, ne." Nejistě se usmál. "Má teta se v ničem takovém neangažuje."~ */
  IF ~~ THEN REPLY #2268 /* ~"No, *já* slyšel něco jiného."~ */ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2269 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2270 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2271 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2272 /* ~"Sbohem."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2273 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #2274 /* ~Muž vypadá zmateně. "Já... já už budu muset jít, dobrý muži."~ */
  IF ~~ THEN REPLY #2275 /* ~"Pozdravuj ode mně tetu. Vyřiď jí, že se brzy zastavím."~ */ EXIT
  IF ~~ THEN REPLY #2540 /* ~Nechej ho jít... tentokrát.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 2.2 27.1
  SAY #2541 /* ~Muž se zklamaně zamračil. "Ah... no, děkuju ti za tvůj čas, pane. Sbohem."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2542 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #7614 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #7615 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #7616 /* ~"Sbohem."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #7617 /* ~"Sbohem."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 5.1 6.1 7.2 9.1
  SAY #7618 /* ~Už ses obracel pryč, když jsi náhle pocítil, že tu něco neklape. Nedůvěřivě sis znovu muže letmo prohlédl, zrovna ve chvíli kdy odtahoval ruku od tvého měšce... nemůžeš si být jistý, ale máš dojem, že ti mohl něco vzít.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7619 /* ~Chyť ho za ruku.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7620 /* ~Popadni ho za ruku.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7621 /* ~"Hej! Co si myslíš, že děláš?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7622 /* ~Nalákej muže, aby tě znovu okradl a pozorně ho sleduj.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7624 /* ~Nalákej muže, aby tě znovu okradl a pozoruj jak to dělá.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7625 /* ~Nalákej muže, aby tě znovu okradl a dávej pozor na jeho techniku.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7626 /* ~Zaútoč na něj.~ */ DO ~SetGlobal("Remove_Fleece","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7627 /* ~Ignoruj incident a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 15.1 16.1
  SAY #7628 /* ~Tvá ruka vystřelila a ovinula jeho zápěstí v drtivém sevření. Muž vyjekl a zoufale se snaží vyprostit.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7629 /* ~Tiše: "Přestaň bojovat nebo budu mít suvenýr - tvoje prsty."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7630 /* ~"Přestaň se cukat sakra!"~ */ GOTO 14
  IF ~~ THEN REPLY #7631 /* ~Zaútoč na něj.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7632 /* ~Nechej ho běžet.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 15.0 16.0
  SAY #7633 /* ~Nebyl jsi dost rychlý; ucukl rukou dřív, než jsi ho stačil za ni chytit.. Vyjekl a dal se na útěk dolů ulicí.~ */
  IF ~~ THEN REPLY #7634 /* ~"Pak je to v pořádku..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 15.2 16.2
  SAY #7635 /* ~Muž překvapeně vyskočil a dal se na útěk.~ */
  IF ~~ THEN REPLY #7636 /* ~"Dobrá tedy..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #7637 /* ~Pokračuje v boji ve tvém sevření. Stává se čím dál obtížnější ho udržet.  ~ */
  IF ~~ THEN REPLY #7638 /* ~Zaútoč na něj.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7639 /* ~Udeř ho volnou rukou a získej jeho pozornost.~ */ GOTO 23
  IF ~~ THEN REPLY #7640 /* ~Nechej ho jít.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.2 5.2 6.2 7.3 9.2
  SAY #7641 /* ~Možná to jsou tvé vlastní kapsářské schopnosti, které tě nutí být na pozoru; každopádně když ses obracel k odchodu, instinktivně sis zkontroloval měšec... a zaznamenal, že z něj muž odtáhl ruku. Nicméně nevypadá na to, že by si všiml, že ty sis všiml.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7642 /* ~Chyť jeho ruku.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7643 /* ~Popadni jeho ruku.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7644 /* ~"Hej! Co si myslíš, že děláš?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7645 /* ~Nalákej muže, aby tě znovu okradl a pozorně sleduj jeho techniku.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7647 /* ~Nalákej muže, aby tě znovu okradl a bedlivě ho při tom sleduj.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7648 /* ~Nalákej muže, aby tě znovu okradl a odkoukej jeho techniku.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7649 /* ~Zaútoč na něj. ~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7650 /* ~Ignoruj incident a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.3 10.4 10.5 15.3 15.4 15.5
  SAY #7651 /* ~Zaměstnal jsi muže povrchní konverzací a potají studuješ jeho pohyby. Tento muž spoléhá na dvě věci: za prvé, předstírá, že je nervózním občanem vyšší třídy, jenž se dostal mimo místa, která zná, aby snížil opatrnost vybraného cíle; a za druhé, odvrátí pozornost oběti tím, že se jí zeptá na cestu nějakým směrem... když se cíl otočí, aby mu pomohl a ukázal správnou cestu, muž mu klofne váček a zastrčí si lup do svých (vhodně dlouhých) rukávů. Uložil sis do paměti jeho techniku... zrovna když znova sáhl po tvém váčku.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7652 /* ~Popadni jeho ruku.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7653 /* ~Chyť ho za ruku.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7654 /* ~"Hej! Co si myslíš, že děláš?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #7655 /* ~Zaútoč na něj. ~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7656 /* ~Ignoruj incident a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0
  SAY #7657 /* ~Muselo být *něco* ve tvém hlase, protože přestal okamžitě zápasit. Vypadá že pod tvým pohledem ztratil odvahu. ~ */
  IF ~~ THEN REPLY #7658 /* ~"Okamžitě mi vrať vše, cos ukradl."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7659 /* ~Nechej ho jít, pak odejdi.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #7660 /* ~Pokynul hlavou a začal si vyprazdňovat kapsy. Předává ti plnou hrst mincí, mnohem víc než ti ukradl... dohromady to musí dát pár tuctů měďáků.~ */
  IF ~~ THEN REPLY #7661 /* ~"Ne, zbytek si nech... Chci jen to, co jsi mi ukradl."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_2","GLOBALLaw",1)
TakePartyGold(25)
~ GOTO 19
  IF ~~ THEN REPLY #7662 /* ~"Jsme vyrovnáni. Takže už tě nechci nikdy vidět. Rozumíš?"~ */ GOTO 21
  IF ~~ THEN REPLY #7663 /* ~Bluf: "Koukej mi dát všechno, co máš a já tě nezabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_4","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7664 /* ~Pravdivě: "Koukej mi dát všechno, co máš a já tě nezabiju."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_4","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7665 /* ~Přikývni na znamení díků a pak na něj zaútoč.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7666 /* ~Nechej ho jít, pak odejdi.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7667 /* ~Hledí na tebe v úžasu, asi mu připadá, že si z něj děláš dobrý den. Pak pokrčil rameny a vrátil zbytek do svých kapes.~ */
  IF ~~ THEN REPLY #7668 /* ~"Jsme si kvit. Už tě tady nechci nikdy vidět. Jasné?"~ */ GOTO 21
  IF ~~ THEN REPLY #7669 /* ~Zaútoč na něj.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7671 /* ~Nechej ho jít, pak odejdi.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2 18.3
  SAY #7670 /* ~"Eh..." Polkl. "Brácho, to je všechno. Nic víc nemám."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7672 /* ~"Myslel jsem *všechno*, takže mi *všechno* dej."~ */ GOTO 28
  IF ~~ THEN REPLY #7673 /* ~"Dobrá. Už tě tu nechci nikdy vidět. Jasné?"~ */ GOTO 21
  IF ~~ THEN REPLY #7674 /* ~"Pak je tvůj život u konce. Připrav se zemřít."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7675 /* ~Nechej ho jít, pak odejdi.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1 28.0
  SAY #7676 /* ~Pokynul hlavou. ~ */
  IF ~~ THEN REPLY #7677 /* ~Úderem si zajisti, že porozumí.~ */ GOTO 22
  IF ~~ THEN REPLY #7678 /* ~Zaútoč na něj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7679 /* ~Nechej ho jít, pak odejdi.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 25.0
  SAY #7680 /* ~Tvá rána ho zasáhla do čelisti a srazila na dláždění. Zasténal a těžce se zvedal na nohy, s rukou na čelisti. Vypadá to, žes mu vyrazil zub.~ */
  IF ~~ THEN REPLY #7681 /* ~"Teď se odsud ztrať."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #7682 /* ~Levý hák mu srazil hlavu na stranu a on znovu vyjekl. Otočil se, teď už lehce nejistý, aby se na tebe podíval, drže si volnou rukou tvář. ~ */
  IF ~~ THEN REPLY #7683 /* ~"Tak co, už jsem upoutal tvou pozornost?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #7684 /* ~Idiotsky pokýval hlavou.~ */
  IF ~~ THEN REPLY #7685 /* ~"Vrať mi všechno, co jsi mi ukradl."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7686 /* ~"Je mi jedno, co jsi mi ukradl... ať už tě nikdy nevidím. Rozumíš?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #7687 /* ~Znovu pokýval.~ */
  IF ~~ THEN REPLY #7688 /* ~Udeř ho, aby sis zajistil, že porozumí.~ */ GOTO 22
  IF ~~ THEN REPLY #7689 /* ~Zaútoč na něj.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7690 /* ~Propusť ho a odejdi.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~  Global("Fleece","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #7691 /* ~Vidíš stejného muže jako před chvílí... stále vypadá ztracený a mumlá si při pohledu na stavení.~ */
  IF ~~ THEN REPLY #7692 /* ~"Zdravím."~ */ GOTO 27
  IF ~~ THEN REPLY #7693 /* ~Projdi bez povšimnutí.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #7694 /* ~Poskočil, když jsi na něj promluvil; vypadá nervózně. "Eh... tak se znova setkáváme pane." Vypadá pln naděje. "Nepředpokládám že bych tě přemluvil, abys mi ukázal směr?"~ */
  IF ~~ THEN REPLY #7695 /* ~"Kam tě zase mám navést?"~ */ GOTO 2
  IF ~~ THEN REPLY #7696 /* ~"Ne, ne dnes."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 20.0
  SAY #7697 /* ~"Mluvím pravdu! Nemám víc!"~ */
  IF ~~ THEN REPLY #7698 /* ~"Fajn. A teď odsud zmiz - už tě tu nechci nikdy vidět. Rozumíš?"~ */ GOTO 21
  IF ~~ THEN REPLY #7699 /* ~"Pak je tvůj život u konce. Připrav se zemřít.."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7700 /* ~Nechej ho jít a odejdi.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END
