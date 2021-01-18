import ArgumentParser
import Foundation

struct CPD2xcode: ParsableCommand {
  static let configuration = CommandConfiguration(
    abstract: "A Swift command-line tool to convert PMD CPD results to Xcode warnings"
  )

  @Argument(help: "The path to the CPD XML report")
  var xmlReport: String

  func run() throws {
    guard FileManager.default.fileExists(atPath: xmlReport),
          let xmlDoc = FileManager.default
            .contents(atPath: xmlReport)
            .map({ try? XMLDocument(data: $0, options: .documentTidyXML) })
    else {
      print("ERROR XML input")
      return
    }

    print(xmlDoc as Any)
  }
}

CPD2xcode.main()
