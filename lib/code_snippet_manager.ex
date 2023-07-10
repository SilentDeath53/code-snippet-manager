defmodule CodeSnippetManager do
  @moduledoc false

  defstruct name: nil, language: nil, code: nil

  def new_snippet(name, language, code) do
    %__MODULE__{name: name, language: language, code: code}
  end

  def add_snippet(snippet, snippet_list \\ []) do
    [snippet | snippet_list]
  end

  def filter_snippets(snippet_list, language) do
    Enum.filter(snippet_list, fn snippet -> snippet.language == language end)
  end

  def search_snippets(snippet_list, keyword) do
    Enum.filter(snippet_list, fn snippet -> String.contains?(snippet.code, keyword) end)
  end
end
