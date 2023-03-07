import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theming_app/app/app.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      _ListItem(
        icon: const Icon(Icons.color_lens),
        title: const Text('Colors'),
        subtitle: const Text('All of the predefined colors'),
        onTap: () => context.read<AppCubit>().changeScreen(1),
      ),
      _ListItem(
        icon: const Icon(Icons.border_vertical),
        title: const Text('Spacing'),
        subtitle: const Text('All of the predefined spacings'),
        onTap: () => context.read<AppCubit>().changeScreen(2),
      ),
      _ListItem(
        icon: const Icon(Icons.text_format),
        title: const Text('Typography'),
        subtitle: const Text('All of the predefined text styles'),
        onTap: () => context.read<AppCubit>().changeScreen(3),
      ),
      _ListItem(
        icon: const Icon(Icons.widgets),
        title: const Text('Widgets'),
        subtitle: const Text('All of the predefined widgets'),
        onTap: () => context.read<AppCubit>().changeScreen(4),
      ),
    ];

    return ListView.separated(
      itemCount: pages.length,
      itemBuilder: (_, index) => pages[index],
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    required this.onTap,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final VoidCallback onTap;
  final Icon icon;
  final Text title;
  final Text subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: title,
      subtitle: subtitle,
      trailing: const Icon(Icons.arrow_forward),
      onTap: onTap,
    );
  }
}
