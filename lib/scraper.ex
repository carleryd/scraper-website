defmodule Scraper do

  def start(url) do
    article = Scrape.article url

    if article.image != nil do
      IO.puts article.image
    else
      raise "NO_IMAGE_IN_URL"
    end

  end

end
