program RandomNumber;
uses crt;

type intArray= array of integer;

const MIN_VALUE = 0;
      MAX_VALUE = 100;

function Func_RandomNumber(min_value, max_value: integer): integer;
begin
   Func_RandomNumber:= random(max_value - min_value) + min_value;
end;

procedure Proc_RandomArrayNumber(var input_array: intArray);
var idx, arr_len : integer;
begin
   arr_len:= length(input_array);
   for idx:=0 to arr_len-1 do
        input_array[idx]:= Func_RandomNumber(MIN_VALUE, MAX_VALUE);
end;

procedure Proc_ShowArrayNumber(var input_array: intArray);
var idx, arr_len: integer;
begin
    arr_len:= length(input_array);
    writeln('Danh sach mang:');
    for idx:=0 to arr_len-1 do
        write(input_array[idx], ' ');
    writeln();
end;

(*Chuong trinh chinh*)
var idx, temp: integer;
    numbers: intArray;
begin
   randomize;
   // Input
   writeln('Nhap so luong phan tu cua mang');
   readln(temp);
   setlength(numbers, temp);
   Proc_RandomArrayNumber(numbers);
   //writeln(length(numbers));
   (*
   temp := Func_RandomNumber(10, 20);
   writeln(temp);
   *)
   // Process
   Proc_ShowArrayNumber(numbers);
   // Output
   readkey;
end.
