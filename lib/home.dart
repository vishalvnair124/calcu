// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:calcu/timecal.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FrameTimeCalculator extends StatefulWidget {
  const FrameTimeCalculator({Key? key}) : super(key: key);

  @override
  _FrameTimeCalculatorState createState() => _FrameTimeCalculatorState();
}

class _FrameTimeCalculatorState extends State<FrameTimeCalculator> {
  final _framesController = TextEditingController();
  final _timeController = TextEditingController();

  String _estimatedTime = '';
  String _totalTimeTaken = '';
  String _pretime = '';



  @override
  void dispose() {
    _framesController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  void _calculateTime() {
    final frames = int.tryParse(_framesController.text) ?? 0;
    final timePerFrame = int.tryParse(_timeController.text) ?? 0;
    final totalSeconds = frames * timePerFrame;
    final now = DateTime.now();
    final completionTime = now.add(Duration(seconds: totalSeconds));
    final formattedTime =
        DateFormat('dd/MM/yyyy hh:mm:ss').format(completionTime);
    final totalTimeTaken = _formatDuration(Duration(seconds: totalSeconds));
    final pretime = DateFormat('dd/MM/yyyy hh:mm:ss').format(now);

    setState(() {
      _pretime = 'Current Time: \n$pretime';
      _estimatedTime = 'Estimated completion time \n$formattedTime';
      _totalTimeTaken = 'Aproximate time of finish\n$totalTimeTaken';
    });
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
              colors: const [
                Color.fromARGB(255, 109, 71, 182),
                Color.fromARGB(255, 28, 108, 179),
              ],
            ),
                image: DecorationImage(
                    image: AssetImage("assets/images/blender.png"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                     style: TextStyle(color: Colors.white),
                     
                    cursorColor: Colors.white,
                    controller: _framesController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0)),
                        labelText: 'Number of Frames',
                        labelStyle: TextStyle(color: Colors.white)
                        
                        ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    controller: _timeController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0)),
                        labelText: 'Time Taken for One Frame (in seconds)',
                        labelStyle: TextStyle(color: Colors.white) 
                        ),
                        
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Container(
                        width: 175,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 1),
                            gradient: LinearGradient(colors: const [
                                 Color.fromARGB(255, 28, 108, 179),
                              Color.fromARGB(255, 109, 71, 182),
                          
                            ]),
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle),
                        child: ElevatedButton(
                          onPressed: _calculateTime,
                          style: ElevatedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: Text('calculate'),
                        ),
                      ),
                      SizedBox(width: 115,),
                       Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 1),
                        gradient: LinearGradient(colors: const [
                          Color.fromARGB(255, 28, 108, 179),
                          Color.fromARGB(255, 109, 71, 182),
                         
                        ]),
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle),
                    child: ElevatedButton(
                      onPressed: (()async {
                        final newvalue=
                       await Navigator.of(context).push(MaterialPageRoute(builder: (context) => timecal()));
                      
                       _timeController.text=newvalue.toString();
                      
                      }),
                      style: ElevatedButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent),
                      child: Text('covert'),
                    ),
                  ),
                    ],
                  ),
                   if (_pretime.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    Text(
                      _pretime,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 168, 188, 223)),
                    ),
                  ],
                   if (_totalTimeTaken.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    Text(
                      _totalTimeTaken,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 168, 188, 223)),
                    ),
                  ],
                  if (_estimatedTime.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    Text(
                      _estimatedTime,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 168, 188, 223)),
                    ),
                  ],
                 
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
