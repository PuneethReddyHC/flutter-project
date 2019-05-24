import 'package:scoped_model/scoped_model.dart';

import './connected_process.dart';

class MainModel extends Model with ConnectedProductsModel, UserModel, ProductsModel, UtilityModel {
}
