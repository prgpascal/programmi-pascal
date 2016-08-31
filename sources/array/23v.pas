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

{Es 23v}
PROGRAM es_citta;
uses crt;
TYPE
citta=array[1..100]of string;
persone=array[1..100]of integer;
perc=array[1..100]of real;
VAR
n:integer;
nome:citta;
nlavor:persone;
npens:persone;
nnlavor:persone;
tot:persone;
perc_lavor:perc;
perc_pens:perc;
perc_nnlavor:perc;
totlavor:integer;
totpens:integer;
totnnlavor:integer;
i:integer;
risp:char;

procedure caricamento;
begin
for i:=1 to n do
begin
writeln(' ');
write('Inserire il nome della citta'' ',i,' di ',n,': ');
readln(nome[i]);
write('Inserire il numero di cittadini lavoratori: ');
readln(nlavor[i]);
write('Inserire il numero di pensionati: ');
readln(npens[i]);
write('Inserire il numero di non lavoratori: ');
readln(nnlavor[i]);
end;
end; {caricamento}

procedure calcolo;
begin
totlavor:=0;
totpens:=0;
totnnlavor:=0;
for i:=1 to n do
begin
tot[i]:=nlavor[i]+npens[i]+nnlavor[i];
perc_lavor[i]:=(nlavor[i]*100)/tot[i];
perc_pens[i]:=(npens[i]*100)/tot[i];
perc_nnlavor[i]:=(nnlavor[i]*100)/tot[i];

totlavor:=totlavor+nlavor[i];
totpens:=totpens+npens[i];
totnnlavor:=totnnlavor+nnlavor[i];
end;
end;{calcolo}

procedure video;
begin
for i:=1 to n do
begin
writeln(' ');
writeln('Citta'' ',nome[i]);
writeln('La percentuale dei cittadini lavoratori e'': ',perc_lavor[i]:3:2);
writeln('La percentuale dei cittadini pensionati e'': ',perc_pens[i]:3:2);
writeln('La percentuale dei cittadini non lavoratori e'': ',perc_nnlavor[i]:3:2);
end;
writeln(' --------------------');
writeln('Il totale dei lavoratori di tutte le citta'' e'': ',totlavor);
writeln('Il totale dei pensionati di tutte le citta'' e'': ',totpens);
writeln('Il totale dei non lavoratori di tutte le citta'' e'': ',totnnlavor);
write('Vuoi continuare(s/n)?: ');
readln(risp);
end;

begin {main}
repeat
Clrscr;
write('Quante citta'' si vogliono inserire(max 100)?: ');
readln(n);
caricamento;
calcolo;
video;
until risp='n';
end. {main}