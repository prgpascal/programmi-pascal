(*
 * Copyright (C) 2008 Riccardo Leschiutta
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *)

(*Trasformare da angoli sessadecimali a radianti, e viceversa*)
PROGRAM angolo_radiante;
CONST
pigr=3.141592654;
VAR
grado:real;
radiante:real;
risp:char;
rispfin:char;

PROCEDURE conversione1_e_visual;
begin
radiante:=(grado*pigr)/180;
writeln('Il valore espresso in radianti e'': ',radiante:7:2);
write('Vuoi continuare(s/n)?: ');
readln(rispfin);
end; {conversione1_e_visual}

PROCEDURE conversione2_e_visual;
begin
grado:=radiante*180/pigr;
writeln('Il valore espresso in gradi e'': ',grado:7:2);
write('Vuoi continuare(s/n)?: ');
readln(rispfin);
end; {conversione2_e_visual}

BEGIN {main}
repeat
repeat
write('Vuoi convertire l''angolo in radianti (s/n)?: ');
readln(risp);
until (risp='s') or (risp='n');
IF risp='s'
then
begin
write('Inserire il valore dell''angolo espresso in gradi: ');
readln(grado);
conversione1_e_visual;
end
else
begin
write('Inserire il valore dell''angolo espresso in radianti: ');
readln(radiante);
conversione2_e_visual;
end;
until rispfin='n'
end.