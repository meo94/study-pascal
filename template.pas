program template;

(*Khai báo biến*)
var file_inp, file_out:text;
i, N: integer; (* N <= 10000*)

(*Chương trình chính*)
begin
    (*INPUT - BEGIN*)
    assign(file_inp, 'template.inp');
    reset(file_inp);
    readln(file_inp, N);
    close(file_inp);
    (*INPUT - END*)
    (*PROCESS - BEGIN*)

     (*PROCESS - END*)
    (*OUTPUT - BEGIN*)
    assign(file_out, 'template.out');
    rewrite(file_out);
    writeln(file_out, N);
    close(file_out);
    writeln('DONE !!!');
    (*OUTPUT - END*)
end.