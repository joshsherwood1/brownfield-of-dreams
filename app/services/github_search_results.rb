class GithubSearchResults

  def repos
    response = conn.get("/user/repos", { :access_token => ENV['GITHUB_API_KEY'] }) # .json ???
    repo_data = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.github.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
