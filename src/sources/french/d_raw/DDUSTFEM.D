// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFEM~

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #298 /* ~La femme Homme-Poussière ne semble pas te voir. Elle doit te confondre avec l'un des ouvriers cadavériques.~ */
  IF ~~ THEN REPLY #299 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #318 /* ~"Qui es-tu ?"~ */ GOTO 1
  IF ~~ THEN REPLY #1168 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 1
  IF ~~ THEN REPLY #1169 /* ~"J'ai quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #1170 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #1171 /* ~La femme Homme-Poussière sursaute, puis tourne la tête d'un coup sec pour te regarder. Elle a l'air choqué. ~ */
  IF ~~ THEN REPLY #1172 /* ~Brise-lui la nuque avant qu'elle ne se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #1174 /* ~"J'ai quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #1175 /* ~Va-t'en. Vite.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 4.3 5.2 5.3 6.4 19.6 20.4 47.2 47.3 51.4
  SAY #1176 /* ~La femme Homme-Poussière recule d'un pas, puis elle frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.~ */
  IF ~~ THEN REPLY #1225 /* ~"Alors très bien…"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1177 /* ~Cette femme au visage pâle est vêtue d'un habit long et sombre. Une légère odeur de moisi l'enveloppe. Son expression est sans vie. Elle semble absorbée par sa tâche.~ */
  IF ~~ THEN REPLY #1226 /* ~"Bonjour."~ */ GOTO 4
  IF ~~ THEN REPLY #1227 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #1228 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #1229 /* ~"J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #1230 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 3.3 40.2 40.3
  SAY #1178 /* ~La femme Homme-Poussière relève lentement la tête et se tourne vers toi. "Es-tu perdu ?"~ */
  IF ~~ THEN REPLY #1231 /* ~"Oui."~ */ GOTO 5
  IF ~~ THEN REPLY #1232 /* ~"Non."~ */ GOTO 6
  IF ~~ THEN REPLY #1233 /* ~"Non, je ne suis pas perdu. J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #1234 /* ~"Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.2 51.1
  SAY #1179 /* ~"J'appelle un garde pour te guider vers la sortie. Attends."~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1235 /* ~Brise-lui la nuque avant qu'elle ne se mette à crier.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1236 /* ~Brise-lui la nuque avant qu'elle ne se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #1237 /* ~Va-t'en. Vite.~ */ GOTO 2
  IF ~~ THEN REPLY #1238 /* ~Attends.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 51.2 51.3
  SAY #1180 /* ~"Si tu n'es pas perdu, que fais-tu ici ?"~ */
  IF ~~ THEN REPLY #1239 /* ~"Ça ne te regarde pas."~ */ GOTO 7
  IF ~~ THEN REPLY #1240 /* ~"Je me suis réveillé sur une dalle de ta salle de préparation."~ */ GOTO 8
  IF ~~ THEN REPLY #1241 /* ~"Je suis là pour voir quelqu'un."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1242 /* ~"J'étais là pour un enterrement, mais je crois qu'il y a eu erreur."~ */ GOTO 16
  IF ~~ THEN REPLY #1243 /* ~Va-t'en. Vite.~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0 20.0
  SAY #1181 /* ~"Si, ça me regarde. Les gardes réussiront peut-être à te délier la langue." La femme Homme-Poussière recule d'un pas ; elle semble prête à appeler les gardes.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1244 /* ~Brise-lui la nuque avant qu'elle ne se mette à crier.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1245 /* ~Brise-lui la nuque avant qu'elle ne se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #1246 /* ~"Alors, fais-les venir. Je voudrais les rencontrer."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.0 20.1
  SAY #1182 /* ~"Tu plaisantes ? Tu désires peut-être en faire profiter les gardes." La femme Homme-Poussière recule d'un pas ; elle semble prête à appeler les gardes.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1247 /* ~Brise-lui la nuque avant qu'elle ne se mette à crier.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1248 /* ~Brise-lui la nuque avant qu'elle ne se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #1249 /* ~"Alors, fais-les venir. Je voudrais les rencontrer."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 20.2
  SAY #1183 /* ~"À qui viens-tu rendre visite ?"~ */
  IF ~~ THEN REPLY #1251 /* ~"Ça ne te regarde pas."~ */ GOTO 7
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1253 /* ~"Je suis venu voir Dhall."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Global("Current_Area","GLOBAL",202)
~ THEN REPLY #1255 /* ~"Je suis là pour voir Dhall."~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #1258 /* ~"Je suis là pour voir Deionarra."~ */ GOTO 13
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #4336 /* ~"Je suis là pour voir Deionarra."~ */ GOTO 12
  IF ~  GlobalGT("Soego","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33224 /* ~"Je suis là pour voir Soego."~ */ GOTO 15
  IF ~  GlobalGT("Soego","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33226 /* ~"Je suis là pour voir Soego."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedTo(1)
~ THEN REPLY #33227 /* ~Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedToGT(1)
~ THEN REPLY #33229 /* ~Mensonge : "Euh… Adahn. Il travaille toujours ici ou… ?"~ */ GOTO 21
  IF ~~ THEN REPLY #33231 /* ~"Euh, personne. Ce n'était pas ce que je voulais dire."~ */ GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #1184 /* ~"Dhall est dans la salle de réception à cet étage. Je dois te prévenir… Dhall est très occupé et il ne se porte pas bien. Si tes affaires ne sont pas urgentes, je te suggère de ne pas le déranger."~ */
  IF ~~ THEN REPLY #1259 /* ~"Très bien. Merci du renseignement."~ */ GOTO 48
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #1185 /* ~"Dhall doit être dans la salle de réception au premier étage. Il est très occupé et ne se porte pas très bien. Si tes affaires ne sont pas urgentes, je te suggère de ne pas le déranger."~ */
  IF ~~ THEN REPLY #1260 /* ~"Très bien. Merci du renseignement."~ */ GOTO 48
END

IF ~~ THEN BEGIN 12 // from: 9.4 19.1
  SAY #1186 /* ~"Deionarra ? Je sais qu'une femme est enterrée dans la Salle de Commémoration au rez-de-chaussée. C'est peut-être elle."~ */
  IF ~~ THEN REPLY #1261 /* ~"Très probablement. Merci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #1187 /* ~"Deionarra ? Je sais qu'une femme est enterrée dans la Salle de Commémoration du nord-ouest. C'est peut-être elle."~ */
  IF ~~ THEN REPLY #1262 /* ~"Très probablement. Merci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 14 // from: 9.6
  SAY #1188 /* ~"Je crois que Soego est près de la porte d'entrée au rez-de-chaussée. Il sert de guide pendant les heures d'anti-pic."~ */
  IF ~~ THEN REPLY #1263 /* ~"Très bien. Merci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #1189 /* ~"Je crois que Soego est près de la porte d'entrée. Il sert de guide pendant les heures d'anti-pic."~ */
  IF ~~ THEN REPLY #1264 /* ~"Très bien. Merci."~ */ GOTO 48
END

IF ~~ THEN BEGIN 16 // from: 6.3 20.3
  SAY #1190 /* ~"Qui enterre-t-on ? Le service funèbre doit avoir lieu ailleurs dans la Morgue."~ */
  IF ~~ THEN REPLY #1265 /* ~"Tu ne comprends pas… L'erreur d'enterrement, c'était MOI."~ */ GOTO 8
  IF ~~ THEN REPLY #1266 /* ~"Ça se pourrait. Où ont lieu ces autres services ?"~ */ GOTO 17
  IF ~~ THEN REPLY #1267 /* ~"Tu peux m'indiquer la sortie ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #1191 /* ~"Plusieurs chambres funéraires bordent le périmètre de la Morgue. Elles suivent la courbe du mur au rez-de-chaussée et au premier étage. Connais-tu l'identité du mort ?"~ */
  IF ~~ THEN REPLY #1268 /* ~"Non."~ */ GOTO 18
  IF ~~ THEN REPLY #1269 /* ~"Oui."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #1192 /* ~"Alors vérifie auprès de l'un des guides à la porte d'entrée. Il sera en mesure de t'aider."~ */
  IF ~~ THEN REPLY #1270 /* ~"Très bien. Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #1193 /* ~L'Homme-Poussière attend.~ */
  IF ~~ THEN REPLY #1271 /* ~"Pardon… Ce n'est pas ce que je voulais dire. Je ne connais pas le nom du défunt."~ */ GOTO 20
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #1272 /* ~"Elle s'appelle Deionarra."~ */ GOTO 12
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1273 /* ~Mensonge : "Il s'appelle… euh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1274 /* ~Mensonge : "Il s'appelle… euh, Adahn."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1275 /* ~Penche-toi comme pour lui murmurer quelque chose à l'oreille, puis brise-lui la nuque.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1276 /* ~Penche-toi comme pour lui murmurer quelque chose à l'oreille, puis brise-lui la nuque.~ */ GOTO 45
  IF ~~ THEN REPLY #1277 /* ~Enfuis-toi.~ */ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.9 19.0
  SAY #1194 /* ~"Je vois. Mais que veux-tu ?"~ */
  IF ~~ THEN REPLY #1278 /* ~"Ça ne te regarde pas."~ */ GOTO 7
  IF ~~ THEN REPLY #1279 /* ~"Je me suis réveillé sur une dalle de ta salle de préparation."~ */ GOTO 8
  IF ~~ THEN REPLY #1280 /* ~"Je suis là pour voir quelqu'un."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1281 /* ~"J'étais là pour un enterrement, mais je crois qu'il y a eu erreur."~ */ GOTO 16
  IF ~~ THEN REPLY #1282 /* ~Enfuis-toi.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.7 9.8 19.2 19.3
  SAY #1195 /* ~"Ce nom ne m'est pas familier. Vérifie auprès de l'un des guides, à la porte d'entrée… Il saura mieux te renseigner que moi."~ */
  IF ~~ THEN REPLY #1283 /* ~"Très bien. C'est ce que je vais faire. Au revoir."~ */ EXIT
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #1196 /* ~Cette femme au visage pâle est vêtue d'un habit long et sombre. Une légère odeur de moisi l'enveloppe. Son expression est sans vie. Elle semble absorbée par sa tâche.~ */
  IF ~~ THEN REPLY #1284 /* ~"Bonjour."~ */ GOTO 23
  IF ~~ THEN REPLY #1285 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #1197 /* ~Elle se retourne lentement ; ses yeux cillent sur ton habit. "Bonjour, initié."~ */
  IF ~~ THEN REPLY #1286 /* ~"Qui es-tu ?"~ */ GOTO 24
  IF ~~ THEN REPLY #1287 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 25
  IF ~~ THEN REPLY #1288 /* ~"J'ai des questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #1289 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1198 /* ~"Je pourrais te retourner la question. Ton visage m'est inconnu. Qui es-tu ?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1290 /* ~Mensonge : "Le nom est… euh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1291 /* ~Mensonge : "Le nom est… euh, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1292 /* ~"Qu'importe mon nom. Je dois partir. Au revoir."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1293 /* ~"Qu'importe mon nom. Je dois partir. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #1199 /* ~"Voici la Morgue…" L'Homme-Poussière t'observe un instant ; comme s'il digérait tes paroles. "C'est quoi déjà, ton nom… ?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #1294 /* ~Mensonge : "Le nom est… euh, Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1295 /* ~Mensonge : "Le nom est… euh, Adahn."~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1296 /* ~"Qu'importe mon nom. Je dois partir. Au revoir."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1297 /* ~"Qu'importe mon nom. Je dois partir. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 26 // from: 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
  SAY #1200 /* ~L'Homme-Poussière attend patiemment que tu continues.~ */
  IF ~~ THEN REPLY #1298 /* ~"Peux-tu me dire comment sortir d'ici ?"~ */ GOTO 27
  IF ~~ THEN REPLY #1299 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 28
  IF ~~ THEN REPLY #1300 /* ~"J'ai perdu un journal. Tu ne l'aurais pas vu ?"~ */ GOTO 39
  IF ~~ THEN REPLY #1328 /* ~"Tant pis. Excuse-moi de t'avoir dérangé."~ */ GOTO 48
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #1201 /* ~"Tu peux sortir tout simplement par la porte d'entrée, au rez-de-chaussée."~ */
  IF ~~ THEN REPLY #1329 /* ~"J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #1330 /* ~"Merci. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #1202 /* ~"Ce nom…" L'Homme-Poussière hésite un instant. "Ce nom me *dit* quelque chose… Un Récupérateur portait le même. Dhall le Scribe le connaît peut-être."~ */
  IF ~~ THEN REPLY #1331 /* ~"Un Récupérateur ?"~ */ GOTO 29
  IF ~~ THEN REPLY #1334 /* ~"Dhall ?"~ */ GOTO 30
  IF ~~ THEN REPLY #1338 /* ~"J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #1395 /* ~"Merci de m'avoir accordé un peu de temps. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1203 /* ~"Les Récupérateurs sont ceux qui ramassent les cadavres dans les rues de Sigil et qui les portent à la Morgue…" L'Homme-Poussière fait une pause, puis fronce les sourcils. "Tu n'es pas du coin. Qui es-tu ?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1396 /* ~"Mon initiation est récente. Pardonne mon ignorance."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1397 /* ~"Ça ne fait pas longtemps que je suis ici. J'essaie… de prendre mes repères."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #1398 /* ~"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #1399 /* ~"Si tu ne peux pas m'aider, je trouverai quelqu'un d'autre. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #1204 /* ~"Dhall est hautement respecté dans notre faction. Personne n'a médité autant que lui sur la nature de la Vraie Mort. Personne n'est plus digne que lui. Il a tant de sagesse à donner. Si tu ne le connais pas encore, tu devrais saisir une occasion de lui parler. Il ne séjournera plus longtemps dans l'ombre de cette existence."~ */
  IF ~~ THEN REPLY #4280 /* ~"Il ne traînera pas longtemps dans l'ombre de cette existence ?"~ */ GOTO 31
  IF ~  Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4281 /* ~"Où est-ce que je peux trouver Dhall ?"~ */ GOTO 32
  IF ~  !Global("Current_Area","GLOBAL",202)
~ THEN REPLY #4282 /* ~"Où est-ce que je peux trouver Dhall ?"~ */ GOTO 33
  IF ~~ THEN REPLY #4283 /* ~"J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #33245 /* ~"Merci du renseignement. J'irai lui parler."~ */ GOTO 48
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 33.0
  SAY #1205 /* ~L'Homme-Poussière acquiesce. "Dhall est malade. Il est âgé, même selon les standards githzeraï. La mort succédera sans nul doute à la maladie dévastatrice qu'il a contracté. Il est chanceux."~ */
  IF ~~ THEN REPLY #4284 /* ~"Les standards githzeraïs ?"~ */ GOTO 34
  IF ~~ THEN REPLY #4285 /* ~"C'est quoi un *githzeraï* ?"~ */ GOTO 35
  IF ~~ THEN REPLY #4286 /* ~"Il est chanceux ?"~ */ GOTO 36
  IF ~~ THEN REPLY #4287 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #4337 /* ~"Merci de m'avoir accordé un peu de temps. Je dois m'en aller."~ */ GOTO 48
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #1206 /* ~"Dhall est dans la salle de réception, dans l'aile nord-ouest, à cet étage. Je dois te prévenir… Dhall est absorbé par ses affaires et la maladie qui le ronge occupe le reste de son temps."~ */
  IF ~~ THEN REPLY #4288 /* ~"Dhall est malade ?"~ */ GOTO 31
  IF ~~ THEN REPLY #4289 /* ~"Merci de m'avoir accordé un peu de temps. Je dois partir. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #1207 /* ~"Dhall est très probablement dans la salle de réception au premier étage. Ne lui prends pas trop de son temps. Il est très pris par ses affaires et la maladie qui le ronge occupe le reste de son temps."~ */
  IF ~~ THEN REPLY #4290 /* ~"Dhall est malade ?"~ */ GOTO 31
  IF ~~ THEN REPLY #4291 /* ~"Merci de m'avoir accordé un peu de temps. Je dois partir. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 31.0
  SAY #1208 /* ~"Oui, les githzeraïs ont une durée de vie plus longue que les humains."~ */
  IF ~~ THEN REPLY #4292 /* ~"C'est quoi un *githzeraï* ?"~ */ GOTO 35
  IF ~~ THEN REPLY #4293 /* ~"En quoi est-ce que Dhall a de la chance de mourir ? Il n'est pas apprécié ?"~ */ GOTO 36
  IF ~~ THEN REPLY #4294 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #4295 /* ~"Merci de m'avoir accordé un peu de temps. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 35 // from: 31.1 34.0
  SAY #1209 /* ~"Les githzeraï sont…" L'Homme-Poussière fait une pause, puis t'observe attentivement. "Tu n'es pas d'ici. Qui es-tu ?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4296 /* ~"Mon initiation est récente. Pardonne mon ignorance."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4297 /* ~"Ça ne fait pas longtemps que je suis ici. J'essaie… de prendre mes repères."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4298 /* ~"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4300 /* ~"Si tu ne peux pas m'aider, je trouverai quelqu'un d'autre. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 31.2 34.1
  SAY #1210 /* ~"Il est chanceux car il atteindra la Vraie Mort. Il n'aura plus à vivre dans l'ombre de cette existence."~ */
  IF ~~ THEN REPLY #4299 /* ~"Et… c'est une bonne chose ?"~ */ GOTO 37
  IF ~~ THEN REPLY #4301 /* ~"Je vois. Il a beaucoup de chance, en effet. J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #4302 /* ~"Je vois. Bon, je dois m'en aller. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #1211 /* ~La femme Homme-Poussière acquiesce. "Oui". Elle fronce les sourcils, puis t'observe attentivement. "Tu n'es pas d'ici. Qui es-tu ?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4303 /* ~"Mon initiation est récente. Pardonne mon ignorance."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4304 /* ~"Ça ne fait pas longtemps que je suis ici. J'essaie… de prendre mes repères."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4305 /* ~"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4306 /* ~"Si tu ne peux pas m'aider, je trouverai quelqu'un d'autre. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from:
  SAY #1212 /* ~"Tu n'es pas l'un des nôtres. Que fais-tu ici ? Es-tu un membre des Anarchistes ? Un espion d'une autre faction ?" La femme Homme-Poussière recule d'un pas. "Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #4307 /* ~"Bon sang !"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #4308 /* ~"Chhhh ! Je ne peux pas te répondre avec tous ces cris !"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #4309 /* ~"Chhhh ! Je ne peux pas te répondre avec tous ces cris !"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 26.2
  SAY #1213 /* ~"Un journal ? Je n'en ai vu aucun."~ */
  IF ~~ THEN REPLY #4310 /* ~"J'ai d'autres questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #4311 /* ~"Je dois m'en aller. Au revoir."~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1214 /* ~Cette femme au visage pâle est vêtue d'un habit long et sombre. Une légère odeur de moisi l'enveloppe. Son expression est sans vie. Elle semble absorbée par sa tâche.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #4312 /* ~"Bonjour."~ */ EXTERN ~DMORTE~ 81
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #4313 /* ~"Bonjour."~ */ EXTERN ~DMORTE~ 83
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #4314 /* ~"Bonjour."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4315 /* ~"Bonjour."~ */ GOTO 4
  IF ~~ THEN REPLY #4316 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.0 5.1 7.1 8.1 47.1
  SAY #1215 /* ~Avant que la femme Homme-Poussière ait eu le temps de dire un mot, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d'un coup sec.~ */
  IF ~~ THEN REPLY #4317 /* ~"Je ne peux pas te laisser prévenir tes amis…"~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 45.0
  SAY #1216 /* ~Un *craquement* retentit ; le corps inerte de l'Homme-Poussière tombe dans tes bras.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4318 /* ~"Je préfère que ce soit toi que moi, Homme-Poussière."~ */ DO ~IncrementGlobal("Choke","GLOBAL",1)
SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
AddexperienceParty(15)
~ GOTO 43
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4319 /* ~"Je préfère que ce soit toi que moi, Homme-Poussière."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #1217 /* ~À ta grande surprise, cette action t'a paru instinctive, comme si tu l'avais déjà réalisée plusieurs fois… cela te rappelle vaguement quelque chose, mais le souvenir n'est pas assez fort pour refaire surface.~ */
  IF ~~ THEN REPLY #4320 /* ~Laisse le corps, continue.~ */ DO ~Kill(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0 7.0 8.0 19.4 47.0
  SAY #1218 /* ~Tu n'es pas assez rapide, et la femme Homme-Poussière évite ton mouvement. Elle recule d'un pas, frappe trois fois dans ses mains. Une grande cloche en fer lui répond en sonnant dans la Morgue.~ */
  IF ~~ THEN REPLY #4321 /* ~"Alors très bien…"~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.5
  SAY #1219 /* ~Tu te penches vers elle pour lui 'murmurer' quelque chose ; elle se penche aussi. Quand elle arrive à portée de mains, tu lui bloques les tempes entre tes mains, et tu lui retournes la tête vers la gauche d'un coup sec.~ */
  IF ~~ THEN REPLY #4322 /* ~"Je ne peux pas te laisser prévenir tes amis…"~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 24.3 25.3 29.3 35.3 37.3 49.3 50.1
  SAY #1220 /* ~La femme Homme-Poussière a l'air méfiante. Elle s'apprête à dire quelque chose, puis secoue légèrement la tête et retourne à sa tâche.~ */
  IF ~~ THEN REPLY #4323 /* ~Éloigne-toi.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
  SAY #1221 /* ~L'Homme-Poussière t'observe avec attention. "Tu n'es pas l'un des nôtres. Que fais-tu ici ? Es-tu membre des Anarchistes ? Ou un espion d'une autre faction ? Cela me semble être du ressort des gardes…"~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4324 /* ~Brise-lui la nuque avant qu'elle ne se mette à crier.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4325 /* ~Brise-lui la nuque avant qu'elle ne se mette à crier.~ */ GOTO 41
  IF ~~ THEN REPLY #4326 /* ~Va-t'en. Vite.~ */ GOTO 2
  IF ~~ THEN REPLY #4327 /* ~"Non, non… Ce n'est pas, euh… Je veux dire, je n'espionne personne… En fait, je me suis réveillé sur l'une des dalles… et…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 48 // from: 10.0 11.0 12.0 13.0 14.0 15.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
  SAY #1222 /* ~La femme Homme-Poussière hoche la tête, puis retourne à sa tâche.~ */
  IF ~~ THEN REPLY #4328 /* ~Éloigne-toi.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0 24.1 25.0 25.1
  SAY #1223 /* ~L'Homme-Poussière fronce les sourcils. "Ce nom ne me dit rien."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4329 /* ~"Mon initiation est récente. Pardonne mon ignorance."~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4331 /* ~"Je suis… nouveau ici. Je… J'essaie d'apprendre la routine."~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4332 /* ~"Ouais, très bien… Comment… ? Garde la foi, euh, camarade initié."~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4333 /* ~"Si tu ne peux pas m'aider, je trouverai quelqu'un d'autre. Au revoir."~ */ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 29.0 35.0 37.0 49.0
  SAY #1224 /* ~La femme Homme-Poussière fronce toujours les sourcils, mais elle hoche légèrement la tête. "Très bien. Comment puis-je t'aider, initié ?"~ */
  IF ~~ THEN REPLY #4334 /* ~"J'ai des questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #4335 /* ~"Rien aujourd'hui. Au revoir."~ */ GOTO 46
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #66683 /* ~L'Homme-Poussière te dédie un regard dénué d'expression. "Tu es perdu ?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66684 /* ~"Non, je suis membre de la faction. Je fais juste le tour de la Morgue."~ */ GOTO 52
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66685 /* ~"Oui."~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66686 /* ~"Non."~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66687 /* ~"Je ne suis pas perdu, non. Par contre, j'aurais quelques questions à te poser…"~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66688 /* ~"Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #66689 /* ~L'Homme-Poussière te regarde fixement puis hoche la tête. "Très bien. Si tu a besoin d'aide, fais-le moi savoir."~ */
  IF ~~ THEN REPLY #66690 /* ~"Je n'y manquerai pas. Au revoir."~ */ EXIT
END
