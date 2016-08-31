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

{Es 24v}
PROGRAM elezioni;
uses crt;
type
nomi=array[1..100]of string;
voti=array[1..100]of integer;
VAR
nseggi:integer;
nliste:integer;
paese:nomi;
i:integer;
h:integer;
voto:integer;
nvoti:voti;
risp:char;
nvotitot:integer;

procedure inserimento_valori;
begin
Clrscr;
write('Quanti sono i seggi elettorali?: ');
readln(nseggi);
write('Quante sono le liste elettorali?: ');
readln(nliste);

for i:=1 to nliste do {scrivo 0 in ogni cella del vettore}
begin
nvoti[i]:=0;
end;

for i:=1 to nseggi do
begin
write('Inserire il nome del seggio elettorale ',i,' di ',nseggi,' : ');
readln(paese[i]);
end;
nvotitot:=0;
for h:=1 to nseggi do
begin
writeln(' ');
writeln('Inserire i dati relativi al seggio elettorale di ',paese[h],': ');
for i:=1 to nliste do
begin
write('Inserire il numero di voti per la lista ',i,' di ',nliste,': ');
readln(voto);
nvoti[i]:=nvoti[i]+voto;
nvotitot:=nvotitot+voto;
end;
end;
end; {inserimento_valore}

procedure video;
begin

writeln(' ');
writeln('Le liste elettorali che hanno superato il 5 per cento dei voti totali sono: ');
for i:=1 to nliste do
begin
if nvoti[i]>((nvotitot*5)/100)
then
writeln('La lista ',i,' con ',nvoti[i],' voti');
end;
writeln(' ');
write('Vuoi continuare(s/n)?: ');
readln(risp);
end;

begin {main}
repeat
inserimento_valori;
video;
until risp='n';
end. {main}