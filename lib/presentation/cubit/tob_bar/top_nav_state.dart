part of 'top_nav_cubit.dart';

class TopNavBarState extends Equatable {
  const TopNavBarState({this.currentIndex = 0});
  final int currentIndex;

  TopNavBarState copyWith({
    int? currentIndex,
  }) {
    return TopNavBarState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }

  @override
  List<Object> get props => [currentIndex];
}
