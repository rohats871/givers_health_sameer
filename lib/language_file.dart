class LanguageFile {
  static String selectedLanguage = "";

  static Map<String, String> hindi = {
    "create account": "खाता बनाएं",
    "sign in": "साइन इन करें",
    "welcome to givers health": "गिवर्स  हेल्थ में आपका स्वागत है",
    "find":
        "अपनी देखभाल यात्रा के माध्यम से संसाधन, विशेषज्ञ मार्गदर्शन और सामुदायिक सहायता प्राप्त करें।",
  };
  static Map<String, String> english = {
    "create account": "CREATE ACCOUNT",
    "sign in": "SIGN IN",
    "welcome to givers health": "Welcome to Givers Health",
    "find":
        "Find resources, expert guidance, and community support through your caregiving journey.",
  };

  static Map<String, String> function1() {
    late Map<String, String> map1;
    if (selectedLanguage == "hindi") {
      map1 = hindi;
    } else if (selectedLanguage == "english") {
      map1 = english;
    }
    return map1;
  }
}
