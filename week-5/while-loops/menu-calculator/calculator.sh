while true
do
        echo -e "1. Add\n2. Subtract\n3. Multiply\n4. Divide\n5. Quit"
        read -p "Choose an option:" choice
        if [ $choice -eq 1 ]
        then
                read -p "Enter the two numbers:" n1 n2
                echo Answer=$(( $n1 + $n2 ))
        elif [ $choice -eq 2 ]
        then
                read -p "Enter the two numbers:" n1 n2
                echo Answer=$(( $n1 - $n2 ))
        elif [ $choice -eq 3 ]
        then
                read -p "Enter the two numbers:" n1 n2
                echo Answer=$(( $n1 * $n2 ))
        elif [ $choice -eq 4 ]
        then
                read -p "Enter the two numbers:" n1 n2
                echo Answer=$(( $n1 / $n2 ))
        elif [ $choice -eq 5 ]
        then
                break
        fi
done