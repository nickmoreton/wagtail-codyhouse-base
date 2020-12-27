#!/bin/bash

# gets codyhouse-framework and extract
wget https://github.com/CodyHouse/codyhouse-framework/archive/master.zip && unzip master.zip \
&&  cd codyhouse-framework-master \
&& rm .gitignore && rm gulpfile.js && rm LICENSE.md && rm README.md \
&& mkdir main/assets/js/components \
&& cd .. \
&& mv codyhouse-framework-master/** . && mv main _frontend \
&& rm -R codyhouse-framework-master \
&& rm master.zip \