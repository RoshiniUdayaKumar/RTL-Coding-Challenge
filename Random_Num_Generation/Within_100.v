//How to generate random number less than 100
module random_number_tb();
   
  int rand_val; //32-bit signed values (both pos and neg values)
  
  //randomization using $random
  initial begin 
    for(int i=0; i<10; i++) begin
    rand_val = $random % 100; //generates values from -99 to +99 
    
    //display random values 
      $display("i= %0d, rand_val %0d",i, rand_val);
    end
  end
  
endmodule

--------------------------------------------------------------------------------------------
//How to generate random number less than 100
module random_number_tb();
   
  int rand_val; //32-bit signed values (both pos and neg values)
  
  //randomization using $random
  initial begin 
    for(int i=0; i<10; i++) begin
    rand_val = $random % 100; //generates values from -99 to +99 
      
      //to convert to only positive random values 
      if(rand_val<0) begin 
rand_val=-rand_val;
      end
    
    //display random values 
      $display("i= %0d, rand_val %0d",i, rand_val);
    end
  end
  
endmodule
