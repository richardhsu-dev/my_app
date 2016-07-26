require "rubypython"

RubyPython.start

=begin
cPickle = RubyPython.import("cPickle")
s = "cPickled String"
dumped = cPickle.dumps(s)
loaded = cPickle.loads(dumped)
puts loaded
=end

main = RubyPython.import("__main__")

RubyPython::Python.PyRun_SimpleString <<-PYTHON

import matplotlib
import numpy as np
import deconvScript as ds

print np.array([1,2,3])

def my_mult(x, y):
  return x + y

def new(y):
  return y+10

def run_ds():
  return ds.tester()

PYTHON

#puts main.my_mult(10, 20).rubify
#puts main.new(40).rubify
puts main.run_ds().rubify


RubyPython.stop
