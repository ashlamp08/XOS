integer main()
{
	
	print("->");
	string a;
	read(a);

	if(a=="exit") then
		Exit();
	endif;

	integer x;
	x = Fork();
//	print("split");
	integer p;

	if(x==-2) then
	//	print("in child");
		p = Exec(a);
	//	print(p);
	else
	//	print("in parent");
		p = Wait(x);
		p = Exec("shell.xsm");
	endif;

	return 0;
} 
