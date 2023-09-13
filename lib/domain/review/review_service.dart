import 'package:wedding_app/domain/error/error_service.dart';
import 'package:wedding_app/domain/review/review_model.dart';
import 'package:wedding_app/domain/review/review_repository.dart';

class ReviewService {
  final ReviewRepository _reviewRepository;
  final ErrorsService _errorsService;

  ReviewService(this._reviewRepository, this._errorsService);

  Future<List<ReviewModel>?> getReviewList() async {
    final reviewsList = await _reviewRepository.getReviewsList();
    reviewsList == null ? _errorsService.activateConnectionError() : _errorsService.deactivateConnectionError();

    return reviewsList;
  }
}
