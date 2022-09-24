import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Posts());
}

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
        child: Container(
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(children: [
            Container(
                margin: EdgeInsets.only(left: 5),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "data:image/jpeg;base64,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")))),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text('Ahmad',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Text("22/09/2022",
                    style: TextStyle(fontSize: 8, color: Colors.grey.shade700))
              ],
            )
          ]),
          Divider(
            height: 5,
            color: Colors.grey,
          ),
          Container(
            width: screenWidth,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "data:image/jpeg;base64,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"))),
          ),
          SizedBox(
            height: 40,
          ),
          Row(children: [
            Container(
                margin: EdgeInsets.only(left: 5),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "data:image/jpeg;base64,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")))),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text('Mohammed',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Text("21/09/2022",
                    style: TextStyle(fontSize: 8, color: Colors.grey.shade700))
              ],
            )
          ]),
          Divider(
            height: 5,
            color: Colors.grey,
          ),
          Container(
            width: screenWidth,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROka0-QqQCBOkNMMp67K0s6GwCOeUi79vfyA&usqp=CAU"))),
          ),
          SizedBox(
            height: 40,
          ),
          Row(children: [
            Container(
                margin: EdgeInsets.only(left: 5),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://static.toiimg.com/thumb/msid-79779647,width-800,height-600,resizemode-75,imgsize-187560,pt-32,y_pad-40/79779647.jpg")))),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text('Sara',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Text("21/09/2022",
                    style: TextStyle(fontSize: 8, color: Colors.grey.shade700))
              ],
            )
          ]),
          Divider(
            height: 5,
            color: Colors.grey,
          ),
          Container(
            width: screenWidth,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "data:image/jpeg;base64,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"))),
          ),
          SizedBox(
            height: 40,
          ),
          Row(children: [
            Container(
                margin: EdgeInsets.only(left: 5),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7ohdkWm831xoGVdxNFgAwc39J0dwmWUS0zw&usqp=CAU")))),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text('Zaid',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Text("20/09/2022",
                    style: TextStyle(fontSize: 8, color: Colors.grey.shade700))
              ],
            )
          ]),
          Divider(
            height: 5,
            color: Colors.grey,
          ),
          Container(
            width: screenWidth,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP3f6E7k7XSlkzBy5vJsWlld_g1neY6YAnzF_yFSWArFR7ZBY_1P9RN4_R8qPPAuxwvd4&usqp=CAU"))),
          ),
          SizedBox(
            height: 40,
          ),
          Row(children: [
            Container(
                margin: EdgeInsets.only(left: 5),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhYYGBgaHB4aHBoaGhwcIRocHhwcHhoaGhwcIS4lHCErHyEcJzgnKy8xNTU1HCQ7QDs0Py40NTEBDAwMEA8QHhISGjQrJCE2NDQxNDE0NDQxNjQxNDQ0NDQ0MTQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0MTQ0NDQ0NP/AABEIARQAtwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xAA/EAABAwIEAwYEBAMIAgMBAAABAAIRAyEEEjFBBVFhBnGBkaHwEyKxwTJC0eFScvEHFCMkM2KCohaSNGPCFf/EABkBAQADAQEAAAAAAAAAAAAAAAABAgQDBf/EACQRAAMAAgICAgIDAQAAAAAAAAABAgMRITEEEhNBIlFhkaFC/9oADAMBAAIRAxEAPwCZFkumEnL9CE6wff39lBYkUm2Qey6VSCU8IQNBiDrIe/PRGGePvbzQCC0Afhm/31QYQRFuoB3TwakUsOGzG5k9T9kAbWAaDXknQ22/vmiazYJxrTugEQkQni1IazkgEwlAIy1KaEAnKltajaEqUAgBAlB5jRFMoQAlEUYRISEUUoyUnN5IQAlEiLff9UEBFypTGD34JNKlGYhsFxk31Ok+SkNCFhykICNyDUjEUi5sTHiUIFZJ84QYyN/VGymQBfQeynwCgGCJR6c0+AeiTDuY7/2QCW/RKz3iClMBvJHRG5/igCI2QyIxPL1QyT/VAFlR5UqCiLTzQDWYTCWQmqmHcTOeB0F/VLFHm4oA7Ii0IxTA5+aGUIBBI/ZEAlwkZkAW6II3IIBJKJBw5IkAgFLB9/RNMB39PBOAex0KEjrUsBJaEpzgN/f2QgOEEGtQHvyCADgUtqTCUgDHf4IA38Pf1VFxDtRhqUjPneLZaYzebvwjzWWx3b6sTNOixrds5LiQY5ER6oNHSETSY5rmbe3WJFnBjZMS6m6B45tPFXWA7cUzkbWY9hs11QCWZh+a1wD4+N0J0bOUIUfDVmvaHtc17To5pBB7iFIa4FCAEIkHFJc0lAEUhLjmhlQCMpCIgJwpLkAiESNJcCgCcUaGWdUaEDbWIwUI0jY+/VKZ02j7ISOBoulEdPen6JIFkppvG6EigEQaiuf67wjaD75z/VCAZuq5r2z7VF7vg0HxS0e9pjOd2h2zNra92tz/AGicXNKi2kww6tLSeTGgZo6mQPErmNNpcBe3XQe+iEodYQSA10A7AT5a+91avpvaA5ji8gaHJOsfgLSSFRPDgQSAB3j6AynsLUl4sCSQLzf6x5HZAB2LcSTka4zeWg+Qiyua1EhrHNaGZhmyH5haLRrB5i99LJGJqMw9V8XeIAvMSJcJHI6EKCeIPe4OcSYEXvbkfDdRslI0XZjjxwzmuJPwahOdupaRbMOog7XtzC6q10iRy9OS4Q14PytBjMXDMRJMXBjwt0C6l2G4sKtEMcTnp2MxcG7bDSBHkiFI05CIhKcyUHM5qSoy7n6BGZhKLbIgxAIhFljeycI5BILJ1QCSDshCVkRhqAQAglwggI/v62SvfvxTgajayEJDajA5e/dkbAnGhCBvJ7/dNuYZvf3oVJlJcgOUf2n4qcQymB+Bkk7y86T3D1WOYfltfn0/Zbb+1TDxWpPgfMwjxaRr5rCtCEksnMyDHy6aDXVSOF4TMSDa1jbXbUfRO4PAhzdZ+y1/BuEAgOPIWXG8yng0Y8LrlmewnZmrVdYF3MmfUxdbjgXYNlNpdUGdxERsAtTwii1rQGgBXIGy5e7pdnX1UvhGD/8AF6THl5aDGggdNeeiouzbf7rxF1GJZVEsOpEaD6jwC6DxJkErJ4/DD+9YV+4qFvmxxj0VcVtVpk5oVRs2gb4Iy1M1HTEc9gTIT1O4NitmzBoJzUks3S3ASiapAhwSSllEQgEEpObySiiQCSOSCAKNCBttPaTPgl5OpSUbReO4oWHqbYCWUTEpxQgTlSSjKIgoDIf2j8N+Jhc4HzUnZ/8Ajo70v4LkcrvHaasGYaq4tzgtyFp3zwy/S8rhlfDlu8jY3HmDoo2t6LKXrZdcDBLSTYStXheNUaUBxJdFmsBc6OcBZXANLmMYz8RgK8w+Cq0jkpSxziS6oWhzg2LQBrfyWS0nXJtxtqdI0+G7YU2OGejiGDZzqZAPitZheMMqCWXssvhOF56GWrUqVX6l5a4NiPww50R3XvaFC7JtNGs+l+Q3aHGS2ZgT3QVWmp6LzLrsmdoe0rs/wmPpUzu94LiI1ysGsDdRMAx2cPOJbXyPa57TTDCzaQNW2JseassdwFtR0ubSN5h7M19J15Jx/Cz8zy1uYjKSBEjlOpUqtaf2Kxt7X0aYNROajpHM1p1kA+iDmrYeaMtOveiSaLYkTullSBtySXeSWQd+9CEIGSPfiiIJ3sni1EQgG3N7vFBKLUEJGMw+6S1t9TGv7TyTLXzbolNJlsdZ/ZATqZ9/RKJTdMoy5AOQjDETUpuiAruPYQ1cO9jfxFst/mF2jzELjfGqY+QiwLAO4jYrupWP7VdkqdVr3sJY+C4tF2uIuYH5SfLoqVL2mjrFpS5f2c94JVhzDMQQup8BqtqQ4xC4vh62VxEronZLFPNm3GusWiSs+aedmjBXHqdH4mabKbnE2a0uPcBKwmGGao2rmaA64vvsJUHjna9jy6i1peNHHNkEbwT5dVlsLw19VwaxwAzQGhznHSRAA2H0UPHvl8HacmuuTs2ILQGOzgE2idTGkblR2cZBLqb2wdjz5e+iyGN4RXazOytVfSYzMcjHBwgXyuf+LQ8lB4Y+vRru+M1+T4WcF5DjEgAEi05hpso9GuUS6/aOm8Nq5mQPyuLfv91Ia0zrtEfdUnYt7nYYPd+d73juLoB8gr6LLXK/FHm290xhrde9AtSmDXvSiFYoMuCTCfypJagGoQhOZUCEA1lRpbWoKQZ6m8k76a2t3KQx/wBlGZ799EYdf3v/AEUFixY/6JYcotDWU+woQSWFPBR6SktCAJwTVVsg9yfITVZwaC5xDWtkkkwABckk6DVCDz7xfDfCxFRmzXuA7g63orLs9xh1Nwk30A2gjT1TfaF/xq1R7dHOJHdMD0hUjTCq0qWjqm5ezqHCOA0H4cuYxrnB5Lc2uUR8s8pmPBXvZ3iHwy1sMaGkAWBLYBAmb6HWSuedmO1JonK+SCdduWnVdQw9PDV2h4ILXAXB05jobLPSpUbMdzU60ifjuINqgMFQm+gAHo3XxWQ7XEvrUsLTs97QzT8Lc0k9wgH/AIrVNFDDMsG2vNrXAnpr6Kp7PMGJx1XEiCym34TDzcSC4i2wA8yplOq5KZa9Z0jV4PCtpsYxghrGhrR0AgJ4tslFArSYiOwWKVlRgQlZu9AIyosqdHcUCFJAyWoFqcKGVANQgnHBBCTIlrgRpsDPLmOZ1t1T7dEl7hveb9UZIUEjjJvprby+v6oS/aAOd7WG2/nZBj1IY6xJExt3fdADBYhznQQbWJgi+19CrSmoVI305J3GY5lFhe85QNtydmtG5REMXjcWykwvqPaxjdXOMdw6k8li+O9ojiWfDwwcM4IfmMEtBuGNm9tSNjCq+M8ZqYl7gbUx+CmI1i7idzBF9BeFV5HMbLDJbdw53m3KNo5Lv8Dqe9MosqmutkH+5lj8rmkdCl4rgQeJFitLhcdTrtDa2v5akXHIVI1/m89yrU8GLQCIcCJBFwRzC865vFWn/Z6EVGSeDllbg9RpsJjRTuFf3tjgKYftpboDc2XRDw2R+FFgOCv+ICIAGqfM32iPhSe0yu4d2Sx2LcHYiuGMBBLW/M6NR0BsulcJ4YzD0m0qYhrdzq4m5JO5lZHtDVfRfSfTcWuaHC2+hjqDyPRScF24BaPiUyTa7CII5kO0I5StWKHcqpMuWvWnLZr3SihU1PtRhnCS8s/ma7zJAIA8dla4bEsqNzMex45tcCPGFLlrtFE0xaPKlHuQUEicqEQjcEkWG/1QB5UIRB3v34+Sda2ykgbLUacc1BCTDONxb9v1vCTYRFosI/ZRqlYe/fuE3h6+bpNx1HlzVCSypvED0+l1PYDl6wfUquww+qnMeANgG7zAEXvyCsBHEOKsoMNR+2g3cY0HrdYKvxR+KIrOdpOVskNY0HSN7RJVfxrjDsTVc4k5IysbsGc43cdSe7km+GtysLR/EfUBasUae2cLrZb4ak0jKIvex1kzZKdSLT0ScFSFpF9BzA6KxNMxzHX3daDiUleiWOztEj8zeYKu+C8afSAynPTN/hu0vqWn8p9kKI0CSw+R2nTwPP7qE5vw38mON/8Aaeai4m1qlwWm3L2mdP4XxPDVRAOR5/I+AfA6O8PRWLsCNlywg7KVg+I1GAhj3sG4DrDw+6wX4C7l/wBmuPLf2i77bAZ6bernEf8AHKPrPgslRs4sP5vmaeu499E9UeXEuJLnHVzjJ/VM1W/KDu0yPD9lrwYfjnWzPmye9e2hZdGokfmHI9FGOLfhqja1N7mtkBxGwJs7rB1GhCnug/N0umKtEEFpu1wjzXVraOaejpPZ7jzcSC12VtRurRMObYh7Z+ivo9+NlxHhFZ1PLDiHMcWhw1gB2U98LqXZjjJxDDnIzsPzRbMIGV8bcj1HVZMuLXK6O83vhl6E223S/nbUp7p79/oiAgGT6QuB0G3s57+99U9TCQ68QLc05h1ICaxGnWhEpIOQuJPXWI2NrHxnzT+CnfWBIMWMTFiQL+ym8OSWg8+Yjut33U3DMudbHlF7ae91zLkmiYF/dlV9s8caeEeGmHVIYO5wJd/0Bur2mwcljP7S6hHwGbfO494ygfUq0rkqzJYd8jyCuMCP1VBg3K8wlX5h5ef7rbjfBntcl/QPRTWkfyny/ZQsM6Qp7GR7ldSgxjcKXQRZw/C4ajmHN/M07gfUKPlFRkHXQjke/wBR0U5zCND7/l/RV1Zx+IHC063sYMhwPKMzefzCUIGcE8tcaT/xAS0/xN6dQpDmQQUfEMNnbmYfnaczD15dxFk8xwexrxo4T3IBh0FJY3UJ4ttHLpsmqbvncFYB0hbusg5v7IwIOiXHv+qArqrYLo3v3SQCfqrXgXEHUajHjY3H8TTAIPeAq7FtMe+YR07X1ndVaTWgnpnacNXa9jXsMscJB5g/ebJZEiNNgbd6zfYniLX0xR/OySBzaXXPeC71C04Zpa/31Xn3PrTRrl7WxBt9NEqhr0TFY/M1t7yZ6CLdLkeXeVLoiDcx0+/moRIsgDw8UE60IKSDkTNSO5TsON793dKrKeEDXZpJJAEEkgRNwNlPw7o3jp7K5lyfg3uJ+ZoAibOm++w3WB/tKxIOIYwfkZ83QvdI9B6hbjD18phxEmSInQQfoVzft0z/ADTjs9jHDwGUjzb6q8lWUOHfBVvh3KkYbq0wtUNIzj5TutGOjjaNNhq9vmbIOpb06K1wzyRLHB43B26HcKowdNzYynM03aZ31I8b+SsGUWu+a7XfxNs4eWq0nInNqg2ILXciNe47/VQ8dStIF9QOZHL6H9lJa1wEPDXt/iAg+LdD4Jl7TBg5m+OYeB/F6Ec1YgDDaBAEWTWAEZ27B5gfzAOPqSnGO0jok0bZnc3E+QA+yAcdTUKiP8Q9FZjnsVV0j/mHjm0FVJJWVE5LbcJBViCBxAEN7yNO9Fh+ep6IuL1YYBoSbeid4Xhqj8oYxxzGA4gho73dyq6UrbZKl09IuezGPFHEsccoBOQlxgBriMzvCy618P3dYjDcGp4dgL4qPdrLQc3OxmG+9Ve9meJTTFN75c05WkgjM38tybkadYC82/IjJekbfgqJ32XeVGKduSeCBIUlBLR4oIwUEBx8vEjv35d/n5Ig+/cI9+nkm6j00x/fYb+/cKhcTxGo5pY8E2eJ/kyta4CdNfRU/bfD5qTKg1Y6J/2u28wPNW+JYXfKfwwfUADvvKbxeF+Lh3MtLmW/msR6hSnyQznTGyR1Vlg9NARy/VVdMkEjceyrXDMBhwJHd9+i04zlRZ4Nr6Zmi62pY+7T3HZaDCYtjwJaabjpN2nuI6qkwT3AXAPjCt8AA4FoGl/MTHnK1I4sums/qg6jOtuqbwwuGtF9ok+SvsNwCs+5ZkHN5j019FWskz29EqHXSMxiaGSXDc3gRBO/ikUeS3H/AIw3KQ+pMjQN+5Kx3E8C/DvyP0/K7Zw/XoqR5GO69U+S1YaS20EzcclWAf5sjnTB9SrNo+YHmFXOZ/nQP/q//RXUoSgzmiKU06yid5qxAWEfTZVa6oGkQSMwmDuQCtzwWiXk16oytAhjT+Vg3I2J1PgNlz6lhWVK9OX/ADscH5IsWkOEk88wbA710hteWsYIE+QH3XjeXS+VnqeNL+NDLKT67i6MrPyjptPv9kVKznuayiGkNMl7tHRs2LnvVpWpZ25GyAfxEakcp2lQa7XNIZTIBEAvIszo0bn0Hospp74NJw/FGo0ktyuBgiZ5KY0LIUqzMK9gzElxl7iZJB1c7lf07lsA7x3WzHfsv5RhzR6vjphEIIyEF0ORw97yLREGJ8B90phsOaYrEG0Gde6/vwPVLpmBHlKoXHZN+63jyUhhttuoz3W9PfePon6NmieiAwnarBfDrl7RDXy8d8/O3zv/AMk1wl3zBo/Np5HbRa7tNgfiUHn8zAXjwjN/1lc++KQ3KJHUHbku0VrkpS2bHD0Q5wY0y47AyWnreB5hbjgnAGNIfUfmdF2tsPPU+i5VwTFZbCzm37x+36LofAuLZhc3WbyPKyp6XC/g1+P4+Olt8s3+CaxlmMazuFz3nU+KsG1JWfweJBVzh6ixKnT22d6xqekPuaq3i3DWVmFjxbYjVp2IVwy6D6Svpp+0vlHLa6ZxnjmExOGY7M2WMfHxBBIYR+PLzBjyVZ2arl2LFOs/K58sa8y65uGgk3Y6xBm09V2PHYVrj8wBa75XTGh+y5jV4MMJiHse1rsomlUcPmDDMQdyNJ26LVGe8nb0yjxRK4XBp6vZZ02qtv8A7Df/ALJh/Zp+z2nfQj9Vs8KW1KFOoD8zmNdyuQJHmgG228O5cq8rPL17f4TOHFS36mE4b2fq0XveQ17nnWSMo/K0CDoFa/EqiPkbI3JJ+y0/w9U0/DC6y1VU3T7ZqlzKUpcIz3x651qFo/2ABGcJ/vf/AOx38Va1MMJTFdkeX9PfVc37fZ1TX0UWIwbQ4vklx1JMk25nwW97MVi/DsJuRLZ5hpgeixVdhIWp7G1f8N7Dq10+Dv3BWjxb/LX7M3lzuN/o0JHVBGfFGvRPOOB/HDnGDuLQRHfzufRONN497qPiKDy1zQbuN3XBAMSLRoJ06d6BwTwD87zefxQbn0Fhbv5qhcmlwgTz15d/gpDKo03iTrvomaFMzBGmhFpHM8ipDKUaCCdXfpKADqgLgzWTDugIMlcyx+GNN7mO/K4t8v1EHuK6hQwga4OE20HUwCfKyxvbak1tZp3ewF3VwLgD5ABWkhmYY4tIcDcXBWo4TjhZzbcxyI1B96LLFqewmJNN0i40I5j9VTJHsjpiv0Z2DhWOLgFosJi9FzPgmPAggkg3nmtzgcQHAX8l51Jyz0k1a2a/DYmVOY+VncG+Iurak86rpNGe4H69IR0VBxjgLcSGB7nQyQ0tgGDEgkgyLBXhrSmPjgT5/qjrT2mQk9aZR/8A8t9Gm1lN5cGAgNfF7kwSAOai4HtLTnI+WP0IdI8uY7la4/GiJnW0KnxHD2vYRUYHDXu6g7HqFyd7ezRE/jpl9TrMfcO6hB9Rw6rluPxlXBVA0PL6TvwzdzL/AIXcx181osJ2rDjleCx2hnaec6K+nrZXS3o01fEkbKI/F5u7+s/RR3cSad5kz+igYji7GzP9VTll1pFm6D3furfsp/qVI0yifP8AqsoW4h7Q6jRqEWkhjvSy3HZbhjqTHOeIe8gkcgNAY3ufRaMGNqkzNnyL1a2XyCB0sgtxgOHuGt0bDv71TlVuo5QT+hSGO25AH0P3HqqFxxgKdakUzKdGhi8Xj1VgON199Vl+3eFGSnV3ByeBBcPIg+a1LDInW0g9+6pe29P/AChPJ7D6kfdJ7IZzpwsmyE7sUHssr6IH+G4003X/AAk36HmFv+EcQgCDIN9efv0XNCFacF4g5rg3Y/h6HXyWbNi9ls04Mzl6Z2vAYkOEytNgqocIK5hwfiJAB1G63PCMUDBBssM/izZc+07L2vhQRIKqquCdsYVr/eBEFQ8TiABEq2RT2ccbpcFZ/cWtlzzJHNVnEcdsy59I6pvi/EQAZeGtH4j9gs+2u6qIYCyn/ETDn/oOqnD49ZK0kdMmacc7bF18XRbiaDMrXn4jc7nXEZpLR3Cell07iXZ3DVx/iU2k/wAQ+UjuIXMMTgWODS2zmWEdAYHquwYZwexrv4mtPmAV6dYJxSpPNeerrZm2dgsKIvVgaDP+ytsD2fw9IgspNzfxH5iPEq1CBC5qZXSDun2w2lKCS0I4VyoaCNBAcSqP2G+/dt57pAbEuvbaO4CwCdqDTQ7D6H6DzKNgmJ18dfcqC4dFnMz73Uhjffv3dJYzXut6QnqVOJM/a3LuQCgJ7t+nT6+Sr+0+FL8HWnUNz25Nc158YCtKVAzMne3f06KR8DMwtcPxAtcOYIjxtCIg4jTZN9k65skDxKVUpFksdq1zmnva4g+oS8Gy2Y7+wu0rZzb0MPoyo4JBkEgjcK6w1HMYTeMwAF1asTa2gr50PcI4+6nZ8kcxf/2G/euldkuL06n4XQeU2Pd+i5SzC81LwrHsOZji08wY81nrxFXK4ZpjynPD5R3biHFKdFhfUcGjqdTyHNc54t2ze9/w6TXfNME2/dZHEVKtStTzve+XBrcxkCbWGgW7wfA2Mh4u9oj9YVsXhT3XJTJ5T/5K7A8Ie858Q4ujRmw8FelsaWCffcSo5K9CImVqUYqt09tiWmx7wfquo8I/0KX8jPRoXLQF1Lg/+hS/kb9Fw8jpF8ZMaEaCAHNZTsAJSJGgDQRIIDjddgke9/fkEkD7/VBBQXJbNVJpsE++f7lBBAPfDGYd36fp6lP8+79UEEIOLdoD/mqo0HxXadXlS2MGRvcfqggtOL7OVj2B/H76Kbj2CEEFoXRxfZDYwSpFGmJHgiQREsse0WDZTpUntEO+I2/itTh3mAggpXZD6JL91GeEEFYqNFdR4H/8el/KEEFn8jpHXGT0EEFkOwQRlBBAAoIIKQf/2Q==")))),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text('Ahmad',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                Text("19/09/2022",
                    style: TextStyle(fontSize: 8, color: Colors.grey.shade700))
              ],
            )
          ]),
          Divider(
            height: 5,
            color: Colors.grey,
          ),
          Container(
            width: screenWidth,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwfmvQK5wwnOPG-THERaLkG6i8Qx2ZmP1yskw6oCDv6gsaqBzsFBmA1RYEfTfA6YaUHeI&usqp=CAU"))),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    ));
  }
}
