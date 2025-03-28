INSERT INTO tests (acronym, title, description, questions_config)
SELECT
'PDSS', '공황장애 평가척도', '*공황발작의 정의 : 공황발작이란 갑자기 시작해서 급격하게 심해지는 공포나 불안 증상이며 대개는 10분 내에 최고조에 달합니다. 이러한 느낌은 가슴이 두근거리는 것, 숨이 가빠지는 것, 질식감, 어지러움, 땀이 나거나 떨림 등의 불쾌한 신체 감각들과 관련이 있습니다. 때로는 자제력을 잃거나 심장마비가 오거나 죽지는 않을까 하는 파국적인 사고들이 나타나기도 합니다. 완전한 공황삽화는 적어도 4개 이상의 증상을 포함해야하며 제한된 증상삽화는 완전 공황삽화와 유사하지만 증상이 4개 미만인 것을 말합니다. 이러한 정의를 참고하여 대답해 주십시오.', '{
  "questions": [
    {
      "id": 1,
      "text": "지난 한 달 동안 4개 이상의 증상을 동반한 완전한 공황발작을 얼마나 자주 경험하셨습니까? \n4개 미만의 증상을 동반하는 제한된 증상삽화는 얼마나 자주 경험하셨습니까? \n평균적으로 하루에 한번 이상의 제한된 증상 삽화를 경험하셨습니까? (평가 기간 내의 완전한 공황발작 빈도를 평가기간 주수로 나누어 주당 빈도를 계산하십시오.)",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "공황이나 제한된 삽화 증상이 없음", "score": 0},
        {"id": 2, "text": "(경도) 완전한 공황 발작이 주 평균 1회 미만이고 제한된 삽화는 하루에 한번을 넘지 않을 경우", "score": 1},
        {"id": 3, "text": "(중등도) 주 1-2회의 완전한 공황발작, 하루에 제한된 증상 삽화를 여러 번 경험", "score": 2},
        {"id": 4, "text": "(심함) 주 3회 이상의 완전한 공황 발작, 그러나 평균 하루에 1회 이상은 아님", "score": 3},
        {"id": 5, "text": "(극심함) 하루에도 여러 번 완전한 공황 발작이 일어남. 발작이 없는 날보다 있는 날이 더 많음", "score": 4}
      ]
    },
    {
      "id": 2,
      "text": "제한된 증상삽화를 포함하여, 공황발작 동안의 고통감은 어느 정도였습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "공황이나 제한된 증상 삽화 없음 또는 삽화 동안 불쾌감이 없음", "score": 0},
        {"id": 2, "text": "경도의 불쾌감. 그러나 하던 활동에 거의 혹은 전혀 지장을 주지 않아 계속 할 수 있음", "score": 1},
        {"id": 3, "text": "중증도의 불쾌감은 있으나 견딜만함. 약간의 어려움은 있으나 하던 활동을 계속 할 수 있고 집중할 수 있음", "score": 2},
        {"id": 4, "text": "심한 불쾌감. 현저한 불쾌감과 지장 있음. 집중할 수 없거나 활동을 중지해야함. 그러나 그 장소나 상황에 머물러 있을 수는 없음", "score": 3},
        {"id": 5, "text": "극심하고 심각한 고통감. 활동을 멈춰야만 하며, 가능한 장소나 상황을 떠나야 함. 만약 남아 있으면 집중하는 것이 힘들며 극심한 불쾌감을 느낌. ", "score": 4}
      ]
    },
    {
      "id": 3,
      "text": "예기불안의 심각도 (공황관련 공포, 불안, 걱정)에 관한 질문입니다.\n지난 한 달 동안 평균적으로 다음의 공황발작이 언제 일어날지, 공황발작이 신체적 정신적 건강에 미치는 영향은 무엇인지에 대해 얼마나 걱정하고 두려움 불안감을 느꼈습니까? \n불안이 얼마나 강했습니까? \n얼마나 자주 걱정과 두려움을 느꼈습니까? \n불안이 일상생활을 방해하였습니까? 만약 그렇다면 어느정도입니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "공황에 대한 염려 없음", "score": 0},
        {"id": 2, "text": "(경도) 간혹 공황에 대한 두려움, 불안이 있으나 불안이 없는 기간이 있음. 생활을 현저하게 변화시키나 불안을 견딜만함. 전반적 기능은 손상되지 않음.", "score": 1},
        {"id": 3, "text": "(중등도) 종종 걱정, 두려움, 불안이 있으나 불안이 없는 기간이 있음. 생활을 현저하게 변화시키나 불안을 견딜만함. 전반적 기능은 손상되지 않았음.", "score": 2},
        {"id": 4, "text": "(심함) 공황에 대한 걱정, 두려움, 불안에 몰두하여 있음. 집중을 하거나 효율적으로 기능을 하는데 지속적으로 방해를 받음.", "score": 3},
        {"id": 5, "text": "(극심함) 거의 지속적인 불안, 공황에 대한 두려움, 걱정, 불안 때문에 중요한 일을 수행할 수 없음.", "score": 4}
      ]
    },
    {
      "id": 4,
      "text": "지난 한달 내에, 공황 발작을 할 것 같고, 도움을 받을 수 없거나 쉽게 빠져 나올 수 없을 것 같은 생각 때문에 두려웠거나 회피했던 장소가 있습니까? \n대중교통을 이용하거나 자가 운전을 하는 것, 터널이나 다리 위를 지나가는 것, 극장이나 슈퍼마켓에 가는 것, 혹은 사람이 많은 상황이었습니까? 아니면 다른 상황이었습니까? \n집에 혼자 있을 때 혹은 다른 장소에서 온전히 혼자 있을 때 두려움을 느꼈습니까? 이런 상황에서 얼마나 자주 두려움을 느끼셨습니까? 두려움이 얼마나 강합니까? \n이런 상황을 회피하셨습니까? \n신뢰하는 친구와 함께 있으면 다릅니까? 두려움이나 회피가 일상생활에 얼마나 영향을 줍니까? \n두려움을 조절하기 위해 일상생활을 바꿀 필요가 있습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 아니다. 두려움이나 회피가 전혀 없음", "score": 0},
        {"id": 2, "text": "(경도) 종종 두려움이나 회피가 있기는 하지만, 일반적으로 상황에 직면하거나 참을 수 있음. 일상생활을 조정할 필요넌 거의 또는 전혀 없음", "score": 1},
        {"id": 3, "text": "(중증도) 현저한 안이나 회피가 있으나 견딜 만함. ", "score": 2},
        {"id": 4, "text": "(심함) 광범위한 극심한 회피. 일상 생활을 하는 것을 어렵게 하는 공포를 조정하기위해서 일상생활을 바꾸는 것이 필요한 정도", "score": 3},
        {"id": 5, "text": "(극심한) 극도로 광범위한 공포나 회피. 일상생활의 수정이 강력히 필요하며, 중요한 과제를 수행할 수 없음. ", "score": 4}
      ]
    },
    {
      "id": 5,
      "text": "지난 한달동안, 불쾌한 신체 감각을 야기하기 때문에 어떤 일을 하는 것을 피한 적이 있습니까? \n예를 들면 격렬한 운동이나 도보와 같이 심장 박동을 증가시키는 활동을 피한적이 있습니까? \n스포츠를 하거나 정원을 산책하는 것은? \n운동 경기를 관람하거나 무서운 영화를 보는 것, 혹은 논쟁을 하는 것은 어떻습니까? \n성행위를 하는 것은? \n열감이나 따끔거림과 같은 피부 감각도 두려워하거나 회피하셨습니까? \n어지럽거나 호흡 곤란은? \n신체 감각을 야기하기 때문에 커피, 술 또는 감기약 같은 어떤 음식이나 음료수, 약물을 피한적이 있습니까? \n일상생활에 영향을 주는 상황 또는 활동을 얼마나 자주 피했습니까? \n공포 때문에 일상생활을 바꾸는 것이 필요했습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "불편한 신체감각 때문에 상황이나 활동을 두려워하거나 피한 적은 전혀 없다", "score": 0},
        {"id": 2, "text": "(경도) 종종 두려움이나 회피가 있기는 하지만 거의 불편함이 없이 평소대로 신체적 감각을 야기하는 활동과 상황을 직면하거나 참아낼 수 있음", "score": 1},
        {"id": 3, "text": "(중등도) 현저한 회피가 있기는 하나 견딜 만 함. 완전히는 아니지만 제한적으로 일상생활을 수정해야 함. 전반적 기능 손상은 없음", "score": 2},
        {"id": 4, "text": "(심함) 광범위한 회피. 생활을 수정해야 하거나 기능 상 방해", "score": 3},
        {"id": 5, "text": "극심하고 광범위한 회피. 일상생활에 많은 조정이 필요하며, 중요한 과제나 활동은 수행하지 못함.", "score": 4}
      ]
    },
    {
      "id": 6,
      "text": "지난 한 달 간, 공황 발작, 제한된 증상 삽화, 예기 불안, 공포 증상 등의 모든 증상을 고려할 때, 공황장애가 얼마나 자주 직무를 수행하는데 방해를 했습니까? \n예전보다 일의 능률이 떨어졌습니까? 평소처럼 바르고 효율적으로 일을 처리할 수 있었습니까? \n불안 때문에 일을 할 수 없다고 생각했습니까? \n일을 줄이거나 도움을 요청했습니까? \n당신의 수행 변화를 다른 사람이 눈치챘습니까? 이 수행을 재검토하도록 공식적인 지적이나 경고를 받은 적이 있습니까? \n당신이 하는 일에 대해 직장동료나 가족들이 잔소리를 한 적이 있었습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "공황 장애 증상으로 인한 손상이 전혀 없음", "score": 0},
        {"id": 2, "text": "(경도) 약간의 손상은 있음. 직무수행이 예전보다는 어려우나 여전히 잘 처리함", "score": 1},
        {"id": 3, "text": "(중등도) 증상이 직무에 방해를 주나 여전히 참을만 함. 직무 수행은 힘드나 다른 사람들은 여전히 직무수행이 적절하다고 말함", "score": 2},
        {"id": 4, "text": "(심함) 지속적인 직무 수행 어려움으로 인해 다른 사람이 눈치 채게됨. 결근을 하거나 며칠 간 일을 할 수가 없음.", "score": 3},
        {"id": 5, "text": "(극심함) 증상 때문에 일을 할 수가 없음 (또는 학교에 가거나 집안일을 할 수 없음)", "score": 4}
      ]
    },
    {
      "id": 7,
      "text": "지난 한달 동안 모든 공황 증상들을 같이 고려할떄, 사회생활에 얼마나 많이 방해를 받았습니까? \n평소보다 가족이나 친척들과 보내는 시간이 줄었습니까? \n친구들과 함꼐 지내는 시간도 줄었습니까? \n공황 장애 때문에 사람들과 어울릴 기회를 거절한 적이 있습니까? \n공황 장애 때문에 사람들과 어울릴 시간과장소의 제약을 받았습니까? \n공황장애 증상들이 가족이나 친구들과의 관계에 영향을 주었습니까?",
      "type": "MULTIPLE_CHOICE",
      "options": [
        {"id": 1, "text": "전혀 손상 없음", "score": 0},
        {"id": 2, "text": "(경도) 약간의 손상. 사회적 활동에 있어 질은 다소 떨어졌으나 사회 기능은 여전히 적절함", "score": 1},
        {"id": 3, "text": "(중등도) 사회 활동에 방해느 되나 여전히 견딜만 함. 사회 활동 빈도나 대인관계 상호작용이 줄었으나 대부분의 일상 사회활동은 참여할 수 있음", "score": 2},
        {"id": 4, "text": "(심함) 사회적 수행에 심한 손상 야기. 사회활동에 현저한 감소가 있고 다른 사람과 상호작용하는데 현저한 어려움이 있으나, 여전히 다른 사람과만나려고 노력함. 그러나 대부분의 사회적 혹은 대인관계 상황을 즐기지는 못함", "score": 3},
        {"id": 5, "text": "(극심함) 증상 때문에 다른 사람을 만나러 나가지 못함. 공황 장애 때문에 관계가 단절되기도 함", "score": 4}
      ]
    }
  ]
}'
WHERE NOT EXISTS (SELECT 1 FROM tests WHERE acronym = 'PDSS');