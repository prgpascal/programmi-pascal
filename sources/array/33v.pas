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

{Es 33v}
{* Istruzioni
* 1- trascinare il file *.exe nel prompt dei comandi e premere INVIO
* 2- seguire le istruzioni a video ed inserire il percorso dei file di INPUT e OUTPUT
* (per scoprirlo: click tasto destro sul file input.txt e cliccare su proprieta')
* (ES: C:\Users\xxxx\Desktop\input.txt)
*
* Il file di input deve osservare le seguenti regole:
* - nella prima riga va inserito il numero di cifre (N)
* - nelle successive N righe vanno inserite le cifre (una per riga)
*
* Nel caso il terminale dia un errore, controllare che:
* - il percorso dei file di Input/Output sia corretto
* - il file di input si chiami effettivamente xxxx.txt e non xxxx.txt.txt
*
* Se il programma termina correttamente verrà generato il file di output.
}
PROGRAM cinquina;
CONST MAX = 1000;
TYPE
   vettore = array[0..MAX] of integer;
VAR
   percorsoInput,percorsoOutput:string;
   n:integer;
   antani : vettore;

procedure caricamento (var antani:vettore; var n:integer; var percorsoInput:string);
var i:integer; input:text;
begin
   assign(input, percorsoInput);
   reset(input);
   readln(input,n);
   for i:=0 to n do
     readln(input,antani[i]);
   close(input);
end; {caricamento}

procedure scriviRisultato(antani:vettore; n:integer; percorsoOutput:string);
var
  a,b,c,d,e: integer;
  primo,secondo,terzo,quarto,quinto: integer;
  output:text;
begin
   assign(output, percorsoOutput);
   rewrite(output);
   for a:=0 to n-5 do
   begin
      primo := antani[a];
      for b:=a+1 to n-4 do
      begin
          secondo := antani[b];
          for c:=b+1 to n-3 do
          begin
             terzo := antani[c];
             for d:=c+1 to n-2 do
             begin
                quarto := antani[d];
                for e:=d+1 to n-1 do
                begin
                   quinto:=antani[e];
                   write(output,primo,' ');
                   write(output,secondo,' ');
                   write(output,terzo, ' ');
                   write(output,quarto,' ');
                   writeln(output,quinto, ' ');
                end;
             end;
          end;
        end;
      end;
      close(output);
end; {scriviRisultato}

begin{main}
    writeln('------------------');
    writeln('Inserire percorso del file di INPUT');
    writeln('Esempio: ');
    writeln('C:\Users\admin\Desktop\input.txt');
    readln(percorsoInput);
    writeln('------------------');
    writeln(' ');
    writeln('Inserire percorso del file di OUTPUT');
    writeln('Esempio: ');
    writeln('C:\Users\admin\Desktop\output.txt');
    readln(percorsoOutput);

    caricamento(antani, n, percorsoInput);
    scriviRisultato(antani, n, percorsoOutput);
end.{main}

