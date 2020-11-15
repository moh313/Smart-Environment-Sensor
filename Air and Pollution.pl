gas_level(nitrogen, 78).
gas_level(oxygen, 21).
gas_level(co2, 415).
gas_level(so2, 0.20).

particle_size(pm(2.5), 18).
particle_size(pm(10), 29).												/* all facts (could be changed) */

hasproperties(atmosphere, good) :-
gas_level(nitrogen, Percent), Percent > 70, Percent < 85,				/* must be in between 70 and 85 to be true */
gas_level(oxygen, Percent2), Percent2 < 23.5, Percent2 > 19.5,
gas_level(co2, PPM), PPM < 350,
gas_level(so2, PPM2), PPM2 < 1,
particle_size(pm(2.5), µGM3), µGM3 < 35,
particle_size(pm(10), Ugm3), Ugm3 < 40.

hasproperties(atmosphere, moderate) :-
gas_level(nitrogen, Percent), Percent > 70, Percent < 90,
gas_level(co2, PPM), PPM < 500,
gas_level(so2, PPM2), PPM2 < 380.

hasproperties(atmosphere, dangerous) :-
gas_level(nitrogen, Percent), Percent > 90;
gas_level(co2, PPM), PPM > 1200;										/* semi colon to show the strong facts which draw straight conclusion */
gas_level(so2, PPM2), PPM2 > 400;
particle_size(pm(2.5), µGM3), µGM3 > 35,
particle_size(pm(10), Ugm3), Ugm3 > 40.
