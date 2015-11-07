integer main()
{
	integer childpid, retval;
	childpid = Fork();
	//print("out fork");
	if(childpid == -2) then
		retval = Exec("sample.xsm");
		print("here");
		print(retval);
	else
		while(childpid != -1) do
			print(childpid);
		endwhile;
	endif;

	return 0;
}

