class Demo::AllpageController < ApplicationController
  layout :set_layout
  
  def index 
    render text: "you should go to specfic page"
  end

  def timeline
    # means both load_timeload.css & load_timeload.js script
    @assets_need = 'load_timeline'
  end

  def home1
    @assets_need = 'load_home1'
  end

  def products
    @assets_need = 'load_products'
  end

  def set_layout
    "demopage"
  end

end
