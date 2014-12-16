class PagesController < ApplicationController
  def bart
    @trackmiles = CSV.read('app/assets/trackdistance.csv')
  end

  def results
    @trackmiles = CSV.read('app/assets/trackdistance.csv')

    @starting_station = params["start"]
    @ending_station = params["end"]


    start_index = @trackmiles[0].index(@starting_station)
    end_index = @trackmiles[0].index(@ending_station)

    @distance = @trackmiles[start_index][end_index]

  end
end
