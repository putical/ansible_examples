#!/bin/bash

echo -n "Enter the name of a state: "
read STATE
echo -n "The capital city of $STATE is "

case $STATE in
  Georgia)
    echo "Atlanta"
    ;;
  Virginia)
    echo "Richmond"
    ;;
  Texas)
    echo "Austin"
    ;;
  Maine)
    echo "Augusta"
    ;;
  *)
    echo "not in the database"
    ;;
 esac
