﻿procedure SetTest;
var
  s2: set of byte;
  s1: set of integer;
  s3: set of smallint;
  s4: set of shortint;
  s5: set of word;
  s6: set of longword;
  s7: set of int64;
  s8: set of uint64;
  s9: set of real;
  s10: set of char;
  s11: set of string;
  s12: set of 3..6;
  s13: set of 'b'..'f';

begin
  s2 := [1, 4]; assert(s2 = [1, 4]);
  s1 := [4, 7, 8]; assert(s1 = [4, 7, 8]);
  s3 := [2, 6]; assert(s3 = [2, 6]);
  s4 := [2, 6]; assert(s4 = [2, 6]);
  s5 := [2, 6]; assert(s5 = [2, 6]);
  s6 := [2, 6]; assert(s6 = [2, 6]);
  s7 := [2, 6]; assert(s7 = [2, 6]);
  s8 := [2, 6]; assert(s8 = [2, 6]);
  s9 := [2.71, 3.14]; assert(s9 = [2.71, 3.14]);
  s10 := ['a', 'c', 'e']; assert(s10 = ['a', 'c', 'e']);
  s11 := ['aaa', 'bbb', 'ccc']; assert(s11 = ['aaa', 'bbb', 'ccc']);
  
  s1 := [1, 3, 7];
  s2 := s1; assert(s2 = [1, 3, 7]);
  s3 := s1; assert(s3 = [1, 3, 7]);
  s4 := s1; assert(s4 = [1, 3, 7]);
  s5 := s1; assert(s5 = [1, 3, 7]);
  s6 := s1; assert(s6 = [1, 3, 7]);
  s7 := s1; assert(s7 = [1, 3, 7]);
  s8 := s1; assert(s8 = [1, 3, 7]);
  
  s2 := [1..50, 51..100]; assert(s2 = [1..100]);
  s1 := [1..50, 51..100]; assert(s1 = [1..100]);
  s3 := [1..50, 51..100]; assert(s3 = [1..100]);
  s4 := [1..50, 51..100]; assert(s4 = [1..100]);
  s5 := [1..50, 51..100]; assert(s5 = [1..100]);
  s6 := [1..50, 51..100]; assert(s6 = [1..100]);
  s7 := [1..50, 51..100]; assert(s7 = [1..100]);
  s8 := [1..50, 51..100]; assert(s8 = [1..100]);
  s10 := ['a'..'d', 'e'..'m']; assert(s10 = ['a'..'m']);
  assert([1, 2, 3] < [1..4]);
  assert([2..4] = [2, 3, 4]);
  assert(['a', 'c'..'f'] > ['a']);
  assert([1..6] <> [2..4]);
  assert([2, 3] + [7, 8] = [2, 3, 7, 8]);
  assert([1, 4, 6] * [1, 6] = [1, 6]);
  assert([1] + [2] <= [1..3]);
  assert([2, 3, 5] - [2, 3] = [5]);
  assert(5 in [4, 5, 8]);
  assert([1, 2] + [] = [1, 2]);
  assert([1, 2] * [] = []);
  assert([1, 2] - [] = [1, 2]);
  assert(not (5 in [7]));
  s12 := [1..4]; 
  assert(s12 = [3..4]);
  s13 := ['a'..'d']; assert(s13 = ['b'..'d']);
end;

