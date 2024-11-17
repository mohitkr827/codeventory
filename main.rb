require_relative 'config/environment'
require_relative 'app/controllers/snippet_controller'

controller = SnippetController.new

loop do
  puts "\n=== Code Snippet Manager ==="
  puts "1. Add a Snippet"
  puts "2. Search Snippets"
  puts "3. List All Snippets"
  puts "4. Delete a Snippet"
  puts "5. Exit"
  print "Choose an option: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter a title: "
    title = gets.chomp
    print "Enter the code snippet: "
    code = gets.chomp
    print "Enter tags (comma-separated): "
    tags = gets.chomp
    controller.add_snippet(title, code, tags)
  when 2
    print "Enter a keyword or tag to search: "
    query = gets.chomp
    controller.search_snippets(query)
  when 3
    controller.list_snippets
  when 4
    print "Enter the ID of the snippet to delete: "
    id = gets.chomp.to_i
    controller.delete_snippet(id)
  when 5
    puts "Goodbye!"
    break
  else
    puts "Invalid option. Please try again."
  end
end
