import 'package:flutter/material.dart';
import 'mockData/job_data.dart';
import 'components/job_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Jobs"),
        ),

        body: ListView.builder(
          itemCount: jobs.length,

          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),

              child: SizedBox(
                height: 220,

                child: JobCard(
                  job: jobs[index],

                  isApplied: false,

                  onApply: () {
                    debugPrint(
                      "Applied to ${jobs[index].title}",
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



