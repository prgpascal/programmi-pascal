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

{Esercizio 9}
PROGRAM prezzo;
VAR
 prezz:real;
 iva:real;
 prezzivato:real;
 prezzoscont:real;
 sconto:real;
 risp:char;
BEGIN
REPEAT
 write('Inserire il prezzo del prodotto: ');
 readln(prezz);
  sconto:=prezz*7/100;
  prezzoscont:=prezz-sconto;
 writeln('Il prezzo scontato e'': ',prezzoscont:8:2);
  iva:=prezzoscont*20/100;
  prezzivato:=prezzoscont+iva;
 writeln('Il prezzo totale e'': ',prezzivato:8:2);
 write('Vuoi continuare(s/n)?: ');
 readln(risp)
 UNTIL risp='n';
END.


