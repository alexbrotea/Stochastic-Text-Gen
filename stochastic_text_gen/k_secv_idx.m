function retval = k_secv_idx (distinct_k_sec)
    indexCells = num2cell(1 : length(distinct_k_sec))'; % Convertesc vectorul de indici intr-un array de celluri potrivit
    retval = containers.Map(distinct_k_sec, indexCells); % Creez obiectivul map pentru k-secventa
endfunction