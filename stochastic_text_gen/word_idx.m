function retval = word_idx (distinct_wds)
    indexCells = num2cell(1 : length(distinct_wds))'; % transform indicii intr-un array de celluri pentru ca arrayul sa se transpuna dupa in map
    retval = containers.Map(distinct_wds, indexCells); % Creez mapul pentru indici
endfunction
