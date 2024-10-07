import XCTest
import SwiftTreeSitter
import TreeSitterMarkdown

final class TreeSitterMarkdownTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_markdown())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Markdown grammar")
    }
}
