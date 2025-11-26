// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_08~

IF ~  !Global("S_Stone","AR0603",15)
!Global("S_Stone","AR0603",18)
~ THEN BEGIN 0 // from:
  SAY #34219 /* ~Je to nezvyklý červenooranžový kámen. Je bezpečně připevněný k podstavci, na kterém leží.~ */
  IF ~~ THEN REPLY #47490 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",15)
~ THEN BEGIN 1 // from:
  SAY #47491 /* ~Tenhle červenooranžový kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'strašné lítosti.'~ */
  IF ~~ THEN REPLY #47492 /* ~Začni vjem.~ */ GOTO 2
  IF ~~ THEN REPLY #47493 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47494 /* ~Stojíš na palubě své vlajkové lodi Boží kladivo, plující nad Agarheimským kontinentem, nadnášené v závratné výšce magií a větrem. Celá krajina vybuchuje a otřásá se pod palbou tvé flotily, jeden tisíc lodních děl a minometů dští dolů záplavy zkázy jako bohové pomsty. Nárazové vlny vzduchu začaly otřásat tvou lodí teprve před několika minutami - soustavné chvění, šířící se po celém starověkém plavidle i do tvých kostí - doprovázené neměnným, vzdáleným hřměním. Ve chvíli, kdy se pevninské hory začaly hroutit a moře vypařovat do atmosféry, přistoupil k tobě tvůj první důstojník. ~ */
  IF ~~ THEN REPLY #47495 /* ~Pokračuj v prožitku.~ */ GOTO 3
  IF ~~ THEN REPLY #47496 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47497 /* ~"Můj Admirále... smím mluvit otevřeně, pane?"~ */
  IF ~~ THEN REPLY #47498 /* ~Pokračuj v prožitku.~ */ GOTO 4
  IF ~~ THEN REPLY #47499 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47500 /* ~Mluvíš, aniž by ses k němu obrátil, nemáš sílu odvrátit pohled od Rhumosu, obrovského hlavního města národů, měnící se v dvanáct mil široké mračno žhavých plynů a rozplývá se do ztracena. "Kdybys znal celou pravdu o zradě Agaritese, První důstojníku Falme, která je mimo všechno lidské chápání... pak bys věděl. Mluvíš o našem právu je vyhladit? My nemáme žádné právo je nechat naživu."~ */
  IF ~~ THEN REPLY #47501 /* ~Pokračuj v prožitku.~ */ GOTO 5
  IF ~~ THEN REPLY #47502 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47503 /* ~"Ale... pane? Zrádci, všichni? Jistě, pár stovek tisíc. Kolik nevinných-"

"Ticho! Už o tom nemluvme - náš král dal rozkaz, my splníme Jeho vůli. Nám svěřený úkol je strašný, ale nepřísluší nám o něm uvažovat, nebo se ptát. Zde není místo pro soucit, ani pro slitování - je jen *povinnost.*"~ */
  IF ~~ THEN REPLY #47504 /* ~Pokračuj v prožitku.~ */ GOTO 6
  IF ~~ THEN REPLY #47505 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47506 /* ~Oba chvíli tiše stojíte a sledujete poslední okamžiky Agarheimu. Po dlouhé době sis povzdechl... hluboký, zajíkavý výdech zní, jakoby se v tobě něco zlomilo. Pod kovovým plátem, kryjícím zničenou polovinu tvé tváře, začalo tvé mrtvé oko plakat...~ */
  IF ~~ THEN REPLY #47507 /* ~Pokračuj v prožitku.~ */ GOTO 7
  IF ~~ THEN REPLY #47508 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47509 /* ~"Falme... příteli... kdybych to viděl jako ty. Kdybych se podíval dolů na své dílo a zamyslel se nad tím, co jsem udělal... co jsem *opravdu* udělal... Zešílel bych. Vykonat něco takového... ta vina by mě rozdrtila, zničila by mě. Takže, Prvni důstojníku Falme, to musí být tak, že v Agarheimu *nejsou* žádní nevinní... žádné matky, žádné děti, žádní *lidé.* Jen zrádci. Hnusní, úskoční zrádci, kteří si nezaslouží nic jiného, než poznat plnou sílu Nejsvatějšího královského hněvu. Rozumíš tomu?"~ */
  IF ~~ THEN REPLY #47510 /* ~Pokračuj v prožitku.~ */ GOTO 8
  IF ~~ THEN REPLY #47511 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47512 /* ~"A-ano, můj pane."

