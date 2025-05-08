import 'package:flutter/material.dart';
import 'package:monkey_ticket_flutter/animations/ticket_animation_controller.dart';
import 'package:monkey_ticket_flutter/constants/colors.dart';
import 'package:monkey_ticket_flutter/widgets/monkey_printer.dart';
import 'package:monkey_ticket_flutter/widgets/print_button.dart';
import 'package:monkey_ticket_flutter/widgets/ticket.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final TicketAnimationController ticketAnimation;

  @override
  void initState() {
    super.initState();
    ticketAnimation = TicketAnimationController(vsync: this);
  }

  @override
  void dispose() {
    ticketAnimation.dispose();
    super.dispose();
  }

  void _onPrintPressed() {
    ticketAnimation.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            spacing: 40,
            children: [
              SizedBox(
                height: 400,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    const MonkeyPrinter(),

                    const Positioned(
                      top: 180,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.printerShadow,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: SizedBox(width: 120, height: 10),
                      ),
                    ),

                    Positioned(
                      top: 180,
                      child: AnimatedBuilder(
                        animation: ticketAnimation.controller,
                        builder:
                            (context, _) => Ticket(
                              height: ticketAnimation.heightAnimation.value,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              PrintButton(onPressed: _onPrintPressed),
              TextButton(onPressed: _launchURL, child: Text("@Hensell")),
            ],
          ),
        ),
      ),
    );
  }
}

final Uri _url = Uri.parse('https://hensell.dev');

Future<void> _launchURL() async {
  if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
    throw Exception('Can\'t open $_url');
  }
}
