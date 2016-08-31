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

{Es 22v}
PROGRAM copie_giornale;
uses crt;
TYPE
vettore=ARRAY[1..31]of integer;
VAR
n:integer;
copia:vettore;
i:integer;
tot_vendite:integer;
max:integer;	
media:real;
max_copie:integer;
risp:char;

procedure caricamento;
begin
write('Quanti giorni si vogliono inserire?: ');
readln(n);
for i:=1 to n do
begin
write('Inserire il numero di copie vendute nel giorno ',i,': ');
readln(copia[i]);
end;
end;{caricamento}

procedure vendita_massima;
begin
tot_vendite:=0;
max:=0;
max_copie:=0;
for i:=1 to n do
begin
if copia[i]>max_copie
then 
begin
max:=i;
max_copie:=copia[i];
end;
tot_vendite:=tot_vendite+copia[i];
end;
end;

procedure media_vendite;
begin
media:=(tot_vendite/n);
end;

procedure video;
begin
writeln('La vendita massima di copie del giornale si e'' verificata il giorno ',max);
writeln('La media giornaliera delle vendite e'' ',media:6:2);
write('Vuoi continuare(s/n)?: ');
readln(risp);
end;

begin{main}
repeat
ClrScr;
caricamento;
vendita_massima;
media_vendite;
video;
until risp='n';
end.