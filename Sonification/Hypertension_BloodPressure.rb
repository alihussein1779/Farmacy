=begin
  
  sonic Pi Code / Representation of this
  Have a sound at the 36th second to represent a death
  Have another sound at the 40th second to represent heart attack
  Sound for above will be a drum sound to match the intensity of what occurs when the suddenness of this
  494 873 hypertension deaths  / 2 839 205 resident deaths
  0.17429984 or 17.43% of total deaths were from Hypertension
  Fractional conversion of 17.43% = (1743,10000)
  Use the euclidean rhythm to showcase the intensity of the deaths in relation of hypertension related deaths vs those total deaths
  Only about 1 in 4 adults (24%) with hypertension have their condition under control. And match it with the About 655,000 Americans die from heart disease each year—that’s 1 in every 4 deaths
  This will be represented in the code via sleep as the change of the loop will be split in quarters [0.25,0.5,0.75,1].choose
  This will do a random rhythm that will represent how frequent the occurrence of heart issues is
    
=end
   
    
    
    
    live_loop :chaos do
      sample :drum_bass_hard if spread(1743,10000)
      sleep [0.25,0.5,0.75,1].choose
    end
    
    with_fx :distortion, mix: 0.24 do
      live_loop :chaos do
        sample :drum_bass_hard, rate: [0.25,0.5,0.75,1].choose if spread(1743,10000)
        sleep [0.25,0.5,0.75,1].choose
      end
    end
    
    
    
    