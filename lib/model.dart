class model {
  final String quistion;
  final bool istrue;
  final String solve;

  model(this.quistion, this.istrue, this.solve);
}

List<model> list = [
  model(
      "ليلة الإسراء إمتطى النبي محمد صلى الله عليه وسلم دابة مجنحة أسمها البراق",
      true,
      "النص صحيح راجع معلوماتك"),
  model(
      "المرأة التي سباها النبي صلى الله عليه وسلم في خيبر ثم تزوجها صفية بنت حيي رضي الله عنها",
      true,
      "النص صحيح راجع معلوماتك"),
  model(
      "اسم الصحابي الذي كان أول من أمّ المسلمين في صلاتهم بالمدينة ورقة بن نوفل",
      false,
      " الصحابي الذي كان أول من أمّ المسلمين في صلاتهم بالمدينة هو مصعب بن عمير"),
  model(" عدد مرات التي ورد فيها ذكر  النار في المصحف الشريف 126 مرة", true,
      "النص صحيح راجع معلوماتك"),
  model("عدد المرات التي ورد فيها ذكر  الجنة  في المصحف الشريف 100 مرة", false,
      "عدد المرات التى ورد فيها ذكر الجنة فى المصحف الشريف 144  مرة"),
  model("الذين يباح لهم الفطر في رمضان هو المريض الذي يتضرر بالصوم.", true,
      "النص صحيح راجع معلوماتك"),
  model("حكم السحور لمن أراد الصيام واجب", false,
      "حكم السحور لمن أراد الصيام سنة مستحبة وليس واجب"),
  model(
      "حكم استعمال المسواك في نهار رمضان سنة", true, "النص صحيح راجع معلوماتك"),
  model("حكم بخاخ الربو للصائم لا تفطر", true, "النص صحيح راجع معلوماتك"),
  model("حكم المراهم للصائم تفطر", false, "حكم المراهم للصائم لاتفطر"),
  model("حكم الحقنة الشرجية للصائم اذا كانت دواء لا غذاء تفطر", false,
      "الحقنة الشرجية يدخل بها الماء إلى الجوف ، ولكن لا يصل إلى المعدة  فلا تفطر"),
  model("حكم الاعتكاف سنة", true, "النص صحيح راجع معلوماتك"),
  model("لقيام الليل عدد معين من الركعات", false,
      "لا يوجد عدد معين لصلاة قيام الليل، فتجوز بالركعات الكثيرة والركعات القليلة، والأفضل هو ما ثبت عن الرسول - عليه الصلاة والسلام- حيثُ لم يكن يزيد في عدد ركعات قيام الليل عن إحدى عشرَة ركعة"),
  model("يُقبل الصوم ممن عليه قضاء من العام الماضي", true,
      "النص صحيح راجع معلوماتك"),
  model("العطر في نهار رمضان لايجوز شرعا", false,
      "يجوز شرعًا للصائم أن يتطيب فى نهار رمضان، ولا حرج عليه فى ذلك، مع مراعاة ألَّا يصل شيء من الطيب إلى جوفه"),
  model(
      "يجوز للصائم أن يغسل أسنانه بالماء والمعجون أثناء الصيام حتى وإن دخل شيئ الى الجوف عمداً",
      false,
      "يجـوز استعمال الماء والمعجون في تنظيف الأسنان في نهار الصيام ما لم يدخل من ذلك شيء إلى الجوف"),
  model(
      "حكم الكريم المرطب المغذي للجلد والزيت المغذي للشعر في أثناء الصيام لا تُفطر؛ لأنها لا تصل إلى الجسم من منفذٍ مفتوح",
      true,
      "النص صحيح راجع معلوماتك"),
  model("حكم قضاء الصوم عن المتوفى حرام", false,
      "يجوز لوليّه أن يصوم عنه او إطعام المساكين"),
  model("من نام أكثر اليوم في نهار رمضان لا يبطل صومة", true,
      "النص صحيح راجع معلوماتك"),
  model("البخاخة لمرضى الربو الشعبي وحساسية الصدر مُفطرة للصائم", true,
      "النص صحيح راجع معلوماتك"),
  model(
      "حقن الأنسولين خلال الصوم لايفسد الصوم", true, "النص صحيح راجع معلوماتك"),
  model("اليوم الذي خُلق فيه سيدنا آدم ـ عليه السلام يوم السبت", false,
      "اليوم الذي خُلق فيه سيدنا آدم ـ عليه السلام يوم يوم الجمعة"),
  model("يحتوي القرآن الكريم على (علامة السجدة) في عدة مواضععددها 15 سجدة",
      true, "النص صحيح راجع معلوماتك"),
  model("بعض فرض الصلوات الخمس، أول صلاة أداها سيدنا محمد هي صلاة العصر", false,
      "بعض فرض الصلوات الخمس، أول صلاة أداها سيدنا محمد هي صلاة الظهر"),
  model(
      "أنواع الحشرات التي قد أوصانا رسول الله بقتلها حين رؤيتها هي الوزغ (البُرص)",
      true,
      "النص صحيح راجع معلوماتك"),
  model(
      "عندما خرج رسول الله ـ صلَّ الله عليه وسلم ـ من مكة كان بصحبة أبو بكر الصديق، ولكن في الهجرة الأولى إلى الطائف  كان برفقته عثمان بن عفان",
      false,
      "ندما خرج رسول الله ـ صلَّ الله عليه وسلم ـ من مكة كان بصحبة أبو بكر الصديق، ولكن في الهجرة الأولى إلى الطائف  كان برفقته زيد بن ثابت"),
  model(
      "في بعض السور القرآنية ، قد نجد سجدة واحدة بها، ولكن هناك سورة تحتوي على سجدتين  هي سورة الحج",
      true,
      "النص صحيح راجع معلوماتك"),
  model("السورة التي لقبت بعروس القرآن الكريم سورة الرحمن", true,
      "النص صحيح راجع معلوماتك"),
  model(
      "الصلاة التي يقوم فيها المصلين بالركوع أربعاً والسجود أربعاً هى العصر المغرب",
      false,
      "الصلاة التي يقوم فيها المصلين بالركوع أربعاً والسجود أربعاًهى الخسوف والكسوف"),
  model("الأداة التي استعان بها قابيل في قتل أخيه هابيل  فك حمار", true,
      "النص صحيح راجع معلوماتك"),
  model(
      "الذين قال فيهم القرآن الخراصون؟ هم الأشخاص الكذابون، الذي يكذبون كذباً ناجماً عن تخميناتهم",
      true,
      "النص صحيح راجع معلوماتك"),
  model("اسم الدابة التي امتطاها رسول الله ليلة الاسراء هى دابة البراق المجنحة",
      true, "النص صحيح راجع معلوماتك"),
  model("سورة قرآنية يطلقون عليها اسم عروس القرآن هى سورة القيامه", false,
      "سورة قرآنية يطلقون عليها اسم عروس القرآن هى سورة الرحمن"),
  model(
      "اسم الدليل الذي كان يرشد الرسول وصاحبه أبو بكر أثناء الهجرة هو اليهودي عبد الله بن أريقط.",
      true,
      "النص صحيح راجع معلوماتك"),
  model("اسم أول قبيلة يهودية نقضت عهدها مع الرسول هى قبيلة كنعان", false,
      "اسم أول قبيلة يهودية نقضت عهدها مع الرسول هى قبيلة يهود بني قينقاع"),
  model(
      "الصحابى الذى أسلم يوم الفتح، وحسن إسلامه وشهد غزوة حنين، توفي من الطاعون سنة ثماني عشرة، وهو أحد الأمراء العرب الذين ندبهم أبو بكر لغزو الروم هو الصحابى عمرو بن العاص",
      false,
      "إسم الصحابى هو يزيد بن أبي سفيان وليس عمرو بن العاص"),
];