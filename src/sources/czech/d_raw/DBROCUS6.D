// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS6~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #3208 /* ~Podivné krychlovité stvoření vypadá zrovna tak jako stroj, jako živočich. Když ses k té věci přiblížil, tiše se na tebe zadívala širokýma, nemrkajícíma očima. Ve tváři nemá ani stopu po nějaké emoci.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 429
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #40748 /* ~Podivné krychlové stvoření vypadá více jako stroj, než jako organická bytost. Když ses k tomu přiblížil, tiše to na tebe upřelo své široké, nemrkající oči. Ve tváři není ani stopa po nějaké emoci.~ */
  IF ~~ THEN REPLY #40749 /* ~"Zdravím..."~ */ DO ~SetGlobal("Met_Modrons","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #40750 /* ~Nechej to být.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #40751 /* ~Modron na tebe tiše zírá.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40752 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40753 /* ~"Mám nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #40754 /* ~Nechej to být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #40755 /* ~Hlas zní kovově, jsou v něm slyšet vibrace, jakoby to byl spíše zvuk zahraný na nějakém podivném hudebním nástroji, než opravdový hlas. "Tvé pozdravení je navráceno." Je slyšet jemné kliknutí, jak stvoření mrklo. Nastalo trapné ticho.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40756 /* ~"Mám nějaké otázky..."~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40757 /* ~"Mám nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #65533 /* ~"Půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #40758 /* ~"Identifikuj pro nás svou osobu."~ */
  IF ~~ THEN REPLY #40759 /* ~"Ale... mé otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #40760 /* ~"Není důležité, kdo jsem."~ */ GOTO 6
  IF ~~ THEN REPLY #40761 /* ~Lež: "Jsem... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40762 /* ~"Nejsem si jistý, kdo jsem."~ */ GOTO 8
  IF ~~ THEN REPLY #40763 /* ~"Zapomeň na to... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40764 /* ~"Úkol zjištění identity subjektu má vysokou prioritu. Zodpovězení různých otázek předložených subjektem má nízkou prioritu. Identifikuj pro nás svou osobu."~ */
  IF ~~ THEN REPLY #40765 /* ~"Není důležité, kdo jsem."~ */ GOTO 6
  IF ~~ THEN REPLY #40766 /* ~Lež: "Jsem... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40767 /* ~"Nejsem si jistý, kdo jsem."~ */ GOTO 8
  IF ~~ THEN REPLY #40768 /* ~"Zapomeň na to... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 8.0
  SAY #40769 /* ~"Názor subjektu na téma důležitosti identity subjektu je irelevantní. My předpokládáme, že je identita subjektu důležitá. Proto je důležitá."~ */
  IF ~~ THEN REPLY #40770 /* ~Lež: "Jsem... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40771 /* ~"Nejsem si jistý, kdo jsem."~ */ GOTO 8
  IF ~~ THEN REPLY #40772 /* ~"Zapomeň na to... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.0 8.2
  SAY #40773 /* ~Stvoření se na svých kovových nohách naklonilo trochu vpřed, potom vzad. Nejsi si jistý, jestli má tento pohyb znamenat přikývnutí nebo úklonu. "My se subjektu s kódovým označením Adahn identifikujeme jako modroni, typ quadron, okřídlená varianta."~ */
  IF ~~ THEN REPLY #40774 /* ~"Teď bych měl nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #40775 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.2 6.1
  SAY #40776 /* ~"Chceme vědět, proč je to tak."~ */
  IF ~~ THEN REPLY #40777 /* ~"Není to důležité, opravdu..."~ */ GOTO 6
  IF ~~ THEN REPLY #40778 /* ~"Sám to nevím. Nemůžu si vzpomenout."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
