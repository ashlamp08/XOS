decl
	integer status;
	string a;
enddecl
integer main()
{
	read(a);
	status = Delete(a);
	print(status);
	return 0;
}
