import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentWidget extends StatefulWidget {
  const AppointmentWidget({Key key}) : super(key: key);

  @override
  _AppointmentWidgetState createState() => _AppointmentWidgetState();
}

class _AppointmentWidgetState extends State<AppointmentWidget> {
  DateTime datePicked;
  TextEditingController personsContactController;
  TextEditingController personsNameController;
  TextEditingController problemDescriptionController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    personsContactController = TextEditingController();
    personsNameController = TextEditingController();
    problemDescriptionController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).background,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Appointement',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Open Sans',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).darkBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'Make Appointment',
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                'Edit the fields below in order to make your appointment.',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: personsNameController,
                          onFieldSubmitted: (_) async {
                            final appointmentsCreateData =
                                createAppointmentsRecordData(
                              appointmentName: personsContactController.text,
                            );
                            await AppointmentsRecord.collection
                                .doc()
                                .set(appointmentsCreateData);
                          },
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: FlutterFlowTheme.of(context).bodyText1,
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
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).darkBackground,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).textColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: personsContactController,
                          onFieldSubmitted: (_) async {
                            final appointmentsCreateData =
                                createAppointmentsRecordData(
                              appointmentContact: personsContactController.text,
                            );
                            await AppointmentsRecord.collection
                                .doc()
                                .set(appointmentsCreateData);
                          },
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Contact',
                            labelStyle: FlutterFlowTheme.of(context).bodyText1,
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
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).darkBackground,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).textColor,
                                fontWeight: FontWeight.bold,
                              ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: TextFormField(
                          controller: problemDescriptionController,
                          onFieldSubmitted: (_) async {
                            final appointmentsCreateData =
                                createAppointmentsRecordData(
                              appointmentDescription:
                                  problemDescriptionController.text,
                            );
                            await AppointmentsRecord.collection
                                .doc()
                                .set(appointmentsCreateData);
                          },
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Description',
                            labelStyle: FlutterFlowTheme.of(context).bodyText1,
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
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).darkBackground,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).textColor,
                              ),
                          textAlign: TextAlign.start,
                          maxLines: 8,
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            await DatePicker.showDatePicker(
                              context,
                              showTitleActions: true,
                              onConfirm: (date) {
                                setState(() => datePicked = date);
                              },
                              currentTime: getCurrentTimestamp,
                              minTime: DateTime(0, 0, 0),
                            );

                            final appointmentsCreateData =
                                createAppointmentsRecordData(
                              appointmentTime: datePicked,
                            );
                            await AppointmentsRecord.collection
                                .doc()
                                .set(appointmentsCreateData);
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 60,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).darkBackground,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).background,
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'Choose Date',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 12,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 4, 0, 0),
                                          child: StreamBuilder<
                                              List<AppointmentsRecord>>(
                                            stream: queryAppointmentsRecord(
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 40,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AppointmentsRecord>
                                                  textAppointmentsRecordList =
                                                  snapshot.data;
                                              // Return an empty Container when the document does not exist.
                                              if (snapshot.data.isEmpty) {
                                                return Container();
                                              }
                                              final textAppointmentsRecord =
                                                  textAppointmentsRecordList
                                                          .isNotEmpty
                                                      ? textAppointmentsRecordList
                                                          .first
                                                      : null;
                                              return InkWell(
                                                onTap: () async {
                                                  final appointmentsCreateData =
                                                      createAppointmentsRecordData(
                                                    appointmentTime:
                                                        textAppointmentsRecord
                                                            .appointmentTime,
                                                  );
                                                  await AppointmentsRecord
                                                      .collection
                                                      .doc()
                                                      .set(
                                                          appointmentsCreateData);
                                                },
                                                child: Text(
                                                  datePicked.toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiaryColor,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 8, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30,
                                          buttonSize: 46,
                                          icon: Icon(
                                            Icons.date_range_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .grayLight,
                                            size: 20,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                              text: 'Cancel',
                              options: FFButtonOptions(
                                width: 100,
                                height: 50,
                                color: FlutterFlowTheme.of(context).background,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                elevation: 0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            StreamBuilder<List<AppointmentsRecord>>(
                              stream: queryAppointmentsRecord(
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
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 40,
                                      ),
                                    ),
                                  );
                                }
                                List<AppointmentsRecord>
                                    buttonAppointmentsRecordList =
                                    snapshot.data;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data.isEmpty) {
                                  return Container();
                                }
                                final buttonAppointmentsRecord =
                                    buttonAppointmentsRecordList.isNotEmpty
                                        ? buttonAppointmentsRecordList.first
                                        : null;
                                return FFButtonWidget(
                                  onPressed: () async {
                                    final appointmentsUpdateData =
                                        createAppointmentsRecordData(
                                      appointmentDescription:
                                          problemDescriptionController.text,
                                      appointmentName: '',
                                      appointmentContact: '',
                                    );
                                    await buttonAppointmentsRecord.reference
                                        .update(appointmentsUpdateData);
                                    Navigator.pop(context);
                                  },
                                  text: 'Save',
                                  options: FFButtonOptions(
                                    width: 150,
                                    height: 50,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
