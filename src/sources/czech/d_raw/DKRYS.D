// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DKRYS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1800 /* ~Vidíš chladnou soustředěnou ženu. V jejím obličeji jsou znát jasné rysy odhodlanosti. Její hlas je hluboký a pevný. "Já jsem  Krystall, vůdce Ostrých andělů. Jsi v našem domově. Co po mně chceš?"~ */
  IF ~~ THEN REPLY #3818 /* ~"Pověz mi o sobě."~ */ GOTO 1
  IF ~~ THEN REPLY #3819 /* ~"Pověz mi o Ostrých Andělech."~ */ GOTO 2
  IF ~~ THEN REPLY #3820 /* ~"Pověz mi o Uličce."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3821 /* ~"Hledám Pharoda."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3822 /* ~"Hledám deník."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3823 /* ~"Černá Růže tě chce ve stavu mrtvolném. Přišel jsem tě zabít."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("RW","GLOBAL",2)
~ THEN REPLY #3824 /* ~"Prohnilý William tě chce ve stavu mrtvolném. Přišel jsem tě zabít."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3825 /* ~"Nic."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0
  SAY #2812 /* ~Pokrčila rameny. "Jsem vůdkyně Ostrých Andělů. To je všechno, co potřebuješ vědět. Vytvořila jsem je, poslouchají mé rozkazy. Teď. Co ode mě chceš?"~ */
  IF ~~ THEN REPLY #3826 /* ~"Pověz mi o sobě."~ */ GOTO 1
  IF ~~ THEN REPLY #3827 /* ~"Pověz mi o Ostrých Andělech."~ */ GOTO 2
  IF ~~ THEN REPLY #3828 /* ~"Pověz mi o Uličce."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3829 /* ~"Hledám Pharoda."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3830 /* ~"Hledám deník."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3831 /* ~"Černá Růže tě chce ve stavu mrtvolném. Přišel jsem tě zabít."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3832 /* ~"Nic."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #2813 /* ~"Přišli jsme, když větší gang ovládl Smetiště blízko Hadrníkova náměstí. Dostali jsme se sem přibližně ve stejnou dobu jako Shivové, kteří sídlí na druhé straně uličky. Je to banda vrahounských grázlů," odmlčela se. "My jsme možná grázlové, ale nezabíjíme, když to jde jinak. Musíme si nějak vydělat na živobytí a díky naší situaci je vybírání poplatků za průchod nejlepší způsob, jak přežít."~ */
  IF ~~ THEN REPLY #3833 /* ~"To zní dobře."~ */ GOTO 7
  IF ~~ THEN REPLY #3834 /* ~"Díky za informace. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2
  SAY #2814 /* ~"Celé tohle místo vyhořelo, když se praštěný kouzlomrsk rozhodl, že to tu bude vypadat líp jako popel. Od té doby je to místo kriminálníků a gangsterů."~ */
  IF ~~ THEN REPLY #3835 /* ~"Včetně tebe?"~ */ GOTO 8
  IF ~~ THEN REPLY #3836 /* ~"Aha. No, já budu muset jít. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.3 5.0
  SAY #2815 /* ~Odplivla si. "Najdeš ho blízko Hadrníkova náměstí. Poptej se tam, určitě narazíš na někoho, kdo ti o něm něco poví."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3837 /* ~"Neviděl jsi tady někde v okolí deník?"~ */ GOTO 5
  IF ~~ THEN REPLY #3839 /* ~"Díky. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.4 4.0
  SAY #2817 /* ~"Deník? Kniha? Tady? V Uličce? Ha! Promiň - cokoliv hořlavého skončí v ohni, na kterém se vaří jídlo."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3841 /* ~"Velmi dobře. Nevíš, kde bych našel muže jménem Pharod?"~ */ GOTO 4
  IF ~~ THEN REPLY #3843 /* ~"Mé díky, tedy. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.7 1.6 2.1 3.1 4.1 5.1 7.0 8.0
  SAY #2818 /* ~"Než půjdeš, je tady jedna věc, o kterou bych tě ráda požádala. Tohle místo není dost velké pro nás i pro Shivy. My máme srdce. Oni nenávist. Zabij jejich vůdce, Prohnilého Williama, a můžeš tudy procházet zdarma po zbytek života. Chodíš tudy dost často, aby ti to ušetřilo opravdu spoustu peněz."~ */
  IF ~~ THEN REPLY #3844 /* ~"Pověz mi o svém gangu."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~Krystall, vůdkyně Ostrých Andělů z Uličky nebezpečných zákoutí mě požádala, ať zlikviduju jejího hlavního rivala, muže jménem Prohnilý WIlliam. Za odměnu získám volný průchod Uličkou.~ */ GOTO 11
  IF ~~ THEN REPLY #3845 /* ~"To zní jako dohoda. Máš to mít."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ JOURNAL #31879 /* ~Krystall, vůdkyně Ostrých Andělů z Uličky nebezpečných zákoutí mě požádala, ať zlikviduju jejího hlavního rivala, muže jménem Prohnilý WIlliam. Za odměnu získám volný průchod Uličkou.~ */ GOTO 9
  IF ~~ THEN REPLY #3846 /* ~"Nejsem vrah."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~Krystall, vůdkyně Ostrých Andělů z Uličky nebezpečných zákoutí mě požádala, ať zlikviduju jejího hlavního rivala, muže jménem Prohnilý WIlliam. Za odměnu získám volný průchod Uličkou.~ */ GOTO 10
  IF ~  Dead("RWill")
