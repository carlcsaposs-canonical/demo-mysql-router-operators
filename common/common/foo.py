import tenacity
from importlib.metadata import version
import requests

def bar():
    return requests.__version__
