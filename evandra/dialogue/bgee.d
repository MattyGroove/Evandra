// ---------------------------------------------
// Dorn
// ---------------------------------------------

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaDorn1","GLOBAL",0)~ THEN BDORN dorn1
@0 /* What are you doing here, elf? */
DO ~SetGlobal("rh#EvaDorn1","GLOBAL",1)~
== BRH#EVA @1 /* ... I'm not sure what you're asking me. */
== BDORN @2 /* This is not your world. Why do you stay? */
== BRH#EVA @3 /* Ohh, for the pleasure of your company, of course. */
== BDORN @4 /* You mock me at your own risk, girl. */
== BRH#EVA @5 /* I'll keep that in mind. */
== BDORN @6 /* See that you do. */
EXIT

// 2.
CHAIN IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaDorn2","GLOBAL",0)~ THEN BRH#EVA dorn2
@7 /* You're going to get us all killed, Dorn. */
DO ~SetGlobal("rh#EvaDorn2","GLOBAL",1)~
== BDORN @8 /* If you are weak, elf, you will die, and you will deserve no better. */
== BRH#EVA @9 /* (sigh) Truly, you put the maddest of the Black Robes to shame. Self-destruction is not something that ought to be courted like this. */
== BDORN @10 /* You question me, girl? */
== BRH#EVA @11 /* ... No. Of course not. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaDorn1","GLOBAL",1)
Global("rh#EvaDorn2","GLOBAL",1)
Global("rh#EvaDorn3","GLOBAL",0)~ THEN BDORN dorn3
@12 /* I have been watching you, elf. You're not as weak as you look. */
DO ~SetGlobal("rh#EvaDorn3","GLOBAL",1)~
== BRH#EVA @13 /* What a marvelous compliment. Truly, I'm impressed. */
== BDORN @14 /* You have outgrown the useless sentiment of your people, but you're still not what you could be. Why do you deny yourself? */
== BRH#EVA @15 /* I don't deny myself, ogre. I know what I am, as surely as you do. */
== BDORN @16 /* Perhaps. But you could be more. */
== BRH#EVA @17 /* And all I need do is sell my soul. */
== BDORN @18 /* It's worth it. */
== BRH#EVA @19 /* I don't care. We're done here. */
== BDORN @20 /* We're done when I say we're done, elf. Consider my words carefully--I won't waste my breath on you again. */
EXIT

// ToB

CHAIN IF WEIGHT #30 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaDornToB","GLOBAL",0)~ THEN BDORN25 dorn
@21 /* Say your piece and be done with it, elf. I feel your eyes on me far too often. */
DO ~SetGlobal("rh#EvaDornToB","GLOBAL",1)~
== BRH#EV25 @22 /* Do you, then? Hmm. I suppose I was wondering what fresh madness you'd get us into to<DAYNIGHT>. */
== BDORN25 @23 /* You have a complaint? */
== BRH#EV25 @24 /* Several. */
== BDORN25 @25 /* And yet you stay. */
== BRH#EV25 IF ~OR(2) !Alignment(Player1,MASK_EVIL) Global("rh#EvaRomanceActive","GLOBAL",2)~ THEN @26 /* Perhaps I shouldn't, but you're... intriguing, I suppose, in your own decidedly unhinged way. I suspect <CHARNAME> feels similarly. */
== BRH#EV25 IF ~Alignment(Player1,MASK_EVIL) !Global("rh#EvaRomanceActive","GLOBAL",2)~ THEN @27 /* Perhaps I shouldn't, but you and <CHARNAME> are... intriguing, I suppose, in your own decidedly unhinged way. */
== BDORN25 @28 /* Ha! There is more darkness in you than you would care to admit, elf. You would do well to admit it. */
== BRH#EV25 @29 /* Quite possibly, but certainly not of the sort that you revel in. */
EXIT

