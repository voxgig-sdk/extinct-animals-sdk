# ExtinctAnimals SDK configuration


def make_config():
    return {
        "main": {
            "name": "ExtinctAnimals",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
      },
        },
        "options": {
            "base": "https://extinct-api.herokuapp.com/api/v1",
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "animal": {},
            },
        },
        "entity": {
      "animal": {
        "fields": [
          {
            "name": "binomial_name",
            "req": True,
            "type": "`$STRING`",
            "active": True,
            "index$": 0,
          },
          {
            "name": "common_name",
            "req": False,
            "type": "`$STRING`",
            "active": True,
            "index$": 1,
          },
          {
            "name": "data",
            "req": True,
            "type": "`$ARRAY`",
            "active": True,
            "index$": 2,
          },
          {
            "name": "image_src",
            "req": False,
            "type": "`$STRING`",
            "active": True,
            "index$": 3,
          },
          {
            "name": "last_record",
            "req": False,
            "type": "`$STRING`",
            "active": True,
            "index$": 4,
          },
          {
            "name": "location",
            "req": False,
            "type": "`$STRING`",
            "active": True,
            "index$": 5,
          },
          {
            "name": "short_desc",
            "req": False,
            "type": "`$STRING`",
            "active": True,
            "index$": 6,
          },
          {
            "name": "status",
            "req": True,
            "type": "`$STRING`",
            "active": True,
            "index$": 7,
          },
          {
            "name": "wiki_link",
            "req": False,
            "type": "`$STRING`",
            "active": True,
            "index$": 8,
          },
        ],
        "name": "animal",
        "op": {
          "list": {
            "name": "list",
            "points": [
              {
                "args": {
                  "query": [
                    {
                      "example": True,
                      "kind": "query",
                      "name": "image_required",
                      "orig": "image_required",
                      "reqd": False,
                      "type": "`$BOOLEAN`",
                      "active": True,
                    },
                  ],
                },
                "method": "GET",
                "orig": "/animal/",
                "parts": [
                  "animal",
                ],
                "select": {
                  "exist": [
                    "image_required",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "active": True,
                "index$": 0,
              },
            ],
            "input": "data",
            "key$": "list",
          },
          "load": {
            "name": "load",
            "points": [
              {
                "args": {
                  "params": [
                    {
                      "kind": "param",
                      "name": "id",
                      "orig": "number",
                      "reqd": True,
                      "type": "`$INTEGER`",
                      "active": True,
                    },
                  ],
                },
                "method": "GET",
                "orig": "/animal/{number}",
                "parts": [
                  "animal",
                  "{id}",
                ],
                "rename": {
                  "param": {
                    "number": "id",
                  },
                },
                "select": {
                  "exist": [
                    "id",
                  ],
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
                "active": True,
                "index$": 0,
              },
            ],
            "input": "data",
            "key$": "load",
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
