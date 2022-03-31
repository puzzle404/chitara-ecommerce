class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @sandals = Sandal.first(4).reverse

    @sandal1 = @sandals[0]
    @sandal2 = @sandals[1]
    @sandal3 = @sandals[2]
    @sandal4 = @sandals[2]

  end
end
