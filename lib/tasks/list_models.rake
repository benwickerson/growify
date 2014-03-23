desc "Lists project models"
task list_models: :environment do
  models = Dir["#{Rails.root}/app/models/**/*.rb"].map do |f|
    f.chomp('.rb').camelize # works with namespaces e.g. Foo::Bar::MyClass
  end
  puts models
end

