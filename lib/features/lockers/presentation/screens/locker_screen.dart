import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nexlock_app/core/constants/colors.dart';
import 'package:nexlock_app/features/lockers/domain/models/lock_unlock_rental.dart';
import 'package:nexlock_app/features/lockers/domain/providers/locker_provider.dart';
import 'package:nexlock_app/features/lockers/presentation/widgets/checkout_dialog.dart';
import 'package:nexlock_app/features/lockers/presentation/widgets/extend_dialog.dart';
import 'package:nexlock_app/features/modules/domain/models/get_module_by_id_locker.dart';
import 'package:nexlock_app/ui/glassmorphic_app_bar.dart';
import 'package:nexlock_app/ui/glassmorphic_container.dart';
import 'package:nexlock_app/ui/glassmorphic_button.dart';

class LockerScreen extends ConsumerStatefulWidget {
  final GetModuleByIdLocker locker;

  const LockerScreen({super.key, required this.locker});

  @override
  ConsumerState<LockerScreen> createState() => _LockerScreenState();
}

class _LockerScreenState extends ConsumerState<LockerScreen> {
  bool isLoading = false;
  String? loadingAction; // Track which action is loading
  late GetModuleByIdLocker currentLocker;

  @override
  void initState() {
    super.initState();
    currentLocker = widget.locker;
    // Refresh rental status when screen loads
    _refreshLockerStatus();
  }

