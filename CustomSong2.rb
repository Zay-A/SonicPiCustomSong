# Welcome to Sonic Pi
use_bpm 95
use_synth :piano

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
live_loop :drum do
  a = 0.1
  90.times do
    sample :drum_snare_soft, amp: a
    sleep 1
    live_loop :sound do
      if a > 1
        5.times do
          a=a+0.1
        end
        
      elsif a == 1
        stop
      end
    end
  end
  stop
end


sleep 8


live_loop :tokyovania do
  5.times do
    tokyo 0.5, :F4, 0.75, :r , 0
    tokyo2
    tokyo  0.75, :r, 0 , :D4, 1
    tokyo3
  end
  stop
end
live_loop :tokyovaniaLow do
  5.times do
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
