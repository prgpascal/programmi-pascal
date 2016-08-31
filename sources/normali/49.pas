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

{Es 49}
PROGRAM acquisto_merce;
uses crt;
VAR
cod:integer;
desc:string;
qnt:integer;
prez_uni:real;
pag:string;
tot:real;
risp:char;

begin
repeat
ClrScr;
writeln('Inserire i dati relativi all''acquisto della merce: ');
writeln(' ');
write('-Codice Merce: ');
readln(cod);
write('-Descrizione: ');
readln(desc);
write('-Quantita'': ');
readln(qnt);
write('-Prezzo Unitario: ');
readln(prez_uni);
repeat
write('-Metodo di pagamento(contanti/rateale): ');
readln(pag);
pag:=UPCASE(pag);
until (pag='CONTANTI')or(pag='RATEALE');

tot:=qnt*prez_uni;
IF pag='CONTANTI'
THEN
tot:=tot-(tot*10/100)
else
tot:=tot+(tot*15/100);
writeln('Il totale fattura e'': ',tot:9:2);
writeln(' ');
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.