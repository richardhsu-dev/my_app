module MainHelper

  # Calls the testingScript.py in /workspace directory
  # Not used as of now.
  def callScript
    # exec("python /home/ub03723/workspace/testingScript.py")
    result = `python /home/ub03723/workspace/testingScript.py`
    return result
  end

end
