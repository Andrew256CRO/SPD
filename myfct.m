function fa =myfct(x,nr_int,start,stop)
    pas_interval=(stop-start)/nr_int;
    for i=1:nr_int
        left=start+(i-1)*pas_interval;
        right=start+i*pas_interval;
        fa(i)=sum(x>=left & x<=right);
    end
end

