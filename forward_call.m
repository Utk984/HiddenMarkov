states = ["Normal","Alternate","Direct"];
obs_space = ["up","down"];
trans_p = [0.7 0.1 0.2; 0.4 0.5 0.1; 0.2 0.3 0.5];
%trans_p = 1/3*ones(3);
emit_p = [0.4 0.6; 0.4 0.6; 0.4 0.6];
%emit_p = 0.5*ones(3,2);
%emit_p = [0.05 0.95;0.07 0.93;0.1 0.9];
%emit_p = [0.95 0.05;0.93 0.07;0.9 0.1 ];
start_p = [0.8, 0.1, 0.1];
%start_p = [1/3, 1/3, 1/3];

obs_set = ["up", "up", "up", "up", "up", "up", "up", "up"];
obs_set2 = ["down", "up", "down", "up", "down", "up", "down", "up"];
obs_set3 = ["up", "down", "up", "down", "up", "down", "up", "down"];
obs_set4 = ["up", "up", "down", "up", "down", "down", "down", "up"];
obs_set5 = ["down", "down", "down", "down", "down", "down", "down", "down"];

Tot_prob = Forward_Algo(states,start_p,trans_p,emit_p,obs_space,obs_set)
Tot_prob2 = Forward_Algo(states,start_p,trans_p,emit_p,obs_space,obs_set2)
Tot_prob3 = Forward_Algo(states,start_p,trans_p,emit_p,obs_space,obs_set3)
Tot_prob4 = Forward_Algo(states,start_p,trans_p,emit_p,obs_space,obs_set4)
Tot_prob5 = Forward_Algo(states,start_p,trans_p,emit_p,obs_space,obs_set5)