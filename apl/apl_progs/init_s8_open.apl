decl
	integer status, temp;
	string a;
enddecl
integer main()
{
	read(a);
	status = Open(a);
	print(status);
	read(a);
	temp = Write(status, a);
	print(temp);
	read(a);
	temp = Write(status, a);
	print(temp);
	temp = Close(status);
	print(temp);
	read(a);
	status = Delete(a);
	print(status);
	return 0;
}
