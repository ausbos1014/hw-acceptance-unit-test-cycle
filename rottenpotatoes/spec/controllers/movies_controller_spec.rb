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
        
    describe "creation of new movie" do
        it "should add a new movie to the list" do
            expect { post :create, :movie => {:title => "Title", :release_date => "Release Date", :rating => "Rating"}}.to change(Movie, :count).by(1)
        end
    end
end