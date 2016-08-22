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

(*Esercizio 35v*)
PROGRAM vettore2;
CONST
max=100;
TYPE
vettore=ARRAY [1..max] OF string;
VAR
v:vettore;
n:integer;
par:string;
i:integer;
ok:integer;
risp:char;
BEGIN
REPEAT
REPEAT
write('Quante parole vuoi inserire(<=',max,')?: ');
readln(n);
IF (n<=0) OR (n>max)
THEN
 writeln('Devi inserire un numero di parole compreso fra 1 e ',max);
 UNTIL (n>0) and (n<=max);
 FOR i:=1 TO n DO
 BEGIN
 write('Inserire la parola ',i,' di ',n,': ');
 readln(v[i]);
 v[i]:=LOWERCASE(v[i]);
 END;
 write('Quale parola si vuole verificare?: ');
 readln(par);
 par:=LOWERCASE(par);
 i:=0;
 ok:=0;
 REPEAT
 BEGIN
 i:=i+1;
 IF v[i]=par
 THEN
 begin
 writeln('La parola ',par,' e'' contenuta nella posizione ',i,' del vettore');
 write('Vuoi continuare(s/n)?: ');
 readln(risp);
 ok:=1;
 end;
 end;
 until (i=n);
 if ok=1
 then writeln(' ')
 else
 begin
 IF n=max
 THEN
 begin
 writeln('Non c''e'' posto per inserire ulteriori dati nel vettore');
 write('Vuoi continuare(s/n)?: ');
 readln(risp)
 end
 else
 begin
 v[n+1]:=par;
 writeln('La parola ',par,' e'' stata inserita alla posizione ',n+1);
 write('Vuoi continuare(s/n)?: ');
 readln(risp)
 end
 end
 until risp='n'
 end.