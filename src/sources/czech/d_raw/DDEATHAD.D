// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHAD~

IF ~  True()
~ THEN BEGIN 0 // from: 65.0
  SAY #2945 /* ~"Sigilané, vítejte! Prosím, posaďte se a naslouchejte 'tajemstvím', o kterých budu mluvit."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ EXTERN ~DMORTE~ 299
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2946 /* ~Poslouchej.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32106 /* ~Přestaň naslouchat a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32107 /* ~Začíná mluvit pochmurným hlasem: "Smrt. To je to, co nás očekává na konci životní poutě. " Lehce si odkašlal a potom dramaticky pozdvihnul obočí a mává rukama: "Smrt *není* konec! Smrt je začátek!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 300
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32108 /* ~Poslouchej dál.~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32109 /* ~Odejdi pryč.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #32110 /* ~"Protože když zemřeme, existujeme dále! V žádném případě naše bytí nekončí! Vnější Sféry nás uvítají ve svém náručí! A tam čeká nový život... takový, o jakém jste ani *nevěděli*!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 301
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32111 /* ~Poslouchej dál.~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32112 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #32113 /* ~"Měli byste odhodit chatrný plášť této existence a stát se jedním z věřících,  Žadatelem! Jako *Žadatel* ve Vnější Sféře váš život teprve začíná *doopravdy*!"~ */
  IF ~~ THEN REPLY #32115 /* ~Poslouchej dál.~ */ GOTO 4
  IF ~~ THEN REPLY #32114 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32116 /* ~"Pokud jste byli slušní a správní, věnovali jste charitě a na své spoluobčany byli hodní, možná vás ubytují prosvětlené svahy Hory Nebeské Říše, až zemřete. Váš duch se dostane na toto nebeské místo a bude tam žít jako Žadatel v kráse zlatých rán, v jemné sluneční záři, která se s vámi bude mazlit..." Zasněně si povzdychl.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 302
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32117 /* ~Poslouchej dál.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32118 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #32119 /* ~"Možná jste žili život zrazováním ostatních, dávajíc lži místo pravd, bodáním do zad, vše k dosažení vašich vlastních cílů. Studená Sféra Rudé Krve Carceri, Sféra kde skončí všichni podvodníci, bude klec, která vás uvězní. Jako Žadatel na této Sféře budete žít život zrady, lží a podvodů, poznáte život bez jakékoli důvěry."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 303
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32120 /* ~Poslouchej dál.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32121 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #32122 /* ~Nahrbil se, jeho oči poletují zleva doprava. "A *možná* jste žili život krvežíznivého zla, pohrdajíc ostatními, ubližujíc ostatním a majíc potěšení z bolesti, kterou jste způsobili..."~ */
  IF ~~ THEN REPLY #32123 /* ~Poslouchej dál.~ */ GOTO 7
  IF ~~ THEN REPLY #32124 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32125 /* ~"...a pak vás očekává jedna z Nižších Sfér - Baator, nebo chaoticky se svíjející Abyss - který vás uvítá v sobě! Duchové, kteří tam přicházejí, jsou zlí až do morku kosti a většina z nich je prokleta a postižena bezmyšlenkovitou krutostí a službou děsivé..."Dramaticky přešel do šepotu. " Války Krve!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 304
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32126 /* ~Poslouchej dál.~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32127 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #32128 /* ~"Ať už půjdete kdekoli, vězte: Začínáte nový život! Nový život, mí drazí Sigilané!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 305
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32129 /* ~Poslouchej dál.~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32130 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #32131 /* ~"Začnete nový život bez břímě paměti na svůj minulý život. Cílem vaší duše je *splynout* s vaší novou Sférou, spojit se s ideály a přímou substancí samotné Sféry!"~ */
  IF ~~ THEN REPLY #32132 /* ~Poslouchej dál.~ */ GOTO 10
  IF ~~ THEN REPLY #32133 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32134 /* ~"Stanete se jedním z obyvatel, žadatelů, této sféry, nebo v ideálním případě jedním ze základních kamenů, které Sféru tvoří! To je cílem všech žadatelů! Abyste dosáhli toho cíle..." Začal tleskat rukama, aby dodal svým slovům důraz: "...MUSÍTE *tlesk!* DODRŽOVAT *tlesk!* SVÉ *tlesk!* IDEÁLY!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 306
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32135 /* ~Poslouchej dál.~ */ GOTO 11
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32136 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #32137 /* ~"Vaše ideály! Dobro nebo zlo, řád nebo chaos, nebo něco mezi tím. Když dosáhnete přesvědčení Sféry, vaše cesta skončí, jelikož se stanete... součástí... samotné... sféry! A to je nádherná existence, mí drazí Sigilané!"~ */
  IF ~~ THEN REPLY #32138 /* ~Poslouchej dál.~ */ GOTO 12
  IF ~~ THEN REPLY #32139 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #32140 /* ~"A to je to, co vás očekává *po* 'smrti,' mí posluchači! Starejte se o to, jak žijete svůj život, ale vězte, že po tomto životě vás nečeká nicota!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 307
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32141 /* ~Poslouchej dál.~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32142 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #32143 /* ~"A teď odpovím na vaše otázky, pokud nějaké máte?"~ */
  IF ~~ THEN REPLY #32144 /* ~"Mám otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32145 /* ~Tiše počkej.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 16.1
  SAY #32146 /* ~"Pokud nejsou žádné otázky, skončím toto sezení... prozatím. Budu dál pokračovat v přednášení zde v Hale a možná že za pár let... *vás* potkám jako žadatele za Branou Smrti!"~ */
  IF ~~ THEN REPLY #32147 /* ~Přestaň naslouchat a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32148 /* ~Hlava mluvčího se obrátila k Mortemu, lehce se mračíc. Natáhl se a snaží se spatřit toho, kdo promluvil. "Otázka? Nějaká otázka od někoho živého?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 308
