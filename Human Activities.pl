hasproperties(pollution, increase) :-
travel(mode, airplane),
travel(mode, is_A(car, non-electric)),			/* two types of modes */
fuel(power_plant, non-renewable),
action(burn, forest);
hasproperties(agriculture, increase).

hasproperties(pollution, decrease) :-
travel(mode, is_A(car, electric)),				/* two types of modes */
fuel(power_plant, renewable);
action(increase, forest).

/*assert to add the fact
retract to remove the fact*/