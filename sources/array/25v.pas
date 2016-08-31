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

{Es 25v}
PROGRAM tassa;
uses crt;
type
nome=array[1..100]of string;
numero=array[1..100]of integer;
VAR
n:integer;
tit:nome;
aut:nome;
ncopie:numero;
i:integer;
titolo:string;
trov:boolean;
scelta:char;
risp:char;

procedure inserimento_libri;
begin
write('Quanti libri si vogliono inserire?: ');
readln(n);
for i:=1 to n do
begin
writeln('Inserire le informazioni relative al libro ',i,' di ',n,': ');
write('Titolo libro: ');
readln(tit[i]);
tit[i]:=upcase(tit[i]);
write('Autore: ');
readln(aut[i]);
aut[i]:=upcase(aut[i]);
write('Numero di copie disponibili: ');
readln(ncopie[i]);
writeln(' ');
end;
end; {inserimento_libri}

procedure menu;
begin
ClrScr;
repeat
writeln('A: Gestione prestito');
writeln('B: Gestione restituzione');
writeln('C: Stampa i libri di un determinato autore');
writeln(' ');
write('Scegliere l''opzione desiderata(A,B,C): ');
readln(scelta);
scelta:=upcase(scelta);
until (scelta='A') or (scelta='B') or (scelta='C')
end;{menu}

procedure prestito;
begin
Clrscr;
writeln('GESTIONE PRESTITO: ');
write('Inserire il titolo del libro interessato: ');
readln(titolo);
titolo:=upcase(titolo);
writeln(' ');
i:=0;
trov:=FALSE;
repeat
i:=i+1;
if (titolo=tit[i]) and (ncopie[i]>0)
then
begin
ncopie[i]:=(ncopie[i]-1);
writeln('Il prestito può essere effettuato');
writeln('Per il libro ',tit[i],' sono disponibili ancora ',ncopie[i],' copie');
trov:=true;
end;
until trov or (i=n);
if (not trov)
then
writeln('Il libro ',titolo,' non e'' disponibile');
end;{prestito}

procedure restituzione;
begin
Clrscr;
writeln('GESTIONE RESTITUZIONE:');
write('Inserire il titolo del libro restituito: ');
readln(titolo);
titolo:=upcase(titolo);
i:=0;
writeln(' ');
for i:=1 to n do
if titolo=tit[i]
then
begin
ncopie[i]:=ncopie[i]+1;
writeln('Il libro e'' stato aggiunto con successo');
writeln('Per il libro ',tit[i],' sono disponibili ancora ',ncopie[i],' copie');
end;
end;{restituzione}

procedure stampa;
begin
Clrscr;
writeln('STAMPA:');
write('Inserire il nome dell''autore di cui si vuole stampare l''elenco libri: ');
readln(titolo);
titolo:=upcase(titolo);
writeln('Libri scritti da : ',titolo);
for i:=1 to n do
if titolo=aut[i]
then
writeln(tit[i]);
end;{stampa}

begin{main}
Clrscr;
inserimento_libri;
repeat
menu;
if scelta='A'
then
prestito
else
if scelta='B'
then
restituzione
else
stampa;
writeln(' ');
write('Vuoi eseguire nuove operazioni(s/n)?: ');
readln(risp);
until risp='n'
end.