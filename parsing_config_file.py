#!/usr/bin/env python
# -*- coding: utf-8 -*-
from sys import exit
from yaml import load

file_cfg = 'configure_file'

def parsing_config_file(config_file):
    """docstring for parsing_config_file"""
    print("Inside in the parsing)config_file function")
    with open(config_file,'r') as cfg_file:
        cfg = load(cfg_file)
    return(cfg)
