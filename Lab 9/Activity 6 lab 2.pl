start :-
    write("Please Enter your Choice of Days and Cost:\n"),
    write("What is your Days Limit:\n"),read(Day),
    write("What is your Cost Limit:\n"),read(Cost),
    checkpackage(Day,Cost).

checkpackage(Day,Cost):-
    Day > 0, Day < 6, Cost = 800,bahamaputra,!;
    Day > 5, Day < 8, Cost = 1000,ganges,!;
    Day > 7, Day < 15, Cost = 1500,indus,!.

bahamaputra:-
    write("Package Bahamaputra").

ganges:-
    write("Package Ganges").

indus:-
    write("Package Indus").
