import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index]!)),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getSrnHeight(14),
          width: getSrnWidth(14),
        ),
        SizedBox(
          width: getSrnWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
