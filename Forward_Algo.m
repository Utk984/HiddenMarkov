% the function defined for Viterbi_Algo should have following template of input/output variable names and the function name.
function [Tot_prob] = Forward_Algo(states,start_p,trans_p,emit_p,obs_space,obs_set)
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