~ THEN REPLY #37811 /* ~"Ten už je mrtvý."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 7 // from: 2.0
  SAY #2819 /* ~"Ne. Tak to není. Nám už nezbývá nic jiného pro přežití. Žijeme v Úlu. Dokonce ani ta trocha vzdělání mě odtud nedostane. Nikdo nechce obyvatele Úlu, takže se snažíme, ať nás totálně neignorují."~ */
  IF ~~ THEN REPLY #3847 /* ~"No jo. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #2820 /* ~"Jó. Ale myslím si, že jestli si udržíme Uličku a zbavíme se Shivů, nějakou dobu se udržíme."~ */
  IF ~~ THEN REPLY #3848 /* ~"Možná. Sbohem."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 6.1 10.1 11.0 12.0 14.0
  SAY #2821 /* ~"Těším se na tvůj úspěch. Přijď zpátky, až to dokončíš, dobře? Hodně štěstí."~ */
  IF ~~ THEN REPLY #3851 /* ~"Sbohem."~ */ JOURNAL #3853 /* ~Souhlasil jsem, že zabiju Prohnilého Williama.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #2822 /* ~"Možná ne. Je to výběr mezi zabitím toho šíleného psa a jeho parchantů, nebo zaplacením pokaždé, když budeš procházet Uličkou. Je to tvůj výběr."~ */
  IF ~~ THEN REPLY #3854 /* ~"Zapomeň na to. To neudělám."~ */ GOTO 12
  IF ~~ THEN REPLY #3855 /* ~"Tak to tedy udělám."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #3369 /* ~"Jsme kočovníci. Nutí nás to stěhovat se. Usadili jsme se tady ve stejnou dobu jako Prohnilý Willi a jeho Shivové a teď musíme bojovat o život. Jenom tady vybíráme nízký poplatek za průchod. Oni berou životy. Jsme v zásadě dobří lidé. Oni jsou zlí a jsou vedení zlým mužem."~ */
  IF ~~ THEN REPLY #3856 /* ~"Zabiju ho."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3857 /* ~"Připadá mi sympatičtější. Sbohem."~ */ EXIT
  IF ~~ THEN REPLY #3858 /* ~"To neudělám."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.2
  SAY #3801 /* ~"To mě nezastaví. Pokaždý se zeptám. Je to třeba dělat."~ */
  IF ~~ THEN REPLY #3859 /* ~"Tak bych to asi měl udělat."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3860 /* ~"Stejně to neudělám. Sbohem."~ */ EXIT
END

