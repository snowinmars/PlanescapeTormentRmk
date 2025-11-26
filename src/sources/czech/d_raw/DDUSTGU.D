// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTGU~

IF ~~ THEN BEGIN 0 // from:
  SAY #385 /* ~Vidíš přísně rozhlížejícího se muže v černých šatech. Podezíravě si tě prohlíží.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #388 /* ~"Zdravím."~ */ EXTERN ~DMORTE~ 77
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #389 /* ~"Zdravím."~ */ EXTERN ~DMORTE~ 79
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #390 /* ~"Zdravím."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4119 /* ~"Zdravím."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4120 /* ~Chovej se, jako bys tady patřil. Ignoruj ho a projdi kolem něj.~ */ GOTO 1
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4146 /* ~Zkus ho ignorovat a pokus se projít kolem.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.4
  SAY #386 /* ~Spalovač se mračí když kolem něho procházíš... vypadá to, jako by na tebe chtěl zavolat, ale pak se zastaví. Tvoje chování ho utvrdilo v tom být zticha. ~ */
  IF ~~ THEN REPLY #387 /* ~Pokračuj.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5
  SAY #1407 /* ~Spalovač se mračí, když kolem něj procházíš, pak tě osloví. "Ty tam - účel tvé návštěvy."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1409 /* ~"Vypadá to, že jsem se v těchto halách zamotal. Jsou tu nějací průvodci, kteří by nasměrovali návštěvníka?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #1410 /* ~"Vypadá to, že jsem se ztratil."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #1411 /* ~"Účel mé návštěvy je můj problém. Udělal bys lépe, kdyby ses staral o své VLASTNÍ věci, Spalovači."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1412 /* ~Nakloň se k němu, jako bys mu chtěl něco pošeptat, pak ho chyť pod krkem.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1413 /* ~Nakloň se k němu, jako bys mu chtěl něco pošeptat, pak ho chyť pod krkem.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1408 /* ~"Tím účelem je pouze najít odtud východ. Nechci dělat žádné problémy."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4147 /* ~"Nic. Ztratil jsem se, ale už jdu k východu."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.5 12.0 12.5 19.1 19.6
  SAY #1414 /* ~Spalovač se mračí. Vypadá skepticky. "Tamhle jsou průvodci, kteří tě nasměrujou do předpokoje. Neprocházej se po Márnici bez průvodce."~ */
  IF ~~ THEN REPLY #1415 /* ~"Díky za tvojí pomoc. Půjdu si promluvit s průvodcem."~ */ EXIT
  IF ~~ THEN REPLY #1416 /* ~"Budu se procházet tam, kde budu chtít... udělal bys líp, kdyby ses staral o své vlastní věci, Spalovači."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.6 12.1 12.6 19.2 19.7
  SAY #1417 /* ~"Vypadáš, že ses skutečně ztratil." Spalovačovy oči se zúžily a jeho ruka dopadla na dýku po jeho boku. "Počkej tady než zavolám stráže, aby tě vyvedli odtud ven." Vypadá to, že se je chystá zavolat. ~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1418 /* ~Chyť ho pod krkem než může někoho zavolat.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2536 /* ~Zlom mu krk, než stačí někoho přivolat.~ */ GOTO 7
  IF ~~ THEN REPLY #4148 /* ~"Zavolej svý kámoše, Spalováčku... Už se na ně těším."~ */ GOTO 11
  IF ~~ THEN REPLY #4149 /* ~Zdrhej.~ */ GOTO 11
  IF ~~ THEN REPLY #4150 /* ~Počkej.~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 12.2 19.3
  SAY #4121 /* ~Spalovačovy oči se zúžily a jeho ruka sjela k pasu, k jílci dýky. Vypadá to, že každou chvíli začne volat stráže.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4151 /* ~Zlom mu krk, než stačí někoho přivolat.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4152 /* ~Zlom mu krk, než stačí někoho přivolat.~ */ GOTO 7
  IF ~~ THEN REPLY #4153 /* ~"Zavolej svý kámoše, Spalováčku... Už se na ně těším."~ */ GOTO 11
  IF ~~ THEN REPLY #4154 /* ~Zdrhej.~ */ GOTO 11
  IF ~~ THEN REPLY #4155 /* ~Počkej.~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.3 12.4 19.4
  SAY #4122 /* ~Když ses naklonil, abys mu mohl něco 'pošeptat' do ouška, Spalovač se taky naklonil. Když se dostal na dosah, popadl jsi ho za spánek a prudce zakroutil jeho hlavou doleva.~ */
  IF ~~ THEN REPLY #4156 /* ~"Nemůžu ti dovolit spustit poplach..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 14.0
  SAY #4123 /* ~Než stačil Spalovač něco říct, popadl jsi ho za spánky a prudce mu zakroutil hlavou doleva.~ */
  IF ~~ THEN REPLY #4157 /* ~"Nemůžu ti dovolit spustit poplach..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #4124 /* ~Ozvalo se prasknutí a Spalovač se přestal hýbat.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4158 /* ~"Radši ty, než já, Spalovači."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4159 /* ~"Radši ty, než já, Spalovači."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #4125 /* ~Ke tvému překvapení to bylo instinktivní, jako bys něco podobného už dělal mnohokrát dříve. S touhle myšlenkou se přihlásily vzpomínky, ale nejsou dost zřejmé.~ */
  IF ~~ THEN REPLY #4160 /* ~Schovej tělo ve stínu a jdi dál.~ */ DO ~Kill(Myself)