// ---------------------------------------------
// Hexxat
// ---------------------------------------------

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaHexxat1","GLOBAL",0)~ THEN BHEXXAT hexxat1
@30 /* I can feel your eyes on me, Evandra. */
DO ~SetGlobal("rh#EvaHexxat1","GLOBAL",1)~
== BRH#EVA @31 /* Only mine? I find that difficult to believe. */
== BHEXXAT @32 /* Not only yours, but your gaze surprises me. You are no stranger to dark magic. */
== BRH#EVA @33 /* I've been acquainted with several vampires over the decades, if that's what you're getting at. */
== BHEXXAT @34 /* And? */
== BRH#EVA @35 /* And I've never been comfortable with necromancy in any of its forms. */
== BHEXXAT @36 /* I see. That is unfortunate. We could have been good friends. */
== BRH#EVA @37 /* No, I really don't think so. */
EXIT

// 2.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaHexxat1","GLOBAL",1)
Global("rh#EvaHexxat2","GLOBAL",0)~ THEN BRH#EVA hexxat2
@38 /* Do you really think we don't notice, Hexxat? */
DO ~SetGlobal("rh#EvaHexxat2","GLOBAL",1)~
== BHEXXAT @39 /* Evandra. How wonderful of you to finally speak to me. */
== BRH#EVA @40 /* Play the victim if you must. Some of us at least see through it. */
== BHEXXAT @41 /* I don't know what you mean. */
== BRH#EVA @42 /* You've a way of slipping off at night when you think nobody is watching. There's only one reason why that might be. */
== BHEXXAT @43 /* Would you rather I starved? */
== BRH#EVA @44 /* I'd rather you were honest. */
== BHEXXAT @45 /* And if I am being honest? */
== BRH#EVA @46 /* If you were, you'd be someone else entirely. */
== BHEXXAT @47 /* I'm sorry you feel that way. */
== BRH#EVA @48 /* I'm sure you are. */
EXIT

// ToB

CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaHexxatToB","GLOBAL",0)~ THEN BHEXXA25 hexxat
@49 /* I had hoped that you would grow warmer towards me with time, Evandra. */
DO ~SetGlobal("rh#EvaHexxatToB","GLOBAL",1)~
== BRH#EV25 @50 /* You may be the strangest vampire I've ever seen, but... */
== BHEXXA25 @51 /* But? */
== BRH#EV25 @52 /* But everything about you sets me on edge, Hexxat. You're not what you used to be, no matter how much you might wish otherwise. */
== BHEXXA25 @53 /* None of us are what we used to be. */
== BRH#EV25 @54 /* Most of us haven't had our very nature transformed. */
== BHEXXA25 @55 /* That was never my desire. */
== BRH#EV25 @56 /* That's hardly relevant, Hexxat. If you wish for sympathy, seek out somebody who knows less about dark magic than I do. */
== BHEXXA25 @57 /* If that is how you truly feel, I will not trouble you again. */
EXIT

// ---------------------------------------------
// Neera
// ---------------------------------------------

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaNeera1","GLOBAL",0)~ THEN BNEERA neera1
@58 /* So what's your story anyway, Evandra? You're kind of a first for me, you know. Well... except for that once, I guess. */
DO ~SetGlobal("rh#EvaNeera1","GLOBAL",1)~
== BRH#EVA @59 /* You're not making any sense at all, Neera. */
== BNEERA @60 /* Yeah, I get that a lot. It's just pretty cool to be traveling with someone from a different world. You don't see that a lot. Except when you do, of course. */
== BRH#EVA @61 /* So I take it you *have* seen it before? */
== BNEERA @62 /* Uh huh. You know how it is... whoosh! Wild surge! And then suddenly you're face to face with someone from Eberron. */
== BRH#EVA @63 /* I'm sure. */
== BNEERA @64 /* It was really neat, actually, except for the-- hey, are you listening to me? */
== BRH#EVA @65 /* Should I be? */
== BNEERA @66 /* Yeesh! Talk about waking up on the wrong side of the bed. */
EXIT

