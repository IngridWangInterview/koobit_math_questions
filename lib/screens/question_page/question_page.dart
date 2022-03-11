import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:auto_size_text/auto_size_text.dart';

import '../../core/models/answer/answer.dart';
import '../../core/quiz_service.dart';
import 'bloc/question_cubit.dart';
import 'bloc/question_state.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocProvider(
          create: (context) => QuestionCubit(context.read<QuizService>()),
          child: const SafeArea(child: _QuestionsView()),
        ),
      ),
    );
  }
}

class _QuestionsView extends StatelessWidget {
  const _QuestionsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionCubit, QuestionState>(
      buildWhen: (p, c) => p.status != c.status,
      builder: (context, state) {
        switch (state.status) {
          case QuestionStatus.initial:
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                const Text(
                  '歡迎來玩數學',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                  ),
                  onPressed: () => context.read<QuestionCubit>().getQuestions(),
                  child:
                      const Text('開始作答', style: TextStyle(color: Colors.white)),
                ),
                const Spacer(),
              ],
            );
          case QuestionStatus.loadingQuestions:
          case QuestionStatus.summiting:
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('載入答案'),
                CircularProgressIndicator(),
              ],
            ));
          case QuestionStatus.result:
            return _Result(answers: state.answers);
          default:
            return const _QuestionView();
        }
      },
    );
  }
}

class _Result extends StatelessWidget {
  final List<Answer> answers;

  const _Result({
    Key? key,
    required this.answers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 10.0),
        Text(
          '答對：${answers.where((a) => a.correct).length} 題',
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
        ),
        const ListTile(
          leading: Icon(
            Icons.analytics,
            color: Colors.deepPurple,
          ),
          title: Text(
            '題目',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          ),
          trailing: Text(
            '答案',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: answers.length,
              itemBuilder: (context, index) {
                final answer = answers[index];
                return ListTile(
                  title: Text(
                    answer.question.question,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20.0),
                  ),
                  trailing: Column(
                    children: [
                      Text(
                        answer.answer,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20.0),
                      ),
                      const SizedBox(height: 14.0),
                    ],
                  ),
                  subtitle: Text(
                    '你的答案：${answer.userAnswer}',
                    style: const TextStyle(fontSize: 14.0),
                  ),
                  leading: answer.correct
                      ? const Icon(
                          Icons.done,
                          color: Colors.blue,
                        )
                      : const Icon(
                          Icons.error_outlined,
                          color: Colors.red,
                        ),
                );
              }),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
          ),
          onPressed: () => context.read<QuestionCubit>().restart(),
          child: const Text('重玩', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}

class _QuestionView extends StatelessWidget {
  const _QuestionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionCubit, QuestionState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('題目：'),
                    Text(
                        '${(state.currentQuestionIndex + 1)} / ${state.questions.length}'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('難度：'),
                    Text(state.getCurrentQuestion().difficulty.toString()),
                    const SizedBox(width: 5.0),
                    const Text('題目序號：'),
                    Text(state.getCurrentQuestion().id.toString()),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        state.getCurrentQuestion().question,
                        style: const TextStyle(fontSize: 30),
                        minFontSize: 18,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(width: 5.0),
                      const AutoSizeText(
                        '=',
                        style: TextStyle(fontSize: 30),
                        minFontSize: 18,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(width: 5.0),
                    ],
                  ),
                ),
                Flexible(
                  child: _AnswerInput(),
                ),
              ],
            ),
            state.questions.length == state.currentQuestionIndex + 1
                ? ElevatedButton(
                    onPressed: state.usrAnswer.pure || state.usrAnswer.invalid
                        ? null
                        : () => context.read<QuestionCubit>().summitQuestions(),
                    child: const Text('送出全部作答'))
                : ElevatedButton(
                    onPressed: state.usrAnswer.pure || state.usrAnswer.invalid
                        ? null
                        : () => context.read<QuestionCubit>().nextQuestion(),
                    child: const Text('提交答案，下一題')),
            state.currentQuestionIndex == 0
                ? const SizedBox()
                : ElevatedButton(
                    onPressed: () =>
                        context.read<QuestionCubit>().previousQuestions(),
                    child: const Text('修改上一題',
                        style: TextStyle(color: Colors.white))),
          ],
        );
      },
    );
  }
}

class _AnswerInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionCubit, QuestionState>(
      buildWhen: (previous, current) => previous.usrAnswer != current.usrAnswer,
      builder: (context, state) {
        return TextFormField(
          initialValue: state.getCurrentUsrAnswer()?.answer,
          autofocus: true,
          key: Key('answerInput_textField${state.currentQuestionIndex}'),
          onChanged: (usrAnswer) =>
              context.read<QuestionCubit>().answerChanged(usrAnswer),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            labelText: '答案',
            helperText: '',
            errorText: state.usrAnswer.invalid ? '請填寫' : null,
          ),
        );
      },
    );
  }
}
