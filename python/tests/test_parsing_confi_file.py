import pytest
#from .. import parsing_config_file
import parsing_config_file
configure_file = 'file'

def test_parsing_config_file():
    """docstring for get_config_file"""
    result = parsing_config_file.parsing_config_file(configure_file)
    assert type(result) == dict


