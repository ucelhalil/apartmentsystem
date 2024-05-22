enum UserPlan {
  free(2, 5),
  premium(5, 25),
  professional(10, 50),
  enterprise(40, 200),
  ;

  Map<String, dynamic> get json => {
        'apartment': apartment,
        'flat': flat,
      };

  final int apartment;
  final int flat;
  const UserPlan(this.apartment, this.flat);
}
