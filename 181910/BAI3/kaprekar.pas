program kaprekar;

type intArray= array[1..10] of integer;
var idx, j,B,K, ketqua: integer;
(* Luu so X duoi dang mang cac chu so. So X co k chu so -> mang X co k phan tu *)
var X: intArray;
var myfile:text;

function TimSoKaprekar(So: intArray):integer;
begin
    for idx:=1 to K do
        write(So[idx]);
    writeln();
    TimSoKaprekar:= 0; // khong tim thay
end;
(* Chuong trinh chinh *)
begin
    (* Input *)
    assign(myfile, 'kaprekar.inp');
    reset(myfile);
    read(myfile, B); read(myfile, K);
    close(myfile);
    // khoi tao so X dau tien 012..(K-1)
    for idx:=1 to K do
    begin
        X[idx]:= idx-1;
    end;
    (* Process *)
    ketqua:= TimSoKaprekar(X);
    idx:= K;
    while(idx >= K-1) do
    begin
        if(X[idx] < B-K+ idx + 1) then // gia tri tai X[idx] nho hon max tai vi tri idx
        begin
            X[idx]:= X[idx] + 1;
            TimSoKaprekar(X);
        end;
        (*
        begin
            X[idx]:= X[idx] + 1; // tăng giá trị cho đến khi đạt max
            for j:=idx+1 to K-1 do
                X[j]:= X[j-1] + 1;
            TimSoKaprekar(X);

            idx:=K;
        end;
        *)
        idx:= idx-1;
    end;
    
    (* Output *)
    assign(myfile, 'kaprekar.out');
    rewrite(myfile);
    write(myfile, ketqua);
    close(myfile);
end.