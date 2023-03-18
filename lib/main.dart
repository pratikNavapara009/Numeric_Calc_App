import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calc(),
    ),
  );
}

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  int pratik = 0;

  @override
  Widget build(BuildContext context) {
    var P = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calc",
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu, size: 35),
        elevation: 5,
        backgroundColor: Color(0xff54759E),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$pratik",
              style: TextStyle(fontSize: 100, color: Colors.grey),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        setState(() {
                          pratik -= 2;
                        });
                      },
                      child: Container(
                        width: P.width * 0.4,
                        height: P.height * 0.09,
                        decoration: BoxDecoration(
                          color: Color(0xff54759E),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "- 2",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        setState(() {
                          pratik += 2;
                        });
                      },
                      child: Container(
                        width: P.width * 0.4,
                        height: P.height * 0.09,
                        decoration: BoxDecoration(
                          color: Color(0xff54759E),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "+ 2",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        setState(() {
                          pratik -= 4;
                        });
                      },
                      child: Container(
                        width: 160,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xff54759E),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "- 4",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        setState(() {
                          pratik += 4;
                        });
                      },
                      child: Container(
                        width: P.width * 0.4,
                        height: P.height * 0.09,
                        decoration: BoxDecoration(
                          color: Color(0xff54759E),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "+ 4",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                InkWell(
                  splashColor: Colors.black,
                  onTap: () {
                    setState(() {
                      pratik = 0;
                    });
                  },
                  child: Container(
                    width: P.width * 0.5,
                    height: P.height * 0.09,
                    decoration: BoxDecoration(
                      color: Color(0xff54759E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "Clear",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
