require 'faker'

puts 'Creating 100 articles...'

100.times do
  article = Article.new(
    title: Faker::Marketing.buzzwords,
    content: Faker::Hipster.sentences.sample
  )
  article.save!
end

puts 'All articles have been created!'
