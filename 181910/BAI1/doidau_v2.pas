program doidau;
uses crt;
(* khai bao bien *)
var temp, prev, current, count: integer;
var myfile: text;
(* chuong trinh chinh *)
begin
    (* input *)
    assign(myfile,'doidau.inp');
    reset(myfile);
    count:=0; prev:=0; current:=0;
    
    while true do
    begin
        read(myfile, temp);
        if (temp = 0) then break;

        prev:= current;
        current:=temp;
        if(prev * current < 0) then count:= count + 1;
    end;
    close(myfile);

    (* output *)
    assign(myfile, 'doidau.out');
    rewrite(myfile);
    write(myfile, count);
    close(myfile);
end.
(* ket thuc chuong trinh chinh *)