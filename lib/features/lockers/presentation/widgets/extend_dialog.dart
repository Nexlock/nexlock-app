import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexlock_app/core/constants/colors.dart';
import 'package:nexlock_app/features/lockers/domain/providers/locker_provider.dart';
import 'package:nexlock_app/ui/glassmorphic_container.dart';
import 'package:nexlock_app/ui/glassmorphic_button.dart';

class ExtendDialog extends ConsumerStatefulWidget {
  final String rentalId;
  final VoidCallback onExtended;

  const ExtendDialog({
    super.key,
    required this.rentalId,
    required this.onExtended,
  });

  @override
  ConsumerState<ExtendDialog> createState() => _ExtendDialogState();
}

class _ExtendDialogState extends ConsumerState<ExtendDialog> {
  int selectedHours = 1;
  bool isLoading = false;

  final List<int> hourOptions = [1, 2, 3, 4, 6, 8, 12, 24];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: GlassmorphicContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.access_time, color: AppColors.accent, size: 28),
                const SizedBox(width: 12),
                const Text(
                  'Extend Rental',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'How many hours would you like to extend your rental?',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Select Hours:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children:
                  hourOptions
                      .map(
                        (hours) => _HourChip(
                          hours: hours,
                          isSelected: selectedHours == hours,
                          onTap: () => setState(() => selectedHours = hours),
                        ),
                      )
                      .toList(),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.accent.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.accent.withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline, color: AppColors.accent, size: 16),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Your rental will be extended by $selectedHours hour${selectedHours > 1 ? 's' : ''}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
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
                    onPressed: isLoading ? null : _extendRental,
                    text: 'Extend',
                    isLoading: isLoading,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _extendRental() async {
    setState(() => isLoading = true);

    try {
      await ref
          .read(lockerProvider.notifier)
          .extendRental(widget.rentalId, selectedHours);

      if (mounted) {
        Navigator.pop(context);
        widget.onExtended();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to extend rental: $e'),
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

class _HourChip extends StatelessWidget {
  final int hours;
  final bool isSelected;
  final VoidCallback onTap;

  const _HourChip({
    required this.hours,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? AppColors.accent.withOpacity(0.3)
                  : Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color:
                isSelected ? AppColors.accent : Colors.white.withOpacity(0.3),
            width: 1.5,
          ),
        ),
        child: Text(
          '$hours hour${hours > 1 ? 's' : ''}',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isSelected ? AppColors.accent : Colors.white,
          ),
        ),
      ),
    );
  }
}
