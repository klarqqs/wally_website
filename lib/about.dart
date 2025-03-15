import 'package:wally_website/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  // Sample Markdown text from DayFi Technologies
  final String markdownText = '''
#

*Transforming finance for the digital age.*  

DayFi Technologies is a pioneering fintech company dedicated to revolutionizing how individuals and small to medium-sized enterprises (SMEs) manage their finances in a digital world. Our flagship products—**DayFi**, a personal finance app, and **DayFi for SMEs**, a business-focused solution—offer a dual approach to financial empowerment. Leveraging cutting-edge technologies like blockchain and real-time analytics, we simplify daily transactions for individuals and equip SMEs with tools to thrive in the digital economy.  

## Company Overview

**Core Products:**  
- **DayFi**: A mobile app for daily personal finance.  
- **DayFi for SMEs**: A mobile app tailored for small to medium-sized enterprises.  

DayFi Technologies believes financial management should be intuitive, secure, and inclusive. Our name, "DayFi," embodies our mission of "Daily Finance"—serving the everyday needs of individuals and businesses alike.  

## Mission and Vision

### Mission
*To empower individuals and SMEs with seamless, secure, and innovative financial tools that simplify daily transactions, foster growth, and promote financial inclusion in a digital-first world.*  

### Vision
*To become the global leader in daily finance solutions, where every individual effortlessly controls their money and every SME thrives with accessible, powerful financial technology.*  

## Our Products

### 1. DayFi: Daily Finance for Individuals
*Your personal finance companion.*  

- **Purpose:** A mobile app designed for individuals to manage personal finances with ease and confidence.  
- **Key Features:**  
  - **Payments:** Send and receive money instantly with friends, family, or vendors.  
  - **Crypto Trading:** Buy, sell, and trade cryptocurrencies with real-time market insights.  
  - **Digital Wallet:** Store cash and digital assets securely via blockchain encryption.  
- **Unique Selling Points:**  
  - User-friendly interface for all ages and tech levels.  
  - Advanced security with blockchain and multi-factor authentication.  
  - Lower fees than traditional banking apps.  
- **Target Audience:** Casual users, gig workers, and crypto enthusiasts seeking reliable daily finance tools.  
- **Tone:** Approachable, modern, empowering.  

### 2. DayFi for SMEs: Business Finance Simplified
*Empowering businesses to thrive.*  

- **Purpose:** A mobile app tailored for SMEs to streamline payments and operations.  
- **Key Features:**  
  - **Checkout System:** Process customer payments quickly and securely.  
  - **Business Tools:** Integrate inventory tracking, sales analytics, and basic CRM.  
  - **Financial Insights:** Real-time reports to monitor cash flow and growth.  
- **Unique Selling Points:**  
  - All-in-one platform for payments and business management.  
  - Scalable design that grows with your business.  
  - Crypto payment options for forward-thinking SMEs.  
- **Target Audience:** Small business owners, freelancers, and e-commerce sellers needing efficient solutions.  
- **Tone:** Professional, practical, growth-oriented.  

## Why DayFi?

DayFi Technologies delivers simple, secure, and accessible solutions—redefining finance for individuals and businesses alike.

**Join us in shaping the future.**
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
                currentTabBackgroundColor:
                    Theme.of(context).primaryColor.withOpacity(.1),
              ),
              SizedBox(height: 48),
              Container(
                width: 900,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'About us',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 20,
                          height: 1.275,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -.5,
                          color: Color.fromARGB(255, 3, 164, 238),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Comprehensive Business\nDocument',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 40,
                          height: 1.2,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -.4,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    MarkdownBody(
                      data: markdownText,
                      styleSheet: MarkdownStyleSheet(
                        h1: GoogleFonts.spaceGrotesk(
                          fontSize: 40,
                          height: 2.5,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -.4,
                        ),
                        h2: GoogleFonts.spaceGrotesk(
                          fontSize: 24,
                          height: 5,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -.4,
                        ),
                        h3: GoogleFonts.spaceGrotesk(
                          fontSize: 18,
                          height: 2.5,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -.4,
                        ),
                        strong: GoogleFonts.karla(
                          fontSize: 16,
                          height: 1.55,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -.4,
                        ),
                        em: GoogleFonts.karla(
                          fontSize: 16,
                          height: 1.55,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -.4,
                          fontStyle: FontStyle.italic,
                        ),
                        p: GoogleFonts.karla(
                          fontSize: 16,
                          height: 1.55,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -.4,
                        ),
                        listBullet: GoogleFonts.karla(
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
