function B = k_secv (A, k)
    [nr_tokens n] = size(A); % Aflu prin valoarea n numarul de tokenuri al lui A
    B = cell(nr_tokens - k, 1); % Initializez B cu ce am obtinut mai sus
    for i = 1 : nr_tokens - k 
      B{i} = strjoin(A(i : i + k - 1)); % Folosesc acest for pentru a combina k tokenuri consecutive intr-un singur string
    end
endfunction
