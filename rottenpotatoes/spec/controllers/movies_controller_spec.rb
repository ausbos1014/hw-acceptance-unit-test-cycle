require 'rails_helper'

describe MoviesController do
    describe 'Find with Same Director' do
            it "should find all movies with the same director" do
            
            @movie = Movie.create!(:title => "10 Things I Hate About You", :rating => "PG-13", :director => "Gil Junger", :release_date => Time.now)
        
            expect(Movie).to receive(:find).with("#{@movie.id}").and_return(@movie)
            expect(Movie).to receive(:where).with(:director => @movie.director)
       
            get :search_director, :id => @movie.id
                    
            expect(response).to render_template(:search_director)
        end
    end
end