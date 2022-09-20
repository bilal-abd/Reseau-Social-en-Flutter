import 'package:flutter/material.dart';

class StatsLike extends StatefulWidget {
  const StatsLike({super.key});

  @override
  State<StatsLike> createState() => _StatsLikeState();
}

class _StatsLikeState extends State<StatsLike> {
  var bool_loading;
  var double_progressValue;
  final List<String> entries = <String>['Bilal', 'Alexandre', 'Chekir'];

  @override
  void initState() {
    super.initState();
    var _loading = false;
    var _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Mes Statitistiques'),
      )),
      body: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 50, top: 80)),
              Text('Nombre de likes de mes amis',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Padding(padding: EdgeInsets.only(left: 60)),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.black,
                    )),
              ),
            ],
          ),
          Divider(
            color: Color.fromARGB(255, 201, 199, 199),
            height: 25,
            indent: 48,
            endIndent: 48,
            thickness: 1,
          ),
          ListView.builder(
            itemCount: entries.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xFFE0E0E0),
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            top: 40, left: 10, bottom: 20, right: 15)),
                    Text(
                      'Gautier',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Spacer(),
                    Text('15',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Spacer(),
                    Container(
                      width: 240,
                      height: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          backgroundColor: Color.fromARGB(255, 201, 198, 198),
                          color: Colors.grey,
                          value: 0.90,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.orange),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
