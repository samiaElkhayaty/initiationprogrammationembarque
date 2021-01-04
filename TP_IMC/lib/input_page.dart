import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'contenu_icon.dart';
import 'carte_reutilisable.dart';
import 'Constantes.dart';
import 'results_page.dart';
import 'bouton_inferieur.dart';
import 'bouton_arrondi_icone.dart';
import 'logique_imc.dart';

enum Genre {
  homme,
  femme,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genre selection;
  Color couleurCarteHomme = kcouleurContainerInactif;
  Color couleurCarteFemme = kcouleurContainerInactif;

  void updateCouleur(Genre selection) {
    if (selection == Genre.homme) {
      if (couleurCarteHomme == kcouleurContainerInactif)
        couleurCarteHomme = kcouleurContainerActif;
      couleurCarteFemme = kcouleurContainerInactif;
    } else {
      couleurCarteHomme = kcouleurContainerInactif;
    }

    if (selection == Genre.femme) {
      if (couleurCarteHomme == kcouleurContainerInactif)
        couleurCarteHomme = kcouleurContainerActif;
      couleurCarteFemme = kcouleurContainerInactif;
    } else {
      couleurCarteHomme = kcouleurContainerInactif;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selection = Genre.homme;
                      });
                    },
                    child: CarteReutilisable(
                      couleur: selection == Genre.homme
                          ? kcouleurContainerActif
                          : kcouleurContainerInactif,
                      cardChild: ContenuIcon(
                        icon: FontAwesomeIcons.mars,
                        label: 'Homme',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selection = Genre.femme;
                      });
                    },
                    child: CarteReutilisable(
                      couleur: selection == Genre.femme
                          ? kcouleurContainerActif
                          : kcouleurContainerInactif,
                      cardChild: ContenuIcon(
                        icon: FontAwesomeIcons.venus,
                        label: 'Femme',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CarteReutilisable(
              couleur: kcouleurContainerActif,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hauteur',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        kHauteur.toString(),
                        style: kNombreTextStyle,
                      ),
                      Text(
                        'cm',
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kSliderActif,
                        inactiveTickMarkColor: kSliderInactif,
                        thumbColor: kSliderActif,
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: kHauteur.toDouble(),
                        min: kHauteurMin,
                        max: kHauteurMax,
                        onChanged: (double nouvelleValeur) {
                          setState(() {
                            kHauteur = nouvelleValeur.toInt();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CarteReutilisable(
                    couleur: kcouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'kg',
                          style: klabelTextStyle,
                        ),
                        Text(
                          poids.toString(),
                          style: kNombreTextStyle,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              BoutonArrondiIcone(
                                icone: FontAwesomeIcons.minus,
                                appuye: () {
                                  setState(() {
                                    poids = poids - 0.5;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              BoutonArrondiIcone(
                                icone: FontAwesomeIcons.plus,
                                appuye: () {
                                  setState(() {
                                    poids = poids + 0.5;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CarteReutilisable(
                    couleur: kcouleurContainerActif,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          age.toString(),
                          style: kNombreTextStyle,
                        ),
                        Text(
                          'Age',
                          style: klabelTextStyle,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              BoutonArrondiIcone(
                                icone: FontAwesomeIcons.minus,
                                appuye: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              BoutonArrondiIcone(
                                icone: FontAwesomeIcons.plus,
                                appuye: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BoutonInferieur(
            titreBouton: 'Calculate',
            onAppui: () {
              LogiqueImc calc = LogiqueImc(hauteur: kHauteur, poids: poids);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    imcResultat: calc.calculIMC(),
                    textResultat: calc.getResultat(),
                    textInterpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
