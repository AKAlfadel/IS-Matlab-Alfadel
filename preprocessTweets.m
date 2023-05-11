% A function that performs various pre-processing steps
% Authored by Abdulaziz Alfadel
function cleanedTweets = preprocessTweets(tweets)

    % Convert to lowercase
    cleanedTweets = lower(tweets);

    % Remove URLs
    cleanedTweets = regexprep(cleanedTweets, '(http|https)://[^\s]*', '');


    % Remove special characters
    cleanedTweets = regexprep(cleanedTweets, '[^\w\s]', '');


    % Remove numbers
    cleanedTweets = regexprep(cleanedTweets, '\d', '');

    % Read stopword list from file
    stopWords = readlines('stopwords.txt');

    % Remove stop words
    cleanedTweets = tokenizedDocument(cleanedTweets);
    cleanedTweets = removeWords(cleanedTweets, stopWords);

    % Return the cleaned tweets as strings
    cleanedTweets = joinWords(cleanedTweets);
end 





