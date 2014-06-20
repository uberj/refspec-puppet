#!/bin/bash

# A wrapper for generating dependencies. Make sure to rm that lock file!
rm Puppetfile.lock
librarian-puppet install --verbose
