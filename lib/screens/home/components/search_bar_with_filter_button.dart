import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/search_screen.dart';

class SearchBarWithFilterButton extends StatelessWidget {
  const SearchBarWithFilterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Form(
        child: TextFormField(
          onFieldSubmitted: (value) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchPage(
                  searchValue: value,
                ),
              ),
            );
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            hintText: 'Search item...',
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2,
              ),
              child: SizedBox(
                height: 48,
                width: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  child: SvgPicture.asset('assets/icons/Filter.svg'),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          defaultBorderRadius,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(defaultBorderRadius),
  ),
  borderSide: BorderSide.none,
);
