#!/usr/bin/env bash
status=$(playerctl status)

if [[ -z $status ]]
then
    exit
fi

if [[ $status == "Playing" ]]
then
   echo "{\"class\": \"playing\", \"alt\": \"playing\",}"
   exit
fi

if [[ $status == "Paused" ]]
then
   echo "{\"class\": \"paused\", \"alt\": \"paused\",}"
  exit
fi
