import Foundation

class PersonSelectedRepository {
    private static let key = "PersonSelectedState"
    private let userDefaults = UserDefaults.standard
    
    
    func isPersonSelected(_ id: Int ) -> Bool {
        return selectedPeopleIDs.contains(id)
    }
    
    func selectPerson(_ id: Int) {
        let updatedSelectedPeopleIDs = Set(selectedPeopleIDs + [id])
        userDefaults.set(Array(updatedSelectedPeopleIDs), forKey: PersonSelectedRepository.key)
    }
    
    func deselectPerson(_ id:Int) {
        let updatedSelectedPeopleIDs = selectedPeopleIDs.filter { $0 != id }
        userDefaults.set(updatedSelectedPeopleIDs, forKey: PersonSelectedRepository.key)
    }
    
    private var selectedPeopleIDs: [Int] {
        let ids = userDefaults.array(forKey: PersonSelectedRepository.key) as? [Int]
        
        return ids ?? []
    }
}
