var = 48

multiple = lambda do
                |var, multiple|    

                 if  var % multiple == 0
                                        return true
                                    else
                                        return false
                                    end
                                end




text_block = lambda do
    |var, multi, text|
         
         if multiple.call(var, multi)
               print text + " "
           
           end
         
           
    end





                                
text_block.call(var, 2, "fizz")

text_block.call(var, 4, "buzz")

text_block.call(var, 6, "boom")

text_block.call(var, 12, "blast")


