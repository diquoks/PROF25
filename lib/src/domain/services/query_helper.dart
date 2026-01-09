class QueryHelper {
  final Function() startLoading;
  final Function() endLoading;

  QueryHelper({required this.startLoading, required this.endLoading});

  Future<void> request<ResponseT>(
    Future<ResponseT> Function() request,
    void Function(ResponseT) onResponse,
    void Function(Exception) onError,
  ) async {
    try {
      startLoading();
      ResponseT response = await request();
      endLoading();
      onResponse(response);
    } on Exception catch (e) {
      endLoading();
      onError(e);
    }
  }
}
