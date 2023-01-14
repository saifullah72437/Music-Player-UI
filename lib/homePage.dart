import 'package:flutter/material.dart';
import 'package:media_player/utils/customContainer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
body: SafeArea(
  child:   Padding(
    padding:const EdgeInsets.symmetric(horizontal: 25.0),
    child: SingleChildScrollView(
      child: Column(
        children: [

          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:const [

              SizedBox(
                height: 60,
                width: 60,
                child: CustomContainer(child: Icon(Icons.arrow_back,)),
              ),
              Text('P L A Y L I S T'),
              SizedBox(
                height: 60,
                width: 60,
                child: CustomContainer(child: Icon(Icons.menu,)),
              ),
            ],
          ),
          const SizedBox(height: 25,),
          CustomContainer(child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('lib/images/cover_art.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rap Songs - 3',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Saifullah Khan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 32,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              CustomContainer(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.8,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),

              const SizedBox(height: 30),
              SizedBox(
                height: 80,
                child: Row(
                  children: const [
                    Expanded(
                      child: CustomContainer(
                          child: Icon(
                            Icons.skip_previous,
                            size: 32,
                          )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: CustomContainer(
                            child: Icon(
                              Icons.play_arrow,
                              size: 32,
                            )),
                      ),
                    ),
                    Expanded(
                      child: CustomContainer(
                          child: Icon(
                            Icons.skip_next,
                            size: 32,
                          )),
                    ),
                  ],
                ),
              )

            ],
          ),)

        ],
      ),
    ),
  ),
),

    );
  }
}
