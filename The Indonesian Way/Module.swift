import Foundation

public class Course {
    public var modules: [Module] = []
    
    public init() {
        modules.append(GetModule_1())
    }
}

public class Module {
    public var title : String = ""
    
    public var lessons: [Lesson] = []
}

public class Lesson {
    public var number:Int
    
    public var description : String = ""
    
    public var title : String {
        return "Lesson \(number)"
    }
    
    public var aims = [String]()
    
    public var texts = [String]()
    
    public var subLessons = [SubLesson]()
    
    public init(number: Int) {
        self.number = number
    }
}

public class SubLesson {
    public var title: String = ""
    
    public var units = [Unit]()
    
    public init(title: String) {
        self.title = title
    }
}

public class Unit {
    public var title : String = ""
    
    public var audioNames : [String] = []
    
    public init(title: String, audio: String) {
        self.title = title
        self.audioNames.append(audio)
    }
    
    public init(title: String, audioNames: [String]) {
        self.title = title
        self.audioNames.appendContentsOf(audioNames)
    }
}

// text / dialogue
// transcription
//      speaker 1, speaker 2, speaker...
// translation
//      speaker 1, speaker 2, speaker...

public class WordCard {
    // eng
    // add eng
    // id
    // add id
    // info text
    // formal / informal?
}

// ---- End of generic classes ----

func GetModule_1() -> Module {
    let module = Module()
    module.title = "Module 1"
    
    module.lessons.append(GetLesson_1())
    module.lessons.append(GetLesson_2())
    module.lessons.append(GetLesson_3())
    module.lessons.append(GetLesson_4())
    module.lessons.append(GetLesson_5())
    module.lessons.append(GetLesson_6())
    module.lessons.append(GetLesson_7())
    module.lessons.append(GetLesson_8())
    module.lessons.append(GetLesson_9())
    module.lessons.append(GetLesson_10())
    module.lessons.append(GetLesson_11())
    module.lessons.append(GetLesson_12())
    module.lessons.append(GetLesson_13())
    module.lessons.append(GetLesson_14())
    module.lessons.append(GetLesson_15())
    
    return module
}

