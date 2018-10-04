Given(/the following movies exist:$/) do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create!(movie)
    end
end

Then(/^the director of "(.*)" should be "(.*)"$/) do |movie_title, movie_director|
    key=Movie.where(title: "#{movie_title}")
    expect(key.director).to eq movie_director
end