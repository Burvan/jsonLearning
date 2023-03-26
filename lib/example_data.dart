//import 'package:flutter/material.dart';
import 'package:json_learning/address.dart';
import 'package:json_learning/human.dart';

final humans = [
  Human(
    name: 'Иван',
    surname: 'Иванов',
    age: 35,
    addresses: [
      Address(city: 'Минск', street: 'Курчатова', house: '8', flat: 82),
      Address(city: 'Минск', street: 'Плеханова', house: '27', flat: 54),
      Address(city: 'Пинск', street: 'Новосёлов', house: '24', flat: 43),
    ],
  ),
  Human(
    name: 'Пьер',
    surname: 'Петров',
    age: 29,
    addresses: [
      Address(city: 'Минск', street: 'Якуба Коласа', house: '26а', flat: 7),
      Address(
          city: 'Минск',
          street: 'Проспект Дзержинского',
          house: '13',
          flat: 14),
      Address(city: 'Гомель', street: 'Ленина', house: '4б', flat: 2),
    ],
  )
];

const jsonString = '''
  [
      {
         "name": "Иван",
         "surname": "Иванов",
         "age": 35,
         "addresses": [
            {
              "city": "Минск",
              "street": "Курчатова",
              "house": "8",
              "flat": 82
            },
            {
              "city": "Минск",
              "street": "Плеханова",
              "house": "27",
              "flat": 54
            },
            {
              "city": "Пинск",
              "street": "Новосёлов",
              "house": "24",
              "flat": 43
            }
         ]
      },
      {
         "name": "Пьер",
         "surname": "Петров",
         "age": 29,
         "addresses": [
            {
              "city": "Минск",
              "street": "Якуба Коласа",
              "house": "26а",
              "flat": 7
            },
            {
              "city": "Минск",
              "street": "Проспект Дзержинского",
              "house": "13",
              "flat": 14
            },
            {
              "city": "Гомель",
              "street": "Ленина",
              "house": "4б",
              "flat": 2
            }
         ]
      },
   ]

''';

/*
   [
      {
         "name": "Иван",
         "surname": "Иванов",
         "age": 35,
         "addresses": [
            {
              "city": "Минск",
              "street": "Курчатова",
              "house": "8",
              "flat": 82
            },
            {
              "city": "Минск",
              "street": "Плеханова",
              "house": "27",
              "flat": 54
            },
            {
              "city": "Пинск",
              "street": "Новосёлов",
              "house": "24",
              "flat": 43
            }
         ]

      },
      {
         "name": "Пьер",
         "surname": "Петров",
         "age": 29,
         "addresses": [
            {
              "city": "Минск",
              "street": "Якуба Коласа",
              "house": "26а",
              "flat": 7
            },
            {
              "city": "Минск",
              "street": "Проспект Дзержинского",
              "house": "13",
              "flat": 14
            },
            {
              "city": "Гомель",
              "street": "Ленина",
              "house": "4б",
              "flat": 2
            }
         ]

      },
   ]
*/
