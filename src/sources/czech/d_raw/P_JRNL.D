// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : P_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~P_JRNL~

IF ~  Global("P_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45746 /* ~Těžký dvanáctistěn - přibližně velikosti obou tvých pěstí - ti připadá neuvěřitelně povědomý. Jeho povrch je hladký a chladný, ale jestli je to kov nebo kámen, to nedokážeš s určitostí říct. Celým objektem jako by protékalo nějaké 'napětí', jako by se něco snažilo vyskočit do vzduchu.~ */
  IF ~~ THEN REPLY #45747 /* ~Pozorně prokoumej dvanáctistěn.~ */ GOTO 1
  IF ~~ THEN REPLY #46207 /* ~Odlož to.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46208 /* ~Po bližší prohlídce jsi si uvědomil, že každá strana dvanáctistěnu je plát, který může být natočen po směru nebo proti směru hodinových ručiček. Vypadá to na hlavolam nebo kombinační zámek. Jelikož má každý z pětiúhelných plátů pět možných pozic, dvanáctistěn má ne méně než dvě stě čtyřicet čtyři miliónů, jedno sto čtyřicet tisíc šest set dvacet pět nastavení. Zabralo by ti to každou sekundu příštích asi sedmdesáti sedmi let, kdybys měl vyzkoušet všechny kombinace - ale, možná bys mohl mít štěstí a narazit na řešení během několika minut...~ */
  IF ~~ THEN REPLY #46209 /* ~Chvilku si s tím pohraj.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 2
  IF ~~ THEN REPLY #46210 /* ~Jenom to odlož.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46211 /* ~Jak tak metodicky kroutíš studenými šedými stěnami dvanáctistěnu, objevuje se ti v hlavě podivný pocit. Tvé ruce jakoby se pohybovaly samy od sebe, otáčejíce a kroutíce předmětem s mechanickou přesností. Už jsi to dělal dřív... kdysi jsi znal kombinaci... a taky jsi si jistý, že v objektu číhá nějaké nebezpečí. Jestli to je ale nějaká past, to si nedokážeš vzpomenout.~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #46212 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,9,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46213 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,9,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46214 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46215 /* ~Za chviličku jsi dal do správných pozic čtyři strany. Když začínáš kroutit pátou stranou dvanáctistěnu, vzpomněl sis na malou sekající past, která by měla vyskočit a useknout pár prstů každému, kdo o ní neví. Vyrušil jsi past správným počtem pootočení. Jsi si jistý, že jsi v odhalování tajemství pokročil.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46216 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46217 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46218 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46219 /* ~Odlož dvanáctistěn.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.0
  SAY #46220 /* ~Po tom, co jsi vyřadil z činnosti vyskakující čepele, pomalu nastavuješ další kombinace. Když jsi začal točit s devátou stranou dvanáctistěnu, vzpomněl sis na druhou past - výtrysk toxického plynu, který kolem zvědavé a neopatrné osoby vytvoří vlnu smrtelného korozivního výparu. Vyřadil jsi past správným počtem otoček. Jsi si jistý, že je dvanáctistěn téměř otevřený.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46221 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46222 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46223 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46224 /* ~Odlož dvanáctistěn.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #46225 /* ~Vyřadil jsi past s jedovatým plynem a začal pracovat s desátou stranou. Když dáváš do pozice poslední dvanáctý úhel, vzpomněl sis na několik run skrytých uvnitř hlavolamu, které by neznalého usmažily výbojem magických blesků. Po vyřazení i této poslední pasti jsi nastavil poslední kousek hlavolamu a dvanáctistěn cvakl a rozevřel se ti v dlaních...~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #46226 /* ~Za chviličku jsi dal do správných pozicí čtyři strany. Když začínáš kroutit pátou stranou dvanáctistěnu. Když jsi začat točit s pátou stranou, z mezery mezi pláty vyskočilo ostří jako břitva a seklo tě do zápěstí, málem ti useklo několik prstů. Zatnul jsi zuby bolestí a zvedl dvanáctistěn ze země, kam jsi jej upustil. A náhle sis vzpomněl, jak vyřadit tuhle past.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46227 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46228 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46229 /* ~Odlož dvanáctistěn.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #46230 /* ~Za chviličku jsi dal do správných pozicí čtyři strany. Když začínáš kroutit pátou stranou dvanáctistěnu. Když jsi začat točit s pátou stranou, z mezery mezi pláty vyskočilo ostří jako břitva a seklo tě do zápěstí, málem ti useklo několik prstů. Pustil jsi zkrvavený hlavolam na zem, a padl za ním, jak ti z rán v zápěstí vytéká životní síla... a náhle tvůj svět ztmavnul, a zatímco jsi na pokraji smrti se ti v hlavě objevila vzpomínka, jak vyřadit tuto past.~ */
  IF ~~ THEN REPLY #46231 /* ~Upadni do temnot...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.0 13.1
  SAY #46232 /* ~Po tom, co jsi vyřadil z činnosti vyskakující čepele, pomalu nastavuješ další kombinace. Když začínáš točit s devátou stranou hlavolamu, přímo do tváře ti vytryskl obláček toxického, korodujícího plynu. Na půl slepý, se zamotanou hlavou a po záchvatu silného zvracení, sis vzpomněl, jak vyřadit i tuto past.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46233 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 10
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46234 /* ~Pracuj dál s dvanáctistěnem.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #46235 /* ~Odlož dvanáctistěn.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 6.1 13.2
  SAY #46236 /* ~Po tom, co jsi vyřadil z činnosti vyskakující čepele, pomalu nastavuješ další kombinace. Když začínáš točit s devátou stranou hlavolamu, přímo do tváře ti vytryskl obláček toxického, korodujícího plynu. Chvíli se kroutíš - napůl slepý, se zamotanou hlavou a zvracejíc ze všech sil - než sis vzpomněl, jak vyřadit z provozu i tuto past. Dopadl jsi na zem, zkroucený v agónii do klubíčka, ale stále si tiskneš drahocenný dvanáctistěn k hrudi.~ */
  IF ~~ THEN REPLY #46321 /* ~Upadni do temnot...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 8.0 14.1
  SAY #46237 /* ~Vyřadil jsi past s jedovatým plynem a pracuješ na posledním nastavení. Když nastavuješ dvanáctý úhel, magické runy ukryté uvnitř hlavolamu vyvolaly malou bouři magických blesků - oblouky praskající energie proletěly tvými pažemi, zanechávajíce po sobě stopy černého spáleného masa.

Když jsi protáhl křečí zkroucené svaly a dal ses trochu dohromady, vzpomněl sis, jak vyřadit tuto past. Po konečném nastavení dvanácté stěny hlavolam cvaknul a rozevřel se ti v dlaních...~ */
  IF ~~ THEN REPLY #16191 /* ~Pokračuj...~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 4.2 8.1 14.2
  SAY #46238 /* ~Vyřadil jsi past s jedovatým plynem a pracuješ na posledním nastavení. Když nastavuješ dvanáctý úhel, magické runy ukryté uvnitř hlavolamu vyvolaly malou bouři magických blesků - oblouky praskající energie proletěly tvými pažemi, zanechávajíce po sobě stopy černého spáleného masa. Když padáš v bolestech k zemi, vzpomínáš si, jak vyřadit past - ale škoda už byla způsobena a ty umíráš na silný šok a poškození nervové soustavy...~ */
  IF ~~ THEN REPLY #46615 /* ~"Jak mohl... takovou...*guh*"~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 10.0 15.0
  SAY #46239 /* ~Dvanáctistěn se rozdělil jednou, dvakrát a nakonec se rozbalil do téměř pravidelné tabulky velikosti knihy. Do povrchu je vyryta série podivných symbolů. Vypadá to jako kód, nebo nějaký jazyk, který by ti měl připadat povědomý... ale není tomu tak. Další průzkum tabulky odhalil, že zkroucením stěn, které jsou teď na spodní části tabulky, můžeš na tabulce zobrazovat různé stránky. Nakonec sis uvědomil, že ten hlavolam je nějaký druh deníku nebo zápisníku.~ */
  IF ~~ THEN REPLY #46240 /* ~"Hmm... dokud se nenaučím ten jazyk, nemá smysl na to zírat a kazit si oči."~ */ JOURNAL #56754 /* ~Podařilo se mi otevřít dvanáctistěn s mnoha pastmi, který jsem našel. Ukázalo se, že je to nějaký deník. Nedokážu ale rozluštit podivný jazyk, jakým je psaný... možná najdu v Hale nějakého učence nebo lingvistu, který mi pomůže.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #46241 /* ~Vzal jsi studený šedý dvanáctistěn a prozkoumáváš ho, teď už si vědomý vyskakujících ostří, číhajících na neopatrného uživatele.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46242 /* ~Zapracuj na dvanáctistěnu. Znovu.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46243 /* ~Zapracuj na dvanáctistěnu. Znovu.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46244 /* ~Zapracuj na dvanáctistěnu. Znovu.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46245 /* ~Odlož dvanáctistěn.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #46246 /* ~Vzal jsi studený šedý dvanáctistěn a prozkoumáváš ho, teď už si vědomý vyskakujících ostří a jedovatého plynu, číhajících na neopatrného uživatele.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46247 /* ~Zapracuj na dvanáctistěnu. Znovu.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46248 /* ~Zapracuj na dvanáctistěnu. Znovu.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46249 /* ~Zapracuj na dvanáctistěnu. Znovu.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46250 /* ~Odlož dvanáctistěn.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #46251 /* ~Vzal jsi studený šedý dvanáctistěn a prozkoumáváš ho, teď už si vědomý několika smrtelných pastí, číhajících na neopatrného uživatele.~ */
  IF ~~ THEN REPLY #46252 /* ~Rozdělej ho.~ */ GOTO 12
  IF ~~ THEN REPLY #46253 /* ~Odlož dvanáctistěn.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #46254 /* ~Vzal jsi studený šedý dvanáctistěn a prozkoumáváš ho, teď už si vědomý několika smrtelných pastí, číhajících na neopatrného uživatele. Jelikož sis už oživil starobylý jazyk Uyo, měl bys být konečně schopen přečíst, co se tam píše...~ */
  IF ~~ THEN REPLY #46255 /* ~Rozlož dvanáctistěn a přečti si obsah.~ */ DO ~GiveExperience(Protagonist,10000)
SetGlobal("P_Journal","GLOBAL",5)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #66194 /* ~Konečně se mi podařilo odhalit poslední z tajemství dvanáctistěnného hlavolamu. Je to deník, který si psala jedna z mých předchozích inkarnací.~ */ GOTO 17
  IF ~~ THEN REPLY #46256 /* ~Odlož dvanáctistěn.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #46257 /* ~Tabulka vypadá jako nějaký deník... který si psala tvá předchozí inkarnace - a ne zrovna nějaká, která by to měla v hlavě v pořádku. Je tady jenom několik částí, které jsou srozumitelné.~ */
  IF ~~ THEN REPLY #46258 /* ~Prolistuj to.~ */ GOTO 19
  IF ~~ THEN REPLY #46259 /* ~Odlož deník.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",5)
~ THEN BEGIN 18 // from:
  SAY #46260 /* ~Držíš studený šedý dvanáctistěn - šifrovaný deník tvé předchozí inkarnace, zajištěný několika pastmi.~ */
  IF ~~ THEN REPLY #46261 /* ~Rozlož deník a přečti si ho.~ */ GOTO 19
  IF ~~ THEN REPLY #46262 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0 20.0 21.0 22.0 23.0 24.0 25.1 26.0 27.0 28.0 29.1 30.1 31.1 32.0 33.0 34.0
  SAY #46263 /* ~O čem si chceš přečíst?~ */
  IF ~~ THEN REPLY #46264 /* ~Přečti si o 'šeptajících stínech.'~ */ GOTO 20
  IF ~~ THEN REPLY #46265 /* ~Přečti si o duchovi ženy.~ */ GOTO 21
  IF ~~ THEN REPLY #46266 /* ~Přečti si ukrytí něčeho ve tvém vlastním těle.~ */ GOTO 22
  IF ~~ THEN REPLY #46267 /* ~Přečti si nějaké paranoidní kecy.~ */ GOTO 23
  IF ~~ THEN REPLY #46268 /* ~Přečti si o 'prokletých' tetováních.~ */ GOTO 24
  IF ~~ THEN REPLY #46269 /* ~Přečti si o snech a o Ravel.~ */ GOTO 25
  IF ~~ THEN REPLY #46270 /* ~Přečti si o nebezpečí jmen.~ */ GOTO 26
  IF ~~ THEN REPLY #46271 /* ~Přečti si o zabíjení v Hale.~ */ GOTO 27
  IF ~~ THEN REPLY #46272 /* ~Přečti si o vraždě toho, kdo se ti pokusil pomoct.~ */ GOTO 28
  IF ~~ THEN REPLY #46273 /* ~Přečti si tajemnou zprávu z neznámého zdroje.~ */ GOTO 29
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #46274 /* ~Přečti si něco o dědictví.~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",1)
SetGlobal("Know_Nameless_Legacy","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #53673 /* ~Přečti si něco o odkazu.~ */ GOTO 34
  IF ~~ THEN REPLY #47074 /* ~Nic; odložit deník stranou.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46275 /* ~"Šepoty nejsou stíny HÝBAJÍCÍ se. Ony MLUVÍ, KUJÍ PIKLE, DOMLOUVAJÍ se spolu. Něčemu z toho, co říkají, rozumím."~ */
  IF ~~ THEN REPLY #46276 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46277 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #46278 /* ~"Kniha mi říká věci, šeptá věci. Říká mi, vyhni se dívce-duchovi. Vyhni se jí. NEZNÁM JI a ona mne MUČÍ!"~ */
  IF ~~ THEN REPLY #46279 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46280 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY #46281 /* ~"A tak jsem to SPOLKNUL, doufám, že se to CHYTÍ v mých VNITŘNOSTECH. Jestli to budu potřebovat, najdu někoho, kdo to VYNDÁ."~ */
  IF ~~ THEN REPLY #46282 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46284 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.3
  SAY #46283 /* ~"Zjistil jsem, že MŮJ ŽIVOT NENÍ MŮJ! Nedovolím ti mít můj život..."

"TY budeš muset vytáhnout život z mého ZNIČENÉHO TĚLA, jestli ho budeš chtít..."

"A budeš to TY, kdo ZEMŘE. Jestli ho nemůžu mít JÁ, nebudeš ho mít ani TY."

"TY JSI ODPOVĚDNÝ ZA TUHLE VELEZRADU TĚLA, NEBUDEŠ ŽÍT, ABYS MOHL ŽÍT MŮJ ŽIVOT."~ */
  IF ~~ THEN REPLY #46285 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46286 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.4
  SAY #46287 /* ~"Ta proklatá TETOVÁNÍ nechtějí opustit mou KŮŽI! Zkusil jsem je z kůže spálit - SELHAL jsem, selhal! Mohu se ZAMASKOVAT, ale vždy cítím, že lidé ČTOU mé MASO, čtou mě jako KNIHU. Kdykoli se na mně PODÍVAJÍ, chci jim VYTRHNOUT OČI z důlků a rozdrtit je na kaši!"~ */
  IF ~~ THEN REPLY #46288 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46289 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.5
  SAY #46290 /* ~"PROČ NEMOHU SNÍT?!"

"Použil jsem Pohár Semiru, abych se donutil ke SNU. Viděl jsem ČARODĚJNICI. SVÁDĚLA MĚ, vyhrožovala mi STÍNY! Nikdy jsem jí neviděl, ale přišla, když jsem SNIL. Už NESMÍM znovu snít. Musím být vždy PŘIPRAVEN. ZNIČIL jsem pohár."

"Řekla, že má MOC, a že mě bude MÍT, že mě NAJDE! Jdi pryč, ČARODĚJNICE! Jdi ODE mě! Nech mě BÝT! Nechci s tebou nic MÍT!"~ */
  IF ~~ THEN REPLY #46291 /* ~Pokračuj ve čtení této části deníku.~ */ GOTO 33
  IF ~~ THEN REPLY #46292 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46293 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.6
  SAY #46294 /* ~"Boj se JMEN. JMÉNA mají moc v identitě. JMÉNA mohou použít OSTATNÍ jako ZBRANĚ. Mají HÁK, který můžou použít, aby tě VYSTOPOVALI! Budou tě HONIT po sférách. Zůstaň beze jména, a budeš v BEZPEČÍ!"~ */
  IF ~~ THEN REPLY #46295 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46296 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 19.7
  SAY #46297 /* ~"Šel jsem do Haly, hledal jsem stopu mého FALEŠNÉHO JÁ. Tak ZLOBNÍ byli, ti, které jsem NEZNAL, FALEŠNÍ, VÍTALI mě, brali mě jako PŘÍTELE, ukázali mi mou MÍSTNOST, postarali se o mé POTŘEBY. Musel jsem se ovládat, abych po nich neskočil. To by bylo předčasné. Nejdřív musím OCHRÁNIT svou IDENTITU. Našel jsem někoho, kdo znal jazyk Uyo, naučil jsem se to od něj a pak ho ZABIL. Pak jsem zašel do senzoria a připravil jsem se UKONČIT celou záležitost. Brzo, už brzo..."~ */
  IF ~~ THEN REPLY #46298 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46299 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.8
  SAY #46300 /* ~"Není NIC, co by mohl udělat. Paměť je PRYČ, říká, NIKDY se nevrátí. On lže a říká mi to, co mi řekl! LŽI! Řekl, že má mysl SLÁBNE s každou smrtí! LŽI! Seděl a ZRAZOVAL mou důvěru.
Řekl, že za pouhé TŘI DALŠÍ SMRTI, TŘI další životy si udržím své paměti, ale JÁ, MÉ JÁ, pokud ZEMŘU, tak zemře! ZEMŘE! Jak můžu být nesmrtelný a ZEMŘÍT?! Nedokázal odpovědět, už mi nebyl K NIČEMU. ROZSEKAL jsem ho, takže se s jeho NESCHOPNOSTÍ nebudou muset otravovat další inkarnace."~ */
  IF ~~ THEN REPLY #46302 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46303 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.9
  SAY #46301 /* ~"Tak řekly HLAVY DUCHŮ."

"TY jsi byl ROZDĚLEN. Jsi JEDEN z MNOHA mužů. (Jeden z MNOHA MUŽŮ?) Máš mnoho JMEN, každé nechalo na tvém mase jizvu..."~ */
  IF ~~ THEN REPLY #46304 /* ~Pokračuj ve čtení této části deníku.~ */ GOTO 30
  IF ~~ THEN REPLY #46305 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46306 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #46307 /* ~ZTRACENÝ
NESMRTELNÝ
KONEC INKARNACÍ
MUŽ TISÍCE SMRTÍ
TEN JEŽ ZATRATIL ŽIVOT
TEN BEZ ODPOČINKU
JEDEN Z MNOHA
TEN, KTERÉHO DRŽÍ V ZAJETÍ ŽIVOT
PŘINAŠEČ STÍNŮ
ZRANĚNÝ
PŘINÁŠEJÍCÍ MIZÉRII
YEMETH~ */
  IF ~~ THEN REPLY #46308 /* ~Pokračuj ve čtení této části deníku.~ */ GOTO 31
  IF ~~ THEN REPLY #46309 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46310 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #46311 /* ~"JSI stříbrné sklo, které PRASKLO a rozšířilo se po celé historii."

"POUZE JEDEN kousek je důležitý. Získej ho a tvůj ŽIVOT bude zase tvůj. Zaplatíš ale cenu. Ta cena ti dá šanci. Bez té šance jsi ZTRACEN..."~ */
  IF ~~ THEN REPLY #46312 /* ~Pokračuj ve čtení této části deníku.~ */ GOTO 32
  IF ~~ THEN REPLY #46313 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46314 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #46315 /* ~"ZTRATIL JSI TO, CO SE NIKDY NEMĚLO OD ČLOVĚKA ODDĚLIT. TVÁ SMRTELNOST BYLA OD TEBE ODDĚLENA. ZTRACENA. POKUD EXISTUJE, MUSÍŠ JI NAJÍT, NEŽ ZTRATÍŠ I SVOU MYSL."~ */
  IF ~~ THEN REPLY #46316 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46317 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.0
  SAY #46318 /* ~"Její hlas řval zlými PAŘÁTY, pařáty jako PAVOUKY, POHŘBILI mě do šedé hmoty a já jí potřeboval dostat PRYČ z mé MYSLI. PRYČ, čarodějnice!"

"Byla MÝTUS, POHÁDKA, která se sama VZEPŘELA PANÍ BOLESTI! Jak můžu BOJOVAT s někým, kdo je jenom MÝTUS?! Nemám ZBRANĚ. Potřebuju zbraně, které ji ZABIJÍ, kdyby mě NAŠLA. Potřebuju STRATEGII, aby mě nemohla porazit, až si PRO MĚ PŘIJDE. Musím VYMYSLET něco, jak jí PORAZIT."~ */
  IF ~~ THEN REPLY #46319 /* ~Přečti si něco jiného.~ */ GOTO 19
  IF ~~ THEN REPLY #46320 /* ~Odlož deník.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 19.10 19.11
  SAY #47071 /* ~"DĚDICTVÍ, říká zpráva, 'NEZAPOMEŇ SHROMÁŽDIT SVÉ DĚDICTVÍ,' a vedle ní je naškrábán krátký KÓD: 51-AA..."

"PAST, nepochybně nastražená dalším z mých FALEŠNÝCH JÁ. ZNIČÍM ji, ó ano, zničím."~ */
  IF ~~ THEN REPLY #47079 /* ~Přečti něco dalšího.~ */ GOTO 19
  IF ~~ THEN REPLY #47081 /* ~Odložit deník stranou.~ */ EXIT
END
