import 'package:flutter/material.dart';
import 'package:solicitudes_multiempresa_apk/app/routes/app_pages.dart';

class UI {
  static final List<Map<String, dynamic>> listDrawer = [
    {
      'title': 'Inicio',
      'icon': Icons.home,
      'route': Routes.dashboard,
      'not_children': true,
    },
    {
      'title': 'Solicitudes',
      'not_children': false,
      'children': [
        {
          'title': 'Crear Solicitud',
          'icon': Icons.assignment_add,
          'route': Routes.solcitud,
        },
        {
          'title': 'Bandeja de Salida',
          'icon': Icons.content_paste_go,
          'route': Routes.listaSolicitud,
        },
        {
          'title': 'Gestión Solicitudes',
          'icon': Icons.content_paste_search,
          'route': Routes.gestionSolicitud,
        },
      ],
    },
    {
      'title': 'Cerrar Sesión',
      'icon': Icons.logout,
      'route': Routes.initial,
      'not_children': true,
    },
  ];

  static final List<String> listFiltros = [
    "Código",
    "Fecha",
    "Mis Solicitudes",
    "Estado",
  ];

  static final List<Map<String, dynamic>> listEstados = [
    {
      'code': 1,
      'descripcion': "Sin Atender",
    },
    {
      'code': 2,
      'descripcion': "Atendida",
    },
    {
      'code': 3,
      'descripcion': "Iniciada",
    },
    {
      'code': 4,
      'descripcion': "Pendiente",
    },
    {
      'code': 5,
      'descripcion': "Terminada",
    },
    {
      'code': 6,
      'descripcion': "Cerrada",
    },
    {
      'code': 7,
      'descripcion': "Cancelada",
    },
  ];
}
