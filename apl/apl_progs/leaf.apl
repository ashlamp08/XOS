decl
    integer create,pid,con,close,i,open;	
	string filename;
enddecl

integer main()
{
    pid=Getpid();
    print(pid);
    breakpoint;
    print("lfilename:");
    read(filename);
    

    if(pid==7) then
        i=1;
        create=Create(filename);
        open=Open(filename);
        while(i < 10000) do
            con=Write(open,i);
            i = i + 100;
        endwhile;
        close=Close(open);
    endif;
    if(pid==8) then
        i=2;
        create=Create(filename);
        open=Open(filename);
        while(i < 10000) do
            con=Write(open,i);
            i = i + 100;
        endwhile;
        close=Close(open);
    endif;
    if(pid==9) then
        i=3;
        create=Create(filename);
        open=Open(filename);
        while(i < 10000) do
            con=Write(open,i);
            i = i + 100;
        endwhile;
        close=Close(open);
    endif;
    if(pid==10) then
        i=4;
        create=Create(filename);
        open=Open(filename);
        while(i < 10000) do
            con=Write(open,i);
            i = i + 100;
        endwhile;
        close=Close(open);
    endif;
    if(pid==11) then
        i=5;
        create=Create(filename);
        open=Open(filename);
        while(i < 10000) do
            con=Write(open,i);
            i = i + 100;
        endwhile;
        close=Close(open);
    endif;
    if(pid==12) then
        i=6;
        create=Create(filename);
        open=Open(filename);
        while(i < 10000) do
            con=Write(open,i);
            i = i + 100;
        endwhile;
        close=Close(open);
    endif;
    if(pid==13) then
        i=7;
        create=Create(filename);
        open=Open(filename);
        while(i < 10000) do
            con=Write(open,i);
            i = i + 100;
        endwhile;
        close=Close(open);
    endif;
    if(pid==14) then
        i=8;
        create=Create(filename);
        open=Open(filename);
        while(i < 10000) do
            con=Write(open,i);
            i = i + 100;
        endwhile;
        close=Close(open);
    endif;
    return 0;
}
