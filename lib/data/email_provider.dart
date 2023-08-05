import 'dart:convert';

import 'package:http/http.dart' as http;

Future sendmail({
  required String userEmail,
  required String userName,
  required String message,
  required String userSubject,
}) async {
  // const servoceId = "service_dm7bqgt";
  // const templateId = "template_v3qc3pk";
  // const userId = "93hyGDau0skoWIi8d";

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await http.post(url,
      headers: {
        "Content-Type": "application/json",
      },
      body: json.encode({
        'service_id': "service_dm7bqgt",
        'template_id': "template_v3qc3pk",
        'user_id': "93hyGDau0skoWIi8d",
        'template_params': {
          'user_name': userName,
          'user_email': userEmail,
          'message': message,
          'user_subject': userSubject,
        }
      }));
  print(response.body);
}

  // late final String user_name;

