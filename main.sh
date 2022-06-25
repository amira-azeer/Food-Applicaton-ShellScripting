main(){
  cat menu/mainscreen.txt
  echo -e "Enter your choice of menu : \c"
  read userMealChoice
  
  case "$userMealChoice" in 
    "Breakfast"|"breakfast"|"B"|"b"|1)
      cat menu/breakfast.txt
      source ./userOrderInputFunc.sh 
      ;;
  
    "Lunch"|"lunch"|"L"|"l"|2)
      cat menu/lunch.txt
      source ./userOrderInputFunc.sh
      ;;
  
    "Dinner"|"dinner"|"Din"|"din"|3)
      cat menu/dinner.txt
      source ./userOrderInputFunc.sh
      ;;
  
    "Kids"|"kids"|"K"|"k"|4)
      cat menu/kids.txt
      source ./userOrderInputFunc.sh
      ;;
  
    "Dessert"|"dessert"|"Des"|"des"|5)
      cat menu/dessert.txt
      source ./userOrderInputFunc.sh
      ;;
  
    *)
      echo "Logged out"
      break
      ;;
  esac
}
main
