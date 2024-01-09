function [Tot_prob] = Bonus_Algo(states,trans_p,emit_p,obs_space,obs_set,current)
    format long
    for i=1:length(states)
        if current==states(i)
            control = i;
        end
    end
    start_p = trans_p(control,:);
    pos = index(obs_set,obs_space,1);
    for i=1:length(states)
        viterbi_prob(i,1) = start_p(i)*emit_p(i,pos);
    end
    
    for i=2:length(obs_set)
        pos = index(obs_set,obs_space,i);
        for j=1:length(states)
            p = emit_p(j,pos);
            prob = [length(states)];
            for k=1:length(states)
                prob(k) = p * trans_p(k,j)*viterbi_prob(k,i-1);
            end
            viterbi_prob(j,i) = sum(prob);
        end
    end
    
    Tot_prob = sum(viterbi_prob(:,length(obs_set)));
    
    function k = index(A,Y,x)
        for z=1:length(Y)
            if A(x)==Y(z)
                k = z;
                break;
            end
        end
    end
end