INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'K-SADS', '사회불안척도', '다음 문항들은 사람들이 대인관계에서 접하는 상황들로 구성되어 있습니다. 각 문항들을 잘 읽고, 그러한 상황에서 자신이 일반적으로 느끼는 바를 가장 적절하게 나타내 주는 번호에 표시해 주십시오. 한문항도 빠짐없이 솔직하게 답해 주시기 바랍니다.', '{
  "questions": [
    {
      "id": 1,
      "text": "익숙하지 않은 대인관계 상황에서도 편안함을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 2,
      "text": "사교적이어야 한는 자리는 피한다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 3,
      "text": "낯선 사람들과 함께 있을 때 쉽게 마음을 편하게 가질 수 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 4,
      "text": "특별히 사람을 피하고 싶은 생각은 없다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 5,
      "text": "사교적인 모임에서 나는 자주 당황함을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 6,
      "text": "사교적인 모임에서 대게는 편안함을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 7,
      "text": "이성에게 말을 걸 때 대체로 마음이 편하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 8,
      "text": "사람들과 잘 알지 못하면 그들에게 말을 거는 것을 파하려 한다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 9,
      "text": "새로운 사람과 만날 기회가 오면 자주 거기에 응한다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 10,
      "text": "남녀가 같이 일상적인 모임에서 자주 신경이 예민해지고 긴장된다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 11,
      "text": "잘 모르는 사람들과 함께 있을 때 대체로 신경이 예민해진다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 12,
      "text": "많은 사람들과 같이 있을 때 보통 편안함을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 13,
      "text": "나는 자주 사람들로부터 떨어져 있고 싶다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 14,
      "text": "모르는 사람들 속에 있으면 보통 마음이 편치 않다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 15,
      "text": "사람을 처음 만날 때 대체로 편안함을 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 16,
      "text": "사람들에게 소개될 때면 나는 긴장하고 마음을 졸인다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 17,
      "text": "밤에 낯선 사람이 꽉 차 있을 때도 나는 거리낌 없이 들어간다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 18,
      "text": "여러 사람들이 모여 있는데 다가서서 어울리는 것을 피한다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 19,
      "text": "윗사람들이 나와 이야기하기를 원하면 나는 기꺼이 이야기한다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 20,
      "text": "많은 사람들과 있으면 자주 마음이 불편해진다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 21,
      "text": "사람을 피하려는 경향이 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 22,
      "text": "파티나 칙목회에서 사람들에게 말을 건네는 것을 꺼리지 않는다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 23,
      "text": "많은 사람들과 함께 있으면 좀처럼 편한 마음을 가지기가 힘들다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당희 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 24,
      "text": "사교적인 약속을 피하려고 자주 핑계를 생각해 낸다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 25,
      "text": "나는 때때로 사람들을 서로 소개시켜주는 책임을 맡는다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 26,
      "text": "공식적인 사교상의 일을 피하려고 한다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "약간 그렇다", "score": 2},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 4},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 5}
      ]
    },
    {
      "id": 27,
      "text": "사교적인 약속이면 그것이 무엇이든 대개 지키는 편이다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    },
    {
      "id": 28,
      "text": "다른 사람들과 함께 있을 때 쉽게 편안해진다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 5},
        {"id": 2, "text": "약간 그렇다", "score": 4},
        {"id": 3, "text": "보통이다", "score": 3},
        {"id": 4, "text": "상당히 그렇다", "score": 2},
        {"id": 5, "text": "매우 심하게 그렇다", "score": 1}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'K-SADS');