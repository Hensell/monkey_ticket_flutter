import 'package:flutter/material.dart';
import '../clippers/ticket_clipper.dart';

class Ticket extends StatelessWidget {
  final double height;

  const Ticket({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(),
      child: Container(
        width: 200,
        height: height,
        color: Colors.amber.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1X Coffe",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("C\$ 10", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("C\$ 10", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),

              Divider(),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "HAVE A NICE DAY!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
