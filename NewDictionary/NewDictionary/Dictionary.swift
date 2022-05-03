//
//  Dictionary.swift
//  NewDictionary
//
//  Created by Tempnixk on 2022/05/03.
//

import SwiftUI

struct Dictionary: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let summary: String
    let declaration: String
    let overview: String
}

let dictionaries = [
//Collection Types
    Dictionary(title: "Arrays", subtitle: "Collection Types",summary: "An ordered, random-access collection.", declaration: "@frozen struct Array<Element>", overview: "Arrays are one of the most commonly used data types in an app. You use arrays to organize your app’s data. Specifically, you use the Array type to hold elements of a single type, the array’s Element type. An array can store any kind of elements—from integers to strings to classes. Swift makes it easy to create arrays in your code using an array literal: simply surround a comma-separated list of values with square brackets. Without any other information, Swift creates an array that includes the specified values, automatically inferring the array’s Element type. "),
    Dictionary(title: "Dictionaries", subtitle: "Collection Types", summary: "A collection whose elements are key-value pairs.", declaration: "@frozen struct Dictionary<Key, Value> where Key : Hashable", overview: "A dictionary is a type of hash table, providing fast access to the entries it contains. Each entry in the table is identified using its key, which is a hashable type such as a string or number. You use that key to retrieve the corresponding value, which can be any object. In other languages, similar data types are known as hashes or associated arrays. Create a new dictionary by using a dictionary literal. A dictionary literal is a comma-separated list of key-value pairs, in which a colon separates each key from its associated value, surrounded by square brackets. You can assign a dictionary literal to a variable or constant or pass it to a function that expects a dictionary."),
    Dictionary(title: "Sets", subtitle: "Collection Types", summary: "An unordered collection of unique elements.", declaration: "@frozen struct Set<Element> where Element : Hashable", overview: "You use a set instead of an array when you need to test efficiently for membership and you aren’t concerned with the order of the elements in the collection, or when you need to ensure that each element appears only once in a collection. You can create a set with any element type that conforms to the Hashable protocol. By default, most types in the standard library are hashable, including strings, numeric and Boolean types, enumeration cases without associated values, and even sets themselves. Swift makes it as easy to create a new set as to create a new array. Simply assign an array literal  to a variable or constant with the Set type specified. ordered, random-access collection."),
    
// Conditional Statements
    Dictionary(title: "if/else", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dictionary(title: "switch/case", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dictionary(title: "guard", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Comparison Operators", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),

    Dictionary(title: "Ternary Conditional Operator", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Logical Operatiors", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Control Transfer Statements", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Checking API Availability", subtitle: "Conditional Statements", summary: "", declaration: "", overview: ""),

    
// Data
    Dictionary(title: "Binding", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "State", subtitle: "Data", summary: "", declaration: "", overview: ""),

    Dictionary(title: "ObservedObject", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "EnvironmentObject", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "StateObject", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "ObservableObject", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "FocusedBinding", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "FocusedValue", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Environment", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "PreferenceKey", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "AppStorage", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "SceneStorage", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "FetchRequest", subtitle: "Data", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Transaction", subtitle: "Data", summary: "", declaration: "", overview: ""),

    
// Enum
    Dictionary(title: "enum", subtitle: "Enum", summary: "", declaration: "", overview: ""),
    
    Dictionary(title: "Associated Values", subtitle: "Enum", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Raw Values", subtitle: "Enum", summary: "", declaration: "", overview: ""),


// Function
    Dictionary(title: "func", subtitle: "Function", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Parameters and return value", subtitle: "Function", summary: "", declaration: "", overview: ""),

    Dictionary(title: "Argument Labels and Parameter Names", subtitle: "Function", summary: "", declaration: "", overview: ""),


// Loops
    Dictionary(title: "For-in", subtitle: "Loops", summary: "", declaration: "", overview: ""),
    
    Dictionary(title: "While", subtitle: "Loops", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Repeat-While", subtitle: "Loops", summary: "", declaration: "", overview: ""),


// Methods
    Dictionary(title: "Instance Methods", subtitle: "Methods", summary: "", declaration: "", overview: ""),
    
    Dictionary(title: "Type Methods", subtitle: "Methods", summary: "", declaration: "", overview: ""),


// Operations
    Dictionary(title: "Basic Operators", subtitle: "Operations", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Assignment Operator", subtitle: "Operations", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Arithmetic Operations", subtitle: "Operations", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Range Operations", subtitle: "Operations", summary: "", declaration: "", overview: ""),

    Dictionary(title: "Compound Assignment Operations", subtitle: "Operations", summary: "", declaration: "", overview: ""),


// Optionals
    Dictionary(title: "nil", subtitle: "Optionals", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Forced Unwrapping", subtitle: "Optionals", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Optional Binding", subtitle: "Optionals", summary: "", declaration: "", overview: ""),

    Dictionary(title: "Implicitly Unwrapped Optionals", subtitle: "Optionals", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Nil-Coalescing Operator", subtitle: "Optionals", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Optional Chaining", subtitle: "Optionals", summary: "", declaration: "", overview: ""),

    
// Properties
    Dictionary(title: "Stored Properties", subtitle: "Properties", summary: "", declaration: "", overview: ""),

    Dictionary(title: "Computed Properties", subtitle: "Properties", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Property Observers", subtitle: "Properties", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Property Wrappers", subtitle: "Properties", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Global and Local Variables", subtitle: "Properties", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Type Properties", subtitle: "Properties", summary: "", declaration: "", overview: ""),


// Structures / Classes
    Dictionary(title: "struct", subtitle: "Structures / Classes", summary: "", declaration: "", overview: ""),
    Dictionary(title: "class", subtitle: "Structures / Classes", summary: "", declaration: "", overview: ""),

    Dictionary(title: "value type vs reference type", subtitle: "Structures / Classes", summary: "", declaration: "", overview: ""),


// Types
    Dictionary(title: "Int", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Double", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Numeric Literals", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Numeric Type Conversion", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Bool", subtitle: "Types", summary: "", declaration: "", overview: ""),

    Dictionary(title: "String Literals", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Empty String", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "String Interpolation", subtitle: "Types", summary: "", declaration: "", overview: ""),

    Dictionary(title: "String Mutability", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Strings as Value Types", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Working with Characters", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Unicode", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Counting Characters", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Modifying a String", subtitle: "Types", summary: "", declaration: "", overview: ""),
    Dictionary(title: "Substrings", subtitle: "Types", summary: "", declaration: "", overview: ""),


]