Deactivate(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4 4.0 5.0 12.3 14.1 19.5
  SAY #4126 /* ~Nejsi dost rychlý a Spalovač tvému skoku uhnul. Ukročil zpátky a rychle třikrát zatleskal. Jako odpověď začaly v celé márnici zvonit zvony.~ */
  IF ~~ THEN REPLY #4161 /* ~"Doufám, že jsi usmířený se svými bohy, Spalovači..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 4.3 4.4 5.2 5.3 5.4 14.2 14.3
  SAY #4127 /* ~Spalovač třikrát zatleskal. Jako odpověď začaly v celé márnici zvonit zvony.~ */
  IF ~~ THEN REPLY #4162 /* ~"Doufám, že jsi usmířený se svými bohy, Spalovači..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 0.3
  SAY #4128 /* ~Spalovač se zamračil, když jsi ho oslovil. "Co tady děláš?"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4163 /* ~"Asi jsem se nějak zamotal a ztratil. Není tady někdo, kdo by mě mohl provést kolem?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4164 /* ~"Já... se asi ztratil."~ */ GOTO 4
  IF ~~ THEN REPLY #4165 /* ~"To je moje věc. Měl by ses raději starat o SVÉ vlastní záležitosti, Spalovači."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4166 /* ~Nakloň se k němu, jako bys mu chtěl něco zašeptat a zlom mu krk.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4167 /* ~Nakloň se k němu, jako bys mu chtěl něco zašeptat a zlom mu krk.~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4168 /* ~"Hledám východ, nechci žádné problémy."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4169 /* ~"Nic. Ztratil jsem se, ale už jdu k východu."~ */ GOTO 4
END

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #4129 /* ~Vidíš muže v černé róbě, který se dívá přímo před sebe. Nevšímá si tě.~ */
  IF ~~ THEN REPLY #4170 /* ~"Zdravím."~ */ GOTO 14
  IF ~~ THEN REPLY #4171 /* ~Shamble by.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #4130 /* ~Spalovačský strážník překvapeně poskočil, když jsi ho oslovil, pak ustoupil o krok. "Ty nejsi zombie... jak jsi... jak ses sem dostal?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4172 /* ~Zlom mu krk, než stačí někoho přivolat.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4173 /* ~Zlom mu krk, než stačí někoho přivolat.~ */ GOTO 10
  IF ~~ THEN REPLY #4174 /* ~"Můžu to vysvětlit... hele, všechno začalo, když jsem vstal z mrtvých... a pak tady byla ta mluvící lebka a ..."~ */ GOTO 11
  IF ~~ THEN REPLY #4175 /* ~Zdrhej.~ */ GOTO 11
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 15 // from:
  SAY #4131 /* ~Vidíš muže v černém rouchu. Když tě uviděl, kývl ti na pozdrav.~ */
  IF ~~ THEN REPLY #4176 /* ~"Zdravím."~ */ GOTO 16
  IF ~~ THEN REPLY #4177 /* ~Také kývni a jdi dál.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #4132 /* ~"Zdravím, souvěrče."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4178 /* ~"Možná mi můžeš pomoci. Asi jsem ztratil."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4179 /* ~"Já... se asi ztratil."~ */ GOTO 17
  IF ~~ THEN REPLY #4180 /* ~"Jen tak dál, souvěrče."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #4133 /* ~"V hlavní hale jsou průvodci. Ti by ti měli pomoct, zasvěcenče."~ */
  IF ~~ THEN REPLY #4181 /* ~"Děkuju ti. Vyhledám je."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY #61284 /* ~Schoval jsi mrvté tělo do stínu.~ */
  IF ~~ THEN REPLY #61285 /* ~Pokračuj.~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #66691 /* ~Vidíš muže v černé róbě. Podezřívavě si tě prohlíží. "Ty - co tady děláš?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66692 /* ~"Jsem nový zasvěcený spalovačského společenství. Prohlížím si Márnici."~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66693 /* ~"Někde jsem blbě zatočil. Není tady někde nějaký průvodce, který by mi ukázal kudy kam?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66694 /* ~"Já... asi jsem se ztratil."~ */ GOTO 4
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66695 /* ~"To je moje věc, co tady dělám. Uděláš jenom dobře, jestli se budeš starat o VLASTNÍ záležitosti, Spalovači."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66696 /* ~Nakloň se, jako bys mu chtěl něco zašeptat do ucha a z téhle strategické pozice chňapni po jeho krku. A zlom mu ho.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66697 /* ~Nakloň se, jako bys mu chtěl něco zašeptat do ucha a z téhle strategické pozice chňapni po jeho krku. A zlom mu ho.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66698 /* ~"Jediné, co dělám, je to, že mířím k východu. Nechci způsobit žádné problémy."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66699 /* ~"Nic. Ztratil jsem se, ale teď už jdu k východu."~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #66700 /* ~Strážný na tebe chvíli zírá a pak přikývne. "Dej si ale pozor, ať nenarušíš ničí povinnosti."~ */
  IF ~~ THEN REPLY #66701 /* ~"Dobrá tedy. Už půjdu."~ */ EXIT
END
