import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

String name = 'Name';
String userName = 'Name';
String email = 'Name';
String url = 'https://jsonplaceholder.typicode.com/users/10';
int usersId = 1;

getUser() async {
  try {
    Response data = await Dio().get(url);

    name = data.data['name'];
    userName = data.data['username'];
    email = data.data['email'];
    getUser();
  } catch (e) {
    return const Text('error');
  }
}

