import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:solicitudes_multiempresa_apk/app/data/model/user.dart';
import 'package:solicitudes_multiempresa_apk/app/data/provider/bd_isar/isar_cnx.dart';

class BdUserController with ChangeNotifier {
  BdUserController();

  List<User> _users = [];

  List<User> get users => _users;

  /// Obtener todos los usuarios
  Future<List<User>> getUsers() async {
    Isar? isar = await IsarCnx().connectIsar();

    final usersCollection = isar?.users;
    _users = (await usersCollection?.where().findAll())!;
    List<User> tmp = _users.toList();
    notifyListeners();

    return tmp;
  }

  /// Obtener un usuario dado el id
  Future<User> getUserId(int id) async {
    Isar? isar = await IsarCnx().connectIsar();

    final usersCollection = isar?.users;
    _users = (await usersCollection?.filter().idUserBDEqualTo(id).findAll())!;
    List<User> tmp = _users.toList();
    User user = tmp[0];
    return user;
  }

  /// Obtener un usuario dado el user
  Future<User?> getUserLogin(String user) async {
    Isar? isar = await IsarCnx().connectIsar();

    final usersCollection = isar?.users;
    _users = (await usersCollection?.filter().userEqualTo(user).findAll())!;
    List<User> tmp = _users.toList();
    User? userFind = tmp.isNotEmpty ? tmp[0] : null;
    return userFind;
  }

  /// Adicionar un usuario
  Future<int> addUser(User user) async {
    int id = -1;
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      id = await isar.users.put(user);
    });
    _users.add(user);
    notifyListeners();
    return id;
  }

  /// Eliminar un usuario
  void deleteUser(User user) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      bool deleted = await isar.users.delete(user.idUserBD);
      if (deleted) _users.remove(user);
      notifyListeners();
    });
  }

  ///Actualizar un usuario
  void updateUser(User userUpdate) async {
    Isar? isar = await IsarCnx().connectIsar();

    await isar?.writeTxn(() async {
      User? user = await isar.users.get(userUpdate.idUserBD);
      user?.access_token = userUpdate.access_token;
      await isar.users.put(user!);
      notifyListeners();
    });
  }
}
