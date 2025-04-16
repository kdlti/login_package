import 'package:flutter/material.dart';

import '../utils/utils.dart';

typedef PageBuilder = Widget Function(
    BuildContext context, BoxConstraints constraints);

class PageWidget extends StatelessWidget {
  final PageBuilder? builder;
  final PageConfig config;

  const PageWidget({
    super.key,
    this.builder,
    this.config = const PageConfig(),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;
        return Scaffold(
          body: Stack(
            children: [
              config.background ??
              AnimatedOpacity(
                    opacity: isMobile ? 0.0 : 1,
                    duration: const Duration(milliseconds: 300),
                    child: GradientBox(
                      colors: config.colors ??
                          [
                            theme.colorScheme.primary,
                            theme.colorScheme.secondary,
                          ],
                      begin: config.begin,
                      end: config.end,
                    ),
              ),
              CustomScrollView(
                keyboardDismissBehavior: config.keyboardDismissBehavior,
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        constraints: config.cardConstraints ??
                            const BoxConstraints(maxWidth: 600),
                        margin: config.cardMargin ?? const EdgeInsets.all(40),
                        decoration: config.cardDecoration ??
                            BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: theme.colorScheme.surface,
                              // boxShadow: isMobile
                              //     ? null
                              //     : const [
                              //         BoxShadow(
                              //           blurRadius: 5,
                              //           spreadRadius: 1,
                              //         ),
                              //       ],
                            ),
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 300),
                          padding: config.cardPadding ??
                              EdgeInsets.symmetric(
                                vertical: 40,
                                horizontal: isMobile ? 0 : 40,
                              ),
                          child: builder?.call(context, constraints),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