procedure SetTest2;
var
  s2: set of byte;
  s1: set of integer;
  s3: set of smallint;
  s4: set of shortint;
  s5: set of word;
  s6: set of longword;
  s7: set of int64;
  s8: set of uint64;
  s9: set of real;
  s10: set of char;
  s11: set of string;
  s12: set of 3..6;
  s13: set of 'b'..'f';
  
  procedure Nested;
  begin
    s2 := [1, 4]; assert(s2 = [1, 4]);
    s1 := [4, 7, 8]; assert(s1 = [4, 7, 8]);
    s3 := [2, 6]; assert(s3 = [2, 6]);
    s4 := [2, 6]; assert(s4 = [2, 6]);
    s5 := [2, 6]; assert(s5 = [2, 6]);
    s6 := [2, 6]; assert(s6 = [2, 6]);
    s7 := [2, 6]; assert(s7 = [2, 6]);
    s8 := [2, 6]; assert(s8 = [2, 6]);
    s9 := [2.71, 3.14]; assert(s9 = [2.71, 3.14]);
    s10 := ['a', 'c', 'e']; assert(s10 = ['a', 'c', 'e']);
    s11 := ['aaa', 'bbb', 'ccc']; assert(s11 = ['aaa', 'bbb', 'ccc']);
    
    s1 := [1, 3, 7];
    s2 := s1; assert(s2 = [1, 3, 7]);
    s3 := s1; assert(s3 = [1, 3, 7]);
    s4 := s1; assert(s4 = [1, 3, 7]);
    s5 := s1; assert(s5 = [1, 3, 7]);
    s6 := s1; assert(s6 = [1, 3, 7]);
    s7 := s1; assert(s7 = [1, 3, 7]);
    s8 := s1; assert(s8 = [1, 3, 7]);
    
    s2 := [1..50, 51..100]; assert(s2 = [1..100]);
    s1 := [1..50, 51..100]; assert(s1 = [1..100]);
    s3 := [1..50, 51..100]; assert(s3 = [1..100]);
    s4 := [1..50, 51..100]; assert(s4 = [1..100]);
    s5 := [1..50, 51..100]; assert(s5 = [1..100]);
    s6 := [1..50, 51..100]; assert(s6 = [1..100]);
    s7 := [1..50, 51..100]; assert(s7 = [1..100]);
    s8 := [1..50, 51..100]; assert(s8 = [1..100]);
    s10 := ['a'..'d', 'e'..'m']; assert(s10 = ['a'..'m']);
    assert([1, 2, 3] < [1..4]);
    assert([2..4] = [2, 3, 4]);
    assert(['a', 'c'..'f'] > ['a']);
    assert([1..6] <> [2..4]);
    assert([2, 3] + [7, 8] = [2, 3, 7, 8]);
    assert([1, 4, 6] * [1, 6] = [1, 6]);
    assert([1] + [2] <= [1..3]);
    assert([2, 3, 5] - [2, 3] = [5]);
    assert(5 in [4, 5, 8]);
    assert([1, 2] + [] = [1, 2]);
    assert([1, 2] * [] = []);
    assert([1, 2] - [] = [1, 2]);
    assert(not (5 in [7]));
    s12 := [1..4]; 
    assert(s12 = [3..4]);
    s13 := ['a'..'d']; assert(s13 = ['b'..'d']);
  end;

begin
  s2 := [1, 4]; assert(s2 = [1, 4]);
  s1 := [4, 7, 8]; assert(s1 = [4, 7, 8]);
  s3 := [2, 6]; assert(s3 = [2, 6]);
  s4 := [2, 6]; assert(s4 = [2, 6]);
  s5 := [2, 6]; assert(s5 = [2, 6]);
  s6 := [2, 6]; assert(s6 = [2, 6]);
  s7 := [2, 6]; assert(s7 = [2, 6]);
  s8 := [2, 6]; assert(s8 = [2, 6]);
  s9 := [2.71, 3.14]; assert(s9 = [2.71, 3.14]);
  s10 := ['a', 'c', 'e']; assert(s10 = ['a', 'c', 'e']);
  s11 := ['aaa', 'bbb', 'ccc']; assert(s11 = ['aaa', 'bbb', 'ccc']);
  
  s1 := [1, 3, 7];
  s2 := s1; assert(s2 = [1, 3, 7]);
  s3 := s1; assert(s3 = [1, 3, 7]);
  s4 := s1; assert(s4 = [1, 3, 7]);
  s5 := s1; assert(s5 = [1, 3, 7]);
  s6 := s1; assert(s6 = [1, 3, 7]);
  s7 := s1; assert(s7 = [1, 3, 7]);
  s8 := s1; assert(s8 = [1, 3, 7]);
  
  s2 := [1..50, 51..100]; assert(s2 = [1..100]);
  s1 := [1..50, 51..100]; assert(s1 = [1..100]);
  s3 := [1..50, 51..100]; assert(s3 = [1..100]);
  s4 := [1..50, 51..100]; assert(s4 = [1..100]);
  s5 := [1..50, 51..100]; assert(s5 = [1..100]);
  s6 := [1..50, 51..100]; assert(s6 = [1..100]);
  s7 := [1..50, 51..100]; assert(s7 = [1..100]);
  s8 := [1..50, 51..100]; assert(s8 = [1..100]);
  s10 := ['a'..'d', 'e'..'m']; assert(s10 = ['a'..'m']);
  assert([1, 2, 3] < [1..4]);
  assert([2..4] = [2, 3, 4]);
  assert(['a', 'c'..'f'] > ['a']);
  assert([1..6] <> [2..4]);
  assert([2, 3] + [7, 8] = [2, 3, 7, 8]);
  assert([1, 4, 6] * [1, 6] = [1, 6]);
  assert([1] + [2] <= [1..3]);
  assert([2, 3, 5] - [2, 3] = [5]);
  assert(5 in [4, 5, 8]);
  assert([1, 2] + [] = [1, 2]);
  assert([1, 2] * [] = []);
  assert([1, 2] - [] = [1, 2]);
  assert(not (5 in [7]));
  s12 := [1..4]; 
  assert(s12 = [3..4]);
  s13 := ['a'..'d']; assert(s13 = ['b'..'d']);
  Nested;
