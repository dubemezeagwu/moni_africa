
import 'package:moni_africa/utils/size_config.dart';

// Extensions to easily reach the size configuration class
extension SizeExtension on num {
  double get h => SizeConfig.getHeight(this.toDouble());

  double get w => SizeConfig.getWidth(this.toDouble());

  double get sp => SizeConfig.getTextSize(this.toDouble());
}