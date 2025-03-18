import 'package:flutter_svg/svg.dart';
import 'package:wally_website/about.dart';
import 'package:wally_website/ui/components/buttons/filled_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const WallyWebsite());
}

final theme = ThemeData(
  primaryColor: const Color(0xFF6B4EFF),
  textTheme: GoogleFonts.spaceGroteskTextTheme(),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF6B4EFF),
    secondary: Color(0xFFEEEBFF),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF6B4EFF),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      textStyle: GoogleFonts.spaceGrotesk(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: GoogleFonts.spaceGrotesk(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
);

class WallyWebsite extends StatelessWidget {
  const WallyWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Adjust based on your design
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Wally – Your Wallet in Chat',
          theme: theme,
          builder:
              (context, child) => ResponsiveBreakpoints.builder(
                child: child!,
                breakpoints: [
                  const Breakpoint(start: 0, end: 450, name: MOBILE),
                  const Breakpoint(start: 451, end: 800, name: TABLET),
                  const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                ],
              ),
          home: const HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              const NavBar(),
              const HeroSection(),
              const FeatureSection(),
              const StepsSection(),
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

class NavBar extends StatelessWidget {
  final Color currentTabBackgroundColor;
  const NavBar({super.key, this.currentTabBackgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1280,
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // TextButton(
                //   style: TextButton.styleFrom(
                //     backgroundColor: currentTabBackgroundColor,
                //   ),
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => AboutScreen()),
                //     );
                //   },
                //   child: RichText(
                //     text: TextSpan(
                //       text: 'Features',
                //       style: TextStyle(
                //         fontFamily: 'AvenirLTPro',
                //         height: 1.35,
                //         letterSpacing: -.4,
                //         fontWeight: FontWeight.w600,
                //         fontSize: 14,
                //       ),
                //     ),
                //   ),
                // ),
                // const SizedBox(width: 24),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: currentTabBackgroundColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutScreen()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'About',
                      style: TextStyle(
                        fontFamily: 'AvenirLTPro',
                        height: 1.35,
                        letterSpacing: -.4,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                //       const SizedBox(width: 24),
                //       TextButton(
                //         style: TextButton.styleFrom(
                //           backgroundColor: currentTabBackgroundColor,
                //         ),
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(builder: (context) => AboutScreen()),
                //           );
                //         },
                //         child: RichText(
                //           text: TextSpan(
                //             text: 'FAQs',
                //             style: TextStyle(
                //               fontFamily: 'AvenirLTPro',
                //               height: 1.35,
                //               letterSpacing: -.4,
                //               fontWeight: FontWeight.w600,
                //               fontSize: 14,
                //             ),
                //           ),
                //         ),
                //       ),
                //       const SizedBox(width: 24),
                //       TextButton(
                //         style: TextButton.styleFrom(
                //           backgroundColor: currentTabBackgroundColor,
                //         ),
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(builder: (context) => AboutScreen()),
                //           );
                //         },
                //         child: RichText(
                //           text: TextSpan(
                //             text: 'Contact',
                //             style: TextStyle(
                //               fontFamily: 'AvenirLTPro',
                //               height: 1.35,
                //               letterSpacing: -.4,
                //               fontWeight: FontWeight.w600,
                //               fontSize: 14,
                //             ),
                //           ),
                //         ),
                //       ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
                hoverColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: SvgPicture.asset(
                  "assets/svgs/logo_black.svg",
                  height: 48,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FilledBtnSmall(
                  onPressed: () {},
                  text: "Get ready – Coming soon!",
                  hasIcon: true,
                  textColor: Colors.white,
                  backgroundColor: Theme.of(context).textTheme.bodyLarge!.color,
                  icon: "assets/svgs/whatsapp-social-media-svgrepo-com.svg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1280,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'The rewarding\nway to\nsend money',
                style: TextStyle(
                  fontFamily: 'DegularDisplay',
                  fontSize: 128,
                  height: .8,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3,
                ),
              ),
            ),
          ),
          const SizedBox(height: 72),
          Text(
            'Pay anyone instantly on WhatsApp with your\nUSDC wallet – no new apps, just rewards',
            // 'Wally lets you pay via WhatsApp using your\nUSDC wallet address and earn rewards',
            style: TextStyle(
              fontFamily: 'AvenirLTPro',
              fontSize: 32,
              height: 1.35,
              color: Theme.of(
                context,
              ).textTheme.bodyLarge!.color!.withOpacity(.75),
              fontWeight: FontWeight.w500,
              letterSpacing: -.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 64),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: FilledBtn(
                  onPressed: () {},
                  text: "Get ready – Coming soon!",
                  hasIcon: true,
                  textColor: Colors.white,
                  backgroundColor: Theme.of(context).textTheme.bodyLarge!.color,
                  icon: "assets/svgs/whatsapp-social-media-svgrepo-com.svg",
                ),
              ),
            ],
          ),
          const SizedBox(height: 126),
        ],
      ),
    );
  }
}

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1280,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          const SizedBox(height: 32),
          SizedBox(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72),
                    color: Color(0xffE8D1FA),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(80, 96, 48, 96),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  text:
                                      "Pay or send money to anyone from your WhatsApp",
                                  style: TextStyle(
                                    fontFamily: 'DegularDisplay',
                                    fontSize: 60,
                                    height: 1,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.5,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "Share a photo or simply speak - Wally transforms your text, image or voice notes into seamless payments.",
                                style: TextStyle(
                                  fontFamily: 'AvenirLTPro',
                                  fontSize: 24,
                                  height: 1.35,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!
                                      .withOpacity(.75),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -.5,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: 72),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: FilledBtn(
                                      onPressed: () {},
                                      text: "Get started now",
                                      hasIcon: true,
                                      textColor: Colors.white,
                                      fontSize: 18,
                                      backgroundColor:
                                          Theme.of(
                                            context,
                                          ).textTheme.bodyLarge!.color,
                                      icon:
                                          "assets/svgs/whatsapp-social-media-svgrepo-com.svg",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: const SizedBox()),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: const SizedBox()),
                      const SizedBox(width: 96),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(72),
                          child: Image.asset(
                            "assets/images/payment-demo.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48),
          SizedBox(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72),
                    color: Color(0xffFFDFCC),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: const SizedBox()),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 96, 80, 96),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  text:
                                      "Use your existing non-custodian wallets",
                                  style: TextStyle(
                                    fontFamily: 'DegularDisplay',
                                    fontSize: 60,
                                    height: 1,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.5,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "No new wallets needed - Wally uses your existing non-custodian wallets to process your transactions effortlessly.",
                                style: TextStyle(
                                  fontFamily: 'AvenirLTPro',
                                  fontSize: 24,
                                  height: 1.35,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!
                                      .withOpacity(.75),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -.5,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: 72),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: FilledBtn(
                                      onPressed: () {},
                                      text: "Get started now",
                                      hasIcon: true,
                                      textColor: Colors.white,
                                      fontSize: 18,
                                      backgroundColor:
                                          Theme.of(
                                            context,
                                          ).textTheme.bodyLarge!.color,
                                      icon:
                                          "assets/svgs/whatsapp-social-media-svgrepo-com.svg",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(72),
                          child: Image.asset(
                            "assets/images/banks-demo.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(width: 96),
                      Expanded(child: const SizedBox()),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 48),
          SizedBox(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72),
                    color: Color(0xffCCFFF2),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(80, 96, 48, 96),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  text: "Works with forwarded messages",
                                  style: TextStyle(
                                    fontFamily: 'DegularDisplay',
                                    fontSize: 60,
                                    height: 1,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.5,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "Wally interprets and processes crypto transfers from forwarded messages with crypto details - no typing needed.",
                                style: TextStyle(
                                  fontFamily: 'AvenirLTPro',
                                  fontSize: 24,
                                  height: 1.35,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color!
                                      .withOpacity(.75),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -.5,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: 72),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: FilledBtn(
                                      onPressed: () {},
                                      text: "Get started now",
                                      hasIcon: true,
                                      textColor: Colors.white,
                                      fontSize: 18,
                                      backgroundColor:
                                          Theme.of(
                                            context,
                                          ).textTheme.bodyLarge!.color,
                                      icon:
                                          "assets/svgs/whatsapp-social-media-svgrepo-com.svg",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: const SizedBox()),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(72),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: const SizedBox()),
                      const SizedBox(width: 96),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(72),
                          child: Image.asset(
                            "assets/images/forwarded-demo.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 126),
        ],
      ),
    );
  }
}

