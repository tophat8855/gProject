class PagesController < ApplicationController
  def bart
    @trackmiles = CSV.read('app/assets/trackdistance.csv')
  end

  def results
  end
end
