import 'package:flutter/material.dart';
import 'package:flutter_outlined_button/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Default
            BorderButton(
              margin: const EdgeInsets.all(12),
              text: "Default",
              onClick: () {},
            ),
            const BorderButton(
              margin: EdgeInsets.all(12),
              text: "Default",
            ),
            //ExpendedIcon
            BorderButton(
              width: 200,
              expended: true,
              borderRadius: 25,
              borderSize: 2,
              margin: const EdgeInsets.all(12),
              iconPadding: const EdgeInsets.only(left: 16),
              textState: (state) {
                if (state == ButtonState.disabled) {
                  return "Disabled";
                } else {
                  return "Enabled";
                }
              },
              iconState: (state) {
                if (state == ButtonState.disabled) {
                  return Icons.nearby_error;
                } else {
                  return Icons.nearby_off;
                }
              },
              colorState: (state) {
                if (state == ButtonState.disabled) {
                  return Colors.red.shade200;
                } else {
                  return Colors.amber;
                }
              },
              borderColorState: (state) {
                if (state == ButtonState.disabled) {
                  return Colors.red.shade50;
                } else {
                  return Colors.amber;
                }
              },
              onClick: () {},
            ),
            BorderButton(
              width: 200,
              expended: true,
              borderRadius: 25,
              borderSize: 2,
              margin: const EdgeInsets.all(12),
              iconPadding: const EdgeInsets.only(left: 16),
              textState: (state) {
                if (state == ButtonState.disabled) {
                  return "Disabled";
                } else {
                  return "Enabled";
                }
              },
              iconState: (state) {
                if (state == ButtonState.disabled) {
                  return Icons.nearby_error;
                } else {
                  return Icons.nearby_off;
                }
              },
              colorState: (state) {
                if (state == ButtonState.disabled) {
                  return Colors.red.shade200;
                } else {
                  return Colors.amber;
                }
              },
              borderColorState: (state) {
                if (state == ButtonState.disabled) {
                  return Colors.red.shade50;
                } else {
                  return Colors.amber;
                }
              },
            ),
            //WithoutExpendedIcon
            SizedBox(
              width: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderButton(
                    iconSize: 40,
                    borderRadius: 24,
                    borderSize: 5,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(16),
                    iconState: (state) {
                      if (state == ButtonState.disabled) {
                        return Icons.near_me_disabled;
                      } else {
                        return Icons.near_me;
                      }
                    },
                    colorState: (state) {
                      if (state == ButtonState.disabled) {
                        return Colors.red.shade200;
                      } else {
                        return Colors.amber;
                      }
                    },
                    borderColorState: (state) {
                      if (state == ButtonState.disabled) {
                        return Colors.red.shade50;
                      } else {
                        return Colors.amber.withOpacity(0.2);
                      }
                    },
                    onClick: () {},
                  ),
                  BorderButton(
                    iconSize: 40,
                    borderRadius: 24,
                    borderSize: 5,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(16),
                    iconState: (state) {
                      if (state == ButtonState.disabled) {
                        return Icons.near_me_disabled;
                      } else {
                        return Icons.near_me;
                      }
                    },
                    colorState: (state) {
                      if (state == ButtonState.disabled) {
                        return Colors.red.shade200;
                      } else {
                        return Colors.amber;
                      }
                    },
                    borderColorState: (state) {
                      if (state == ButtonState.disabled) {
                        return Colors.red.shade50;
                      } else {
                        return Colors.amber.withOpacity(0.2);
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
