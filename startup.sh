
#!/bin/bash

# gets codyhouse-framework and extract
wget https://github.com/CodyHouse/codyhouse-framework/archive/master.zip && unzip master.zip \
&&  cd codyhouse-framework-master \
&& rm .gitignore && rm gulpfile.js && rm LICENSE.md && rm README.md \
&& mkdir main/assets/js/components \
&& cd .. && mv main _frontend \
&& mv codyhouse-framework-master/** . \
&& rm -R codyhouse-framework-master \
&& rm master.zip \

# set up wagtail project in root
python -m venv venv && source venv/bin/activate \
&& pip install wagtail \
&& wagtail start config . \
&& python manage.py migrate \
&& echo "from django.contrib.auth import get_user_model; get_user_model().objects.create_superuser('admin', '', 'changeme')" | python3 manage.py shell \
&& pip freeze > requirements.txt \
&& rm .dockerignore && rm Dockerfile \

# install dev dependancies
npm install

# final cleanup
rm LICENSE && rm README.md