/**
 * Copyright IBM Corporation 2018
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

/**
 An object containing request parameters.
 */
public struct Parameters: Encodable {

    /**
     The plain text to analyze.
     */
    public var text: String?

    /**
     The HTML file to analyze.
     */
    public var html: String?

    /**
     The web page to analyze.
     */
    public var url: String?

    /**
     Specific features to analyze the document for.
     */
    public var features: Features

    /**
     Remove website elements, such as links, ads, etc.
     */
    public var clean: Bool?

    /**
     XPath query for targeting nodes in HTML.
     */
    public var xpath: String?

    /**
     Whether to use raw HTML content if text cleaning fails.
     */
    public var fallbackToRaw: Bool?

    /**
     Whether or not to return the analyzed text.
     */
    public var returnAnalyzedText: Bool?

    /**
     ISO 639-1 code indicating the language to use in the analysis.
     */
    public var language: String?

    /**
     Sets the maximum number of characters that are processed by the service.
     */
    public var limitTextCharacters: Int?

    // Map each property name to the key that shall be used for encoding/decoding.
    private enum CodingKeys: String, CodingKey {
        case text = "text"
        case html = "html"
        case url = "url"
        case features = "features"
        case clean = "clean"
        case xpath = "xpath"
        case fallbackToRaw = "fallback_to_raw"
        case returnAnalyzedText = "return_analyzed_text"
        case language = "language"
        case limitTextCharacters = "limit_text_characters"
    }

    /**
     Initialize a `Parameters` with member variables.

     - parameter features: Specific features to analyze the document for.
     - parameter text: The plain text to analyze.
     - parameter html: The HTML file to analyze.
     - parameter url: The web page to analyze.
     - parameter clean: Remove website elements, such as links, ads, etc.
     - parameter xpath: XPath query for targeting nodes in HTML.
     - parameter fallbackToRaw: Whether to use raw HTML content if text cleaning fails.
     - parameter returnAnalyzedText: Whether or not to return the analyzed text.
     - parameter language: ISO 639-1 code indicating the language to use in the analysis.
     - parameter limitTextCharacters: Sets the maximum number of characters that are processed by the service.

     - returns: An initialized `Parameters`.
    */
    public init(
        features: Features,
        text: String? = nil,
        html: String? = nil,
        url: String? = nil,
        clean: Bool? = nil,
        xpath: String? = nil,
        fallbackToRaw: Bool? = nil,
        returnAnalyzedText: Bool? = nil,
        language: String? = nil,
        limitTextCharacters: Int? = nil
    )
    {
        self.features = features
        self.text = text
        self.html = html
        self.url = url
        self.clean = clean
        self.xpath = xpath
        self.fallbackToRaw = fallbackToRaw
        self.returnAnalyzedText = returnAnalyzedText
        self.language = language
        self.limitTextCharacters = limitTextCharacters
    }

}
