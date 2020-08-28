//
//  ACMICPCTeam.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 4/2/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ACMICPCTeam {

    func bad_acmTeam(topic: [String]) -> [Int] {
        var max = 0
        var teams = 0
        var map = [String: Int]()
        for str in topic {
            for str1 in topic {
                var count = 0
                var arr1 = str1
                var arr = str
                if arr == arr1 {
                    continue
                }
                let key = str + str1
                let keyRe = str1 + str
                for _ in arr1 {
                    let a = arr.removeFirst()
                    let b = arr1.removeFirst()
                    if a == "1" && "1" == b || a == "0" && "1" == b || a == "1" && "0" == b {
                        count += 1
                    }
                }
                if map[key] == nil && map[keyRe] == nil {
                    map[key] = 1
                    if max < count {
                        max = count
                        teams = 1
                    } else if max == count {
                        teams += 1
                    }
                }
            }
        }
        return [max, teams]
    }
    
    func acmTeam(topic: [String]) -> [Int] {
        var max = 0
        var teams = 0
        var map = [String: Int]()
        for str in topic {
            for str1 in topic {
                var count = 0
                var arr1 = str1
                var arr = str
                if arr == arr1 {
                    continue
                }
                let key = str + str1
                let keyRe = str1 + str
                for _ in arr1 {
                    let a = arr.removeFirst()
                    let b = arr1.removeFirst()
                    if a == "1" && "1" == b || a == "0" && "1" == b || a == "1" && "0" == b {
                        count += 1
                    }
                }
                if map[key] == nil && map[keyRe] == nil {
                    map[key] = 1
                    if max < count {
                        max = count
                        teams = 1
                    } else if max == count {
                        teams += 1
                    }
                }
            }
        }
        return [max, teams]
    }
    
    /*
     vector<int> acmTeam(vector<string> topic) {
     int m = topic[0].length();
     int n = topic.size();
     int cnt = 0, max_tpc = 0, temp_cnt = 0;

         for( int i = 0; i < n; i++ )
             for( int j = i + 1; j < n; j++ ){
                 temp_cnt = 0;
                 
                 for( int k = 0; k < m; k++ )
                     if(  topic[i][k] == '1' || topic[j][k] == '1' ) temp_cnt++;
                 
                 if( temp_cnt == max_tpc ){
                     cnt++;
                     continue;
                 }
                 
                 if( temp_cnt > max_tpc ){
                     max_tpc = temp_cnt;
                     cnt = 1;
                 }
             }

         return {max_tpc , cnt};
     }
     */
}
