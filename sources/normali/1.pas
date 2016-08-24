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

{Esercizio 1}
PROGRAM prodotto_numeri;
VAR
num1:real;
num2:real;
prod:real;
risp:char;
 BEGIN
 REPEAT
    write('Inserire il primo numero: ');
    readln(num1);
    write('Ora inserire il secondo numero: ');
    readln(num2);
    prod:=num1*num2;
    writeln('Il prodotto dei due numeri e'': ',prod:8:2);
    write('Vuoi continuare?(s/n): ');
    readln(risp)
 UNTIL risp='n';
 END.