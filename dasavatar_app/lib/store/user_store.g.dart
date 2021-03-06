// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$isLoadingAtom = Atom(name: '_UserStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$isUploadingAtom = Atom(name: '_UserStore.isUploading');

  @override
  bool get isUploading {
    _$isUploadingAtom.context.enforceReadPolicy(_$isUploadingAtom);
    _$isUploadingAtom.reportObserved();
    return super.isUploading;
  }

  @override
  set isUploading(bool value) {
    _$isUploadingAtom.context.conditionallyRunInAction(() {
      super.isUploading = value;
      _$isUploadingAtom.reportChanged();
    }, _$isUploadingAtom, name: '${_$isUploadingAtom.name}_set');
  }

  final _$isLoggedInAtom = Atom(name: '_UserStore.isLoggedIn');

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.context.enforceReadPolicy(_$isLoggedInAtom);
    _$isLoggedInAtom.reportObserved();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.context.conditionallyRunInAction(() {
      super.isLoggedIn = value;
      _$isLoggedInAtom.reportChanged();
    }, _$isLoggedInAtom, name: '${_$isLoggedInAtom.name}_set');
  }

  final _$loggedInUserAtom = Atom(name: '_UserStore.loggedInUser');

  @override
  User get loggedInUser {
    _$loggedInUserAtom.context.enforceReadPolicy(_$loggedInUserAtom);
    _$loggedInUserAtom.reportObserved();
    return super.loggedInUser;
  }

  @override
  set loggedInUser(User value) {
    _$loggedInUserAtom.context.conditionallyRunInAction(() {
      super.loggedInUser = value;
      _$loggedInUserAtom.reportChanged();
    }, _$loggedInUserAtom, name: '${_$loggedInUserAtom.name}_set');
  }

  final _$userListAtom = Atom(name: '_UserStore.userList');

  @override
  ObservableMap<String, User> get userList {
    _$userListAtom.context.enforceReadPolicy(_$userListAtom);
    _$userListAtom.reportObserved();
    return super.userList;
  }

  @override
  set userList(ObservableMap<String, User> value) {
    _$userListAtom.context.conditionallyRunInAction(() {
      super.userList = value;
      _$userListAtom.reportChanged();
    }, _$userListAtom, name: '${_$userListAtom.name}_set');
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future login({String email, String password}) {
    return _$loginAsyncAction
        .run(() => super.login(email: email, password: password));
  }

  final _$signUpAsyncAction = AsyncAction('signUp');

  @override
  Future signUp({User user, String password}) {
    return _$signUpAsyncAction
        .run(() => super.signUp(user: user, password: password));
  }

  final _$getUserAsyncAction = AsyncAction('getUser');

  @override
  Future getUser({String uid}) {
    return _$getUserAsyncAction.run(() => super.getUser(uid: uid));
  }

  final _$getUserByIdAsyncAction = AsyncAction('getUserById');

  @override
  Future getUserById({String uid}) {
    return _$getUserByIdAsyncAction.run(() => super.getUserById(uid: uid));
  }

  final _$uploadingImageAsyncAction = AsyncAction('uploadingImage');

  @override
  Future uploadingImage({File imageFile, String id}) {
    return _$uploadingImageAsyncAction
        .run(() => super.uploadingImage(imageFile: imageFile, id: id));
  }

  final _$updatedUserAsyncAction = AsyncAction('updatedUser');

  @override
  Future updatedUser({User user}) {
    return _$updatedUserAsyncAction.run(() => super.updatedUser(user: user));
  }

  final _$createUserAsyncAction = AsyncAction('createUser');

  @override
  Future createUser(User user) {
    return _$createUserAsyncAction.run(() => super.createUser(user));
  }

  final _$setLoggedInAsyncAction = AsyncAction('setLoggedIn');

  @override
  Future setLoggedIn(User user) {
    return _$setLoggedInAsyncAction.run(() => super.setLoggedIn(user));
  }

  final _$logoutAsyncAction = AsyncAction('logout');

  @override
  Future logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }
}
