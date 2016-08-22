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

(*Esercizio 12*)
PROGRAM gara;
CONST 
max=100;
TYPE

nome=ARRAY [1..max]OF string;
VAR
n:integer;
no:nome;
i:integer;
visu:string;
si:boolean;
risp:char;
BEGIN
repeat
repeat
write('Quanti concorrenti si vogliono inserire(max ',max,')?: ');
readln(n);
if (n<=0) or (n>max)
	then 
		writeln('Il numero deve essere compreso fra 1 e ',max);
UNTIL (n>0) and (n<max);

FOR i:=1 TO n DO 
begin
write('Inserire il nome del concorrente alla posizione ',i,' di ',n,': ');
readln(no[i]);
writeln(' ');
end;
write('Quale concorrente si vuole visualizzare?: ');
readln(visu);

i:=0;
si:=FALSE;
repeat
i:=i+1;
if LOWERCASE(no[i])= LOWERCASE(visu)
then
begin
writeln(visu,' si e'' classificato ',i,' su ',n);
si:=TRUE;
end;
UNTIL si or (i=n);
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.