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

{Esercizio 23}
PROGRAM reciproco;
VAR
 n1:real;
 rec:real;
 risp:char;
BEGIN
REPEAT
 write('Inserire il numero sul quale calcolero'' il suo reciproco: ');
 readln(n1);
  IF n1>0
   THEN
    BEGIN
     rec:=1/n1;
     writeln('Il reciproco di ',n1:8:0,' e'': ',rec:8:2);
     write('Vuoi continuare(s/n)?: ');
     readln(risp)
    END
   ELSE
   begin
    write('Non esiste il reciproco di ',n1);
    write('Vuoi continuare(s/n)?: ');
     readln(risp)
     end
UNTIL risp='n'
 
END.