class StepsSection extends StatelessWidget {
  const StepsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1280,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 32),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: FilledBtnBig(
                  onPressed: null,
                  text: "Secured by WhatsApp’s security features",
                  backgroundColor: Color(0xff0041B5),
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 48),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text:
                  'Wally uses WhatsApp in-built security\nand privacy features',
              style: TextStyle(
                fontFamily: 'DegularDisplay',
                fontSize: 64,
                height: 1,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),
          ),
          const SizedBox(height: 72),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StepCard(
                color: Color(0xffcac5fc).withOpacity(0),
                number: 1,
                title: "Password for\ntransaction",
                description:
                    "By default, every transaction needs a passcode, which you’ll set up when creating your account. However, you can choose to set a limit for when the passcode is required.",
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .01),
              StepCard(
                color: Color(0xff95dbc4).withOpacity(0),
                number: 2,
                title: "Lock your Wally\nchat for privacy",
                description:
                    "When you lock a conversation, you hide it from your messages and place it in a secret folder, which can only be accessed with your device password, passcode or biometrics.",
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .01),
              StepCard(
                color: Color(0xffffadd2).withOpacity(0),
                number: 3,
                title: "Biometric\naccess",
                description:
                    "In your day-to-day life, your chats are protected by your device’s biometric security. For added protection, you can also enable the option to lock your conversations.",
              ),
            ],
          ),
          const SizedBox(height: 126),
        ],
      ),
    );
  }
}