END

IF ~~ THEN BEGIN 16 // from:
  SAY #32149 /* ~Přikývl, jako by tě na tvé místo dal on. "Dobrá tedy. A teď odpovím na jakékoli otázky, které na mě máte. Má někdo otázku?"~ */
  IF ~~ THEN REPLY #32150 /* ~"Mám otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32151 /* ~Tiše počkej.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 13.0 16.0 19.1 20.0 22.0 23.0 24.2 25.2 26.2 27.0 28.1 29.2 30.1 31.3 32.1 35.0 36.0 37.0 38.2 39.2 40.1 42.1 43.0 44.0 45.1 46.1 52.0 53.0 54.0 55.4 56.0 57.0 58.0 59.0
  SAY #32152 /* ~Ukazuje ti, ať pokračuješ.~ */
  IF ~~ THEN REPLY #64426 /* ~"Kdo je to prosebník?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Může prosebník zemřít?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Proč prosebníci ztrácí své vzpomínky?"~ */ GOTO 28
  IF ~~ THEN REPLY #32153 /* ~"Co určuje, do které sféry přijdu po smrti?"~ */ GOTO 19
  IF ~~ THEN REPLY #32157 /* ~"Co když někdo nemůže zemřít?"~ */ GOTO 39
  IF ~~ THEN REPLY #32158 /* ~"Vysvětli mi pojem *přesvědčení*."~ */ GOTO 43
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #32159 /* ~"Spalovači tvrdí, že *tento* život je místo, kde skončíme po smrti."~ */ GOTO 44
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32160 /* ~"Dokaž, že mluvíš pravdu."~ */ GOTO 45
  IF ~~ THEN REPLY #32161 /* ~"Pověz mi o Válce Krve."~ */ GOTO 54
  IF ~~ THEN REPLY #32162 /* ~"Chtěl bych se zeptat na některou ze Sfér, o které ses zmínil."~ */ GOTO 55
  IF ~~ THEN REPLY #32163 /* ~"Vlastně nic. Žádná otázka."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.10 19.2 20.1 22.1 23.1 24.3 25.3 26.3 27.1 28.2 29.3 30.2 31.4 32.2 35.1 36.1 37.1 38.3 39.3 40.2 42.2 43.1 44.1 45.2 46.2 52.1 53.1 54.1 55.5 56.1 57.1 58.1 59.1 66.4
  SAY #32164 /* ~"Pokud nejsou žádné další otázky?"~ */
  IF ~  Global("Deaths_Adv","GLOBAL",1)
