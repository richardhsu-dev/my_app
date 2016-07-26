require "rubypython"

Dir.chdir "/home/ub03723/Desktop/caffe-home/caffe_mariolew/examples" do

  RubyPython.start

  main_ruby = RubyPython.import("__main__")

  RubyPython::Python.PyRun_SimpleString <<-PYTHON

import deconvScript as ds

def test_ds():
  return ds.tester()

def run_ds():
  net, t = ds.main('images/cat.jpg', '3_3')
  net.forward()
  print 'done forwarding'
  return str(net.blobs['conv1_1t'].data[0].max())

  PYTHON

  #puts main.my_mult(10, 20).rubify
  #puts main.new(40).rubify
  puts main_ruby.test_ds().rubify
  puts main_ruby.run_ds().rubify


  RubyPython.stop

end ## go back to root directory for this rails app


