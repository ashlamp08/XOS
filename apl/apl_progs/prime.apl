decl
integer n;
integer prime(integer n);
enddecl

integer prime(integer n)
{
	integer i,j,count;

	i = 2;

	while (i<=n) do
		j = 2;
		count = 0;
		while(j<i) do
			if(i%j == 0) then
				count = 1;
				break;
			endif;
			j = j+1;
		endwhile;
		if(count == 0) then
			print(i);
		endif;
		i = i+1;
	endwhile;

	return 1;
}

integer main()
{
	integer temp;
	print("Enter n: ");
	read(n);
	temp = prime(n);
	return 0;
}
		
