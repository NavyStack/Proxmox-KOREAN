# NavyStack-Proxmox-KOREAN
## Proxmox 한국어 번역을 위한 저장소
**한국어 번역에 기여하세요. !!** <br>
(commit 시점에서) 물리적 제약으로 전부 확인하지는 못했습니다. <br>
따라서 범용적으로 사용할 수 있는 문장으로 번역했습니다.

특정 문장이 재 사용되는 경우가 있습니다. 어색한 경우는 `issue` 열어주시면, 문장을 뜯어 반영하겠습니다.

## 리포지토리 포크 하고, 빌트, 테스트해보기
1. 본 리포지토리를 포크합니다.
2. `kr.po` 파일을 수정하고
3. `docker compose up` 하시면 `dist` 폴더에 빌드된 파일이 저장됩니다. '-d' 옵션을 빼고 하시길 추천드립니다. 그래야 로그가 보여요 :)
4. `pve-lang-kr.js` 등의 파일을 `/usr/share/pve-i18n` 디렉토리로 옮기면 테스트 가능합니다.
```bash
sudo cp pve-lang-kr.js /usr/share/pve-i18n/pve-lang-kr.js
```
5. Web UI 재로드 ```CTRL + SHIFT + R```
6. 혹은 `*.deb` 패키지를 설치합니다.
7. 확인 후, PR을 합니다.

## 기타
* 일관적인 단어 사용을 위해 노력했습니다.
* 무리하게 한국어 단어로 번역하지 않고, 음차했습니다.
* 원문의 문장 구조를 최대한 유지하면서 번역했습니다.
* 최대한 동사로 끝나면 동사형태로, 명사로 끝나면 명사형태로 번역하려 노력했습니다.
* 그럼에도 불구하고, `Proxmox`에서 재 사용되는 경우 맥락이 어색할 수 있습니다.
* 또한, `Proxmox`측의 업데이트 과정에서, 참고하는 스트링 번호가 변경되는 경우, 사후적으로 확인할 수 밖에 없기에 어색해지는 문맥이 있을 수 있습니다.
* 문장이 끝났지만, 마침표가 없는 경우 원문에 `full stop`이 없는 경우 입니다.
* 원문의 단어가 한국어로 번역되었을 때, 오도 할 수 있는 경우, 원문의 단어를 병기했습니다.
* 전체는 [여기](https://pve.proxmox.com/wiki/Translating_Proxmox_VE)를 참고하세요
* 파일 이름이 `kr.po`인 이유는 최초 기여자가 그렇게 했기 때문입니다. `ISO에 따른 규격으로는 ko-KR`로 표현할 수 있지만, 제가 깊게 관여할 수 없어 그대로 두었습니다.
* **ISO 639에 따라 ko.po로 파일명 변경 예정입니다.**

## 라이선스

모든 Docker 이미지와 마찬가지로, 여기에는 다른 라이선스(예: 기본 배포판의 Bash 등 및 포함된 기본 소프트웨어의 직간접적인 종속성)가 적용되는 다른 소프트웨어도 포함될 수 있습니다.
사전 빌드된 이미지 사용과 관련하여, 이 이미지를 사용할 때 이미지에 포함된 모든 소프트웨어에 대한 관련 라이선스를 준수하는지 확인하는 것은 이미지 사용자의 책임입니다.
기타 모든 상표는 각 소유주의 재산이며, 달리 명시된 경우를 제외하고 본문에서 언급한 모든 상표 소유자 또는 기타 업체와의 제휴관계, 홍보 또는 연관관계를 주장하지 않습니다.
