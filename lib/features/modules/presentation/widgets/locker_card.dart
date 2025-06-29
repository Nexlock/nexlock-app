import 'package:flutter/material.dart';
import 'package:nexlock_app/core/constants/colors.dart';
import 'package:nexlock_app/features/modules/domain/models/get_module_by_id_locker.dart';
import 'package:nexlock_app/features/modules/domain/models/locker_rental.dart';
import 'package:nexlock_app/ui/glassmorphic_container.dart';

class LockerCard extends StatelessWidget {
  final GetModuleByIdLocker locker;
  final VoidCallback? onTap;

  const LockerCard({super.key, required this.locker, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isAvailable = locker.isAvailable && locker.currentRental == null;
    final isOwnRental = locker.currentRental?.isOwnRental ?? false;

    return GestureDetector(
      onTap: onTap,
      child: GlassmorphicContainer(
        margin: const EdgeInsets.only(bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Locker ${locker.lockerId}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _getStatusColor(
                      isAvailable,
                      isOwnRental,
                    ).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: _getStatusColor(
                        isAvailable,
                        isOwnRental,
                      ).withOpacity(0.4),
                    ),
                  ),
                  child: Text(
                    _getStatusText(isAvailable, isOwnRental),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: _getStatusColor(isAvailable, isOwnRental),
                    ),
                  ),
                ),
              ],
            ),
            if (locker.currentRental != null) ...[
              const SizedBox(height: 8),
              _RentalInfo(rental: locker.currentRental!),
            ],
            if (isAvailable) ...[
              const SizedBox(height: 8),
              Text(
                'Available for rent',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(bool isAvailable, bool isOwnRental) {
    if (isOwnRental) return AppColors.accent;
    if (isAvailable) return Colors.green;
    return Colors.red;
  }

  String _getStatusText(bool isAvailable, bool isOwnRental) {
    if (isOwnRental) return 'YOUR RENTAL';
    if (isAvailable) return 'AVAILABLE';
    return 'OCCUPIED';
  }
}

class _RentalInfo extends StatelessWidget {
  final LockerRental rental;

  const _RentalInfo({required this.rental});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              rental.isLocked ? Icons.lock : Icons.lock_open,
              size: 14,
              color: Colors.white.withOpacity(0.7),
            ),
            const SizedBox(width: 4),
            Text(
              rental.isLocked ? 'Locked' : 'Unlocked',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          'Expires: ${_formatDate(rental.expiresAt)}',
          style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.6)),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }
}
