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

{Esercizio 20}
PROGRAM interessi;
CONST
 temp=25;
VAR
 cap:real;
 tasso:real;
 int:real;
 risp:char;
BEGIN
REPEAT
 write('Digitare il valore del deposito bancario: ');
 readln(cap);
 write('Inserire il tasso di interesse: ');
 readln(tasso);
  int:=(cap*tasso*25)/36500;
 writeln('L''ammontare dell''interesse dopo 25 giorni e'': ',int:5:2);
 write('Vuoi continuare(s/n)?: ');
 readln(risp);
 UNTIL risp='n'
END.

