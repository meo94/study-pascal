program kaprekar;

type intArray= array[1..10000] of integer;
var i,j,B,K, ketqua: integer;
(* Luu so X duoi dang mang cac chu so. So X co k chu so -> mang X co k phan tu *)
var X: intArray;
var myfile:text;

function ChuyenTuKSang10(So: intArray; hedem: integer): integer;
var idx, result: integer;
begin
    result:= 0;
    for idx:= 1 to K do
        result:= result * hedem + So[idx]; 
    ChuyenTuKSang10:= result;
end;

function TimSoKaprekar(So: intArray):integer;
var idx: integer;
begin
    for idx :=1 to K do
        write(So[idx]);
    writeln();
    writeln(ChuyenTuKSang10(So, B));
    
    TimSoKaprekar:= 0; // khong tim thay
end;

(* Chuong trinh chinh *)
begin
    (* Input *)
    assign(myfile, 'kaprekar.inp');
    reset(myfile);
    read(myfile, B); read(myfile, K);
    close(myfile);

    for i:=1 to K do X[i]:= i-1; // khoi tao so X dau tien 012..(K-1)
    (* Process *)
    i:=K;
    repeat
        ketqua:= TimSoKaprekar(X);
        i:=K; // dat i o cuoi day de kiem tra voi moi tap con dau la vi tri dat max gan nhat (ke tu cuoi day).Neu ko mac dinh se la cuoi day
        while(i>0) and (x[i]=(B-1) - K + i) do // kiem tra vi tri i nao da dat max
        begin 
            i:= i - 1; // lui den khi gap vi tri i dat max
        end;
        if i > 0 then // chua lui toi vi tri 0
        begin
            x[i]:=x [i] + 1;
            for j:= i+1 to K do X[j]:= X[j-1] + 1;
        end;
    until (i=0);
    
    (* Output *)
    assign(myfile, 'kaprekar.out');
    rewrite(myfile);
    write(myfile, ketqua);
    close(myfile);
end.