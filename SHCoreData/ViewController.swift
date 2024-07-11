//
//  ViewController.swift
//  SHCoreData
//
//  Created by 김승희 on 7/10/24.
//

import UIKit
//import CoreData

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create
        UserDefaults.standard.set("010-0000-0000", forKey: "phoneNumber")
        
        //Read
        var phoneNumber = UserDefaults.standard.string(forKey: "phoneNumber")
        print("저장된 전화번호: \(phoneNumber)") // optional로 출력됨 (key 일치값 없을수 있으니)
        
        //Update
        UserDefaults.standard.set("010-3333-4444", forKey: "phoneNumber")
        phoneNumber = UserDefaults.standard.string(forKey: "phoneNumber")
        print("저장된 전화번호: \(phoneNumber)")
        
        //Delete
        UserDefaults.standard.removeObject(forKey: "phoneNumber")
        phoneNumber = UserDefaults.standard.string(forKey: "phoneNumber")
        print("전화번호가 남아있는지 확인 \(phoneNumber)")
    }
    
//    var container: NSPersistentContainer!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        self.container = appDelegate.persistentContainer
//        
//        createData(name: "SH", phoneNumber: "010-0000-1111")
//        updateData(currentName: "SH", updateName: "승희")
//        deleteData(name: "승희")
//        readAllData()
//    }
//
//    //shCoreData에 데이터 Create
//    func createData(name: String, phoneNumber: String) {
//        guard let entity = NSEntityDescription.entity(forEntityName: PhoneBook.className, in: self.container.viewContext) else {
//            return
//        }
//        let newPhoneBook = NSManagedObject(entity: entity, insertInto: self.container.viewContext)
//        newPhoneBook.setValue(name, forKey: PhoneBook.Key.name)
//        newPhoneBook.setValue(phoneNumber, forKey: PhoneBook.Key.phoneNumber)
//        
//        do {
//            try self.container.viewContext.save()
//            print("문맥 저장 성공")
//        } catch {
//            print("문맥 저장 실패")
//        }
//    }
//    
//    //shCoreData에서 데이터 Read
//    func readAllData() {
//        do {
//            let phoneBooks = try self.container.viewContext.fetch(PhoneBook.fetchRequest())
//            
//            for phoneBook in phoneBooks as [NSManagedObject] {
//                if let name = phoneBook.value(forKey: PhoneBook.Key.name) as? String,
//                   let phoneNumber = phoneBook.value(forKey: PhoneBook.Key.phoneNumber) as? String {
//                        print("이름: \(name), 전화번호: \(phoneNumber)")
//                    }
//                }
//        } catch {
//            print("데이터 읽기 실패")
//        }
//    }
//    
//    //shCoreData에서 데이터 Update
//    func updateData(currentName: String, updateName: String) {
//        let fetchRequest = PhoneBook.fetchRequest()
//        fetchRequest.predicate = NSPredicate(format: "name == %@", currentName)
//        do {
//            let result = try self.container.viewContext.fetch(fetchRequest)
//            
//            for data in result as [NSManagedObject] {
//                //data 중 name의 값을 updateName으로 update
//                data.setValue(updateName, forKey: PhoneBook.Key.name)
//            }
//            try self.container.viewContext.save()
//            print("데이터 수정 성공")
//        } catch {
//            print("데이터 수정 실패")
//        }
//    }
//    
//    //shCoreData에서 데이터 delete
//    func deleteData(name: String) {
//        let fetchRequest = PhoneBook.fetchRequest()
//        fetchRequest.predicate = NSPredicate(format: "name == %@", name)
//        
//        do {
//            let result = try self.container.viewContext.fetch(fetchRequest)
//            for data in result as [NSManagedObject] {
//                self.container.viewContext.delete(data)
//            }
//            try self.container.viewContext.save()
//        } catch {
//            print("데이터 삭제 실패")
//        }
//    }
}

