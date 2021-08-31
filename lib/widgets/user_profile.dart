import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Настройки')),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            _AvatarWidget(),
            SizedBox(
              height: 30,
            ),
            _UsernameWidget(),
            SizedBox(
              height: 5,
            ),
            _PhoneNumberUserWidget(),
            SizedBox(
              height: 5,
            ),
            _NicknameUserWidget(),
            SizedBox(
              height: 30,
            ),
            _MenuBottom(),
          ],
        ),
      ),
    );
  }
}

class _MenuBottom extends StatefulWidget {
  const _MenuBottom({Key? key}) : super(key: key);

  @override
  __MenuBottomState createState() => __MenuBottomState();
}

class __MenuBottomState extends State<_MenuBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: null,
              child: const Text('Disabled'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Enabled'),
            ),
          ],
        ),
      ),
    );
  }
}

class _NicknameUserWidget extends StatelessWidget {
  const _NicknameUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ник пользователя',
      style: TextStyle(
          color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w400),
    );
  }
}

class _PhoneNumberUserWidget extends StatelessWidget {
  const _PhoneNumberUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Номер телефона пользователя',
      style: TextStyle(
          color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}

class _UsernameWidget extends StatelessWidget {
  const _UsernameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Имя пользователя',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
