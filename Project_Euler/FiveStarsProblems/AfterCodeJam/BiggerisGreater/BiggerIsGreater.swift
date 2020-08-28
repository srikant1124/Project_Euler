//
//  BiggerIsGreater.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/5/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation
//https://stackoverflow.com/questions/47981928/how-to-swap-two-characters-in-string-swift4
//https://www.nayuki.io/page/next-lexicographical-permutation-algorithm
//https://leetcode.com/articles/next-permutation/
//https://stackoverflow.com/questions/1622532/algorithm-to-find-next-greater-permutation-of-a-given-string


// CPP code to pass all test cases.
/*
#include <iostream>

std::string biggerIsGreater(std::string w);
int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    biggerIsGreater("abcd");
    return 0;
}

std::string biggerIsGreater(std::string w) {
    std::string output = "no answer";
    int stringLen = w.length();
    int firstDecrIndex = stringLen;
    int index = stringLen - 1;
    int firstDecr = 'a';
    while (index != -1) {
        int number = w[index];
        if (number < firstDecr) {
            firstDecrIndex = index;
            firstDecr = number;
            break;
        }
        firstDecr = number;
        index -= 1;
    }
    
    if (firstDecrIndex != stringLen) {
        int preIndex = firstDecrIndex + 1;
        for (int index = (firstDecrIndex + 1); index < stringLen; index++) {
            int number = w[index];
            if (number > firstDecr) {
                preIndex = index;
            } else {
                break;
            }
        }
        char temp = w[preIndex];
        w[preIndex] = w[firstDecrIndex];
        w[firstDecrIndex] = temp;
        
        int i = firstDecrIndex + 1;
        int j = stringLen - 1;
        
        while (i < j) {
            if (w[i] != w[j]) {
                char temp = w[i];
                w[i] = w[j];
                w[j] = temp;
            }
            i += 1;
            j -= 1;
        }
        
    } else {
        w = "no answer";
    }
    std::cout<<w;
    return w;
}*/


struct BiggerIsGreater {
    func biggerIsGreater(w: String) -> String {
        var output = "no answer"
        var arr_w = Array(w)
        var firstDecr = 97
        let stringCount = arr_w.count
        var firstDecrIndex = stringCount
        var index = stringCount - 1
        while index != -1 {
            guard let number = arr_w[index].asciiValue else { continue }
            if Int(number) < firstDecr {
                firstDecrIndex = index
                firstDecr = Int(number)
                break
            }
            firstDecr = Int(number)
            index -= 1
        }

        if firstDecrIndex != stringCount {
            var preIndex = firstDecrIndex + 1
            for index in (firstDecrIndex + 1)..<stringCount {
                guard let number = arr_w[index].asciiValue else { continue }
                if Int(number) > firstDecr {
                    preIndex = index
                } else {
                    break
                }
            }
            let temp = arr_w[preIndex]
            arr_w[preIndex] = arr_w[firstDecrIndex]
            arr_w[firstDecrIndex] = temp
            
            var i = firstDecrIndex + 1
            var j = stringCount - 1
            
            while i < j {
                if arr_w[i] != arr_w[j] {
                    let temp = arr_w[i]
                    arr_w[i] = arr_w[j]
                    arr_w[j] = temp
                }
                i += 1
                j -= 1
            }
            output = String(arr_w)
        }
        return output
    }
}

