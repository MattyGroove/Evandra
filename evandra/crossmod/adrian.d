// ---------------------------------------------
// SoA
// ---------------------------------------------

// 1.
CHAIN IF ~InParty("rh#Adrian")
See("rh#Adrian")
!StateCheck("rh#Adrian",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("G#XB.AdrianEvandraBanter1","GLOBAL",0)~ THEN BRH#EVA AdrianEvandraBanter1.1
@0 /* I cannot say that I've ever met a half-elven wizard before, Adrian. Are they terribly common here? */
DO ~SetGlobal("G#XB.AdrianEvandraBanter1","GLOBAL",1)
RealSetGlobalTimer("rh#AdrianEvandraTimer","GLOBAL",2700)~
== BRH#ADR @1 /* As common as anything else. Why wouldn't we be? */
== BRH#EVA @2 /* I couldn't say, really. Lack of interest, lack of talent, lack of resources... one of the three has proved a deciding factor on Ansalon, at least. */
== BRH#ADR @3 /* Second class in every possible way, are we? It's a wonder you can even stand to be in my company at all, elf. */
== BRH#EVA @4 /* Mm, you would be surprised. */
== BRH#ADR @5 /* I sincerely doubt that. */
EXIT

// 2.
CHAIN IF WEIGHT #-1 ~Global("G#XB.AdrianEvandraBanter2","GLOBAL",1)~ THEN RH#ADRJ AdrianEvandraBanter2.1
@6 /* I'm sure you've got more interesting things to study tonight than me, elf. Your spellbook, for instance. */
DO ~SetGlobal("G#XB.AdrianEvandraBanter2","GLOBAL",2)~
== RH#EVAJ @7 /* It can wait, at least for the moment. For now... well. */
= @8 /* For now, I'm wondering just how much more of that wine you can drink and yet remain functional. Precious little, I'd wager. */ 
== RH#ADRJ @9 /* Heh. And here I thought elves at least appreciated the finer things in life. Wine, song, frolicking about the countryside... */
== RH#EVAJ @10 /* Mm, there's a certain beauty to be found in watching a man self-implode as well. Few things have quite the same artistry. */
== RH#ADRJ IF ~InParty("HaerDalis")~ THEN @11 /* Careful, elf. You're starting to sound like the tiefling, and that's really the last thing we need. */
== RH#ADRJ IF ~!InParty("HaerDalis")~ THEN @12 /* Careful, elf. You're starting to sound a touch mad there, and that's really the last thing we need. */
== RH#EVAJ @13 /* (laugh) Indeed. There's enough madness to go around here without me adding to it. */
= @14 /* Now, if you'll excuse me, I do in fact have some studying to do. I suppose it's time to leave you to your... entertainment. Good night. */
DO ~RestParty()~
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("rh#Adrian",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#EvaTalks","GLOBAL",14)
Global("G#XB.AdrianEvandraBanter2","GLOBAL",2)
Global("G#XB.AdrianEvandraBanter3","GLOBAL",0)~ THEN BRH#ADR AdrianEvandraBanter3.1
@15 /* Ahh, the self-righteousness and hypocrisy of the elves... it's good to know that that's a staple of the race on any plane, Evandra. */
DO ~SetGlobal("G#XB.AdrianEvandraBanter3","GLOBAL",1)~
== BRH#EVA @16 /* And what, dare I ask, have I done to earn your displeasure this time? */
== BRH#ADR @17 /* You? Nothing, for once. Your people, on the other hand... you're better off without them, honestly. */
== BRH#EVA @18 /* I don't recall asking for your opinion on the matter. */
== BRH#ADR @19 /* No? I didn't realize permission was necessary. Yet another backwards elven custom, no doubt. */
== BRH#EVA @20 /* Mm, personal preference, actually. But thank you all the same. I think. */
EXIT

// 4.
CHAIN IF ~InParty("rh#Adrian")
See("rh#Adrian")
!StateCheck("rh#Adrian",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.AdrianEvandraBanter3","GLOBAL",1)
Global("G#XB.AdrianEvandraBanter4","GLOBAL",0)~ THEN BRH#EVA AdrianEvandraBanter4.1
@21 /* Adrian, that tome you lent me last ten-day... I'm finished with it, if you wish it back now. */
DO ~SetGlobal("G#XB.AdrianEvandraBanter4","GLOBAL",1)~
== BRH#ADR @22 /* Already? Hmm. I suppose that's no surprise for someone who barely needs to sleep at all. */
== BRH#EVA @23 /* (smile) You needn't act as if the elven reverie existed solely to spite you, you know. */
= @24 /* But in any case, my sleeping habits had little to do with anything this time around. More than half your book dealt specifically with necromancy, so needless to say, I didn't bother with it. */
== BRH#ADR @25 /* Is that a trace of disapproval, Evandra? I really hadn't taken you for the type. */
== BRH#EVA @26 /* Distaste, perhaps. You're welcome to dabble in whatever you wish, but if you mean to shock me with these petty gestures... */
== BRH#ADR @27 /* Heh. Hardly, elf, but if you're on the squeamish side, you'd best come up with your own reading materials in the future. */
== BRH#EVA @28 /* Mm, very well. That might be the better option anyway. */
EXIT

// ---------------------------------------------
// ToB
// ---------------------------------------------

CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("rh#Adrian",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("G#XB.AdrianEvandraToBBanter1","GLOBAL",0)~ THEN BRH#AD25 AdrianEvandraToBBanter1.1
@29 /* The constant wistfulness is growing a bit old, Evandra. You'd think that Suldanessellar had been in the prime of its glory and not half on fire instead. */
DO ~SetGlobal("G#XB.AdrianEvandraToBBanter1","GLOBAL",1)~
== BRH#EV25 @30 /* (laugh) Half on fire? I think I would have noticed such a thing. */
== BRH#AD25 @31 /* I wouldn't be so sure. You were so starry eyed that they could've marched a legion of slaves through the city and you'd have probably thought it normal. */
== BRH#EV25 @32 /* Mm, well. That is what the lesser races are for, is it not? */
== BRH#AD25 @33 /* ... You're toying with me, aren't you? */
== BRH#EV25 @34 /* Quite possibly. */
== BRH#AD25 @35 /* Heh. Well played, elf. */
EXIT