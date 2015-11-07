decl
    integer create,ex,pid1,pid2,pid,con,close,c,c1,c2,open,open1,open2,w1,w2,r1,r2, limit, limit1, limit2;	
	string filename,filename1,filename2;
enddecl

integer main()
{
    
    pid1=Fork();
    if(pid1!=-2) then
        pid2=Fork();
        if(pid2!=-2) then
            //print("pid:");
            //print(pid);
            //print(pid1);
            //print(pid2);
            //print("END");
            w1=Wait(pid1);
            w2=Wait(pid2);
        endif;
   endif;
	pid=Getpid();
   if((pid1==-2 || pid2==-2)) then
       if(pid <= 6) then
            ex=Exec("final.xsm");     
       else
            ex=Exec("leaf.xsm");
       endif;
   endif;
   
   print("filename1");
   read(filename1);
   
   print("filename2");
   read(filename2);
 
   print("filename");
   read(filename);
   
   create=Create(filename);
   open=Open(filename);
   open1=Open(filename1);
   open2=Open(filename2);
   
   print("enter the limit");
   read(limit);
   print("enter the limit1");
   read(limit1);
   print("enter the limit2");
   read(limit2);
   c1=0;
   c2=0;
   c=0;
   
   con=Read(open1,r1);
   con=Read(open2,r2);
   
   while(c < limit) do
       if(r1 < r2 || c2>=limit2) then
            con=Write(open,r1);
            c1 = c1 + 1;
            con = Read(open1,r1);
       endif;
       if(r1 > r2 || c1>=limit1) then
            con=Write(open,r2);
            c2 = c2 + 1;
            con = Read(open2,r2);
       endif;
       c = c + 1;
   endwhile; 
   
   close=Close(open);
   close=Close(open1);
   close=Close(open2);
   
   return 0;
}
