import XCTest
@testable import XCStringsParser

final class XCStringsParserTests: XCTestCase {

    var sut: XCStringsFile!

    override func setUp() async throws {
        try await super.setUp()

        sut = try XCStringsParser().decodeFile(from: DemoXCStringsJSON.data)
    }

    func test_version_isCorrect() {
        XCTAssertEqual("1.0", sut.version)
    }

    // MARK: SourceLanguage

    func test_sourceLanguage_isCorrect() {
        XCTAssertEqual("en", sut.sourceLanguage)
    }

    // MARK: English

    func test_english_title1_isCorrect() {
        XCTAssertEqual("English value 1", sut.strings["TITLE_1"]?.localizations["en"]?.stringUnit?.value)
    }

    func test_english_title3_iphone_isCorrect() {
        XCTAssertEqual("English value 3 on iPhone", sut.strings["TITLE_3"]?.localizations["en"]?.variations?.device.iphone?.stringUnit.value)
    }

    func test_english_title3_other_isCorrect() {
        XCTAssertEqual("English value 3", sut.strings["TITLE_3"]?.localizations["en"]?.variations?.device.other?.stringUnit.value)
    }

    // MARK: French

    func test_french_title1_isCorrect() {
        XCTAssertEqual("French value 1", sut.strings["TITLE_1"]?.localizations["fr-CA"]?.stringUnit?.value)
    }

    func test_french_title2_needsReview() {
        XCTAssertEqual(StringUnit.State.needsReview, sut.strings["TITLE_2"]?.localizations["fr-CA"]?.stringUnit?.state)
    }

    func test_french_title3_iphone_isCorrect() {
        XCTAssertEqual("French value 3 on iPhone", sut.strings["TITLE_3"]?.localizations["fr-CA"]?.variations?.device.iphone?.stringUnit.value)
    }

    func test_french_title3_other_isCorrect() {
        XCTAssertEqual("French value 3", sut.strings["TITLE_3"]?.localizations["fr-CA"]?.variations?.device.other?.stringUnit.value)
    }

    // MARK: DefaultStringUnit

    func test_defaultStringUnit_english_isCorrect() {
        XCTAssertEqual("English value 1", sut.strings["TITLE_1"]?.localizations["en"]?.defaultStringUnit?.value)
    }

    func test_defaultStringUnit_english_variations_isCorrect() {
        XCTAssertEqual("English value 3", sut.strings["TITLE_3"]?.localizations["en"]?.defaultStringUnit?.value)
    }

    func test_defaultStringUnit_french_isCorrect() {
        XCTAssertEqual("French value 1", sut.strings["TITLE_1"]?.localizations["fr-CA"]?.defaultStringUnit?.value)
    }

    func test_defaultStringUnit_french_variations_isCorrect() {
        XCTAssertEqual("French value 3", sut.strings["TITLE_3"]?.localizations["fr-CA"]?.defaultStringUnit?.value)
    }

    // MARK: Keys

    func test_keys_areOrderedCorrectly() {
        let expectedKeys = ["TITLE_1", "TITLE_2", "TITLE_3"]
        XCTAssertEqual(expectedKeys, sut.keys)
    }

    // MARK: AllLocales

    func test_allLocales_isCorrect() {
        let expectedLocales = ["en", "fr-CA"]
        XCTAssertEqual(expectedLocales, sut.locales)
    }
}
