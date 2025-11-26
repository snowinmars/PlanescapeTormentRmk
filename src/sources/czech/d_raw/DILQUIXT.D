// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXT~

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3069 /* ~Vidíš čtyřrukou obrovskou věc s širokými rameny a psí hlavou. Jedna sada jeho hojně osvalněných paží končí něčím, co vypadá jako hrozivé zubaté kleště, které by dokázaly z oběti vyrvat i duši. Mluví nečekaně jemným hlasem. "Ah, cestovatel! Vidím, že sebou máš společníky velké moci a..." zarazil se, aby mohl nasát vzduch, "... a rozkošné vůně. Annah, znal jsem tvého otce -- teď se dře v ještě hlubším Abyssu. A Paní Grace, tvá matka Rudý Rubáš bude určitě potěšena novinkami o tvém dobrém zdraví."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #11201 /* ~Vidíš obrovskou věc s psí hlavou a čtyřma rukama. Jedny ruce s mocnými svaly končí hrozivými zubatými pařáty, které z nebohé oběti nejspíš dokáží vytrhnout i duši. Promluvilo to neočekávaně milým hlasem. "Ah! Cestovatel! A jak vidím, že sebou máš společníky, kteří..." Začichal. "*rozkošně* voní. Annah, znal jsem tvého otce. Ještě teď tvrdě dře hluboko v Abyssu."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #11203 /* ~Vidíš obrovskou věc s psí hlavou a čtyřma rukama. Jedny ruce s mocnými svaly končí hrozivými zubatými pařáty, které z nebohé oběti nejspíš dokáží vytrhnout i duši. Promluvilo to neočekávaně milým hlasem. "Ah! Cestovatel! A jak vidím, že sebou máš společníky, kteří..." Začichal. "*rozkošně* voní. Paní Grace, tvá matka Rudý Rubáš určitě dychtí po zprávách o tvém zdraví."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DGRACE~ 11
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 3 // from:
  SAY #11204 /* ~Vidíš obrovskou věc s psí hlavou a čtyřma rukama. Jedny ruce s mocnými svaly končí hrozivými zubatými pařáty, které z nebohé oběti nejspíš dokáží vytrhnout i duši. Promluvilo to neočekávaně milým hlasem. "Rozštěpení jmen těch abishai na jednotlivé hlásky byla velice uspokojující věc. Děkuji ti za tu příležitost."
~ */
  IF ~~ THEN REPLY #3367 /* ~"Potěšení na mé straně. Rád bych se tě na pár věcí zeptal."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ GOTO 5
  IF ~~ THEN REPLY #11202 /* ~"Bylo mi potěšením. Sbohem."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 4 // from:
  SAY #11205 /* ~Glabrezu se k tobě potěšeně vrhl, jako ke starému příteli. "Á, cestovatel! Vrátil ses! Mohu ti nějak pomoci?" Posměšně se uklonil Grace a Annah.~ */
  IF ~~ THEN REPLY #11206 /* ~"Rád bych se tě na pár věcí zeptal..."~ */ GOTO 5
  IF ~~ THEN REPLY #11207 /* ~"Momentálně nijak. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0 6.0 7.0 8.0 9.2 10.1 11.0 12.2 13.1 14.1 15.2 16.0 17.0 18.0 18.2 19.0
  SAY #11208 /* ~"Ale jistě! Budu jenom rád, když pomůžu někomu, kdo může být cenným přítelem a spojencem!"~ */
  IF ~~ THEN REPLY #11209 /* ~"Pověz mi něco o sobě."~ */ GOTO 9
  IF ~~ THEN REPLY #11210 /* ~"Proč jsi byl předtím v převleku?"~ */ GOTO 10
  IF ~~ THEN REPLY #11211 /* ~"Řekni mi o téhle taverně a místních návštěvnících."~ */ GOTO 11
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11212 /* ~"Barkis chce, abych vyřešil ten Mochain účet."~ */ GOTO 12
  IF ~~ THEN REPLY #11213 /* ~"Už nic víc nepotřebuju. Sbohem."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 6 // from:
  SAY #11214 /* ~Glabrezu se k tobě potěšeně vrhl, jako ke starému příteli. "Á, cestovatel! Vrátil ses! Mohu ti nějak pomoci?" Posměšně se uklonil Annah.~ */
  IF ~~ THEN REPLY #11215 /* ~"Rád bych se tě na pár věcí zeptal..."~ */ GOTO 5
  IF ~~ THEN REPLY #11216 /* ~"Momentálně nijak. Sbohem."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 7 // from:
  SAY #11217 /* ~Glabrezu se k tobě potěšeně vrhl, jako ke starému příteli. "Á, cestovatel! Vrátil ses! Mohu ti nějak pomoci?" Posměšně se uklonil Fall-From-Grace.~ */
  IF ~~ THEN REPLY #11218 /* ~"Rád bych se tě na pár věcí zeptal..."~ */ GOTO 5
  IF ~~ THEN REPLY #11219 /* ~"Momentálně nijak. Sbohem."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 8 // from:
  SAY #11220 /* ~Glabrezu se k tobě potěšeně vrhl, jako ke starému příteli. "Á, cestovatel! Vrátil ses! Mohu ti nějak pomoci?"~ */
  IF ~~ THEN REPLY #11221 /* ~"Rád bych se tě na pár věcí zeptal..."~ */ GOTO 5
  IF ~~ THEN REPLY #11222 /* ~"Momentálně nijak. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #11223 /* ~"Já? Já jsem jen obyčejný glabrezu, tanar'ri -- 'fiend' pro ignoranty - který tady prochází mezi smrtelníky a učí se jejich způsobům. Těm, které považuji za hodné té pocty, nabízím větší moc za úplné drobnosti. Pro tebe bych také mohl učinit podobnou nabídku, ale zapácháš řádem a tvůj duch je k němu připoután. Ta síla je pro mě momentálně moc silná a neodkáži ji přetrhnou, ale možná někdy později..." Usmál se a odhalil řadu ostrých zubů, "bychom se mohli domluvit."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11224 /* ~"Možná bychom mohli. Pověz mi víc o tanar'ri."~ */ GOTO 13
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11225 /* ~"Možná bychom mohli. Pověz mi víc o tanar'ri."~ */ GOTO 14
  IF ~~ THEN REPLY #11226 /* ~"Možná. Mám ještě jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #11227 /* ~"Možná. Ale ne teď.  Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #11228 /* ~"Měl jsem ten převlek, protože jsem díky němu mohl špehovat abishaie, kteří jsou teď mrtví. Ale teď nastal čas, abych se předvedl ve své pravé podobě."~ */
  IF ~~ THEN REPLY #11229 /* ~"Proč teď?"~ */ GOTO 17
  IF ~~ THEN REPLY #11230 /* ~"Aha. Mám ještě další otázky."~ */ GOTO 5
  IF ~~ THEN REPLY #11231 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #11232 /* ~"Když zmizeli ti odporní baatezu, stalo se toto místo ještě příjemnějším. Vůně pekoucího se masa, malé bojůvky a drobná drama, díky tomu všemu se cítím příjemně. Ocenil bych více výkřiků, ale tohle přece jenom není Abyss. Místní návštěvníci jsou většinou myslitelé a snílci malé úrovně. Co je pro mě záhadou - nerozumím jeho moci, ale časem to dokážu. Ostatní - ti pro mě nejsou zajímaví. Viděl jsem jim podobné už tisíckrát."~ */
  IF ~~ THEN REPLY #11233 /* ~"Dobrá tedy. Tak mi tedy odpověz na pár otázek..."~ */ GOTO 5
  IF ~~ THEN REPLY #11234 /* ~"Sbohem tedy."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #11235 /* ~"je nutné jednoduché řešení. Můžeš ji zmasakrovat, ale to by na tebe připoutalo nežádoucí pozornost. Já bych ti doporučoval jed."~ */
  IF ~~ THEN REPLY #11236 /* ~"Co kdybych za ní účet zkrátka zaplatil a pomohl jí?"~ */ GOTO 18
  IF ~~ THEN REPLY #11237 /* ~"Nemám žádný jed."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11238 /* ~"Díky za návrh. Odpověz mi ještě na pár věcí..."~ */ GOTO 5
  IF ~~ THEN REPLY #11239 /* ~"Díky za návrh. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #11240 /* ~Ilquix kývl směrem ke Grace. "Tvá společnice by ti mohla vyprávět spoustu." Zašilhal na ni a pak pokračuje: "Jsme chaotičtí - věříme v moc jednotlivce. Pochopitelně, že teď mluvím za sebe." Usmál se té ironii. "Někteří nás nazývají zlými a možná jsme. Ale my věříme, že každý jednotlivec se zodpovídá jenom sobě. Pokud se moc staráš o ostatní, je to slabost. A nakonec, zapamatuj si toto: Každý tanar'ri -- nebo démon, jak nám smrtelníci občas říkají, představuje způsob myšlení, určité vyjádření vůle mysli,  její moci. A teď spočítej ten bezpočet obyvatele Abyssu. Doopravdy představujeme moc našeho přesvědčení v myslích smrtelníků."~ */
  IF ~~ THEN REPLY #11241 /* ~"Takže vlastně nejste fyzické bytosti?"~ */ GOTO 15
  IF ~~ THEN REPLY #11242 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #11243 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #11244 /* ~"Jsme chaotičtí - věříme v moc jednotlivce. Pochopitelně, že teď mluvím za sebe." Usmál se té ironii. "Někteří nás nazývají zlými a možná jsme. Ale my věříme, že každý jednotlivec se zodpovídá jenom sobě. Pokud se moc staráš o ostatní, je to slabost. A nakonec, zapamatuj si toto: Každý tanar'ri -- nebo fiend, jak nám smrtelníci občas říkají, představuje způsob myšlení, určité vyjádření vůle mysli,  její moci. A teď spočítej ten bezpočet obyvatele Abyssu. Doopravdy představujeme moc našeho přesvědčení v myslích smrtelníků."~ */
  IF ~~ THEN REPLY #11245 /* ~"Takže vlastně nejste fyzické bytosti?"~ */ GOTO 15
  IF ~~ THEN REPLY #11246 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #11247 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0 14.0
  SAY #11248 /* ~"Pochopitelně, že jsme fyzičtí - dokud zůstáváme tady ve Vnějších Sférách. Toto je místo, kde se myšlenky stávají hmotnými. Tady opravdu něco představujeme. Naše síla roste, jak víra v naši věc narůstá na Primární Materiální. To je důvod, proč hledáme a verbujeme mezi smrtelníky, kteří dokonce ani netuší naši přítomnost ve svých srdcích a myslích."~ */
  IF ~~ THEN REPLY #11249 /* ~"To je nechutné. Měli by mít svou vlastní vůli a vybrat si podle sebe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_IlquixT_One","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #11250 /* ~"Jestli jsou tak slabí, že vám nemohou odolat, nebo vás pozvou, nezaslouží si to, co dostanou."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_IlquixT_One","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #11251 /* ~"Aha. Mám ještě jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #11252 /* ~"Aha. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #11253 /* ~"Oni mají vlastní vůli, zjizvené maso. Nemohli bychom ničeho dosáhnout, kdyby nám chtěli odolat. To jejich slabost je zničí. Pokud by byli silní, nedosáhli bychom ničeho. A jelikož to tak není, naše síla roste. Je to způsob existence." Usmál se. "A pokud by to tak nebylo, udělali bychom to tak."~ */
  IF ~~ THEN REPLY #11254 /* ~"Mám ještě jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #11255 /* ~"Díky za výuku. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #11256 /* ~"Protože teď je čas, který jsem si vybral. Mám své důvody, malý nesmrtelníče a neřeknu ti je jenom proto, abych nasytil tvou zvědavost. Pokud mě pochopitelně *nedonutíš*..."~ */
  IF ~~ THEN REPLY #11257 /* ~"Radši bych se ještě na něco zeptal..."~ */ GOTO 5
  IF ~~ THEN REPLY #11258 /* ~"Když na tom trváš... Připrav se chcípnout."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0
  SAY #11259 /* ~"Pokud to opravdu chceš udělat, tak proč se ptáš fienda na radu? No tak. Jed je podle mě nejlepší odpověď na tenhle problém."~ */
  IF ~~ THEN REPLY #11260 /* ~"Ne, myslím, že použiju jinou metodu. Odpověz mi ještě na něco..."~ */ GOTO 5
  IF ~  !PartyHasItem("Embalm")
