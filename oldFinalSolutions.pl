fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    Result is F1 + F2.

% Example usage
:- writeln('Fibonacci sequence up to 10:'),
   between(0, 10, N),
   fibonacci(N, Result),
   write(Result), write(' '),
   fail.
