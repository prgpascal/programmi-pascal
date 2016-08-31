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

(*Esercizio 36*)
PROGRAM triangolo_rettangolo;
VAR
	base:real;
	altezza:real;
	area:real;
	perimetro:real;
	ipotenusa:real;
BEGIN
	write('Inserire la base: ');
	readln(base);
	write('Ora inserire l''altezza: ');
	readln(altezza);
	area:=base*altezza/2;
	ipotenusa:=sqrt(sqrt(base)+sqrt(altezza));
	writeln('L''area calcolata e'': ',area:6:2);
	perimetro:=base+altezza+ipotenusa;
	writeln('Il perimetro calcolato e'': ',perimetro:6:2);
	END.
