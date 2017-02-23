english_text_2;

[bigrams, mostbigrams ] = FindMostFreq(plaintext, 2, 30);
[trigrams, mosttrigrams] = FindMostFreq(plaintext, 3, 20);
[quadgrams, mostquadgrams] = FindMostFreq(plaintext, 4, 10);

keySet = [bigrams(:, 2)' trigrams(:, 2)' quadgrams(:, 2)'];
valueSet = [[bigrams{:, 1}] [trigrams{:, 1}] [quadgrams{:, 1}]];

mapObj = containers.Map(keySet,valueSet);

filename = 'dictionary.mat';
save(filename, 'keySet', 'valueSet', 'mapObj');