import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Plusplus extends StatefulWidget {
  @override
  State<Plusplus> createState() => _PlusState();
}

class _PlusState extends State<Plusplus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "أكثر",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications,
                size: 28,
                color: Color(0xFFf4896f),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GFAccordion(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: '''ماذا يجب ان تعرف بعد العملية''',
                content:
                    '''يمكن أن تكون األيام التالية للجراحة صعبة. عندك من هاد نهار خنشة مربوطة فبطنك وحوايج جديدة خاص تتعلمها. تذكر أن الولف يقد ياخد وقت ولكنه سيتحسن يوًما بعد يوم.''',
              ),
              GFAccordion(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  collapsedIcon: Icon(Icons.add),
                  expandedIcon: Icon(Icons.minimize),
                  title: '''كيفاش تبدل الخنشة؟''',
                  content:
                      '''من الضروري أن تكون مستعد جيد قبل تغيير أو تفريغ الخنشة'''),
              GFAccordion(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  collapsedIcon: Icon(Icons.add),
                  expandedIcon: Icon(Icons.minimize),
                  title: ''' المضاعفات الجلدية ؟''',
                  content:
                      ''' الجلد لي ضاير بالخنشة هو منطقة كتسهل تكاثر بعض الطفيليات ظهورها كيستدعي استشارة الطبيب لبذء العالج، اما الوقاية عن طريق تنظيف الخنشة و التنشاف ديالها مزيان. ظهور نزيف نزيف خفيف لي المصدر ديالو المصران غالب األحيان كيكون عادي بعكس نزيف لي بالجلد لي داير بيه لي كايحتاج استشارة اخصائي لمعرفة المصدر.'''),
              GFAccordion(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  collapsedIcon: Icon(Icons.add),
                  expandedIcon: Icon(Icons.minimize),
                  title: '''الفتق  ''',
                  content:
                      '''عندما يتم عمل الخنشة، يتم إخراج نهاية األمعاء من خالل فتحة في جدار البطن. يمكن أن يضعف هذا الشق عضالت جدار البطن. يمكن لألمعاء بعد ذلك أن تدفع لألمام وتشكل فتًقا.'''),
              GFAccordion(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  collapsedIcon: Icon(Icons.add),
                  expandedIcon: Icon(Icons.minimize),
                  title: '''انتفاخ الخنشة''',
                  content:
                      ''' نتحدث عن انتفاخ عندما يتراكم الهواء في جيب الخنشة ، عىل سبيل المثال الغازات التي ينتجها الجهاز الهضمي، يوصى بالحد من تناول المشروبات واألطعمة التي تولد الكثير من الغازات.'''),
              GFAccordion(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  collapsedIcon: Icon(Icons.add),
                  expandedIcon: Icon(Icons.minimize),
                  title: '''تدلي األمعاء عبر فتحة الخنشة  ''',
                  content:
                      '''تدلي األمعاء عبر فتحة الخنشة هو انزالق حلقة معوية خارج مكانها الطبيعي وهو من المضعفات المحتملة و التي تتطلب استشارة الطبيب.'''),
            ],
          ),
        ));
  }
}