  Future<void> _refreshLockerStatus() async {
    if (currentLocker.currentRental != null) {
      try {
        await ref
            .read(lockerProvider.notifier)
            .getRentalStatus(currentLocker.currentRental!.id);
      } catch (e) {
        // Handle error silently for background refresh
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Watch for rental state changes to update the UI
    final rentalState = ref.watch(lockerProvider);

    // Update current locker data from rental state if available
    rentalState.whenData((state) {
      if (currentLocker.currentRental != null) {
        final updatedRental = state.rentals
            .where((r) => r.id == currentLocker.currentRental!.id)
            .firstOrNull;
        if (updatedRental != null) {
          setState(() {
            currentLocker = currentLocker.copyWith(
              currentRental: currentLocker.currentRental?.copyWith(
                isLocked: updatedRental.isLocked,
                expiresAt: updatedRental.expiresAt,
              ),
            );
          });
        }
      }
    });

    final isAvailable =
        currentLocker.isAvailable && currentLocker.currentRental == null;
    final isOwnRental = currentLocker.currentRental?.isOwnRental ?? false;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GlassmorphicAppBar(
        title: 'Locker ${currentLocker.lockerId}',
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          if (currentLocker.currentRental != null)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _refreshLockerStatus,
            ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: RefreshIndicator(
                  onRefresh: _refreshLockerStatus,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _LockerInfoCard(locker: currentLocker),
                        const SizedBox(height: 20),
                        if (isAvailable) _RentSection(),
                        if (isOwnRental) _RentalActionsSection(),
                        if (!isAvailable && !isOwnRental) _OccupiedSection(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _LockerInfoCard({required GetModuleByIdLocker locker}) {
    return GlassmorphicContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.accent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.lock, color: AppColors.accent, size: 32),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Locker ${locker.lockerId}',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: _getStatusColor().withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        _getStatusText(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: _getStatusColor(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Show real-time lock status
              if (locker.currentRental != null)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: locker.currentRental!.isLocked
                        ? Colors.red.withOpacity(0.2)
                        : Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: locker.currentRental!.isLocked
                          ? Colors.red.withOpacity(0.4)
                          : Colors.green.withOpacity(0.4),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        locker.currentRental!.isLocked
                            ? Icons.lock
                            : Icons.lock_open,
                        size: 12,
                        color: locker.currentRental!.isLocked
                            ? Colors.red
                            : Colors.green,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        locker.currentRental!.isLocked ? 'LOCKED' : 'UNLOCKED',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: locker.currentRental!.isLocked
                              ? Colors.red
                              : Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          if (locker.currentRental != null) ...[
            const SizedBox(height: 16),
            const Divider(color: Colors.white24),
            const SizedBox(height: 16),
            _RentalDetails(rental: locker.currentRental!),
          ],
        ],
      ),
    );
  }

  Widget _RentalDetails({required dynamic rental}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Rental Details',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white.withOpacity(0.9),
          ),
        ),
        const SizedBox(height: 12),
        _DetailRow(
          icon: Icons.access_time,
          label: 'Started',
          value: _formatDateTime(rental.startDate),
        ),
        const SizedBox(height: 8),
        _DetailRow(
          icon: Icons.schedule,
          label: 'Expires',
          value: _formatDateTime(rental.expiresAt),
        ),
        const SizedBox(height: 8),
        _DetailRow(
          icon: Icons.timer,
          label: 'Time Remaining',
          value: _getTimeRemaining(rental.expiresAt),
        ),
        const SizedBox(height: 8),
        _DetailRow(
          icon: rental.isLocked ? Icons.lock : Icons.lock_open,
          label: 'Lock Status',
          value: rental.isLocked ? 'Locked' : 'Unlocked',
        ),
      ],
    );
  }

  Widget _DetailRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.white.withOpacity(0.7)),
        const SizedBox(width: 8),
        Text(
          '$label: ',
          style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.7)),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _RentSection() {
    return GlassmorphicContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Available for Rent',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'This locker is available and ready to be rented.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 16),
          GlassmorphicButton(
            onPressed:
                (isLoading && loadingAction == 'rent') ? null : _rentLocker,
            text: (isLoading && loadingAction == 'rent')
                ? 'Renting...'
                : 'Rent This Locker',
            isLoading: isLoading && loadingAction == 'rent',
          ),
        ],
      ),
    );
  }

  Widget _RentalActionsSection() {
    final isToggleLoading =
        isLoading && (loadingAction == 'lock' || loadingAction == 'unlock');

    return Column(
      children: [
        GlassmorphicContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your Rental',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Manage your active rental below.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: GlassmorphicButton(
                      onPressed: isToggleLoading ? null : _toggleLock,
                      text: currentLocker.currentRental!.isLocked
                          ? 'Unlock'
                          : 'Lock',
                      icon: currentLocker.currentRental!.isLocked
                          ? Icons.lock_open
                          : Icons.lock,
                      isLoading: isToggleLoading,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: GlassmorphicButton(
                      onPressed: (isLoading && loadingAction == 'extend')
                          ? null
                          : _showExtendDialog,
                      text: 'Extend',
                      icon: Icons.access_time,
                      variant: GlassmorphicButtonVariant.secondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        GlassmorphicContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'End Rental',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Check out early and end your rental session.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 16),
              GlassmorphicButton(
                onPressed: (isLoading && loadingAction == 'checkout')
                    ? null
                    : _showCheckoutDialog,
                text: 'Checkout',
                icon: Icons.logout,
                variant: GlassmorphicButtonVariant.danger,
                isLoading: isLoading && loadingAction == 'checkout',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _OccupiedSection() {
    return GlassmorphicContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.orange.withOpacity(0.8),
                size: 24,
              ),
              const SizedBox(width: 12),
              const Text(
                'Locker Occupied',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'This locker is currently rented by another user and is not available.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor() {
    final isAvailable =
        currentLocker.isAvailable && currentLocker.currentRental == null;
    final isOwnRental = currentLocker.currentRental?.isOwnRental ?? false;

    if (isOwnRental) return AppColors.accent;
    if (isAvailable) return Colors.green;
    return Colors.red;
  }

  String _getStatusText() {
    final isAvailable =
        currentLocker.isAvailable && currentLocker.currentRental == null;
    final isOwnRental = currentLocker.currentRental?.isOwnRental ?? false;

    if (isOwnRental) return 'YOUR RENTAL';
    if (isAvailable) return 'AVAILABLE';
    return 'OCCUPIED';
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
      return '${days}d ${hours}h ${minutes}m';
    } else if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }

  Future<void> _rentLocker() async {
    setState(() {
      isLoading = true;
      loadingAction = 'rent';
    });

    try {
      await ref.read(lockerProvider.notifier).createRental(currentLocker.id);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Locker ${currentLocker.lockerId} rented successfully!',
            ),
            backgroundColor: Colors.green,
          ),
        );
        context.pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to rent locker: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
          loadingAction = null;
        });
      }
    }
  }

  Future<void> _toggleLock() async {
    final action = currentLocker.currentRental!.isLocked
        ? ActionType.unlock
        : ActionType.lock;

    setState(() {
      isLoading = true;
      loadingAction = action == ActionType.lock ? 'lock' : 'unlock';
    });

    try {
      // Show immediate optimistic update
      setState(() {
        currentLocker = currentLocker.copyWith(
          currentRental: currentLocker.currentRental?.copyWith(
            isLocked: action == ActionType.lock,
          ),
        );
      });

      await ref
          .read(lockerProvider.notifier)
          .toggleLock(currentLocker.currentRental!.id, action);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Locker ${action == ActionType.unlock ? 'unlocked' : 'locked'} successfully!',
            ),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      // Revert optimistic update on error
      if (mounted) {
        setState(() {
          currentLocker = currentLocker.copyWith(
            currentRental: currentLocker.currentRental?.copyWith(
              isLocked: action != ActionType.lock,
            ),
          );
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to toggle lock: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
          loadingAction = null;
        });
      }
    }
  }

  void _showExtendDialog() {
    showDialog(
      context: context,
      builder: (context) => ExtendDialog(
        rentalId: currentLocker.currentRental!.id,
        onExtended: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Rental extended successfully!'),
              backgroundColor: Colors.green,
            ),
          );
          _refreshLockerStatus();
        },
      ),
    );
  }

  void _showCheckoutDialog() {
    showDialog(
      context: context,
      builder: (context) => CheckoutDialog(
        rentalId: currentLocker.currentRental!.id,
        lockerName: 'Locker ${currentLocker.lockerId}',
        onCheckedOut: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Rental ended successfully!'),
              backgroundColor: Colors.green,
            ),
          );
          context.pop();
        },
      ),
    );
  }
}
