import 'package:flutter/material.dart';
import 'models/category.dart';
import 'models/news.dart';

const dummyCategories = [
  Category(
    id: 'c1',
    title: 'Health',
    color: Colors.red,
  ),
  Category(
    id: 'c2',
    title: 'Wellness',
    color: Colors.deepOrange,
  ),
  Category(
    id: 'c3',
    title: 'Politics',
    color: Colors.black54,
  ),
  Category(
    id: 'c4',
    title: 'Travel',
    color: Colors.green,
  ),
  Category(
    id: 'c5',
    title: 'Internet',
    color: Colors.yellow,
  ),
  Category(
    id: 'c6',
    title: 'Lifestyle',
    color: Colors.indigo,
  ),
  Category(
    id: 'c7',
    title: 'Headlines',
    color: Colors.pink,
  ),
  Category(
    id: 'c8',
    title: 'Sports',
    color: Colors.orange,
  ),
  Category(
    id: 'c9',
    title: 'Science',
    color: Colors.blueAccent,
  ),
  Category(
    id: 'c10',
    title: 'Environemnt',
    color: Colors.redAccent,
  ),
];

const dummyNews = [
  News(
    id: 'b1',
    categories: [
      'c1',
      'c4',
    ],
    title: 'Global Worming fuels disaster',
    detail: '''Richard McClintock, a Latin professor at Hampden-Sydney 
    College in Virginia, looked up one of the more obscure Latin words, 
    consectetur, from a Lorem Ipsum passage, and going through the cites
     of the word in classical literature, discovered the undoubtable source.
      Lorem Ipsum comes from sections 1.10.32 and 1.10.33 
      of "de Finibus Bonorum et Malorum" 
      (The Extremes of Good and Evil) by Cicero, written in 45 BC. 
      This book is a treatise on the theory of ethics, 
      very popular during the Renaissance. The first line of Lorem Ipsum,
       "Lorem ipsum dolor sit amet..", comes from a line in section
        1.10.32.''',
    imageURL:
        'https://cdn.pixabay.com/photo/2021/07/12/19/43/swans-6421355_960_720.jpg',
    nature: Nature.hard,
  ),
  News(
    id: 'b2',
    categories: [
      'c2',
      'c3',
    ],
    title: 'What a brief jog can do to your brain',
    detail: '''Richard McClintock, a Latin professor at Hampden-Sydney 
    College in Virginia, looked up one of the more obscure Latin words, 
    consectetur, from a Lorem Ipsum passage, and going through the cites
     of the word in classical literature, discovered the undoubtable source.
      Lorem Ipsum comes from sections 1.10.32 and 1.10.33 
      of "de Finibus Bonorum et Malorum" 
      (The Extremes of Good and Evil) by Cicero, written in 45 BC. 
      This book is a treatise on the theory of ethics, 
      very popular during the Renaissance. The first line of Lorem Ipsum,
       "Lorem ipsum dolor sit amet..", comes from a line in section
        1.10.32.''',
    imageURL:
        'https://cdn.pixabay.com/photo/2020/05/15/14/03/lake-5173683_960_720.jpg',
    nature: Nature.soft,
  ),
  News(
    id: 'b3',
    categories: [
      'c7',
      'c6',
    ],
    title: 'Ten tips that will stay you fit',
    detail: '''Richard McClintock, a Latin professor at Hampden-Sydney 
    College in Virginia, looked up one of the more obscure Latin words, 
    consectetur, from a Lorem Ipsum passage, and going through the cites
     of the word in classical literature, discovered the undoubtable source.
      Lorem Ipsum comes from sections 1.10.32 and 1.10.33 
      of "de Finibus Bonorum et Malorum" 
      (The Extremes of Good and Evil) by Cicero, written in 45 BC. 
      This book is a treatise on the theory of ethics, 
      very popular during the Renaissance. The first line of Lorem Ipsum,
       "Lorem ipsum dolor sit amet..", comes from a line in section
        1.10.32.''',
    imageURL:
        'https://cdn.pixabay.com/photo/2021/07/26/22/04/sea-shell-6495338_960_720.jpg',
    nature: Nature.hard,
  ),
  News(
    id: 'b4',
    categories: [
      'c8',
      'c10',
    ],
    title: 'Health tips for the older guys',
    detail: '''Richard McClintock, a Latin professor at Hampden-Sydney 
    College in Virginia, looked up one of the more obscure Latin words, 
    consectetur, from a Lorem Ipsum passage, and going through the cites
     of the word in classical literature, discovered the undoubtable source.
      Lorem Ipsum comes from sections 1.10.32 and 1.10.33 
      of "de Finibus Bonorum et Malorum" 
      (The Extremes of Good and Evil) by Cicero, written in 45 BC. 
      This book is a treatise on the theory of ethics, 
      very popular during the Renaissance. The first line of Lorem Ipsum,
       "Lorem ipsum dolor sit amet..", comes from a line in section
        1.10.32.''',
    imageURL:
        'https://cdn.pixabay.com/photo/2021/07/12/19/43/swans-6421355_960_720.jpg',
    nature: Nature.soft,
  ),
  News(
    id: 'b5',
    categories: [
      'c1',
      'c5',
    ],
    title: 'Take more outdoor walks',
    detail: '''Richard McClintock, a Latin professor at Hampden-Sydney 
    College in Virginia, looked up one of the more obscure Latin words, 
    consectetur, from a Lorem Ipsum passage, and going through the cites
     of the word in classical literature, discovered the undoubtable source.
      Lorem Ipsum comes from sections 1.10.32 and 1.10.33 
      of "de Finibus Bonorum et Malorum" 
      (The Extremes of Good and Evil) by Cicero, written in 45 BC. 
      This book is a treatise on the theory of ethics, 
      very popular during the Renaissance. The first line of Lorem Ipsum,
       "Lorem ipsum dolor sit amet..", comes from a line in section
        1.10.32.''',
    imageURL:
        'https://cdn.pixabay.com/photo/2019/06/22/18/31/love-4292211_960_720.jpg',
    nature: Nature.hard,
  ),
  News(
    id: 'b6',
    categories: [
      'c9',
    ],
    title: 'New hair style and no heels',
    detail: '''Richard McClintock, a Latin professor at Hampden-Sydney 
    College in Virginia, looked up one of the more obscure Latin words, 
    consectetur, from a Lorem Ipsum passage, and going through the cites
     of the word in classical literature, discovered the undoubtable source.
      Lorem Ipsum comes from sections 1.10.32 and 1.10.33 
      of "de Finibus Bonorum et Malorum" 
      (The Extremes of Good and Evil) by Cicero, written in 45 BC. 
      This book is a treatise on the theory of ethics, 
      very popular during the Renaissance. The first line of Lorem Ipsum,
       "Lorem ipsum dolor sit amet..", comes from a line in section
        1.10.32.''',
    imageURL:
        'https://cdn.pixabay.com/photo/2019/09/20/20/13/sea-4492536_960_720.jpg',
    nature: Nature.soft,
  ),
];
