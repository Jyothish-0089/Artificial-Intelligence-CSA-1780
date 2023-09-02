% Define the predicate hanoi/3
% hanoi(N, Source, Target) will move N disks from Source to Target using the auxiliary rod.

hanoi(1, Source, Target, _) :-
    write('Move disk 1 from '), write(Source), write(' to '), write(Target), nl.

hanoi(N, Source, Target, Auxiliary) :-
    N > 1,
    M is N - 1,
    hanoi(M, Source, Auxiliary, Target),
    write('Move disk '), write(N), write(' from '), write(Source), write(' to '), write(Target), nl,
    hanoi(M, Auxiliary, Target, Source).

% Example usage:
% To solve the Towers of Hanoi problem with 3 disks:
% ?- hanoi(3, 'A', 'C', 'B').
