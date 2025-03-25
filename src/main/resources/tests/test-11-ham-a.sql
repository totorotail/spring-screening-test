INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'HAM-A', '헤밀턴 불안 검사', '', '{
  "questions": [
    {
      "id": 1,
      "text": "불안한 기분",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 2,
      "text": "긴장",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 3,
      "text": "공포",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 4,
      "text": "불면",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 5,
      "text": "인지",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 6,
      "text": "우울한 기분",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 7,
      "text": "신체적 증상",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 8,
      "text": "심혈관계 증상",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 9,
      "text": "호흡기계 증상",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 10,
      "text": "소화기계 증상",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 11,
      "text": "비뇨기계 증상",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 12,
      "text": "자율신경계 증상",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 13,
      "text": "면담시 행동(전반적)",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 14,
      "text": "행동(생리적)",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 0},
        {"id": 2, "text": "약간 그러한 편이다", "score": 1},
        {"id": 3, "text": "중간이다", "score": 2},
        {"id": 4, "text": "꽤 그러한 편이다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'HAM-A');