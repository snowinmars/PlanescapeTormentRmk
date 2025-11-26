// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEMORIC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DEMORIC~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1790 /* ~Vidíš důležitě vypadajícího muže s tmavou pletí a děsivým zjevem. Je oblečen ve spalovačských šatech a pozoruje tě svým kamenným pohledem.  ~ */
  IF ~~ THEN REPLY #1791 /* ~"Zdravím."~ */ GOTO 3
  IF ~~ THEN REPLY #14590 /* ~Ignoruj jej.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14589 /* ~Vidíš Emorica. Vítá tě kamenným výrazem.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14591 /* ~"Měl bych na tebe pár otázek."~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14592 /* ~"Měl bych na tebe pár otázek."~ */ GOTO 2
  IF ~~ THEN REPLY #14823 /* ~Ignoruj Emorica, pokračovat.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #14824 /* ~"Ty ses nás zřekl." Emoric se odmlčel; a zdá se vyřkne soud. "Už nejsi dále Spalovačem."~ */
  IF ~~ THEN REPLY #14825 /* ~"Rozumím. Pořád jsou nějaké věci, které bych měl vědět... "~ */ GOTO 6
  IF ~~ THEN REPLY #14826 /* ~"Je mi líto, že jsem způsobil problémy. Omlouvám se"~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #14827 /* ~"Vypadáš jako by ses ztratil." Mužův hlas zní, jakoby se drtily kameny. "Přivál tě snad vítr, nebo jsi přišel s nějakým úmyslem?"~ */
  IF ~~ THEN REPLY #14828 /* ~"Kdopak jsi?"~ */ DO ~SetGlobal("Emoric","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14829 /* ~"Jsem pouze návštěvník. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14830 /* ~"Jsem Emoric, zasvěcenec Čtvrtého Kruhu." ~ */
  IF ~~ THEN REPLY #14831 /* ~"To je tvůj bar?"~ */ GOTO 5
  IF ~~ THEN REPLY #14832 /* ~"To je vše co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #14833 /* ~"Pokud měříš bohatství na měďáky, tak to mi není vlastní. Pokud měříš bohatství ducha, tak to mi vlastní je. Nejsem bohat penězi, ale jsem bohatý duchem." Odmlčel se, aby ukázal důležitost této věty. "Spalovači jsou mí studenti. Jsou pod mou ochranou."~ */
  IF ~~ THEN REPLY #14834 /* ~"Mohu se zeptat na pár otázek?"~ */ GOTO 6
  IF ~~ THEN REPLY #14835 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 2.0 5.0 7.4 8.4 9.4 10.2 11.4 12.3 13.1 14.3 15.1 16.1 18.1 19.1 20.0 21.3 24.0 25.0 26.1 27.2 28.0 29.2 30.4 31.2 38.4 39.2 40.0 41.2 42.2 43.1 44.2 45.2 46.2 47.4 48.2 49.1 50.1 51.1 52.3 53.0 54.1 56.0 57.3 62.3 67.4 68.0 80.8 81.5 82.5 83.2 84.2 86.3 87.2 88.5 89.1 90.3 91.2 92.2 93.4 94.1 96.1 97.2 98.4 99.4 100.4 101.3 102.2
  SAY #14836 /* ~Emoric čeká.~ */
  IF ~~ THEN REPLY #14837 /* ~"Tohle je tvůj bar?"~ */ GOTO 5
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14838 /* ~"Řekneš mi o skupině Spalovačů?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14839 /* ~"Řekneš mi o skupině Spalovačů?"~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #14840 /* ~"Chtěl bych se přidat ke Spalovačům "~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #14841 /* ~"Chtěl bych se přidat ke Spalovačům"~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #14842 /* ~"Chtěl bych se přidat ke Spalovačům"~ */ GOTO 41
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14843 /* ~"Chtěl bych se přidat ke Spalovačům"~ */ GOTO 97
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14844 /* ~Infiltrovat Spalovače pro Anarchisty: "Chtěl bych se přidat ke Spalovačům."~ */ GOTO 97
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #14845 /* ~"Řekneš mi o Smrtelné smlouvě?"~ */ GOTO 29
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14846 /* ~"Přišel jsem sem hledat můj deník."~ */ GOTO 25
  IF ~  Global("Emoric_Pharod","GLOBAL",0)
Global("Pharod","GLOBAL",0)
~ THEN REPLY #14847 /* ~"Hledám muže jménem Pharod. Viděl jsi ho?"~ */ GOTO 7
  IF ~  Global("Emoric_Pharod","GLOBAL",2)
GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14848 /* ~"Mluvil jsem s Pharodem a zjistil jsem, kde bere ta těla, která ti dodává."~ */ GOTO 21
  IF ~  Global("Emoric_Pharod","GLOBAL",1)
~ THEN REPLY #14849 /* ~"Ehmm... Ten kšeft s Pharodem a s těmi mrtvými těly, platí to ještě?"~ */ GOTO 17
  IF ~  Global("Dustman_Initiation","GLOBAL",2)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14850 /* ~"Mluvil jsem s Norochjem a udělal jsem co chtěl."~ */ GOTO 55
  IF ~  Global("Dustman_Initiation","GLOBAL",3)
