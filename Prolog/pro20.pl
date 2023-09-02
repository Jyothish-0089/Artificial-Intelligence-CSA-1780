% Facts about planets
planet(mercury, 0.39, 0.24).
planet(venus, 0.72, 0.62).
planet(earth, 1.00, 1.00).
planet(mars, 1.52, 0.33).
planet(jupiter, 5.20, 317.89).
planet(saturn, 9.58, 95.18).
planet(uranus, 19.22, 14.54).
planet(neptune, 30.05, 17.15).

% Rules to determine if a planet is habitable
habitable(P) :-
    planet(P, _, Mass),
    Mass >= 0.1,  % Minimum mass for habitability
    Mass =< 2.0.  % Maximum mass for habitability

% Rules to determine if a planet is rocky
rocky(P) :-
    planet(P, _, Mass),
    Mass >= 0.1,  % Minimum mass for a rocky planet
    Mass =< 2.0.  % Maximum mass for a rocky planet

% Rule to calculate the gravitational force between two planets
gravitational_force(P1, P2, Force) :-
    planet(P1, Distance1, Mass1),
    planet(P2, Distance2, Mass2),
    Force is (6.67e-11 * Mass1 * Mass2) / (Distance1 * Distance2).

% Query examples:
% - To find habitable planets:
%   ?- habitable(P).
%
% - To find rocky planets:
%   ?- rocky(P).
%
% - To calculate the gravitational force between two planets:
%   ?- gravitational_force(earth, mars, Force).