~ GOTO 9
  IF ~~ THEN REPLY #40779 /* ~Lež: "Jsem... Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40780 /* ~"Zapomeň na to... Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #40781 /* ~"Všechny věci by měly mít jméno, všechny věci by měly mít identitu. Nalézáme tvou odpověď neuspokojující, ale bude muset prozatím stačit." Stvoření se odmlčelo a pak na tebe mrklo. My se subjektu identifikujeme jako modroni, typ quadron, okřídlená varianta."~ */
  IF ~~ THEN REPLY #40782 /* ~"Teď bych měl nějaké otázky..."~ */ GOTO 10
  IF ~~ THEN REPLY #40783 /* ~"Už půjdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.1 7.0 9.0 11.1 12.1 13.1 14.1 15.0 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.0 25.0
  SAY #40784 /* ~"Subjekt může klást otázky."~ */
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #40785 /* ~"Nevíš, co je za stvoření tuhleta malá krychlovitá hračka?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #40786 /* ~"Co tady děláš?"~ */ GOTO 11
  IF ~~ THEN REPLY #40787 /* ~"Co mi můžeš říct o tomhle místě?"~ */ GOTO 16
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40788 /* ~"Co mi můžeš říct o mlčící prostitutce?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 18
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68126 /* ~"Co mi můžeš říct o mlčenlivé prostitutce?"~ */ GOTO 18
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40789 /* ~"Slyšel jsem, že je Kesai-Serris Ravelina dcera. Je to pravda?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40790 /* ~"Pokouším se najít Vivianinu vůni... nevíš, kde by mohla být?"~ */ GOTO 21
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40791 /* ~"Pokouším se najít Marissin Karmínový závoj... nevíš, kde by mohl být?"~ */ GOTO 21
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40792 /* ~"Nevíš něco o Ravel Puzzlewell?"~ */ GOTO 22
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
~ THEN REPLY #40793 /* ~"Už jsem mluvil s devíti prostitutkami... nevíš kdo nebo kde je desátý student?"~ */ GOTO 23
  IF ~~ THEN REPLY #40794 /* ~"Vlastně nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40795 /* ~"Náš důvod zde je pozorování."~ */
  IF ~~ THEN REPLY #40796 /* ~"Co pozorujete?"~ */ GOTO 12
  IF ~~ THEN REPLY #40797 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40798 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #40799 /* ~"Pozorujeme jednu osobu, patřící k zaměstnancům, tohoto zařízení."~ */
  IF ~~ THEN REPLY #40800 /* ~"Koho pozorujete?"~ */ GOTO 13
  IF ~~ THEN REPLY #40801 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40802 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #40803 /* ~"Jak už bylo uvedeno dříve, pozorujeme jednu osobu, patřící k zaměstnancům tohoto zařízení."~ */
  IF ~~ THEN REPLY #40804 /* ~"Ano, ale koho *přesně* pozorujete?"~ */ GOTO 14
  IF ~~ THEN REPLY #40805 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40806 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40807 /* ~"Objekt našeho pozorování je pojmenován 'Dolora.'"~ */
  IF ~~ THEN REPLY #40808 /* ~"Proč ji pozorujete?"~ */ GOTO 15
  IF ~~ THEN REPLY #40809 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40810 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40811 /* ~"Nebyli jsme informování o specifickém účelu, kvůli kterému nám byl přidělen tento specifický úkol. Příkaz našeho nadřízeného pentadrona je dostatečný důvod, abychom tento udělený úkol prováděli. Důvody jako takové jsou pro nás irelevantní."~ */
  IF ~~ THEN REPLY #40812 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40813 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY #40814 /* ~"Budova umístěná v sekci Sigilu běžně známé jako Úřednická čtvrť. Nemůžeme poskytnout exaktní koordináty, jelikož se povrch Sigilu neustále mění v intervalech, které nemůžeme momentálně určit. Budova samotná je známa jako Nevěstinec duševních rozkoší. Jeho funkce se dá popsat jako jazyková škola. Studenti této školy jsou ženy, jež se v určitém bodě, který jsme zatím přesně neurčili a který se liší student od studenta, rozhodly stát členkami Společenství Vjemu."~ */
  IF ~~ THEN REPLY #40815 /* ~"Společenství Vjemu?"~ */ GOTO 17
  IF ~~ THEN REPLY #40816 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40817 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #40818 /* ~"Podáme krátké shrnutí a definici Společenstva Vjemu: společenstvo, jehož hlavní vírou je to, že se zkušeností přichází k pravému pochopení mnohovesmíru a jeho tajemství."~ */
  IF ~~ THEN REPLY #40819 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40820 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.3 10.4
  SAY #40821 /* ~"Subjekt je označován jako 'Ecco.' Nezískali jsme žádné další informace o řečeném subjektu."~ */
  IF ~~ THEN REPLY #40822 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40823 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.5
  SAY #40824 /* ~"I kdybychom věděli, ke které Ravel se uvedená hypotéza týká, stále bychom neměli prostředky k určení, zda Ravel je či není matkou Kesai."~ */
  IF ~~ THEN REPLY #40825 /* ~"Která Ravel? Ono jich je více?"~ */ GOTO 20
  IF ~~ THEN REPLY #40826 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40827 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40828 /* ~"Nemůžeme potvrdit takovýto fakt, ale musíme si uvědomovat, že ne méně než 11.032 sfér je ve své podstatě nekonečných a z nich je nejméně 3.701 osídlených rozumnými bytostmi, které používají individuální jména. Proto se dá předpokládat, že v kterémkoli časovém segmentu bude existovat nekonečný počet takto pojmenovaných bytostí."~ */
  IF ~~ THEN REPLY #40829 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40830 /* ~"To je vše, co jsem chtěl vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 10.6 10.7
  SAY #40831 /* ~"To ne. Pokud už jsi nezahájil takový proces, navrhujeme ti, abys využil metodický přístup a začal vyslýchat každého obyvatele této budovy."~ */
  IF ~~ THEN REPLY #40832 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40833 /* ~"Takže se budu vyptávat dál. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.8
  SAY #40834 /* ~"Nevíme nic o bytosti nebo objektu, jež by odpovídal takovému popisu."~ */
  IF ~~ THEN REPLY #40835 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40836 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 10.9
  SAY #40837 /* ~"Ne. Ještě jsme nevynaložili snahu potřebnou ke zkatalogizování všech obyvatel této budovy a ani to v tomto čase nezamýšlíme."~ */
  IF ~~ THEN REPLY #40838 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40839 /* ~"Tak tedy sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 10.0
  SAY #40840 /* ~Modron - jeho vzhled je ve všech aspektech, kromě velikosti, stejný, jako u hračky v tvé ruce - mrknul jednou, dvakrát a pak promluvil: "Objekt je portálovou krychlí. Uživatel musí umístit příslušenství krychle tak, aby ji aktivoval. Jakmile bude aktivována, tak krychle odtransportuje uživatele na jakoukoli destinaci, na kterou byla krychle nastavena během výroby."~ */
  IF ~~ THEN REPLY #40841 /* ~"Jaká je správná pozice, kterou zaktivuji tuto krychli?"~ */ GOTO 25
  IF ~~ THEN REPLY #40842 /* ~"Kam odnese uživatele tato krychle?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #40843 /* ~"Nevlastníme tuto informaci. Více než sedmadevadesát procent všech portálových krychlí funguje mírně odlišným způsobem. Nebyli jsme přítomni stvoření portálové krychle patřící subjektu, ani jsme nikdy neobdrželi instrukce týkající se její funkce. Pokud si subjekt přeje použít portálovou krychli, musí zjistit metodu operace a destinaci za pomocí experimentování."~ */
  IF ~~ THEN REPLY #40844 /* ~"Mám ještě další otázku..."~ */ GOTO 10
  IF ~~ THEN REPLY #40845 /* ~"Tak tedy sbohem."~ */ EXIT
END
