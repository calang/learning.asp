% basic predicates for timetable
:- module(timetable_base, [
    nivel/1,
    bloque/3,
    dia/1,
    bloquee/1,
    leccion/1
]).


% nivel(?Nivel).
%
% Nivel is a level of the timetable.

nivel(inter).
nivel(trans).
nivel(1).
nivel(2).
nivel(3).
nivel(4).
nivel(5).
nivel(6).


% bloque(?Dia, ?Bloque, ?Leccion).
%
% Dia is a day of the week, Bloque is a block number,
% and Leccion is a lesson identifier within the block.

bloque(Dia, Bloque, Leccion) :-
    dia(Dia),
    bloquee(Bloque),
    leccion(Leccion).

dia(lun).
dia(mar).
dia(mie).
dia(jue).
dia(vie).

bloquee(1).
bloquee(2).
bloquee(3).
bloquee(4).

leccion(a).
leccion(b).
