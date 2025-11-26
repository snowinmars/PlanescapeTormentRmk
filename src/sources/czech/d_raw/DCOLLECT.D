// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1805 /* ~Tento muž je zahalen ve špinavých, roztrhaných hnědých šatech, dlouhá kapuce zakrývá ze strany většinu obličeje.~ */
  IF ~~ THEN REPLY #21697 /* ~"Zdravím tě..."~ */ GOTO 1
  IF ~~ THEN REPLY #21698 /* ~Nechej ho být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21677 /* ~Vidíš, jak se jeho oči pod kápí zúžily, a odstupuje. "Co po mně chceš?"~ */
  IF ~~ THEN REPLY #21699 /* ~"Co to děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #21700 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #21701 /* ~"Chtěl bych se na něco zeptat..."~ */ GOTO 6
  IF ~~ THEN REPLY #21702 /* ~"Nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.0
  SAY #21678 /* ~"Zkouším tady najít ňáký zatracený mrtvoly, přesně to tady dělám, ale začínám si myslet, že Mrtvomocnosti si spakovaly svých pět švestek a opustily Sféry, takže lidé zůstávají živí a zdraví." Náhle se mu zablesklo v oku: "Minulý měsíc jsme tady měli neštovice, a to byly skvělý časy, to bylo... mrtvoly smrděly až do nebe, a taky spousta škváry, jen ji sebrat."~ */
  IF ~~ THEN REPLY #21703 /* ~"Proč hledáš těla?"~ */ GOTO 3
  IF ~~ THEN REPLY #21704 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #21705 /* ~"Chtěl bych se na něco zeptat..."~ */ GOTO 6
  IF ~~ THEN REPLY #21706 /* ~"To je všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #21679 /* ~Vypadá překvapeně. "Dobrá, dotáhnu ty mizery do Márnice. Tam si promluvím si se Spalovači, trochu smlouvám, a dostanu trochu škváry."~ */
  IF ~~ THEN REPLY #21707 /* ~"Proč Spalovači kupují těla?"~ */ GOTO 4
  IF ~~ THEN REPLY #21708 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #21709 /* ~"Chtěl bych se na něco zeptat..."~ */ GOTO 6
  IF ~~ THEN REPLY #21710 /* ~"To je všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #21680 /* ~"Shromažďují mrtvé... je to jejich práce. Platí nám, abychom pokryli větší území a přinesli jim všechna těla, která najdeme. Pak se ujistí, že se mizerovo tělo dostane na správné místo, nebo ho spálí. Jsou s tím všichni tak důležití, s jejich hloupou filozofií, ale to znamená jenom víc škváry pro mě." Mrká.~ */
  IF ~~ THEN REPLY #21711 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #21712 /* ~"Mám několik otázek..."~ */ GOTO 6
  IF ~~ THEN REPLY #21713 /* ~"To je všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 18.1
  SAY #21681 /* ~Zamračí se na tebe. "Jsi na Hadrníkově náměstí, samozřejmě. Odkud jsi, kámo? Jsi ze Základní, nebo co?"~ */
  IF ~~ THEN REPLY #21714 /* ~"Ne. Proč hledáš těla?"~ */ GOTO 3
  IF ~~ THEN REPLY #21715 /* ~"Ne. Chtěl bych se na něco zeptat..."~ */ GOTO 6
  IF ~~ THEN REPLY #21826 /* ~"Ne. To je všechno. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 18.2
  SAY #21682 /* ~Zvedá obočí. "Tak to já teda taky, jako třeba co chceš vědět, a hlavně jak moc to chceš vědět?"~ */
  IF ~~ THEN REPLY #21717 /* ~"Co tím myslíš?"~ */ GOTO 7
  IF ~~ THEN REPLY #21718 /* ~"Povídej o Sběračích."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21719 /* ~"Hledám někoho, kdo se jmenuje Pharod."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21720 /* ~"Hledám svůj ztracený deník."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21721 /* ~"Co víš o Mebbeth?"~ */ GOTO 7
  IF ~~ THEN REPLY #21722 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #21683 /* ~"Rozhlídni se kolem, kámo... Já si nevydělám dost škváry, abych mohl zahnat temnotu, když tady budu jenom stát. Bude tě stát trochu peněz, jestli chceš něco vědět."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21723 /* ~Podej mu pár mědáků.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21724 /* ~Hoď mu pět mědáků.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21725 /* ~Polož mu do dlaně deset měďáků.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21726 /* ~"Nic nedostaneš a budeš hezky mluvit."~ */ GOTO 17
  IF ~~ THEN REPLY #21727 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.1
  SAY #21684 /* ~Směje se. "Dokonce i Spalovači platí víc než ty, kámo. To toho asi zas tak moc vědět nechceš."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21728 /* ~Hoď mu pět mědáků.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21729 /* ~Polož mu do dlaně deset měďáků.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21730 /* ~"Nic nedostaneš a budeš hezky mluvit."~ */ GOTO 17
  IF ~~ THEN REPLY #21731 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 17.2
  SAY #21685 /* ~Chvíli si prohlíží mince ve své dlani. "Eh." Hbitě je dává do kapsy. "Ptej se."~ */
  IF ~~ THEN REPLY #21732 /* ~"Povídej o Sběračích."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21733 /* ~"Hledám někoho, kdo se jmenuje Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21734 /* ~"Hledám svůj ztracený deník."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21735 /* ~"Co víš o Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21736 /* ~"Nevadí. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.1 17.3
  SAY #21686 /* ~"Tak se ptej. Nemůžu předem říct, že to budu vědět, ale budu se snažit."~ */
  IF ~~ THEN REPLY #21737 /* ~"Povídej o Sběračích."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21738 /* ~"Hledám někoho, kdo se jmenuje Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21739 /* ~"Hledám svůj ztracený deník."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21740 /* ~"Co víš o Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21741 /* ~"Nevadí. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.4 10.4 12.3 13.5 14.4 15.3 16.3 19.5 20.4
  SAY #21687 /* ~"Dobře, dej na sebe pozor, kámo. Když tě najdu ležet na ulici, budu k tvojí mrtvole milý."~ */
  IF ~~ THEN REPLY #21742 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.2 14.1 15.0 16.0 19.2 20.1
  SAY #21688 /* ~"Já... my... vyděláváme si na živobytí taháním mrtvol z ulic Sigilu a taháním jejich zadků do Márnice. Není to nejlepší způsob obživy, ale je to začátek. Je to všechno cos chtěl vědět, kámo?" Divně se na tebe dívá.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21743 /* ~"Hledám někoho, kdo se jmenuje Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21744 /* ~"Hledám svůj ztracený deník."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21745 /* ~"Co víš o Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21746 /* ~"To je všechno. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.1 12.0 15.1 16.1
  SAY #21689 /* ~Náhle se jeho oči zúžily. "Pharod... co s ním?"~ */
  IF ~~ THEN REPLY #21747 /* ~"Nejednou jsi nějak opatrný... proč?"~ */ GOTO 19
  IF ~~ THEN REPLY #21748 /* ~"Ty víš kde je?"~ */ GOTO 14
  IF ~~ THEN REPLY #21749 /* ~"Povídej o Sběračích."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21750 /* ~"Taky hledám svůj ztracený deník."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21751 /* ~"Co víš o Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21752 /* ~"To je všechno. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.1 19.1 20.0
  SAY #21690 /* ~"Vím jenom kde ten krysí parchant není... v žádným případě není tady na Náměstí, ale musí být někde blízko."~ */
  IF ~~ THEN REPLY #21753 /* ~"Sdílejí s tebou všichni Sběrači tvůj názor na Pharoda?"~ */ GOTO 19
  IF ~~ THEN REPLY #21754 /* ~"Povídej o Sběračích."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21755 /* ~""Taky hledám svůj ztracený deník.""~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21756 /* ~"Co víš o Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21757 /* ~"To je všechno. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 9.3 10.3 12.2 13.4 14.3 16.2 19.4 20.3
  SAY #21691 /* ~"Porodní bába? To je milá ženská, to si můžeš bejt jistej, pomůže ti když seš nemocnej a tak. Žije v chatrči na plošinách, jesti to chceš vědět."~ */
  IF ~~ THEN REPLY #21758 /* ~"Povídej o Sběračích."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21759 /* ~"Hledám někoho, kdo se jmenuje Pharod."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21760 /* ~"Hledám svůj ztracený deník."~ */ GOTO 16
  IF ~~ THEN REPLY #21761 /* ~"To je všechno. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 9.2 10.2 12.1 13.3 14.2 15.2 19.3 20.2
  SAY #21692 /* ~Jenom zmateně vrtí hlavou.~ */
  IF ~~ THEN REPLY #21762 /* ~"Povídej o Sběračích."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21763 /* ~"Taky hledám někoho, kdo se jmenuje Pharod."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21764 /* ~"Co víš o Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21765 /* ~"Tak sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 7.3 8.2
  SAY #21693 /* ~"O tom já nic nevím, kámo, na to se musíš zeptat někoho jinýho... dotkneš se mě prstem, a budeš mít co dělat s polovinou lidí z Náměstí."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #21766 /* ~Chyť ho a trochu s ním zatřes.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21768 /* ~Podej mu pár mincí.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21773 /* ~Hoď mu pět měďáků.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21778 /* ~Polož deset měďáků do jeho dlaní.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21781 /* ~"Nevadí. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #21694 /* ~O krok ustupuje a podezřele na tebe civí zpod kapuce. "Zase, co? Co po mně chceš?"~ */
  IF ~~ THEN REPLY #21783 /* ~"Co tady děláš?"~ */ GOTO 2
  IF ~~ THEN REPLY #21785 /* ~"Co je tohle za místo?"~ */ GOTO 5
  IF ~~ THEN REPLY #21787 /* ~"Chtěl bych se na něco zeptat..."~ */ GOTO 6
  IF ~~ THEN REPLY #21789 /* ~"Tak nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0
  SAY #21695 /* ~"Pharod, hmmm!" Odplivne si, a pohrdavě se směje. "Hadrníkovo náměstí je Sharegraveho -- mého šéfa -- území, víš? Pharod a jeho psi přišli před nějakou dobou a zkoušejí nás vytlačit. Ale my jsme je zahnali, takže teď se někde schovávají. Stále ještě občas někoho z jeho chlapů dopadneme. Obyčejně je rychle proměníme ve trošku škváry v Márnici, blbce jedny."~ */
  IF ~~ THEN REPLY #21791 /* ~"Povídej o Sharegraveovi."~ */ GOTO 20
  IF ~~ THEN REPLY #21793 /* ~"Ty víš kde je Pharod?"~ */ GOTO 14
  IF ~~ THEN REPLY #21795 /* ~"Povídej o Sběračích."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21796 /* ~"Taky hledám svůj ztracený deník."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21797 /* ~"Co víš o Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21798 /* ~"To je všechno. Sbohem."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #21696 /* ~"Je to můj šéf... vrhá stín na všechny Sběrače. Radím ti, aby ses se od něj držel dál, jestli nemáš *opravdu* dobrý důvod s ním mluvit... Já sám jsem s ním nikdy osobně nemluvil."~ */
  IF ~~ THEN REPLY #21802 /* ~"Ty víš kde je Pharod?"~ */ GOTO 14
  IF ~~ THEN REPLY #21803 /* ~"Povídej o Sběračích."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21804 /* ~""Taky hledám svůj ztracený deník.""~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21807 /* ~"Co víš o Mebbeth?"~ */ GOTO 15
  IF ~~ THEN REPLY #21810 /* ~"To je všechno. Sbohem."~ */ GOTO 11
END
