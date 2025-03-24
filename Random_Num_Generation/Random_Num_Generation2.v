//generate random numbers between 40 to 50 
module random_number();
  int rand_val; 
  
  initial begin
    rand_val=($random %10);
    for (int i=0; i<10; i++) begin
      
      //to overcome negative values 
      if(rand_val<0) begin 
        rand_val=-rand_val;
      end
      
      rand_val= rand_val %10 + 41;
     
    $display("Random values between 40 to 50 are: %0d", rand_val);
    end
  end
endmodule
