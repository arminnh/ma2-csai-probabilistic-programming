0.3::a; 0.54::b.

evidence(b, false).

query(a).
query(b).

% PROBLOG CNF:
% ====================================================
% DIMACS:
% p wcnf 3 7 36528
% c 1  choice(0,0,a)
% c 2  choice(0,1,b)
% c 3  choice(0,e,null)
% c 1  a
% c 2  b
% 12039 -1 0
% 6161 -2 0
% 18325 -3 0
% 36528 -1 -2 0
% 36528 -1 -3 0
% 36528 -2 -3 0
% 36528 1 2 3 0
% ====================================================
% EVALUATION:
% a: 0.6521739130434782
