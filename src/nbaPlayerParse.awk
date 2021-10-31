BEGIN {
        FS = ",";
        age=0;
        height=0;
        weight=0;
        averageAge=0;
	averageWeight=0;
	averageHeight=0;
        playerCount=0;
        player="";
        undraftedPlayer= "Undrafted";
        printf "%-25s %-10s %-15s %-15s\n", "Player name","Age","Height(cm)","Weight(kg)";
}
{
        if ($9 >2015 && $9!="Undrafted" && $4!="age")
	{
                playerCount++;
                player = $2;
                age = $4;
                height = $5;
                weight = $6;
                averageHeight=averageHeight+ $5;
                averageWeight=averageWeight+ $6;
                printf "%-25s %-10s %-15s %.2f\n", player,age,height,weight;
        }
}


END {
        averageWeight=averageWeight/playerCount;
        averageHeight=averageHeight/playerCount;
	print "Average Height is ";	
	printf "%-5s\n", averageHeight;
	print "Average Weight is ";
	printf "%-5s\n", averageWeight;
}
