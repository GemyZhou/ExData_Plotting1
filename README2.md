##How to use
<ol>
<li><b>getTwoDay.R</b> <br>
read raw data from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip. Because the raw data is too big and exceeds github's size limitation for file uploading, this script aims to extract data on only two days which is just what we need and saved it to "twoDay.txt" for other script to use.</li>

<li><b>getTidyData.R</b><br>
This function reads trimmed dataset twoDay.txt and returned a tidy set for other script to call.

<li><b>plot1.R,plot2.R,plot3.R,plot4.R</b><br>
These scripts calls getTidyData to get a tidy set. And then plot according to the project reqirments and output to plot1.png,plot2.png,plot3.png and plot4.png respectively.


</ol>

