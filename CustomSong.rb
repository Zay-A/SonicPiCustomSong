use_bpm 95
sample "C:/Users/zaydan_alim/Downloads/Super Mario Bros. - Mushroom Sound Effect.wav"
sleep 2

live_loop :Notes do
  1.times do
    use_synth :piano
    play :b4
    sleep 1
    play :b4
    sleep 0.25
    play :a4
    sleep 0.75
    play :a4
    sleep 0.75
    play :g4
    sleep 0.75
    play :f4
    sleep 0.5
  end
  
  1.times do
    use_synth :piano
    play :e4
    sleep 1
    play :e4
    sleep 0.25
    play :d4
    sleep 0.75
    play :d4
    sleep 0.75
    play :c4
    sleep 0.75
    play :d4
    sleep 0.5
  end
  stop if tick>=10
end

sleep 16

8.times do
  sample :bd_haus
  sleep 2
end
live_loop :drum do
  8.times do
    1.times do
      sample :drum_snare_soft
      sleep 1
    end
    stop if tick>=32
  end
end

live_loop :beat1 do
  sample :bd_haus
  sleep 0.5
  stop if tick>=64
end

sleep 8

live_loop :somethin do
  sample :hat_zap
  sleep 2
  stop if tick>=20
end

sleep 16

live_loop :somethin2 do
  sample :hat_snap
  sleep 1
  stop if tick>=16
end

sleep 16
