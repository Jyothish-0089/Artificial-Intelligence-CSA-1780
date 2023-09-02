person(john, date(1990, 5, 10)).
person(mary, date(1985, 9, 15)).
person(jane, date(1992, 3, 25)).
person(michael, date(1980, 7, 5)).
person(susan, date(1995, 11, 30)).
person(jyothish,date(1975,12,29)).
dob(Name, DOB) :-
    person(Name, DOB).
born_before(Year, Name, DOB) :-
    person(Name, date(Y, M, D)),
    Y < Year,
    DOB = date(Y, M, D).
