use_bpm 95
sample "C:/Users/zaydan_alim/Downloads/Super Mario Bros. - Mushroom Sound Effect.wav"
sleep 2
noteList = [:b4, :b4, :a4, :a4, :g4, :f4, :e4, :e4, :d4, :d4, :c4, :d4]
n = 0
eepList = [1, 0.25, 0.75, 0.75, 0.75, 0.5, 1, 0.25, 0.75, 0.75, 0.75, 0.5]
s = 0
live_loop :notes do
  8.times do
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

