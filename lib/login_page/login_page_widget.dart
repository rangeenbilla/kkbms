import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../forgot_password/forgot_password_widget.dart';
import '../onboarding/onboarding_widget.dart';
import '../register_account/register_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  TextEditingController emailAddressLoginController;
  TextEditingController passwordLoginController;
  bool passwordLoginVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).background,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).background,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.asset(
                      'assets/images/login_bg@2x.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 24, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Image.asset(
                                  'assets/images/download-removebg-preview.png',
                                  width: 170,
                                  height: 40,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Project BMS',
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Get Started',
                                    style: FlutterFlowTheme.of(context).title1,
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Create your account below.',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: TextFormField(
                                  controller: emailAddressLoginController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email Address',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0x98FFFFFF),
                                        ),
                                    hintText: 'Enter your email...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0x98FFFFFF),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .darkBackground,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 20, 24),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: TextFormField(
                                  controller: passwordLoginController,
                                  obscureText: !passwordLoginVisibility,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0x98FFFFFF),
                                        ),
                                    hintText: 'Enter your password...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: Color(0x98FFFFFF),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .darkBackground,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 24, 20, 24),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => passwordLoginVisibility =
                                            !passwordLoginVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        passwordLoginVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0x98FFFFFF),
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 24, 0, 24),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ForgotPasswordWidget(),
                                          ),
                                        );
                                      },
                                      text: 'Forgot Password?',
                                      options: FFButtonOptions(
                                        width: 170,
                                        height: 40,
                                        color: Color(0x001A1F24),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color: Colors.white,
                                            ),
                                        elevation: 0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      final user = await signInWithEmail(
                                        context,
                                        emailAddressLoginController.text,
                                        passwordLoginController.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              OnboardingWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Login',
                                    options: FFButtonOptions(
                                      width: 120,
                                      height: 50,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                          ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .background,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Don\'t have an account?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    RegisterAccountWidget(),
                                              ),
                                            );
                                          },
                                          text: 'Create',
                                          options: FFButtonOptions(
                                            width: 70,
                                            height: 40,
                                            color: FlutterFlowTheme.of(context)
                                                .background,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final user = await signInAnonymously(context);
                            if (user == null) {
                              return;
                            }
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OnboardingWidget(),
                              ),
                            );
                          },
                          text: 'Continue as Guest',
                          options: FFButtonOptions(
                            width: 230,
                            height: 50,
                            color: FlutterFlowTheme.of(context).background,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context).textColor,
                                ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
