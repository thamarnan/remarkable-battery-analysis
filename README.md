
# ReMarkable Battery Analysis
Logging data for remarkable tablet for plotting and analysis

![](https://blog.the-ebook-reader.com/wp-content/uploads/2018/03/remarkable.jpg)

After everyone has the problem with battery on the tablet and they've just released the new firmware, I've decided to run some experiment to see how much battery we can use with  this new firmware

# My Setup
ReMarkable Tablet with codex 1.3.0.9  
Wifi : off  
Auto Sleep: off  
Auto Power: off  
Environment Temperature ~ 26 °C  
Tablet is left idling, I want to see what's the longest running time I can get.  

I have attached the shell script that use to capture this logs in this repo  

# What've we got?
After left it there for a day, I came and check it serveral time, flipping pages back and forward just to make sure it's not locking up.

The final result, tablet shut itself off with the screen   
  
.....reMarkable....  
is out of Battery  
  
Powering back on again and check the log:  
![enter image description here](https://github.com/thamarnan/remarkable-battery-analysis/blob/master/images/maH_plot.png?raw=true)

The final log entry is at   
  
1 day, 1hour, 40 minutes mark  
with the battery remained at 11%  
  
    1540,01:01:40,441,441000,11,3691000,-104000,256

that means I actually have more percent left, and If I followed along the linear trend fitting. I can get total around 1 day and 5 hours in total battery life for best scenario.

Here are the others parameter I've capture:  
![enter image description here](https://github.com/thamarnan/remarkable-battery-analysis/blob/master/images/voltage_plot.png?raw=true)


![enter image description here](https://github.com/thamarnan/remarkable-battery-analysis/blob/master/images/temp.png?raw=true)


Charging from 10% to 100 % takes around 3.5 Hours.
Graph coming soon.


