part of '../../home_view.dart';

class _BodyFeauture extends StatelessWidget {
  const _BodyFeauture();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Card(
            color: context.colorScheme.primaryContainer,
            child: Column(
              children: [
                WIconAsset(
                  path: IconEnum.store.png,
                  size: AppSize.teta.toDouble(),
                ),
                PrimaryText(
                  text: "Fatura Kayıt",
                  styleType: TextStyles.headlineMedium,
                ),
                NormalText(
                  text:
                      "Selam arkadaşlar bu modül sayesinde faturalarnızı kayıt edebilirsiniz.",
                  styleType: TextStyles.titleLarge,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
