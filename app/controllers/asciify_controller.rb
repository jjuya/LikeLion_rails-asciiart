class AsciifyController < ApplicationController
  def index
  end

  def show
    require 'artii'
    
    input_content = params[:content]
    
    a = Artii::Base.new(font: params[:font])

    @result = a.asciify(input_content)
    
  end
end
