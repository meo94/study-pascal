program daynhiphan;

var n: integer;
    b: array[1..20] of 0..1;
    count: word;
    file_inp, file_out: text;

procedure Result;
var i: integer;
begin
    count:= count + 1;
    for i:= 1 to n do write(file_out, b[i]: 2);
    writeln(file_out);
end;

procedure Try(i: integer);
var j: integer;
begin
    for j:= 0 to 1 do // b_i nhận 1 trong 2 giá trị 0 và 1
    begin
        b[i]:= j;
        if i= n then Result
        else Try(i+1);
    end;
end;

begin
    (*INPUT - BEGIN*)
    assign(file_inp, 'daynhiphan.inp');
    reset(file_inp);
    readln(file_inp, n);
    close(file_inp);
    
    count:=0;
    (*INPUT - END*)
    assign(file_out, 'daynhiphan.out');
    rewrite(file_out);
    (*PROCESS - BEGIN*)
    Try(1);
    (*PROCESS - END*)
    close(file_out);
    writeln('DONE !!!');
end.
