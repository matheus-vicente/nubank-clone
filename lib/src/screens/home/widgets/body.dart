import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nubank_clone/src/style/colors.dart';
import 'package:nubank_clone/src/widgets/box.dart';
import 'package:nubank_clone/src/widgets/button.dart';
import 'package:nubank_clone/src/widgets/app_image_card.dart';
import 'package:nubank_clone/src/widgets/card_button.dart';
import 'package:nubank_clone/src/widgets/label_button.dart';
import 'package:nubank_clone/src/widgets/rounded_rectangle_border_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.fromLTRB(20, 20, 20, 16),
                ),
                overlayColor: MaterialStateProperty.all<Color>(
                  AppColors.grey,
                ),
                surfaceTintColor: MaterialStateProperty.all<Color>(
                  AppColors.grey,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Conta',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      'R\$ 100,00',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  LabelButton(
                    onPressed: () {},
                    icon: Icons.pix,
                    label: "??rea Pix",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: BootstrapIcons.upc,
                    label: "Pagar",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: FontAwesomeIcons.handHoldingDollar,
                    label: "Pegar emprestado",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: FontAwesomeIcons.moneyBillTransfer,
                    label: "Transferir",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: FontAwesomeIcons.moneyBillTrendUp,
                    label: "Depositar",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: BootstrapIcons.phone,
                    label: "Recarga de celular",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: FontAwesomeIcons.commentsDollar,
                    label: "Cobrar",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: FontAwesomeIcons.heart,
                    label: "Doa????o",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: BootstrapIcons.globe2,
                    label: "Transferir Internac.",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: FontAwesomeIcons.signal,
                    label: "Investir",
                  ),
                  LabelButton(
                    onPressed: () {},
                    icon: BootstrapIcons.cash_coin,
                    label: "Caixinhas",
                  ),
                ],
              ),
            ),
            Box(
              child: RoundedRectangleBorderButton(
                onPressed: () {},
                label: "Meus cart??es",
                icon: BootstrapIcons.credit_card,
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: CardButton(
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Dinheiro extra no fim de Ano?"),
                          Text(
                            "Guarde nas Caixinhas.",
                            style: TextStyle(
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: CardButton(
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text("Voc?? tem at?? "),
                              Text(
                                "R\$ 40.000,00",
                                style: TextStyle(
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                          const Text("dispon??veis para empr??stimo."),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: CardButton(
                      onPressed: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Convide amigos para o Nubank",
                            style: TextStyle(
                              color: AppColors.primary,
                            ),
                          ),
                          const Text("e desbloqueie bras??es incr??veis."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Divider(
            height: 2,
            thickness: 2,
            color: AppColors.grey,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.fromLTRB(20, 20, 20, 16),
            ),
            overlayColor: MaterialStateProperty.all<Color>(
              AppColors.grey,
            ),
            surfaceTintColor: MaterialStateProperty.all<Color>(
              AppColors.grey,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cart??o de cr??dito',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: AppColors.black,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fatura atual",
                  style: TextStyle(
                    color: AppColors.grey100,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                alignment: Alignment.centerLeft,
                child: Text(
                  "R\$ 890,00",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Limite dispon??vel de R\$ 2.110,00",
                  style: TextStyle(
                    color: AppColors.grey100,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                alignment: Alignment.centerLeft,
                child: Button(
                  onPressed: () {},
                  variant: Variants.secondary,
                  text: "Parcelar compras",
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 2,
          thickness: 2,
          color: AppColors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 4, bottom: 16),
                child: Text(
                  "Acompanhe tamb??m",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              RoundedRectangleBorderButton(
                icon: FontAwesomeIcons.circleDollarToSlot,
                label: "Assistente de pagamentos",
                onPressed: () {},
              )
            ],
          ),
        ),
        Divider(
          height: 2,
          thickness: 2,
          color: AppColors.grey,
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.fromLTRB(20, 20, 20, 16),
            ),
            overlayColor: MaterialStateProperty.all<Color>(
              AppColors.grey,
            ),
            surfaceTintColor: MaterialStateProperty.all<Color>(
              AppColors.grey,
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Empr??stimo',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.chevron_right_outlined,
                    color: AppColors.black,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Valor dispon??vel de at??",
                  style: TextStyle(
                    color: AppColors.grey100,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                alignment: Alignment.centerLeft,
                child: Text(
                  "R\$ 60.000,00",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                alignment: Alignment.centerLeft,
                child: Button(
                  text: "Simular agora",
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        Divider(
          height: 2,
          thickness: 2,
          color: AppColors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Descubra mais",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AppImageCard(
                      image: Image.asset(
                        "assets/images/descubra_mais.jpg",
                      ),
                      title: "Seguro de vida",
                      text:
                          "Cuide de quem voc?? ama de um jeito simples e que cabe no seu bolso.",
                      buttonTitle: "Conhecer",
                    ),
                    AppImageCard(
                      image: Image.asset(
                        "assets/images/descubra_mais.jpg",
                      ),
                      title: "Nubank Celular Seguro",
                      text: "100% cobertura, 0% estresse. Simule agora mesmo",
                      buttonTitle: "Conhecer",
                    ),
                    AppImageCard(
                      image: Image.asset(
                        "assets/images/descubra_mais.jpg",
                      ),
                      title: "Caixinhas do Nubank",
                      text:
                          "Uma nova forma de guardar dinheiro para seus objetivos.",
                      buttonTitle: "Saiba mais",
                    ),
                    AppImageCard(
                      image: Image.asset(
                        "assets/images/descubra_mais.jpg",
                      ),
                      title: "Indique o Nu para amigos",
                      text: "Espalhe como ?? simples estar no controle.",
                      buttonTitle: "Indicar amigos",
                    ),
                    AppImageCard(
                      image: Image.asset(
                        "assets/images/descubra_mais.jpg",
                      ),
                      title: "Portabilidade de sal??rio",
                      text: "Liberdade ?? escolher onde guardar o seu dinheiro.",
                      buttonTitle: "Conhecer",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
