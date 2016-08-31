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

{Esercizio 16}
PROGRAM eta_media;
VAR
 eta1:integer;
 eta2:integer;
 eta3:integer;
 media:real;
 risp:char;
BEGIN
REPEAT
 write('Inserire l''eta'' della prima persona: ');
 readln(eta1);
 write('Inserire l''eta'' della seconda persona: ');
 readln(eta2);
 write('Inserire l''eta'' della terza persona: ');
 readln(eta3);
   media:=(eta1+eta2+eta3)/3;
 writeln('L''eta'' media tra le tre persone e'': ',media:3:0);
 write('Vuoi continuare(s/n)?: ');
 readln(risp)
 UNTIL risp='n';
END.