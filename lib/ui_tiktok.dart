import 'package:flutter/material.dart';

class UIYikTok extends StatelessWidget {
  const UIYikTok({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/sasy.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
        ),
        _blackGradient(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _topNav(),
            Column(
              children: [
                _interactionButtons(),
                _postData(),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _postData() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 8.0),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                '@sasy',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                '22-06',
                style: TextStyle(color: Colors.white54),
              )
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Flexible(
                child: Column(
                  children: [
                    const Text(
                      'HOY FUI AL HARD ROCK CAFE... SALIDITA EN FAMILIA!',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'icons/musica.png',
                          width: 20.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text(
                          'Film Out - BTS',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text(
                          'sonido original',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white24,
                      width: 10.0,
                    ),
                    borderRadius: BorderRadius.circular(25)),
                child: ClipOval(
                  child: Image.asset(
                    'images/sasy-perfil.jpg',
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }

  Widget _topNav() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text(
                  'Siguiendo',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: 40,
                  height: 2.0,
                  color: Colors.white,
                )
              ],
            ),
            Column(
              children: [
                const Text(
                  'Para ti',
                  style: TextStyle(fontSize: 18.0, color: Colors.white54),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: 40,
                  height: 2.0,
                  color: Colors.white54,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _blackGradient() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.black87,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black54,
            Colors.black87,
          ])),
    );
  }

  Widget _interactionButtons() {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(25)),
            child: ClipOval(
              child: Image.asset(
                'images/sasy-perfil.jpg',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Image.asset('icons/corazon.png'),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            '52.3K',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Image.asset('icons/comentarios.png'),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            '480',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Image.asset('icons/compartir.png'),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            '205',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
