import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nexlock_app/features/auth/domain/providers/auth_notifier.dart';
import 'package:nexlock_app/ui/glassmorphic_app_bar.dart';
import 'package:nexlock_app/ui/glassmorphic_container.dart';

class NexlockNavigationBar extends ConsumerWidget
    implements PreferredSizeWidget {
  const NexlockNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GlassmorphicAppBar(
      title: 'Nexlock',
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _showMenu(context, ref),
        ),
      ],
    );
  }

  void _showMenu(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => _MenuBottomSheet(ref: ref),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MenuBottomSheet extends StatelessWidget {
  final WidgetRef ref;

  const _MenuBottomSheet({required this.ref});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: GlassmorphicContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 24),
            _MenuTile(
              icon: Icons.person,
              title: 'Profile',
              onTap: () {
                Navigator.pop(context);
                context.push('/profile');
              },
            ),
            _MenuTile(
              icon: Icons.receipt_long,
              title: 'Rentals',
              onTap: () {
                Navigator.pop(context);
                // TODO: Navigate to rentals
              },
            ),
            _MenuTile(
              icon: Icons.logout,
              title: 'Sign Out',
              onTap: () async {
                Navigator.pop(context);
                await ref.read(authProvider.notifier).logout();
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _MenuTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          children: [
            Icon(icon, color: Colors.white.withOpacity(0.8), size: 24),
            const SizedBox(width: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.white.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