// 2. 
CHAIN IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaNeera2","GLOBAL",0)~ THEN BRH#EVA neera2
@67 /* I don't think I've ever seen magic quite like yours, Neera. It seems rather... volatile. */
DO ~SetGlobal("rh#EvaNeera2","GLOBAL",1)~
== BNEERA @68 /* Heh, you're telling me. */
= @69 /* Wait... you don't have any wild mages back on... where are you from again? */
== BRH#EVA @70 /* Krynn, and no. Not that I've ever met, at least, nor anyone else I know. */
== BNEERA @71 /* And you know pretty much, like, every mage, right? */
== BRH#EVA @72 /* Close enough, I think. Aside from the Silvanesti. */
== BNEERA @73 /* What's that, some sort of secret magical organization? I bet you've got a few of those where you come from too. */
== BRH#EVA @74 /* ... Your magic, Neera. */
== BNEERA @75 /* Oh, right! That's what we were talking about. */
= @76 /* Wait, wait, wait... don't tell me you disapprove too. I promise it's not *that* dangerous. */
== BRH#EVA @77 /* It isn't? You don't exactly seem to have it under control, Neera. */
== BNEERA @78 /* It'll be okay, really! I mean, nothing's gone *too* horribly wrong so far, and that's got to count for something. */
== BRH#EVA @79 /* No, it really doesn't. */
== BNEERA @80 /* Right. Um. Nice talking to you too, I guess. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#EvaTalks","GLOBAL",4)
Global("rh#EvaNeera1","GLOBAL",1)
Global("rh#EvaNeera2","GLOBAL",1)
Global("rh#EvaNeera3","GLOBAL",0)~ THEN BNEERA neera3
@81 /* I, um... Evandra? I've been meaning to ask you something. Kind of afraid of what the answer will be, though. */
DO ~SetGlobal("rh#EvaNeera3","GLOBAL",1)~
== BRH#EVA @82 /* An ominous start, to be sure. */
== BNEERA @83 /* Right. Um... your order back home. What happens if you don't want to join it? */
== BRH#EVA @84 /* If you don't want to join, you don't practice magic. */
== BNEERA @85 /* That seems a little... extreme. */
== BRH#EVA @86 /* I haven't been overly impressed with the alternative. */
== BNEERA @87 /* Yeah, I guess we must seem pretty chaotic in comparison, but that's not really a bad thing, is it? */
== BRH#EVA @88 /* Given the number of dark wizards we've seen wandering about unchecked, I would beg to differ. */
== BNEERA @89 /* Like you don't have *any* rogue mages causing trouble on your world. You don't expect me to believe that, I hope. */
== BRH#EVA @90 /* We have them, though they tend not to last long. */
== BNEERA @91 /* And, uh, what about someone like me? Would I, um... last long? */
== BRH#EVA @92 /* I rather doubt it, Neera. */
== BNEERA @93 /* Er... right. Okay. I'll just... go stand over there. */
EXIT

// ToB

CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaNeeraToB","GLOBAL",0)~ THEN BNEERA25 neera
@94 /* You know, Evandra, you really do need to lighten up a little bit. I know you hate me and all, but isn't it kind of getting silly? */
DO ~SetGlobal("rh#EvaNeeraToB","GLOBAL",1)~
== BRH#EV25 @95 /* I don't hate you, Neera. */
== BNEERA25 @96 /* You don't? In that case... wow. You really could have fooled me. */
== BRH#EV25 @97 /* I won't pretend to care for your approach to magic, though. Especially now. The type of power we have access to, Neera... you ought to be more careful with it. */
== BNEERA25 @98 /* Uh huh. This is where the lecture starts, I guess. */
== BRH#EV25 @99 /* Would you *like* to be the villain in someone else's story one day? */
== BNEERA25 @100 /* Me? A villain? I really don't think it'll come to that, Evandra. */
== BRH#EV25 @101 /* I hope not. For all your eccentricities, I think you're somewhat better than that. */
== BNEERA25 @102 /* Aww, I think that's the nicest thing you've ever said to me. You're not going to go ruining it or anything now, are you? */ 
== BRH#EV25 @103 /* I suppose I can wait until your next wild surge. */
== BNEERA25 @104 /* Right. Um... thanks, I guess. */
EXIT

