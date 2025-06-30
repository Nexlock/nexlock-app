import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexlock_app/core/constants/colors.dart';
import 'package:nexlock_app/features/lockers/domain/models/rental_model.dart';
import 'package:nexlock_app/features/lockers/domain/providers/locker_provider.dart';
import 'package:nexlock_app/ui/glassmorphic_container.dart';

class RentalCard extends ConsumerWidget {
  final RentalModel rental;
  final VoidCallback? onTap;

  const RentalCard({super.key, required this.rental, this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch for rental state changes to update this specific rental
    final rentalState = ref.watch(lockerProvider);

    // Get the most up-to-date rental data
    RentalModel currentRental = rental;
    rentalState.whenData((state) {
      final updatedRental =
          state.rentals.where((r) => r.id == rental.id).firstOrNull;
      if (updatedRental != null) {
        currentRental = updatedRental;
      }
    });

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
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.accent.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          currentRental.isLocked ? Icons.lock : Icons.lock_open,
                          color: AppColors.accent,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Locker ${currentRental.locker.lockerId}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              currentRental.locker.module.name,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: currentRental.isLocked
                        ? Colors.red.withOpacity(0.2)
                        : Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: currentRental.isLocked
                          ? Colors.red.withOpacity(0.4)
                          : Colors.green.withOpacity(0.4),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        currentRental.isLocked ? Icons.lock : Icons.lock_open,
                        size: 10,
                        color:
                            currentRental.isLocked ? Colors.red : Colors.green,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        currentRental.isLocked ? 'LOCKED' : 'UNLOCKED',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: currentRental.isLocked
                              ? Colors.red
                              : Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  Icons.schedule,
                  size: 14,
                  color: Colors.white.withOpacity(0.7),
                ),
                const SizedBox(width: 4),
                Text(
                  'Expires: ${_formatDateTime(currentRental.expiresAt)}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.timer,
                  size: 14,
                  color: Colors.white.withOpacity(0.7),
                ),
                const SizedBox(width: 4),
                Text(
                  _getTimeRemaining(currentRental.expiresAt),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: _getTimeRemainingColor(currentRental.expiresAt),
                  ),
                ),
              ],
            ),
            // Add a refresh indicator if the status might be outdated
            if (_shouldShowRefreshIndicator(currentRental)) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.orange.withOpacity(0.3)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 12,
                      height: 12,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.orange),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      'Syncing status...',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.orange.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  bool _shouldShowRefreshIndicator(RentalModel rental) {
    // Show refresh indicator if the rental was recently updated (within last 5 seconds)
    // This is a simple heuristic - in a real app you might track this more precisely
    return false; // For now, we'll disable this feature
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  String _getTimeRemaining(DateTime expiresAt) {
    final now = DateTime.now();
    final difference = expiresAt.difference(now);

    if (difference.isNegative) {
      return 'Expired';
    }

    final days = difference.inDays;
    final hours = difference.inHours % 24;
    final minutes = difference.inMinutes % 60;

    if (days > 0) {
      return '${days}d ${hours}h';
    } else if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }

  Color _getTimeRemainingColor(DateTime expiresAt) {
    final now = DateTime.now();
    final difference = expiresAt.difference(now);

    if (difference.isNegative) {
      return Colors.red;
    } else if (difference.inHours < 1) {
      return Colors.orange;
    } else if (difference.inHours < 6) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }
}
