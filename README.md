## Install
Install conky in your distribution

The dependencies are: ffmpeg playerctl for the spotify player and jq & awk to query the bitcoin price. Maybe the gpuAMD monitor has some dependency, but I still have to check it

Once everything is installed, unzip the content in a folder and execute the start.sh script

## Config
in start.sh the conky scripts are launched so you should uncomment the ones you are going to use in the same way you have to change the path for the spotify viewer
sh $HOME/.conky/spotify-conky/start.sh
As you can see I created a hidden folder called conky with all the files

Obviously I recommend changing gap_y of each script so that it fits better on each screen, as well as the different cpu and network options depending on your equipment.

## Screenshots
![image](https://user-images.githubusercontent.com/21121575/180258501-b0467b3a-1936-418b-b4cc-a793b32e51fc.png)
![image](https://user-images.githubusercontent.com/21121575/180258670-58d821e4-befe-47e9-b896-9fae72c3d298.png)
![image](https://user-images.githubusercontent.com/21121575/180258764-5ff1dfff-0798-4009-900c-7dba8049b2f6.png)


## Credits
From here I got the bitcoin price monitor,
https://github.com/Kosteron/Conky

From this I took the bulk of my script, although it seems that it is no longer available... but hey
https://www.reddit.com/r/Conkyporn/comments/kd1r2f/my_conky_configuration_for_ubuntu/

It is usually a fairly generic configuration and I am inspired by many others
https://github.com/dm2912/conky
https://github.com/Frequential/conky-configuration
https://github.com/ZvonimirKucis/conky
https://github.com/Kosteron/Conky
https://www.reddit.com/r/Conkyporn/comments/kd1r2f/my_conky_configuration_for_ubuntu/
https://www.reddit.com/r/Conkyporn/comments/w17sb5/conky_theme/
https://dai-trying.com/tutorials/building-a-conky-part-3-disks/
https://www.reddit.com/r/Conkyporn/comments/1b30rp2/my_conky_setup_for_monitoring_my_inteldual_amd/

Here we have how to make the colors of the temperature dynamic, I have the impression that it fails from 100ºC but it is better not to get there
https://www.youtube.com/watch?v=ItZAMXO-FIA

I took the spotify information from:
https://github.com/Rayzr522/now-clocking
Total authorship of @gamehelp16 and @Rayzr522, I only removed the options, from other players I simplified it to a script. to see the other available players you have it on your github