IF ~  GlobalGT("Krystall","GLOBAL",0)
GlobalLT("Krystall","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #3802 /* ~"Uspěl jsi v zapsání Prohnilého Williama do knihy mrtvých?"~ */
  IF ~  Global("Krystall","GLOBAL",1)
~ THEN REPLY #7729 /* ~"Říkal jsem ti, že to neudělám!"~ */ GOTO 14
  IF ~  !Dead("Rwill")
~ THEN REPLY #9345 /* ~"Teď nechci, díky."~ */ GOTO 15
  IF ~  Dead("Rwill")
~ THEN REPLY #34415 /* ~"Ano. Je mrtvý. Už se o něj ani jeho gang nemusíš starat."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3803 /* ~"A já ti řekla, že se budu ptát, dokud nebudeš souhlasit."~ */
  IF ~~ THEN REPLY #34416 /* ~"Pokud mě pak přestaneš otravovat, udělám to."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #34417 /* ~"Neudělám to. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #3804 /* ~"Tak proč na mně mluvíš? Tohle je práce, kterou je třeba udělat!" Otočila se od tebe.~ */
  IF ~~ THEN REPLY #34418 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.3 13.2
  SAY #3805 /* ~"Hotovo? Prohnilý William je pryč? Děkuju ti, kamaráde, už nemusíš nikdy platit mýtné za průchod uličkou. Ale mám k tobě ještě jednu prosbu."~ */
  IF ~~ THEN REPLY #34419 /* ~"Zapomeň na to."~ */ GOTO 17
  IF ~~ THEN REPLY #34420 /* ~"Co je to?"~ */ GOTO 17
  IF ~~ THEN REPLY #34421 /* ~"Co z toho budu mít já?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #3806 /* ~"Je tady nebezpečný zabiják, samotář, který si říká 'Černá Růže'. Zabíjí mé lidi. Žádám tě: zastav ho."~ */
  IF ~~ THEN REPLY #34422 /* ~"Udělám to."~ */ GOTO 19
  IF ~~ THEN REPLY #34423 /* ~"Co z toho budu mít já?"~ */ GOTO 18
  IF ~~ THEN REPLY #34424 /* ~"Nezájem. Sbohem."~ */ GOTO 20
  IF ~  Dead("BlackR")
~ THEN REPLY #37814 /* ~"Ten je taky mrtvý."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1
  SAY #3807 /* ~"Prachy. Chechtáky. Docela dost. Máš zájem?"~ */
  IF ~~ THEN REPLY #34425 /* ~"Ano."~ */ GOTO 19
  IF ~~ THEN REPLY #34426 /* ~"Ne."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #3808 /* ~"Tak najdi toho magora Černou Růži, někde tady pobíhá, a voddělej ho. Až bude po něm, přiď a já ti dám vodměnu."~ */
  IF ~~ THEN REPLY #34427 /* ~"Dohodnuto. Sbohem."~ */ JOURNAL #34428 /* ~Existuje někdo, koho nechce Krystall mrtvého? Teď pátrám po někom jménem Černá Růže a mám ho zlikvidovat. Slíbila mi za tenhle úkol peníze a přátelství.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2 18.1
  SAY #3809 /* ~Usmála se. "Uvědomuješ si doufám, že se tě budu ptát tak dlouho, dokud nebudeš souhlasit. Takže nashledanou."~ */
  IF ~~ THEN REPLY #34429 /* ~"Skvělé. Sbohem."~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #3810 /* ~"Našel jsi Černou Růži a odstranil ho z uličky?"~ */
  IF ~  !Dead("BlackR")
~ THEN REPLY #34430 /* ~"Ještě ne."~ */ GOTO 24
  IF ~  Dead("BlackR")
~ THEN REPLY #34431 /* ~"Ano. Už se o něj nemusíš dál starat."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 17.3 21.1
  SAY #3812 /* ~Podala ti velkou peněženku. "Máš mé díky, a stejně tak díky Ostrých Andělů. Budu na tebe myslet jako na přítele."~ */
  IF ~~ THEN REPLY #34432 /* ~"Jistě. Sbohem."~ */ JOURNAL #34433 /* ~Získal jsem váček mincí za zlikvidování Černé Růže. Docela slušná suma.~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #3814 /* ~"Zdar, příteli. Děkujeme ti. Považuj Uličku za svůj domov. Sbohem."~ */
  IF ~~ THEN REPLY #34434 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #3816 /* ~"Prosím, zkus to. Ničí mé lidi."~ */
  IF ~~ THEN REPLY #34435 /* ~"Budu hledat dál. Sbohem."~ */ EXIT
END
