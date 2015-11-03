integer main()
{
	print(1);
	print(3);
	print(5);
	integer x;	
	x = Exec("even.xsm");

	if(x == -1) then
		print("Failure");	
	endif;
	
	return 0;
}
