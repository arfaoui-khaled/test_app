class MarketsController < ApplicationController
  def index
    @markets = Market.all.custom_display
    render json: @markets
  end

  def gain
    @markets = Market.all

    value_table = []
    @markets.each do |market|
      value_table << market[:value]

    end

    gain_max = 0
    for j in 0..(value_table.size - 1)
      for k in (j+1)..(value_table.size - 1)
        if gain_max < (value_table[k] - value_table[j]).abs()
          gain_max = (value_table[k] - value_table[j]).abs()
        end
      end
    end
    gain_max *= 100
    render json: gain_max

  end
end
