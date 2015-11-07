integer main()
{
    integer a, b;
    breakpoint;
    a = Getpid();
    b = Fork();
    if(b == -2) then
        a = Getppid();
    endif;
    print("PID");
    print(a);

    return 0;
}
