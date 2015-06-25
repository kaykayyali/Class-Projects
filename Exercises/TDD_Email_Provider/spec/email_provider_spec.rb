require_relative("../lib/Word_Checker")
require 'pry'

RSpec.describe("Subject Filter") do

	let(:provider) do
  	email = "test@test.com"
    subjects = ["Let's sync tomorrow", "urgent: we need to sync: need your reply", "Hey",""]
    instance_double("EmailProvider.new", { :email => email, :subjects => subjects })
  end

	let(:provider2) do
  	email = "test@test.com"
    subjects = ["Let's sync tomorrow", "urgent: we need to sync", "Dinner"]
    instance_double("EmailProvider.new", { :email => email, :subjects => subjects })
  end
	

	it "Returns true if Wordchecker detects all of ['sync', 'urgen','reply']" do 
		checker = Word_Checker.new(provider)
		expect(checker.check_for_words(['sync', 'urgent','reply'])). to be true
	end

	it "Returns true if Wordchecker detects all of ['sync', 'urgen','reply']" do 
		checker = Word_Checker.new(provider2)
		expect(checker.check_for_words(['sync', 'urgent','reply'])). to be false
	end



end
