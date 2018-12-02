program bieuthuc;

(*Khai báo biến*)
var file_inp, file_out:text;
M: longint;
count, i, s1, s2, s3, s4, s5, s6, s7, s8, s9: integer;
signs: array[1..9] of integer;
bt, number: string;
(*  
Neu s1=0 thi khong co dau truoc so 1
    s1=1 thi co dau + truoc so 1
    s2=2 thi co dau - truoc so 2

sign = '+' hoac '-'
*)

function IntToStr (I : integer) : string;
var S : string;
begin
 str(I,S);
 IntToStr:= S;
end;

function StrToLongint (S: string) : longint;
var num, k: longint;
begin
 val(S, num, k);
 StrToLongint:= num;
end;

function TinhBieuThuc(S: string): longint;
var sum: longint;
begin
    number:= ''; sum:= 0;
    for i:= length(S) downto 1 do
    begin
        if (S[i] <> '+') and (S[i] <> '-') then number:= S[i] + number;
        if (S[i] = '+') and (length(number) > 0) then 
        begin 
            //writeln('+', number);
            sum:= sum + StrToLongint(number);
            number:= '';
        end;
        if (S[i] = '-') and (length(number) > 0) then 
        begin
            //writeln('-', number);
            sum:= sum - StrToLongint(number);
            number:= '';
        end;
    end;
    if length(number) > 0 then 
    begin
        //writeln('+', number);
        sum:= sum + StrToLongint(number);
    end;
    TinhBieuThuc:= sum;
end;
(*Chương trình chính*)
begin
    (*INPUT - BEGIN*)
    assign(file_inp, 'bieuthuc.inp');
    reset(file_inp);
    assign(file_out, 'bieuthuc.out');
    rewrite(file_out);

    readln(file_inp, M);
    close(file_inp);
    (*INPUT - END*)
    (*PROCESS - BEGIN*)
    //writeln(IntToStr(19372));
    //writeln(StrToLongint('19372'));
    //writeln(TinhBieuThuc('1+23456789'));
    for s1:= 0 to 2 do
    for s2:= 0 to 2 do
    for s3:= 0 to 2 do
    for s4:= 0 to 2 do
    for s5:= 0 to 2 do
    for s6:= 0 to 2 do
    for s7:= 0 to 2 do
    for s8:= 0 to 2 do
    for s9:= 0 to 2 do
    begin
        bt:='';
        signs[1]:=s1; signs[2]:=s2; signs[3]:=s3;
        signs[4]:=s4; signs[5]:=s5; signs[6]:=s6;
        signs[7]:=s7; signs[8]:=s8; signs[9]:=s9;
        for i:= 1 to 9 do
        begin
            if signs[i]=1 then bt:= bt + '+'
            else if signs[i]=2 then bt:= bt + '-';
            bt:= bt + IntToStr(i);
        end;
        
        //writeln(bt);
        if (TinhBieuThuc(bt) = M) then 
        begin 
            writeln(file_out, bt);
            count := count + 1;
        end;
    end;          

    (*PROCESS - END*)
    (*OUTPUT - BEGIN*)
    if count=0 then writeln(file_out, 'Không có');
    close(file_out);
    writeln('DONE !!!');
    (*OUTPUT - END*)
end.