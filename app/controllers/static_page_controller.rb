class StaticPageController < ApplicationController
  def home

    @a_biblia_digital = JSON.parse(HTTParty.get("https://www.abibliadigital.com.br/api/verses/nvi/random").body)
  end

  def books
  end

  def about
  end

  def contact
  end
end
