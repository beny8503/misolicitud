import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:solicitudes_multiempresa_apk/app/controller/bandeja_salida_controller.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/solicitud_bandeja_salida.dart';

// ignore: must_be_immutable
class BodyAccordion extends StatelessWidget {
  SolicitudBandejaSalida solicitud;
  BodyAccordion(this.solicitud, {super.key});
  final BandejaSalidaController controller = Get.put(BandejaSalidaController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          direction: Axis.vertical,
          children: [
            Text.rich(
              TextSpan(
                text: 'Solicitud: ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey.shade900,
                  fontSize: 16.0,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: solicitud.descripcion,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            if (solicitud.solCodigo != '' && solicitud.solCodigo != null)
              Text.rich(
                TextSpan(
                  text: 'Código: ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey.shade900,
                    fontSize: 16.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: solicitud.solCodigo,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            if (solicitud.solEstado != '' && solicitud.solEstado != null)
              Text.rich(
                TextSpan(
                  text: 'Estado: ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey.shade900,
                    fontSize: 16.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: solicitud.solEstado,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            Text.rich(
              TextSpan(
                text: 'Cliente: ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey.shade900,
                  fontSize: 16.0,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: solicitud.clienteDescripcion,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            if (solicitud.ejecutorDescripcion != '' &&
                solicitud.ejecutorDescripcion != null)
              Text.rich(
                TextSpan(
                  text: 'Ejecutor: ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey.shade900,
                    fontSize: 16.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: solicitud.ejecutorDescripcion,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            if (solicitud.clasificacionDescripcion != '' &&
                solicitud.clasificacionDescripcion != null)
              Text.rich(
                TextSpan(
                  text: 'Clasificación: ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey.shade900,
                    fontSize: 16.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: solicitud.clasificacionDescripcion,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        /*if (solicitud.pendiente == 'Insertar Solicitud' ||
            solicitud.pendiente == 'Actualizar  Solicitud')
          Align(
            alignment: Alignment.bottomRight,
            child: GFButton(
              onPressed: () {
                controller.editSolicitud(solicitud);
              },
              text: "Modificar",
              type: GFButtonType.solid,
              size: GFSize.SMALL,
              color: Colors.yellow.shade900,
              textStyle: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),*/
      ],
    );
    /* SizedBox(
      height: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blueGrey.shade600,
                    width: 1.0,
                  ),
                ),
                child: Image(
                  image: AssetImage('img/images2.png'),
                  height: 60.0,
                  width: 60.0,
                  fit: BoxFit.contain,
                ),
              ), */
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Solicitud: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey.shade900,
                            fontSize: 16.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: solicitud.descripcion,
                              style: const TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (solicitud.solCodigo != '' &&
                          solicitud.solCodigo != null)
                        Text.rich(
                          TextSpan(
                            text: 'Código: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey.shade900,
                              fontSize: 16.0,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: solicitud.solCodigo,
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (solicitud.solEstado != '' &&
                          solicitud.solEstado != null)
                        Text.rich(
                          TextSpan(
                            text: 'Estado: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey.shade900,
                              fontSize: 16.0,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: solicitud.solEstado,
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      Text.rich(
                        TextSpan(
                          text: 'Cliente: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey.shade900,
                            fontSize: 16.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: solicitud.clienteDescripcion,
                              style: const TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (solicitud.ejecutorDescripcion != '' &&
                          solicitud.ejecutorDescripcion != null)
                        Text.rich(
                          TextSpan(
                            text: 'Ejecutor: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey.shade900,
                              fontSize: 16.0,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: solicitud.ejecutorDescripcion,
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (solicitud.clasificacionDescripcion != '' &&
                          solicitud.clasificacionDescripcion != null)
                        Text.rich(
                          TextSpan(
                            text: 'Clasificación: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey.shade900,
                              fontSize: 16.0,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: solicitud.clasificacionDescripcion,
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (solicitud.pendiente == 'Insertar Solicitud' ||
              solicitud.pendiente == 'Actualizar  Solicitud')
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: GFButton(
                  onPressed: () {},
                  text: "Modificar",
                  type: GFButtonType.solid,
                  size: GFSize.SMALL,
                  color: Colors.yellow.shade900,
                  textStyle: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
        ],
      ),
    ); */
  }
}
