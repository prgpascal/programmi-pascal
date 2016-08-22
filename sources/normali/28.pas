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

(*Esercizio 28*)
PROGRAM prezzo_da_pagare;
CONST
x=1000;
VAR
cod:real;
prez:real;
cont:string;
scont1:real;
prezscont1:real;
scont2:real;
prezscont2:real;
risp:char;

BEGIN
REPEAT
 write('Inserire il codice del prodotto: ');
 readln(cod);
 write('Inserire il prezzo del prodotto: ');
 readln(prez);
 write('Il pagamento e'' in contanti (s/n)?: ');
 readln(cont);
 	IF prez>x
 		THEN 
 		BEGIN
 		scont1:=prez*5/100;
 		prezscont1:=prez-scont1;
 		IF cont='s'
 		THEN 
 		begin
 		scont2:=prezscont1*3/100;
 		prezscont2:=prezscont1-scont2;
 		writeln('Il prezzo da pagare per l''oggetto dal codice ',cod:7:0,' e'': ',prezscont2:8:2);
 		write('Vuoi continuare (s/n)?: ');
 		readln(risp)
 		END
 		else
 		writeln('Il prezzo da pagare per l''oggetto dal codice ',cod:7:0,' e'': ',prezscont1:8:2);
 		write('Vuoi continuare (s/n)?: ');
 		readln(risp)
 		END
 		ELSE 
 		begin
 		writeln('Il prezzo da pagare per l''oggetto dal codice ',cod:7:0,' e'': ',prez:8:2);
 		write('Vuoi continuare (s/n)?: ');
 		readln(risp)
 		end
 		
 		until risp='n'
 		end.