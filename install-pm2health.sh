#!/bin/bash
sudo pm2 install pm2-health
sudo su
sudo tee .pm2/module_conf.json<<EOF
{
    "pm2-health": {
        "smtp": {
            "host": "smtp.gmail.com",
            "port": 587,
            "user": "alerts@superiorcsgroup.com",
            "password": "Alerts.1234567",
            "disabled": false
        },
        "mailTo": "michelles@superiorcsgroup.com,Oscar@superiorcsgroup.com,paddyt@superiorcsgroup.com,garrym@superiorcsgroup.com,davids@superiorcsgroup.com",
        "replyTo": "alerts@superiorcsgroup.com",
        "batchPeriodM": 0,
        "batchMaxMessages": 0,
        "events": [
            "exit"
        ],
        "exceptions": true,
        "messages": true,
        "messageExcludeExps": [],
        "metric": {},
        "metricIntervalS": 60,
        "aliveTimeoutS": 300,
        "addLogs": true,
        "appsExcluded": [],
        "snapshot": {
            "url": "",
            "token": "",
            "auth": {
                "user": "",
                "password": ""
            },
            "disabled": false
        }
    },
    "module-db-v2": {
        "pm2-health": {}
    }
}
EOF
sudo pm2 restart pm2-health --update-env


