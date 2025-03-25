function retval = stochastic_matrix(k_secv_corpus, corpus_words, word_set, k_secv_set, k)
    num_k_seq = numel(k_secv_set); % Aflu numarul de k-secvente
    num_words = numel(word_set); % Aflu numarul de secvente unice
    retval = sparse(num_k_seq, num_words); % Creez o matrice sparse pentru eficienta
    for i = 1 : (numel(corpus_words) - k) % Parcurg fiecare secventa data
        k_seq = k_secv_corpus{i}; % Extrag secventa curenta
        next_word = corpus_words{i + k}; % Extrag cuvantul urmator
        k_seq_idx = find(strcmp(k_secv_set, k_seq), 1); % Gasesc indexul secventei curente
        word_idx = find(strcmp(word_set, next_word), 1); % Gasesc indexul cuvantului urmator
        if ~isempty(k_seq_idx) && ~isempty(word_idx) % Verific daca am gasit ambii indecsi
            retval(k_seq_idx, word_idx) = retval(k_seq_idx, word_idx) + 1; % Incrementez contorul obtinut in matricea stochastica
        end
    end
endfunction