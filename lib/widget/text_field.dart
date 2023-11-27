import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hinttext;
  final IconData images;
  final FormFieldValidator validator;
  final bool obscuretext;
  final TextEditingController controller;


  const TextFieldWidget(
      {super.key,
      required this.hinttext,
      required this.images,
      required this.validator,
      required this.obscuretext,
      required this.controller,
      });

  @override
  Widget build(BuildContext context) {
    return
      
         Material(
        
          elevation: 10,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
          

          child: TextFormField(
            cursorColor: Colors.white,
            controller: controller,
            obscureText: obscuretext,
            validator: validator,
            
          
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: const TextStyle(color: Colors.white),
            onChanged: (value) {
              
            },
            
            decoration: InputDecoration(
              
                errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                    errorStyle:const TextStyle(color: Colors.red,fontSize: 14,fontWeight: FontWeight.w600),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 120),
                prefixIcon: Icon(images),
                prefixIconColor: Colors.white,
                hintText: hinttext,
                hintStyle: const TextStyle(color: Colors.white),
                fillColor: Colors.blue,
                filled: true,
                
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none)),
          ),
        
        );
  }
}
