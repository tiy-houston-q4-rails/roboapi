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

Notes:
* All authenticated endpoints will return a 401 with no body if you are
  un-authed
* You'll post to sign-in to get an auth-token, which then is sent as
  x-auth-token header for future requests
* You can sign-in or create a user to get an auth token
* SSL is enforced throughout

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

Sample result:

```json
{"id":1,"email":"jwo@comal.io","auth_token":"6a902db382002a98de3dd30be25540cd","created_at":"2014-11-18T14:48:45.348Z","updated_at":"2014-11-18T14:48:45.348Z"}
```

Get Profile
-----------

endpoint: `/api/me`
method: `GET`
headers:
 * `ACCEPT: application/json`
 * `CONTENT_TYPE: application/json`
 * `x-auth-token: $AUTH-TOKEN`

Sample:

```json
{"id":1,"email":"jwo@comal.io","auth_token":"6a902db382002a98de3dd30be25540cd","created_at":"2014-11-18T14:48:45.348Z","updated_at":"2014-11-18T14:48:45.348Z"}
```

Get Robots
----------

endpoint: `/api/robots`
method: `GET`
headers:
 * `ACCEPT: application/json`
 * `CONTENT_TYPE: application/json`
 * `x-auth-token: $AUTH-TOKEN`

sample
```json
{"robots":[{"id":1,"name":"hadley_rempel","skills":"back up,
calculate","photo":{"url":"/uploads/robot/photo/1/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/1/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/1/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:35.886Z","updated_at":"2014-11-18T14:47:35.886Z"},{"id":2,"name":"clair_lehner","skills":"quantify,
program","photo":{"url":"/uploads/robot/photo/2/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/2/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/2/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:36.670Z","updated_at":"2014-11-18T14:47:36.670Z"},{"id":3,"name":"jeica","skills":"calculate,
bypass","photo":{"url":"/uploads/robot/photo/3/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/3/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/3/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:37.413Z","updated_at":"2014-11-18T14:47:37.413Z"},{"id":4,"name":"mafalda","skills":"index,
generate","photo":{"url":"/uploads/robot/photo/4/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/4/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/4/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:38.250Z","updated_at":"2014-11-18T14:47:38.250Z"},{"id":5,"name":"vivian","skills":"program,
program","photo":{"url":"/uploads/robot/photo/5/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/5/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/5/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:38.936Z","updated_at":"2014-11-18T14:47:38.936Z"},{"id":6,"name":"aniyah","skills":"override,
compress","photo":{"url":"/uploads/robot/photo/6/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/6/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/6/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:39.578Z","updated_at":"2014-11-18T14:47:39.578Z"},{"id":7,"name":"kennith","skills":"compress,
override","photo":{"url":"/uploads/robot/photo/7/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/7/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/7/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:40.327Z","updated_at":"2014-11-18T14:47:40.327Z"},{"id":8,"name":"seth_dare","skills":"calculate,
input","photo":{"url":"/uploads/robot/photo/8/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/8/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/8/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:41.088Z","updated_at":"2014-11-18T14:47:41.088Z"},{"id":9,"name":"ciara_ankunding","skills":"connect,
calculate","photo":{"url":"/uploads/robot/photo/9/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/9/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/9/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:41.815Z","updated_at":"2014-11-18T14:47:41.815Z"},{"id":10,"name":"vergie_rogahn","skills":"hack,
input","photo":{"url":"/uploads/robot/photo/10/my-own-slug.png","thumb":{"url":"/uploads/robot/photo/10/thumb_my-own-slug.png"},"large":{"url":"/uploads/robot/photo/10/large_my-own-slug.png"}},"created_at":"2014-11-18T14:47:42.544Z","updated_at":"2014-11-18T14:47:42.544Z"}]}
```

TODO
========

 1. Change format of the JSON returned from api/robots
 2. Return the robot's missions and missions
 3. Allow CRUD for robots, missions and robot-missions

LICENSE
==========

 See LICENSE (MIT)
