effect(hasproperties(atmosphere, good)) :-
hasproperties(pollution, decrease);
hasproperties(atmosphere, good).

humans(safe) :-
effect(hasproperties(atmosphere, good)), 
format('The World is in a safe zone.').					/* text to draw conclusion */

effect(hasproperties(atmosphere, dangerous)) :-
hasproperties(pollution, increase);
hasproperties(atmosphere, dangerous).

humans(vulnerable) :-
effect(hasproperties(atmosphere, dangerous)),
format('The World is in jeopardy, a global lockdown is imminent.').

effect(hasproperties(atmosphere, moderate)) :-
travel(mode, airplane),
travel(mode, is_A(car, non-electric)),
travel(mode, is_A(car, electric));
hasproperties(atmosphere, moderate).

humans(surviving) :-
effect(hasproperties(atmosphere, moderate)),
format('The World is surviving and in some parts living healthy, 
however a threat may be forthcoming.').

/* use trace. to display all the reasoning if query is true */