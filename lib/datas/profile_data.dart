import '../models/Profile.dart';

List<Profile> profiles = [
  Profile(
      name: 'Name01',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/4a78/0a09/11831b5847bc9eca7c85d240d358f2b2?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EPiLpq13v54lIKyUuky7e~eO0ez7zxiRY0xYQOcskeZSrvhGhiyVf67wi10hAnNp23PA1mACVuyh0tBlCDSndswLaRB3Ohryvg5Zdnju6Dqwmz4cKDqYRibLfPR6paO6x-cEutmltFlfNgjVF8oeqF2ORuc3JUf~1FLmiexeEFcDAHctwaykZ8jFn7489pSoqMf9~tseuhXkbdX3xdxgEbj2CIdWHGRCTrROwZe3kPqqWcVQsrf8k6I7plTm5bccqSUw3vmgZnrgol6segq7jdDkA30zfa6OewMJdFuxk~1bnWhGzdpST7jxCi2ZtqcuwhqOHYzHRbm8UUFbk-u8iw__",
      isTopRated: true,
      rating: 4),
  Profile(
      name: 'Name02',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/9127/2fb3/4543e287173da5513463f8e8515c9aeb?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=evWmbkXrhL5NMpDrTeDjGdrTVc2Wdxqp73G-M0Xt5kxfw6hyylv0tIuBUqbbdk4G2L~5Qt6ykfVo8GEwnLaS38Qa0JOa9K1h7Jz9dTlCH6IzHUvn-RRUg75o8aZKwAiuAQfNLlUZZahFGjeXh489z3JRKSGjdK1~uAhDhZwARZVzVtlyNnXTDdNA20aXVBojfBRLnDlvPwRtUJpx9z-vgJWinwwDSvywkf-ArMghCIeFdFnjja7ABZcNcUz~cVN7xyWG3OLSWwqq51r~qgkzzjW4gCfQ~ROCUOd5qo6H32u66bnA3z1XChfN3Qs3KLPd2rHpcwRxPyWHF6-Nz56ESQ__",
      isTopRated: false,
      rating: 4),
  Profile(
      name: 'Name03',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/8150/a7bc/7f10cc3e5e86af100fbcc2919c172d4c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Z-hae6LdEQUYcvNf~QijYFHKeWYsWFD~2e6y3wh9a0MZLZnYvm0LMgnLuEWv1~u89Qg9X-eP06wzupvgWbS8KTpA-425SeM8VqXhquAhuz1n4xeQEy9tpuvEUKZJZp9Bt-wrNUYSeFxCU3mp4v0FbJLlIw-ll8yNB9DrXjKZQF0iiQVS9xOeFjSq2fk1u3Fh25FewEr3E29CKECIs~Zw3VYCYT73g-Dvxwxhexw-ZMKR-NHkYNW2I8BNVjC-9mTIoJ-Pv3OHG4ikSXI6B-gxR0giI0FMtWJ5ZtjNLQJb1HL7302aa8Gv3Ob79z3URQqJNiKYEH6X0-taZQenFG0yaw__",
      isTopRated: false,
      rating: 4),
  Profile(
      name: 'Name04',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/d85c/cf9a/5f4ab616a1bff03831fe9bc4ffe4f3fa?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YKhvUieMv~KTxNpsoshlw4KoP0M8SJnjwDH~wxs0BnkfiVzFndTSEtC5nwAY56wyvCzRidQNbwHuluxM1fa03NQ7kbXuweQXVKIEgMlmEGFTEChn9kJGlfP7KwHM4e~E4KmGWIBMonY~Y3Wf7GVomwHwiRLtlVi1X5pAehdWQcsAoDOQrTUFEKzyhOZ3cmzeV93tWxsAttN6CIgclZlh7CHG1sqfT01uelCD97jrkX78AmV5B5B5e~XHsXeQqHXCBCblMZ1TWpo8kfmyu2BURgadZhZ9anFEoYBq2xZJ1nIl~8x-7SAL~dHEdmQvDaQjygSeCBK2eFAYANgJIAWfQw__",
      isTopRated: false,
      rating: 4),
  Profile(
      name: 'Name05',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/fb57/9318/c46e5cc41830d95d5532efaf15c017f2?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H3RYpatiw2irKcHQ6lxNnP4qffIYsEKYDHmRRCy0bGiU7h2k1pDOibQ-Hlt0tZoBU-KUvzVHMpNZ7A~KhTw6WkqaMqszyl5yM8U5ci8BHFjyQ90vrUZeIpm~FGw4EESLd~bcrGKSgQenspjucvuzTIFhBsBujHoUVNbTC2ANwcY3d9Rc23fqsjy9WE6~hP7~pefU~LBIVJvuWsVXmF4pSmgmF7KKvza9mm1d3V-IRWkeHFf3pjP9qKFK2w5pley7iMi5wEUEf~go509oMH4sQ1hlT2J0qNiG~nlWH9Xo~FXjq22JJCHg5iv91VR0pHSsn7SrWpZ7SyZMbq0QRf7FFA__",
      isTopRated: false,
      rating: 4),
  Profile(
      name: 'Name06',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/ff95/93bc/a3e6028da24c9c9b919b9c85abba40a6?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ksxXez3lQ2-jFcHg4SprRx7kthfJpCZekSAuXH-LAeJotUnkOWm4zrXmtiKQo71CIfuFQkIsQWVtQDADt0hqa4TJgeWqZx-asBKhPU0e5BFAhUu1Q9itcUQ4Gw-09yANHY1mQoWBt02LDM6YYaztOPF5RUZIpqNocg7n4JahRABS9QPUjvNiIOQJMHHTcXzZjXztjrZr-iJ14ltzVbJ3hmZjYtu7RJWn9V-Ljk27816e7-C7FnMDTVXZUnDemAOVZhLnXImBVijTCtiVzYaJ5YZnX9TegCW5p-aCH7GdoRGl5nopy2hAMs5BXl9oDHlxuVmbDIkbk1~qhNUz0KhGxA__",
      isTopRated: false,
      rating: 4),
  Profile(
      name: 'Name07',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/2a28/e5ee/3b7b0552e30013e67ae4f32c5b2f2175?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=p0L-KZsm5WD003EJ5KNxOqvZYA3TQ4wngyfIHohxICGEbA063RwdzbcT1PCHRN9cPhcLaVNDEHaOpRY5jBfVPO0uim0i5hbOPGSKpm3Js5fe0q07Ov8P3OIGeZgkNS4WKosXEfdrfnUy4YJgpczIBFwE8ScKjG4jFgOIoMPFHOvdy~xuiSyU4wKNUKXBbu3RIT18eYnfyDHHWsgOK0ucTYp47qLLimD0gOSME-T2oEiU7JkO0ZqnRt-qQAC8Y1IrlY7-r16vGYQpgsiT4T4bnuN0wZIl8ag86fR5JmcMGnC8oSLDezmiYt2KUSBJJxG~YKkdOL8wk9u4FxOHX2j2pQ__",
      isTopRated: false,
      rating: 4),
  Profile(
      name: 'Name08',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/bbe3/414b/b449b789a0fb4fef9911643447a3f43a?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Iqoyg7qLKNzvIs5YXeNKnXEthr0RYzdecgiPgFHOMyN6HBR694vc1-DiUt274-T~rukAJ78y0LT5SgC7DWwleocfLX0h2hpIX-JUfhDMOWE3CKWgkW~wB4fYHYa3v~jatfLI5Ztk9rYK8ImqncLlixA83S6GVFX50dv-JWhUyOUS1as1cwIOqfdESE9sGXT4H7AcRRvH5Ax12ZEVQ-qrtNtwL55nWvUz~3fRH6B1~gR0D7UyeIU9e7-V6QJlZlEjq8GAVhRhZA4ZzKVO5gVRJFP~k2U8EvfNiuCnDn2LoLLDcv4lBiliP2sUbjNWh4Ad~p4u888U6mw3AnOIPAtxjA__",
      isTopRated: false,
      rating: 4),
  Profile(
      name: 'Name09',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/6998/57e2/588d24feb6e7b551a4aaf689df1c1e5c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OqmvN-mmwotipLZAEvqyGFD3AGIwwDsmpyzeIVi~3ZDGmhQf0jPuofvHinLu52F8g7vRKiUN5IgAv8gSpTSeNp4eFZ3P33ASmKXnN7VF~hK4xm2sudqmhiiftyp9nK2B8JkwyRTMtRI4HiQaxS8bQ2R7quWUFeIr9Jh~fpBuClpUH~akP2WgVqXE0R3laYzB2wuUh2g1zU~MRAvqRQ3TRq82iQHu2zcvWtbB8cd71rQE9MknV8ndtXlc49qzjpHmJvxzUNPSsy9M8jTJD0kjFAm7tLhF9OQZFRwXvIMoJwhF-F~B8u~TcLSPjx21YLeFTsDIRTpYUx4Plig73NDwzw__",
      isTopRated: false,
      rating: 4),
  Profile(
      name: 'Name10',
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/6998/57e2/588d24feb6e7b551a4aaf689df1c1e5c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OqmvN-mmwotipLZAEvqyGFD3AGIwwDsmpyzeIVi~3ZDGmhQf0jPuofvHinLu52F8g7vRKiUN5IgAv8gSpTSeNp4eFZ3P33ASmKXnN7VF~hK4xm2sudqmhiiftyp9nK2B8JkwyRTMtRI4HiQaxS8bQ2R7quWUFeIr9Jh~fpBuClpUH~akP2WgVqXE0R3laYzB2wuUh2g1zU~MRAvqRQ3TRq82iQHu2zcvWtbB8cd71rQE9MknV8ndtXlc49qzjpHmJvxzUNPSsy9M8jTJD0kjFAm7tLhF9OQZFRwXvIMoJwhF-F~B8u~TcLSPjx21YLeFTsDIRTpYUx4Plig73NDwzw__",
      isTopRated: false,
      rating: 4),
];
