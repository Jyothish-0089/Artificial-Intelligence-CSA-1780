% Define facts about fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(strawberry, red).
fruit_color(blueberry, blue).

% Predicate to query the color of a fruit
get_color(Fruit, Color) :-
    fruit_color(Fruit, Color).

% Backtracking query to find all fruits with a specific color
fruits_with_color(Color, Fruits) :-
    findall(Fruit, fruit_color(Fruit, Color), Fruits).

% Example queries:
% - To find the color of a specific fruit:
%   ?- get_color(apple, Color).
%
% - To find all fruits with a specific color (e.g., red):
%   ?- fruits_with_color(red, RedFruits).
