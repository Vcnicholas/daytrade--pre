import 'package:daytrade/data/core/services/navigation_service.dart';
import 'package:daytrade/data/core/viewstate.dart';
import 'package:daytrade/locator.dart';
import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  ViewState _viewState = ViewState.Idle;
  NavigationService navigationService = locator<NavigationService>();
  ViewState get viewState => _viewState;
  bool isLoading = false;

  bool get _isLoading => isLoading;

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
    set viewState(ViewState newState) {
    _viewState = newState;
    notifyListeners();
  }

  void startLoader() {
    if (!isLoading) {
      isLoading = true;
      viewState = ViewState.Loading;
      notifyListeners();
    }
  }

  // Common functionality for all view models can go here
}
