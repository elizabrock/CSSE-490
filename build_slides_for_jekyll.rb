unless ENV["SKIP_BUILD"]
  Dir.glob('slides/*/*.md').each do |filename|
    puts "About to convert #{filename}"
    out_dir = "dist/" + filename.scan(/slides\/[^\/]*\/(.*).md/).first[0] + "/"
    # `mkdir -p #{out_dir}`
    command = "npm run build #{filename} -- --out #{out_dir} --base /#{File.dirname(filename)}/#{out_dir}"
    puts "About to run: #{command}"
    success = system(command)
    if !success
      console.log("Aborting because previous command failed")
      exit 1
    end
  end
end

def transform(filename, jekyll_path, jekyll_title, jekyll_unit)
  # Skeleton lifted from https://stackoverflow.com/a/8624335/35345
  original_file = filename
  new_file = original_file + '.markdown'
  File.open(new_file, 'w') do |file|
    file.puts '---'
    file.puts "layout: slides"
    file.puts "permalink: #{jekyll_path}"
    file.puts "title: #{jekyll_title}"
    file.puts "unit: \"#{jekyll_unit}\""
    file.puts '---'
    file.puts '{% raw %}'
    File.foreach(original_file) do |li, index|
      unless index == 0
        file.puts li
      end
    end
    file.puts '{% endraw %}'
  end
end

def make_that_name_pretty(name)
  name.gsub("-", " ").gsub(/\w+/){ |word| word.capitalize }.gsub("Tdd", "TDD").gsub("Bdd", "BDD").gsub("Rest", "REST")
end

Dir.glob('slides/**/dist/**/index.html').each do |filename|
  puts "About to prepare #{filename} for Jekyll"
  unit, deck = filename.match(/slides\/(.*)\/dist\/(.*)\/index.html/).captures
  jekyll_path = "/slides/#{unit}/#{deck}"
  puts "  Jekyll path: #{jekyll_path}"
  jekyll_title = make_that_name_pretty(deck)
  puts "  Jekyll title: #{jekyll_title}"
  jekyll_unit = make_that_name_pretty(unit).gsub(/Unit (\d+)(.*)/){ |__| "Unit #{$1}: #{$2}" }
  puts "  Jekyll Unit: #{jekyll_unit}"
  transform(filename, jekyll_path, jekyll_title, jekyll_unit)
end