end;

type
  TDiap = 1..3;

procedure Test3(var s: set of TDiap);
begin
  assert(not (4 in s));
  s := [1..6];
  assert(s = [1..3]);
end;

procedure Test4(var s: set of TDiap);
  procedure Nested;
  begin
    assert(not (4 in s));
    s := [1..6];
    assert(s = [1..3]);
  end;

begin
  Nested;
end;

var
  s2: set of byte;
  s1: set of integer;
  s3: set of smallint;
  s4: set of shortint;
  s5: set of word;
  s6: set of longword;
  s7: set of int64;
  s8: set of uint64;
  s9: set of real;
  s10: set of char;
  s11: set of string;
  s12: set of 3..6;
  s13: set of 'b'..'f';
  s14: set of TDiap;
  arr: array [1..4] of set of TDiap;
  arr2: array[1..4] of real;

begin
  s2 := [1, 4]; assert(s2 = [1, 4]);
  s1 := [4, 7, 8]; assert(s1 = [4, 7, 8]);
  s3 := [2, 6]; assert(s3 = [2, 6]);
  s4 := [2, 6]; assert(s4 = [2, 6]);
  s5 := [2, 6]; assert(s5 = [2, 6]);
  s6 := [2, 6]; assert(s6 = [2, 6]);
  s7 := [2, 6]; assert(s7 = [2, 6]);
  s8 := [2, 6]; assert(s8 = [2, 6]);
  s9 := [2.71, 3.14]; assert(s9 = [2.71, 3.14]);
  s10 := ['a', 'c', 'e']; assert(s10 = ['a', 'c', 'e']);
  s11 := ['aaa', 'bbb', 'ccc']; assert(s11 = ['aaa', 'bbb', 'ccc']);
  
  s1 := [1, 3, 7];
  s2 := s1; assert(s2 = [1, 3, 7]);
  s3 := s1; assert(s3 = [1, 3, 7]);
  s4 := s1; assert(s4 = [1, 3, 7]);
  s5 := s1; assert(s5 = [1, 3, 7]);
  s6 := s1; assert(s6 = [1, 3, 7]);
  s7 := s1; assert(s7 = [1, 3, 7]);
  s8 := s1; assert(s8 = [1, 3, 7]);
  
  s2 := [1..50, 51..100]; assert(s2 = [1..100]);
  s1 := [1..50, 51..100]; assert(s1 = [1..100]);
  s3 := [1..50, 51..100]; assert(s3 = [1..100]);
  s4 := [1..50, 51..100]; assert(s4 = [1..100]);
  s5 := [1..50, 51..100]; assert(s5 = [1..100]);
  s6 := [1..50, 51..100]; assert(s6 = [1..100]);
  s7 := [1..50, 51..100]; assert(s7 = [1..100]);
  s8 := [1..50, 51..100]; assert(s8 = [1..100]);
  s10 := ['a'..'d', 'e'..'m']; assert(s10 = ['a'..'m']);
  assert([1, 2, 3] < [1..4]);
  assert([2..4] = [2, 3, 4]);
  assert(['a', 'c'..'f'] > ['a']);
  assert([1..6] <> [2..4]);
  assert([2, 3] + [7, 8] = [2, 3, 7, 8]);
  assert([1, 4, 6] * [1, 6] = [1, 6]);
  assert([1] + [2] <= [1..3]);
  assert([2, 3, 5] - [2, 3] = [5]);
  assert(5 in [4, 5, 8]);
  assert([1, 2] + [] = [1, 2]);
  assert([1, 2] * [] = []);
  assert([1, 2] - [] = [1, 2]);
  assert(not (5 in [7]));
  s12 := [1..4]; 
  assert(s12 = [3..4]);
  s13 := ['a'..'d']; assert(s13 = ['b'..'d']);
  SetTest;
  SetTest2;
  
  s14 := [1..6];
  assert(s14 = [1..3]);
  Test3(s14);
  Test4(s14);
  s2 := [];
  Include(s2, 2);
  Include(s2, 5);
end.