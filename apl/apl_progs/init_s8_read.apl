decl
	integer status, temp;
	string a;
enddecl
integer main()
{
	read(a);
	status = Open(a);
	print(status);
//	read(temp);
//	temp = Seek(status, temp);
//	print(temp);
//	read(a);
	temp = Read(status,a);
	print(temp);	
	print(a);
	temp = Read(status,a);
	print(temp);	
	print(a);
	temp = Read(status,a);
	print(temp);	
	print(a);
	temp = Close(status);
	print(temp);
	return 0;
}
