class MainController < ApplicationController
  include TestingHelper

  def home
    @setup = Setup.new
  end

  def run
    puts "params[image]: ", params[:setup][:image]
    puts "params[ending]: ", params[:setup][:ending]
    runDsAlt(params[:setup][:image], params[:setup][:ending])
    #puts runDs(params[:setup][:image], params[:setup][:ending])
  end
end
