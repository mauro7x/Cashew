// Simplified premium page - store functionality removed for personal use
// All premium features are always enabled

import 'package:budget/database/tables.dart';
import 'package:flutter/material.dart';

// Stub class for ProductsState - used in navigationFramework
class ProductsState extends State<StatefulWidget> {
  void refreshState() {
    // No-op since premium is always enabled
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// Always return true - premium is always enabled
bool hidePremiumPopup() {
  return true;
}

// All premium popup functions always return true (premium enabled)
Future<bool> premiumPopupPushRoute(BuildContext context) async {
  return true;
}

Future<bool> premiumPopupBudgets(BuildContext context) async {
  return true;
}

Future<bool> premiumPopupObjectives(BuildContext context,
    {required ObjectiveType objectiveType}) async {
  return true;
}

Future<bool> premiumPopupPastBudgets(BuildContext context) async {
  return true;
}

Future premiumPopupAddTransaction(BuildContext context) async {
  return true;
}

// Stub function for initialization - does nothing since store is disabled
Future<Map<String, dynamic>> initializeStoreAndPurchases(
    {required BuildContext context, required bool popRouteWithPurchase}) async {
  return {};
}

// Empty premium page widget - should never be shown
class PremiumPage extends StatelessWidget {
  const PremiumPage({
    this.canDismiss = false,
    this.popRouteWithPurchase = false,
    super.key,
  });

  final bool canDismiss;
  final bool popRouteWithPurchase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium'),
      ),
      body: const Center(
        child: Text('Premium features are enabled'),
      ),
    );
  }
}

// Widget that shows child without any fade or lock - premium is always active
class FadeOutAndLockFeature extends StatelessWidget {
  const FadeOutAndLockFeature({
    required this.child,
    this.hasInitiallyDismissed = false,
    this.actionAfter,
    super.key,
  });

  final Widget child;
  final bool hasInitiallyDismissed;
  final Function()? actionAfter;

  @override
  Widget build(BuildContext context) {
    // Just return the child - no premium lock needed
    return child;
  }
}

// Widget that shows child without lock - premium is always active
class LockedFeature extends StatelessWidget {
  const LockedFeature({
    required this.child,
    this.actionAfter,
    super.key,
  });

  final Widget child;
  final Function()? actionAfter;

  @override
  Widget build(BuildContext context) {
    // Just return the child wrapped in GestureDetector to handle tap
    return GestureDetector(
      onTap: () {
        if (actionAfter != null) actionAfter!();
      },
      child: child,
    );
  }
}
