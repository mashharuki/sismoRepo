# sismoRepo
sismoプロトコルを理解するためのリポジトリです。

### sismoプロトコルとは

複数のパブリックアドレス情報をゼロ知識証明を用いて一つのデジタルIDに集約するプロトコル  

同一人物が公開用とは別に管理するパブリックアドレスのオンチェーン履歴をゼロ知識証明を用いて公開用アドレスに紐づけることを目的としたプロトコルです。公開アドレス（ENS）への紐づけはZKバッジと呼ばれる譲渡不可能なNFTを介して行われます。  

### テンプレートプロジェクトを作成するコマンド

```bash
npx create-sismo-connect-app@latest
```

appIdの入力を求められるのであらかじめSismofactoryで生成しておく必要あり！！


```bash
Go to your created app: 
    cd first-app

You will need 2 terminals:

  * First terminal: launch a local chain (fork of mumbai)
    yarn chain

    Note: if you restart the chain you need to reset your nounce https://docs.sismo.io/sismo-docs/build-with-sismo-connect/faq


  * Second terminal: start your frontend
    cd front
    yarn dev

    Notes:
      * front/src/app/page.tsx contains the Sismo Connect React Button to request ZK proofs
      * front/src/app/sismo-connect-config.ts contains the Sismo Connect configuration
      * src/Airdrop.sol is the contract that verifies ZK Proofs received via Sismo Connect
      * The Sismo Connect Configuration, the AuthRequests and the claimRequests should be the same in the frontend and the smart contract
      * Each time your update your Airdrop.sol the contract is automatically redeployed
```

### 参考文献
1. [Sismoプロトコルの概要｜](https://hashhub-research.com/articles/2022-03-15-about-sismo)
2. [Sismo builders Docs](https://build.sismo.io/)
3. [ボイラーテンプレート](https://github.com/sismo-core/sismo-connect-boilerplate-onchain)
4. [Sismo Connect Cheatsheet](https://docs.sismo.io/sismo-docs/build-with-sismo-connect/sismo-connect-cheatsheet)
5. [Connect to Cheatsheet Test Request App](https://vault-beta.sismo.io/connect?version=sismo-connect-v1.1&appId=0x32403ced4b65f2079eda77c84e7d2be6&claims=%5B%7B%22groupId%22%3A%220xda1c3726426d5639f4c6352c2c976b87%22%2C%22claimType%22%3A0%2C%22extraData%22%3A%22%22%2C%22groupTimestamp%22%3A%22latest%22%2C%22value%22%3A1%7D%2C%7B%22groupId%22%3A%220x85c7ee90829de70d0d51f52336ea4722%22%2C%22claimType%22%3A0%2C%22value%22%3A4%2C%22extraData%22%3A%22%22%2C%22groupTimestamp%22%3A%22latest%22%7D%2C%7B%22groupId%22%3A%220xfae674b6cba3ff2f8ce2114defb200b1%22%2C%22claimType%22%3A2%2C%22value%22%3A10%2C%22extraData%22%3A%22%22%2C%22groupTimestamp%22%3A%22latest%22%7D%2C%7B%22groupId%22%3A%220x1cde61966decb8600dfd0749bd371f12%22%2C%22claimType%22%3A0%2C%22value%22%3A15%2C%22isSelectableByUser%22%3Atrue%2C%22extraData%22%3A%22%22%2C%22groupTimestamp%22%3A%22latest%22%7D%2C%7B%22groupId%22%3A%220xfae674b6cba3ff2f8ce2114defb200b1%22%2C%22claimType%22%3A0%2C%22value%22%3A6%2C%22isOptional%22%3Atrue%2C%22extraData%22%3A%22%22%2C%22groupTimestamp%22%3A%22latest%22%7D%2C%7B%22groupId%22%3A%220x1cde61966decb8600dfd0749bd371f12%22%2C%22claimType%22%3A2%2C%22value%22%3A15%2C%22isOptional%22%3Atrue%2C%22extraData%22%3A%22%22%2C%22groupTimestamp%22%3A%22latest%22%7D%2C%7B%22groupId%22%3A%220xda1c3726426d5639f4c6352c2c976b87%22%2C%22claimType%22%3A0%2C%22value%22%3A1%2C%22isSelectableByUser%22%3Atrue%2C%22isOptional%22%3Atrue%2C%22extraData%22%3A%22%22%2C%22groupTimestamp%22%3A%22latest%22%7D%5D&auths=%5B%7B%22authType%22%3A0%2C%22isAnon%22%3Afalse%2C%22isOptional%22%3Afalse%2C%22userId%22%3A%220%22%2C%22extraData%22%3A%22%22%2C%22isSelectableByUser%22%3Afalse%7D%2C%7B%22authType%22%3A3%2C%22isAnon%22%3Afalse%2C%22isOptional%22%3Afalse%2C%22userId%22%3A%220%22%2C%22extraData%22%3A%22%22%2C%22isSelectableByUser%22%3Atrue%7D%2C%7B%22authType%22%3A3%2C%22userId%22%3A%220xa4c94a6091545e40fc9c3e0982aec8942e282f38%22%2C%22isAnon%22%3Afalse%2C%22isOptional%22%3Afalse%2C%22extraData%22%3A%22%22%2C%22isSelectableByUser%22%3Afalse%7D%2C%7B%22authType%22%3A1%2C%22isAnon%22%3Afalse%2C%22isOptional%22%3Afalse%2C%22userId%22%3A%220%22%2C%22extraData%22%3A%22%22%2C%22isSelectableByUser%22%3Atrue%7D%2C%7B%22authType%22%3A2%2C%22isOptional%22%3Atrue%2C%22isAnon%22%3Afalse%2C%22userId%22%3A%220%22%2C%22extraData%22%3A%22%22%2C%22isSelectableByUser%22%3Atrue%7D%2C%7B%22authType%22%3A4%2C%22userId%22%3A%220x1003000000000000000000000000000875608110%22%2C%22isOptional%22%3Atrue%2C%22isAnon%22%3Afalse%2C%22extraData%22%3A%22%22%2C%22isSelectableByUser%22%3Afalse%7D%5D&signature=%7B%22message%22%3A%22I+love+Sismo%21%22%2C%22isSelectableByUser%22%3Atrue%2C%22extraData%22%3A%22%22%7D&vault=%7B%22impersonate%22%3A%5B%22dhadrien.sismo.eth%22%2C%22leo21.sismo.eth%22%2C%220xA4C94A6091545e40fc9c3E0982AEc8942E282F38%22%2C%22github%3Adhadrien%22%2C%22twitter%3Adhadrien_%22%2C%22telegram%3Adhadrien%22%5D%7D&displayRawResponse=true&callbackUrl=http%3A%2F%2Flocalhost%3A3001%2F&compressed=true)
6. [Sismo factory Explorer](https://factory.sismo.io/apps-explorer)
7. [Sismo App Store Resources](https://app-store-resources.sismo.io/)