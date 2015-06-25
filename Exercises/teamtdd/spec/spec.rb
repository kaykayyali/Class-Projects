require_relative("POI")
require_relative("Sort")
describe "POISorter" do

let(:poi1) do 
POI.new("Starbucks", 20, ['Great Place']) #1
end

let(:poi2) do 
POI.new("Dunkin Donuts", 56, ['Not my favorite', 'I wish there were more options', 'Very dirty', 'They take too long', 'Employees are friendly', '3/10']) #6
end

let(:poi3) do 
POI.new("McDonalds", 13, ['Shitty ass coffee!', 'crappy food']) #2
end

let(:poi4) do 
POI.new("Macys", 105, ['Too Expensive', 'Large selection', 'I would probably come here again', 'Customer service is great', "Other Comment"]) #5
end

let(:poi5) do 
POI.new("Panther Square", 37, ['Great Place', 'This place sucks', '2/10', 'Not worth the money']) #4
end

let(:sorter) {Sort.new([poi1, poi2, poi3, poi4, poi5])}

    it "Responds with ['Macys', 'Dunkin Donuts', 'Panther Square', 'Starbucks', 'McDonalds']" do 
            predicted_array = ['Macys', 'Dunkin Donuts', 'Panther Square', 'Starbucks', 'McDonalds']
		expect(sorter.sort_by_visits)). to match_array(predicted_array)
	end
	
	it "Responds with ['Dunkin Donuts', 'Macys', 'Panther Square', 'McDonalds', 'Starbucks' ]" do
        predicted_array = ['Dunkin Donuts', 'Macys', 'Panther Square', 'McDonalds', 'Starbucks' ]
		expect(sorter.sort_by_comments)). to match_array(predicted_array)
	end
	
	 it "Responds with [Panther Square', 'Macys', 'Starbucks', 'McDonalds', 'Dunkin Donuts']" do 
        predicted_array = ['Panther Square', 'Macys', 'Starbucks', 'McDonalds', 'Dunkin Donuts']
		expect(sorter.sort_by_a_in_name)). to match_array(predicted_array)
	end
	
	 it "Responds with ['Dunkin Donuts', 'Macys', 'Panther Square', 'McDonalds', 'Starbucks' ]" do 
        predicted_array = ['Dunkin Donuts', 'Macys', 'Panther Square', 'McDonalds', 'Starbucks' ]
		expect(sorter.sort_by_average_comments)). to match_array(predicted_array)
	end
	
end