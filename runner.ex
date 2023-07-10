# Create new snippets
snippet1 = CodeSnippetManager.new_snippet("Snippet 1", "Elixir", "IO.puts(\"Hello, World!\")")
snippet2 = CodeSnippetManager.new_snippet("Snippet 2", "Python", "print('Hello, World!')")
snippet3 = CodeSnippetManager.new_snippet("Snippet 3", "Ruby", "puts 'Hello, World!'")

# Add snippets to the manager
snippet_list = CodeSnippetManager.add_snippet(snippet1)
snippet_list = CodeSnippetManager.add_snippet(snippet2, snippet_list)
snippet_list = CodeSnippetManager.add_snippet(snippet3, snippet_list)

# Filter snippets by language
elixir_snippets = CodeSnippetManager.filter_snippets(snippet_list, "Elixir")
ruby_snippets = CodeSnippetManager.filter_snippets(snippet_list, "Ruby")

# Search snippets by keyword
keyword = "World"
matching_snippets = CodeSnippetManager.search_snippets(snippet_list, keyword)

IO.inspect(elixir_snippets)
IO.inspect(ruby_snippets)
IO.inspect(matching_snippets)
