import Foundation
/**
 * Fixme: ⚠️️ Could this be a struct?
 */
class SectionData {
   let title: String? /*if title is nil then we use no header*/
   var cellData: [CellDataKind]
   init(title: String?, cellData: [CellDataKind]) {
      self.title = title
      self.cellData = cellData
   }
}
/*Data*/
class PrimarySectionData: SectionData {}
class SecondarySectionData: SectionData {}
class TertiarySectionData: SectionData {}
