
// ---------------------------------------------
// SoA
// ---------------------------------------------

// 1.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("G#XB.EvandraIsraBanter1","GLOBAL",0)~ THEN BRH#EVA EvandraIsraBanter#1.1
@36 /* Isra, just how many different knighthoods exist in Faerûn? I would have assumed it was just the Radiant Heart, but evidently not. */
DO ~SetGlobal("G#XB.EvandraIsraBanter1","GLOBAL",1)~
== BRH#ISR @37 /* More than I would know how to count, my Lady. Our gods are many. */
== BRH#EVA @38 /* And not terribly interested in sharing, it would seem. */
== BRH#ISR @39 /* Mayhap not, but whatever the case may be, the orders themselves are usually on fairly good terms. */
== BRH#EVA @40 /* Usually, you say? Hm. */
== BRH#ISR @41 /* (laugh) Aye. Usually. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("G#XB.EvandraIsraBanter1","GLOBAL",1)
Global("G#XB.EvandraIsraBanter2","GLOBAL",0)~ THEN BRH#ISR EvandraIsraBanter#2.1
@42 /* You have been on Faerûn for a short while now, Evandra. I trust that you are adjusting well? */
DO ~SetGlobal("G#XB.EvandraIsraBanter2","GLOBAL",1)~
== BRH#EVA @43 /* As well as can be expected, I suppose. */
== BRH#ISR @44 /* Amn may not be the most hospitable of nations, but there are good people here. I am certain that you will find as much. */
== BRH#EVA @45 /* Perhaps, though I may well find the legion of thieves more interesting in the long run. */
== BRH#ISR @46 /* Surely you jest, my Lady. The Shadow Thieves are by no means a group to romanticize. */
== BRH#EVA @47 /* Mm, I wouldn't be so sure. I've seen a couple who were rather attractive. */
== BRH#ISR @48 /* (sigh) You are toying with me, are you not? */
== BRH#EVA @49 /* Very nearly always, Isra. Very nearly always. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("G#XB.EvandraIsraBanter2","GLOBAL",1)
Global("G#XB.EvandraIsraBanter3","GLOBAL",0)~ THEN BRH#EVA EvandraIsraBanter#3.1
@50 /* Isra, I've never understood the need of so many human women to paint themselves so. Especially when they are already attractive. */
DO ~SetGlobal("G#XB.EvandraIsraBanter3","GLOBAL",1)~
== BRH#ISR @51 /* (laugh) Do not fool yourself, Evandra. I've known many an elven lady who saw the same need. */
== BRH#EVA @52 /* Then perhaps it's this *realm* that is mad. */
== BRH#ISR @53 /* Aye, mayhap. Though I must admit, I'm surprised that you feel this way, being an illusionist. */
== BRH#EVA @54 /* Hm. I'm certainly in favor of presenting oneself for greatest effect, but this... it just strikes me as garish. */
== BRH#ISR @55 /* Presenting oneself? You speak of beauty as if it were a tool, Evandra. Or a weapon. */
== BRH#EVA @56 /* Isn't it? */
== BRH#ISR @57 /* 'Twould be better to think of it as a gift. */
== BRH#EVA @58 /* Think of it as you wish, my friend. The end result is still the same. */
EXIT

// ---------------------------------------------
// ToB
// ---------------------------------------------

CHAIN IF ~InParty("rh#Isra2")
See("rh#Isra2")
!StateCheck("rh#Isra2",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.EvandraIsraToBBanter1","GLOBAL",0)~ THEN BRH#EV25 EvandraIsraToBBanter#1.1
@59 /* Looking at you, Isra, I wouldn't guess that we were wandering around a wartorn nation. */
DO ~SetGlobal("G#XB.EvandraIsraToBBanter1","GLOBAL",1)~
== BRH#IS25 @60 /* What do you mean by that? */
== BRH#EV25 @61 /* Your cosmetics. I'm beginning to wonder if you haven't had them enchanted to never run out. */
== BRH#IS25 @62 /* (laugh) Such a solution had not occurred to me, I must confess. */
== BRH#EV25 @63 /* It was decidedly *not* a suggestion, Isra. */
== BRH#IS25 @64 /* I've no intention of troubling you with such a request, my Lady, though cannot imagine you finding the task taxing. */
== BRH#EV25 @65 /* Taxing, no, but you might not like the results. */
== BRH#IS25 @66 /* Whyever not? */
== BRH#EV25 @67 /* I'm an illusionist, first and foremost. Any cosmetics I created would likely change colors, or something equally surreal. */
== BRH#IS25 @68 /* I see. In that case, I shall stick with what I already have. */
== BRH#EV25 @69 /* A wise choice, to be sure. */
EXIT