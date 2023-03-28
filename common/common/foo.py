import tenacity
from importlib.metadata import version

def bar():
    return version("tenacity")
