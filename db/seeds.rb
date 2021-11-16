require 'faker'

puts 'Creating 50 articles...'

50.times do
  article = Article.new(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph(sentence_count: 5),
    image: "https://unsplash.it/400/400?image=#{rand(500)}"
  )
  article.save!
end

puts 'All articles have been created!'
