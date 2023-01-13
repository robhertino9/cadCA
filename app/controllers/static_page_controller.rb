class StaticPageController < ApplicationController
  def home
    @dog_fact = JSON.parse(HTTParty.get("https://dog-api.kinduff.com/api/facts?number=1").body)
  end

  def books
  end

  def about
    @a_biblia_digital = JSON.parse(HTTParty.get("https://www.abibliadigital.com.br/api/verses/nvi/random").body)
  end

  def contact
  end
end
