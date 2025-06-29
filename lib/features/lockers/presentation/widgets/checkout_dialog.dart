import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexlock_app/features/lockers/domain/providers/locker_provider.dart';
import 'package:nexlock_app/ui/glassmorphic_container.dart';
import 'package:nexlock_app/ui/glassmorphic_button.dart';

class CheckoutDialog extends ConsumerStatefulWidget {
  final String rentalId;
  final String lockerName;
  final VoidCallback onCheckedOut;

  const CheckoutDialog({
    super.key,
    required this.rentalId,
    required this.lockerName,
    required this.onCheckedOut,
  });

  @override
  ConsumerState<CheckoutDialog> createState() => _CheckoutDialogState();
}

class _CheckoutDialogState extends ConsumerState<CheckoutDialog> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: GlassmorphicContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(Icons.logout, color: Colors.red.shade300, size: 32),
            ),
            const SizedBox(height: 16),
            const Text(
              'End Rental',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Are you sure you want to end your rental for ${widget.lockerName}?',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.8),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  Icon(Icons.warning_amber, color: Colors.orange, size: 16),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'This action cannot be undone. Make sure you have removed all items from the locker.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: GlassmorphicButton(
                    onPressed: isLoading ? null : () => Navigator.pop(context),
                    text: 'Cancel',
                    variant: GlassmorphicButtonVariant.secondary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GlassmorphicButton(
                    onPressed: isLoading ? null : _checkoutRental,
                    text: 'End Rental',
                    isLoading: isLoading,
                    variant: GlassmorphicButtonVariant.danger,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _checkoutRental() async {
    setState(() => isLoading = true);

    try {
      await ref.read(lockerProvider.notifier).checkoutRental(widget.rentalId);

      if (mounted) {
        Navigator.pop(context);
        widget.onCheckedOut();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to end rental: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => isLoading = false);
      }
    }
  }
}
