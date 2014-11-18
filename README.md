Robots API
==========

URL:
```
https://api-robots.herokuapp.com
```

CORS
-----
 * allowed, utilizing https://github.com/cyu/rack-cors
 * no JSONP

Endpoints
=========

Sign In User
-----------

endpoint: `/api/sessions`
method: `POST`
headers:
 * `ACCEPT: application/json`
 * `CONTENT_TYPE: application/json`

sample json:

```json
{
  "email": "jwo@comal.io",
  "password": "yolo23456"
}
```
Creating User
------------

endpoint: `/api/users`
method: `POST`
headers:
 * `ACCEPT: application/json`
 * `CONTENT_TYPE: application/json`

sample json:

```json
{
  "user": {
    "email": "jwo@comal.io",
    "password": "yolo23456"
  }
}
```

Get Profile
-----------

endpoint: `/api/me`
method: `GET`
headers:
 * `ACCEPT: application/json`
 * `CONTENT_TYPE: application/json`
 * `x-auth-token: $AUTH-TOKEN`

Get Robots
----------

endpoint: `/api/robots`
method: `GET`
headers:
 * `ACCEPT: application/json`
 * `CONTENT_TYPE: application/json`
 * `x-auth-token: $AUTH-TOKEN`
