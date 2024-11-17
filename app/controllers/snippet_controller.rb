require_relative '../models/snippet'

class SnippetController
  def add_snippet(title, code, tags)
    snippet = Snippet.new(title: title, code: code, tags: tags)
    if snippet.save
      puts "Snippet added successfully!"
    else
      puts "Error: #{snippet.errors.full_messages.join(', ')}"
    end
  end

  def search_snippets(query)
    results = Snippet.search(query)
    if results.any?
      results.each { |snippet| display_snippet(snippet) }
    else
      puts "No snippets found for '#{query}'."
    end
  end

  def list_snippets
    if Snippet.all.empty?
      puts "No snippets available."
    else
      Snippet.all.each { |snippet| display_snippet(snippet) }
    end
  end

  def delete_snippet(id)
    snippet = Snippet.find_by(id: id)
    if snippet&.destroy
      puts "Snippet deleted successfully!"
    else
      puts "Snippet not found."
    end
  end

  private

  def display_snippet(snippet)
    puts "\nID: #{snippet.id}"
    puts "Title: #{snippet.title}"
    puts "Tags: #{snippet.tags}"
    puts "Code:\n#{snippet.code}"
    puts "Created At: #{snippet.created_at}"
  end
end
