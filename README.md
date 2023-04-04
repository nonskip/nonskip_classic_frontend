# nonskip-classic-frontend


## MVP - specifications

> 최소한 다음의 기능은 구현하는 것이 목표다.

1. `HomePage`: 서재가 있다. 책은 헤르만 헤세의 <데미안>만 꽂혀있다. <데미안>을 누르면 `CoffeeChatPage`로 이동한다.
2. `CoffeeChatPage`:  책을 읽기 전 헤르만 해세와 커피챗을 한다. 사용자는 `이 책을 왜 썼어요?` 나 `내가 이 책을 왜 읽어야 돼요?` 와 같은 질문을 해세에게 자유롭게 할 수 있다. 해세는 스포일러를 하지 않는 선에서 사용자와 커피챗을 한다. 헤세가 생각에 잠긴 초상화로 프로필 사진이 설정돼 있다. 채팅방 하단에 `<데미안> 읽기` 버튼이 있다. 누르면 `ReadPage`로 이동한다.
3. `ReadPage`:  상단에 `Chapter 1: Two Worlds`라 써져 있다. 그 밑으로 첫번째 챕터의 본문이 보인다. 사용자는 하단의 ◀️ / ▶️을 눌러 이전 페이지 / 다음 페이지로 이동할 수 있다. 사용자가 모르는 표현이 있으면 최대 5개 단어까지 드래그해 선택할 수 있다. 드래그를 마무리하면 선택한 표현 위로 "무슨 뜻이야?" 버튼이 나타난다. 이 버튼을 누르면 `UnderstandPage`가 모달로 나타난다. 이해를 마무리한 후 모달을 닫으면 선택했던 표현이 하이라이트 돼있다. 사용자는 이 부분부터 다시 읽기 시작한다.
4. `UnderstandPage`: 사용자가 궁금해하는 표현에 대한 설명을 `ChatGPT`가 설명 해준다. 프로필 사진에 헤세가 아닌 ChatGPT로고가 보인다. 이 페이지에선 이해에 집중하기 위해 작가가 아닌 `ChatGPT`와 대화한다.
5. `CelebratePage`: 한 챕터를 다 읽으면  "축하합니다! Chapter 1 - Two Worlds를 다 읽었어요." 문구가 뜬다.  하단에  `챕터회고` 버튼이 보인다. 누르면 `ReflectPage`로 이동한다.
6. `ReflectPage`:  다시 헤세와의 대화가 시작된다. 프로필 사진에 다시 헤세의 얼굴이 보인다. 해세가 `Chapter 1`과 관련된 철학적 질문을 던진다. 이에 대해 사용자가 답하며 이해한 내용과 자신의 고민이 이어지는 경험을 한다.  
