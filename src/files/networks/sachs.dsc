belief network "unknown"
node Akt {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node Erk {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node Jnk {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node Mek {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node P38 {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node PIP2 {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node PIP3 {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node PKA {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node PKC {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node Plcg {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
node Raf {
  type : discrete [ 3 ] = { "LOW", "AVG", "HIGH" };
}
probability ( Akt | Erk, PKA ) {
  (0, 0) : 0.6721176592, 0.3277794919, 0.0001028489;
  (1, 0) : 0.3349505840, 0.6648697215, 0.0001796945;
  (2, 0) : 7.682262e-05, 1.183068e-01, 8.816163e-01;
  (0, 1) : 0.62038586, 0.37950262, 0.00011152;
  (1, 1) : 0.8214081840, 0.1782019687, 0.0003898473;
  (2, 1) : 0.177105936, 0.813732581, 0.009161483;
  (0, 2) : 0.9750859107, 0.0240549828, 0.0008591065;
  (1, 2) : 9.483619e-01, 5.154733e-02, 9.075234e-05;
  (2, 2) : 0.1703412073, 0.8293963255, 0.0002624672;
}
probability ( Erk | Mek, PKA ) {
  (0, 0) : 0.85051343, 0.13872433, 0.01076224;
  (1, 0) : 0.3870326, 0.4836913, 0.1292761;
  (2, 0) : 0.008682883, 0.187958884, 0.803358233;
  (0, 1) : 0.1177122, 0.6919357, 0.1903521;
  (1, 1) : 0.04895789, 0.72823961, 0.22280250;
  (2, 1) : 0.001153403, 0.748558247, 0.250288351;
  (0, 2) : 0.07405991, 0.70044614, 0.22549395;
  (1, 2) : 0.003663004, 0.102564103, 0.893772894;
  (2, 2) : 0.03333333, 0.03333333, 0.93333333;
}
probability ( Jnk | PKA, PKC ) {
  (0, 0) : 0.2899262, 0.2457641, 0.4643097;
  (1, 0) : 5.766701e-01, 4.232872e-01, 4.271314e-05;
  (2, 0) : 9.961240e-01, 3.806755e-03, 6.921373e-05;
  (0, 1) : 0.5794436587, 0.4203206035, 0.0002357379;
  (1, 1) : 6.129037e-01, 3.870808e-01, 1.543138e-05;
  (2, 1) : 0.8623005877, 0.1368597817, 0.0008396306;
  (0, 2) : 0.00456621, 0.99086758, 0.00456621;
  (1, 2) : 0.04468980, 0.93495569, 0.02035451;
  (2, 2) : 0.155367232, 0.841807910, 0.002824859;
}
probability ( Mek | PKA, PKC, Raf ) {
  (0, 0, 0) : 0.7451772095, 0.2545984747, 0.0002243158;
  (1, 0, 0) : 7.576915e-01, 2.422767e-01, 3.181572e-05;
  (2, 0, 0) : 9.977281e-01, 2.244485e-03, 2.737176e-05;
  (0, 1, 0) : 0.7066581578, 0.2931291215, 0.0002127207;
  (1, 1, 0) : 7.148153e-01, 2.851753e-01, 9.338376e-06;
  (2, 1, 0) : 0.9689835575, 0.0306427504, 0.0003736921;
  (0, 2, 0) : 0.854385965, 0.143859649, 0.001754386;
  (1, 2, 0) : 8.256463e-01, 1.743254e-01, 2.831337e-05;
  (2, 2, 0) : 0.725950783, 0.272930649, 0.001118568;
  (0, 0, 1) : 0.3846008, 0.1231368, 0.4922624;
  (1, 0, 1) : 0.343172087, 0.649403298, 0.007424615;
  (2, 0, 1) : 0.9996370895, 0.0001814553, 0.0001814553;
  (0, 1, 1) : 0.2692763938, 0.7304863582, 0.0002372479;
  (1, 1, 1) : 0.27465766, 0.72002723, 0.00531511;
  (2, 1, 1) : 0.854385965, 0.143859649, 0.001754386;
  (0, 2, 1) : 0.01190476, 0.97619048, 0.01190476;
  (1, 2, 1) : 0.1054112554, 0.8943722944, 0.0002164502;
  (2, 2, 1) : 0.006060606, 0.987878788, 0.006060606;
  (0, 0, 2) : 0.262181426, 0.001450275, 0.736368299;
  (1, 0, 2) : 0.8652899, 0.1010029, 0.0337072;
  (2, 0, 2) : 0.9361046959, 0.0007698229, 0.0631254811;
  (0, 1, 2) : 0.85065617, 0.10656168, 0.04278215;
  (1, 1, 2) : 0.2814957, 0.5851161, 0.1333882;
  (2, 1, 2) : 0.498470948, 0.498470948, 0.003058104;
  (0, 2, 2) : 0.3333333, 0.3333333, 0.3333333;
  (1, 2, 2) : 0.3333333, 0.3333333, 0.3333333;
  (2, 2, 2) : 0.3333333, 0.3333333, 0.3333333;
}
probability ( P38 | PKA, PKC ) {
  (0, 0) : 0.30691159, 0.06458648, 0.62850193;
  (1, 0) : 0.919186742, 0.078464036, 0.002349223;
  (2, 0) : 0.80737818, 0.09163898, 0.10098283;
  (0, 1) : 0.6558227251, 0.3439415370, 0.0002357379;
  (1, 1) : 8.149777e-01, 1.850069e-01, 1.543138e-05;
  (2, 1) : 0.3862301, 0.1595298, 0.4542401;
  (0, 2) : 0.86757991, 0.12785388, 0.00456621;
  (1, 2) : 0.80313955, 0.19272946, 0.00413099;
  (2, 2) : 0.765536723, 0.231638418, 0.002824859;
}
probability ( PIP2 | PIP3, Plcg ) {
  (0, 0) : 9.967915e-01, 3.169817e-03, 3.865631e-05;
  (1, 0) : 9.867112e-01, 1.326991e-02, 1.887612e-05;
  (2, 0) : 0.872401162, 0.120070734, 0.007528104;
  (0, 1) : 0.997890295, 0.001054852, 0.001054852;
  (1, 1) : 0.9571651090, 0.0424454829, 0.0003894081;
  (2, 1) : 0.52180956, 0.46245517, 0.01573528;
  (0, 2) : 0.2218092, 0.4936493, 0.2845415;
  (1, 2) : 0.07672787, 0.39110315, 0.53216898;
  (2, 2) : 0.02641691, 0.05235351, 0.92122959;
}
probability ( PIP3 | Plcg ) {
  (0) : 0.2184310, 0.4473238, 0.3342453;
  (1) : 0.07796694, 0.21120158, 0.71083148;
  (2) : 0.4237055, 0.4396535, 0.1366411;
}
probability ( PKA | PKC ) {
  (0) : 0.3864255, 0.3794243, 0.2341501;
  (1) : 0.06039638, 0.92264651, 0.01695712;
  (2) : 0.01577014, 0.95873839, 0.02549147;
}
probability ( PKC ) {
   0.42313152, 0.48163920, 0.09522928;
}
probability ( Plcg ) {
   0.81213356, 0.08337962, 0.10448682;
}
probability ( Raf | PKA, PKC ) {
  (0, 0) : 0.06232176, 0.14724878, 0.79042946;
  (1, 0) : 0.4475056, 0.3125747, 0.2399197;
  (2, 0) : 0.84288483, 0.12714563, 0.02996955;
  (0, 1) : 0.3694012, 0.3312117, 0.2993871;
  (1, 1) : 0.55082326, 0.39291391, 0.05626283;
  (2, 1) : 0.74895046, 0.15952981, 0.09151973;
  (0, 2) : 0.86757991, 0.12785388, 0.00456621;
  (1, 2) : 8.842572e-01, 1.156677e-01, 7.510891e-05;
  (2, 2) : 0.841807910, 0.155367232, 0.002824859;
}