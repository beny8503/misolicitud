import 'package:flutter/material.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_bandeja_salida.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class HeaderAccordion extends StatelessWidget {
  SolicitudBandejaSalida solicitud;
  HeaderAccordion(this.solicitud, {super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Pendiente: ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey.shade900,
          fontSize: 16.0,
        ),
        children: [
          TextSpan(
            text: '${solicitud.pendiente}\n',
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
