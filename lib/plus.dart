import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Plus extends StatefulWidget {
  @override
  State<Plus> createState() => _PlusState();
}

class _PlusState extends State<Plus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "سؤال جواب ",
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
                  title: '''كيفاش دايرة الخنشة؟''',
                  content:
                      '''الخنشة كاتشبه لفم وردي صغير. يكون لون المصران  نفس لون بطانة الفم'''),
              GFAccordion(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  collapsedIcon: Icon(Icons.add),
                  expandedIcon: Icon(Icons.minimize),
                  title: ''' انا جنب  غادي تكون الخنشة؟''',
                  content:
                      '''غالبًا على اليسار الى كان القولون او المصران الغليض وعلى اليمين في حالة المصران الرقيق. ومع ذلك  فإن الجراح  هو الذي يقرر الموقع على حساب العملية. '''),
              GFAccordion(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: '''هل وجود الخنشة كاتسبب الالم؟''',
                content:
                    '''لا. الأمعاء عضو غير حساس. ولكن إلا جاك الألم، يجب عليك استشارة  طبيبك.''',
              ),
              GFAccordion(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: '''واش خاصني نوقف من الخدمة ؟''',
                content:
                    '''في البداية ، نعم ، هذا طبيعي تمامًا بعد الجراحة. بعد عدة أسابيع وبموافقة الجراح ، يمكنلك استئناف الخدمة.''',
              ),
              GFAccordion(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: '''هل يمكنني ممارسة  الرياضة مرة أخرى؟''',
                content:
                    '''لا توجد رياضة ممنوعة . لا توجد مشكلة في ممارسة الأنشطة مثل الركض وركوب الدراجات . ولكن خاص تبعد على ممارسة الرياضات القتالية و الحذر حتى ماتقيصش الخنشة او يجيك فتق''',
              ),
              GFAccordion(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title:
                    '''شنو غادي يتغير في حياتي اليومية (فيما يتعلق بحياة عائلتي ، هواياتي ، وجبات ، عملي)؟''',
                content:
                    '''غادي تحتاج فترة باش تولف من بعد ممكن تعيش الحياة اليومية والمهنية العادية.''',
              ),
              GFAccordion(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize),
                title: ''' واش خاص نبدل ملابسي بعد العملية؟
''',
                content:
                    '''لا  يمكنلك تلبس الملابس كما كان من قبل ، غير حضي مع اللباس لي يقد يزير على الخنشة بالحزام ولا اللباس مزير بزاف''',
              ),
            ],
          ),
        ));
  }
}