GlobalGT("Await","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14851 /* ~"Mluvil jsem se Smrtichtivým."~ */ GOTO 59
  IF ~  Global("Dustman_Initiation","GLOBAL",4)
GlobalGT("Sere","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14852 /* ~"Mluvil jsem se Sere."~ */ GOTO 63
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14854 /* ~"Našel jsem Soega."~ */ GOTO 69
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14855 /* ~"Našel jsem Soega."~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14856 /* ~"Jako Spalovač vítám tvou pomoc."~ */ GOTO 93
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14857 /* ~"Jako Spalovač mám pár otázek ohledně našeho společenství..."~ */ GOTO 81
  IF ~~ THEN REPLY #14858 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.10
  SAY #14859 /* ~"Potřebuji vědět proč hledáš Sběrače Pharoda." ~ */
  IF ~~ THEN REPLY #14860 /* ~"Sběrače?"~ */ GOTO 8
  IF ~~ THEN REPLY #14861 /* ~"Něco mi ukrad."~ */ GOTO 13
  IF ~~ THEN REPLY #14862 /* ~"Chci s ním mluvit."~ */ GOTO 14
  IF ~~ THEN REPLY #14863 /* ~"Proč? Stalo se něco?"~ */ GOTO 11
  IF ~~ THEN REPLY #14864 /* ~"Ehmm, přeřekl jsem se... ale stejně mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #14865 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14866 /* ~"Sběrači sbírají mrtvé a přináší je k nám. Zajímalo by mně proč hledáš tohoto Sběrače." ~ */
  IF ~~ THEN REPLY #14867 /* ~"Proč sbírají mrtvé?"~ */ GOTO 9
  IF ~~ THEN REPLY #14868 /* ~"Něco mi ukrad."~ */ GOTO 13
  IF ~~ THEN REPLY #14869 /* ~"Chci s ním mluvit."~ */ GOTO 14
  IF ~~ THEN REPLY #14870 /* ~"Proč? Stalo se něco?"~ */ GOTO 11
  IF ~~ THEN REPLY #14871 /* ~"Ehmm, přeřekl jsem se... ale beztak mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #14872 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #14873 /* ~"Sbírají mrtvé pro nás kvůli měďákům."~ */
  IF ~~ THEN REPLY #14874 /* ~"Platíš jim za mrtvoly? Proč?"~ */ GOTO 10
  IF ~~ THEN REPLY #14875 /* ~"Něco mi ukrad."~ */ GOTO 13
  IF ~~ THEN REPLY #14876 /* ~"Chci s ním mluvit."~ */ GOTO 14
  IF ~~ THEN REPLY #14877 /* ~"Proč? Stalo se něco?"~ */ GOTO 11
  IF ~~ THEN REPLY #14878 /* ~"Ehmm, přeřekl jsem se... ale beztak mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #14879 /* ~"To je vše co jsem potřeboval vědět. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14880 /* ~"Ulice nejsou pohřebiště. Mrtvoly patří do Márnice. Je to práce Spalovačů." Emoric ztišil hlas na chvíli, cítíš, že to má svůj důvod. "Chtěl bych vědět proč hledáš Sběrače Pharoda."~ */
  IF ~~ THEN REPLY #14881 /* ~"Chci s ním mluvit."~ */ GOTO 14
  IF ~~ THEN REPLY #14882 /* ~"Proč? Stalo se něco?"~ */ GOTO 11
  IF ~~ THEN REPLY #14883 /* ~"Ehmm, přeřekl jsem se... ale beztak mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #14884 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3 8.3 9.3 10.1 13.0 14.0 15.0
  SAY #14885 /* ~"Sběrač Pharod donesl mrtvoly do Márnice v poslední době. A zajímá mě, odkud ta těla jsou."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14886 /* ~"Zjistil jsem odkud jsou." ~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #14887 /* ~"Řekni mi víc o těch mrtvolách."~ */ GOTO 12
  IF ~~ THEN REPLY #14888 /* ~"Podívej, to je mezi vámi dvěma, mě jen zajímá, kde ten chlap je."~ */ GOTO 20
  IF ~~ THEN REPLY #14889 /* ~"Možná bych mohl zjistit, odkud ta těla jsou."~ */ GOTO 16
  IF ~~ THEN REPLY #14890 /* ~"Opravdu nevím, mám ještě nějaké jiné otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #14891 /* ~"Myslím že ti nemůžu pomoct. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #14892 /* ~"Některá jsou čerstvě mrtvá. Oči mají vytřeštěny jako v posledních chvílích života. No a některá těla jsou stará tisíce let. Pavučiny věků je opřádají. Jeden by rád věděl, odkud ta těla jsou."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14893 /* ~"Zjistil jsem odkud jsou."~ */ GOTO 21
  IF ~~ THEN REPLY #14894 /* ~"Podívej, to je mezi vámi dvěma, mně jen zajímá, kde ten chlap je."~ */ GOTO 20
  IF ~~ THEN REPLY #14895 /* ~"Možná bych mohl zjistit, odkud ta těla jsou."~ */ GOTO 16
  IF ~~ THEN REPLY #14896 /* ~"Opravdu nevím, mám ještě nějaké jiné otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #14897 /* ~"Myslím že ti nemůžu pomoct. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 8.1 9.1
  SAY #14898 /* ~Emoric zůstává klidný. Upřeně zírá, ani brvou nehne. ~ */
  IF ~~ THEN REPLY #14899 /* ~"Proč se staráš o to, co mám s Pharodem?"~ */ GOTO 11
  IF ~~ THEN REPLY #14900 /* ~"Mám ještě nějaké jiné otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #14901 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.2 8.2 9.2 10.0
  SAY #14902 /* ~"Jenom zkomplikoval pár věcí. Něco prozradil." Emoric ztišil hlas na chvíli. "Když se dva domlouvají přes další lidi, to nikdy nedělá dobrotu." ~ */
  IF ~~ THEN REPLY #14903 /* ~"Proč chceš mluvit s Pharodem?"~ */ GOTO 11
  IF ~~ THEN REPLY #14904 /* ~"Proč nechce Pharod mluvit s ostatními?"~ */ GOTO 15
  IF ~~ THEN REPLY #14905 /* ~"Víš, kde ho najdu?"~ */ GOTO 20
  IF ~~ THEN REPLY #14906 /* ~"Mám ještě nějaké jiné otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #14907 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #14908 /* ~"Důvod není jasný. Je to muž, který se schovává před ostatními a své motivy k těmto činům skrývá".~ */
  IF ~~ THEN REPLY #14909 /* ~"Proč chceš vědět co chci Pharodovi?"~ */ GOTO 11
  IF ~~ THEN REPLY #14910 /* ~"Mám ještě nějaké jiné otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #14911 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.2
  SAY #14912 /* ~"Proč bys něco takového dělal?"~ */
  IF ~~ THEN REPLY #14913 /* ~"Chci najít Pharoda a dát s ním řeč."~ */ GOTO 17
  IF ~~ THEN REPLY #14914 /* ~"Opravdu nevím, mám ještě nějaké jiné otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #14915 /* ~"Myslím že ti nemůžu pomoct. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.12 16.0
  SAY #14916 /* ~"Jestliže najdeš Pharoda, promluvíš s ním a doneseš mi odpovědi na mé otázky, prokážeš Spalovačům velkou službu. Najdi odkud ta těla přinesl a dostaneš odměnu."~ */
  IF ~~ THEN REPLY #14917 /* ~"Dobrá. Najdu ho a zjistím odkud ta těla jsou."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",2)
~ GOTO 18
  IF ~~ THEN REPLY #14918 /* ~"Ne dík. Tuhle práci neberu."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #14919 /* ~Emoric přikývl. "Tvá cesta je i naší cestou. Vrať se sem, až budeš mít Pharodovy odpovědi."~ */
  IF ~~ THEN REPLY #14920 /* ~"Řekneš mi, kde teď je?"~ */ GOTO 20
  IF ~~ THEN REPLY #14921 /* ~"Dobrá. Mám ještě nějaké jiné otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #14922 /* ~"Uvidíme co se dá dělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #14923 /* ~Emoric přikyvuje. "Tvé je rozhodnutí, kudy povede tvá cesta."~ */
  IF ~~ THEN REPLY #14924 /* ~"Řekneš mi, kde teď je?"~ */ GOTO 20
  IF ~~ THEN REPLY #14925 /* ~"Mám ještě nějaké jiné otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #14926 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.2 12.1 14.2 18.0 19.0
  SAY #14927 /* ~"Není mi známo, kde zrovna Sběrač Pharod je. Schovává se před Spalovači. Musím najít jiné Sběrače a zjistit odpověď na tvou otázku."~ */
  IF ~~ THEN REPLY #14928 /* ~"Dobrá. Mám ještě nějaké jiné otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #14929 /* ~"Uvidíme co se dá dělat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.11 11.0 12.0
  SAY #14930 /* ~"Odkud jsou ty těla?"~ */
  IF ~  Global("Lawful_Pharod_3","GLOBAL",0)
~ THEN REPLY #14931 /* ~Pravda: "Jsou z katakomb, které jsou pod Sigilem. Jednoduše vyhrabal těla, která jste pohřbili a prodal vám je zpět. Pokud je pohřbíte znova, zase je vykope"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_1","GLOBALLaw",2)
~ GOTO 22
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #14932 /* ~Pravda: "Jsou z katakomb, které jsou pod Sigilem. Jednoduše vyhrabal těla, která jste pohřbili a prodal vám je zpět. Pokud je pohřbíte znova, zase je vykope"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_2","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14933 /* ~Lež: "Spousta lidí Hadrníkově naměstí onemocněla zhoubnou nemocí, která způsobuje, že se jejich těla předčasně rozkládají. A pak to vypadá že jsou starší než ve skutečnosti."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_1","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14934 /* ~"Promiňte, přeřekl jsem se - zatím jsem nic nevypátral. Mám ale ještě nějaké jiné otázky."~ */ GOTO 6
  IF ~~ THEN REPLY #14935 /* ~"Tedy, zatím pořád nic. Sbohem"~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2
  SAY #14936 /* ~Emoric se odmlčí. Dívá se na tebe kamenným pohledem a ty cítíš jako by se ti díval přímo do duše.~ */
  IF ~~ THEN REPLY #14937 /* ~"Uh..."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",3)
AddexperienceParty(2500)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14938 /* ~Emoric přikyvuje. "Prokázal jsi Spalovačům službu." Najednou položil obě ruce na stůl a jeho široké rukávy zakrývají takřka celý stůl. Když je za chvíli oddělá, na stole leží malá lazuritová rakvička. Je to malinká věc, sotva dva palce široká a tři palce dlouhá. Na víku od rakvičky je vyryt symbol Spalovačů.~ */
  IF ~~ THEN REPLY #14939 /* ~Vezmi krabičku.~ */ DO ~GiveGoldForce(300)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14940 /* ~Jakmile jsi sebral rakvičku, zahvízdalo to a rakvička se rozletěla na spoustu měďáků a ty se snažíš, aby se nerozsypaly po celé podlaze baru. Ovšem záhadou ti zůstává, jak se tolik měďáků vměstnalo do takové malé rakvičky.~ */
  IF ~~ THEN REPLY #14941 /* ~"Dík. Mám ještě nějaké jiné otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #14942 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.9
  SAY #14943 /* ~"Tvé hledání tě asi zavede jinam."~ */
  IF ~~ THEN REPLY #14944 /* ~"Dobrá. Mám ještě nějaké jiné otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #14945 /* ~"Podívám se ještě někam jinam. Zatím sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 6.1 6.2
  SAY #14946 /* ~"Spalovači hledají Pravou Smrt. Někteří ji nazývají 'zapomnění', ale to není správně. Pro Spalovače je Pravá Smrt vysvobozením z okovů tohoto falešného života."~ */
  IF ~~ THEN REPLY #14947 /* ~"Falešného života?"~ */ GOTO 27
  IF ~~ THEN REPLY #14948 /* ~"Mám ještě nějaké jiné otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #14949 /* ~"Tak to mi nejde do hlavy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14950 /* ~"Tento 'život' na kterém mnoho lidí citově lpí je falešnou existencí. Budou se stále znovu rodit do tohoto života, tak dlouho, jak dlouho na něm budou lpět. Někdo je musí zbavit tohoto citu, aby unikli tomuto věčnému koloběhu."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #14951 /* ~"Aha. Řekneš mi, jak je vaše společnost organizována?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",2)
~ GOTO 28
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #14952 /* ~"Aha. Řekneš mi, jak je vaše společnost organizována?"~ */ GOTO 28
  IF ~~ THEN REPLY #14953 /* ~"Mám ještě nějaké jiné otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #14954 /* ~"Tak to mi nejde do hlavy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #14955 /* ~"Spalovači jsou rozděleni do pěti kruhů. Pátý kruh je v hierarchickém uspořádání společenství Spalovačů nejníže. No a První Kruh - tam jsou naši vůdci a ti, co řídí celou tuhle naši organizaci."~ */
  IF ~~ THEN REPLY #14956 /* ~"Mám ještě nějaké jiné otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #14957 /* ~"Tak to mi nejde do hlavy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 6.8
  SAY #14958 /* ~"Chceš podepsat Smrtelnou smlouvu?"~ */
  IF ~~ THEN REPLY #14959 /* ~"Co to přesně je?"~ */ GOTO 30
  IF ~~ THEN REPLY #14960 /* ~"Jo, podepíšu."~ */ GOTO 31
  IF ~~ THEN REPLY #14961 /* ~"Ne. Mám ještě nějaké jiné otázky, na které bych se tě chtěl zeptat."~ */ GOTO 6
  IF ~~ THEN REPLY #14962 /* ~"Možná někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14963 /* ~"Ehmm. Za padesát měďáků nám Spalovačům dáš plnou moc, abychom se postarali o tvou mrtvolu, až zemřeš. Podepíšeš?"~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14964 /* ~"Podepíšu."~ */ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14965 /* ~I když už jsi podepsal dříve s Mortaiem kontrakt: "Podepíšu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #14966 /* ~I když už jsi podepsal dříve s Mědiokem kontrakt: "Podepíšu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14967 /* ~I když už jsi podepsal dříve s Mortaiem a Mědiokem kontrakt: "Podepíšu."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #14968 /* ~"Ne. Mám ještě nějaké jiné otázky, na které bych se tě chtěl zeptat.."~ */ GOTO 6
  IF ~~ THEN REPLY #14969 /* ~"Možná někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 30.1 30.2 30.3
  SAY #14970 /* ~Emoric vytáhl špinavý kus pergamenu a brk. Ukazuje ti, že máš podepsat pergamen na třech místech.~ */
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",0)
~ THEN REPLY #14971 /* ~Podeiš na příslušná místa.~ */ DO ~SetGlobal("Memory_Dustman_Contract_2","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 32
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",1)
~ THEN REPLY #14972 /* ~Podepiš na příslušná místa.~ */ GOTO 39
  IF ~~ THEN REPLY #14973 /* ~"Změnil jsem názor. Mám ještě nějaké jiné otázky, na které bych se tě chtěl zeptat. "~ */ GOTO 6
  IF ~~ THEN REPLY #14974 /* ~"Možná někdy jindy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 39.1
  SAY #14975 /* ~Vzal jsi brk do ruky a začal podepisovat pergamen... brk ale při psaní příšerně skřípe.~ */
  IF ~~ THEN REPLY #14976 /* ~Pokračuj v podepisování...~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #14977 /* ~Ať se jakkoliv snažíš s tímhle brkem psát, prostě to nejde. Jakoby inkoust nechtěl opustit tohle pero.~ */
  IF ~~ THEN REPLY #14978 /* ~"Uh... Emoricu? Co je s tím?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14979 /* ~Když k němu vzhlédneš, vidíš, že jeho tvář zkameněla... prostě celý zkameněl a stala se z něj socha. Zbytek celého baru je naplněn šedavou mlhou a ty stěží rozeznáváš postavy. Tichý šepot se dere Emoricovi z úst, jako by se snažil naposled nadechnout. ~ */
  IF ~~ THEN REPLY #14981 /* ~"Emoricu...?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14983 /* ~Rozpoznáváš šepot, který se dere Emoricovi z jeho kamenných úst a rozpoznáváš i jednotlivá slova.

     *Piš*

     *Ale pomni, že cena je v duši a v kameni*

     *A co může změnit charakter člověka?*

Šeptaná slova se zesilují v jeden neladící chorus, jako by ne jeden hlas, ale desítky, stovky, tisíce hlasů, hlasů starých, mladých, ženských i mužských, klidných, zoufalých i hysterických šeptalo tyto slova...~ */
  IF ~~ THEN REPLY #14988 /* ~"Charakter člověka?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14992 /* ~Jakmile jsi dořekl ta slova, pokoušejí se o tebe mdloby a najednou slyšíš Emoricův hlas normálně. "Pořád chceš podepsat?" 	~ */
  IF ~~ THEN REPLY #14994 /* ~Zkus a dostůj svým cílům...~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #14996 /* ~Čas uplynul a vše se vrátilo do normálu - mlha zmizela a Emoric již také není nadále sochou. Pociťuješ zvláštní tlak v lebce, jakoby se něco uvnitř tvé mysli snažilo zoufale dostat ven. Pocit, jakoby se střípky a útržky paměti snažily utvořit nějaký obraz a ty víš, že to, co vyšlo Emoricovi z úst patřilo někomu, někomu, kdo je již dávno mrtev. ~ */
  IF ~~ THEN REPLY #15001 /* ~Podívej se na pergamen znova.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15003 /* ~Když tak pozoruješ pergamen, nemůžeš se zbavit dojmu, že to není poprvé, co podepisuješ nějaký kontrakt či smlouvu.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15009 /* ~Dokončit podepisování smlouvy. ~ */ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15011 /* ~I když jsi podepsal Mortaiův kontrakt, dokonči podepsání Emoricovy dohody. ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #15013 /* ~I když si podepsal Mědiokův kontrakt, dokončit podepsání Emoricovy dohody. ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15015 /* ~I když si podepsal Mortaiův a Mědiokův kontrakt, dokončit podepsání Emoricovy dohody. ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~~ THEN REPLY #15017 /* ~"Myslím, že si to promyslím, než podepíšu, mám ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15019 /* ~"Nechci podepsat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.1
  SAY #15029 /* ~Když vezmeš do ruky brk a dotkneš se s ním znova pergamenu, slyšíš šepot a nápor myšlenek a pocitů ve své hlavě...~ */
  IF ~~ THEN REPLY #15031 /* ~Potlač myšlenky, podepiš smlouvu...~ */ GOTO 40
  IF ~~ THEN REPLY #15033 /* ~Vzdej se myšlenkám.~ */ GOTO 32
  IF ~~ THEN REPLY #15035 /* ~"Myslím, že s tím podepsáním počkám. Mám nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #15037 /* ~"Nechci to podepsat. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.1 38.2 38.3 39.0
  SAY #15085 /* ~Podškrábl jsi třikrát 'X' na místa na pergamenu, která ti Emoric ukázal. Když jsi skončil, Emoric ti odebral pergamen a dal ti měšec padesáti měďáků.~ */
  IF ~~ THEN REPLY #15086 /* ~"Teď to není možné. Mám na tebe pár otázek..."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 6
  IF ~~ THEN REPLY #15087 /* ~"Náš obchod je uzavřen... sbohem."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 6.3 6.4 6.5
  SAY #15088 /* ~"Další společenství tě vítá do svých řad."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #15089 /* ~Lež: "Přeřekl ses. Já nepatřím žádnému jinému spolku."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_5","GLOBALLaw",-2)
~ GOTO 42
  IF ~~ THEN REPLY #15090 /* ~"Chci opustit to společenství a přidat se ke Spalovačům."~ */ GOTO 45
  IF ~~ THEN REPLY #15091 /* ~"Nevadí. Mám na tebe pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15092 /* ~"To mi nejde do hlavy. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15093 /* ~"Nezmýlil jsem se." Emoricův hlas zní jako kámen, ale cítíš v tom hlase jisté pochybnosti.~ */
  IF ~~ THEN REPLY #15094 /* ~"Mýlíš se. Má mysl je upsána Spalovačům a nikomu jinému. A jestliže o mně *pochybuješ*, dej mi test."~ */ GOTO 43
  IF ~~ THEN REPLY #15095 /* ~"Dobrá. Chci zapomenout na to společenství a přidat se ke Spalovačům."~ */ GOTO 45
  IF ~~ THEN REPLY #15096 /* ~"Nevadí. Mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15097 /* ~"Nemáme nic více o čem by se dalo diskutovat, proto Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #15098 /* ~Jakmile jsi vyřkl slovo *pochybuješ*, Emoricovi neznatelně škubne ve tváři, ale ty to předem očekáváš. Pouhopouhá změna výrazu prozrazuje, co si právě myslí.~ */
  IF ~~ THEN REPLY #15099 /* ~"Ještě jednou  -- jestli o mně *pochybuješ*, tak mě vyzkoušej. Shledáš mou mysl prostou všech pocitů a mě jako Spalovače."~ */ GOTO 44
  IF ~~ THEN REPLY #15100 /* ~"Nevadí. Mám pár dalších otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15101 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15102 /* ~Emoric tě tiše pozoruje. Za chvíli promluví: "Nemám o sobě žádné pochybnosti. Přesto se vyžaduje zkouška. Jestli chceš vstoupit do řad Spalovačů, čekám tvou odpověď."~ */
  IF ~~ THEN REPLY #15103 /* ~"Ano, chci se přidat ke Spalovačům"~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15104 /* ~"Opět sis udělal o mně chybný úsudek. Nemám žádné přání vstoupit do řad Spalovačů. Pouze věřím v to, v co věří Spalovači."~ */ GOTO 48
  IF ~~ THEN REPLY #15105 /* ~"Nevadí. Mám pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15106 /* ~"Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1
  SAY #15107 /* ~"Je tvá chuť přidat se ke Spalovačům silnější než tvá loajalita k jinému společenství?"~ */
  IF ~~ THEN REPLY #15108 /* ~"Ano."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15109 /* ~"Opět sis udělal o mně chybný úsudek. Nemám žádné přání vstoupit do řad Spalovačů. Pouze věřím v to, v co věří Spalovači."~ */ GOTO 48
  IF ~~ THEN REPLY #15110 /* ~"Vzdávám své přání. Mám pár dalších otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15111 /* ~"Nevadí. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0 45.0 97.0
  SAY #15112 /* ~"Jestli toužíš stát se Spalovačem, pak vášeň ovládá tvou mysl. Vášeň a Spalovači nejdou dohromady."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15114 /* ~"Přeřekl jsem se. *Netoužím* se stát Spalovačem."~ */ GOTO 48
  IF ~~ THEN REPLY #15115 /* ~"Můžeš mi říci něco o Spalovačích?"~ */ GOTO 49
  IF ~~ THEN REPLY #15116 /* ~"Vzdávám se svého přání. Mám ještě pár otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15117 /* ~"Nevadí; Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #15118 /* ~"Přijde zloba ze strany druhého spolku. Potom již nebudeš více u nich vítán."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #15119 /* ~Zříct se společenství: "Co se musí stát, to se stane. Nesmím obelhávat sám svou mysl. Od teď se zříkám důvěry Božích lidí."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #15120 /* ~Zříct se společenství: "Co se musí stát, to se stane. Nesmím obelhávat sám svou mysl. Od teď se zříkám... ehm 'důvěry' Chaotiků."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #15121 /* ~Zříct se společenství: "Co se musí stát, to se stane. Nesmím obelhávat sám svou mysl. Od teď se zříkám důvěry Vnímavých."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
~ GOTO 48
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15122 /* ~Lež kvůli infiltraci Spalovačů pro Anarchisty: "Co se musí stát, to se stane. Nesmím obelhávat sám svou mysl. Od teď se zříkám důvěry mého bývalého spolku"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_6","GLOBALLaw",-2)
~ GOTO 48
  IF ~~ THEN REPLY #15123 /* ~"Nevadí. Mám pár jiných otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15124 /* ~"Nejsem připraven. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1 45.1 46.0 47.0 47.1 47.2 47.3 97.1
  SAY #15203 /* ~"Velmi dobře. Ty znáš naši filosofii?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15205 /* ~"Ano."~ */ GOTO 51
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15206 /* ~"Ne úplně, ne."~ */ GOTO 49
  IF ~~ THEN REPLY #15207 /* ~"Chci zrušit svou žádost o vstoupení do společenství Spalovačů. Mám nějaké další otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #15209 /* ~"Nevadí. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.1 48.1
  SAY #15210 /* ~"Spalovači hledají Pravou smrt. Někdo tomu říká "zapomnění", ale to je velká chyba. Pro Spalovače, Pravá smrt znamená svobodu a uvolnění řetězů, které tě svazují v tomto falešném životě."~ */
  IF ~~ THEN REPLY #15211 /* ~"Falešný život?"~ */ GOTO 50
  IF ~~ THEN REPLY #15212 /* ~"Chci zrušit svou žádost o vstoupení do společenství Spalovačů. Mám nějaké další otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #15213 /* ~"Nevadí. Už musím jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15214 /* ~"Tenhle 'život', na kterém mnoho tak lpí svými emocemi, je falešná existence. Dokud na nich budou lpět, bude trvat jejich ustavičné znovuzrození. Člověk se musí zbavit svých emocí, aby unikl z tohoto cyklu."~ */
  IF ~~ THEN REPLY #15216 /* ~"Výborně. Teď již rozumím vaší filosofii."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 51
  IF ~~ THEN REPLY #15217 /* ~"Chci zrušit svou žádost o vstoupení do společenství Spalovačů. Mám nějaké další otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #15219 /* ~"Nevadí. Musím už jít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.0 50.0
  SAY #15221 /* ~"Přednes to."~ */
  IF ~~ THEN REPLY #15223 /* ~"Cílem všech Spalovačů je nalezení Pravé smrti, zapomnění. Tenhle 'život', na němž mnozí lpí svými emocemi a pocity, je falešný. Dokud na nich budou lpět, bude trvat jejich ustavičné znovuzrození. Člověk se musí zbavit svých emocí, aby unikl z tohoto cyklu."~ */ GOTO 52
  IF ~~ THEN REPLY #15225 /* ~"Rozmyslel jsem se. Mám pár dalších otázek"~ */ GOTO 6
  IF ~~ THEN REPLY #15227 /* ~"Nevadí. Už musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #15229 /* ~"Ty tomu věříš?"~ */
  IF ~~ THEN REPLY #15230 /* ~Pravda: "Ano."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 53
  IF ~~ THEN REPLY #15232 /* ~Lež: "Ano."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Emoric_7","GLOBALLaw",-2)
~ GOTO 53
  IF ~~ THEN REPLY #15233 /* ~Pravda: "Ne tak úplně."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALLawful_Emoric_2","GLOBALLaw",2)
~ GOTO 54
  IF ~~ THEN REPLY #15235 /* ~"Chci zrušit svou žádost o vstoupení do společenství Spalovačů. Mám nějaké další otázky.."~ */ GOTO 6
  IF ~~ THEN REPLY #15239 /* ~"Nevadí. Už nechci být členem Spalovačů. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1 54.0
  SAY #15605 /* ~"Tak to by mělo být ověřeno, promluv si s Norochjem. Je tady v baru. Vrať se, až bude hotovo, oč tě požádá."~ */
  IF ~~ THEN REPLY #15609 /* ~"Promluvím s ním. Ale nejdřív mám nějaké další otázky, tak tedy..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #15610 /* ~"Velmi dobře. Teď si s ním tedy půjdu promluvit."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #15611 /* ~"Nemyslím si, že to teď chci udělat, po tom všem. Sbohem."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.2
  SAY #15612 /* ~"Víra může přijít časem. Je tvé přesvědčení tak silné, že naše filozofie se ve tvé mysli nikdy neusídlí?"~ */
  IF ~~ THEN REPLY #15613 /* ~"Rád bych svou nejistotu podrobil testu času. Strávím svůj čas mezi Spalovači, to bude zkouška mé víry."~ */ GOTO 53
  IF ~~ THEN REPLY #15614 /* ~"Nemyslím, že někdy uvěřím ve vaši filozofii. Chci zrušit svou žádost. Měl bych ještě nějaké otázky..."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 6
  IF ~~ THEN REPLY #15615 /* ~"Nemyslím, že bych se chtěl připojit ke společenství Spalovačů. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 6.13
  SAY #15616 /* ~Emoric přikývne. "Udělal jsi, co jsem žádal. Chceš pokračovat ve svém zasvěcení?"~ */
  IF ~~ THEN REPLY #15618 /* ~"Ano. Chtěl bych toho vědět více o společenství Spalovačů."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15620 /* ~"Ano. Nejsem si jistý, že moje víra je vírou Spalovačů, ale rád bych se ještě o společenství dozvěděl více, než se rozhodnu."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15622 /* ~"Ne. Rád bych zrušil svou žádost o vstup do společenství Spalovačů."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.2 55.2 57.4 59.5 60.4 62.4 63.3 64.4 65.1 66.1 67.5 68.2 69.2 70.3 71.3 72.1 74.0 75.2 76.2
  SAY #15626 /* ~"Nic dalšího už od tebe nežádám."~ */
  IF ~~ THEN REPLY #15628 /* ~"Dobře. Měl bych tedy další otázky..."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ GOTO 6
  IF ~~ THEN REPLY #15630 /* ~"Už tedy půjdu. Sbohem."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 55.1
  SAY #15634 /* ~"Mám další test. Najdi jednoho z našich zasvěcených - Smrtichtivého. Je někde tady v baru. Celou dobu se snaží zarytě najít Pravou smrt. Jestliže v tom setrvá, mohl by zůstat navěky uvězněn. Promluv s ním a zeptej se, jestli nepotřebuje pomoc."~ */
  IF ~  Global("Await","GLOBAL",2)
~ THEN REPLY #15636 /* ~"Už jsem s ním o tom mluvil."~ */ GOTO 60
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15638 /* ~"Nebude se mnou mluvit."~ */ GOTO 58
  IF ~  !Global("Await","GLOBAL",2)
!Global("Await","GLOBAL",3)
~ THEN REPLY #15640 /* ~"Promluvím si se Smrtichtivým a zjistím co se dá dělat."~ */ EXIT
  IF ~~ THEN REPLY #15642 /* ~"Promluvím s nim. Ale nejprve bych se rád zeptal pár dalších otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15644 /* ~"Chci zrušit žádost o přijetí do společenství Spalovačů."~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.1 59.0
  SAY #15645 /* ~"Neposlouchal by mne. Zajímá mne tvůj názor na Smrtichtivého."~ */
  IF ~~ THEN REPLY #15646 /* ~"Může se Spalovač až po okraj naplněný hněvem skutečně nazývat Spalovačem? Já myslím, že ne."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15647 /* ~"On není Spalovač. Možná časem."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15648 /* ~"On je Spalovač."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15649 /* ~"Nemyslím už na to. Co je, to je."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 6.14
  SAY #15651 /* ~"Rád bych věděl, o čem to mluvíš."~ */
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15652 /* ~"Nebude se mnou mluvit. Zkusil jsem, ale neposlouchá mě."~ */ GOTO 58
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
Global("Await","GLOBAL",2)
~ THEN REPLY #15653 /* ~"Vybral si život. Zatím."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15655 /* ~"Rozhodl se, že bude žít o něco déle a pokusí se zmenšit svůj chtíč po smrti."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15656 /* ~"Rozhodl se, že protrpí tento život a pokusí se zmenšit svůj chtíč po smrti."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15658 /* ~"Rozhodl se, že bude žít o něco déle a pokusí se naučit jak zemřít."~ */ GOTO 61
  IF ~~ THEN REPLY #15660 /* ~"Chci zrušit svou žádost o přijetí do spolku Spalovačů."~ */ GOTO 56
END

IF ~~ THEN BEGIN 60 // from: 57.0
  SAY #15666 /* ~"Rád bych věděl, o čem mluvíš."~ */
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
~ THEN REPLY #15668 /* ~"Vybral si život. Zatím."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15670 /* ~"Rozhodl se, že bude žít o něco déle a pokusí se zmenšit svůj chtíč po smrti."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15671 /* ~"Rozhodl se, že protrpí tento život a pokusí se zmenšit svůj chtíč po smrti."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15673 /* ~"Rozhodl se, že bude žít o něco déle a pokusí se naučit jak zemřít."~ */ GOTO 61
  IF ~~ THEN REPLY #15674 /* ~"Chci zrušit svou žádost o přijetí do společenství Spalovačů."~ */ GOTO 56
END

IF ~~ THEN BEGIN 61 // from: 59.1 59.2 59.3 59.4 60.0 60.1 60.2 60.3
  SAY #15678 /* ~"Rád bych znal tvůj názor na volbu Smrtichtivého."~ */
  IF ~~ THEN REPLY #15680 /* ~"Nebude z něj nikdy Spalovač."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15681 /* ~"Není to Spalovač, možná časem."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15683 /* ~"Je to Splaovač, už se naučil vše, co potřeboval."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15685 /* ~"Nemyslím si o tom nic. Co je, to je."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 58.0 58.1 58.2 58.3 61.0 61.1 61.2 61.3
  SAY #15692 /* ~"Promluvil jsi se zasvěcencem Smrtichtivým. Tvé myšlenky o něm jsou mi známy. Udělal jsi, co jsem žádal." Emoric přikývne. "Mám pro tebe další test. Chci aby sis promluvil s dalším obyvatelem tohoto baru. Její jméno je Sere. Sere je zasvěcenou Pátého cyklu." Emoric se na chvíli odmlčí. "Už nedodržuje učení Spalovačů s takovou vervou, jako dříve. Její srdce je hořké. Nikdo neví proč."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15693 /* ~"Nebude se mnou mluvit."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15695 /* ~"Už jsem s ní mluvil. Horečka, která ji zachvátila minulý měsíc v ní vzbudila strach ze smrti. Obviňuje Spalovače."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 64
  IF ~  !Global("Sere","GLOBAL",2)
~ THEN REPLY #15697 /* ~"Půjdu si s ní teď promluvit."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #15699 /* ~"Promluvím s ní. Ale měl bych ještě nějaké otázky..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 6
  IF ~~ THEN REPLY #15701 /* ~"Nepřeji si tenhle test. Chci zrušit svou žádost o přijetí do společenství Spalovačů."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 56
END

IF ~~ THEN BEGIN 63 // from: 6.15
  SAY #15735 /* ~"Rád bych věděl, co ti řekla."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15737 /* ~"Ona se mnou nebude mluvit."~ */ DO ~AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15739 /* ~"Horečka, která ji zachvátila minulý měsíc v ní vzbudila strach ze smrti. Obviňuje Spalovače."~ */ GOTO 64
  IF ~~ THEN REPLY #15740 /* ~"Zatím nic důležitého. Promluvím s ní znovu."~ */ EXIT
  IF ~~ THEN REPLY #15741 /* ~"Chci zrušit svou žádost o vstoupení do společenství Spalovačů."~ */ GOTO 56
END

IF ~~ THEN BEGIN 64 // from: 62.1 63.1
  SAY #15744 /* ~"Chtěl bych vědět, co jsi jí řekl."~ */
  IF ~  Global("Sere_Answer","GLOBAL",1)
~ THEN REPLY #15746 /* ~"Řekl jsem jí, že její strach a obavy ji poznamenaly. Ona není Spalovač."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",2)
~ THEN REPLY #15747 /* ~"Řekl jsem jí, že její strach je jen dočasný. Čas jí ukáže, že je Spalovač."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",3)
~ THEN REPLY #15749 /* ~"Řekl jsem jí, že její strach je jen dočasný. Čas jí ukáže, že je Spalovač."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #15750 /* ~"Našel jsem zdroj její úzkosti, ale nemohu jí s tím pomoci."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #15752 /* ~"Už nechci. Odvolávám svou žádost připojit se k Spalovačům."~ */ GOTO 56
END

IF ~~ THEN BEGIN 65 // from: 62.0 63.0
  SAY #15751 /* ~"Stejně by mě neposlouchala." Emoric přikyvuje. "Udělal jsi, oč jsem tě žádal. Chceš pokračovat ve svém zasvěcení?"~ */
  IF ~~ THEN REPLY #15753 /* ~"Ano. Je toho víc co bych se mohl naučit o Spalovačích. Chci pokračovat v testech."~ */ GOTO 67
  IF ~~ THEN REPLY #15754 /* ~"Ne. Odvolávám svou žádost připojit se k Spalovačům."~ */ GOTO 56
END

IF ~~ THEN BEGIN 66 // from: 64.0 64.1 64.2 64.3
  SAY #15755 /* ~"Udělal jsi, co jsem žádal." Emoric přikyvuje. "Chceš pokračovat ve svém zasvěcení?"~ */
  IF ~~ THEN REPLY #15756 /* ~"Ano. Je toho víc co bych se mohl naučit o Spalovačích. Chci pokračovat v testech."~ */ GOTO 67
  IF ~~ THEN REPLY #15757 /* ~"Myslím, že už není víc, co bych se chtěl naučit. Odvolávám svou žádost připojit se k Spalovačům."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0
  SAY #15758 /* ~"Zasvěcenec Pěti kruhů, Soego, se vydal ve jménu Spalovačů na misionářskou cestu." Emoric se na chvíli ztišil... nevíš, zda se pokusil zdůraznit větu, nebo je zmatený. "Jeho cesty nejsou známy mně ani společenství. Chtěl bych vědět, kde je."~ */
  IF ~  Global("Soego","GLOBAL",1)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15759 /* ~"Soego není v Márnici?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Global("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15760 /* ~"Myslím, že jsem ho zab... er, slyšel jsem, že měl nehodu. Není ještě v Márnici?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15761 /* ~"Už jsem ho našel."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15762 /* ~"Už jsem ho našel."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~~ THEN REPLY #15763 /* ~"Podívám se po něm. Přesto mám ale nejdřív nějaké otázky..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 6
  IF ~~ THEN REPLY #15764 /* ~"Nepřeji si to udělat. Odvolávám svou žádost připojit se k Spalovačům."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 56
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #15765 /* ~"Už ne. Jeho odchod byl náhlý."~ */
  IF ~~ THEN REPLY #15766 /* ~"Dobrá, podívám se po něm. Ale nejprve mám přece jen nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #15767 /* ~"Dobrá, podívám se po něm. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #15768 /* ~"Beru zpět svou prosbu připojit se k Spalovačům."~ */ GOTO 56
END

IF ~~ THEN BEGIN 69 // from: 6.16 6.17 67.2 67.3
  SAY #15769 /* ~"Rád bych věděl proč asi."~ */
  IF ~  Dead("Soego2")
~ THEN REPLY #15770 /* ~"Našel jsem ho v katakombách pod Sigilem. Zemřel tam."~ */ GOTO 71
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
~ THEN REPLY #15771 /* ~"Našel jsem ho v katakombách pod Sigilem."~ */ GOTO 70
  IF ~~ THEN REPLY #15772 /* ~"Netoužím mluvit. Beru zpět svou prosbu připojit se k Spalovačům."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
AddexperienceParty(2500)
~ GOTO 56
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY #15773 /* ~"Proč je tam?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15774 /* ~"Nevím."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15776 /* ~"Objevil skupinu nemrtvých stráží, které chrání katakomby. Pokoušel se přemluvit je, aby se připojily k Pravé smrti."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15778 /* ~"Je nakažen lykantropií. Jeho mysl mu už dlouho nebude patřit a jeho víra Spalovače bude ztracena."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15779 /* ~"Netoužím mluvit. Beru zpět svou prosbu připojit se k Spalovačům."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 71 // from: 69.0
  SAY #15780 /* ~"Proč tam byl?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15781 /* ~"Nevím."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15783 /* ~"Objevil skupinu nemrtvých stráží, které chrání katakomby. Pokoušel se přemluvit je, aby se připojily k Pravé smrti."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15785 /* ~"Nakazil se lykantropií, která ho zahnala do katakomb. Jeho mysl mu už dlouho nebude patřit a jeho víra Spalovače bude ztracena."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15786 /* ~"Netoužím mluvit. Beru zpět svou prosbu připojit se k Spalovačům."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 72 // from: 70.0 70.1 70.2 71.0 71.1 71.2
  SAY #15790 /* ~"Výborně. Našel jsi ho." Emoric nereaguje na tvou odpověď jinak, než že nepatrně přikývne. "Splnil jsi všechny úkoly, které jsem ti zadal. Udělám z tebe Spalovače, Zasvěcence Pěti kruhů. Stále chceš být členem společenství?"~ */
  IF ~~ THEN REPLY #15791 /* ~"Ano."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #15792 /* ~"Ne. Rozmyslel jsem si to."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #15794 /* ~"Tvé zasvěcení vyžaduje slib."~ */
  IF ~~ THEN REPLY #15797 /* ~"Slib?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #15798 /* ~"Musíš slíbit, že budeš sloužit Spalovačům. Musíš slíbit, že se vzdáš svého předchozího života. Musíš slíbit, že tvůj cíl je dosáhnutí Pravé smrti."~ */
  IF ~~ THEN REPLY #15800 /* ~"Uh... ne děkuji."~ */ GOTO 56
  IF ~~ THEN REPLY #15802 /* ~"Výborně."~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY #15843 /* ~"Znovu: Věříš v zásady Spalovačů?"~ */
  IF ~~ THEN REPLY #15844 /* ~"Lež: Ano."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_10","GLOBALLaw",-2)
IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 76
  IF ~~ THEN REPLY #15845 /* ~"Ano."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 76
  IF ~~ THEN REPLY #15846 /* ~"Ne. Změnil jsem názor."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 56
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #15848 /* ~"Budu tě mít jako svědka. Přísahej."~ */
  IF ~~ THEN REPLY #15849 /* ~Slož přísahu: "Slibuji, že budu sloužit Spalovačům. Opustím svůj předchozí život. Hledám pouze Pravou smrt."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_4","GLOBALLaw",3)
~ GOTO 77
  IF ~~ THEN REPLY #15850 /* ~Lež: "Slibuji, že budu sloužit Spalovačům. Opustím svůj předchozí život. Hledám pouze Pravou smrt."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_11","GLOBALLaw",-3)
~ GOTO 77
  IF ~~ THEN REPLY #15851 /* ~"Ne. Změnil jsem názor."~ */ GOTO 56
END

IF ~~ THEN BEGIN 77 // from: 76.0 76.1
  SAY #15853 /* ~"Nyní jsi očíslován mezi Mrtvými. Jsou věci, které ti musím říct."~ */
  IF ~~ THEN REPLY #15854 /* ~Poslouchat.~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #15855 /* ~"Živí mrtví dlí mezi Spalovači. Pracují se Spalovači. Jindy bývají nepřáteli živých." ~ */
  IF ~~ THEN REPLY #15856 /* ~"To mé pozornosti neuniklo."~ */ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #15857 /* ~"Spalovači mají dohodu se všemi Mrtvými. Tato dohoda je známa jako *Smrtelná smlouva.* Mrtví Spalovačům nikdy neublíží tak dlouho, dokud si budeme pomáhat." Jak Emoric vyslovil tato slova, náhle cítíš cizí plíživý pocit vzadu na tvé lebce... má to co dělat s Pravou smrtí, ale nemůžeš si vzpomenout co.~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #15858 /* ~"Chápu."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",1)
SetGlobal("Dustman_Ressurection","GLOBAL",1)
SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,2500)
~ JOURNAL #61611 /* ~Když jsem se přidával ke Spalovačům, Emoric mluvil o 'Příměří s Mrtvými' - které uzavřeli spalovači s nemrtvými jako jsou kostlivci či zombie, a tato stvoření nikdy nezraní člena frakce, pokud sám první nezaútočí. Nicméně, když ze mě udělal spalovače, zmocnil se mě jakýsi zvláštní pocit, že jsem tuhle smouvu nějak porušil. Příměří s mrtvými by mělo sloužit jako ochrana před útoký nemrtvých, ale mám jakési podezření, že  mě chránit nebude. Nevím proč... možná jsem vůči nim v minulosti spáchal hrozný hřích? ~ */ GOTO 80
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15860 /* ~"Uh... jo, takže nikdy neublíží opravdovému Spalovači... kdokoliv, kdo by jen předstíral, že je Spalovač, by stejnou ochranu neměl, předpokládám."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15861 /* ~"Uh... jo, takže nikdy neublíží opravdovému Spalovači... kdokoliv, kdo by jen předstíral, že je Spalovač, by stejnou ochranu neměl, předpokládám."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15862 /* ~"Uh... jo, takže nikdy neublíží opravdovému Spalovači... kdokoliv, kdo by jen předstíral, že je Spalovač, by stejnou ochranu neměl, předpokládám."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",7)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15863 /* ~"Uh... jo, takže nikdy neublíží opravdovému Spalovači... kdokoliv, kdo by jen předstíral, že je Spalovač, by stejnou ochranu neměl, předpokládám."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0 79.1 79.2 79.3 79.4
  SAY #15867 /* ~"Kromě toho, existují kouzla která prodlužují život nebo ruší smrt. Taková kouzla jsou kletbou pro naše společenství. Málokdy působí na členy naší frakce. Nic se nepokusí zasahovat do tvé cesty k Pravdivé smrti. Rozumíš?"~ */
  IF ~~ THEN REPLY #15875 /* ~"Co když je pro člověka ... obtížné... zemřít?"~ */ GOTO 82
  IF ~~ THEN REPLY #15876 /* ~"Zahrnuje to léčivá kouzla?"~ */ GOTO 89
  IF ~~ THEN REPLY #15877 /* ~"Mám otázku ohledně té Pravé smrti..."~ */ GOTO 90
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15878 /* ~"Uh... jo, předpokládám, že tohle tabu vzkříšení se vztahuje pouze na opravdové Spalovače, co? Nezabrání to léčícím kouzlům, nebo ano?"~ */ GOTO 89
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15879 /* ~"Uh... jo, předpokládám, že tohle tabu vzkříšení se vztahuje pouze na opravdové Spalovače, co? Nezabrání to léčícím kouzlům, nebo ano?"~ */ GOTO 89
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15880 /* ~"Uh... jo, předpokládám, že tohle tabu vzkříšení se vztahuje pouze na opravdové Spalovače, co? Nezabrání to léčícím kouzlům, nebo ano?"~ */ GOTO 89
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15881 /* ~"Uh... jo, předpokládám, že tohle tabu vzkříšení se vztahuje pouze na opravdové Spalovače, co? Nezabrání to léčícím kouzlům, nebo ano?"~ */ GOTO 89
  IF ~~ THEN REPLY #15882 /* ~"Rozumím. Teď když jsem Spalovač, mám pár otázek ohledně Spalovačů..."~ */ GOTO 81
  IF ~~ THEN REPLY #15883 /* ~"Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15884 /* ~"Rozumím. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 6.19 80.7 82.4 83.1 84.1 86.2 87.1 88.4 89.0 90.2 91.1 92.1 93.3 94.0 96.0 98.3 99.3 100.3 101.2 102.1
  SAY #15885 /* ~Emoric čeká.~ */
  IF ~~ THEN REPLY #15886 /* ~"Co se týče té filozofie, že nic nebude zasahovat do mé cesty za Pravou smrtí: co když je pro člověka ... obtížné... zemřít?"~ */ GOTO 82
  IF ~~ THEN REPLY #15887 /* ~"Zahrnuje tohle omezení vzkříšení také léčivá kouzla?"~ */ GOTO 89
  IF ~~ THEN REPLY #15888 /* ~"Mám otázku ohledně Smrtelné smlouvy."~ */ GOTO 90
  IF ~~ THEN REPLY #15889 /* ~"Jako Spalovači, jaký druh pomoci je mi přístupný?"~ */ GOTO 98
  IF ~~ THEN REPLY #15890 /* ~Potřebuji trochu pomoct."~ */ GOTO 93
  IF ~~ THEN REPLY #15891 /* ~"Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15892 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.0 81.0
  SAY #15893 /* ~"Povaha tvé otázky je nejasná, Zasvěcený."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15894 /* ~Pravda: "Myslím, že jsem nesmrtelný."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15895 /* ~Pravda: "Myslím, že jsem nesmrtelný."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15896 /* ~"Dobrá, znám jednoho nesmrtelného a ptám se za něj."~ */ GOTO 86
  IF ~~ THEN REPLY #15897 /* ~"Co kdyby Spalovač, o kterém mluvíme, byl nesmrtelný?"~ */ GOTO 88
  IF ~~ THEN REPLY #15898 /* ~"Nevadí. Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15899 /* ~"Zapomeň na to. Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15900 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 82.1 88.1 99.0
  SAY #15901 /* ~"Co tě podnítilo k vyslovení takové věci, Zasvěcený?"~ */
  IF ~~ THEN REPLY #15902 /* ~"Nemohu pravděpodobně zemřít. Mohu být zraněn a rychle vyléčen."~ */ GOTO 84
  IF ~~ THEN REPLY #15903 /* ~"Nevadí. Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15904 /* ~"Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15905 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #15906 /* ~Emoric na tebe civí. "Ukaž mi to, Vyvolený."~ */
  IF ~~ THEN REPLY #15907 /* ~Udělat to.~ */ GOTO 85
  IF ~~ THEN REPLY #15908 /* ~"Nevadí. Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15909 /* ~"Zapomeň na to... Byl jsem nečistý. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15910 /* ~"Přeřekl jsem se. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #15911 /* ~Udělal jsi malý řez a zranění se skoro ihned zahojilo. Emoric civí, jak se zranění hojí, na chvíli je zticha, potom stočí svůj pohled zpět na tebe. "Nějaká tvá vlastnost vzdoruje Pravé smrti. Již nemůžeš být déle Spalovačem. Musíš odejít."~ */
  IF ~~ THEN REPLY #15912 /* ~"Pokud musím... vzdávám se členství u Spalovačů. Sbohem."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 82.2 88.2 99.1
  SAY #15913 /* ~Emoric je chvíli zticha. "Tedy... tento přítel... velmi trpí. Je chycen v tomto falešném bytí a nemůže nikdy dosáhnout Pravé smrti."~ */
  IF ~~ THEN REPLY #15914 /* ~"*Chycen?*"~ */ GOTO 101
  IF ~~ THEN REPLY #15915 /* ~"Proč by někdo zůstával chycen v tomto falešném bytí?"~ */ GOTO 87
  IF ~~ THEN REPLY #15916 /* ~"Aha. Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15917 /* ~Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15918 /* ~"Rozuměl. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.1 101.1 102.0
  SAY #15919 /* ~"K dosáhnutí Pravé smrti se dotyčný musí zbavit veškerého hněvu a všech vazeb k tomuto falešnému bytí. Tyto věci působí jako kotva na duši. Mnoho stvoření, jako duchové nebo jiné neklidné duše, jsou namačkány do tohoto falešného bytí z důvodu nenaplněných vášní."~ */
  IF ~~ THEN REPLY #15920 /* ~"Když jsi před tím říkal, že tato nesmrtelná osoba je polapena ve svém životě, cos tím myslel?"~ */ GOTO 101
  IF ~~ THEN REPLY #15921 /* ~"Aha. Mám nějaké otázky nesouvisející se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15922 /* ~"Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15923 /* ~"Aha. Díky za informace. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 82.3 99.2
  SAY #15924 /* ~"Potom by nemohl být Spalovačem. Jejich víra v nesmrtelnost by Zasvěceného polapila v jeho životě a on by nedosáhl Pravé smrti." Emoric na chvíli zmlkl. "Co podnítilo takovou otázku, Zasvěcený?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15925 /* ~Pravda: "Myslím, že jsem nesmrtelný."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15926 /* ~Pravda: "Myslím, že jsem nesmrtelný."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15927 /* ~"Mám takového přítele, který je nesmrtelný. Ptal jsem se jeho jménem."~ */ GOTO 86
  IF ~~ THEN REPLY #15928 /* ~"Jejich *víra* by ho polapila? Jak?"~ */ GOTO 101
  IF ~~ THEN REPLY #15929 /* ~"Jen tak. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15930 /* ~"Nevadí. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15931 /* ~"Jen jsem se ptal. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 80.1 80.3 80.4 80.5 80.6 81.1
  SAY #15932 /* ~"Léčící kouzla budou pracovat normálně. Reinkarnační a obživovací kouzla, bohužel, nemohou být použita na členy našeho řádu. Taková kouzla jsou proti pravidlům věřících v Pravou smrt."~ */
  IF ~~ THEN REPLY #15933 /* ~"Aha. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15934 /* ~"Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15935 /* ~"Výborně. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 80.2 81.2
  SAY #15936 /* ~Emoric čeká.~ */
  IF ~~ THEN REPLY #15937 /* ~"Co se stane, když zaútočím na nemrtvé?"~ */ GOTO 91
  IF ~~ THEN REPLY #15938 /* ~"Co sebeobrana?"~ */ GOTO 92
  IF ~~ THEN REPLY #15939 /* ~"Aha. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15940 /* ~Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15941 /* ~"Výborně. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 92.0
  SAY #15942 /* ~"Potom porušíš Smrtelnou smlouvu."~ */
  IF ~~ THEN REPLY #15943 /* ~"Co sebeobrana?"~ */ GOTO 92
  IF ~~ THEN REPLY #15944 /* ~"Aha. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15945 /* ~"Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15946 /* ~"Výborně. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1 91.0
  SAY #15947 /* ~"Nikdy se nestane, že by tě Mrtvý napadl, dokud bude Smlouva udržována."~ */
  IF ~~ THEN REPLY #15948 /* ~"Co se stane, když některého z nich napadnu?"~ */ GOTO 91
  IF ~~ THEN REPLY #15949 /* ~"Aha. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15950 /* ~"Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15951 /* ~"Výborně. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 6.18 81.4
  SAY #15952 /* ~"Jak ti to může pomoct, Zasvěcený?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15953 /* ~"Potřebuji vyléčit."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15954 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 95
  IF ~~ THEN REPLY #15955 /* ~"Máš nějaká kouzla nebo věci, které by mi pomohly?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15956 /* ~"Nic, nevadí. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15957 /* ~"Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15958 /* ~"Dnes nic, opravdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 98.0 100.0
  SAY #15959 /* ~Emoric nepatrně sklonil svou hlavu a ty cítíš ochromující mrazení procházející tvým tělem, jako by se tvé kosti a svaly měnily v kámen. Když mrazení prošlo tvým tělem, bolest z tvých zranění opadla. O chvíli později, se tento pocit vrátil... ale bolest již pominula.~ */
  IF ~~ THEN REPLY #15960 /* ~"Děkuji ti. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15961 /* ~"Cítím se znovu zdravý. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15962 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.1 98.1 100.1
  SAY #15963 /* ~"Můžeš odpočívat zde, Zasvěcený."~ */
  IF ~~ THEN REPLY #15964 /* ~"Děkuji..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 96 // from:
  SAY #15965 /* ~Probudil ses o něco později posilněn a šel zpět za Emorikem.~ */
  IF ~~ THEN REPLY #15966 /* ~"Jsem odpočatý, děkuji. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 81
  IF ~~ THEN REPLY #15967 /* ~"Znovu se cítím uzdraven. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 6
  IF ~~ THEN REPLY #15968 /* ~"Děkuji, žes mě nechal odpočinout. Sbohem."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 6.6 6.7
  SAY #15969 /* ~"Jestli se toužíš připojit k frakci Spalovačů, vyslyším tvou prosbu."~ */
  IF ~~ THEN REPLY #15970 /* ~"Ano, toužím se připojit k frakci Spalovačů."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15971 /* ~"Špatně jsi mě odhadl. *Netoužím* se přidat k frakci Spalovačů. Pouze věřím v to co Spalovači."~ */ GOTO 48
  IF ~~ THEN REPLY #15972 /* ~"Nevadí. Mám pár dalších otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #15973 /* ~"Dnes ne. Musím odejít. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 81.3
  SAY #15974 /* ~"Jako Zasvěcený Spalovač budeš mít přístup do studnice našich vědomostí a skladiště kouzel a předmětů. Také můžeš přijít za mnou, pokud budeš potřebovat uzdravit, nebo si odpočinout."~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15975 /* ~"Potřebuji uzdravit."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15976 /* ~"Potřebuji místo k odpočinku."~ */ GOTO 95
  IF ~~ THEN REPLY #15977 /* ~"Co máte ve svých skladištích?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15978 /* ~"Aha. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15979 /* ~"Výborně. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15980 /* ~"Děkuji. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 82.0 88.0
  SAY #15981 /* ~Chtěl jsi promluvit, ale cítíš bodavý pocit vzadu na hlavě. Máš pocit, že zmínka Emorikovi o tvém stavu by nebyl dobrý nápad. Stále tě pozoruje a čeká až promluvíš.~ */
  IF ~~ THEN REPLY #15982 /* ~Pravda: "Myslím, že jsem nesmrtelný."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_6","GLOBALLaw",3)
~ GOTO 83
  IF ~~ THEN REPLY #15983 /* ~"Dobrá, znám někoho, kdo je nesmrtelný a ptal jsem se jeho jménem."~ */ GOTO 86
  IF ~~ THEN REPLY #15984 /* ~"Co když Spalovač, o kterého jde, je nesmrtelný?"~ */ GOTO 88
  IF ~~ THEN REPLY #15985 /* ~"Nevadí. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15986 /* ~"Zapomeň na to. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15987 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #15988 /* ~"Potřebuješ ještě něco, Zasvěcený?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15989 /* ~"Potřebuji uzdravit."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15990 /* ~"Potřebuji místo kde bych si odpočinul."~ */ GOTO 95
  IF ~~ THEN REPLY #15991 /* ~"Rád bych se znovu podíval do skladu."~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15992 /* ~"Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15993 /* ~"Ano. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #15994 /* ~"Dnes nic, opravdu. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 86.0 87.0 88.3
  SAY #15995 /* ~"Nesmrtelnost je volba. Domněnka, že je moje nebo někoho jiného, způsobuje žádostivost. Jeden je nesmrtelný, když se *nechce* vzdát života."~ */
  IF ~~ THEN REPLY #15996 /* ~"Potom ale, dle tvých argumentů, smrt je taky volba. Proč chtějí lidé nejdřív zemřít?"~ */ GOTO 102
  IF ~~ THEN REPLY #15997 /* ~"Proč by někdo zůstával chycen v tomto falešném bytí?"~ */ GOTO 87
  IF ~~ THEN REPLY #15998 /* ~"Aha. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #15999 /* ~"Hmmmm. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #16000 /* ~"Zajímavé. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #16001 /* ~"Smrt je také volba. Ale, narozdíl od nesmrtelnosti, jsou mnozí, kteří věří ve smrt. Jejich víra nám umožňuje zemřít." Emoric na chvíli ztichl. "Nežijeme navždy, Zasvěcený. V našich myslích, víme, že to je pravda."~ */
  IF ~~ THEN REPLY #16002 /* ~"Tudíž... proč by někdo zůstával chycen v tomto falešném bytí?"~ */ GOTO 87
  IF ~~ THEN REPLY #16003 /* ~"Aha. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 81
  IF ~~ THEN REPLY #16004 /* ~"Hmmmm. Mám pár dalších otázek nesouvisejících se společenstvím..."~ */ GOTO 6
  IF ~~ THEN REPLY #16005 /* ~"Zajímavé. Sbohem."~ */ EXIT
END
