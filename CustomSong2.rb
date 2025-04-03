# Welcome to Sonic Pi
use_bpm 95
use_synth :piano

define :tokyo do |x,y|
  play :r
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :Eb4
  sleep 0.25
  play :Db4
  sleep 0.5
  play x
  sleep y
end
define :tokyo2 do
  play :r
  sleep 0.5
  play :Bb4
  sleep 0.5
  play :E4
  sleep 0.25
  play :D4
  sleep 0.5
  play :F4
  sleep 0.75
  play :F4
  sleep 0.25
  play :Gb4
  sleep 0.25
  play :F4
  sleep 0.25
  play :D4
  sleep 0.5
  play :B3
  sleep 0.5
  play :r
  sleep 0.25
  play :B3
  sleep 0.25
  play :B3
  sleep 0.25
  play :E4
  sleep 0.25
  play :D4
  sleep 0.5
  play :E4
  sleep 0.25
end
define :tokyo3 do
  play :D4
  sleep 1
  play :F4
  sleep 1
  play :Gb4
  sleep 0.5
  play :B3
  sleep 0.25
  play :B3
  sleep 0.25
  play :E4
  sleep 0.25
  play :D4
  sleep 0.5
  play :E4
  sleep 0.25
end

live_loop :tokyovania do
  3.times do
    tokyo :eb4,0.25
    tokyo2
    tokyo :r,0.25
    tokyo3
  end
  stop
end
sleep 10

live_loop :beat do
  16.times do
    sample :bd_tek, amp: 0.75
    sleep 1
  end
  40.times do
    sample :bd_tek, amp: 1
    sleep 0.5
  end
  stop
end

sleep 16

live_loop :drum do
  40.times do
    sample :drum_bass_soft
    sleep 1
  end
end
