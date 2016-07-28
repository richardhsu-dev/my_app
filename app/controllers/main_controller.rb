class MainController < ApplicationController
  include TestingHelper
  def action1
    @setup = Setup.new
  end

  def action2

  end

  def run
    puts "params[image]: ", params[:setup][:image]
    puts "params[ending]: ", params[:setup][:ending]


    runDs(params[:setup][:image], params[:setup][:ending])
  end
end
