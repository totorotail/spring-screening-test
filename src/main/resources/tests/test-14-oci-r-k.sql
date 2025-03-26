INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'OCI-R-K', '강박장애 척도', '이 질문지는 많은 사람들이 일상생활에서 경험할 수 있는 내용들로 구성되어 있습니다. 문항을 잘 읽고 각 문항에 대해서 자신을 가장 잘 나타내 주는 알맞은 숫자를 선택해 주세요.', '{
  "questions": [
    {
      "id": 1,
      "text": "그동안 너무 많은 물건들이 오히려 방해가 될 정도이다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 2,
      "text": "나는 필요 이상으로 자주 확인하는 편이다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 3,
      "text": "나는 물건들이 제대로 정리되어 있지 않으면 화가 난다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 4,
      "text": "나는 어떤 일을 할 때 숫자를 세야 할 것 같은 느낌이 든다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 5,
      "text": "나는 어떤 물건을 낯선 사람들이나 특정 사람들이 만졌다는 사실을 알게 되면 그 물건을 만지기 어렵다 ",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 6,
      "text": "나는 내 생각을 내 마음대로 조절하기가 어렵다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 7,
      "text": "나는 내가 필요하지 않을 것들을 모으는 습관이 있다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 8,
      "text": "나는 습관적으로 창문, 서랍 등을 확인하다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 9,
      "text": "나는 내 방식대로 정리한 것들을 다른 사람들이 바꾸어 놓으면 화가 난다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 10,
      "text": "나는 어떤 일을 특정 횟수만큼 반복해야 할 것 같은 느낌이 든다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 11,
      "text": "나는 단지 내가 더러워졌다는 생각 때문에 몸을 씻어야 할 때가 있다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 12,
      "text": "나는 나의 의지에 반하여 마음 속에 떠오르는 생각 때문에 기분이 나쁘다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 13,
      "text": "나는 나중에 필요할지도 모른다는 두려움 때문에 물건을 잘 버리지 못한다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 14,
      "text": "나는 가스밸브, 수도꼭지, 전등 스위치를 끄고 나서도 반복적으로 확인하는 습관이 있다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 15,
      "text": "나는 물건들이 특정 순서대로 정돈되어 있기를 원한다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 16,
      "text": "나는 좋은 숫자와 나쁜 숫자가 있다고 생각한다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 17,
      "text": "나는 필요 이상으로 자주 오래 손을 씻는 편이다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    },
    {
      "id": 18,
      "text": "나는 자주 음란한 생각을 하고 그 생각을 떨쳐 버리기가 힘들다",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다", "score": 0},
        {"id": 2, "text": "아니다", "score": 1},
        {"id": 3, "text": "보통이다", "score": 2},
        {"id": 4, "text": "그렇다", "score": 3},
        {"id": 5, "text": "매우 그렇다", "score": 4}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'OCI-R-K');