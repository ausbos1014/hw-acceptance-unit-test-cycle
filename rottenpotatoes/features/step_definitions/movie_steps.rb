Given(/the following movies exist:$/) do |movies_table|
    movies_table.hashes.each do |movie|
        Movie.create!(movie)
    end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |title, director|
    expect(Movie.find_by_title(title).director).to eq director
end

When(/^I select checkbox "(.*?)"$/) do |cb|
  check(cb)
end
