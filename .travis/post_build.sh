#!/bin/sh

STATUS_FILE="/usr/src/app/status.json"
update_status() {
    echo "{
  "myapplication": [
    {
      "version": "1.0",
      "description": "pre-interview technical test",
      "lastcommitsha": "${TRAVIS_COMMIT}"
    }
  ]
} > ${STATUS_FILE}
    "
}

update_status
