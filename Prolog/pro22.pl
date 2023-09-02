% Facts about birds
bird(crow).
bird(sparrow).
bird(penguin).
bird(eagle).

% Birds that can fly
can_fly(crow).
can_fly(sparrow).
can_fly(eagle).

% Rules to determine if a bird can fly
flies(Bird) :-
    bird(Bird),
    can_fly(Bird).

% Query examples:
% - To check if a crow can fly:
%   ?- flies(crow).
%   Output: true

% - To check if a penguin can fly:
%   ?- flies(penguin).
%   Output: false

% - To list all birds that can fly:
%   ?- findall(Bird, flies(Bird), FlyingBirds).
%   Output: FlyingBirds = [crow, sparrow, eagle]
