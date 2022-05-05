//
//  Dict.swift
//  NewDictionary
//
//  Created by Tempnixk on 2022/05/03.
//

import SwiftUI


struct Dict: Identifiable, Decodable {
    let id = UUID()
    let title: String
    let subtitle: String
    let summary: String
    let declaration: String
    let overview: String
    var isFavorite: Bool
}

/*
let dictionaries = [
//Collection Types
    Dict(title: "Arrays", subtitle: "Collection Types",summary: "An ordered, random-access collection.", declaration: "@frozen struct Array<Element>", overview: "Arrays are one of the most commonly used data types in an app. You use arrays to organize your app’s data. Specifically, you use the Array type to hold elements of a single type, the array’s Element type. An array can store any kind of elements—from integers to strings to classes. Swift makes it easy to create arrays in your code using an array literal: simply surround a comma-separated list of values with square brackets. Without any other information, Swift creates an array that includes the specified values, automatically inferring the array’s Element type. "),
    Dict(title: "Dictionaries", subtitle: "Collection Types", summary: "A collection whose elements are key-value pairs.", declaration: "@frozen struct Dictionary<Key, Value> where Key : Hashable", overview: "A dictionary is a type of hash table, providing fast access to the entries it contains. Each entry in the table is identified using its key, which is a hashable type such as a string or number. You use that key to retrieve the corresponding value, which can be any object. In other languages, similar data types are known as hashes or associated arrays. Create a new dictionary by using a dictionary literal. A dictionary literal is a comma-separated list of key-value pairs, in which a colon separates each key from its associated value, surrounded by square brackets. You can assign a dictionary literal to a variable or constant or pass it to a function that expects a dictionary."),
    Dict(title: "Sets", subtitle: "Collection Types", summary: "An unordered collection of unique elements.", declaration: "@frozen struct Set<Element> where Element : Hashable", overview: "You use a set instead of an array when you need to test efficiently for membership and you aren’t concerned with the order of the elements in the collection, or when you need to ensure that each element appears only once in a collection. You can create a set with any element type that conforms to the Hashable protocol. By default, most types in the standard library are hashable, including strings, numeric and Boolean types, enumeration cases without associated values, and even sets themselves. Swift makes it as easy to create a new set as to create a new array. Simply assign an array literal  to a variable or constant with the Set type specified. ordered, random-access collection."),
    
// Conditional Statements
    Dict(title: "if/else", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dict(title: "switch/case", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dict(title: "guard", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dict(title: "Comparison Operators", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),

    Dict(title: "Ternary Conditional Operator", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dict(title: "Logical Operatiors", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dict(title: "Control Transfer Statements", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dict(title: "Checking API Availability", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),

    
// Data
    Dict(title: "Binding", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "State", subtitle: "Data", summary: "", declaration: "", overview: ""),

    Dict(title: "ObservedObject", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "EnvironmentObject", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "StateObject", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "ObservableObject", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "FocusedBinding", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "FocusedValue", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "Environment", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "PreferenceKey", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "AppStorage", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "SceneStorage", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "FetchRequest", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dict(title: "Transaction", subtitle: "Data", summary: "", declaration: "", overview: ""),

    
// Enum
    Dict(title: "enum", subtitle: "Enum", summary: "", declaration: "", overview: ""),
    
    Dict(title: "Associated Values", subtitle: "Enum", summary: "", declaration: "", overview: ""),
    Dict(title: "Raw Values", subtitle: "Enum", summary: "", declaration: "", overview: ""),


// Function
    Dict(title: "func", subtitle: "Function", summary: "", declaration: "", overview: ""),
    Dict(title: "Parameters and return value", subtitle: "Function", summary: "", declaration: "", overview: ""),

    Dict(title: "Argument Labels and Parameter Names", subtitle: "Function", summary: "", declaration: "", overview: ""),


// Loops
    Dict(title: "For-in", subtitle: "Loops", summary: "", declaration: "", overview: ""),
    
    Dict(title: "While", subtitle: "Loops", summary: "", declaration: "", overview: ""),
    Dict(title: "Repeat-While", subtitle: "Loops", summary: "", declaration: "", overview: ""),


// Methods
    Dict(title: "Instance Methods", subtitle: "Methods", summary: "", declaration: "", overview: ""),
    
    Dict(title: "Type Methods", subtitle: "Methods", summary: "", declaration: "", overview: ""),


// Operations
    Dict(title: "Basic Operators", subtitle: "Operations", summary: "", declaration: "", overview: ""),
    Dict(title: "Assignment Operator", subtitle: "Operations", summary: "", declaration: "", overview: ""),
    Dict(title: "Arithmetic Operations", subtitle: "Operations", summary: "", declaration: "", overview: ""),
    Dict(title: "Range Operations", subtitle: "Operations", summary: "", declaration: "", overview: ""),

    Dict(title: "Compound Assignment Operations", subtitle: "Operations", summary: "", declaration: "", overview: ""),


// Optionals
    Dict(title: "nil", subtitle: "Optionals", summary: "", declaration: "", overview: ""),
    Dict(title: "Forced Unwrapping", subtitle: "Optionals", summary: "", declaration: "", overview: ""),
    Dict(title: "Optional Binding", subtitle: "Optionals", summary: "", declaration: "", overview: ""),

    Dict(title: "Implicitly Unwrapped Optionals", subtitle: "Optionals", summary: "", declaration: "", overview: ""),
    Dict(title: "Nil-Coalescing Operator", subtitle: "Optionals", summary: "", declaration: "", overview: ""),
    Dict(title: "Optional Chaining", subtitle: "Optionals", summary: "", declaration: "", overview: ""),

    
// Properties
    Dict(title: "Stored Properties", subtitle: "Properties", summary: "", declaration: "", overview: ""),

    Dict(title: "Computed Properties", subtitle: "Properties", summary: "", declaration: "", overview: ""),
    Dict(title: "Property Observers", subtitle: "Properties", summary: "", declaration: "", overview: ""),
    Dict(title: "Property Wrappers", subtitle: "Properties", summary: "", declaration: "", overview: ""),
    Dict(title: "Global and Local Variables", subtitle: "Properties", summary: "", declaration: "", overview: ""),
    Dict(title: "Type Properties", subtitle: "Properties", summary: "", declaration: "", overview: ""),


// Structures / Classes
    Dict(title: "struct", subtitle: "Structures / Classes", summary: "", declaration: "", overview: ""),
    Dict(title: "class", subtitle: "Structures / Classes", summary: "", declaration: "", overview: ""),

    Dict(title: "value type vs reference type", subtitle: "Structures / Classes", summary: "", declaration: "", overview: ""),


// Types
    Dict(title: "Int", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Double", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Numeric Literals", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Numeric Type Conversion", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Bool", subtitle: "Types", summary: "", declaration: "", overview: ""),

    Dict(title: "String Literals", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Empty String", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "String Interpolation", subtitle: "Types", summary: "", declaration: "", overview: ""),

    Dict(title: "String Mutability", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Strings as Value Types", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Working with Characters", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Unicode", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Counting Characters", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Modifying a String", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dict(title: "Substrings", subtitle: "Types", summary: "", declaration: "", overview: ""),


]
*/
