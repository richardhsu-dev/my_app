class MainController < ApplicationController
  include TestingHelper

  def home
    @setup = Setup.new
  end

  def run
    topk = params[:setup][:topk]
    if params[:setup][:topk] == ''
      topk = '-1' # default: all neurons
    end
    puts 'params[image]: ', params[:setup][:image]
    puts 'params[ending]: ', params[:setup][:ending]
    puts 'params[topk]: ', params[:setup][:topk]
    runDsAlt(params[:setup][:image], params[:setup][:ending], topk)
  end

  def saliency
    @saliency = Saliency.new
  end

  def saliency_result
    puts "looking for some action for saliency_result!"
    ## call python script
    runSaliency(params[:saliency][:image])
    puts "completed action in sailency_result controller!"
  end

  def help

  end
end
