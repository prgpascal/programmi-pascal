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

{Esercizio 20v}
PROGRAM media_voti;
uses crt;
TYPE
voti=array[1..3] of integer;
VAR
nome:string;
voto:voti;
i:integer;
somma:integer;
media:real;
risp:char;

procedure inserimento_nome;
begin
Clrscr;
write('Qual e'' il nome dell''alunno ?: ');
readln(nome);
end; {inserimento_nome}

procedure inserimento_voti;
begin
for i:=1 to 3 do
begin
write('Inserire il voto della prova ',i,' :  ');
readln(voto[i]);
end;
end; {inserimento_voti}

procedure media_fine;
begin
somma:=0;
for i:=1 to 3 do 
begin
somma:=somma+voto[i];
end;
media:=somma/3;
end;

procedure video;
begin
writeln(' ');
writeln('STUDENTE: ',nome);
writeln('MEDIA: ',media:8:2);
writeln(' ');
write('Vuoi continuare(s/n)?: ');
readln(risp);
end;

begin {main}
repeat
inserimento_nome;
inserimento_voti;
media_fine;
video;
until risp='n';
end. {main}