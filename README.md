# wagtail-codyhouse-base

Download Codyframe

```
./frontend.sh
npm install
```

## Virtual Env
```
pipenv shell
```

## Install wagtail
```
pip install wagtail
wagtail start config .
./manage.py migrate
./manange.py createsuperuser
```

## Requirements
```
pip freeze > requirements.txt
```

## Tidy up
```
rm LICENSE
rm README.md
rm .dockerignore
rm Dockerfile
rm fontend.sh
```