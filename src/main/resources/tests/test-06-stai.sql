INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'STAI', '상태-특성 불안척도(State-Trait Anxiety Inventory)', '"다음 문장들은 사람들이 자신을 표현하는데 사용되는 것들입니다. 각 문장을 잘 읽으시고 각 문장의 오른편에 있는 네 개의 항목 중에서 당신이 지금 이 순간에 바로 느끼고 있는 상태를 가장 잘 나타내주는 문항 하나에 체크를 하여 주십시오."					', '{
  "questions": [
    {
      "id": 1,
      "text": "나는 마음이 차분하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    },
    {
      "id": 2,
      "text": "나는 마음이 든든하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    },
    {
      "id": 3,
      "text": "나는 긴장되어 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 4,
      "text": "나는 후회스럽고 서운하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 5,
      "text": "나는 마음이 편하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    },
    {
      "id": 6,
      "text": "나는 당황해서 어찌할 바를 모르겠다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 7,
      "text": "나는 앞으로 불행이 있을까 걱정하고 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 8,
      "text": "나는 마음이 놓인다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    },
    {
      "id": 9,
      "text": "나는 불안하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 10,
      "text": "나는 편안하게 느낀다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    },
    {
      "id": 11,
      "text": "나는 자신감이 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    },
    {
      "id": 12,
      "text": "나는 짜증스럽다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 13,
      "text": "나는 마음이 조마조마하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 14,
      "text": "나는 극도로 긴장되어 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 15,
      "text": "내 마음은 진장이 풀려 푸근하다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    },
    {
      "id": 16,
      "text": "나는 만족스럽다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    },
    {
      "id": 17,
      "text": "나는 걱정하고 있다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 18,
      "text": "나는 흥분되어 어쩔 줄 모른다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 1},
        {"id": 2, "text": "조금 그렇다", "score": 2},
        {"id": 3, "text": "보통으로 그렇다", "score": 3},
        {"id": 4, "text": "대단히 그렇다", "score": 4}
      ]
    },
    {
      "id": 19,
      "text": "나는 즐겁다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    },
    {
      "id": 20,
      "text": "나는 기분이 좋다.",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 그렇지 않다", "score": 4},
        {"id": 2, "text": "조금 그렇다", "score": 3},
        {"id": 3, "text": "보통으로 그렇다", "score": 2},
        {"id": 4, "text": "대단히 그렇다", "score": 1}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'STAI');