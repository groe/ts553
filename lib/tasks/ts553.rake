namespace :ts553 do
  desc "Test thinking-sphinx issue #553"
  task :test => :environment do
    res = ThinkingSphinx.search("", :classes => [Article])

    puts "All articles: #{res.size}"

    res = ThinkingSphinx.search("", :classes => [Book])

    puts "All books: #{res.size}"

    res = ThinkingSphinx.search("", :classes => [Article, Book])

    puts "All articles & books: #{res.size}"
  end
end
