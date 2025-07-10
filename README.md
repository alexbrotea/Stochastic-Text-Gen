# Markov Text Generation

## distinct_k_secv.m

In "distinct_k_secv.m", unique k-sequences are extracted from an array of sequences.  

Duplicates are removed to ensure a distinct set of sequences for further analysis or processing.  


## distinct_words.m

The "distinct_words.m" function returns an array of unique words from a given word array.  

This simplifies vocabulary management in natural language processing applications.  


## k_secv_idx.m

In "k_secv_idx.m", a map (dictionary) is created that assigns each unique k-sequence to a numeric index.  

This enables fast lookup and efficient handling of sequences.  


## k_secv.m

The "k_secv.m" script generates an array of k-sequences from a token array.  

Each sequence consists of k consecutive tokens.  


## stochastic_matrix.m

In "stochastic_matrix.m", a stochastic matrix is built based on k-sequences and their associated words.  

It uses the indices from "k_secv_idx.m" and "word_idx.m" to align each sequence with its transition probabilities.  


## word_idx.m

The "word_idx.m" function creates a map (dictionary) that assigns each unique word to a numeric index.  

This is analogous to "k_secv_idx.m", but specifically for words.  
