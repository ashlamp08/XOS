decl
	integer pid,i,s;
enddecl
integer main()
{
	print ("Before Fork");

	i = 0;

	pid = Fork();
	pid = Fork();
	pid = Fork();
	pid = Fork();
	pid = Fork();


		if(pid == -2) then
			s=Exec("ex10.xsm");
		endif;
		i=i+1;
	

	s=Wait(pid);
	return 0;
}
