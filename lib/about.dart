import 'package:wally_website/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  // Sample Markdown text from DayFi Technologies
  final String markdownText = '''
#

*Payments, as easy as a chat.*  

Wally is a groundbreaking fintech solution that transforms WhatsApp into a seamless payment platform. With over 2 billion users already chatting on WhatsApp, Wally makes sending money as simple as sending a message. Powered by blockchain technology and a unique rewards system, we’re redefining daily finance by bringing wallets into the world’s most popular chat app.  

## Company Overview

**Wally**: A WhatsApp-integrated payment tool for instant, secure transactions.  

Wally stands for "Wallet in WhatsApp"—a name that captures our mission to make financial transactions effortless, accessible, and rewarding. We’re here to bridge the gap between communication and finance, one chat at a time.  

## Mission and Vision

### Mission
*To simplify payments by embedding fast, secure, and rewarding transactions into WhatsApp, making finance a natural part of everyday chats.*  

### Vision
*To pioneer the future of chat-based finance, where every WhatsApp user can send money, earn rewards, and manage their wallet without leaving the app.*  

## Our Product

### Wally: Your Wallet in WhatsApp
*Send money where you already connect.*  

- **Purpose:** A WhatsApp-integrated solution that lets users pay, send crypto, and earn rewards—all within their chats.  
- **Key Features:**  
  - **Instant Payments:** Send USDC or cash to anyone on WhatsApp in seconds.  
  - **Smart Processing:** Pay with text, voice notes, or forwarded messages—Wally handles it all.  
  - **Rewards System:** Earn points on every transaction, redeemable for cash or exclusive perks.  
  - **Wallet Integration:** Connect your existing non-custodial wallets for effortless use.  
- **Unique Selling Points:**  
  - No new app required—built into WhatsApp’s massive ecosystem.  
  - Rock-solid security with WhatsApp’s encryption and blockchain technology.  
  - Payments that pay you back with every use.  
- **Target Audience:** WhatsApp users, freelancers, small merchants, and crypto enthusiasts seeking a hassle-free payment experience.  
- **Tone:** Bold, approachable, innovative.  

## Why Wally?

Wally turns a chat app you already use into a financial powerhouse. With instant transactions, unmatched convenience, and rewards that keep you coming back, we’re not just simplifying payments—we’re revolutionizing them.  

**Join us in redefining finance, one chat at a time.**
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NavBar(
                currentTabBackgroundColor: Theme.of(
                  context,
                ).primaryColor.withOpacity(.1),
              ),
              SizedBox(height: 48),
              Container(
                width: 900,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 48,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 12),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Comprehensive Business\nDocument',
                        style: TextStyle(
                          fontFamily: 'DegularDisplay',
                          fontSize: 64,
                          height: 1,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    MarkdownBody(
                      data: markdownText,
                      styleSheet: MarkdownStyleSheet(
                        h1: TextStyle(
                          fontFamily: 'DegularDisplay',
                          fontSize: 36,
                          height: 5,
                          fontWeight: FontWeight.w700,
                          // letterSpacing: -.2,
                        ),
                        h2: TextStyle(
                          fontFamily: 'DegularDisplay',
                          fontSize: 24,
                          height: 2.35,
                          color: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.color!,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -.5,
                        ),
                        h3: TextStyle(
                          fontFamily:'DegularDisplay',
                          fontSize: 20,
                          height: 2.55,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -.4,
                        ),
                        strong: TextStyle(
                          fontFamily: 'AvenirLTPro',
                          fontSize: 16,
                          height: 1.55,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -.4,
                        ),

                        em: TextStyle(
                          fontFamily: 'AvenirLTPro',
                          fontSize: 16,
                          height: 1.55,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          letterSpacing: -.4,
                        ),

                        p: TextStyle(
                          fontFamily: 'AvenirLTPro',
                          fontSize: 16,
                          height: 1.55,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -.4,
                        ),
                        listBullet: TextStyle(
                          fontFamily: 'AvenirLTPro',
                          fontSize: 16,
                          height: 1.55,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -.4,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
              const FAQSection(),
              const SignUpSection(),
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
