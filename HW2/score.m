function [ scr ] = score( key, ciphertext )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
keySet = {'our', 'all', 'just', 'nd', 'over', 'one', 'en', 'go', 'cr', 'ng', 'its', 'make', 'ld', 'le', 'from', 'would', 're', 'there', 'had', 'two', 'been', 'him', ...
    'to', 'only', 'th', 'ti', 'as', 'has', 'was', 'into', 'take', 'do', 'them', 'his', 'way', 'than', 'get', 'some', 'de', 'but', 'it', 'hi', 'know', 'they', 'not', 'now', ...
    'with', 'day', 'he', 'me', 'made', 'like', 'this', 'work', 'up', 'us', 'ur', 'will', 'these', 'ar', 'she', 'were', 'my', 'say', 'at', 'and', 'the', 'because', 'want', 'people', 'ed', 'is', 'in', 'ea', 'back', 'an', 'see', 'good', 'are', 'have', 'year', 'et', 'st', 'their', 'es', 'out', 'even', 'sa', 'what', 'for', 'no', 'ha', 'that', 'when', 'si', 'your', 'also', 'other', 'ra', 'then', 'new', 'you', 'if', 'nt', 'can', 'be', 'we', 'after', 'any', 'who', 'use', 'how', 'te', 'come', 'by', 'on', 'about', 'ol', 'give', 'her', 'most', 'of', 'could', 'well', 'or', 'look', 'which', 'must', 'so', 'time', 'ou', 'er', 'think', 'se', 'first'};
valueSet= {20941, 2828, 123, 10732, 646, 1640, 8647, 1046, 1269, 9771, 548, 157, 2361, 8012, 1039, 427, 11436, 802, 814, 289, 408, 1267, 7020, 372, 29424, 4866, 6775, 419, 1655, 529, 222, 1553, 530, 3907, 660, 424, 242, 888, 4784, 1167, 7435, 9296, 331, 572, 1466, 1030, 1907, 296, 25586, 5591, 177, 685, 1273, 122, 1462, 3058, 3135, 389, 373, 7611, 523, 716, 738, 329, 9948, 7377, 18475, 73, 65, 42, 9071, 8238, 19065, 6270, 208, 14394, 1004, 200, 1001, 757, 116, 3069, 7883, 610, 7922, 1429, 303, 2021, 510, 2448, 3773, 10966, 2943, 577, 2686, 275, 85, 632, 3305, 592, 123, 1204, 1222, 5299, 528, 3825, 2533, 296, 591, 616, 372, 422, 6840, 255, 1290, 8971, 310, 2311, 126, 3411, 532, 7119, 221, 217, 7667, 322, 623, 289, 3161, 570, 8303, 14419, 180, 6480, 207};

mapObj = containers.Map(keySet,valueSet);

candidate = substitute(key, ciphertext);
scr = 0;

for k=mapObj.keys'
    scr = scr + count(candidate, k) * mapObj(k{1});
end

end

