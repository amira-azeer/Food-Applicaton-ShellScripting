userOrderInputFunc(){
   echo ""
    echo -e "Enter the number of items : \c"
    read itemCount

    for ((i = 1 ; i <= $itemCount ; i++ )); 
    do 
      echo -e "Enter item $i : \c"
      read userSelectedItem
      echo $userSelectedItem >> userOrder.txt

      if [ $i -eq $itemCount ] ;
        then    
          echo -e "Do you want to add more? : \c"
          read userAddMore
          case "$userAddMore" in 
            "Y"|"y")  
              source ./main.sh
              ;;
            *)
              break;;
          esac
      fi
    done
}
userOrderInputFunc
