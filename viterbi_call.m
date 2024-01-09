states = ["Normal","Alternate","Direct"];
obs_space = ["up","down"];
trans_p = [0.7 0.1 0.2; 0.4 0.5 0.1; 0.2 0.3 0.5];
emit_p = [0.6 0.4; 0.3 0.7; 0.2 0.8];
start_p = [0.8, 0.1, 0.1];
obs_set = ["up", "down", "down", "down", "up", "up", "up", "down", "up", "down"];

[bestPathSeq,viterbi_prob,viterbi_path] = Viterbi_Algo(states,obs_space,trans_p,emit_p,obs_set,start_p)