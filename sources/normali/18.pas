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

(*Esercizio 18*)
PROGRAM equaz_retta;
VAR
xp1:real;
xp2:real;
yp1:real;
yp2:real;
n:real;
q:real;
risp:char;
BEGIN
repeat
writeln('Inserire le coordinate del primo punto: ');
write('x: ');
readln(xp1);
write('y: ');
readln(yp1);
writeln('Inserire le coordinate del secondo punto: ');
write('x: ');
readln(xp2);
write('y: ');
readln(yp2);
n:=(yp2-yp1)/(xp2-xp1);
q:=yp1-(n*xp1);
writeln('La "m" calcolata e'': ',n:7:2);
writeln('La "q" calcolata e'': ',q:7:2);
write('Vuoi continuare(s/n)?: ');
			readln(risp)
until risp='n'
end.
