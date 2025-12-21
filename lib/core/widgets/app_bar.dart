import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.haveTitle,
    required this.haveSearchBar,
    this.title,
    this.haveAction,
  });

  final bool haveTitle, haveSearchBar;
  final bool? haveAction;
  final String? title;

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (haveTitle ? 70 : 25));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      actionsIconTheme: const IconThemeData(color: Colors.black),
      centerTitle: true,
      title: haveTitle
          ? Text(
              title ?? "",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize:30
              ),
            )
          : null,
      actionsPadding: EdgeInsetsDirectional.symmetric(horizontal: 24),
      actions: haveAction ?? false
          ? [
              Icon(
                Icons.add_shopping_cart_rounded,
                color: Theme.of(context).colorScheme.error,
                size: 30,
              ),
            ]
          : null,
      bottom: haveSearchBar
          ? PreferredSize(
              preferredSize: preferredSize,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(
                  elevation: const WidgetStatePropertyAll(0),
                  padding: const WidgetStatePropertyAll(
                    EdgeInsetsDirectional.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                  ),
                  hintText: "Search",
                  hintStyle: WidgetStatePropertyAll(
                    Theme.of(context).textTheme.titleMedium,
                  ),
                  trailing: const [Icon(Icons.search)],
                  side: WidgetStatePropertyAll(
                    BorderSide(
                      color: Theme.of(context).colorScheme.surface,
                      width: 1,
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll(
                    Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
