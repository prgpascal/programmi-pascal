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

{Es 21v}
PROGRAM dipendenti;
uses crt;
TYPE
nomi=ARRAY[1..100]of string;
anni=ARRAY[1..100]of integer;
stipendi=ARRAY[1..100]of real;
VAR
nome:nomi;
anno:anni;
stipendio:stipendi;
n,annocorr,i,nminorenni,npensionati:integer;

procedure caricamento;
begin
ClrScr;
write('Inserire l''anno corrente: ');
readln(annocorr);
write('Quanti sono i dipendenti?: ');
readln(n);
writeln('Inserire i dati relativi ai dipendenti');
for i:=1 to n do
begin
write('Inserire il nome del dipendente ',i,': ');
readln(nome[i]);
write('Inserire l''anno di nascita del dipendente ',nome[i],': ');
readln(anno[i]);
write('Inserire lo stipendio del dipendente ',nome[i],': ');
readln(stipendio[i]);
writeln(' ');
end;
end;{caricamento}

procedure risoluzione_e_video;
begin
for i:=1 to n do
if annocorr-anno[i]<18
then
nminorenni:=nminorenni+1
else 
if annocorr-anno[i]>=60
then 
npensionati:=npensionati+1;
writeln('I dipendenti minorenni sono ',nminorenni);
writeln('I dipendenti pensionabili sono ',npensionati);
end;

begin{main}
caricamento;
risoluzione_e_video;
end.