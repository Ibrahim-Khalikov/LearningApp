//
//  ContentModel.swift
//  LearningApp
//
//  Created by cloud_vfx on 29/05/21.
//

import Foundation

class ContentModel : ObservableObject {
   
    @Published var modules = [Module]()
    
    var styleData : Data?
    
    init(){
        
        getLocalData()
    }

    func getLocalData() {
        
        let jsonurl = Bundle.main.url(forResource: "data", withExtension: "json")
    
        do{
            
            let jsonData = try Data(contentsOf: jsonurl!)
            
            let jsondecoder = JSONDecoder()
        
            
            let module = try jsondecoder.decode([Module].self, from: jsonData)
                  
            self.modules = module
        }
        
        catch{
            
            print("could't find json path")
        }
    
    
    let styleurl = Bundle.main.url(forResource: "style", withExtension: "html")
    
    do{
    let styleData = try Data(contentsOf: styleurl!)
   
    self.styleData = styleData
    
    }
    
    catch{
        print("coutld fonf dataaaaa")
        }
    }
}
