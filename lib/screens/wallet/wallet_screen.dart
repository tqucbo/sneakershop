import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/dialog/components/apply_button.dart';
import 'package:onlineshop/screens/sidebar/components/side_bar_menu_button.dart';

import 'package:onlineshop/screens/sidebar/side_bar_screen.dart';
import 'dart:math' as math;

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  String cardNumber = '5400 0031 1841 0027';
  String cardHolderName = 'Tran Quoc Bao';
  String expiryDate = '02/23';
  String cvv = '041';
  bool showBack = false;

  late FocusNode _focusNode;
  TextEditingController cardNumberCtrl = TextEditingController();
  TextEditingController expiryFieldCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderOutlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(defaultBorderRadius),
      ),
      borderSide: BorderSide(
        color: primaryColor,
      ),
    );
    const enabledBorderOutlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(defaultBorderRadius),
        ),
        borderSide: BorderSide.none);
    return Scaffold(
      drawer: const SideBarScreen(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const SideBarMenuButton(),
        title: Text(
          'Wallet',
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            iconSize: 18,
          ),
        ],
      ),
      body: Column(
        children: [
          CreditCard(
            cardNumber: cardNumber,
            cardExpiry: expiryDate,
            cardHolderName: cardHolderName,
            cardType: CardType.masterCard,
            cvv: cvv,
            bankName: 'GDSC SGU Bank',
            showBackSide: showBack,
            frontBackground: CardBackgrounds.custom(primaryColor.value),
            backBackground: CardBackgrounds.custom(primaryColor.value),
            showShadow: true,
            frontTextColor: Colors.white,
            backTextColor: Colors.white,
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: TextFormField(
                          cursorColor: primaryColor,
                          controller: cardNumberCtrl,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Card Number',
                            enabledBorder: enabledBorderOutlineInputBorder,
                            focusedBorder: focusedBorderOutlineInputBorder,
                          ),
                          maxLength: 16,
                          onChanged: (value) {
                            final newCardNumber = value.trim();
                            var newStr = '';
                            const step = 4;
                            for (var i = 0;
                                i < newCardNumber.length;
                                i += step) {
                              newStr += newCardNumber.substring(
                                i,
                                math.min(
                                  i + step,
                                  newCardNumber.length,
                                ),
                              );
                              if (i + step < newCardNumber.length) {
                                newStr += ' ';
                              }
                            }
                            setState(
                              () {
                                cardNumber = newStr;
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: TextFormField(
                          cursorColor: primaryColor,
                          controller: expiryFieldCtrl,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: enabledBorderOutlineInputBorder,
                            focusedBorder: focusedBorderOutlineInputBorder,
                            hintText: 'Card Expiry',
                          ),
                          maxLength: 5,
                          onChanged: (value) {
                            var newDateValue = value.trim();
                            final isPressingBackspace =
                                expiryDate.length > newDateValue.length;
                            final containsSlash = newDateValue.contains(
                              '/',
                            );

                            if (newDateValue.length >= 2 &&
                                !containsSlash &&
                                !isPressingBackspace) {
                              newDateValue = newDateValue.substring(
                                    0,
                                    2,
                                  ) +
                                  '/' +
                                  newDateValue.substring(
                                    2,
                                  );
                            }
                            setState(
                              () {
                                expiryFieldCtrl.text = newDateValue;
                                expiryFieldCtrl.selection =
                                    TextSelection.fromPosition(
                                  TextPosition(
                                    offset: newDateValue.length,
                                  ),
                                );
                                expiryDate = newDateValue;
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: TextFormField(
                          cursorColor: primaryColor,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Card Holder Name',
                            enabledBorder: enabledBorderOutlineInputBorder,
                            focusedBorder: focusedBorderOutlineInputBorder,
                          ),
                          onChanged: (value) {
                            setState(
                              () {
                                cardHolderName = value;
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 25,
                        ),
                        child: TextFormField(
                          cursorColor: primaryColor,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'CVV',
                            enabledBorder: enabledBorderOutlineInputBorder,
                            focusedBorder: focusedBorderOutlineInputBorder,
                          ),
                          maxLength: 3,
                          onChanged: (value) {
                            setState(
                              () {
                                cvv = value;
                              },
                            );
                          },
                          focusNode: _focusNode,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const ApplyButton(),
        ],
      ),
    );
  }
}
