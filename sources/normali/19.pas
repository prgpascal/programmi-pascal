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

{Esercizio 19}
PROGRAM articolo;
VAR
 desc:string;
 qta:real;
 prezzouni:real;
 iva:real;
 ammontiva:real;
 prezzotot:real;
 risp:char;
BEGIN
REPEAT
 write('Digitare la descrizione dell''articolo: ');
 readln(desc);
 write('Impostare la quantita'' della merce: ');
 readln(qta);
 write('Inserire il prezzo unitario dell''articolo scelto: ');
 readln(prezzouni);
 write('Digitare la percentuale iva che deve essere applicata: ');
 readln(iva);
   ammontiva:=(prezzouni*qta)*iva/100;
   prezzotot:=(prezzouni*qta)+ammontiva;
 writeln('Il prezzo totale di ',desc,' e'': ',prezzotot:5:2);
 write('Vuoi continuare(s/n)?: ');
 readln(risp)
 UNTIL risp='n'
END.