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

(*Esercizio 1*)
PROGRAM somma;
CONST
    max=100;
TYPE
    vettore=ARRAY [1..max] OF integer;
VAR
    v:vettore;
    n:integer;
    i:integer;
    sommpari:integer;
    sommdisp:integer;
    risp:char;
    
BEGIN
    repeat
        repeat
            write('Quanti numeri vuoi inserire(max ',max,')?: ');
            readln(n);
            if (n<=0) or (n>max)
            then 
                writeln('Il numero deve essere compreso fra 1 e ',max);
        UNTIL (n>0) and (n<max);
        
        FOR i:=1 TO n DO 
        begin
            write('Inserire il numero ',i,' di ',n,': ');
            readln(v[i]);
        end;
        
        sommpari:=0;
        sommdisp:=0;
        
        FOR i:=1 TO n DO
        begin
            IF i MOD 2=0
            THEN 
                sommpari:=sommpari+v[i]
            else
                sommdisp:=sommdisp+v[i]
        end;
            
        writeln('La somma delle posizioni pari del vettore e'': ',sommpari);
        writeln('La somma delle posizioni dispari del vettore e'': ',sommdisp);
        write('Vuoi continuare(s/n)?: ');
        readln(risp)
            
    UNTIL risp='n';
end.