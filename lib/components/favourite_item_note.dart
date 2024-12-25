import 'package:flutter/material.dart';
import 'package:flutter_application_4/models/note.dart';

class FavItemNote extends StatelessWidget {
  const FavItemNote({
    super.key,
    required this.tovar,
    required this.onRemove,
  });

  final Tovar tovar;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
            color: Colors.white, 
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black, width: 2), 
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  tovar.url,
                  height: 170,
                  width: 170,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  'Цена: ${tovar.price}',
                  style: const TextStyle(fontSize: 24, color: Colors.black), 
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  height: 70,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(8)),
                        side: BorderSide(
                          color: Colors.black, 
                          width: 2,
                        ),
                      ),
                      backgroundColor: Colors.black, 
                    ),
                    onPressed: onRemove,
                    child: const Text(
                      'Удалить из избранного',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white), 
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}