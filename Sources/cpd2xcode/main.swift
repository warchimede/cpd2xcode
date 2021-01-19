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
          let xmlRoot = FileManager.default
            .contents(atPath: xmlReport)
            .flatMap({ try? XMLDocument(data: $0, options: .documentTidyXML) })
            .flatMap({ $0.rootElement() })
    else {
      print("ERROR XML input")
      return
    }

    xmlRoot.elements(forName: "duplication").forEach { duplication in
      duplication.elements(forName: "file").forEach { file in
        print(file)
      }
    }
  }
}

CPD2xcode.main()
