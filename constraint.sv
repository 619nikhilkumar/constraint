class gen;
rand int a[];

constraint y{a.size==12;}

constraint x{foreach(a[i])
a[i]==(i+2)/2;}

endclass

module top;
gen h;
initial begin
h=new();
h.randomize();
$display("the value of a is %0p",h.a);
end
endmodule