"Dobře. Teď jdi... Přeji si být sám."

"Jak přikazuješ, Admirále." Falm kývl hlavou a vrátil se na nižší palubu, zanechávaje tě stojícího nad koncem civilizace.~ */
  IF ~  Global("Sensation15","AR0603",0)
~ THEN REPLY #47513 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation15","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation15","AR0603",1)
~ THEN REPLY #47514 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",18)
~ THEN BEGIN 9 // from:
  SAY #47515 /* ~Tenhle červenooranžový kámen je jeden z těch, ke kterým tě poslal úředník. V jeho nitru leží prožitek 'nepopsatelného zklamání.'~ */
  IF ~~ THEN REPLY #47516 /* ~Začni vjem.~ */ GOTO 10
  IF ~~ THEN REPLY #47517 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47518 /* ~Konečně ji vidíš. Haephonova koruna, lesknoucí se na mramorovém podstavci. Ne více, než dvacet kroků... tě dělí od okamžiku, kdy vyrveš svému zrádnému bratrovi vládu nad armádami Aethanopolis a obnovíš pořádek v otcově království. Jaký blázen, jak ubohý byl tvůj bratr... při tom pomyšlení ti po tváři přelétne trpký úsměv..., když nechal naživu královu jedinou dceru, přesvědčen, že mu nemůže nijak uškodit. ~ */
  IF ~~ THEN REPLY #47519 /* ~Pokračuj v prožitku.~ */ GOTO 11
  IF ~~ THEN REPLY #47520 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #47521 /* ~Zvuk! Zavrzání kožených sandálů, tiché zasyčení... támhle, za třetím sloupem! Byla blízko, Medúza Polaphi, žárlivě střežící korunu, kterou pro ni před dávnými časy ukradli její služebníci. Krčíš se za širokým sloupem, pevně svíráš v pěsti rukojeť svého spolehlivého oštěpu Třikrátpožehnaného. S Přilbou rychlosti a Štítem sta zrcadel je pro tebe i Polaphi rovnocenným soupeřem. Každým okamžikem, teď, obejde sloup a setká se s tvým pohledem. I kdyby se odvrátila od tvého štítu, tvůj oštěp si spolehlivě najde cestu k jejímu hrdlu...~ */
  IF ~~ THEN REPLY #47522 /* ~Pokračuj v prožitku.~ */ GOTO 12
  IF ~~ THEN REPLY #47523 /* ~Přeruš vjem a odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47524 /* ~Náhle ti něco jemně poklepe na rameno. Se zatajeným dechem otáčíš oči ke tváři - jak jinak - Medúzy. Smiřuješ se s nevyhnutelným, máš čas jen propadnout divokému zklamanému pláči, než ti hruď... a pak další části tvého těla... ztuhne ve studený, šedý kámen.~ */
  IF ~  Global("Sensation18","AR0603",0)
~ THEN REPLY #47525 /* ~Odtrhni se od prožitku.~ */ DO ~SetGlobal("Sensation18","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation18","AR0603",1)
~ THEN REPLY #47527 /* ~Odtrhni se od prožitku, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.0 12.0
  SAY #47526 /* ~Zdá se, že zážitek probudil v tvé mysli nejasnou vzpomínku... cítíš se, jako bys užitím kamene vjemů něco získal.~ */
  IF ~~ THEN REPLY #47528 /* ~Odejdi.~ */ EXIT
END
