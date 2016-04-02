namespace :search_suggestions do
  desc "Generate search suggestions from images"
  task :index => :environment do
    SearchSuggestion.index_images
  end
end