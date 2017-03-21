#!/bin/bash

MY_CODE="$1"

sudo sed -i '.ppd' 's/KmManagment MG00000002\/00000002\: "(00000002)/KmManagment MG$MY_CODE\/$MY_CODE\: "($MY_CODE)/g' /etc/cups/ppd/kyo_1.ppd

exit 0
