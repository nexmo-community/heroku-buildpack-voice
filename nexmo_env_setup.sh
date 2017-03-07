#!/bin/bash
source /tmp/.env
export $(cut -d= -f1 .env)