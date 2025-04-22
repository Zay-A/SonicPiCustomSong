FIRST SONG - Under Night In-Birth

use_bpm 95
sample "C:/Users/zaydan_alim/Downloads/Super Mario Bros. - Mushroom Sound Effect.wav"
sleep 2
noteList = [:b4, :b4, :a4, :a4, :g4, :f4, :e4, :e4, :d4, :d4, :c4, :d4]
n = 0
eepList = [1, 0.25, 0.75, 0.75, 0.75, 0.5, 1, 0.25, 0.75, 0.75, 0.75, 0.5]
s = 0
live_loop :notes do
  10.times do
    12.times do
      use_synth :piano
      play noteList[n]
      sleep eepList[s]
      n = n + 1
      s = s + 1
    end
    s = 0
    n = 0
  end
  stop
end


sleep 8

8.times do
  sample :bd_haus
  sleep 2
end

live_loop :drum do
  35.times do
    1.times do
      sample :drum_snare_soft
      sleep 1
    end
  end
  stop
end

live_loop :beat1 do
  50.times do
    sample :bd_haus
    sleep 0.5
  end
  stop
end

sleep 8

live_loop :somethin do
  20.times do
    sample :hat_zap
    sleep 2
  end
  stop
end

sleep 16

live_loop :somethin2 do
  16.times do
    sample :hat_snap
    sleep 1
  end
  stop
end

sleep 16

SECOND SONG - Tokyovania

use_bpm 95
use_synth :piano
ink = "C:/Users/zaydan_alim/Downloads/Ink!sans.wav"

cat = "C:/Users/zaydan_alim/Downloads/ooeeaaeecat.wav"

define :tokyoEnd do
  11.times do
    
    
    
    numList = [ :E4, :E4, :Eb5,:Bb4, :r, :A4, :Ab4, :G4, :E4, :G4, :A4 ]
    numListSleep = [ 0.25, 0.25, 0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25 ,0.25, 0.25 ]
    notes = 0
    notes2 = 0
    p2 = 1
    
    live_loop :tokyo1 do
      4.times do
        11.times do
          play (numList[notes]), amp: p2
          sleep (numListSleep[notes2])
          notes = notes + 1
          notes2 = notes2 + 1
          p2 = p2 - 0.05
          print(p2)
        end
        notes = 0
        notes2 = 0
      end
    end
    
    numList3 = [ :Ab2, :Ab2, :Bb2,:Bb2, :Ab2, :Ab2, :r, :Eb3, :E2, :Eb3, :Eb3, :E2, :E2, :r ]
    numList4 = [ 1, 1, 1, 1, 1, 0.5, 0.25, 0.25, 0.5 ,0.25, 0.25, 0.5, 0.25, 0.25 ]
    notesB = 0
    notesA = 0
    p = 1
    
    live_loop :tokyo1bass do
      2.times do
        14.times do
          play (numList3[notesA]), amp: p
          sleep (numList4[notesB])
          notesA = notesA + 1
          notesB = notesB + 1
          p = p - 0.05
          
          print(notesA)
          print(notesB)
        end
        notesB = 0
        notesA = 0
      end
    end
  end
end




define :tokyo do |s1, additionalNote, additionalSleep, firstNoteOfTheNextMeasure, firstSleepOfTheNextMeasure|
  play :r
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :Eb4
  sleep 0.25
  play :Db4
  sleep 0.5
  play :Eb4
  sleep 0.25
  play :r
  sleep 0.5
  play :Bb4
  sleep 0.5
  
  play :Eb4
  sleep 0.25
  play :Db4
  sleep s1
  play additionalNote
  sleep additionalSleep
  play firstNoteOfTheNextMeasure
  sleep firstSleepOfTheNextMeasure
end
define :tokyo2 do
  play :F4
  sleep 0.25
  play :Gb4
  sleep 0.25
  play :F4
  sleep 0.25
  play :Db4
  sleep 0.5
  play :Bb3
  sleep 0.5
  play :r
  sleep 0.25
  play :Bb3
  sleep 0.25
  play :Bb3
  sleep 0.25
  play :Eb4
  sleep 0.25
  play :Db4
  sleep 0.5
  play :Eb4
  sleep 0.25
end
define :tokyo3 do
  play :F4
  sleep 1
  play :Gb4
  sleep 0.5
  play :Bb3
  sleep 0.25
  play :Bb3
  sleep 0.25
  play :Eb4
  sleep 0.25
  play :Db4
  sleep 0.5
  play :Eb4
  sleep 0.25
end

define :tokyoBass do |x,z,y|
  use_synth :piano
  play x ,amp: 1
  play z ,amp: 1
  sleep y
end



sample ink , amp: 2


live_loop :drum do
  a = 0.1
  60.times do
    sample :drum_snare_soft, amp: a
    sleep 1
    print (a)
    if a < 0.5
      a=a+0.05
      print ("get bigger")
    end
  end
  stop
end


sleep 8


live_loop :tokyovania do
  3.times do
    tokyo 0.5, :F4, 0.75, :r , 0
    tokyo2
    tokyo  0.75, :r, 0 , :D4, 1
    tokyo3
  end
  stop
end
live_loop :tokyovaniaLow do
  3.times do
    tokyoBass :Cb3,:Cb4, 1
    tokyoBass :Cb3,:r, 1
    tokyoBass :Db3,:r, 1
    tokyoBass :Db3,:r, 1
    tokyoBass :Bb2, :r, 1
    tokyoBass :Bb2, :r, 1
    tokyoBass :Eb3, :r, 1
    tokyoBass :Eb3, :r, 0.5
    tokyoBass :Db3, :r, 0.5
    tokyoBass :Cb3, :Eb3, 1
    tokyoBass :Cb3, :Eb3, 1
    tokyoBass :Db3, :F3, 1
    tokyoBass :Db3, :F3, 1
    tokyoBass :Bb2, :Db3, 1
    tokyoBass :Bb2, :Db3, 1
    tokyoBass :E3, :r, 1
    tokyoBass :E3, :r, 0.5
    tokyoBass :Db3, :r, 0.5
  end
  stop
end

sleep 32

live_loop :bede do
  30.times do
    sample :bd_tek
    sleep 0.5
  end
  stop
end

sleep 16

sample cat, amp: 5

tokyoEnd
