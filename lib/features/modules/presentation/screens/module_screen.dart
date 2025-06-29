import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nexlock_app/core/constants/colors.dart';
import 'package:nexlock_app/features/modules/domain/models/get_module_by_id_locker.dart';
import 'package:nexlock_app/features/modules/domain/models/get_module_by_id_response.dart';
import 'package:nexlock_app/features/modules/domain/providers/modules_provider.dart';
import 'package:nexlock_app/features/modules/presentation/widgets/locker_card.dart';
import 'package:nexlock_app/ui/glassmorphic_app_bar.dart';
import 'package:nexlock_app/ui/glassmorphic_container.dart';

class ModuleScreen extends ConsumerStatefulWidget {
  final String moduleId;

  const ModuleScreen({super.key, required this.moduleId});

  @override
  ConsumerState<ModuleScreen> createState() => _ModuleScreenState();
}

class _ModuleScreenState extends ConsumerState<ModuleScreen> {
  GetModuleByIdResponse? moduleDetails;
  bool isLoading = true;
  String? error;

  @override
  void initState() {
    super.initState();
    _loadModuleDetails();
  }

  Future<void> _loadModuleDetails() async {
    try {
      setState(() {
        isLoading = true;
        error = null;
      });

      final details = await ref
          .read(modulesProvider.notifier)
          .getModuleById(widget.moduleId);

      setState(() {
        moduleDetails = details;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        error = e.toString();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GlassmorphicAppBar(
        title: moduleDetails?.name ?? 'Module Details',
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          if (moduleDetails != null)
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _loadModuleDetails,
            ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(child: _buildBody()),
      ),
    );
  }

  Widget _buildBody() {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }

    if (error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.white.withOpacity(0.7),
            ),
            const SizedBox(height: 16),
            Text(
              'Error loading module',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              error!,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.7),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _loadModuleDetails,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white.withOpacity(0.2),
                foregroundColor: Colors.white,
              ),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (moduleDetails == null) {
      return Center(
        child: Text(
          'Module not found',
          style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.8)),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: _loadModuleDetails,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ModuleInfoCard(module: moduleDetails!),
            const SizedBox(height: 16),
            Text(
              'Lockers (${moduleDetails!.lockers.length})',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
            const SizedBox(height: 12),
            if (moduleDetails!.lockers.isEmpty)
              GlassmorphicContainer(
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.inbox_outlined,
                        size: 48,
                        color: Colors.white.withOpacity(0.7),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'No lockers available',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            else
              ...moduleDetails!.lockers.map(
                (locker) => LockerCard(
                  locker: locker,
                  onTap: () => _handleLockerTap(locker),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _handleLockerTap(GetModuleByIdLocker locker) {
    final isAvailable = locker.isAvailable && locker.currentRental == null;
    final isOwnRental = locker.currentRental?.isOwnRental ?? false;

    if (isOwnRental) {
      _showLockerActions(locker);
    } else if (isAvailable) {
      _showRentDialog(locker);
    } else {
      _showLockerInfo(locker);
    }
  }

  void _showLockerActions(GetModuleByIdLocker locker) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder:
          (context) => Container(
            padding: const EdgeInsets.all(20),
            child: GlassmorphicContainer(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Locker ${locker.lockerId}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: Icon(
                      locker.currentRental!.isLocked
                          ? Icons.lock_open
                          : Icons.lock,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    title: Text(
                      locker.currentRental!.isLocked ? 'Unlock' : 'Lock',
                      style: const TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      // TODO: Implement lock/unlock functionality
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.cancel,
                      color: Colors.red.withOpacity(0.8),
                    ),
                    title: const Text(
                      'End Rental',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      // TODO: Implement end rental functionality
                    },
                  ),
                ],
              ),
            ),
          ),
    );
  }

  void _showRentDialog(GetModuleByIdLocker locker) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.transparent,
            content: GlassmorphicContainer(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.lock_outline, size: 48, color: Colors.white),
                  const SizedBox(height: 16),
                  Text(
                    'Rent Locker ${locker.lockerId}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Would you like to rent this locker?',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () => Navigator.pop(context),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.1),
                          ),
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            // TODO: Implement rent functionality
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.accent.withOpacity(0.8),
                          ),
                          child: const Text(
                            'Rent',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }

  void _showLockerInfo(GetModuleByIdLocker locker) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.transparent,
            content: GlassmorphicContainer(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.info_outline, size: 48, color: Colors.white),
                  const SizedBox(height: 16),
                  Text(
                    'Locker ${locker.lockerId}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'This locker is currently occupied.',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.2),
                    ),
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

class _ModuleInfoCard extends StatelessWidget {
  final GetModuleByIdResponse module;

  const _ModuleInfoCard({required this.module});

  @override
  Widget build(BuildContext context) {
    final availableLockers =
        module.lockers
            .where(
              (locker) => locker.isAvailable && locker.currentRental == null,
            )
            .length;
    final occupiedLockers = module.lockers.length - availableLockers;

    return GlassmorphicContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            module.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          if (module.description != null) ...[
            const SizedBox(height: 8),
            Text(
              module.description!,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
          if (module.location != null) ...[
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: Colors.white.withOpacity(0.7),
                ),
                const SizedBox(width: 4),
                Text(
                  module.location!,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _StatusCard(
                  icon: Icons.check_circle,
                  count: availableLockers,
                  label: 'Available',
                  color: Colors.green,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _StatusCard(
                  icon: Icons.lock,
                  count: occupiedLockers,
                  label: 'Occupied',
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusCard extends StatelessWidget {
  final IconData icon;
  final int count;
  final String label;
  final Color color;

  const _StatusCard({
    required this.icon,
    required this.count,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 4),
          Text(
            count.toString(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
