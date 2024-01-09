function [bestPathSeq,viterbi_prob,viterbi_path] = Viterbi_Algo(states,obs_space,trans_p,emit_p,obs_set,start_p)
    format long
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
            [viterbi_prob(j,i),viterbi_path(j,i)] = max(prob);
        end
    end
    
    bestPathSeq = "";
    [a,b] = max(viterbi_prob(:,3));
    bestPathSeq(length(obs_set)) = states(b);
    count = length(obs_set)-1;
    
    for i=length(viterbi_path):-1:2
        bestPathSeq(count) = states(viterbi_path(b,i));
        b = viterbi_path(b,i);
        count = count-1;
    end

    function k = index(A,Y,x)
        for z=1:length(Y)
            if A(x)==Y(z)
                k = z;
                break;
            end
        end
    end
end