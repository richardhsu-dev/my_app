module TestingHelper

  def stringBuilder(original, tag, argument)
    return original + ' -' + tag + ' ' + argument
  end

  def runDsAlt(imageFile, layer)
    Dir.chdir '/home/ub03723/Desktop/caffe-home/caffe_mariolew/examples' do
      system_command = 'python deconvScript.py'
      system_command = stringBuilder(system_command, 'i', '"' + imageFile + '"')
      system_command = stringBuilder(system_command, 'l', '"' + layer + '"')
      puts system_command
      system(system_command)
    end
  end

end