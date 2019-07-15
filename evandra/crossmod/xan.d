// ---------------------------------------------
// SoA
// ---------------------------------------------

// 1.
CHAIN IF ~InParty("O#Xan")
See("O#Xan")
!StateCheck("O#Xan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("G#XB.EvandraXanBanter1","GLOBAL",0)~ THEN BRH#EVA EvandraXanBanter#1.1
@70 /* Xan, is it common for elves of this realm to practice enchantment magic? */
DO ~SetGlobal("G#XB.EvandraXanBanter1","GLOBAL",1)~
== BO#XAN @71 /* A strange question, Evandra. It is part of what we are. Is that not the case in your world as well? */
== BRH#EVA @72 /* Mm, not exactly. I've long been fascinated by it, but there are many things that fascinate me that most would say shouldn't. */
= @73 /* Enchantment magic, for example... I've seen the way a Black Robe can break a person's mind with it, Xan. */
== BO#XAN @74 /* (sigh) Haven't we all? */
== BRH#EVA @75 /* But you're clearly drawn to it anyway. */
== BO#XAN @76 /* If you were to see Evereska, my friend, you would understand. So much of the beauty of our city comes from the charms that have worked into ever last part of it... it is the highest of arts, not the mere tool of war it so often becomes. */ 
== BRH#EVA @77 /* That part I understand, but dedicating oneself so fully to it must mean embracing both the darker and the lighter aspects of it. */
== BO#XAN @78 /* I don't believe that, Evandra. I do not relish what I am forced to do with my magic. */
== BRH#EVA @79 /* Mm. Perhaps I've simply spent far too much time with the *wrong* type of enchanter, in that case. */
== BO#XAN @80 /* Yes, perhaps you have. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("O#Xan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.EvandraXanBanter1","GLOBAL",1)
Global("G#XB.EvandraXanBanter2","GLOBAL",0)~ THEN BO#XAN EvandraXanBanter#2.1
@81 /* I'm beginning to think you have a death wish, Evandra. The way you spend every battle watching me instead of our enemies is unlikely to end well. */
DO ~SetGlobal("G#XB.EvandraXanBanter2","GLOBAL",1)~
== BRH#EVA @82 /* I am not quite as distracted as that, though it's hardly my fault if that blade of yours draws the eye. */
== BO#XAN @83 /* (sigh) If only it mesmerized my enemies, rather than my allies. */
== BRH#EVA @84 /* Mm, I'm sure I'll get used to it in time, but for now... */
= @85 /* I've seen many an enchanted sword before, Xan, but there's something particularly otherworldly about this one. Something almost... familiar, if that makes any sense at all. */
== BO#XAN @86 /* It makes more sense than you might think. */
= @87 /* Moonblades are amongst the greatest achievements of our people, my friend. It is no wonder that even one from as far afield as yourself would recognize the elven magics that surround it. */
== BRH#EVA @88 /* I see. That is a comforting thought, if nothing else. */
== BO#XAN @89 /* Then at least one of us is comforted by everything that this blade represents. */
== BRH#EVA @90 /* I take it you're not? */
== BO#XAN @91 /* No, though I do not care to speak of it. No amount of discussion will change what must one day be. */
EXIT

// 3.
CHAIN IF ~InParty("O#Xan")
See("O#Xan")
!StateCheck("O#Xan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#EvaTalks","GLOBAL",14)
Global("G#XB.EvandraXanBanter2","GLOBAL",1)
Global("G#XB.EvandraXanBanter3","GLOBAL",0)~ THEN BRH#EVA EvandraXanBanter#3.1
@92 /* May I ask you a question, Xan? */
DO ~SetGlobal("G#XB.EvandraXanBanter3","GLOBAL",1)~
== BO#XAN @93 /* I expect you will, whatever I say. */
== BRH#EVA @94 /* Your city... Evereska... are you planning on returning to it once this is all over? */
== BO#XAN @95 /* Once this is all over? We're likely to all be dead long before that day comes. */
== BRH#EVA @96 /* And if we're not? */
== BO#XAN @97 /* Then... yes. I would dearly like to return to Evereska, at least for a little while, though I expect that duty will draw me away again. */
= @98 /* That is the way it has always been. */
== BRH#EVA @99 /* I see. Forgive me for being too direct, but the way you talk about it sometimes, I've often gotten the impression that you're as much an outcast as I am. */
== BO#XAN @100 /* (sigh) In a sense, I think I am. */
= @101 /* I do not mean to make light of your own situation, but it at least seems like a cleaner break of things. You do not have to return home every few seasons to be reminded of a life that will be forever denied to you. */
== BRH#EVA @102 /* That is not the sort of thing one needs a reminder of, Xan. */
== BO#XAN @103 /* It is different, all the same. To long for a place even as you stand right in the midst of it... I would spare myself that pain, if I could. */
== BRH#EVA @104 /* Could you truly leave it behind forever? */
== BO#XAN @105 /* No. But perhaps it would be better if I could. */
= @106 /* Must we truly have this conversation, Evandra? There is no good that can come of it for either of us. */
== BRH#EVA @107 /* I... of course. I'm sorry. I suppose you're right. */
EXIT

// 4.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("O#Xan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.EvandraXanBanter3","GLOBAL",1)
Global("G#XB.EvandraXanBanter4","GLOBAL",0)~ THEN BO#XAN EvandraXanBanter#4.1
@108 /* I have been wondering something, Evandra. Does Elven High Magic exist in your world? */
DO ~SetGlobal("G#XB.EvandraXanBanter4","GLOBAL",1)~
== BRH#EVA @109 /* I really couldn't say. I'm not quite sure what it is. */
== BO#XAN @110 /* The greatest secret of our people, and the most dangerous. They say that it can be used to shape reality itself, creating gates between planes or new continents. */
== BRH#EVA @111 /* I see. I've never heard of any such thing, though I'm hardly privy to my people's deepest secrets. */
== BO#XAN @112 /* It has become a rare art even here, I'm afraid. You would be hard pressed to find a master willing to teach you, but if you could... */
= @113 /* (sigh) Nobody should have to choose between the Art and the People, my friend, but perhaps here you might one day find both in greater measure than you ever could have in your own world. */
== BRH#EVA @114 /* You almost sound optimistic, Xan. */
== BO#XAN @115 /* It is an impossible dream, I know. For myself, and likely even more so for you. But it is a beautiful one all the same. */
== BRH#EVA @116 /* Of course, those are the most dangerous types. */
== BO#XAN @117 /* Yes, they certainly are. */
EXIT

// ---------------------------------------------
// ToB
// ---------------------------------------------

CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("O#Xan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.EvandraXanToBBanter1","GLOBAL",0)~ THEN BO#XAN25 EvandraXanToBBanter#1.1
@118 /* More and more often I find myself worrying that you will regret not remaining behind in Suldanessellar, my friend. */
DO ~SetGlobal("G#XB.EvandraXanToBBanter1","GLOBAL",1)~
== BRH#EV25 @119 /* I admit, it would have been more pleasant than doom and inevitable death, but you really needn't be concerned about me, Xan. */
== BO#XAN25 @120 /* No, you are correct. If death is to find any of us, it can do so as easily in Suldanessellar as here. */ 
= @121 /* For once, however, that is not what I had in mind. */
== BRH#EV25 @122 /* What did you mean, then? */
== BO#XAN25 @123 /* (sigh) You must recognize that there would never have been a better moment to settle there permanently. A city in the midst of rebuilding, that welcomes you as a heroine... */
= @124 /* For once, you would not have been taken for an outsider, Evandra. I fear that is an opportunity that may never present itself again. */
== BRH#EV25 @125 /* I cannot believe that their memory will prove as short as that. */
== BO#XAN25 @126 /* Perhaps not, but circumstances can change quickly, even for us. */
== BRH#EV25 @127 /* I could not have abandoned <CHARNAME>, Xan. Not now. */
== BO#XAN25 @128 /* No, I suppose not. I only hope you won't regret it. */
EXIT