// ---------------------------------------------
// Rasaad
// ---------------------------------------------

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaRasaad1","GLOBAL",0)~ THEN BRASAAD rasaad1
@105 /* The meal you prepared last night was very good, Evandra. */
DO ~SetGlobal("rh#EvaRasaad1","GLOBAL",1)~ 
== BRH#EVA @106 /* I take it I've improved, then? Faerûnian herbs are not quite the same as the ones I'm used to, but I can adapt quickly enough. */
== BRASAAD @107 /* A useful skill... and one that I envy greatly. */
== BRH#EVA @108 /* (laugh) Cooking or adapting? */
== BRASAAD @109 /* ... */
= @110 /* You are teasing, I hope. I have had no complaints about my cooking so far. */
== BRH#EVA @111 /* Indeed, it was a jest, Rasaad. I've little liking for human cuisine, but yours at least is interesting. */
== BRASAAD @112 /* I am glad to hear it. I think. */
EXIT

// 2.
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaRasaad2","GLOBAL",0)~ THEN BRH#EVA rasaad2
@113 /* I understand that you come from farther south, Rasaad. Is it very different than Amn? */
DO ~SetGlobal("rh#EvaRasaad2","GLOBAL",1)~ 
== BRASAAD @114 /* It is similar in many ways, but... on a larger scale. I do not know how to explain it to you, my friend. */
== BRH#EVA @115 /* I think I've an idea of what you mean. Athkatla, but louder. Dirtier. And more ruthless, perhaps. */
== BRASAAD @116 /* Yes, that would be an accurate description, though it has a beauty all its own as well. */
== BRH#EVA @117 /* I suspect we all feel that way about our homelands, rightly or wrongly. */
== BRASAAD @118 /* That is likely true, but Calimport... you do not know it until you've experienced it. */
== BRH#EVA @119 /* Hm. I admit, Rasaad, you have me intrigued. */
== BRASAAD @120 /* Then I hope you have the chance to visit it someday. */
EXIT

// 3.
CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaRasaad1","GLOBAL",1)
Global("rh#EvaRasaad2","GLOBAL",1)
Global("rh#EvaRasaad3","GLOBAL",0)~ THEN BRH#EVA rasaad3
@121 /* Really, Rasaad, if you were any quieter, I'd suspect you'd been silenced by magic. */
DO ~SetGlobal("rh#EvaRasaad3","GLOBAL",1)~ 
== BRASAAD @122 /* I'm sorry. I have not been in the mood for conversation. */
== BRH#EVA @123 /* Not today, nor yesterday, nor the day before... yes, that much is clear for anyone to see. */
= @124 /* If you wish to speak about it... */
== BRASAAD @125 /* I... no. I thank you for the offer, but I don't see how it would help. */
== BRH#EVA @126 /* Very well, but I wouldn't let it fester inside too long. It'll only grow worse. */
EXIT

// ToB

CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(OUTDOOR)
TimeOfDay(NIGHT)
Global("rh#EvaRasaadToB","GLOBAL",0)~ THEN BRASAA25 rasaad
@127 /* You glance at the moon almost as often as I do, my friend. */
DO ~SetGlobal("rh#EvaRasaadToB","GLOBAL",1)~
== BRH#EV25 @128 /* A fine achievement, to be sure. You've your eyes on the sky more often than on the road, Rasaad. */ 
== BRASAA25 @129 /* Much changes in this life, but its beauty remains constant. I find some consolation in that. */
== BRH#EV25 @130 /* Hm. I would have once felt the same way. */
== BRASAA25 @131 /* But no longer? */
== BRH#EV25 @132 /* No, I'm afraid not. */
EXIT
