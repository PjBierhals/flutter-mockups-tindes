import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String iconeCaminho;
  final String texto;
  const Botao({
    Key? key,
    required this.texto,
    required this.iconeCaminho,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Container(
      height: tamanho.height * 0.08,
      width: tamanho.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.transparent,
          border: Border.all(color: Colors.white, width: 2)),
      child: OutlinedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconeCaminho, width: 20, height: 20),
            SizedBox(
              width: tamanho.width * 0.7,
              child: Center(
                child: Text(
                  'SIGN UP WITH $texto',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
