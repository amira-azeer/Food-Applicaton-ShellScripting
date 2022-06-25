calculateTotalFunc(){
  numOfLines=`sed -n '=' userOrder.txt | wc -l`
  # echo $numOfLines

  for (( i=1; i<=$numOfLines; i++ ));
    do
      order=`cat userOrder.txt | sed -n "${i}p"`;
          # BREAK FAST CALC
      if [ $order == "Cereal" ] ;
        then  
          bill=`expr $bill + 20`

      elif [ $order == "Bacon" ] ;
        then  
          bill=`expr $bill + 30`

      elif [ $order == "Sandwich" ] ;
        then  
          bill=`expr $bill + 30`

      elif [ $order == "Rolls" ] ;
        then  
          bill=`expr $bill + 15`

      elif [ $order == "Pancakes" ] ;
        then  
          bill=`expr $bill + 30`

      elif [ $order == "Coffee" ] ;
        then  
          bill=`expr $bill + 20`

          # DESSERT CALC
      elif [ $order == "Tiramisu" ] ;
        then  
          bill=`expr $bill + 25`

      elif [ $order == "Brownies" ] ;
        then  
          bill=`expr $bill + 30`

      elif [ $order == "Cake" ] ;
        then  
          bill=`expr $bill + 22`

      elif [ $order == "Fruits" ] ;
        then  
          bill=`expr $bill + 15`

      elif [ $order == "Cheesecake" ] ;
        then  
          bill=`expr $bill + 20`

      elif [ $order == "Waffles" ] ;
        then  
          bill=`expr $bill + 30`

          # DINNER CALC
      elif [ $order == "Pizza" ] ;
        then  
          bill=`expr $bill + 25`

      elif [ $order == "Burger" ] ;
        then  
          bill=`expr $bill + 20`

      elif [ $order == "Salad" ] ;
        then  
          bill=`expr $bill + 10`

      elif [ $order == "Wings" ] ;
        then  
          bill=`expr $bill + 15`

      elif [ $order == "Veggies" ] ;
        then  
          bill=`expr $bill + 20`

        # KIDS CALC 
      elif [ $order == "HappyMeal" ] ;
        then  
          bill=`expr $bill + 25`

      elif [ $order == "Potatoes" ] ;
        then  
          bill=`expr $bill + 30`

      elif [ $order == "Omlette" ] ;
        then  
          bill=`expr $bill + 22`

      elif [ $order == "Nuggets" ] ;
        then  
          bill=`expr $bill + 15`

      elif [ $order == "Sausages" ] ;
        then  
          bill=`expr $bill + 20`

      elif [ $order == "Fries" ] ;
        then  
          bill=`expr $bill + 30`

        # LUNCH CALC
      elif [ $order == "Rice" ] ;
        then  
          bill=`expr $bill + 25`

      elif [ $order == "Pasta" ] ;
        then  
          bill=`expr $bill + 22`

      elif [ $order == "Noodles" ] ;
        then  
          bill=`expr $bill + 15`

      else 
        echo 'End'

      fi
    done

  source ./finalBillCalc.sh 
}
calculateTotalFunc