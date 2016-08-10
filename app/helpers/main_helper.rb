module MainHelper
  include TestingHelper

  def showInputImage
    return params[:setup][:image]
  end

  def showInputEnding
    return params[:setup][:ending]
  end

  def showInputTopK
    return params[:setup][:topk]
  end

  def showInputImageSaliency
    return params[:saliency][:image]
  end

end
