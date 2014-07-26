class Demo::AllpageController < ApplicationController
  layout :set_layout
  
  # def index 
    # render text: "hi fuck you~"
  # end

  def timeline

    # render text: "hello"
    # render file: "views/demo/allpage/timeline.html.erb"
    # render template: "demo/timeline.html.erb"
  end

  def set_layout
    "demopage"
  end

end
