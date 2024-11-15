import "package:flutter/material.dart";

class Getques{

  static var _questions=
  [
    {
      "question":"1.Number of bones in Human Body?",
      "answer": [
      { "text":"206" , "score":1 },
      { "text":"200" , "score":0 },
      { "text":"150" , "score":0 },
      { "text":"306" , "score":0 },
      ]
    },
    {
      "question":"2.Prime Minister of India",
      "answer": [
      { "text":"Manmohan Singh" , "score":0 },
      { "text":"PV Narashima Rao" , "score":0 },
      { "text":"Narendra Modi" , "score":1 },
      { "text":"Jawaharlal Nehru" , "score":0 },
      ]
    },
    {
      "question":"3.National Fruit of India?",
      "answer": [
      { "text":"Apple" , "score":0 },
      { "text":"Mango" , "score":1 },
      { "text":"Grapes" , "score":0 },
      { "text":"Papaya" , "score":0 },
      ]
    },
    {
      "question":"4.National Animal of India?",
      "answer": [
      { "text":"Peacock" , "score":0 },
      { "text":"Tiger" , "score":1 },
      { "text":"Lion" , "score":0 },
      { "text":"Bear" , "score":0 },
      ]
    },
    {
      "question":"5.National Sport of India?",
      "answer": [
      { "text":"Cricket" , "score":0 },
      { "text":"Football" , "score":0 },
      { "text":"Kabbadi" , "score":0 },
      { "text":"Hockey" , "score":1 },
      ]
    },
    {
      "question":"6.National Tree of India?",
      "answer": [
      { "text":"Banayan tree" , "score":1 },
      { "text":"Peach tree" , "score":0 },
      { "text":"Apple Tree" , "score":0 },
      { "text":"Neem Tree" , "score":0 },
      ]
    },
    {
      "question":"7.National River of India?",
      "answer": [
      { "text":"Ganga" , "score":1 },
      { "text":"Godavari" , "score":0 },
      { "text":"Yamuna" , "score":0 },
      { "text":"Kaveri" , "score":0 },
      ]
    },
    {
      "question":"8.National bird of India?",
      "answer": [
      { "text":"Crow" , "score":0 },
      { "text":"Pigeon" , "score":0 },
      { "text":"Peacock" , "score":1 },
      { "text":"Myna" , "score":0 },
      ]
    },
    {
      "question":"9.The capital of India",
      "answer": [
      { "text":"Chandigarh" , "score":0 },
      { "text":"New Delhi" , "score":1 },
      { "text":"Hyderabad" , "score":0 },
      { "text":"Shimla" , "score":0 },
      ]
    },
    {
      "question":"10.World Cups won by India in Cricket?",
      "answer": [
      { "text":"One" , "score":0 },
      { "text":"Three" , "score":0 },
      { "text":"Two" , "score":1 },
      { "text":"Four" , "score":0 },
      ]
    }
    
  ];
  
  static List<Map<String,Object>> getQuestion()
  {
    return _questions;
  }

}