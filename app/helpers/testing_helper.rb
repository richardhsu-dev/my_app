module TestingHelper


  require "rubypython"

  def runDs(imageFile, ending)
    Dir.chdir "/home/ub03723/Desktop/caffe-home/caffe_mariolew/examples" do

      RubyPython.start

      main_ruby = RubyPython.import("__main__")

      RubyPython::Python.PyRun_SimpleString <<-PYTHON

import deconvScript as ds

def test_ruby_python(v1, v2):
  print v1, v2
  return

def test_ds():
  return ds.tester()

def run_ds(imageFile, ending):
  net, t = ds.mainScript(imageFile, ending)
  net.forward()
  print 'done forwarding'
  return str(net.blobs['conv1_1t'].data[0].max())

PYTHON
      #s = main_ruby.test_ruby_python(imageFile, ending).rubify
      #s =  main_ruby.run_ds(imageFile, ending).rubify

      RubyPython.stop

      return s
    end


  end ## go back to root directory for this rails app

  def runDsAlt(imageFile, ending)
    Dir.chdir "/home/ub03723/Desktop/caffe-home/caffe_mariolew/examples" do
      inputFile = File.open('tempInputFile.txt', 'w')
      inputFile.puts(imageFile)
      inputFile.puts(ending)
      inputFile.puts("")
      inputFile.close

      system("python /home/ub03723/Desktop/caffe-home/caffe_mariolew/examples/deconvScript.py")

    end


  end

end