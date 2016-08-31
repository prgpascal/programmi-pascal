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

{Esercizio 2}
PROGRAM rettangolo;
VAR
 base:real;
 alt:real;
 area:real;
 perim:real;
 risp:char;
BEGIN
REPEAT
 write('Inserire la base: ');
 readln(base);
 write('Ora inserire l''altezza: ');
 readln(alt);
  perim:=base+base+alt+alt;
  area:=base*alt;
 writeln('Il perimetro e'': ',perim:8:2);
 writeln('L''area e'': ',area:8:2);
 write('Vuoi Continuare (s/n)?: ');
 readln(risp);
UNTIL risp='n';
END.
