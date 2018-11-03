program FileHandling;

var 
    file_name, line: string;
    my_file: text;
    idx, n: integer;
    numbers: array of integer;
(* Chuong trinh chinh*)
begin
    file_name := 'file_handling.txt';
    assign(my_file, file_name);
    reset(my_file);
    idx:=-1;
    if not eof(my_file) then
        begin
            readln(my_file, n);
            setlength(numbers, n);
            while not eof(my_file) do
            begin
                inc(idx);
                read(my_file, numbers[idx]);
            end;
            for idx:=0 to n-1 do
                write(numbers[idx], ' ');
        end;
    
    (*file_name:= 'exp01.txt';
     // Mo file va viet lai 
    assign(my_file, file_name);
    rewrite(my_file); 
    writeln(my_file, 4);
    write(my_file, 'Hello World');
    close(my_file);
    *)

    (* Mo file va bo sung them vao cuoi van ban
    assign(my_file, file_name);
    append(my_file);
    writeln('Append new line');
    close(my_file);

    assign(my_file, file_name);
    reset(my_file);
    
    while not eof(my_file) do
    begin
        readln(my_file, line);
        writeln(line);
    end;

    close(my_file);
     *)
end.
