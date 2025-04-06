import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_gestion.dart';

// ignore: must_be_immutable
class HeaderAccordion extends StatelessWidget {
  SolicitudGestion solicitud;
  HeaderAccordion(this.solicitud, {super.key});
  //HeaderAccordion({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Código: ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey.shade900,
          fontSize: 16.0,
        ),
        children: [
          TextSpan(
            text: '${solicitud.solCodigo}\t\t\t\t\t',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.blueGrey.shade900,
            ),
          ),
          TextSpan(
            text: 'Fecha: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey.shade900,
            ),
          ),
          TextSpan(
            //text: solicitud.solFecha,
            text: DateFormat("dd/MM/yyyy HH:mm")
                .format(DateTime.parse(solicitud.solFecha ?? "")),
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.blueGrey.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
