program hugo;

(*Khai báo biến*)
var file_inp, file_out:text;
i,j, N, x, y, z, path_len: integer;
graph: array[1..100] of array[1..100] of integer;

free: array[1..100] of boolean;
path: array[1..100] of integer;

procedure ClearFree(var free: array of integer);
begin
    for i:= 1 to N do
        free[i]:= 1;
end;

(*x, y, z
  z: độ dài quãng đường đi giữa x và y <= 100
  z=0 phải vượt sông
  z <> 0 độ dài đường đi bộ
*)

procedure FindPath(var path_len: integer, var path: array of integer)
var boolean free;
begin
    for i:= 1 to N do
    begin
        free:=true;
        for j:=1 to path_len do
            if i=path[j] 
            begin
                free:=false; 
                break;
            end;
        if free and (graph[path[path_len], i] <> -1) then
    end;
    
end;

(*Chương trình chính*)
begin
    (*INPUT - BEGIN*)
    assign(file_inp, 'hugo.inp');
    reset(file_inp);
    readln(file_inp, N);
    for i:= 1 to N do 
        for j:=1 to N do
            graph[i,j] := -1;
    while not eof(file_inp) do
    begin
        read(file_inp, x); read(file_inp, y); readln(file_inp, z);
        graph[x,y]:= z;
        graph[y,x]:= z;
    end;
    close(file_inp);
    (*INPUT - END*)
    (*PROCESS - BEGIN*)
    for i:= 1 to N do
        for j:= 1 to N do
            if graph[i, j] <> -1 then writeln(i,' ', j, ' ', graph[i,j]);
    
    end;
    (*PROCESS - END*)
    (*OUTPUT - BEGIN*)
    assign(file_out, 'hugo.out');
    rewrite(file_out);
    writeln(file_out, N);
    close(file_out);
    writeln('DONE !!!');
    (*OUTPUT - END*)
end.