import 'package:flutter/material.dart';
import 'package:place_space/constants/colors.dart';

class DesktopTopBar extends StatelessWidget {
  const DesktopTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Model S',
                style: TextStyle(
                  color: kTextPrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Model 3',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Model X',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Model Y',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Roof',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Panels',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              )),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.all(0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Shop',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(0),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Account',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
