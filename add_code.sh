#!/bin/bash

MY_CODE="$1"

sudo sed -i ".ppd" "s/KmManagment MG00000000\/00000000\: \"(00000000)/KmManagment MG$MY_CODE\/$MY_CODE\: \"($MY_CODE)/g" /etc/cups/ppd/kyocera.ppd

exit 0
