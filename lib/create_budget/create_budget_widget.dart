import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateBudgetWidget extends StatefulWidget {
  const CreateBudgetWidget({Key key}) : super(key: key);

  @override
  _CreateBudgetWidgetState createState() => _CreateBudgetWidgetState();
}

class _CreateBudgetWidgetState extends State<CreateBudgetWidget> {
  TextEditingController budgetNameController1;
  TextEditingController budgetNameController2;
  TextEditingController textController3;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    budgetNameController1 = TextEditingController();
    budgetNameController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Material(
              color: Colors.transparent,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).darkBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 44, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Create Budget',
                            style: FlutterFlowTheme.of(context).title1,
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context).background,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              buttonSize: 48,
                              icon: Icon(
                                Icons.close_rounded,
                                color: FlutterFlowTheme.of(context).textColor,
                                size: 30,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: budgetNameController1,
                          onFieldSubmitted: (_) async {
                            final budgetsCreateData = createBudgetsRecordData(
                              budgetAmount: '',
                            );
                            await BudgetsRecord.collection
                                .doc()
                                .set(budgetsCreateData);
                          },
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Enter Amount',
                            labelStyle: FlutterFlowTheme.of(context).subtitle1,
                            hintStyle: FlutterFlowTheme.of(context).bodyText1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 32, 24, 32),
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: budgetNameController2,
                          onFieldSubmitted: (_) async {
                            final budgetsCreateData = createBudgetsRecordData(
                              budetName: '',
                            );
                            await BudgetsRecord.collection
                                .doc()
                                .set(budgetsCreateData);
                          },
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Budget Name',
                            labelStyle: FlutterFlowTheme.of(context).subtitle1,
                            hintStyle: FlutterFlowTheme.of(context).bodyText1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 32, 24, 32),
                          ),
                          style: FlutterFlowTheme.of(context).title3,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: textController3,
                          onFieldSubmitted: (_) async {
                            final budgetsCreateData = createBudgetsRecordData(
                              budgetDescription: '',
                            );
                            await BudgetsRecord.collection
                                .doc()
                                .set(budgetsCreateData);
                          },
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context).bodyText1,
                            hintText: 'Description',
                            hintStyle: FlutterFlowTheme.of(context).bodyText1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).background,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 40, 24, 0),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).textColor,
                              ),
                          textAlign: TextAlign.start,
                          maxLines: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<BudgetListRecord>>(
                        stream: queryBudgetListRecord(
                          queryBuilder: (budgetListRecord) =>
                              budgetListRecord.where('budgetUser',
                                  isEqualTo: currentUserReference),
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: SpinKitPumpingHeart(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 40,
                                ),
                              ),
                            );
                          }
                          List<BudgetListRecord> buttonBudgetListRecordList =
                              snapshot.data;
                          // Return an empty Container when the document does not exist.
                          if (snapshot.data.isEmpty) {
                            return Container();
                          }
                          final buttonBudgetListRecord =
                              buttonBudgetListRecordList.isNotEmpty
                                  ? buttonBudgetListRecordList.first
                                  : null;
                          return FFButtonWidget(
                            onPressed: () async {
                              final budgetsCreateData = createBudgetsRecordData(
                                budetName: buttonBudgetListRecord.budget
                                    .toList()
                                    .length
                                    .toString(),
                                budgetAmount: buttonBudgetListRecord.budget
                                    .toList()
                                    .length
                                    .toString(),
                                budgetCreated: getCurrentTimestamp,
                                budgetDescription: textController3.text,
                                budgetTime: '29 days left',
                                userBudgets: buttonBudgetListRecord.budgetUser,
                              );
                              await BudgetsRecord.collection
                                  .doc()
                                  .set(budgetsCreateData);

                              final budgetListUpdateData = {
                                'budget': FieldValue.arrayUnion([
                                  buttonBudgetListRecord.budget
                                      .toList()
                                      .length
                                      .toString()
                                ]),
                              };
                              await buttonBudgetListRecord.reference
                                  .update(budgetListUpdateData);
                              Navigator.pop(context);
                            },
                            text: 'Create Budget',
                            options: FFButtonOptions(
                              width: 300,
                              height: 70,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              textStyle: FlutterFlowTheme.of(context).title1,
                              elevation: 0,
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).darkBackground,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              'Tap above to complete request',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Open Sans',
                    color: Color(0x43000000),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
