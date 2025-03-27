INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'BDI', '벡 우울척도', '', '{
  "questions": [
    {
      "id": 1,
      "text": "슬픔",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 슬프지 않다.", "score": 0},
        {"id": 2, "text": "나는 슬프다.", "score": 1},
        {"id": 3, "text": "나는 언제나 슬프고 기운을 낼 수 없다.", "score": 2},
        {"id": 4, "text": "나는 너무 슬프고 불행한 느낌이어서 견딜 수가 없다.", "score": 3}
      ]
    },
    {
      "id": 2,
      "text": "비관주의",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 나의 미래에 대해 특히 의기소침하지 않다.", "score": 0},
        {"id": 2, "text": "나는 미래에 대해 의기소침하다.", "score": 1},
        {"id": 3, "text": "나는 미래에 기대할 것이 없다고 느낀다.", "score": 2},
        {"id": 4, "text": "나는 미래가 희망이라곤 없으며 상황은 향상될 수 없다고 느낀다.", "score": 3}
      ]
    },
    {
      "id": 3,
      "text": "과거의 실패",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 실패자라고 느끼지 않는다.", "score": 0},
        {"id": 2, "text": "나는 여느 사람보다는 실패했다고 느낀다.", "score": 1},
        {"id": 3, "text": "내 인생을 돌아보면 볼 것이라고는 수많은 실패뿐이다.", "score": 2},
        {"id": 4, "text": "나는 자신이 인간으로서 완전한 실패자라고 느낀다.", "score": 3}
      ]
    },
    {
      "id": 4,
      "text": "즐거움의 상실",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 전에도 그랬듯이 만사로부터 만족을 얻는다.", "score": 0},
        {"id": 2, "text": "나는 전에 하던 식으로 만사를 즐기지는 못한다.", "score": 1},
        {"id": 3, "text": "나는 어느 것에서도 더 이상 진짜 만족을 얻지 못한다.", "score": 2},
        {"id": 4, "text": "나는 불만스럽고 만사가 지겹다.", "score": 3}
      ]
    },
    {
      "id": 5,
      "text": "죄책감",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 죄스럽다고 느끼지 않는다.", "score": 0},
        {"id": 2, "text": "나는 가끔 죄의식을 느낀다.", "score": 1},
        {"id": 3, "text": "나는 거의 늘 매우 죄의식을 느낀다.", "score": 2},
        {"id": 4, "text": "나는 언제나 죄의식을 느낀다.", "score": 3}
      ]
    },
    {
      "id": 6,
      "text": "처벌에 대한 감정",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 처벌받고 있다는 느낌은 갖고 있지 않다.", "score": 0},
        {"id": 2, "text": "나는 아마 처벌받을지도 모른다고 느낀다.", "score": 1},
        {"id": 3, "text": "나는 처벌받으리라고 생각한다.", "score": 2},
        {"id": 4, "text": "나는 처벌받고 있다고 느낀다.", "score": 3}
      ]
    },
    {
      "id": 7,
      "text": "자신을 싫어함",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 나 자신에 대해 실망스럽다고 느끼지 않는다.", "score": 0},
        {"id": 2, "text": "나는 나 자신에 대해 실망한다.", "score": 1},
        {"id": 3, "text": "나는 나 자신에 대해 아주 실망한다.", "score": 2},
        {"id": 4, "text": "나는 나 자신이 혐오스럽다.", "score": 3}
      ]
    },
    {
      "id": 8,
      "text": "자기 비판",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 남들에 비해 내가 형편없다고 느끼지 않는다.", "score": 0},
        {"id": 2, "text": "나는 나의 약점이나 실수 때문에 나 자신에 대해 비판적이다.", "score": 1},
        {"id": 3, "text": "나는 나의 과오들 때문에 언제나 나 자신을 책망한다.", "score": 2},
        {"id": 4, "text": "나는 발생하는 모든 나쁜 일 때문에 나 자신을 책망한다.", "score": 3}
      ]
    },
    {
      "id": 9,
      "text": "자살사고 혹은 바람",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 자살 따위는 생각조차 하지 않는다.", "score": 0},
        {"id": 2, "text": "나는 자살을 생각해 보지만 실행하진 않겠다.", "score": 1},
        {"id": 3, "text": "나는 자살하고 싶다.", "score": 2},
        {"id": 4, "text": "나는 기회가 오면 자살하겠다.", "score": 3}
      ]
    },
    {
      "id": 10,
      "text": "눈물을 흘림",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 평소보다 좀 더 울지는 않는다.", "score": 0},
        {"id": 2, "text": "요즈음 나는 전보다 더 우는 편이다.", "score": 1},
        {"id": 3, "text": "요즈음 나는 언제나 운다.", "score": 2},
        {"id": 4, "text": "나는 전에는 울 수 있었는데, 지금은 울고 싶어도 울 수가 없다.", "score": 3}
      ]
    },
    {
      "id": 11,
      "text": "초조함",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 평소보다 만사에 대해 더 화내지는 않는다.", "score": 0},
        {"id": 2, "text": "요즈음 나는 평소보다 좀 더 화내는 편이다.", "score": 1},
        {"id": 3, "text": "나는 거의 늘 속상하고 안달한다.", "score": 2},
        {"id": 4, "text": "요즘 나는 언제나 화를 낸다.", "score": 3}
      ]
    },
    {
      "id": 12,
      "text": "흥미의 상실",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 다른 사람들에 대한 관심을 잃지 않았다.", "score": 0},
        {"id": 2, "text": "나는 전에 비해 다른 사람들에 대해 더 이상 관심이 가질 않는다.", "score": 1},
        {"id": 3, "text": "나는 다른 사람들에 대해 관심을 아주 잃었다.", "score": 2},
        {"id": 4, "text": "나는 다른 사람들에게 관심이라곤 손톱만큼도 없다.", "score": 3}
      ]
    },
    {
      "id": 13,
      "text": "우유부단함",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 전에 할 수 있었던 만큼 결정을 내린다.", "score": 0},
        {"id": 2, "text": "나는 전에 비해 결정내리기를 미룬다.", "score": 1},
        {"id": 3, "text": "나는 전에 비해 결정내리는 데 아주 큰 어려움을 겪는다.", "score": 2},
        {"id": 4, "text": "나는 더 이상 결정을 내릴 수가 없다.", "score": 3}
      ]
    },
    {
      "id": 14,
      "text": "무가치함",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 전보다 더 나쁘게 보인다고 느끼지 않는다.", "score": 0},
        {"id": 2, "text": "나는 내가 늙어 보이거나 매력이 없어 보인다고 걱정한다.", "score": 1},
        {"id": 3, "text": "나는 외모에 있어 나를 매력 없어 보이게 하는 영구적인 변화들이 있다고 느낀다.", "score": 2},
        {"id": 4, "text": "나는 내가 추해보인다고 믿는다.", "score": 3}
      ]
    },
    {
      "id": 15,
      "text": "에너지 상실",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 전만큼 일할 수 있다.", "score": 0},
        {"id": 2, "text": "일을 시작하려면 몇 곱절이나 힘이 든다.", "score": 1},
        {"id": 3, "text": "나는 어떤 일이든 하려면 나 자신을 말할 수 없이 밀어 부처야만 할 수 있다.", "score": 2},
        {"id": 4, "text": "나는 아무 일도 할 수가 없다.", "score": 3}
      ]
    },
    {
      "id": 16,
      "text": "수면 습관의 변화",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "나는 평소처럼 잘 잔다.", "score": 0},
        {"id": 2, "text": "나는 전처럼 잘 자지 못한다.", "score": 1},
        {"id": 3, "text": "나는 평소보다 1-2시간 일찍 깨고 다시 잠들기가 힘들다.", "score": 2},
        {"id": 4, "text": "나는 이전에 비해 몇 시간 일찍 깨고 다시 잠들지 못한다.", "score": 3}
      ]
    },
    {
      "id": 17,
      "text": "짜증",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "이전보다 더 피곤해지진 않는다.", "score": 0},
        {"id": 2, "text": "이전에 비해 더 쉽게 피곤해진다.", "score": 1},
        {"id": 3, "text": "거의 무슨 일을 하든 피곤해진다.", "score": 2},
        {"id": 4, "text": "나는 너무 피곤해서 아무것도 할 수가 없다.", "score": 3}
      ]
    },
    {
      "id": 18,
      "text": "식욕 변화",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "내 입맛은 전에 비해 조금도 나쁘지 않다.", "score": 0},
        {"id": 2, "text": "입맛이 이전만큼 좋지 않다.", "score": 1},
        {"id": 3, "text": "입맛이 요즘 없다.", "score": 2},
        {"id": 4, "text": "입맛이라고는 조금도 없다.", "score": 3}
      ]
    },
    {
      "id": 19,
      "text": "체중변화",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "체중이 줄지 않았지만 필요하다면 빼겠다.", "score": 0},
        {"id": 2, "text": "체중이 약 2키로 이상 줄었다.", "score": 1},
        {"id": 3, "text": "체중이 약 4키로 이상 줄었다.", "score": 2},
        {"id": 4, "text": "체중이 약 7키로 이상 줄었다.", "score": 3}
      ]
    },
    {
      "id": 20,
      "text": "건강염려",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "이전에 비해 내 건강에 대해 그다지 걱정하지 않는다.", "score": 0},
        {"id": 2, "text": "갑작스런 통증, 배탈, 변비 등 신체상의 문제에 대해 걱정한다.", "score": 1},
        {"id": 3, "text": "신체상 문제들에 대해 매우 걱정이 되어서 다른 일은 생각하기 힘들다.", "score": 2},
        {"id": 4, "text": "신체상 문제들에 대해 걱정이 되는 나머지 다른 일은 전혀 생각할 수가 없다.", "score": 3}
      ]
    },
    {
      "id": 21,
      "text": "성에 대한 관심",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "성에 대한 나의 관심이 최근 바뀐 느낌은 없다.", "score": 0},
        {"id": 2, "text": "전에 비해 성에 대한 관심이 조금 줄었다.", "score": 1},
        {"id": 3, "text": "요즘은 성에 대한 관심이 아주 조금밖에 없다.", "score": 2},
        {"id": 4, "text": "성에 대한 관심이라고는 하나도 없다.", "score": 3}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'BDI');