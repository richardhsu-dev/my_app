module TestingHelper

  def stringBuilder(original, tag, argument)
    return original + ' -' + tag + ' ' + argument
  end

  def runDsAlt(imageFile, layer, topk)
    Dir.chdir '/home/ub03723/Desktop/caffe-home/caffe_mariolew/examples' do
      system_command = 'python deconvScript.py'
      system_command = stringBuilder(system_command, 'i', '"' + imageFile + '"')
      system_command = stringBuilder(system_command, 'l', '"' + layer + '"')
      system_command = stringBuilder(system_command, 't', topk)
      system_command = stringBuilder(system_command, 'la', '')
      puts system_command
      system(system_command)
    end
  end

  def runSaliency(imageFile, category)
    Dir.chdir '/home/ub03723/Desktop/caffe-home/caffe/examples/imageAnalyzer' do
      system_command = 'python runSaliency.py ' + '"' + imageFile + '" ' + category
      puts system_command
      system(system_command)
    end
  end

  def runCompare(firstImageFile, secondImageFile, layer, topk)
    Dir.chdir '/home/ub03723/Desktop/caffe-home/caffe_mariolew/examples/img_topk_compare/img_topk_compare' do
      system_command = 'python __init__.py'
      system_command = stringBuilder(system_command, 'f', '"' + firstImageFile + '"')
      system_command = stringBuilder(system_command, 's', '"' + secondImageFile + '"')
      system_command = stringBuilder(system_command, 't', topk)
      system_command = stringBuilder(system_command, 'l', layer)
      puts system_command
      system(system_command)

    end
  end

end