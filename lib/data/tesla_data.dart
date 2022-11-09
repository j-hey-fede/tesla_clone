import 'package:place_space/models/cars.dart';
import 'package:flutter/material.dart';

final List<Cars> carList = [
  Cars(
    id: '001',
    name: 'Model 3',
    image: 'assets/images/model3.jpg',
    imageWide: 'assets/images/model3W.jpg',
    content: 'Order Online for Touchless Delivey',
    backgroundColor: [
      const Color.fromARGB(0, 227, 200, 153),
      const Color.fromARGB(0, 25, 54, 24),
    ],
  ),
  Cars(
    id: '002',
    name: 'Model Y',
    image: 'assets/images/modely.jpg',
    imageWide: 'assets/images/modelyW.jpg',
    content: 'Order Online for Touchless Delivey',
    backgroundColor: [
      const Color.fromARGB(0, 136, 195, 227),
      const Color.fromARGB(0, 247, 247, 245),
    ],
  ),
  Cars(
    id: '003',
    name: 'Model S',
    image: 'assets/images/models.jpg',
    imageWide: 'assets/images/modelsW.jpg',
    content: 'Order Online for Touchless Delivey',
    backgroundColor: [
      const Color.fromARGB(0, 136, 195, 227),
      const Color.fromARGB(0, 85, 48, 47),
    ],
  ),
  Cars(
    id: '004',
    name: 'Model x',
    image: 'assets/images/modelx.jpg',
    imageWide: 'assets/images/modelxW.jpg',
    content: 'Order Online for Touchless Delivey',
    backgroundColor: [
      const Color.fromARGB(0, 16, 27, 33),
      const Color.fromARGB(0, 59, 61, 62),
    ],
  ),
  Cars(
    id: '005',
    name: 'Solar Panels',
    image: 'assets/images/panels.jpg',
    imageWide: 'assets/images/panelsW.jpg',
    content: 'Lowest Cost Solar Panels in America',
    backgroundColor: [
      const Color.fromARGB(0, 94, 131, 150),
      const Color.fromARGB(0, 245, 244, 221),
    ],
  ),
  Cars(
    id: '006',
    name: 'Solar Roof',
    image: 'assets/images/roof.jpg',
    imageWide: 'assets/images/roofW.jpg',
    content: 'Produce Clean Energy From You Roof',
    backgroundColor: [
      const Color.fromARGB(0, 222, 131, 86),
      const Color.fromARGB(0, 101, 28, 28),
    ],
  ),
];
