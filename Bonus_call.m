states = ["normal","alternate","direct"];
obs_space = ["up","down"];
trans_p = [0.7 0.1 0.2; 0.4 0.5 0.1; 0.2 0.3 0.5];
emit_p = [0.6 0.4; 0.3 0.7; 0.2 0.8];
obs_set = ["down", "down", "down", "up", "up", "up", "down", "up"];
current = "alternate";

Tot_prob = Bonus_Algo(states,trans_p,emit_p,obs_space,obs_set,current)