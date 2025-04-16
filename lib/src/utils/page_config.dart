import 'package:flutter/material.dart';

class PageConfig {
  final EdgeInsetsGeometry? cardPadding;
  final EdgeInsetsGeometry? cardMargin;
  final BoxConstraints? cardConstraints;
  final Decoration? cardDecoration;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final List<Color>? colors;
  final Widget? background;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  const PageConfig({
    this.cardPadding,
    this.cardMargin,
    this.cardConstraints,
    this.cardDecoration,
    this.begin = Alignment.topLeft,
    this.end = Alignment.bottomRight,
    this.colors,
    this.background,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  });

  PageConfig copyWith({
    EdgeInsetsGeometry? cardPadding,
    EdgeInsetsGeometry? cardMargin,
    BoxConstraints? cardConstraints,
    Decoration? cardDecoration,
    AlignmentGeometry? begin,
    AlignmentGeometry? end,
    List<Color>? colors,
    Widget? background,
    ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior,
  }) {
    return PageConfig(
      cardPadding: cardPadding ?? this.cardPadding,
      cardMargin: cardMargin ?? this.cardMargin,
      cardConstraints: cardConstraints ?? this.cardConstraints,
      cardDecoration: cardDecoration ?? this.cardDecoration,
      begin: begin ?? this.begin,
      end: end ?? this.end,
      colors: colors ?? this.colors,
      background: background ?? this.background,
      keyboardDismissBehavior:
          keyboardDismissBehavior ?? this.keyboardDismissBehavior,
    );
  }
}
