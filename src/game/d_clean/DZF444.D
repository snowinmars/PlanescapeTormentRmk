
IF ~  True()
~ THEN BEGIN 0 // from:
SAY #35210 /* ~У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных. Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер «444».~ */
IF ~  Global("Zombie_Chaotic","GLOBAL",0) ~ THEN REPLY #35211 /* ~«Итак... чем занимаешься вечером?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1) SetGlobal("Zombie_Chaotic","GLOBAL",1) ~ GOTO 1
IF ~  Global("Zombie_Chaotic","GLOBAL",1) ~ THEN REPLY #35228 /* ~«Итак... чем занимаешься вечером?»~ */ GOTO 1
IF ~  Global("Vaxis_Exposed","GLOBAL",1) ~ THEN REPLY #35229 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 1
IF ~  Global("Speak_with_Dead","GLOBAL",1) ~ THEN REPLY #35230 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 2
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35235 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXTERN ~DMORTE~ 358
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35236 /* ~Оставить труп в покое.~ */ EXTERN ~DMORTE~ 358
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35237 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35238 /* ~Оставить труп в покое.~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35239 /* ~«Было приятно с тобой поболтать. Прощай».~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35240 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
SAY #35212 /* ~Труп продолжает пялиться на тебя.~ */
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35213 /* ~«Тогда прощай». ~ */ EXTERN ~DMORTE~ 358
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35226 /* ~«Тогда прощай». ~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35227 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
SAY #35231 /* ~Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.~ */
IF ~  NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35232 /* ~«Тогда прощай». ~ */ EXTERN ~DMORTE~ 358
IF ~  Global("Morte_Quip","GLOBAL",1) ~ THEN REPLY #35233 /* ~«Тогда прощай». ~ */ EXIT
IF ~  !NearbyDialog("DMorte") Global("Morte_Quip","GLOBAL",0) ~ THEN REPLY #35234 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
SAY #35241 /* ~Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.~ */
END 