~ THEN REPLY #32165 /* ~Připrav se k odchodu.~ */ GOTO 60
  IF ~  Global("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32166 /* ~Připrav se k odchodu.~ */ GOTO 61
  IF ~  Global("Deaths_Adv","GLOBAL",3)
~ THEN REPLY #32167 /* ~Připrav se k odchodu.~ */ GOTO 62
END

IF ~~ THEN BEGIN 19 // from: 17.3 66.0
  SAY #32168 /* ~"Tvé přesvědčení, pochopitelně! Dobří lidé jsou předurčeni pro Vyšší Sféry a *špatní* lidé jsou uvrženi do Nižších Sfér. " Zakoulel očima a dramaticky se bouchl do hrudi. "...ať mají Mocnosti slitování s jejich dušemi."~ */
  IF ~~ THEN REPLY #32169 /* ~"Kam jdou neutrální lidé?"~ */ GOTO 20
  IF ~~ THEN REPLY #32170 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32171 /* ~"To je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32172 /* ~Pozdvihl obočí. "To je vynikající otázka, vynikající!" Obrací se k obecenstvu a zdvihl prst. "Odpověď je tato: duch, který žil život úplné neutrality, bez příklonu k dobru nebo zlu, se stává žadatelem na *Vnějších Zemích*, zemích, které obklopují Sigil. Nejsou určení pro žádnou sféru s výjimkou země, která leží přímo za naším nebem, jejichž součástí je i Jehlan."~ */
  IF ~~ THEN REPLY #32173 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32174 /* ~"To je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 17.0 66.1
  SAY #32175 /* ~"Žadatel je to, co se z tebe stane, když po své smrti dorazíš do nové Sféry. Jako žadatel ztrácíš paměť na minulý život a soustředíš se na úplně na nový. A účelem nového života je...?" Čeká na tvou odpověď s úsměvem.~ */
  IF ~~ THEN REPLY #32176 /* ~"Splynout se Sférou."~ */ GOTO 22
  IF ~~ THEN REPLY #32177 /* ~"Odpověz si na svou otázku. Neopovažuj se mě zkoušet."~ */ GOTO 23
  IF ~~ THEN REPLY #32178 /* ~"Nebuď ke mně blahosklonný, ubožáku."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32179 /* ~"Velmi dobře! Vypadá to, jakoby alespoň něco z mých slov uvízlo ve vašich hlavách!" Obecenstvo se usmálo.~ */
  IF ~~ THEN REPLY #32180 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32182 /* ~"To je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 23 // from: 21.1 21.2
  SAY #32183 /* ~"Hmpf. Zůstaň tedy ignorantem."~ */
  IF ~~ THEN REPLY #32185 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32186 /* ~"To je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 24 // from: 17.1 66.2
  SAY #32188 /* ~Vypadá docela znepokojeně. "No... Ano."~ */
  IF ~~ THEN REPLY #32190 /* ~"Jak?"~ */ GOTO 25
  IF ~~ THEN REPLY #32192 /* ~"Co se stane, když zemřou?"~ */ GOTO 26
  IF ~~ THEN REPLY #32193 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32194 /* ~"To je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1
  SAY #32197 /* ~Vypadá ještě více zneklidněný. "No, jakýmikoli normálními prostředky."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 309
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32198 /* ~"Co se stane, když zemřou?"~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32199 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32201 /* ~"To je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.1
  SAY #32203 /* ~Vypadá ještě více zneklidněný. "No... splyneš se Sférou."~ */
  IF ~~ THEN REPLY #32204 /* ~"Co když žadatel zemře v jiné Sféře, než je jeho domovská Sféra?"~ */ GOTO 27
  IF ~~ THEN REPLY #32205 /* ~"A jak mohou zemřít?"~ */ GOTO 25
  IF ~~ THEN REPLY #32207 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32208 /* ~"To je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32209 /* ~Vypadá velice neklidně. "Eh... no, to je konec života... mmm, ale žádný žadatel nechce opustit svou domovskou Sféru, příteli!" Rozhlédl se kolem a uvědomil si, že se chytil do pasti. "Pokud by to udělal, čeká ho po smrti zapomnění, nicota."~ */
  IF ~~ THEN REPLY #32210 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32212 /* ~"Aha. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 28 // from: 17.2 66.3
  SAY #32213 /* ~Nazdvihl obočí. "Pardon? Cože?"~ */
  IF ~~ THEN REPLY #32214 /* ~"*Řekl* jsem, proč žadatelé ztrácejí po smrti svou paměť?"~ */ GOTO 29
  IF ~~ THEN REPLY #32216 /* ~"Zapomeň na to. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32217 /* ~"To nic. Nemám žádnou otázku."~ */ GOTO 18
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #32219 /* ~Vypadá zneklidněně. "Eh, no, víš, kdo by chtěl být zatížen něčím takovým, jako jsou vzpomínky?" Obecenstvo začalo reptat.~ */
  IF ~~ THEN REPLY #32220 /* ~"Já."~ */ GOTO 30
  IF ~~ THEN REPLY #32221 /* ~"Ale *proč* ztratí své vzpomínky?"~ */ GOTO 31
  IF ~~ THEN REPLY #32222 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32223 /* ~"Aha. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #32224 /* ~Mluvčí se ušklíbl. "No, když se na tebe podívám, nechápu proč!" Obecenstvo se směje.~ */
  IF ~~ THEN REPLY #32225 /* ~"Tak *proč* ztrácí své vzpomínky?"~ */ GOTO 31
  IF ~~ THEN REPLY #32226 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32227 /* ~"Aha. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0
  SAY #32228 /* ~"Já..." Zamračil se, začíná něco říkat, pak se zarazil. Po chvíli pokračuje a opatrně vybírá slova. "Myslím, že to je proto, že začínáš od začátku, tvá duše žadatele je čistá, když dorazíš do své nové Sféry."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32229 /* ~"A proč ty mělo být tak, když tvé životní zkušenosti určily, ve které Sféře skončíš?"~ */ GOTO 32
  IF ~~ THEN REPLY #32231 /* ~"To není odpověď."~ */ GOTO 33
  IF ~~ THEN REPLY #32232 /* ~"To je... hrozné. Jako úchylný vtip."~ */ GOTO 38
  IF ~~ THEN REPLY #32233 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32235 /* ~"Aha. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #32236 /* ~Vypadá velmi znepokojeně. "No... já..." Odmlčel se. "Hmm. Nevím."~ */
  IF ~~ THEN REPLY #32237 /* ~"To není odpověď."~ */ GOTO 33
  IF ~~ THEN REPLY #32238 /* ~"Dobře... Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32239 /* ~"Aha. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0 38.1
  SAY #32240 /* ~Vypadá docela rozzuřeně. "Máš snad *lepší* odpověď, příteli? Možná se s námi podělíš o svou moudrost. "Obecenstvo se otáčí k tobě.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #32241 /* ~"Nepamatuju si kdy nebo kde, ale vzpomínám si, že jsem slyšel o vzpomínkách proudících v Astrální Sféře, jako 'paměťová jádra.'"~ */ GOTO 34
  IF ~~ THEN REPLY #32242 /* ~"Ne."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32243 /* ~Někdo z obecenstva vykřikl: "Má pravdu!"

Mluvčí se otočil k obecenstvu. "Eh,no, možná ano. Ale tím nám vzniká otázka: Je vzpomínka na minulý život důležitější, než nový život?"
~ */
  IF ~~ THEN REPLY #32244 /* ~Pravdivě: "Ano."~ */ GOTO 35
  IF ~~ THEN REPLY #32245 /* ~Pravdivě: "Ne."~ */ GOTO 36
  IF ~~ THEN REPLY #32246 /* ~"Nevím."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #32247 /* ~Řekl zlostně: "Tak je to jednoduché: neumírej, příteli." Obecenstvo se směje.~ */
  IF ~~ THEN REPLY #32248 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32249 /* ~"Aha. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #32250 /* ~Přehnaně se ti uklonil: "Tak si ji tedy měj!"~ */
  IF ~~ THEN REPLY #32251 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32252 /* ~"Myslím si to. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 37 // from: 34.2 41.1 47.1
  SAY #32253 /* ~Odfrkl si. "Ano, to jsem si myslel, že odpovíš."~ */
  IF ~~ THEN REPLY #32254 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32255 /* ~"Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 38 // from: 31.2
  SAY #32256 /* ~"Ale v porovnání se životem, který tě čeká na nové Sféře je to triviální!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32257 /* ~"Ale proč bys to měl dělat, když veškerá tvá životní zkušenost určila, na které Sféře skončíš?"~ */ GOTO 32
  IF ~~ THEN REPLY #32258 /* ~"To není odpověď."~ */ GOTO 33
  IF ~~ THEN REPLY #32259 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32260 /* ~"Aha. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 39 // from: 17.4
  SAY #32261 /* ~Směje se. " Nesmysl. Všichni *zemřou*, příteli. Dokonce i bohové umírají."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32262 /* ~"Já nemůžu zemřít."~ */ GOTO 40
  IF ~~ THEN REPLY #32263 /* ~"Ale *předpokládejme*, že existuje někdo, kdo nemůže zemřít."~ */ GOTO 42
  IF ~~ THEN REPLY #32264 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32265 /* ~"Aha. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 42.0
  SAY #32266 /* ~"Oh, no teda! Podívejte se všichni, tak vzácná příležitost se vám jen tak nenaskytne: jeden z mocných nesmrtelných nás poctil svou přítomností! Zdravím tě, ó nesmrtelný!" Obecenstvo se směje.~ */
  IF ~~ THEN REPLY #32267 /* ~"Můžu to dokázat."~ */ GOTO 41
  IF ~~ THEN REPLY #32268 /* ~"Zapomeň na to. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32269 /* ~"No nic. Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #32270 /* ~"Oh dokaž! Dokaž to!!" Smích z obecenstva sílí." To je něco! Dívejte se, lidé. Myslím, že dnes bude má lekce korunována názorným příkladem! Pojď sem, ó nesmrtelný a uvidíme, kdo má pravdu a kdo je mrtvý!"~ */
  IF ~~ THEN REPLY #32271 /* ~Zabij se a potom znovu vstaň.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",1)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32272 /* ~"Vlastně... zapomeň na to."~ */ GOTO 37
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #32273 /* ~"No, podle toho, co jsem *řekl*, by nikdy nedosáhl Vnějších Sfér a nikdy by se nestal žadatelem."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32274 /* ~"Já nemůžu zemřít."~ */ GOTO 40
  IF ~~ THEN REPLY #32275 /* ~"Hmm. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32276 /* ~"Aha. Ne, to je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 43 // from: 17.5
  SAY #32277 /* ~"Odpusť mi, pokud jsem to nevysvětlil všem posluchačům: 'Přesvědčeni' je tvé spirituální zaměření: dobro nebo zlo, řád nebo chaos. Přesvědčení určuje způsob, jakým se chováš. Je důležité! Způsob, jakým přistupuješ k životu určuje tvou pozici po tvé smrti."~ */
  IF ~~ THEN REPLY #32278 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32279 /* ~"To je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 44 // from: 17.6
  SAY #32280 /* ~Mluvčí se usmál... a někteří členové publika s ním. "Existuje spousta žadatelů, příteli, mezi nimi i *Spalovači*, kteří nesouhlasí se spalovačskou... 'filozofií'."~ */
  IF ~~ THEN REPLY #32281 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32282 /* ~"To je vše, co jsem chtěl vědět."~ */ GOTO 18
END

IF ~~ THEN BEGIN 45 // from: 17.7
  SAY #32283 /* ~"Eh?" Mluvčí vypadá překvapeně. "A jak bych to mohl udělat?"~ */
  IF ~~ THEN REPLY #32284 /* ~"Zemři. Tady. Teď."~ */ GOTO 46
  IF ~~ THEN REPLY #32285 /* ~"Zapomeň na to. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32286 /* ~"No nic. Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32287 /* ~Publikum ztichlo. Pociťuje tlak, mluvčí polkl a promluvil: "No tedy..." Náhle se jeho tvář rozjasnila. "Pokud půjdeš první, udělám to." Z publika je slyšet smích.~ */
  IF ~~ THEN REPLY #32288 /* ~"Souhlas."~ */ GOTO 47
  IF ~~ THEN REPLY #32289 /* ~"Zapomeň na to. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32290 /* ~"No nic. Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32291 /* ~"Velmi dobře!" Tvář mluvčího na chvíli zkameněla, ale pak se rozzářila. "Pojď ke mně, příteli!" S úsměvem se obrací k publiku. "Vzácná ukázka, mí Sigilané! Dnes - a pouze dnes - budeme mít živou demonstraci, jak se můžete stát žadatelem!"~ */
  IF ~~ THEN REPLY #32292 /* ~Zabij se a pak zase vstaň na nohy.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",2)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32293 /* ~"Vlastně... zapomeň na to."~ */ GOTO 37
END

IF ~~ THEN BEGIN 48 // from: 41.0 47.0
  SAY #32294 /* ~Mluvčí zbledl a o krok ustoupil. "U Mocností...!"~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32295 /* ~"Myslím, že bude jenom fér, když dokážeš, že máš pravdu. Takže..."~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32296 /* ~"Jsi na řadě."~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32297 /* ~Jen se na něj usměj.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 48.2
  SAY #32298 /* ~"Eh..." Publikum pozorně sleduje výstup, morbidně fascinováno. "Eh, tak tedy..."~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32299 /* ~"No tak, zemři. Tady. Teď. Dokaž, že jsou tvá slova pravdivá. Staň se žadatelem."~ */ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32300 /* ~Blafuj: "Zabij se, nebo to udělám já!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_DA_1","GLOBALLaw",-1)
~ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32301 /* ~Pravdivě: "Zabij se, nebo to udělám já!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-1)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2
  SAY #32302 /* ~Polknul. "No... eh... hmmmn." Slabým hlasem ze sebe vypravil: "Heh. Musím se přiznat, že nejsem ještě připravený k opuštění tohoto života."~ */
  IF ~~ THEN REPLY #32303 /* ~Zabij ho.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-2)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
SetGlobal("Death_Lecture","GLOBAL",4)
SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32304 /* ~Pohni se k němu, jakoby jsi ho chtěl zabít a zaraz se těsně před jeho krkem.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",3)
~ GOTO 51
  IF ~~ THEN REPLY #32305 /* ~"Takže, ten skvělý nový život na Vnější Sféře asi nebude takový skvělý, jak jsi nám ho popisoval, viď?"~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #32306 /* ~"Přesně to jsem si *myslel*, ty pompézní, nafoukaný mizerný šarlatáne!"~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #32307 /* ~Mluvčí ustoupil, zakryl si obličej a vříská strachy... slyšíš podivný zvuk a ve chvíli, kdy ucítíš kyselý pach, jsi pochopil, že se pomočil.~ */
  IF ~~ THEN REPLY #32308 /* ~"Takže, ten skvělý nový život na Vnější Sféře asi nebude takový skvělý, jak jsi nám ho popisoval, viď?"~ */ GOTO 52
  IF ~~ THEN REPLY #32309 /* ~"Přesně to jsem si *myslel*, ty pompézní, nafoukaný mizerný šarlatáne!"~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.2 51.0
  SAY #32310 /* ~Mluvčí si uvědomuje své pokrytectví, ale má strach  z další alternativy. "Asi ne. Heh." Přelétl pohledem obecenstvo. "Eh... no, ne. Teď už určitě ne."~ */
  IF ~~ THEN REPLY #32311 /* ~"To jsem si myslel. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32312 /* ~"To jsem si myslel. Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 53 // from: 50.3 51.1
  SAY #32313 /* ~"Eh... ano." Mluvčí rezignoval, jeho hlas poraženecky ztichl. "Hmmmn. Ano."~ */
  IF ~~ THEN REPLY #32314 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32315 /* ~"Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 54 // from: 17.8
  SAY #32316 /* ~"Nikdy jsi o tom neslyšel, ó nevědoucí? Válka mezi baatezu a tan'nari? Nemám několik století, které by trvalo popis toho konfliktu. Najdi si někoho jiného, protože o této válce tahle přednáška není."~ */
  IF ~~ THEN REPLY #32317 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32318 /* ~"Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 55 // from: 17.9
  SAY #32319 /* ~"Oh? Které?"~ */
  IF ~~ THEN REPLY #32320 /* ~"Abyss..."~ */ GOTO 56
  IF ~~ THEN REPLY #32321 /* ~"Baator..."~ */ GOTO 57
  IF ~~ THEN REPLY #32322 /* ~"Carceri..."~ */ GOTO 58
  IF ~~ THEN REPLY #32323 /* ~"Mount Celestia..."~ */ GOTO 59
  IF ~~ THEN REPLY #32324 /* ~"No nic. Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32325 /* ~"Vlastně... zapomeň na to. Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #32326 /* ~"Sféra více než šesti set vrstev hnisajícího zla a chaosu. Domov fiendských tanar'ri!" Dramaticky gestikuluje. "Ale pokud chceš o této sféře vědět více, měl bys najít někoho, kdo o ní ví více než já."~ */
  IF ~~ THEN REPLY #32327 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32328 /* ~"Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #32329 /* ~"Sféra zákonného zla." Usmál se a dramaticky gestikuluje. "Domov fiendských baatezu! Podepiš s nimi smlouvu a budeš celý život spoután jejich intrikami." Usmál se. "Ale pokud chceš o této sféře vědět více, měl bys najít někoho, kdo o ní ví více než já."~ */
  IF ~~ THEN REPLY #32330 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32331 /* ~"Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #32332 /* ~"Vězeňská sféra, studená, brutální a pokrytá rudou. Zrádci a lháři tam nalézají svůj domov... říká se, že tam byli uvězněni i Titáni, poté, co byli vyhnáni z Olympu." Dramaticky gestikuluje. "Ale pokud chceš o této sféře vědět více, měl bys najít někoho, kdo o ní ví více než já."~ */
  IF ~~ THEN REPLY #32333 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32334 /* ~"Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 59 // from: 55.3
  SAY #32335 /* ~"Mount Celestia, sféra nekonečného dobra a víry." Spojil ruce, jako by se modlil. "Kde andělé létají na nebi, vládci vládnou se ctí a ušlechtilostí... dokonalý model dobra!" Usmívá se. "Ale pokud chceš o této sféře vědět více, měl bys najít někoho, kdo o ní ví více než já.""~ */
  IF ~~ THEN REPLY #32336 /* ~"Mám další otázku..."~ */ GOTO 17
  IF ~~ THEN REPLY #32337 /* ~"Už nemám další otázky."~ */ GOTO 18
END

IF ~~ THEN BEGIN 60 // from: 18.0
  SAY #32338 /* ~"...v tom případě odejdu - prozatím.  Budu pokračovat ve svých přednáškách zde v Hale a možná že za pár let... potkám *vás* jako žadatele za Dveřmi Smrti!"~ */
  IF ~~ THEN REPLY #32339 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 18.1
  SAY #32340 /* ~Snaží se věci urovnat. "V tom případě skončím toto setkání... hmmm, a budu pokračovat v přednáškách zde v Hale, takže... ehm... řekněte o tom svým přátelům."~ */
  IF ~~ THEN REPLY #32341 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 18.2
  SAY #32342 /* ~Snaží se věci urovnat. "V tom případě skončím toto setkání... hmmm, a budu pokračovat v přednáškách zde v Hale, takže... ehm... řekněte o tom svým přátelům."~ */
  IF ~~ THEN REPLY #32343 /* ~Přestaň naslouchat a odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #32344 /* ~Někdo v publiku vykřiknul: "Jasně! Ať se taky přijdou podívat, jak si dokážeš zamazat tuniku!" Místnost se naplnila smíchem.~ */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #32345 /* ~"Eh... hmm."~ */
  IF ~~ THEN REPLY #32346 /* ~Odejdi.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #49450 /* ~Tento malý zavalitý muž kolem sebe šíří ovzduší veledůležitosti. Asi právě dává nějaké kázání.~ */
  IF ~~ THEN REPLY #49451 /* ~Zůstaň na kázáni.~ */ GOTO 0
  IF ~~ THEN REPLY #49452 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #64424 /* ~"Pak tedy pokračuj..."~ */
  IF ~~ THEN REPLY #64425 /* ~"Co určuje, ve které sféře se po smrti objeví?"~ */ GOTO 19
  IF ~~ THEN REPLY #64426 /* ~"Kdo je to prosebník?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"Může prosebník zemřít?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"Proč prosebníci ztrácí své vzpomínky?"~ */ GOTO 28
  IF ~~ THEN REPLY #64429 /* ~"Vlastně, už nic. Žádná otázka."~ */ GOTO 18
END
