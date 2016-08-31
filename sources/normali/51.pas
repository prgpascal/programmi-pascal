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

{Es 51}
PROGRAM campeggio;
uses crt;
CONST
pers=5;
tenda=4;
roulotte=4.50;
auto=5.50;
moto=3.50;
VAR
n:integer;
n_giorni:integer;
n_pers:integer;
abit:char;
veicolo:char;
costo_veicolo:real;
costo_abit:real;
totalecompless:real;
totale:real;
i:integer;
risp:char;

procedure caricamento;
begin
writeln(' ');
writeln('Inserire i dati relativi al campeggiatore ',i,' di ',n,' : ');
write('-Numero di giorni trascorsi nel camping: ');
readln(n_giorni);
write('-Numero di persone formanti il gruppo: ');
readln(n_pers);
repeat
write('-Tipo di abitacolo (''T'':tenda, ''R'':roulotte): ');
readln(abit);
abit:=upcase(abit);
until (abit='T') or (abit='R');
if abit='T'
then
costo_abit:=tenda
else
costo_abit:=roulotte;
repeat
write('-Tipo di veicolo (''A'':auto, ''M'':moto): ');
readln(veicolo);
veicolo:=upcase(veicolo);
until (veicolo='A') or (veicolo='M');
if veicolo='A'
then
costo_veicolo:=auto
else
costo_veicolo:=moto;
end; {caricamento}

procedure calcolo_e_visual;
begin
totale:=(((n_pers*pers)*n_giorni)+costo_abit+costo_veicolo);
totalecompless:=totalecompless+totale;
writeln('Il totale per il campeggiatore ',i,' di ',n,' e'': ',totale:7:2);
writeln('Premi INVIO per continuare');
readln();
end; {calcolo_e_visual}

begin{main}
repeat
ClrScr;
write('Quanti sono i campeggiatori che hanno finito il proprio soggiorno?: ');
readln(n);
totalecompless:=0;
for i:=1 to n do
begin
ClrScr;
caricamento;
calcolo_e_visual;
end;
writeln('Il totale incasso giornaliero e'' di : ',totalecompless:7:2);
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.