~ THEN REPLY #11261 /* ~"Problém je v tom, že nemám žádný jed."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11262 /* ~"Popřemýšlím nad tím. Odpověz mi ještě na něco..."~ */ GOTO 5
  IF ~~ THEN REPLY #11263 /* ~"Možná. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.1 18.1
  SAY #11264 /* ~"Nemáš jed? Tak mi dovol, abych ti nějaký dodal." Na chvíli se soustředil a pak se mu v pařátu objevila sklenice tekutiny. "Možná v tom poznáváš balzamovací tekutinu, kterou používají Spalovači," zapředl. "Měla by to být relativně bezbolestná smrt, pokud by tě to zajímalo." Fiend ti podal sklenici.~ */
  IF ~~ THEN REPLY #11265 /* ~"Děkuju. Mám ještě jiné otázky..."~ */ GOTO 5
  IF ~~ THEN REPLY #11266 /* ~"Děkuju. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #2072 /* ~Fiend se tváří podrážděně a otočil se k tobě: "To jsi ji ještě nenaučil slušné způsoby, cestovateli?"~ */
  IF ~~ THEN REPLY #2073 /* ~"Annah, uklidni se."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ EXTERN ~DANNAH~ 80
  IF ~~ THEN REPLY #2077 /* ~"Ne. Je sama sebou a říká, co se jí zachce."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~DANNAH~ 81
END
