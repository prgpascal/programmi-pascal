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

{Esercizio 4}
PROGRAM etapersona;
VAR
 nome:string;
 anno:real;
 eta:real;
 risp:char;
BEGIN
REPEAT
REPEAT
 write('Qual''e'' il tuo nome?: ');
 readln(nome);
 write('In che anno sei nato/a?: ');
 readln(anno);
UNTIL (anno<2008) and (anno>0);
 eta:=2008-anno;
 writeln(nome,', tu hai: ',eta:8:0,' anni');
 write('Vuoi continuare (s/n)?: ');
 readln(risp);
UNTIL risp='n';
END.
