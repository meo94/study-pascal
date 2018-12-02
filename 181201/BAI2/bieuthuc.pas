program bieuthuc;
uses crt;

(*Khai bao bien*)
var idx, n: integer;
var numbers : array[1..9] of integer;
var signs: array[1..9] of integer;
var myfile: text;
var M: longint;

(*
function ChuyenTuSang10(So: intArray; hedem: integer): integer;
var idx, result: integer;
begin
    result:= 0;
    for idx:= 1 to K do
        result:= result * hedem + So[idx]; 
    ChuyenTuKSang10:= result;
end;
*)

(*Chuong trinh chinh*)
begin
    for idx:=1 to 9 do
        numbers[idx]:= idx;
    for idx:=1 to 9 do
        signs
    // input
    assign(myfile, 'bieuthuc.inp');
    reset(myfile);
    read(myfile, M);
    close(myfile);

    assign(myfile, 'bieuthuc.out');
    rewrite(myfile);
    writeln(myfile, M);
    close(myfile);
end.