class StepCard extends StatelessWidget {
  final int number;
  final String title;
  final String description;
  final Color color;
  const StepCard({
    super.key,
    required this.number,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(64, 36, 64, 80),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          color: Color(0xffE5EFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: number.toString(),
                style: TextStyle(
                  fontFamily: 'DegularDisplay',
                  fontSize: 128,
                  height: 1.275,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -.5,
                  color: Color(0xff005CFF),
                ),
              ),
            ),
            const SizedBox(height: 24),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: title,
                style: TextStyle(
                  fontFamily: 'DegularDisplay',
                  fontSize: 36,
                  height: 1,
                  fontWeight: FontWeight.w700,
                  // letterSpacing: -.2,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              description,
              style: TextStyle(
                fontFamily: 'AvenirLTPro',
                fontSize: 16,
                height: 1.55,
                fontWeight: FontWeight.w500,
                letterSpacing: -.4,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 60),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff1A1A1A), Color.fromARGB(255, 61, 61, 61)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: SizedBox(
              width: 1280,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 120, 80, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: FilledBtnBig(
                            onPressed: null,
                            text: "Verified businesses on WhatsApp",
                            backgroundColor: Color(0xffFF5F00),
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            "Make your transactions only via\nour official WhatsApp account\nwith Meta Verified Seal",
                        style: TextStyle(
                          fontFamily: 'DegularDisplay',
                          fontSize: 60,
                          height: 1,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 72),
                    Image.asset(
                      "assets/images/verified-demo.png",
                      fit: BoxFit.contain,
                      width: 1280 * .5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 126),
        Container(
          width: 1280,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(72),
                  color: Color(0xffE6E6E6),
                ),
                child: Row(
                  children: [
                    Expanded(child: const SizedBox()),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 96, 80, 96),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text:
                                    "Earn points on every qualified transaction",
                                style: TextStyle(
                                  fontFamily: 'DegularDisplay',
                                  fontSize: 60,
                                  height: 1,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2.5,
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "Points can be converted to cash or can be used to pay at select restaurants, bars, retail stores, shops and more.",
                              style: TextStyle(
                                fontFamily: 'AvenirLTPro',
                                fontSize: 24,
                                height: 1.35,
                                color: Theme.of(
                                  context,
                                ).textTheme.bodyLarge!.color!.withOpacity(.75),
                                fontWeight: FontWeight.w500,
                                letterSpacing: -.5,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 72),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: FilledBtn(
                                    onPressed: () {},
                                    text: "See how it works",
                                    // hasIcon: true,
                                    textColor: Colors.white,
                                    fontSize: 18,
                                    backgroundColor:
                                        Theme.of(
                                          context,
                                        ).textTheme.bodyLarge!.color,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 126),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(),
                child: Center(
                  child: SizedBox(
                    width: 1280,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(80, 42, 80, 0),
                      child: Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text:
                                  "With over 2 billion WhatsApp users, Wally turns a familiar chat app into a powerful payment tool.",
                              style: TextStyle(
                                fontFamily: 'DegularDisplay',
                                fontSize: 64,
                                height: 1,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2.5,
                              ),
                            ),
                          ),
                          const SizedBox(height: 48),
                          Text(
                            "All data is encrypted at rest and in transit. In case of contingencies, our backup\nsystems ensure data protection and operational continuity, even during WhatsApp\nservice interruptions.",
                            style: TextStyle(
                              fontFamily: 'AvenirLTPro',
                              fontSize: 24,
                              height: 1.35,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyLarge!.color!.withOpacity(.75),
                              fontWeight: FontWeight.w500,
                              letterSpacing: -.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 96),
                          TextButton(
                            onPressed: () {
                              // Handle button press
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              overlayColor: Colors.transparent,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.green.shade300,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.only(bottom: 1),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  "See our terms of use and privacy policy",
                                  style: TextStyle(
                                    fontFamily: 'DegularDisplay',
                                    fontSize: 24,
                                    height: 1.35,
                                    color:
                                        Theme.of(
                                          context,
                                        ).textTheme.bodyLarge!.color!,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          width: 1280,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(72),
            color: Color(0xffE6E6E6),
          ),
          child: Row(children: [Expanded(child: const SizedBox())]),
        ),
      ],
    );
  }
}

class SignUpSection extends StatelessWidget {
  const SignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 36),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1A1A1A), Color(0xff1A1A1A)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: 1280,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(80, 120, 80, 0),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "We are always\navailable to help,\non WhatsApp",
                    style: TextStyle(
                      fontFamily: 'DegularDisplay',
                      fontSize: 60,
                      height: 1,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.5,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 64),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: FilledBtn(
                        onPressed: () {},
                        text: "Get ready – Coming soon!",
                        borderWidth: 2.5,
                        hasIcon: true,
                        textColor: Colors.white,
                        backgroundColor:
                            Theme.of(context).textTheme.bodyLarge!.color,
                        icon:
                            "assets/svgs/whatsapp-social-media-svgrepo-com.svg",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 72 + 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1A1A1A), Color(0xff1A1A1A)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: 1280,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 120),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 124.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              splashFactory: NoSplash.splashFactory,
                              hoverColor: Colors.transparent,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              },
                              child: SvgPicture.asset(
                                "assets/svgs/logo_white.svg",
                                height: 100,
                              ),
                            ),
                            const SizedBox(height: 36),
                            Text(
                              'A rewarding way to make payments on WhatsApp - Bank transfers, pay bills and more, all for free.',
                              style: TextStyle(
                                fontFamily: 'AvenirLTPro',
                                fontSize: 20,
                                height: 1.55,
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(.45),
                                letterSpacing: -.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: const SizedBox()),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: const FooterColumn(
                          title: 'What we do',
                          items: ['Features', 'Security', 'Awards'],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: const FooterColumn(
                          title: 'Who we are',
                          items: ['About'],
                        ),
                      ),
                    ),

                    Expanded(
                      child: const FooterColumn(
                        title: 'Need help?',
                        items: ['FAQs', 'Contact Us'],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 72),
                Divider(color: Colors.white24, height: 0),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "2025 © A Dayfi Company",
                      style: TextStyle(
                        fontFamily: 'AvenirLTPro',
                        fontSize: 20,
                        height: 1.55,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(.45),
                        letterSpacing: -.4,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const FooterColumn({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: TextStyle(
              fontFamily: 'DegularDisplay',
              fontSize: 24,
              height: 1.35,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
        ),
        const SizedBox(height: 36),
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              hoverColor: Colors.transparent,
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutScreen()),
                  ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Text(
                  item,
                  style: TextStyle(
                    fontFamily: 'AvenirLTPro',
                    fontSize: 20,
                    height: 1.55,
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(.45),
                    letterSpacing: -.4,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
