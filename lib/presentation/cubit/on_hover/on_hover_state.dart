part of 'on_hover_cubit.dart';

class OnHoverState extends Equatable {
  const OnHoverState({this.hover = false});
  final bool hover;

  OnHoverState copyWith({
    bool? hover,
  }) {
    return OnHoverState(
      hover: hover ?? this.hover,
    );
  }

  @override
  List<Object> get props => [hover];
}
