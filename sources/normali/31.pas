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

PROGRAM tempi_gara;
VAR
c1:string; (*input*)
c2:string; (*input*)
c3:string; (*input*)
t1:real; (*input*)
t2:real; (*input*)
t3:real; (*input*)
BEGIN
writeln('Inserire i nomi dei concorrenti e i loro tempi espressi in secondi');
write('Concorrente 1: ');
readln(c1);
write('Tempo di gara: ');
readln(t1);
write('Concorrente 2: ');
read(c2);
write('Tempo di gara: ');
readln(t2);
write('Concorrente 3: ');
read(c3);
write('Tempo di gara: ');
readln(t3);
IF (t1<t2)AND(t1<t3)
THEN
writeln('Il vincitore e'': ',c1)
ELSE
BEGIN
IF (t2<t1)AND(t2<t3)
THEN
writeln('Il vincitore e'': ',c2)
ELSE
BEGIN
IF (t1=t2)OR(t2=t3)OR(t3=t1)
THEN
writeln('I tempi di gara devono essere diversi')
ELSE
writeln('Il vincitore e'': ',c3);
END
END
END.