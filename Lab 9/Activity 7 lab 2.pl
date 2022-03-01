start1:-
    write("What Date of the Month you were Born:\n"),read(Day),
    write("What Month of the Year you were Born:\n"),read(Month),
    check_day(Day), check_month(Month), check_sign(Day,Month).
check_day(Day):-
    Day < 0,write("data is incorrect\n");
    Day > 31,write("data is incorrect\n");
    !.
check_month(Month):-
    Month <0,write("month is incorrect\n");
    Month >12,write("month is incorrect\n");
    !.
check_sign(Day,Month):-
    Day>=21,Month=3,aries;
    Day=<19,Month=4,aries.
check_sign(Day,Month):-
    Day>=20,Month=4,taurus;
    Day=<20,Month=5,taurus.
check_sign(Day,Month):-
    Day>=21,Month=5,gemini;
    Day=<20,Month=6,gemini.
check_sign(Day,Month):-
    Day>=21,Month=6,cancer;
    Day=<22,Month=7,cancer.
check_sign(Day,Month):-
    Day>=23,Month=7,leo;
    Day=<22,Month=8,leo.
check_sign(Day,Month):-
    Day>=23,Month=8,virgo;
    Day=<22,Month=9,virgo.
check_sign(Day,Month):-
    Day>=23,Month=9,libra;
    Day=<22,Month=10,libra.
check_sign(Day,Month):-
    Day>=23,Month=10,scorpio;
    Day=<21,Month=11,scorpio.
check_sign(Day,Month):-
    Day>=22,Month=11,sagittarius;
    Day=<21,Month=12,sagittarius.
check_sign(Day,Month):-
    Day>=22,Month=12,capricorn;
    Day=<19,Month=1,capricorn.
check_sign(Day,Month):-
    Day>=20,Month=1,aquarius;
    Day=<18,Month=2,aquarius.
check_sign(Day,Month):-
    Day>=19,Month=2,pisces;
    Day=<20,Month=3,pisces.

aries:-
    write("Hello Aries\n").
taurus:-
    write("Hello Taurus\n").
gemini:-
    write("Hello Gemini\n").
cancer:-
    write("Hello Cancer\n").
leo:-
    write("Hello Leo\n").
virgo:-
    write("Hello Virgo\n").
libra:-
    write("Hello Libra\n").
scorpio:-
    write("Hello Scorpio\n").
sagittarius:-
    write("Hello Sagittarius\n").
capricorn:-
    write("Hello Capricorn\n").
aquarius:-
    write("Hello Aquarius\n").
pisces:-
    write("Hello Pisces\n").
