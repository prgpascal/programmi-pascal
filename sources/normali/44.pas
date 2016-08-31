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

{Esercizio 44}
{Un gruppo di ragazzi vince un certo numero di gettoni in una sala giochi e decide di dividersi i gettoni in parti uguali lasciando il resto della divisione come riserva per l'intero gruppo}
PROGRAM sala_giochi;
VAR
 nragazzi:integer;
 ngettoni:integer;
 gettoniperragazzo:integer; 
 gettonirestanti:integer;
 risp:char;
BEGIN
REPEAT
 write('Inserire il numero di ragazzi: ');
 readln(nragazzi);
 write('Inserire il numero di gettoni: ');
 readln(ngettoni);
 gettoniperragazzo:=ngettoni DIV nragazzi;
 writeln('Ad ogni ragazzo spettano ',gettoniperragazzo,' gettoni');
 gettonirestanti:=ngettoni MOD nragazzi;
 writeln('Per l''intero gruppo rimarranno ',gettonirestanti,' gettoni');
 write('Vuoi continuare(s/n)?: ');
readln(risp)
UNTIL risp='n'
END.