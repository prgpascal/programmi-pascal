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

(*Esercizio 29*)
PROGRAM biglietto_aereo;
VAR
	tariffa:real;
	peso:real;
	peso_piu:real;
	prezzo_tot:real;
	risp:char;
	
BEGIN
REPEAT
	write('Inserire il costo della tariffa del biglietto: ');
	readln(tariffa);
	write('Inserire il peso totale del bagaglio: ');
	readln(peso);
		IF peso<=20
		THEN 
			BEGIN
				prezzo_tot:=tariffa;
				writeln('Il prezzo totale del biglietto e'': ',prezzo_tot:8:2);
					write('Vuoi continuare(s/n)?: ');
		readln(risp);
			END
		ELSE
			BEGIN
				peso_piu:=peso-20;
					prezzo_tot:=tariffa+(((tariffa/100)*2)*peso_piu);
				writeln('Il prezzo totale del biglietto e'' pari a: ',prezzo_tot:8:2);
					write('Vuoi continuare(s/n)?: ');
		readln(risp)
			END
			UNTIL risp='n'
END.
