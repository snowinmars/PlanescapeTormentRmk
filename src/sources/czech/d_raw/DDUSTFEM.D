// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFEM~

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #298 /* ~Spalovačka nevypadá, že by tě poznala. Musela si tě splést s jedním z mrtvých dělníků.~ */
  IF ~~ THEN REPLY #299 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #318 /* ~"Kdo jsi?"~ */ GOTO 1
  IF ~~ THEN REPLY #1168 /* ~"Co je tohle za místo?"~ */ GOTO 1
  IF ~~ THEN REPLY #1169 /* ~"Měl bych nějaké otázky..."~ */ GOTO 1
  IF ~~ THEN REPLY #1170 /* ~Nechej ji na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #1171 /* ~Spalovačka odskočí, pak k tobě otočí hlavu a začne na tebe civět. Vypadá zaskočeně - tvůj převlek musí být celkem dobrý. ~ */
  IF ~~ THEN REPLY #1172 /* ~Využij výhody překvapení a chyť ji pod krkem, než může někoho zavolat.~ */ GOTO 41
  IF ~~ THEN REPLY #1174 /* ~"Měl bych nějaké otázky."~ */ GOTO 2
  IF ~~ THEN REPLY #1175 /* ~Odejdi. Rychle.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
  SAY #1176 /* ~Spalovačka udělá krok zpět, pak třikrát za sebou krátce tleskne. Krátce nato začne v Márnici vyzvánět velký železný zvon.~ */
  IF ~~ THEN REPLY #1225 /* ~"Nuže dobrá..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1177 /* ~Pobledlá žena je oblečena v dlouhých tmavých šatech. Vychází z ní slabý zatuchlý zápach. V obličeji má prázdný výraz a zdá se, že je zaměstnána svými povinnostmi. ~ */
  IF ~~ THEN REPLY #1226 /* ~"Zdravím."~ */ GOTO 4
  IF ~~ THEN REPLY #1227 /* ~"Kdo jsi?"~ */ GOTO 4
  IF ~~ THEN REPLY #1228 /* ~"Co je tohle za místo?"~ */ GOTO 4
  IF ~~ THEN REPLY #1229 /* ~"Měl bych nějaké otázky..."~ */ GOTO 4
  IF ~~ THEN REPLY #1230 /* ~Nechej ji na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 3.3 40.2 40.3
  SAY #1178 /* ~Spalovačka pomalu zvedá hlavu a otáčí se k tobě. "Ztratil ses?"~ */
  IF ~~ THEN REPLY #1231 /* ~"Ano."~ */ GOTO 5
  IF ~~ THEN REPLY #1232 /* ~"Ne."~ */ GOTO 6
  IF ~~ THEN REPLY #1233 /* ~"Ne, neztratil jsem se. Měl bych nějaké otázky..."~ */ GOTO 6
  IF ~~ THEN REPLY #1234 /* ~"Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.2 51.1
  SAY #1179 /* ~"Zavolám stráže aby tě odtud vyvedly. Chvíli vydrž."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1235 /* ~Chyť ji pod krkem, než může někoho zavolat.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1236 /* ~Chyť ji pod krkem, než může někoho zavolat.~ */ GOTO 41
  IF ~~ THEN REPLY #1237 /* ~Odejdi. Rychle.~ */ GOTO 2
  IF ~~ THEN REPLY #1238 /* ~Čekej.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 51.2 51.3
  SAY #1180 /* ~"Jestli ses neztratil, tak co tu potom děláš?"~ */
  IF ~~ THEN REPLY #1239 /* ~"To tě nemusí zajímat."~ */ GOTO 7
  IF ~~ THEN REPLY #1240 /* ~"Probudil jsem se na jedné z těch kamenných desek v preparační místnosti."~ */ GOTO 8
  IF ~~ THEN REPLY #1241 /* ~"Někoho tu hledám."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1242 /* ~"Byl jsem sem přivezen, ale vypadá to, že se jedná o omyl."~ */ GOTO 16
  IF ~~ THEN REPLY #1243 /* ~Odejdi. Rychle.~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0 20.0
  SAY #1181 /* ~"Obávám se, že to je Má věc. Možná ti stráže rozvážou jazyk." Spalovačka udělá krok zpět; vypadá, že se chystá zavolat stráže.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1244 /* ~Chyť ji pod krkem, než může někoho zavolat.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1245 /* ~Chyť ji pod krkem, než může někoho zavolat.~ */ GOTO 41
  IF ~~ THEN REPLY #1246 /* ~"Tak je svolej. Rád se s nimi setkám."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.0 20.1
  SAY #1182 /* ~"Děláš si srandu? Asi bys to koukám radši sdělil strážím." Spalovačka udělá krok zpět; vypadá, že se chystá zavolat stráže.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1247 /* ~Chyť ji pod krkem, než může někoho zavolat.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1248 /* ~Chyť ji pod krkem, než může někoho zavolat.~ */ GOTO 41
  IF ~~ THEN REPLY #1249 /* ~"Tak je svolej. Rád se s nimi setkám."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 20.2
  SAY #1183 /* ~"Koho tu hledáš?"~ */
  IF ~~ THEN REPLY #1251 /* ~"To není tvoje starost."~ */ GOTO 7
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1253 /* ~"Hledám tu Dhalla."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1255 /* ~"Hledám tady Dhalla."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #1258 /* ~"Hledám tu Deionarru."~ */ GOTO 13
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #4336 /* ~"Přišel jsem za Deionarrou."~ */ GOTO 12
  IF ~  GlobalGT("Soego","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33224 /* ~"Přišel jsem sem za Soegem."~ */ GOTO 15
  IF ~  GlobalGT("Soego","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33226 /* ~"Přišel jsem sem za Soegem."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedTo(1)
~ THEN REPLY #33227 /* ~Lži: "Uh... Adahn. Pracuje tu ještě, nebo...?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedToGT(1)
~ THEN REPLY #33229 /* ~Lži: "Uh... Adahn. Pracuje tu ještě, nebo...?"~ */ GOTO 21
  IF ~~ THEN REPLY #33231 /* ~"Uh, nikdo. Přeřekl jsem se."~ */ GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #1184 /* ~"Dhall je v přijímací místnosti v tomhle patře. Musím tě varovat... Dhall je docela dost zaneprázdněn svými povinnostmi a není na tom se zdravím zrovna nejlépe. Pokud s ním nemáš nějaké důležité jednání, tak bych ho, být tebou, nerušila."~ */
  IF ~~ THEN REPLY #1259 /* ~"Dobře. Díky za informaci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #1185 /* ~"Dhall je s největší pravděpodobností v přijímací místnosti ve druhém patře. Musím tě varovat... Dhall je docela dost zaneprázdněn svými povinnostmi a není na tom se zdravím zrovna nejlépe. Pokud s ním nemáš nějaké důležité jednání, tak bych ho, být tebou, nerušila."~ */
  IF ~~ THEN REPLY #1260 /* ~"Dobře. Díky za informaci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 12 // from: 9.4 19.1
  SAY #1186 /* ~"Deionarra? Vím, že je v pamětní síni v prvním patře pohřbena nějaká žena. Mohla by to být ona?"~ */
  IF ~~ THEN REPLY #1261 /* ~"S největší pravděpodobností. Díky."~ */ GOTO 48
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #1187 /* ~"Deionarra? Vím, že je v pamětní síni v severozápadní části Márnice pohřbena nějaká žena. Mohla by to být ona?"~ */
  IF ~~ THEN REPLY #1262 /* ~"S největší pravděpodobností. Díky."~ */ GOTO 48
END

IF ~~ THEN BEGIN 14 // from: 9.6
  SAY #1188 /* ~"Věřím, že Soego je u vstupní brány v prvním patře. Pracuje tam jako stráž v hodinách mimo špičku."~ */
  IF ~~ THEN REPLY #1263 /* ~"Moc dobře. Díky."~ */ GOTO 48
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #1189 /* ~"Věřím, že Soego je u vstupní brány v prvním patře. Pracuje tam jako stráž v hodinách mimo špičku."~ */
  IF ~~ THEN REPLY #1264 /* ~"Moc dobře. Díky."~ */ GOTO 48
END

IF ~~ THEN BEGIN 16 // from: 6.3 20.3
  SAY #1190 /* ~"Kdo byl pohřben? Přece se snad tyhle služby konají v Márnici na jiném místě."~ */
  IF ~~ THEN REPLY #1265 /* ~"Ty jsi mi nerozuměl... tím omylem jsem JÁ."~ */ GOTO 8
  IF ~~ THEN REPLY #1266 /* ~"To by mohlo být. Kde se tyto obřady konají?"~ */ GOTO 17
  IF ~~ THEN REPLY #1267 /* ~"Můžeš mi ukázat cestu ven?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #1191 /* ~"Několik pohřebních komor lemuje obvod Márnice. Pak se tyto hrobky stáčejí kolem zdi v prvním a druhém patře. Znáš jméno toho zemřelého?"~ */
  IF ~~ THEN REPLY #1268 /* ~"Ne."~ */ GOTO 18
  IF ~~ THEN REPLY #1269 /* ~"Ano."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #1192 /* ~"Pak by sis měl popovídat s někým s průvodců u vstupní brány. Můžou ti pomoci."~ */
  IF ~~ THEN REPLY #1270 /* ~"Dobře. Díky."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #1193 /* ~Spalovačka čeká.~ */
  IF ~~ THEN REPLY #1271 /* ~"Pardon... spletl jsem se. Neznám jméno toho zemřelého."~ */ GOTO 20
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #1272 /* ~"Jmenuje se Deionarra."~ */ GOTO 12
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1273 /* ~Lež: "Mé jméno je... ehm, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1274 /* ~Lež: "Mé jméno je... ehm, Adahn."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1275 /* ~Nakloň se k ní, jako bys jí chtěl něco pošeptat, pak ji chyť pod krkem.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1276 /* ~Nakloň se k ní, jako bys jí chtěl něco pošeptat, pak ji chyť pod krkem.~ */ GOTO 45
  IF ~~ THEN REPLY #1277 /* ~Uteč.~ */ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.9 19.0
  SAY #1194 /* ~"Aha. Takže co tu děláš?"~ */
  IF ~~ THEN REPLY #1278 /* ~"To tě nemusí zajímat."~ */ GOTO 7
  IF ~~ THEN REPLY #1279 /* ~"Probudil jsem se na jedné z těch kamenných desek v preparační místnosti."~ */ GOTO 8
  IF ~~ THEN REPLY #1280 /* ~"Někoho tu hledám."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1281 /* ~"Byl jsem sem přivezen, ale vypadá to, že se jedná o omyl."~ */ GOTO 16
  IF ~~ THEN REPLY #1282 /* ~Uteč.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.7 9.8 19.2 19.3
  SAY #1195 /* ~"To jméno mi není povědomé. Poraď se s některým z průvodců u vstupní brány... měli by být schopni tě nasměrovat lépe než já."~ */
  IF ~~ THEN REPLY #1283 /* ~"Dobře. Udělám to. Sbohem."~ */ EXIT
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #1196 /* ~Pobledlá žena je oblečena v dlouhých tmavých šatech. Vychází z ní slabý zatuchlý zápach. V obličeji má prázdný výraz a zdá se, že je zaměstnána svými povinnostmi. ~ */
  IF ~~ THEN REPLY #1284 /* ~"Zdravím."~ */ GOTO 23
  IF ~~ THEN REPLY #1285 /* ~Nechej ji na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #1197 /* ~Pomalu se otáčí a její oči spočinuly na tvém oblečení. "Zdravím kolego."~ */
  IF ~~ THEN REPLY #1286 /* ~"Kdo jsi?"~ */ GOTO 24
  IF ~~ THEN REPLY #1287 /* ~"Co je tohle za místo?"~ */ GOTO 25
  IF ~~ THEN REPLY #1288 /* ~"Měl bych nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #1289 /* ~Nechej ji na pokoji.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1198 /* ~"Taky by mě něco zajímalo. Tebe neznám. Kdo jsi?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1290 /* ~Lež: "Mé jméno je... ehm, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1291 /* ~Lež: "Mé jméno je... ehm, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1292 /* ~"Mé jméno tě nemusí zajímat. Musím odejít. Sbohem."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1293 /* ~"Mé jméno tě nemusí zajímat. Musím odejít. Sbohem."~ */ GOTO 46
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #1199 /* ~"Tohle je Márnice..." Spalovačka se na tebe na chvíli podívá, jako by ji překvapilo, cos právě řekl. "Ještě jednou jak jsi říkal, že se jmenuješ?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1294 /* ~Lež: "Mé jméno je... ehm, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1295 /* ~Lež: "Mé jméno je... ehm, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1296 /* ~"Mé jméno tě nemusí zajímat. Musím odejít. Sbohem."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1297 /* ~"Mé jméno tě nemusí zajímat. Musím odejít. Sbohem."~ */ GOTO 46
END

IF ~~ THEN BEGIN 26 // from: 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
  SAY #1200 /* ~Spalovačka trpělivě čeká na vysvětlení.~ */
  IF ~~ THEN REPLY #1298 /* ~"Můžeš mi ukázat odtud cestu ven?"~ */ GOTO 27
  IF ~~ THEN REPLY #1299 /* ~"Znáš někoho jménem Pharod?"~ */ GOTO 28
  IF ~~ THEN REPLY #1300 /* ~"Nemůžu najít deník. Neviděl jsi ho?"~ */ GOTO 39
  IF ~~ THEN REPLY #1328 /* ~"Nevadí. Promiň, že tě obtěžuji."~ */ GOTO 48
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #1201 /* ~"Můžeš jednoduše odejít vstupní branou. Je v prvním patře."~ */
  IF ~~ THEN REPLY #1329 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #1330 /* ~"Díky. Sbohem."~ */ GOTO 48
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #1202 /* ~"To jméno..." Spalovačka se na chvíli zamlčí. "To jméno mi *zní* nějak povědomě... Myslím, že odvolali Sběrače tohoto jména. Dhall Scrivener by o něm měl vědět."~ */
  IF ~~ THEN REPLY #1331 /* ~"Sběrač?"~ */ GOTO 29
  IF ~~ THEN REPLY #1334 /* ~"Dhall?"~ */ GOTO 30
  IF ~~ THEN REPLY #1338 /* ~"Měl bych nějaké další otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #1395 /* ~"Díky za tvůj čas. Sbohem."~ */ GOTO 48
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1203 /* ~"Sběrači... sbírají mrtvé, kteří zemřeli v ulicích Sigilu a přináší je do Márnice..." Spalovačka se odmlčí, zamračí se. "Ty nejsi tady z okolí. Kdo jsi?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1396 /* ~"Jsem tu nový. Odpusť mi mou neznalost."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1397 /* ~"Já... jsem tu nový. Já... se snažím přizpůsobit."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1398 /* ~"Ano, dobře... co je to za jméno? Ať tě provází štěstí, kolego."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1399 /* ~"Jestli mi nemůžeš pomoct, pak najdu někoho jiného, kdo mi pomůže. Sbohem."~ */ GOTO 46
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #1204 /* ~"Dhall je jedním z nejváženějších členů našeho společenstva. Když tak o tom uvažuji, nikdo nepřemýšlel o přirozenosti Pravé smrti tolik, jako právě on. Má mnoho moudrosti na rozdávání. Jestliže ho neznáš, doporučuji ti, aby sis s ním při nejbližší příležitosti promluvil. Již nebude dlouho pobývat ve stínu tohoto života."~ */
  IF ~~ THEN REPLY #4280 /* ~"Už nebude dlouho ve stínu této existence?"~ */ GOTO 31
  IF ~  Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4281 /* ~"Kde najdu Dhalla?"~ */ GOTO 32
  IF ~  !Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4282 /* ~"Kde najdu Dhalla?"~ */ GOTO 33
  IF ~~ THEN REPLY #4283 /* ~"Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #33245 /* ~"Díky za informaci. Promluvím si s ním."~ */ GOTO 48
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 33.0
  SAY #1205 /* ~Spalovačka přikyvuje. "Dhall je nemocný. Je starý, dokonce i na githzeraiské poměry. Po těžké nemoci, kterou má, bude bezpochyby následovat smrt. Je opravdu šťastný."~ */
  IF ~~ THEN REPLY #4284 /* ~"Githzeraiské standarty?"~ */ GOTO 34
  IF ~~ THEN REPLY #4285 /* ~"Co je to *githzerai?*"~ */ GOTO 35
  IF ~~ THEN REPLY #4286 /* ~"Šťastný?"~ */ GOTO 36
  IF ~~ THEN REPLY #4287 /* ~"Aha. Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #4337 /* ~"Díky za tvůj čas. Musím jít."~ */ GOTO 48
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #1206 /* ~"Dhall je v přijímací místnosti v severozápadní části tohoto patra. Musím tě varovat... Dhall je hodně zaneprázdněný... hodně času, který nespolykají jeho povinnosti velkou měrou spotřebuje jeho těžká nemoc."~ */
  IF ~~ THEN REPLY #4288 /* ~"Je Dhall nemocný?"~ */ GOTO 31
  IF ~~ THEN REPLY #4289 /* ~"Díky za tvůj čas. Musím jít. Sbohem."~ */ GOTO 48
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #1207 /* ~"Dhall je s největší pravděpodobností v přijímací místnosti v druhém patře. Nezdržoval bych ho, protože je hodně zaneprázdněn... hodně času, který nespolykají jeho povinnosti velkou měrou spotřebuje jeho těžká nemoc."~ */
  IF ~~ THEN REPLY #4290 /* ~"Je Dhall nemocný?"~ */ GOTO 31
  IF ~~ THEN REPLY #4291 /* ~"Díky za tvůj čas. Musím jít. Sbohem."~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 31.0
  SAY #1208 /* ~"Ano, githzeraiové žijí mnohem déle než lidé."~ */
  IF ~~ THEN REPLY #4292 /* ~"Co je to *githzerai?*"~ */ GOTO 35
  IF ~~ THEN REPLY #4293 /* ~"Co to znamená?"~ */ GOTO 36
  IF ~~ THEN REPLY #4294 /* ~"Oh. Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #4295 /* ~"Díky za tvůj čas. Sbohem."~ */ GOTO 48
END

IF ~~ THEN BEGIN 35 // from: 31.1 34.0
  SAY #1209 /* ~"Githzeraiové jsou..." Spalovačka se odmlčí, pozorně si tě prohlíží. "Ty nejsi tady z okolí. Kdo jsi?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4296 /* ~"Jsem nový zasvěcený. Odpusť mi mou ignoranci."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4297 /* ~"Jsem... tady nový. Snažím se... zvyknout si."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4298 /* ~"No, ech... na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4300 /* ~"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 31.2 34.1
  SAY #1210 /* ~"Je šťastný proto, že konečně docílí Pravé smrti. Už nemusí pobývat ve stínu tohoto života."~ */
  IF ~~ THEN REPLY #4299 /* ~"A... to je dobrá věc?"~ */ GOTO 37
  IF ~~ THEN REPLY #4301 /* ~"Aha. Velmi vhodné. Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #4302 /* ~"Aha. No, já budu muset jít. Sbohem."~ */ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #1211 /* ~Spalovačka přikyvuje. "Ano." Zamračí se, pozorně si tě prohlíží. "Ty nejsi tady z okolí. Kdo jsi?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4303 /* ~"Jsem nový zasvěcený. Odpusť mi mou ignoranci."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4304 /* ~"Jsem... tady nový. Snažím se... zvyknout si."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4305 /* ~"No, ech... na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4306 /* ~"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from:
  SAY #1212 /* ~"Ty nejsi jeden z nás, že ne? Co tu děláš? Jsi členem Anarchistů? Nebo jsi špeh z jiného společenství?" Spalovačka udělala krok zpět. "Stráže! Stráže!"~ */
  IF ~~ THEN REPLY #4307 /* ~"Sakra!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #4308 /* ~"Ššššš! Nemůžu ti odpovědět, když tak řveš!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #4309 /* ~"Ššššš! Nemůžu ti odpovědět, když tak řveš!"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 26.2
  SAY #1213 /* ~"Deník? Žádnej sem neviděla."~ */
  IF ~~ THEN REPLY #4310 /* ~"Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #4311 /* ~"Musím jít. Sbohem."~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1214 /* ~Pobledlá žena je oblečena v dlouhých tmavých šatech. Vychází z ní slabý zatuchlý zápach. V obličeji má prázdný výraz a zdá se, že je zaměstnána svými povinnostmi~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #4312 /* ~"Zdravím."~ */ EXTERN ~DMORTE~ 81
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #4313 /* ~"Zdravím."~ */ EXTERN ~DMORTE~ 83
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #4314 /* ~"Zdravím."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4315 /* ~"Zdravím."~ */ GOTO 4
  IF ~~ THEN REPLY #4316 /* ~Nechej ji být.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.0 5.1 7.1 8.1 47.1
  SAY #1215 /* ~Předtím než Spalovačka stačí vydat ze sebe nějaké slovo, sevřeš rukama rychle její spánky a trhneš jí hlavou ostře doleva. ~ */
  IF ~~ THEN REPLY #4317 /* ~"Nemůžu ti dovolit spustit poplach..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 45.0
  SAY #1216 /* ~Ozve se *křupnutí,* a Spalovačka spadne bezvládně do tvých rukou. ~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4318 /* ~"Radši ty, než já, Spalovači."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
AddexperienceParty(15)
~ GOTO 43
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4319 /* ~"Radši ty, než já, Spalovači."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #1217 /* ~K svému překvapení zjišťuješ, žes jednal naprosto instinktivně, jako bys to už dělal mnohokrát předtím... spolu s touto myšlenkou se ti vrací útržky paměti, ale nejsou dost silné na to, aby se úplně vynořily na povrch. ~ */
  IF ~~ THEN REPLY #4320 /* ~Nechej tělo být, jdi dál.~ */ DO ~Kill(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0 7.0 8.0 19.4 47.0
  SAY #1218 /* ~Nejsi dostatečně rychlý. Spalovačka se ti vysmekla, když ses ji pokusil překvapit. Udělala krok zpět, třikrát za sebou krátce tleskla. Krátce nato se v Márnici rozezněl velký železný zvon. ~ */
  IF ~~ THEN REPLY #4321 /* ~"Dobrá tedy..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.5
  SAY #1219 /* ~Když se k ní nakláníš, abys jí něco 'pošeptal', Spalovačka se k tobě taky nakloní. Když už je na dosah, sevřeš rukama rychle její spánky a trhneš jí hlavou ostře doleva. ~ */
  IF ~~ THEN REPLY #4322 /* ~"Nemůžu ti dovolit spustit poplach..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 24.3 25.3 29.3 35.3 37.3 49.3 50.1
  SAY #1220 /* ~Spalovačka vypadá podezíravě. Zdá se, jako by chtěla něco říci, ale pak potřese hlavou a vrátí se ke svým povinnostem. ~ */
  IF ~~ THEN REPLY #4323 /* ~Odejdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
  SAY #1221 /* ~Spalovačka tě opatrně studuje. "Ty nejsi jeden z nás. Co tu děláš? Jsi členem Anarchistů? Nebo jsi špeh z jiného společenství? Vypadá to, že tenhle oříšek necháme pro naše stráže..."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4324 /* ~Zlom jí krk, než stačí zařvat.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4325 /* ~Zlom jí krk, než stačí zařvat.~ */ GOTO 41
  IF ~~ THEN REPLY #4326 /* ~Odejdi. Rychle.~ */ GOTO 2
  IF ~~ THEN REPLY #4327 /* ~"Ne, ne... tak ne... Já, ech, já nejsem špión... hele, probudil jsem se na jednom z těch kamenů tady a..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 48 // from: 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
  SAY #1222 /* ~Spalovačka kývne a pak se vrátí ke svým povinnostem.~ */
  IF ~~ THEN REPLY #4328 /* ~Odejdi pryč.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0 24.1 25.0 25.1
  SAY #1223 /* ~Spalovačka se mračí. "To jméno je mi neznámé."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4329 /* ~"Jsem nový zasvěcený. Odpusť mi mou ignoranci."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4331 /* ~"Jsem... tady nový. Snažím se... naučit rutinu...~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4332 /* ~"No, ech... na co jméno? Ať je tvá víra pevná, uh, příteli zasvěcenče."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4333 /* ~"Pokud mi nemůžeš pomoct, budu si muset najít někoho schopnějšího. Sbohem."~ */ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 29.0 35.0 37.0 49.0
  SAY #1224 /* ~Spalovačka se stále mračí, ale lehce kývne. "Dobře. Jak ti můžu být nápomocná, kolego?"~ */
  IF ~~ THEN REPLY #4334 /* ~"Mám nějaké otázky..."~ */ GOTO 26
  IF ~~ THEN REPLY #4335 /* ~"Dneska nic. Sbohem."~ */ GOTO 46
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #66683 /* ~Spalovač tě sleduje s kamenným výrazem na tváři. "Ztratil ses?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66684 /* ~"Ne, jsem členem společenstva, jenom si prohlížím Márnici."~ */ GOTO 52
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66685 /* ~"Ano."~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66686 /* ~"Ne."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66687 /* ~"Ne, neztratil jsem se. Mám pár otázek..."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66688 /* ~"Sbohem."~ */ GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #66689 /* ~Spalovač tě chvíli sleduje, a nakonec přikývne. "Dobrá tedy. Pokud budeš s něčím potřebovat pomoct, dej mi vědět."~ */
  IF ~~ THEN REPLY #66690 /* ~"Udělám to tak. Sbohem."~ */ EXIT
END