func GetLesson_1() -> Lesson {
    let lesson = Lesson(number:1)
    lesson.description = "Getting a Conversation Going"
    
    lesson.aims.append("To learn about some of the basic differences between Indonesian and English")
    lesson.aims.append("To practice some common greetings and initial smalltalk")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Introducing Yourself", audio: "001-01"))
    subLesson.units.append(Unit(title: "Ucapan / Pronunciation", audio: "001-02"))
    subLesson.units.append(Unit(title: "Dialogue 1", audio: "001-03"))
    subLesson.units.append(Unit(title: "Dialogue 2", audio: "001-04"))
    subLesson.units.append(Unit(title: "Ucapan / Pronunciation", audio: "001-05"))
    subLesson.units.append(Unit(title: "Latihan 1 Listening—Menyimak", audio: "001-06"))
    subLesson.units.append(Unit(title: "Latihan 3 Listening—Menyimak", audio: "001-07"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_2() -> Lesson {
    let lesson = Lesson(number:2)
    lesson.description = "Where Are You From?"
    
    lesson.aims.append("To practise asking where a person comes from")
    lesson.aims.append("To get to know the Indonesian names for a number of countries")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Dialogue", audio: "002-01"))
    subLesson.units.append(Unit(title: "Dialogue", audio: "002-02"))
    subLesson.units.append(Unit(title: "Names of Countries", audio: "002-03"))
    // the next two are basically only two audio files within one unit
    subLesson.units.append(Unit(title: "Ucapan: Pronouncing Indonesian Vowels", audioNames: ["002-04", "002-05"]))
    subLesson.units.append(Unit(title: "Latihan 2—Percakapan", audio: "002-01"))
    subLesson.units.append(Unit(title: "Latihan 4—Menyimak dan Menulis", audio: "002-06"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_3() -> Lesson {
    let lesson = Lesson(number:3)
    lesson.description = "Talking About Buildings And Places"
    
    lesson.aims.append("To gain familiarity with the terms for some commonly encountered buildings and places and to practise using them in simple conversations")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Dialogue: Putting Places into a Conversation", audio: "003-01"))
    subLesson.units.append(Unit(title: "Ucapan: Pronouncing the Indonesian /r/", audio: "003-02"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_4() -> Lesson {
    let lesson = Lesson(number:4)
    lesson.description = "Asking Simple Questions"
    
    lesson.aims.append("To practise asking and answering questions that have a simple “yes” or “no” answer")
    lesson.aims.append("To take the first steps in expressing personal preferences")
    lesson.aims.append("To learn the names of some common foods and drinks")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "“Real” Verbs and “Helper” Verbs", audio: "004-01"))
    subLesson.units.append(Unit(title: "In a Streetside Eatery", audio: "004-02"))
    // uses both audio 004-03 and 004-02 (again)
    subLesson.units.append(Unit(title: "Latihan 2—Formal & Informal Speech", audio: "004-03"))
    subLesson.units.append(Unit(title: "Latihan 8—Menyimak", audio: "004-04"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_5() -> Lesson {
    let lesson = Lesson(number:5)
    lesson.description = "Review & More Apakah Questions"
    
    lesson.aims.append("To review the grammar covered in the first four lessons and learn how to use the common connector words dan, atau, juga and tetapi.")
    lesson.aims.append("To practise some variations on apakah questions")
    lesson.aims.append("To learn new terms for common foods, drinks and places")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Latihan 3—Pemahaman: Percakapan", audio: "005-01"))
    subLesson.units.append(Unit(title: "Latihan 5—Ragam Formal", audio: "005-01"))
    subLesson.units.append(Unit(title: "Latihan 6—Ragam Informal", audio: "005-02"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_6() -> Lesson {
    let lesson = Lesson(number:6)
    lesson.description = "Asking About Distance and Location"
    
    lesson.aims.append("To practise the order of words in noun phrases")
    lesson.aims.append("To introduce and practise some common prepositions of place")
    lesson.aims.append("To practise describing the distance and location of places")
   
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Some Common Prepositions of Place", audio: "006-01"))
    subLesson.units.append(Unit(title: "Latihan 5—Menyimak: Pertanyaan dan Jawaban", audio: "006-02"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_7() -> Lesson {
    let lesson = Lesson(number:7)
    lesson.description = "“Whose Is It?”"
    
    lesson.aims.append("To practise using possessive phrases")
    lesson.aims.append("To learn more about answering questions with “yes” and “no”.")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Asking “Whose Is It?”", audio: "007-01"))
    subLesson.units.append(Unit(title: "Exercise 07-02—Dialogue ", audio: "007-02"))
    subLesson.units.append(Unit(title: "Exercise 07-03—Dialogue Sri & Efendi", audio: "007-03"))
    subLesson.units.append(Unit(title: "Latihan 2—Menyimak 1", audio: "007-04"))
    subLesson.units.append(Unit(title: "Latihan 3—Menyimak 2", audio: "007-05"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_8() -> Lesson {
    let lesson = Lesson(number:8)
    lesson.description = "“How Do I Get There?”"
    
    lesson.aims.append("To learn the names of vehicles and practise talking about using transport")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "A Little More on Naik Apa?", audio: "008-01"))
    subLesson.units.append(Unit(title: "Exercise 08-02", audio: "008-02"))
    subLesson.units.append(Unit(title: "Latihan 2—Menyimak: Pertanyaan dan Jawaban", audio: "008-03"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_9() -> Lesson {
    let lesson = Lesson(number:9)
    lesson.description = "“Let’s Complain!”"
    
    lesson.aims.append("To practise “pointing” using ini & itu.")
    lesson.aims.append("To practise using adjectives and make a start describing things")
    lesson.aims.append("To learn how to express likes and dislikes, and to make criticisms and complaints")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Listening", audio: "009-01"))
    subLesson.units.append(Unit(title: "Latihan 1—Menyimak", audio: "009-02"))
    subLesson.units.append(Unit(title: "Latihan 6—Menjodohkan", audio: "009-03"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_10() -> Lesson {
    let lesson = Lesson(number:10)
    lesson.description = "“What Do You Think?”"
    
    lesson.aims.append("To practise asking what something is like or what somebody thinks")
   
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Latihan 1—Dialogue", audio: "010-01"))
    subLesson.units.append(Unit(title: "Latihan 2—Isian 1", audio: "010-01"))
    subLesson.units.append(Unit(title: "Latihan 3—Isian 2", audio: "010-01"))
    subLesson.units.append(Unit(title: "Latihan 4—Menyimak: Pertanyaan dan Jawaban", audio: "010-02"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_11() -> Lesson {
    let lesson = Lesson(number:11)
    lesson.description = "Saying “No” and “Not”"
    
    lesson.aims.append("To practise a common use of yang")
    lesson.aims.append("To practise distinguishing between the negators tidak and bukan")
    lesson.aims.append("To learn how to talk about nationality and ethnic origin")
   
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Dialogue: Mistaking Someone’s Nationality", audio: "011-01"))
    subLesson.units.append(Unit(title: "Dialogue", audio: "011-02"))
    subLesson.units.append(Unit(title: "Latihan 2—Menyimak", audio: "011-03"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_12() -> Lesson {
    let lesson = Lesson(number:12)
    lesson.description = "This is a good restaurant. Let’s go in."
    
    lesson.aims.append("To practise the words and phrases that will enable you to eat in a restaurant")
   
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Conversation in a Restaurant", audio: "012-01"))
    subLesson.units.append(Unit(title: "Latihan 2—Pemahaman", audio: "012-01"))
    subLesson.units.append(Unit(title: "Latihan 4—Menyimak: Pertanyaan dan Jawaban", audio: "012-02"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_13() -> Lesson {
    let lesson = Lesson(number:13)
    lesson.description = "“Thank you, but sorry... I can’t.”"
    
    lesson.aims.append("To learn how to refer to the near future")
    lesson.aims.append("To learn how to invite someone to do something (and say “no” to an invitation)")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Inviting Someone to Do Something", audio: "013-01"))
    subLesson.units.append(Unit(title: "Latihan 4—Menjodohkan", audio: "013-02"))
    subLesson.units.append(Unit(title: "Latihan 5—Menyimak", audio: "013-03"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_14() -> Lesson {
    let lesson = Lesson(number:14)
    lesson.description = "Helping a Visitor to Your Campus"
    
    lesson.aims.append("To review prepositions of place and locative nouns")
    lesson.aims.append("To practise getting information with di mana, apa and naik apa")
    lesson.aims.append("To review in conversation the basic vocabulary of buildings and places")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Ucapan: Pronunciation Review", audio: "014-01"))
    subLesson.units.append(Unit(title: "Latihan 3—Pertanyaan dan Jawaban", audio: "014-01"))
    subLesson.units.append(Unit(title: "Latihan 6—Menyimak", audio: "014-01"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}

func GetLesson_15() -> Lesson {
    let lesson = Lesson(number:15)
    lesson.description = "Getting Orientated in Kupang"
    
    lesson.aims.append("To bring together and practise all the components of Module 1")
    
    let subLessonWords = SubLesson(title: "Words")
    subLessonWords.units.append(Unit(title: "Repeat important words", audio: ""))
    subLessonWords.units.append(Unit(title: "New words", audio: ""))
    lesson.subLessons.append(subLessonWords)
    
    let subLesson = SubLesson(title: "Texts and Dialogues")
    subLesson.units.append(Unit(title: "Latihan 2—Menyimak", audio: "015-01"))
    lesson.subLessons.append(subLesson)
    
    return lesson
}