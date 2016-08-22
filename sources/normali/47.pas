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

{Esercizio 47}
PROGRAM somma;
uses crt;
VAR
risult_utente:integer;
risp:char;
x:integer;
y:integer;
i:integer;
indovinato:boolean;

procedure inserimento_numeri;
begin
Clrscr;
write('Inserire il primo numero: ');
readln(x);
write('Inserire il secondo numero: ');
readln(y);
end; {inserimento_numeri}

function risult:integer;
begin
risult:=x+y;
end; {calcolo}

procedure inserimento_risultato;
begin
write('Inserisci il risultato dell''operazione ',x,' + ',y,' : ');
readln(risult_utente);
i:=i+1;
end;

procedure confronto_e_video;
begin
if (risult=risult_utente)
then
if i=1
then
begin
writeln('Complimenti, hai indovinato al primo tentativo');
indovinato:=TRUE;
end
else 
begin
writeln('Bravino, hai indovinato al secondo tentativo');
indovinato:=TRUE;
end
else
if i=1
then
writeln('Hai sbagliato, prova ancora')
else
writeln('Ripassa la matematica!');
end;{confronto_e_video}

begin {main}
repeat
inserimento_numeri;
risult;
i:=0;
indovinato:=FALSE;
repeat
inserimento_risultato;
confronto_e_video;
until (i=2) or indovinato;
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n';
end. {main}