require "imdb"

class Display






			def display_data(movie_names, movie_ratings)
				i = 10
				print movie_ratings
				movie_ratings.count
                puts ""
                                
                loop do 
                
                print "|"

                        if movie_ratings[0] >= i
                        print "*"
                        else 
                        print " "
                        end

                        print "|"
                        


                           if movie_ratings[1] >= i
                        print "*"
                        else 
                        print " "
                        end
                        print "|"
                           if movie_ratings[2] >= i
                        print "*"
                        else 
                        print " "
                        end
                        print "|"
                           if movie_ratings[3] >= i
                        print "*"
                        else 
                        print " "
                        end
                        print "|"
                            if movie_ratings[4] >= i
                        print "*"
                        else 
                        print " "
                        end
                        print "|"
                            if movie_ratings[5] >= i
                        print "*"
                        else 
                        print " "
                        end
                        print "|"
                            if movie_ratings[6] >= i
                        print "*"
                        else 
                        print " "
                        end
                        print "|"
                    
                    
                    i = i - 1
                    puts ""
                    break if i == 0
                end
                puts "---------------"
                puts "|1|2|3|4|5|6|7|"

                movie_names.each do |item|
                    puts item
                end
            end



end
