import 'package:hello_world/link_data.dart';

final documents = [
  LinkData(title: 'Youtube', url: 'https://www.google.com'),
  LinkData(title: 'Facebook', url: 'https://www.facebook.com')
];

final imageURl =
    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBERERgPERIPEBEREQ8RDxEREREPERERGRgZGRgYGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDszPy40NTEBDAwMEA8QHhISGTErISQ0NDQ0NDQ3NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTE0NDQ0NDQ0NDQxMTQ0NDQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAACAwABBAYHBQj/xAA/EAACAQIEAgcFBQcDBQEAAAABAgADEQQFEiExUQYHEyJBYXEygZGhsRRCUnLBI2KCksLR8CWisjNTY6PhJP/EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EACARAQEAAgICAwEBAAAAAAAAAAABAhEhMQMSQVFxMiL/2gAMAwEAAhEDEQA/AM1RGASlEaqzq5hVY1VkVYwCAIWGEhKIarAAJDCRgWEFgLFOEEjQsILClBJYSOCwgsgR2cvs47TLtAR2cvs543SXpRh8ANLftKzC6UUIBt4Fz90fM+AnOs06a43E3QOKCHbRRBU283Pev6WkuUizG11p3RfaZF/MwX6ykdG2V0Y8lZWPynDBhi3fYElr965DX5k+MdQRwwRwWW/dJG45WMns16u49nJ2c5TknSbEYSoE1tXocDTdybfkY7qdx5fp1HKsxp4uktekSUa4IOzIw4qw8CJZds3HRnZyikyNMhWVGPplFI8rBKwEFYJWPKwSICCsErHkQCICiIBEaRBIgJMExpEAiEAYBhkQSJQEku0kAlWMUSlEYBAtRDAlKIYEC1EaqylWMAgQCGFkAhgQqASwssCEBIKAlgQgIVoAWnm9IM3p4LDtiH7xFlppexqVDwX04knkDPWtOS9aeZlsWuHBOmhTF18O0caifXTo+J5yW6hjN1rz1xUqvWq6alSq5Z2bfc+CjkNh8IZwlO++lTyU/wBonJcuqYhwEUknx5D1nV+j3RCnTQGoodzYnVuBOGWWnqx8ds25k7hVCpvb0IPnFu1a4ZVPKxHdN+E7JW6JYZjqCKp/d2gDIKNNSukEHiLbfCT3ani38uHrTqaixU8STt4/5abf1dZk1PFnD6u5XDkr4a1BYEe4ETZs1yqioJCAGaTm2FakRicOxp1abakZTa9uIlxz3Wc/DcY7JaURMLIMzXF4VMStv2iDWv4XGzr7jeehaeh5SiJREYRBIgLIgERpgEQFEQSIwwSICiIthHGAwgKIgERpEAiAoiCYwwGEqAkl2kgNUQwJSiMUQIBGKIIEaggEgjAIKiNAhUAhASAQwJBQEMCWBCAgUBLtLAhBYAgTjeaYJcTmuIFW9vtTJt+EBQvyAnaAJyzPV/1d0QaQ1SiCbWuSiFj67zOfTp4/6blkWUUcONKKBcC54kzZKRttPFo1VQBmIUef6TITPMMvt1FQ/vbTyx7r9PUZph4jeEMaj2KMrA+Km4mPWxSAcQNzx2G0tiYx4mab3E1HOqQVQOZm1ZlmWGGxqITyU6j8ppmc4pajAobrvb1jGXa+TKerYeq2qewrUfCnX1L5Bxw/23983gic+6rHBqYoeP8A+cnnxqCdDInqx6fPy7LIgkRpEAiVkoiCRGMIBEBZEWRGsIBgLIgGMMBoC2gGMMBoCjAaMMW0qBkkkgZKiGolLDAgEBGIIKiGohRqIxRKUQ1EgICGBKAhgQIBCAkAhgQIBCAlgQgJADGwJ5Amc8zbDrWxVLFKGpVKzmm6uh2ZEJVgL2vpUb+U6NpvtNbzvCAKKmolqNRbLYW3IT/i3znPyWzT0eDHG7321DD5ZWpNUDPUxNQPppmpUdwEKqRdSbA3J91ozE5Ti30h1ohGsX9tmUb8NNgTw5ePGbTXosjDEJTNYMiLVpqQrnTcqyX2J7xBBIvtvtvnYevSqb9niEPirpUUg+m9/dOMy+3ouP00qjgcZhERsOwapVrJSSjUYvTe+5vv3QFBNxb2TtMTO8VjmxBwVXs0cKHvhyxR0Jbhq3vta036lQqNW7Z1FOnTDJQS4LFmtrduRsAoHItfjYaj0jpOMyFdVLhQqsika2XmoPEg+HmZYZS64eJWy16BCrTVtQLNVNS54DYbXB47WtsNzeeBiRUILoWVl4o4Ugm9rcL/ADnRKuOwjrc1ih/A6Mjg8tLqDNdzaghUOhDIWuSbqxKnbukbC9vhNS89OeWNk7ej1Z4vD0qj02dxiMSyAIUOkMgbVZ+G7FrDkBfedJInIOgGF+0ZgjgHTQ7Wq58OS789TD5zsJE7Y3cefOSUoiCYwiARNOZZgMIxoDQFmLaNaLaAtoDRjRZgAYtoxotoC2i2MNoDGVA3kg3kkGakasWsasoNRGIICiNUQolEaogKI1RICEsCUBGKIEURgEgEICQQCEBLAhAQKCzyM/oHsqjBSwandtI1EMm6m3L+09sCBWpB0ZDwdWU+hFpMpuabwyuN21rBYruAjcaQfdMRs+Z2sG7Oiu7VG4vbwReJHnw9Z5WX4khOxqHcq9NvCzAlbfIy3yAP+2puSe1K1VqFmTRYDuaSLW/Twnlk509/tuTTMrdLaNN9Do5QWIcez6EcQZqHSLpbSq1r00YtpsWtazeHpabgnRNHUsGw1Q2LWvUBBspt7R5zV+kvRs0SXP2fVc2Smzs7N3drH83ym5GcrepY93C5ktWipdVa6je1xfkeRmr53WXUQmwsduUvAZdVpIru4VqhXVRvqCoCNyecysioDE5kioNSLVNRuQRN7/ECTGc6Zzy/zy3ToJkgwmEDsmipX0u4IsypbuKeW1zbmxmykRjCARPTJqPFld3ZZEWwjiIthKhTCLaNaKaAtoDRjRbQFtAMNotoANFtDaLeApotjCYxTGBV5IF5IR6ixyxSRqyg1jli1jFEimKIxRAWMAgEojVEBRGqIFgQgJQEYBILAhASAQgIaQCU7BQWYgAAkk+AEJiACSQAASSTYADiSeU0XKukyY/OBSBBwlOjiFw6nhVq2AZyPydoAOV+cSbTbVekuL0YlqtP/oYmoalNuGl7DUPIGxP8Rm2dHMUXob7m7G0R0k6OqKbYUg6FA7NvEKPZYHn/APZrHRrMXwlY0q5sBcXa9mF+M815/Xsx4/Gz4/GYU3SqiMwupDbG22x5jcTxMVjqNwKSoNW47Mbn1M2PFPgq9i6IzbFGOzAes8TNXwmHBZFXXpsgX02+sbdblddtZzrNSLID3ht8bbTonV3kD4bDnE1l018QFbSR3qdLiqkeDEkk+7lOX5HTp18fSas1qX2mkXJ3U98EA+Xh759BETrjjp488rSyIBEcRFsJ0cy2EUwjmEWwhklhFNHNFNKFNFtGNFtAW0W0Y0U0BbRTxjGKcwEMYtjDaJcwKvJAvJA9lY9YhY9ZUNWMWLWNWRTVhqICxiwGKIxRAURiiQGojAICiLxeLp0ENWtUSnTXi7sFHp5nyEDJAnn5znuFwSa8RUVCRdEHeqP+VBufXh5zQukPWO7Xp4FdC7g4h1Bc+aIdl9Wv6CaDXrPUc1Kju7ubu7sXZj5k7mbmF+UuX02jpT07q41GoU0OHwzbOt9VWqvJyNgv7o95I2muZVmDYXEU8St9VGoj2H3lB7y+9SR75hNxtLA/zym5JOGLdvpDE4ZMXRV0IIdFei/EFWFx7iLTmnSfIdRKsuh0Ox8R6cxPd6ps77bDNgnN6mFsUud2oMTb+VrjyBWbdnOVriEtstRQdDfofKeXPDnc7erx58avT5/xFPEIbB+G29xtMV0qVDd34G+xM3nNsAUdkqJocHcH6jmJ4WIy9Qdt77zErrcXgYjulFXa7gD4E/oJtSdZOPwj9nVSliqelXUuDTqaT4al2NiCLlSduM8algDWxdOkoJC6nby8BMzrJykUFw9QCwYVKbczazL/AFfGdMXHPjhuuUdaOX1rLXFXCPt7Y7Wnfydd/iom3YHMcPiV1YetSrL4mm6vb1A4e+fMVo7DYipTcVKbvTdd1dGKMvow3m2H08wi2nNegfT56jrgsc2pnYLQxBsGLngj87nYN6A850toZJeKaNeKaUJaLaMeJcwAaKYxjGJYygHMQ5jXMS5kCXMSxhuYpzAG8kXeSEe8sekx1MehlD1jFiVMaphT1jViUMasgcsrEYmnSQ1KjpTRfad2CqPeZ43SPpJQy+mGqXepUv2VFCA724kn7qjxP1nJc8z/ABGOqa6rWUE9nSUnRTXkOZ5txPptLMdlum+5z1kU0umEp9oRcCrVuiX5hB3j7ys5/mmZ18W/aV6j1G3032VByVRso9JhiUTOkknTnd1JRMq8hMbNFnj9YV5TDx4Srwr1ujecNgcXTxS3IRrVVH36TbOvw3HmBPoWrmNBKYxDVKa0nVXVydnVhdSvO4PhPmO86J1e06eNpNh6zuamG09mGdivYHgFvwAIYWHlMZTfLeNbNn2b4TFsEFNx+Cv3V39D931InhYnJ1Cs6FmKqzsbgqQBc7AbfGbhQyCmg0gXHI7zIp5Yull4XVlPoRacrjK6TPKcRq/RTK0p0Xx7qza3ZhpQu/ZpdQAB5hj/ABTQOsfpA2MqU1FPsqNLtOzW+pm1WF28L7cBwv4zsNbErluARX0tUFJKdNPB6gUXv+6DuT+pnHukWWNUpGvbdLvsLC3E7eG15cZxpMru2tOAktD0ymE0wG5G4JBBBBGxB8CJ9HZBmH2rCUcSfaq0kZ/J7WcfzAz5wM7d1YV9WWIv/bq4in8XL/1wNseJcxjmIcwAcxDmMZoljABjFOZbtFOZQLGIqNGM0x3MAGMS5hM0U7SIXqlQbySjY0MahmOhjUMDJUxqmIUxqmFZCGOQzGQyYmtopu/4Edx/CpP6SDjHSjMjisbVqkkqHanTvwFNCVW3kbFvVjPNSY9Lhud7C58SY9J0jNHqlFpRMX42+EqGAyAwAZAfGBZMoGWfpA8ZlRT2OiWa/ZMbTqk2Rm7Kr+RyBf3HSfdPFMoi4sf8ED6ZQ3Fx4x9Ij71rWN5qXV/nH2rAoWa9Sl+xq776ltYn1XSffNkepuB4FlB9LznXRqdfK6mKqHE13LAlgi+CoCbADwEPF5QhpslhpZWUjyIsZ76LpQr4qWHwMxsTuPjLEr50xFMo5RvaRireqmx+kU42nt9MMN2eOrLawNTWP4wH+rGeK0tSFGdg6pGH2CoN7jF1L+V6dLhOPTp/U9if2eJpfhehUH8Ssp/4iZHR2aIcwnMS5lC2aKdoTmJcygWaJYwnaKdoQLtEO0J2iXaAt2iWaG7RLNAC8uBeSBsSGPQzFRo5WgZSGNQzFRo9GgZKmed0nr9ngMQ44/Z6qj1ZSo+szkM13rCxXZ5e63satSlTXz72s/7UMK5OsaIlfCMm4xVlotjYj4QmMXU4RQy8uLR7gHmN5YMijgmQmUTAhMoGUZV4G6dWObdhizh2NkxK2G+wqpcj4rq/lE61We+/Igz51w+Iam61U2em6Onh3lN7em1p3rLceleilZDdXRXHoReZrUenVPecfisw94mIw2ueA+sdWcABze1kU2Fz94f2+Mw6lR2JshAB2Bkg5P1mUdOLWpbZ6SfFWYH5aZp150HrSon9i5/8yH/YR9DOeS0hd5vfVHibYqtS8Hw4f3o4H9Zmg+fwm39V9XTmIH4qFZfX2W/pmWq7G7RDNCdoh2mmQs0S7S3aId4RTvEu0p2i2aBHaJdpGaJZoFO0S5hO0Q7QJeSLvJINjRo5WmIjRyNKMtGjVaYqtGo0DLRpo3WlXOnD0/BmrufVQij/AJtN0RpovWge9hvy4r60oGjqYYMWvGFNxKsmLcy3aJdttpLSLw54jkT/AHjrzCw571uYmUTEvC2cjvITAvBvAMmCTKJggwDE6V1bZw5oNhVUM9NyULHgj7j56h7pzMGe10TzFsPilKmwqK1NvXip+VvfJSO0V3Zk0GpqbWpewACgEGw+cvE4l99x9J5uFcdmWvc3BPneHWq7X8pFab1kXbDo3HTWt8Ub+wnNLzpHTVw2FYeIdCP5rfrOat4xSAPCbN1cj/UqZ5LXP/rYfrNYabh1Y0dWOZ7bJQqG/IsVUfUzPyt6dadoh3lu8xneaZR3mM7y3eY7vAtni2eCzxLNAJmi3aUzRTtApmi2aRmimaQFeSK1SQrYEaOV5JJWTkaMV5JID0aaJ1mVLvh15JiG+JQf0ySQsaWvGETJJNRCnaKc7SSSVqFUD3vcZlky5JJ0ZdglSSTSITKaSSSqtTItQqQ6+0jBh6qbj6SSQOtZViC2HNQXsyqw9Da0dmWNFOmCbk2AtzMkkkGo9JdX2QVHO9WqgVRuAouxv8JoVTx9ZJIvRj2WZ0HqsKg4jjqtR9NPf/WSSYna3pvjvMZ2kkm2WO7xDNJJAU7RTPJJAAtFs0kkgUzRbNJJCl3kkkgf/9k=';
