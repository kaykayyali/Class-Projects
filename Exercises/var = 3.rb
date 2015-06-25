var = 3

text_block = lambda do
             |var, multiple, text|
                  
                  if multiple.call(var, multiple)
                        print text + " "
                    
                    end
                  
                    
             end




multiple = lambda do
                |var, multiple|     if  var % multiple == 0
                                        return true
                                    else
                                        return false
                                    end
                                end
                                
text_block(var, 3, "fizz")

text_block(var, 5, "buzz")


