Given("the following articles exist in the database") do |table|
  table.hashes.each do |article|
    Article.create(article)
  end
end
