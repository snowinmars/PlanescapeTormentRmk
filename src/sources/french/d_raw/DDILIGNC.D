// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIGNC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIGNC~

IF ~  Global("Diligence","GLOBAL",0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~Cette femme âgée, à l'aspect sévère, marche d'un pas décidé. Lorsqu'elle t'aperçoit, elle t'examine, les lèvres serrées dans une moue de désapprobation.~ */
  IF ~~ THEN REPLY #29200 /* ~"Bonjour…"~ */ DO ~SetGlobal("Diligence","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #29201 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29167 /* ~La femme acquiesce sèchement, sur un ton glacé : "Oui ? Qu'est-ce qu'il y a ? Surveille ton langage car je m'appelle Diligence, Quatrième Magistrat du Quartier."~ */
  IF ~~ THEN REPLY #29202 /* ~"Tu es *qui* ?"~ */ GOTO 14
  IF ~~ THEN REPLY #29203 /* ~"J'ai des questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #29204 /* ~"Quelque chose vous dérange dans mon aspect ?"~ */ GOTO 2
  IF ~~ THEN REPLY #29205 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 14.1
  SAY #29168 /* ~"Je pense bien ! Si le Règlement sur l'habillement était voté, les gens de ton espèce ne seraient pas autorisés à traîner de cette façon, à demi-nus et aussi sales…"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29206 /* ~"Je suis très propre, pardon, mais… sans vouloir te manquer de respect… certaines cultures pourraient trouver *tes* vêtements inconvenants."~ */ GOTO 3
  IF ~~ THEN REPLY #29207 /* ~"Tu as vite fait de juger quelqu'un sur son apparence, pas vrai ?"~ */ GOTO 9
  IF ~~ THEN REPLY #29208 /* ~"Ce look fait fureur à la Ruche, tu sais. Tu devrais peut-être l'essayer, ça pourrait t'aller."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #29209 /* ~"Je vois. J'ai des questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #29210 /* ~"Hum. Je m'en vais, maintenant. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 13.0
  SAY #29169 /* ~Elle t'examine avec scepticisme, puis acquiesce. "Tu n'as pas complètement tort… Mais, tu ne peux pas nier que ton aspect est plutôt rude."~ */
  IF ~~ THEN REPLY #29211 /* ~"Mon apparence est directement liée à mon environnement, madame, et à une vie difficile. Je n'en suis pas responsable."~ */ GOTO 4
  IF ~~ THEN REPLY #29212 /* ~"C'est vrai. En tout cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #29170 /* ~"Oh, mais tu devrais ! C'est trop facile de blâmer sa vie et son environnement pour toutes ses faiblesses ! Je vois à tes façons que tu es un homme bien éduqué, pourtant tu sembles privilégier le vagabondage et une violence absurde. Pourquoi ne pas t'installer à Sigil, devenir un citoyen responsable plutôt que quelque nomade aux mains ensanglantées errant dans ses rues ?"~ */
  IF ~~ THEN REPLY #29213 /* ~"Ce n'est pas par choix, je peux te l'assurer."~ */ GOTO 5
  IF ~~ THEN REPLY #29214 /* ~"J'y réfléchirai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.0 25.0
  SAY #29171 /* ~"Oh ? Et comment ?" Sa froideur se transforme en curiosité.~ */
  IF ~~ THEN REPLY #29215 /* ~"C'est difficile à expliquer…"~ */ GOTO 6
  IF ~~ THEN REPLY #29216 /* ~Raconte ton histoire… ou ce que tu en sais.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29217 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29172 /* ~"Mais je te demande de le faire."~ */
  IF ~~ THEN REPLY #29218 /* ~Raconte ton histoire… ou ce que tu en sais.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29219 /* ~"Non, c'est une affaire personnelle. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #29173 /* ~Tu finis de lui raconter ton histoire.

Diligence a l'air choquée. "Ça… c'est un sacré conte que tu viens de me raconter."~ */
  IF ~~ THEN REPLY #29220 /* ~"Si ce n'était qu'un conte, madame. Mais c'est ma vie et mes cicatrices en témoignent - comme tu l'as remarqué la première fois qu'on s'est rencontrés."~ */ DO ~SetGlobal("Diligence","GLOBAL",3)
~ GOTO 8
  IF ~~ THEN REPLY #29221 /* ~"N'est-ce pas ? Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29174 /* ~"Oui, oui… c'est vrai." Elle esquisse un petit sourire… tu commençais à te demander si elle en était capable. "Je te souhaite bonne chance pour l'avenir. Puisses-tu te retrouver toi-même."~ */
  IF ~~ THEN REPLY #29222 /* ~"Merci. J'ai quelques questions…"~ */ GOTO 26
  IF ~~ THEN REPLY #29223 /* ~"Merci. Au revoir, Dame Diligence."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 13.1
  SAY #29175 /* ~"Tu vas me dire que tu *n'es pas* un vagabond, que tu ne traînes pas dans la cité en questionnant tous ceux que tu croises et en t'engageant dans plus d'un combat à mort avec ceux que tu croises ?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29224 /* ~"Tout ça mis à part, madame, je suis très propre… sans vouloir te manquer de respect… certaines cultures pourraient trouver *tes* vêtement inconvenants."~ */ GOTO 3
  IF ~~ THEN REPLY #29225 /* ~"Euh… eh bien…"~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #29226 /* ~Mensonge : "Ce n'est pas vrai."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
SetGlobal("Diligence","GLOBAL",2)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 19.2 21.2
  SAY #29176 /* ~Diligence t'examine froidement. "Tu mens. Je ne perdrai plus mon temps avec toi. Si tu prononces un mot de plus ou si tu m'approches à nouveau, j'appellerai la garde. Et maintenant, oust !"~ */
  IF ~~ THEN REPLY #29227 /* ~"Mais…"~ */ GOTO 11
  IF ~~ THEN REPLY #29228 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 16.0 31.1
  SAY #29177 /* ~"Gardes !"~ */
  IF ~~ THEN REPLY #29229 /* ~Attaque-la.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29230 /* ~Essaie de partir avant que quelqu'un arrive.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #29178 /* ~Un léger sarcasme se dessine sur sa lèvre. "J'ai le jugement rapide car je suis magistrat par profession. Je ne perdrai plus mon temps avec toi. Si tu prononces un mot de plus ou si tu m'approches à nouveau, j'appellerai la garde. Et maintenant, oust !"~ */
  IF ~~ THEN REPLY #29231 /* ~"Mais…"~ */ GOTO 11
  IF ~~ THEN REPLY #29232 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #29179 /* ~Ses yeux se plissent davantage. "Ne plaisante pas avec moi, ma patience est très limitée. Qu'est-ce que tu attends de moi ?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29233 /* ~"Pardonne ma sottise. Mais à vrai dire, je suis très propre et… sans vouloir te manquer de respect… certaines cultures pourraient trouver *tes* vêtements inconvenants."~ */ GOTO 3
  IF ~~ THEN REPLY #29234 /* ~"Tu as vite fait de juger quelqu'un sur son apparence, pas vrai ?"~ */ GOTO 9
  IF ~~ THEN REPLY #29235 /* ~"J'ai quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #29236 /* ~"Hum. Je m'en vais, maintenant. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #29180 /* ~Diligence te fixe, un vague air de dégoût sur son visage.~ */
  IF ~~ THEN REPLY #29237 /* ~"J'ai quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #29238 /* ~"Quelque chose vous dérange dans mon aspect ?"~ */ GOTO 2
  IF ~~ THEN REPLY #29239 /* ~"Bon, je m'en vais. Au revoir."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 1.1 2.3 13.2 14.0 30.1
  SAY #29181 /* ~Diligence minaude. "Je ne suis pas un rabatteur pour répondre aux questions des passants en échange d'une poignée de pièces. Trouve quelqu'un d'autre pour te répondre ; j'ai d'importantes affaires administratives à traiter."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29240 /* ~"Je ne t'ai jamais prise pour une… rabatteuse. Au contraire, tu avais l'air si bien informée que j'espérais que tu pourrais m'aider."~ */ GOTO 17
  IF ~~ THEN REPLY #29241 /* ~"Juste une seule question, alors ?"~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #29242 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29182 /* ~"Pas une seule. Laisse-moi maintenant ! Ose un mot de plus ou une manœuvre d'approche et j'appelle la garde."~ */
  IF ~~ THEN REPLY #29243 /* ~"Mais…"~ */ GOTO 11
  IF ~~ THEN REPLY #29244 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0
  SAY #29183 /* ~"Ça revient au même, je n'ai pas de temps pour tes questions."~ */
  IF ~~ THEN REPLY #29245 /* ~"Alors, je m'excuse, et merci de m'avoir accordé un peu de temps. Au revoir."~ */ GOTO 18
  IF ~~ THEN REPLY #29246 /* ~"Bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29184 /* ~"Attends une minute… je vois à tes façons que tu es un homme bien éduqué, pourtant tu sembles privilégier le vagabondage et une violence absurde. Pourquoi ne pas t'installer à Sigil, devenir un citoyen responsable plutôt que quelque nomade aux mains ensanglantées errant dans ses rues ?"~ */
  IF ~~ THEN REPLY #29266 /* ~"Ce n'est pas par choix, je peux te l'assurer."~ */ GOTO 5
  IF ~~ THEN REPLY #29267 /* ~"J'y songerai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 13.3 14.2
  SAY #29185 /* ~"Pas si vite… attends !" Elle te fixe. "Quel est ton nom ?"~ */
  IF ~~ THEN REPLY #29268 /* ~"Je… je ne sais pas."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29269 /* ~Mensonge : "Je m'appelle Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29270 /* ~Mensonge : "Je m'appelle Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #29271 /* ~"Ça ne te regarde pas."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #29186 /* ~"Hum. Très bien, 'Adahn.' Au revoir."~ */
  IF ~~ THEN REPLY #29272 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.3
  SAY #29187 /* ~"Tu m'as abordée dans la rue sans raison, tu m'as forcée à subir ta présence et maintenant tu as l'*audace* de dire que ça ne me regarde pas ? Bien au contraire !"~ */
  IF ~~ THEN REPLY #29273 /* ~"Je… je ne sais pas."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29274 /* ~Mensonge : "Je m'appelle Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29275 /* ~Mensonge : "Je m'appelle Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #29188 /* ~"Allons, tu ne t'attends pas à t'en tirer aussi facilement, non ? Allez, ton nom : finissons-en !"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29276 /* ~"La situation est confuse et je te demanderais d'être patiente. Honnêtement, je ne connais pas mon nom. Je ne sais plus qui je suis."~ */ GOTO 24
  IF ~~ THEN REPLY #29277 /* ~"Je ne sais vraiment pas. J'ai perdu la mémoire."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #29189 /* ~Elle te dévisage tranquillement, son visage devenant revêche. Elle parle enfin : "Très bien. Va et veille à éviter les ennuis."~ */
  IF ~~ THEN REPLY #29278 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #29190 /* ~"Tes mots sont soigneusement choisis, mais c'est pour dire des insanités." Elle se renfrogne. "Est-ce vrai que tu t'es oublié toi-même ? Parle sans détour et fais attention à ce que tu vas dire."~ */
  IF ~~ THEN REPLY #29279 /* ~"Je te jure que c'est vrai."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0 31.0
  SAY #29191 /* ~Au bout d'un moment ,elle pousse un soupir d'exaspération. "Je vois à tes manières que tu es bien éduqué, pourtant tu sembles privilégier le vagabondage et une violence absurde. Pourquoi ne pas t'installer à Sigil, devenir un citoyen responsable plutôt que quelque nomade aux mains ensanglantées errant dans ses rues ?"~ */
  IF ~~ THEN REPLY #29280 /* ~"Ce n'est pas par choix, je peux te l'assurer."~ */ GOTO 5
  IF ~~ THEN REPLY #29281 /* ~"J'y songerai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 8.0 32.0
  SAY #29192 /* ~Elle secoue la tête. "Je suis une femme trop occupée ; ma position de Quatrième Magistrat me laisse peu de temps pour répondre à tes questions. Mais je suis sûre qu'un autre citoyen pourra t'aider."~ */
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29282 /* ~"Avant que tu t'en ailles, puis-je faire preuve d'assez d'audace pour te demander une faveur ?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29283 /* ~"Alors, au revoir, Dame Diligence."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 32.1
  SAY #29193 /* ~Elle te regarde curieusement, mais ne dit rien.~ */
  IF ~~ THEN REPLY #29284 /* ~"Au cours de mes errances, j'ai visiblement offensé plusieurs citoyens locaux…"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29194 /* ~Elle finit ta phrase : "Et attiré l'attention de l'Harmonium, je suppose ? Et tu as peur qu'ils aient l'œil sur toi, maintenant ?"~ */
  IF ~~ THEN REPLY #29285 /* ~"Oui, madame."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",-5)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29195 /* ~Elle secoue la tête comme si tu étais un vilain enfant. "Je ferai ce que je pourrai, mais tu dois veiller à être plus discret à l'avenir."~ */
  IF ~~ THEN REPLY #29286 /* ~"Grand merci, Dame Diligence. Au revoir."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",1)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 30 // from:
  SAY #29196 /* ~Diligence se renfrogne lorsque tu t'approches d'elle. "Il me semble que je te connais…" Son visage devient encore plus revêche, se plissant comme un pruneau. "Ah, oui… je me souviens de toi à présent."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29287 /* ~"Madame… je crains de t'avoir manqué de respect lors de notre première rencontre. J'espère que tu accepteras mes excuses."~ */ GOTO 25
  IF ~~ THEN REPLY #29288 /* ~"J'ai quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #29289 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 31 // from:
  SAY #29197 /* ~Diligence te regarde avec la plus grande répugnance. "Ne t'ai-je pas demandé de rester à l'écart ? Je t'ai prévenu que j'appellerai la garde…"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29290 /* ~"Dame Diligence… attends, je t'en prie. Je crains de t'avoir manqué de respect lors de notre première rencontre. J'espère que tu accepteras mes excuses."~ */ GOTO 25
  IF ~~ THEN REPLY #29291 /* ~"Mais j'ai quelques questions…"~ */ GOTO 11
  IF ~~ THEN REPLY #29292 /* ~"Bon, j'y vais. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 32 // from:
  SAY #29198 /* ~Diligence te fait un signe de reconnaissance. "Rebonjour, monsieur."~ */
  IF ~~ THEN REPLY #29293 /* ~"Tu tombes bien, Dame Diligence. J'ai des questions…"~ */ GOTO 26
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29294 /* ~"Tu tombes bien, chère dame. Puis-je faire preuve d'assez d'audace pour te demander une faveur ?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29295 /* ~"Je ne faisais que passer. Au revoir, Dame Diligence."~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 33 // from:
  SAY #29199 /* ~La femme recule surprise de te voir. "Es-tu *fou* d'approcher le Quatrième Magistrat du Quartier avec une réputation comme la tienne ? Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #29296 /* ~Attaque-la.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29297 /* ~Essaie de partir avant que quelqu'un arrive.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END
