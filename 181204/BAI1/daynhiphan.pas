program daynhiphan;

var n,i : integer;
    b: array[1..20] of 0..1;
    count: word;
    stop: boolean;
    file_inp, file_out: text;

procedure Init;
var i: integer;
begin
    for i:=1 to n do b[i]:=0;
    stop:= false;
    count:= 0;
end;

procedure Next_Binary_String;
begin
    i:=n;
    // duyệt từ phải sang, tìm vị trí đầu tiên i có b[i] = 0 (Chứng tỏ vị trí trước đạt max)
    // đồng thời gán các vị trí đạt max về 0
    while(i>=1) and (b[i]=1) do
    begin
        b[i]:= 0;
        i:= i - 1;
    end;
    if i < 1 then stop:= true
    else b[i]:= 1;
end;

begin
    (*INPUT - BEGIN*)
    assign(file_inp, 'daynhiphan.inp');
    reset(file_inp);
    readln(file_inp, n);
    close(file_inp);
    (*INPUT - END*)
    assign(file_out, 'daynhiphan.out');
    rewrite(file_out);
    (*PROCESS - BEGIN*)
    Init;
    while not stop do
    begin
        count:= count + 1;
        for i:= 1 to n do write(file_out, b[i]:2); 
        Next_Binary_String;
        if not stop then writeln(file_out);
    end;
    (*PROCESS - END*)
    close(file_out);
    writeln('DONE !!!');
end.
