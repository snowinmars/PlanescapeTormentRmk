// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_RA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_RA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51466 /* ~Nezdravě zelený kámen je pevně připevněný ke svému podstavci, na kterém je nápis "Posel."~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #51467 /* ~Začni seanci.~ */ GOTO 2
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #53012 /* ~Začni seanci.~ */ GOTO 1
  IF ~~ THEN REPLY #53013 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #53014 /* ~Dotkl ses kamene, ale v tvé mysli se nic neozvalo... jakoby byl kámen inertní... mrtvý.~ */
  IF ~~ THEN REPLY #53015 /* ~Nechej kámen být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #53016 /* ~Když ses dotkl kamene, jeho zelený povrch se zaostřil, jeho jas je náhle víc, než dokážeš vydržet, tak moc, že jsi musel zavřít oči...~ */
  IF ~~ THEN REPLY #53017 /* ~Zavři oči, ponoř se do zážitku...~ */ GOTO 4
  IF ~~ THEN REPLY #53018 /* ~Setřes ze sebe prožitek, nechej kámen být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 5.3 6.1 7.2 8.1 9.2 10.1 19.1 21.0
  SAY #53019 /* ~Tvůj pohled se rozjasňuje, až zase stojíš před odporně zeleným kamenem... teď vypadá jinak než předtím... nějak hrozivěji.~ */
  IF ~~ THEN REPLY #53020 /* ~Setřes zážitek, odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #53021 /* ~Jak jsi zavřel oči, cítíš, že je kůže na tvých pažích nějak umrtvená, jakoby z nich vymizely všechny pocity. Unavený... tak unavený. Zkoušíš mrknout, ale tma zůstává. Tvé oční víčka jsou... lehká, nereagují. Sedíš na něčem, co ti připadá jako špinavá podlaha, kolem sebe cítíš měděný pach krve a... bylinek? Proč jsi tady? Přišel jsi sem - proč? Tvá paměť tě zklamala, ale cítíš, jak v tobě narůstá panika...~ */
  IF ~~ THEN REPLY #53022 /* ~Zkus se dát dohromady...~ */ GOTO 5
  IF ~~ THEN REPLY #53023 /* ~Opusť zkušenost.~ */ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #53024 /* ~"Ah... vzhůru? Všechny otázky hotové?" Hlas je ženský a starý, tvrdý a skřípavý, jakoby se prodíral ven hustou vrstvou prachu. Ať se snažíš jak chceš, nedaří se ti otevřít oči a zahlédnout ženu, ale cítíš hrůzu, která tě roztřásla. Něco je špatně, strašně špatně. Zkoušíš odpovědět, ale podařilo se ti ze sebe jenom vydat zaskřípání. Necítíš jazyk... a tvé oči? Co je s tvýma očima?~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53025 /* ~"Ravel? Ravel, to jsem já!"~ */ GOTO 9
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53026 /* ~"Ravel? Vrátil jsem se."~ */ GOTO 9
  IF ~~ THEN REPLY #53027 /* ~Poslouchej...~ */ GOTO 6
  IF ~~ THEN REPLY #53028 /* ~Opusť zkušenost.~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #53029 /* ~"Tak, vidělas mě, mluvilas se mnou a *špatně*, takže teď musíš zaplatit, hmmm?" Hlas zní pobaveně, pak se v tónu objevila ostrost. "Už žádné otázky, teď budeš POSLOUCHAT, a zapamatuješ si má slova, protože tak budeš *žít*." Zasyčela. "Kývni, jestli mě slyšíš, nebo ti uříznu DALŠÍ kousek."~ */
  IF ~~ THEN REPLY #53030 /* ~Přikývni.~ */ GOTO 7
  IF ~~ THEN REPLY #53031 /* ~Opusť zkušenost.~ */ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #53032 /* ~"Pamatuj si na mne, cestovatelko. Zapamatuj si mě do kamene, do jednoho z těch lesklých nesmyslů v té vaší Hale, použij ho jako pohár, nalej do něj, co *cítíš*, a věz tohle: Zapamatuj si mě pro muže, který nosí kůži z jizev a tetování, který hledá vzpomínky, ale neumí si je zařadit. Pokud je chytrý, bude vědět o MNĚ. Řekni mu, ať mě najde - nebo pokud mě nebude moct najít, ať přijde ke kameni a promluvíme si, můj vzácný mužíčku, ty a já." Žena se odmlčela, pak znovu zasyčela. "KÝVNI, jestli mě slyšíš, trosko!"~ */
  IF ~  GlobalLT("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53033 /* ~Přikývni.~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",1)
