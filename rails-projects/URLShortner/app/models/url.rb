class Url < ActiveRecord::Base



	def self.randomlink(size)
		#n defines amount of letter to use	
  			charset = %w{ a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
  			(0...size).map{ charset.to_a[rand(charset.size)] }.join
		

	end
end
