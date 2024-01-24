//
//  DemoXCStringsJSON.swift
//
//
//  Created by Mark DiFranco on 2024-01-24.
//

import Foundation

enum DemoXCStringsJSON {

    static var data: Data {
        """
        {
          "sourceLanguage" : "en",
          "strings" : {
            "TITLE_1" : {
              "extractionState" : "manual",
              "localizations" : {
                "en" : {
                  "stringUnit" : {
                    "state" : "translated",
                    "value" : "English value 1"
                  }
                },
                "fr-CA" : {
                  "stringUnit" : {
                    "state" : "translated",
                    "value" : "French value 1"
                  }
                }
              }
            },
            "TITLE_2" : {
              "extractionState" : "manual",
              "localizations" : {
                "en" : {
                  "stringUnit" : {
                    "state" : "translated",
                    "value" : "English value 2"
                  }
                },
                "fr-CA" : {
                  "stringUnit" : {
                    "state" : "needs_review",
                    "value" : "French value 2"
                  }
                }
              }
            },
            "TITLE_3" : {
              "extractionState" : "manual",
              "localizations" : {
                "en" : {
                  "variations" : {
                    "device" : {
                      "iphone" : {
                        "stringUnit" : {
                          "state" : "translated",
                          "value" : "English value 3 on iPhone"
                        }
                      },
                      "mac" : {
                        "stringUnit" : {
                          "state" : "translated",
                          "value" : "English value 3 on Mac"
                        }
                      },
                      "other" : {
                        "stringUnit" : {
                          "state" : "translated",
                          "value" : "English value 3"
                        }
                      }
                    }
                  }
                },
                "fr-CA" : {
                  "variations" : {
                    "device" : {
                      "iphone" : {
                        "stringUnit" : {
                          "state" : "translated",
                          "value" : "French value 3 on iPhone"
                        }
                      },
                      "mac" : {
                        "stringUnit" : {
                          "state" : "translated",
                          "value" : "French value 3 on Mac"
                        }
                      },
                      "other" : {
                        "stringUnit" : {
                          "state" : "translated",
                          "value" : "French value 3"
                        }
                      }
                    }
                  }
                }
              }
            }
          },
          "version" : "1.0"
        }
        """.data(using: .utf8)!
    }
}
