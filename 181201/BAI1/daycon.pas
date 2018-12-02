program daycon;
(*Khai báo biến*)
var file_inp, file_out:text;
i,j, N, count, so_day_con, do_dai_max, bat_dau_day: integer; (* N <= 10000*)
numbers: array[1..10000] of integer;
begins: array[1..10000] of integer;
ends: array[1..10000] of integer;

(*Chương trình chính*)
begin
    (*INPUT - BEGIN*)
    assign(file_inp, 'daycon.inp');
    reset(file_inp);
    readln(file_inp, N);
    for i:=1 to N do 
        read(file_inp, numbers[i]);
    close(file_inp);
    (*INPUT - END*)
    (*PROCESS - BEGIN*)
    so_day_con := 0; // so day con co do dai max
    do_dai_max := 0;
    
    bat_dau_day := 1;
    count := 1; // dem so phan tu cua day thoa mam tang dan
    begins[1] := 1;
    ends[1] := 1;
    for i := 2 to N do
    begin
        if numbers[i] >= numbers[i-1] then
            count := count + 1
        else
        begin
            if count > do_dai_max then
            begin
                do_dai_max := count;
                so_day_con := 1;
                begins[so_day_con] :=  bat_dau_day;
                ends[so_day_con] := i-1;
            end
            else if count = do_dai_max then
            begin
                so_day_con := so_day_con + 1;
                begins[so_day_con] :=  bat_dau_day;
                ends[so_day_con] := i-1;
            end;
            bat_dau_day := i;
            count := 1;
        end;
        (* Kiem tra day cuoi cung*)
        if (i=N) and (count = do_dai_max) then
        begin
            so_day_con := so_day_con + 1;
            begins[so_day_con] :=  bat_dau_day;
            ends[so_day_con] := i;
        end;
    end;
    (*PROCESS - END*)
    (*OUTPUT - BEGIN*)
    assign(file_out, 'daycon.out');
    rewrite(file_out);
    write(file_out, do_dai_max);
    for i:= 1 to so_day_con do
    begin
        writeln(file_out);
        for j:= begins[i] to ends[i] do
            write(file_out, numbers[j], ' ');
    end;
    close(file_out);
    write('DONE !!!');
    (*OUTPUT - END*)
end.