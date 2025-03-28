INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'HAM-D', '헤밀턴 우울 검사', '', '{
  "questions": [
    {
      "id": 1,
      "text": "우울한 기분",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "물어보았을 때만 우울한 기분이라고 말한다", "score": 0},
        {"id": 3, "text": "자발적으로 우울한 기분이라고 말한다", "score": 0},
        {"id": 4, "text": "얼굴 표정, 자세, 목소리, 쉽게 우는 경향과 같은 비언어적인 표현을 통해 우울한 기분을 나타낸다", "score": 0},
        {"id": 5, "text": "오로지 우울한 기분만을 언어적/비언어적 표현을 통해 나타낸다", "score": 0}
      ]
    },
    {
      "id": 2,
      "text": "죄책감",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "자책하거나 자신이 사람들을 실망시킨다고 느낀다.", "score": 0},
        {"id": 3, "text": "죄를 지었다고 생각한다던가 과거의 실수나 자신이 한 나쁜 행위에 대해 반복적으로 생각한다.", "score": 0},
        {"id": 4, "text": "현재의 병을 벌로 여긴다. 죄책망상이 있다.", "score": 0},
        {"id": 5, "text": "비난 또는 탄핵하는 목소리를 듣거나 위협적인 환시를 경험한다.", "score": 0}
      ]
    },
    {
      "id": 3,
      "text": "자살",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "인생이 살 가치가 없다고 느껴진다", "score": 0},
        {"id": 3, "text": "차라리 죽었으면 하거나 죽는 것에 대한 상상을 한다", "score": 0},
        {"id": 4, "text": "자살 사고가 있었거나 자살기도처럼 볼 수 있는 행동을 한다", "score": 0},
        {"id": 5, "text": "심각한 자살 기도를 한다", "score": 0}
      ]
    },
    {
      "id": 4,
      "text": "초기 불면증",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "잠드는 데 어려움이 없다", "score": 0},
        {"id": 2, "text": "간간이 잠들기가 어렵다(잠드는데 30분 이상 걸린다)", "score": 0},
        {"id": 3, "text": "매일 밤 잠들기가 어렵다", "score": 0}
      ]
    },
    {
      "id": 5,
      "text": "중기 불면증",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "어려움이 없다", "score": 0},
        {"id": 2, "text": "편하고 깊게 자지 못한다", "score": 0},
        {"id": 3, "text": "한밤중에 깨어 뒤척이거나 잠자리에서 벗어나는 경우 2점으로 평가한다(소변을 보기위한경우 제외)", "score": 0}
      ]
    },
    {
      "id": 6,
      "text": "말기 불면증",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "어려움이 없다", "score": 0},
        {"id": 2, "text": "제대로 할 수 없다고 느낀다. 일이나 취미와 같은 활동에 대해 피로하거나 기력이 떨어졌다고 느낀다.", "score": 0},
        {"id": 3, "text": "일이나 취미와 같은 활동에 흥미를 잃는다 – 환자가 직접 이야기하거나 무관심, 우유부단, 망설임을 통해 간접적으로 나타낸다(일이나 활동을 억지로 한다고 느낀다)", "score": 0},
        {"id": 4, "text": "활동 시간이 줄거나 생산성이 떨어져 있다. 입원환자의 경우, 병동생활에서의 개인적인 자질구레한 일을 제외한 활동(원내 작업이나 취미)에 보내는 시간이 하루 3시간을 넘지 못한다.", "score": 0},
        {"id": 5, "text": "현재의 병 때문에 일을 중단한다. 입원 환자의 경우, 병동생활에서의 개인적인 자질구레한 일 이외에는 전혀 활동을 하지 않거나 도움 없이는 병동생활에서의 개인적인 자질구레한 일도 해내지 못한다.", "score": 0}
      ]
    },
    {
      "id": 7,
      "text": "일과 활동",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "어려움이 없다", "score": 0},
        {"id": 2, "text": "제대로 할 수 없다고 느낀다. 일이나 취미와 같은 활동에 대해 피로하거나 기력이 떨어졌다고 느낀다.", "score": 0},
        {"id": 3, "text": "일이나 취미와 같은 활동에 흥미를 잃는다 – 환자가 직접 이야기하거나 무관심, 우유부단, 망설임을 통해 간접적으로 나타낸다(일이나 활동을 억지로 한다고 느낀다)", "score": 0},
        {"id": 4, "text": "활동 시간이 줄거나 생산성이 떨어져 있다. 입원환자의 경우, 병동생활에서의 개인적인 자질구레한 일을 제외한 활동(원내 작업이나 취미)에 보내는 시간이 하루 3시간을 넘지 못한다.", "score": 0},
        {"id": 5, "text": "현재의 병 때문에 일을 중단한다. 입원 환자의 경우, 병동생활에서의 개인적인 자질구레한 일 이외에는 전혀 활동을 하지 않거나 도움 없이는 병동생활에서의 개인적인 자질구레한 일도 해내지 못한다.", "score": 0}
      ]
    },
    {
      "id": 8,
      "text": "지체(생각과 말이 느려짐 ; 집중력 저하 ; 운동활성의 저하)",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "정상적으로 일하고 있다고 생각한다.", "score": 0},
        {"id": 2, "text": "면담할 때 약간 지체되어 있다.", "score": 0},
        {"id": 3, "text": "면담할 때 뚜렷이 지체되어 있다.", "score": 0},
        {"id": 4, "text": "면담이 어려울 정도로 지체되어 있다.", "score": 0},
        {"id": 5, "text": "완전한 혼미 상태에 있다.", "score": 0}
      ]
    },
    {
      "id": 9,
      "text": "초조",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "조금 초조한 듯하다.", "score": 0},
        {"id": 3, "text": "손이나 머리카락 등을 만지작거린다.", "score": 0},
        {"id": 4, "text": "가만히 앉아 있지 못하고 몸을 자꾸 움직인다.", "score": 0},
        {"id": 5, "text": "손을 비비꼬거나 손톱을 물어뜯거나 머리카락을 잡아당기거나 입술을 깨문다.", "score": 0}
      ]
    },
    {
      "id": 10,
      "text": "정신적 불안",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "긴장감과 과민함을 느낀다", "score": 0},
        {"id": 3, "text": "사소한 일들에 대해 걱정을 한다", "score": 0},
        {"id": 4, "text": "얼굴 표정이나 말에서 염려하는 태도가 뚜렷하다", "score": 0},
        {"id": 5, "text": "묻지 않아도 심한 공포가 드러난다", "score": 0}
      ]
    },
    {
      "id": 11,
      "text": "신체적 불안의 생리적 현상",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다 위장관계 – 입마름, 방귀, 소화불량, 설사, 심한 복통, 트림", "score": 0},
        {"id": 2, "text": "경도 심혈관계 – 심계항진, 두통", "score": 0},
        {"id": 3, "text": "중등도 호흡기계 – 과호흡, 한숨", "score": 0},
        {"id": 4, "text": "고도 빈뇨, 발한", "score": 0},
        {"id": 5, "text": "최고도(기능을 전혀 할 수 없을 정도이다)", "score": 0}
      ]
    },
    {
      "id": 12,
      "text": "위장관계 신체증상",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "입맛을 잃었지만 치료진의 격려 없이도 먹는다. 속이 더부룩하다", "score": 0},
        {"id": 3, "text": "치료진의 강요 없이는 잘 먹지 않는다. 하제나 소화제 등 위장관계 증상에 대한 약제를 요구하거나 필요로 한다. ", "score": 0}
      ]
    },
    {
      "id": 13,
      "text": "전반적인 신체증상",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "팔, 다리, 등, 머리가 무겁다. 등의 통증, 두통, 근육통, 기운이 없고 쉽게 피곤하다.", "score": 0},
        {"id": 3, "text": "매우 뚜렷한 신체증상이 있다.", "score": 0}
      ]
    },
    {
      "id": 14,
      "text": "성적인 증상 (성욕 감퇴, 월경 불순 등)",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "경도", "score": 0},
        {"id": 3, "text": "고도", "score": 0}
      ]
    },
    {
      "id": 15,
      "text": "건강염려증",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "없다", "score": 0},
        {"id": 2, "text": "몸에 대해 많이 생각한다", "score": 0},
        {"id": 3, "text": "건강에 대해 집착한다", "score": 0},
        {"id": 4, "text": "건강이 나쁘다고 자주 호소하거나 도움을 청한다", "score": 0},
        {"id": 5, "text": "건강염려증적 망상이 있다. ", "score": 0}
      ]
    },
    {
      "id": 16,
      "text": "체중감소 A 또는 B 로 평가한다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "A 병력에 의한 체중감소가 없다", "score": 0},
        {"id": 2, "text": "A 환자의 병으로 인해 체중감소가 있는 것 같다", "score": 0},
        {"id": 3, "text": "A (환자에 따르면) 확실한 체중감소가 있다", "score": 0},
        {"id": 4, "text": "B 매주 체중 변화를 축정했을 때 주당 0.5kg 미만의 채중 감소", "score": 0},
        {"id": 5, "text": "B 매주 체중 변화를 축정했을 때 주당 0.5kg 이상, 1kg 미만의 채중 감소", "score": 0},
        {"id": 6, "text": "B 매주 체중 변화를 축정했을 때 주당 1kg 이상 채중 감소", "score": 0}
      ]
    },
    {
      "id": 17,
      "text": "병식",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "자신이 우울하고 병들었다는 것을 인식한다.", "score": 0},
        {"id": 2, "text": "병들었다는 것을 인정하지만 음식, 날씨, 과로 바이러스, 휴식 부족 등이 이유라고 생각한다.", "score": 0},
        {"id": 3, "text": "자신의 병을 전적으로 부인한다. ", "score": 0}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'HAM-D');