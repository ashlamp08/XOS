integer main()
{
	integer pid;
	print("Before Fork");
	pid = Fork();
	print("Afer Fork");
	return 0;
}
