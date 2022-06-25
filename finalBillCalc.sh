finalBillCalc(){
  ###################################
  echo ""
  echo "Your current bill is : $bill"

  ###################################
  echo -e "Enter cash amount in hand : \c"
  read cashInput

  balance=`expr $cashInput - $bill`
  echo ""
  echo " Bill summary "
  echo "Cash balance : $balance"
  echo ""

  for (( i=1; i<=$numOfLines; i++ )) ;
    do
      orderSummary=`cat userOrder.txt | sed -n "${i}p"`;
      echo "Item $i : $orderSummary"
  done
}
finalBillCalc