#!/bin/bash
# ssh to machines

     echo " "
     echo " "
     echo "Umoja"
     echo "Unauthorized Use Prohibited"
     echo " "
     echo "Which machine would you like to ssh to? Enter only the number"
           OPTIONS="Prod01 Dev01 DB01 Alf01 DevAlf01 Quit"
           select opt in $OPTIONS; do
               if [ "$opt" = "Quit" ]; then
                echo "Exiting Utility..."
                exit
               elif [ "$opt" = "Prod01" ]; then
                echo "SSH to Prod01…"
                ssh -i /root/pem.pem ubuntu@prod.internal
                exit

              elif [ "$opt" = "Dev01" ]; then
                echo "SSH to Dev01…"
                ssh -i /root/pem.pem ubuntu@Dev.internal
                exit

               elif [ "$opt" = "DB01" ]; then
                echo "SSH to DB01…"
                ssh -i /root/pem.pem ubuntu@DB.internal
                exit

                elif [ "$opt" = "Alf01" ]; then
                echo "SSH to Alf01…"
                ssh -i /root/pem.pem ubuntu@alf.internal
                exit

                elif [ "$opt" = "DevAlf01" ]; then
                echo "SSH to DevAlf01…"
                ssh -i /root/pem.pem ubuntu@devalf01
                exit




               else
                clear
                echo "Bad option, please select a number from the menu."
               fi
           done
