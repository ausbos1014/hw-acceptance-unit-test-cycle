require 'rails_helper'

#describe Movie, :type => :model do
#    describe "When the specified movie has a director" do
#        it "should find all movies with the same director" do
#            @movieX=Movie.create!(:director => "Wes Anderson")
#            @movieY=Movie.create!(:director => "Wes Anderson")
#            expect(Movie).to receive(:search_by_director).with(@movieX.director).and_return([@movieY, @movieX])
#        end
#    end
#    
#    describe "When the specified movie has no director" do
#        it "should not find movies by the same director" do
#            @movieX=Movie.create!(:director => "Wes Anderson")
#            @movieY=Movie.create!(:director => "Quentin Tarantino")
#            expect(Movie).to receive(:search_by_director).with(@movieX.director).and_return([])
#        end
#    end
#end
