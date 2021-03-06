#!/bin/bash

# Copyright 2012:
#      Alex Russell <slightlyoff@chromium.org>
#
# Run it through uglify.

python post.py ../src/async-local-storage.js > ../bin/async-local-storage.min.js

python post.py ../third_party/Promises/polyfill/src/Promise.js \
               ../src/async-local-storage.js \
                  > ../bin/async-local-storage-with-Promise.min.js
