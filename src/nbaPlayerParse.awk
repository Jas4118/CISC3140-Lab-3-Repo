BEGIN {
        FS = ","; #delimiter is set to commma
        age=0; # setting variables to 0
        height=0;
        weight=0;
        averageAge=0;
	averageWeight=0;
	averageHeight=0;
        playerCount=0;
        player="";
        printf "%-25s %-10s %-15s %-15s\n", "Player name","Age","Height(cm)","Weight(kg)"; #prints out header
}
{
        if ($9 >2015 && $9!="Undrafted" && $4!="age") #checks if they've been drafted and if they were drafted after 2015
	{
                playerCount++;
                player = $2; # setting variables to players stats
                age = $4;
                height = $5;
                weight = $6;
                averageHeight=averageHeight+ $5;
                averageWeight=averageWeight+ $6;
                printf "%-25s %-10s %-15s %.2f\n", player,age,height,weight; #prints out player and their info
        }
}


END {
        averageWeight=averageWeight/playerCount; #calculate weight avg
        averageHeight=averageHeight/playerCount; #calculate height avg
	print "Average Height is ";	#average height of players
	printf "%-5s\n", averageHeight;
	print "Average Weight is ";	#average weight of players
	printf "%-5s\n", averageWeight;
}