~ GOTO 8
  IF ~  GlobalGT("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53030 /* ~Přikývni.~ */ GOTO 8
  IF ~~ THEN REPLY #53034 /* ~Opusť zkušenost.~ */ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #53035 /* ~"Ah... hezké, slušné, poslouchat tak dlouho... až přijde ke kameni, řekni mu, ať řekne mé *jméno*, a tvá bolest nebude zbytečná..." Hlas babizny zmizel, jako by ji něco vyrušilo. Pokoušíš se znovu promluvit, ale vydal jsi jenom hnusný bublavý zvuk. Co se stalo? Kdo je ta osoba? Kdo jsi... cítíš, že se blíží bezvědomí...~ */
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53036 /* ~"Ravel! Ravel, to jsem já!"~ */ JOURNAL #53038 /* ~V Soukromém senzoriu jsem narazil na hrozný kámen. Byl to strašidelně zelený senzorický kámen, obsahující zkušenost někoho, na kom zapracovala Ravel, zmučila ji, aby přinesla zkušenost zpět do haly... a nakonec ke mně. Ve vzpomínce Ravel řekla, že mám vyslovit její jméno, až kámen najdu, tak jsem to udělal...~ */ GOTO 9
  IF ~~ THEN REPLY #53037 /* ~Opusť zkušenost.~ */ JOURNAL #53039 /* ~V Soukromém senzoriu jsem narazil na hrozný kámen. Byl to strašidelně zelený senzorický kámen, obsahující zkušenost někoho, kdo byl zmučen, aby přinesl zkušenost zpět do haly... a nakonec ke mně. Ve vzpomínce zlá žena řekla, že mám vyslovit její jméno, až kámen najdu. Přivádí mě k šílenství, že nemám nejmenší tušení, kdo ta žena je. Až zjistím její jméno, vrátím se.~ */ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 8.0
  SAY #53040 /* ~Ticho.~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53041 /* ~"Ravel..?"~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",2)
GiveExperience(Protagonist,6000)
~ GOTO 10
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53042 /* ~"Ravel...? To jsem já, zase."~ */ GOTO 10
  IF ~~ THEN REPLY #53043 /* ~Opusť zkušenost.~ */ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53044 /* ~"Ahhh... můj vzácný mužíčku." Je slyšet, jak se zastavila, *ucítil* jsi píchnutí v levém oku. Zalapal jsi po dechu, a náhle VIDÍŠ - se svým jediným okem. Ležíš v šedé chatrči, na špinavé podlaze, v prachu je vsáklá krev, tvá světle rudá krev. Tvé paže jsou pryč, nohy jsou useknuty v kotnících. Ale... necítíš bolest, jenom strach. Nad tebou někdo stojí, dívá se na tebe...~ */
  IF ~~ THEN REPLY #53045 /* ~Podívej se nahoru.~ */ GOTO 11
  IF ~~ THEN REPLY #53046 /* ~Opusť zkušenost.~ */ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53047 /* ~Když ses podíval nahoru, vidíš svým krví rozmazaným pohledem hroznou namodralou tvář, šklebící se a odhalující zažloutlé tesáky. "Ravel je *potěšena* - zajímalo mě, jestli to tenhle posel zvládne, protože *slabý* byl, když jsem si z ní ukrojila pár kousků na talíř..." Zvedla pařát, na špičce drápu je napíchnuté oko. "Ale vypadá to, že se vrátila do haly a podělila se o své zážitky. A teď jsi přišel... úspěch!"~ */
  IF ~~ THEN REPLY #53048 /* ~"Ravel... Mám pro tebe spoustu otázek."~ */ GOTO 12
  IF ~~ THEN REPLY #53049 /* ~"Sbohem, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #53050 /* ~Babizna zavrtěla hlavou, ve svém rozmazaném pohledu ji vidíš třikrát. Její šedé vlasy jsou jako kořínky, rostoucí z hlavy až na ramena. "Ne, čas pouze na odpovědi Ravel má, nemůže plýtvat časem na otázky. Věz tohle a s tím věděním zesílíš. Musíš mě NAJÍT, můj vzácný mužíčku."~ */
  IF ~~ THEN REPLY #53051 /* ~"Ale jak? Já nevím--"~ */ JOURNAL #53053 /* ~Ten senzorický kámen v Soukromém senzoriu obsahoval zážitek s Ravel, mohl jsem si s ní promluvit, i když nevím jak. Řekla mi, že jí musím najít, a abych jí našel, potřebuju "najít dveře, znát klíč a odemknout klíč". Není mi jasné, co o tom přesně řekla, ale myslím, že se můžu ke kameni vrátit, kdybych potřeboval další stopy.~ */ GOTO 13
  IF ~~ THEN REPLY #53052 /* ~"Nemohu zůstat, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53054 /* ~"Csss! Jsem mimo znalost, v místě Paní Bolesti. A teď ššš, poslouchej Ravel, protože je mnoho, co musíš udělat - abys mě našel, potřebuješ tři věci: najít dveře, znát klíč a pak *odemknout* klíč."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53055 /* ~"Dveře?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53056 /* ~"Dveře?"~ */ GOTO 15
  IF ~~ THEN REPLY #53057 /* ~"Klíč?"~ */ GOTO 16
  IF ~~ THEN REPLY #53058 /* ~"Odemknout klíč?"~ */ GOTO 18
  IF ~~ THEN REPLY #53059 /* ~"Ravel... jakto, že s tebou můžu mluvit, když je tohle zážitek někoho jiného?"~ */ GOTO 22
  IF ~~ THEN REPLY #53060 /* ~"Sbohem, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0 18.0 22.0
  SAY #53061 /* ~"Dveře nejsou hotové... alespoň nebyly, když jsem je posledně viděla, hmmm? Ale časem, možná už hotové jsou. Jdi do místa pecí a oceli, tam najdeš dveře, které tě ke mně zavedou..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53062 /* ~"Ravel, vím že klíčem je kousek tebe, ale nevím, jak ho najít--"~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53063 /* ~"O jakém klíči to mluvíš?"~ */ GOTO 16
  IF ~~ THEN REPLY #53064 /* ~"Odemknout klíč? Co tím myslíš?"~ */ GOTO 18
  IF ~~ THEN REPLY #53065 /* ~"Ravel... jakto, že s tebou můžu mluvit, když je tohle zážitek někoho jiného?"~ */ GOTO 22
  IF ~~ THEN REPLY #53066 /* ~"Sbohem, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.2 17.1 18.1 22.1
  SAY #53067 /* ~"Dveře jsou hotová věc, a můžeš je nosit s sebou... velmi dobré, velmi *chytré*, můj vzácný mužíčku... jednu část k nalezení Ravel máš..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53068 /* ~"Ravel, vím že klíčem je kousek tebe, ale nevím, jak ho najít--"~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53069 /* ~"O jakém klíči to mluvíš?"~ */ GOTO 16
  IF ~~ THEN REPLY #53070 /* ~"Odemknout klíč? Co tím myslíš?"~ */ GOTO 18
  IF ~~ THEN REPLY #53071 /* ~"Ravel... jakto, že s tebou můžu mluvit, když je tohle zážitek někoho jiného?"~ */ GOTO 22
  IF ~~ THEN REPLY #53072 /* ~"Sbohem, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 13.2 14.1 15.1 18.3 22.3
  SAY #53073 /* ~"Abys POZNAL klíč, promluv s jedním z vědoucích - mnoho jich je v Hale, *mnoho* - ale jenom JEDEN má znalost, co jako klíč musíš použít. Rozvaž mu jazyk a mnohá tajemství se dozvíš..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53074 /* ~"Ravel, vím že klíčem je kousek tebe, ale nevím, jak ho najít--"~ */ GOTO 17
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53075 /* ~"O jakých dveřích to mluvíš?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53076 /* ~"O jakých dveřích to mluvíš?"~ */ GOTO 15
  IF ~~ THEN REPLY #53077 /* ~"Když jsi řekla, že mám odemknout klíč, co jsi tím myslela?"~ */ GOTO 18
  IF ~~ THEN REPLY #53078 /* ~"Ravel... jakto, že s tebou můžu mluvit, když je tohle zážitek někoho jiného?"~ */ GOTO 22
  IF ~~ THEN REPLY #53079 /* ~"Sbohem, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 14.0 15.0 16.0 18.2 22.2
  SAY #53080 /* ~"Klíč je ZE mně, není....není? Eh..." Babizna zasyčela, jako by se snažila dát myšlenky dohromady, tvá vize se zase rozmazala. "Žádný obrázek to není, žádný příběh, žádný kámen, ale klíč je ze MNĚ, výsledek mé vlastní krve a masa. Najdi ho! *Žije*..."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53081 /* ~"O jakých dveřích to mluvíš?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53082 /* ~"O jakých dveřích to mluvíš?"~ */ GOTO 15
  IF ~~ THEN REPLY #53083 /* ~"Když jsi řekla, že mám odemknout klíč, co jsi tím myslela?"~ */ GOTO 18
  IF ~~ THEN REPLY #53084 /* ~"Ravel... jakto že s tebou můžu mluvit, když je tohle zážitek někoho jiného?"~ */ GOTO 22
  IF ~~ THEN REPLY #53085 /* ~"Sbohem, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 13.3 14.2 15.2 16.3 17.2 22.4
  SAY #53086 /* ~"Znát klíč NENÍ dost, to si Ravel myslí. Znát ho a odemknout, to jsou dva úkoly, které se musí spojit... protože někdy věc nezná svou povahu... ale tohle pro tebe není cizí..." Ravel se zasmála, je to dlouhý, hrozivý skřek, který naplnil tvé uši bolestí...~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53087 /* ~"O jakých dveřích to mluvíš?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53088 /* ~"O jakých dveřích to mluvíš?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53089 /* ~"Ravel, vím že klíčem je kousek tebe, ale nevím, jak ho najít--"~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53090 /* ~"O jakém klíči to mluvíš?"~ */ GOTO 16
  IF ~~ THEN REPLY #53091 /* ~"Ravel... jakto, že s tebou můžu mluvit, když je tohle zážitek někoho jiného?"~ */ GOTO 22
  IF ~~ THEN REPLY #53092 /* ~"Sbohem, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 11.1 12.1 13.5 14.4 15.4 16.5 17.4 18.5 22.5
  SAY #53093 /* ~"Vrať se - dám ti všechnu pomoc, co mohu..." Ravel se usmála, je to hrozný, zubatý škleb. Zčernalý jazyk vylétl z jejích rtů, přejel na okraj. "Ale na konec, pouze jedna otázka zůstává..."~ */
  IF ~~ THEN REPLY #53094 /* ~"Co tím myslíš, Ravel?"~ */ GOTO 20
  IF ~~ THEN REPLY #53095 /* ~Nechej zážitek odeznít...~ */ GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #53096 /* ~"Pouze jednu otázku, tu já dám..." Raveliny oči zazářily jako oheň, rudé světlo zalila její tvář krvavou září. "Co dokáže změnit charakter člověka?"~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #53098 /* ~Při téhle otázce cítíš, jak tebou prochází otřes, jako úder hromu, cítíš, jak *hoříš*...~ */
  IF ~~ THEN REPLY #53099 /* ~Nechej zážitek odeznít...~ */ GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 13.4 14.3 15.3 16.4 17.3 18.4
  SAY #53100 /* ~"O kamenech a zkušenostech bude Ravel mluvit, ale ne o tom, jak teď k tobě může mluvit." Mluví uhlazeně, konejšivě. "Mnoho je větví a zkroucení v Ravel, mnohá jsou její *tajemství*. Potřebuju tě a potřebuju, abys to věděl."


~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53101 /* ~"O jakých dveřích to mluvíš?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53102 /* ~"O jakých dveřích to mluvíš?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53103 /* ~"Ravel, vím že klíčem je kousek tebe, ale nevím, jak ho najít--"~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53104 /* ~"O jakém klíči to mluvíš?"~ */ GOTO 16
  IF ~~ THEN REPLY #53105 /* ~"Když jsi řekla, že mám odemknout klíč, co jsi tím myslela?"~ */ GOTO 18
  IF ~~ THEN REPLY #53106 /* ~"Sbohem, Ravel..."~ */ GOTO 19
END
